-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: apartmentmgmt
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
-- Table structure for table `tbl_add_admin`
--

DROP TABLE IF EXISTS `tbl_add_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_admin`
--

LOCK TABLES `tbl_add_admin` WRITE;
/*!40000 ALTER TABLE `tbl_add_admin` DISABLE KEYS */;
INSERT INTO `tbl_add_admin` VALUES (2,'John Rambo','devsolver@gmail.com','654321',7,'2016-06-22 10:00:10'),(4,'Shoaib Mohammad Saleheen','shoaib@gmail.com','123456',8,'2016-06-22 11:54:46');
/*!40000 ALTER TABLE `tbl_add_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_bill`
--

DROP TABLE IF EXISTS `tbl_add_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_type` varchar(200) NOT NULL,
  `bill_date` varchar(200) NOT NULL,
  `bill_month` int(11) NOT NULL,
  `bill_year` int(11) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `deposit_bank_name` varchar(200) NOT NULL,
  `bill_details` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_bill`
--

LOCK TABLES `tbl_add_bill` WRITE;
/*!40000 ALTER TABLE `tbl_add_bill` DISABLE KEYS */;
INSERT INTO `tbl_add_bill` VALUES (2,'1','01/05/2016',5,8,25000.00,'Australian Military Bank','Done',7,'2016-05-07 09:32:32');
/*!40000 ALTER TABLE `tbl_add_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_bill_type`
--

DROP TABLE IF EXISTS `tbl_add_bill_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_bill_type` (
  `bt_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_bill_type`
--

LOCK TABLES `tbl_add_bill_type` WRITE;
/*!40000 ALTER TABLE `tbl_add_bill_type` DISABLE KEYS */;
INSERT INTO `tbl_add_bill_type` VALUES (1,'Gas','2016-05-05 09:49:35'),(3,'Water','2016-05-05 09:50:39'),(4,'Electric','2016-05-05 09:50:51');
/*!40000 ALTER TABLE `tbl_add_bill_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_builder_info`
--

DROP TABLE IF EXISTS `tbl_add_builder_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_builder_info` (
  `bldrid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bldrid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_builder_info`
--

LOCK TABLES `tbl_add_builder_info` WRITE;
/*!40000 ALTER TABLE `tbl_add_builder_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_add_builder_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_building_info`
--

DROP TABLE IF EXISTS `tbl_add_building_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_building_info` (
  `bldid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `security_guard_mobile` varchar(200) NOT NULL,
  `secrataty_mobile` varchar(200) NOT NULL,
  `moderator_mobile` varchar(200) NOT NULL,
  `building_make_year` varchar(200) NOT NULL,
  `b_name` varchar(200) NOT NULL,
  `b_address` varchar(200) NOT NULL,
  `b_phone` varchar(200) NOT NULL,
  `building_image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bldid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_building_info`
--

LOCK TABLES `tbl_add_building_info` WRITE;
/*!40000 ALTER TABLE `tbl_add_building_info` DISABLE KEYS */;
INSERT INTO `tbl_add_building_info` VALUES (8,'Ocean House','199 George Street, Sydney, New South Wales 2000, Australia.','98765423','98654123','986542315','8','Adam Bore','201 George Street, Sydney, New South Wales 2000, Australia.','987564231','0775C765-0373-7B74-A596-BC443FD1CAEB.png',7,'2016-05-07 09:39:56');
/*!40000 ALTER TABLE `tbl_add_building_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_complain`
--

DROP TABLE IF EXISTS `tbl_add_complain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_complain` (
  `complain_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_title` varchar(200) NOT NULL,
  `c_description` varchar(200) NOT NULL,
  `c_date` varchar(200) NOT NULL,
  `c_month` varchar(50) NOT NULL,
  `c_year` varchar(50) NOT NULL,
  `c_userid` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`complain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_complain`
--

LOCK TABLES `tbl_add_complain` WRITE;
/*!40000 ALTER TABLE `tbl_add_complain` DISABLE KEYS */;
INSERT INTO `tbl_add_complain` VALUES (8,'Water Problem','Every day getting water problem','07/05/2016','5','2016',1,7,'2016-05-07 09:41:42'),(9,'Water Problem','Water has gone for 3 days...','25/06/2016','6','2016',0,8,'2016-06-25 10:27:18');
/*!40000 ALTER TABLE `tbl_add_complain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_employee`
--

DROP TABLE IF EXISTS `tbl_add_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(200) NOT NULL,
  `e_email` varchar(200) NOT NULL,
  `e_contact` varchar(200) NOT NULL,
  `e_pre_address` varchar(200) NOT NULL,
  `e_per_address` varchar(200) NOT NULL,
  `e_nid` varchar(200) NOT NULL,
  `e_designation` int(11) NOT NULL,
  `e_date` varchar(200) NOT NULL,
  `ending_date` varchar(200) NOT NULL,
  `e_status` int(1) NOT NULL DEFAULT '0',
  `e_password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_employee`
--

LOCK TABLES `tbl_add_employee` WRITE;
/*!40000 ALTER TABLE `tbl_add_employee` DISABLE KEYS */;
INSERT INTO `tbl_add_employee` VALUES (5,'Jhonson','jhonson@yahoo.com','98654722','Sydney, Australia','Mildura, Australia','98654723',5,'01/05/2016','',1,'123456','6AD1331D-FE68-E8EF-A68E-274AE291BE12.jpg',7,'2016-05-07 08:54:42');
/*!40000 ALTER TABLE `tbl_add_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_employee_salary_setup`
--

DROP TABLE IF EXISTS `tbl_add_employee_salary_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_employee_salary_setup` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `issue_date` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_employee_salary_setup`
--

LOCK TABLES `tbl_add_employee_salary_setup` WRITE;
/*!40000 ALTER TABLE `tbl_add_employee_salary_setup` DISABLE KEYS */;
INSERT INTO `tbl_add_employee_salary_setup` VALUES (8,'5','Security Gard',5,'2016',10000.00,'05/05/2016',7,'2016-05-07 09:57:11'),(9,'5','Security Gard',4,'2016',10000.00,'05/04/2016',7,'2016-05-07 10:01:59'),(10,'5','Security Gard',1,'2016',50.25,'22/06/2016',8,'2016-06-26 08:26:49');
/*!40000 ALTER TABLE `tbl_add_employee_salary_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_fair`
--

DROP TABLE IF EXISTS `tbl_add_fair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_fair` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `unit_no` varchar(200) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT '0',
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `rent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `water_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `electric_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `gas_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `security_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `utility_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `other_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_rent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `issue_date` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_fair`
--

LOCK TABLES `tbl_add_fair` WRITE;
/*!40000 ALTER TABLE `tbl_add_fair` DISABLE KEYS */;
INSERT INTO `tbl_add_fair` VALUES (21,'Rented','4','18',10,5,'2016',10000.00,500.00,500.00,650.00,700.00,200.00,200.00,12750.00,'01/05/2016',7,'2016-05-07 09:21:34'),(23,'Rented','1','14',11,5,'2016',12000.00,500.00,500.00,500.00,500.00,500.00,500.00,15000.00,'09/05/2016',7,'2016-05-09 10:52:44'),(24,'Owner','1','15',6,5,'2016',0.00,500.00,500.00,500.00,500.00,500.00,500.00,3000.00,'09/05/2016',7,'2016-05-09 10:56:34'),(25,'Rented','1','14',11,6,'2016',12000.00,500.00,500.00,500.00,500.00,500.00,500.00,15000.00,'18/05/2016',8,'2016-05-18 12:07:44');
/*!40000 ALTER TABLE `tbl_add_fair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_floor`
--

DROP TABLE IF EXISTS `tbl_add_floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_floor` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `floor_no` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_floor`
--

LOCK TABLES `tbl_add_floor` WRITE;
/*!40000 ALTER TABLE `tbl_add_floor` DISABLE KEYS */;
INSERT INTO `tbl_add_floor` VALUES (1,'First Floor',7,'2016-03-22 12:07:46'),(3,'Second Floor',7,'2016-03-22 12:09:25'),(4,'Third Floor',7,'2016-03-22 12:09:38'),(5,'Fourth Floor',7,'2016-03-22 12:09:53'),(6,'Fifth Floor',7,'2016-03-22 12:10:05'),(8,'Sixth Floor',7,'2016-05-02 11:27:51'),(9,'7th Floor',8,'2016-06-22 10:33:41');
/*!40000 ALTER TABLE `tbl_add_floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_fund`
--

DROP TABLE IF EXISTS `tbl_add_fund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_fund` (
  `fund_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `f_date` varchar(200) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `purpose` varchar(400) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fund_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_fund`
--

LOCK TABLES `tbl_add_fund` WRITE;
/*!40000 ALTER TABLE `tbl_add_fund` DISABLE KEYS */;
INSERT INTO `tbl_add_fund` VALUES (2,6,5,'8','01/05/2016',5000.00,'Monthly Collection',7,'2016-05-07 09:30:25'),(3,7,5,'8','01/05/2016',5000.00,'Monthly Collection',7,'2016-05-07 09:30:54');
/*!40000 ALTER TABLE `tbl_add_fund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_maintenance_cost`
--

DROP TABLE IF EXISTS `tbl_add_maintenance_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_maintenance_cost` (
  `mcid` int(11) NOT NULL AUTO_INCREMENT,
  `m_title` varchar(200) NOT NULL,
  `m_date` varchar(200) NOT NULL,
  `m_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `m_details` varchar(200) NOT NULL,
  `xmonth` int(11) NOT NULL DEFAULT '0',
  `xyear` int(11) NOT NULL DEFAULT '0',
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mcid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_maintenance_cost`
--

LOCK TABLES `tbl_add_maintenance_cost` WRITE;
/*!40000 ALTER TABLE `tbl_add_maintenance_cost` DISABLE KEYS */;
INSERT INTO `tbl_add_maintenance_cost` VALUES (3,'Making Color','05/05/2016',15000.00,'Making Color',5,8,7,'2016-05-07 09:25:47');
/*!40000 ALTER TABLE `tbl_add_maintenance_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_management_committee`
--

DROP TABLE IF EXISTS `tbl_add_management_committee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_management_committee` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_name` varchar(200) NOT NULL,
  `mc_email` varchar(200) NOT NULL,
  `mc_contact` varchar(200) NOT NULL,
  `mc_pre_address` varchar(500) NOT NULL,
  `mc_per_address` varchar(500) NOT NULL,
  `mc_nid` varchar(200) NOT NULL,
  `member_type` varchar(200) NOT NULL,
  `mc_joining_date` varchar(200) NOT NULL,
  `mc_ending_date` varchar(200) NOT NULL,
  `mc_status` int(1) NOT NULL DEFAULT '0',
  `image` varchar(200) NOT NULL,
  `mc_password` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_management_committee`
--

LOCK TABLES `tbl_add_management_committee` WRITE;
/*!40000 ALTER TABLE `tbl_add_management_committee` DISABLE KEYS */;
INSERT INTO `tbl_add_management_committee` VALUES (3,'Mark Tailor','mark@yahoo.com','9760895241','Sydney, Australia.','Sydney, Australia.','989755621','2','01/05/2016','',1,'E651453C-5E11-1390-FA0E-3185C562BFF2.jpg','vRDk5@Uxk',7,'2016-05-07 09:28:16'),(4,'Mark Wough','wough@yahoo.com','9760895245','Sydney, Australia','Sydney, Australia','989755625','1','01/05/2016','',1,'F01633C5-A25E-401D-D461-B4CCFBC7D077.jpg','?ZsEf3tve',7,'2016-05-07 09:29:41');
/*!40000 ALTER TABLE `tbl_add_management_committee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_member_type`
--

DROP TABLE IF EXISTS `tbl_add_member_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_member_type` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_member_type`
--

LOCK TABLES `tbl_add_member_type` WRITE;
/*!40000 ALTER TABLE `tbl_add_member_type` DISABLE KEYS */;
INSERT INTO `tbl_add_member_type` VALUES (1,'Moderator','2016-04-10 11:56:20'),(2,'Secretary General','2016-04-10 11:59:10'),(3,'Member','2016-04-10 11:59:22'),(4,'Pion','2016-04-10 11:59:29'),(5,'Security Gard','2016-04-10 11:59:41'),(6,'Caretaker','2016-04-10 12:00:17');
/*!40000 ALTER TABLE `tbl_add_member_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_month_setup`
--

DROP TABLE IF EXISTS `tbl_add_month_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_month_setup` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `month_name` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_month_setup`
--

LOCK TABLES `tbl_add_month_setup` WRITE;
/*!40000 ALTER TABLE `tbl_add_month_setup` DISABLE KEYS */;
INSERT INTO `tbl_add_month_setup` VALUES (1,'January','2016-04-11 12:16:15'),(2,'February','2016-04-11 12:16:25'),(3,'March','2016-04-11 12:16:30'),(4,'April','2016-04-11 12:16:36'),(5,'May','2016-04-11 12:16:41'),(6,'June','2016-04-11 12:16:48'),(7,'July','2016-04-11 12:16:53'),(8,'August','2016-04-11 12:16:59'),(9,'September','2016-04-11 12:17:06'),(10,'Octobor','2016-04-11 12:17:14'),(11,'November','2016-04-11 12:17:24'),(12,'December','2016-04-11 12:17:30');
/*!40000 ALTER TABLE `tbl_add_month_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_owner`
--

DROP TABLE IF EXISTS `tbl_add_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_owner` (
  `ownid` int(11) NOT NULL AUTO_INCREMENT,
  `o_name` varchar(200) NOT NULL,
  `o_email` varchar(200) NOT NULL,
  `o_contact` varchar(200) NOT NULL,
  `o_pre_address` varchar(500) NOT NULL,
  `o_per_address` varchar(500) NOT NULL,
  `o_nid` varchar(200) NOT NULL,
  `o_password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ownid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_owner`
--

LOCK TABLES `tbl_add_owner` WRITE;
/*!40000 ALTER TABLE `tbl_add_owner` DISABLE KEYS */;
INSERT INTO `tbl_add_owner` VALUES (6,'Tailor','mark@yahoo.com','9760895241','Sydney, Australia.','Sydney, Australia.','989755621','123456','B763C074-5F01-CA16-2F66-B1301F4711D5.jpg',8,'2016-05-07 08:36:33'),(7,'Mr. Kamal','wough@yahoo.com','01818245789','Mirpur-1,Dhaka-1216','Mirpur-1,Dhaka-1216','152158475468765465','123456','75460C0D-FF83-345E-07F0-35945B714882.jpg',7,'2016-05-07 08:38:09');
/*!40000 ALTER TABLE `tbl_add_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_owner_unit_relation`
--

DROP TABLE IF EXISTS `tbl_add_owner_unit_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_owner_unit_relation` (
  `owner_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_owner_unit_relation`
--

LOCK TABLES `tbl_add_owner_unit_relation` WRITE;
/*!40000 ALTER TABLE `tbl_add_owner_unit_relation` DISABLE KEYS */;
INSERT INTO `tbl_add_owner_unit_relation` VALUES (6,14),(6,15),(7,17),(7,16);
/*!40000 ALTER TABLE `tbl_add_owner_unit_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_owner_utility`
--

DROP TABLE IF EXISTS `tbl_add_owner_utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_owner_utility` (
  `owner_utility_id` int(11) NOT NULL AUTO_INCREMENT,
  `floor_no` int(11) NOT NULL,
  `unit_no` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `rent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `water_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `electric_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `gas_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `security_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `utility_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `other_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_rent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `issue_date` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_utility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_owner_utility`
--

LOCK TABLES `tbl_add_owner_utility` WRITE;
/*!40000 ALTER TABLE `tbl_add_owner_utility` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_add_owner_utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_rent`
--

DROP TABLE IF EXISTS `tbl_add_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_rent` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(200) NOT NULL,
  `r_email` varchar(200) NOT NULL,
  `r_contact` varchar(200) NOT NULL,
  `r_address` varchar(200) NOT NULL,
  `r_nid` varchar(200) NOT NULL,
  `r_floor_no` varchar(200) NOT NULL,
  `r_unit_no` varchar(200) NOT NULL,
  `r_advance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `r_rent_pm` decimal(15,2) NOT NULL DEFAULT '0.00',
  `r_date` varchar(200) NOT NULL,
  `r_gone_date` varchar(200) NOT NULL,
  `r_password` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `r_status` int(1) NOT NULL DEFAULT '1',
  `r_month` int(11) NOT NULL,
  `r_year` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_rent`
--

LOCK TABLES `tbl_add_rent` WRITE;
/*!40000 ALTER TABLE `tbl_add_rent` DISABLE KEYS */;
INSERT INTO `tbl_add_rent` VALUES (10,'Ricky','ricky@yahoo.com','97605412','Melbourne, Australia','9865321','4','18',20000.00,10000.00,'07/05/2016','','123456','4F48CED3-86CC-D435-B42B-730D3BC36FC4.png',1,5,8,7,'2016-05-07 08:42:54'),(11,'Mishel Johnson','michel@gmail.com','01717456321','Mirpur-1,Dhaka-1216','1521807785324','1','14',12000.00,12000.00,'09/05/2016','','123456','853C9E05-44BF-A647-7749-9782F98E667A.jpg',1,5,8,8,'2016-05-09 10:44:07');
/*!40000 ALTER TABLE `tbl_add_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_unit`
--

DROP TABLE IF EXISTS `tbl_add_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_unit` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `floor_no` varchar(200) NOT NULL,
  `unit_no` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_unit`
--

LOCK TABLES `tbl_add_unit` WRITE;
/*!40000 ALTER TABLE `tbl_add_unit` DISABLE KEYS */;
INSERT INTO `tbl_add_unit` VALUES (14,'1','1B',7,1,'2016-05-07 08:30:42'),(15,'1','1A',7,0,'2016-05-07 08:30:53'),(16,'3','2B',7,0,'2016-05-07 08:31:02'),(17,'3','2A',7,0,'2016-05-07 08:31:11'),(18,'4','3A',7,1,'2016-05-07 08:31:22'),(19,'4','3B',7,0,'2016-05-07 08:31:33'),(20,'5','4B',7,0,'2016-05-07 08:31:48'),(21,'5','4A',7,0,'2016-05-07 08:31:57'),(22,'6','5B',7,0,'2016-05-07 08:32:07'),(23,'6','5A',7,0,'2016-05-07 08:32:16'),(24,'8','6A',7,0,'2016-05-07 08:32:24'),(25,'8','6B',7,0,'2016-05-07 08:32:33');
/*!40000 ALTER TABLE `tbl_add_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_utility_bill`
--

DROP TABLE IF EXISTS `tbl_add_utility_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_utility_bill` (
  `utility_id` int(11) NOT NULL AUTO_INCREMENT,
  `gas_bill` varchar(200) NOT NULL,
  `security_bill` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`utility_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_utility_bill`
--

LOCK TABLES `tbl_add_utility_bill` WRITE;
/*!40000 ALTER TABLE `tbl_add_utility_bill` DISABLE KEYS */;
INSERT INTO `tbl_add_utility_bill` VALUES (3,'650','1000','2016-05-07 09:50:38');
/*!40000 ALTER TABLE `tbl_add_utility_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_year_setup`
--

DROP TABLE IF EXISTS `tbl_add_year_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_year_setup` (
  `y_id` int(11) NOT NULL AUTO_INCREMENT,
  `xyear` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`y_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_year_setup`
--

LOCK TABLES `tbl_add_year_setup` WRITE;
/*!40000 ALTER TABLE `tbl_add_year_setup` DISABLE KEYS */;
INSERT INTO `tbl_add_year_setup` VALUES (3,'2011','2016-04-13 14:02:33'),(4,'2012','2016-04-13 14:02:38'),(5,'2013','2016-04-13 14:02:42'),(6,'2014','2016-04-13 14:02:47'),(7,'2015','2016-04-13 14:02:51'),(8,'2016','2016-04-13 14:02:56'),(9,'2017','2016-04-13 14:03:04'),(10,'2018','2016-04-13 14:03:08'),(11,'2019','2016-04-13 14:03:12'),(12,'2020','2016-04-13 14:03:17');
/*!40000 ALTER TABLE `tbl_add_year_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_settings` (
  `lang_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency_seperator` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency_position` varchar(10) NOT NULL,
  `date_format` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
INSERT INTO `tbl_settings` VALUES ('Bangla','$','.','left','');
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_visitor`
--

DROP TABLE IF EXISTS `tbl_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_visitor` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `issue_date` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `floor_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `intime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `outtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xmonth` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xyear` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_visitor`
--

LOCK TABLES `tbl_visitor` WRITE;
/*!40000 ALTER TABLE `tbl_visitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbranch`
--

DROP TABLE IF EXISTS `tblbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbranch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `b_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `b_contact_no` int(15) NOT NULL,
  `b_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `b_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbranch`
--

LOCK TABLES `tblbranch` WRITE;
/*!40000 ALTER TABLE `tblbranch` DISABLE KEYS */;
INSERT INTO `tblbranch` VALUES (7,'Mirpur-1','mirpur.1@gmail.com',1717445566,'F-Block,Mirpur-1,Dhaka-1216','enable','2016-06-22 09:50:30'),(8,'Mirpur-10','mirpur.10@gmail.com',1717445567,'K-Block,Mirpur-10,Dhaka-1216','disable','2016-06-22 10:23:45');
/*!40000 ALTER TABLE `tblbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsuper_admin`
--

DROP TABLE IF EXISTS `tblsuper_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsuper_admin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsuper_admin`
--

LOCK TABLES `tblsuper_admin` WRITE;
/*!40000 ALTER TABLE `tblsuper_admin` DISABLE KEYS */;
INSERT INTO `tblsuper_admin` VALUES (1,'Robert','devsolver@gmail.com',123456,'2015-06-29 06:15:29');
/*!40000 ALTER TABLE `tblsuper_admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:01:36
