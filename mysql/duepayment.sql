-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: duepayment
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
-- Table structure for table `bankb`
--

DROP TABLE IF EXISTS `bankb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankb` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `group` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankb`
--

LOCK TABLES `bankb` WRITE;
/*!40000 ALTER TABLE `bankb` DISABLE KEYS */;
INSERT INTO `bankb` VALUES (1,'A+','0 Bags'),(2,'A-','0 Bags'),(3,'B+','0 Bags'),(4,'B-','0 Bags'),(5,'AB+','0 Bags'),(6,'AB-','0 Bags'),(7,'O+','0 Bags'),(8,'O-','0 Bags');
/*!40000 ALTER TABLE `bankb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `ion_user_id` varchar(100) NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `client_category` varchar(100) NOT NULL,
  `add_date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (2,'uploads/123.png','client2','client2@example.com','Riaz Uddin Bazaar, Chattogram','01928374637','742','431971','B','14-05-19'),(4,'uploads/person.png','client1','client1@example.com','Chawk Bazer Dhaka - 1211','01293847584','744','286478','A','18-05-19');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_category`
--

DROP TABLE IF EXISTS `client_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_category`
--

LOCK TABLES `client_category` WRITE;
/*!40000 ALTER TABLE `client_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `reciepient` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_settings`
--

DROP TABLE IF EXISTS `email_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_settings`
--

LOCK TABLES `email_settings` WRITE;
/*!40000 ALTER TABLE `email_settings` DISABLE KEYS */;
INSERT INTO `email_settings` VALUES (1,'admin@example.com','','','');
/*!40000 ALTER TABLE `email_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `event_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_category`
--

DROP TABLE IF EXISTS `expense_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `x` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `y` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category`
--

LOCK TABLES `expense_category` WRITE;
/*!40000 ALTER TABLE `expense_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured`
--

DROP TABLE IF EXISTS `featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `featured` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured`
--

LOCK TABLES `featured` WRITE;
/*!40000 ALTER TABLE `featured` DISABLE KEYS */;
INSERT INTO `featured` VALUES (1,'uploads/download_(1).png','Mr Volunteer','General Member','<p>Redantium, totam rem aperiam, eaque ipsa qu ab illo inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un.</p>\n'),(2,'uploads/download_(1)1.png','Mr Volunteer 1','Patron','<p>Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence</p>\n'),(3,'uploads/download_(1)2.png','Mr Volunteer 2','Party Member','<p>Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence</p>\n');
/*!40000 ALTER TABLE `featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin','Administrator'),(2,'members','General User'),(4,'Volunteer',''),(5,'Voter',''),(6,'client',''),(7,'supplier','');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `ptype` varchar(100) NOT NULL,
  `cash_recevied` varchar(100) NOT NULL,
  `due` varchar(100) NOT NULL,
  `client_phone` varchar(100) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2053 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_category`
--

DROP TABLE IF EXISTS `payment_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_commission` int(100) NOT NULL,
  `h_commission` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_category`
--

LOCK TABLES `payment_category` WRITE;
/*!40000 ALTER TABLE `payment_category` DISABLE KEYS */;
INSERT INTO `payment_category` VALUES (16,'E.C.G','Payments from E.C.G','250','diagnostic',30,0),(78,'USG - Pregnancy Pro','USG - Pregnancy Pro','400','diagnostic',30,0),(19,'Ward Fee','Deposits from ward','400','others',0,0),(20,'Admission Fees','Patient Admission Fees','100','others',0,0),(23,'Oxyzen','Income From Oxyzen','0','others',0,0),(24,'Nebulizer','Income From Nebulizer','60','others',0,0),(25,'Newspaper sell','Income From selling old newspaper','0','others',0,0),(33,'Ambulance','Ambulance er vara','0','others',0,0),(34,'HbAIc','gfdsegfdgd','800','diagnostic',30,0),(35,'Troponin-I','Pathological Test','1000','diagnostic',30,0),(36,'CBC (DIGITAL)','Pathological Test','450','diagnostic',30,0),(37,'Eosinophil','Pathological Test','100','diagnostic',30,0),(38,'Platelets','Pathological Test','200','diagnostic',30,0),(39,'Malarial Parasites (MP)','Pathological Test','100','diagnostic',30,0),(40,'BT/ CT','Pathological Test','200','diagnostic',30,0),(41,'ASO Titre','Pathological Test','250','diagnostic',30,0),(42,'CRP','Pathological Test','400','diagnostic',30,0),(43,'R/A test','Pathological Test','300','diagnostic',30,0),(44,'VDRL','Pathological Test','200','diagnostic',30,0),(45,'TPHA','Pathological Test','350','diagnostic',30,0),(46,'HBsAg (Screening)','Pathological Test','300','diagnostic',30,0),(47,'HBsAg (Confirmatory)','Pathological Test','600','diagnostic',30,0),(48,'CFT for Kala Zar','Pathological Test','0','diagnostic',0,0),(49,'CFT for Filaria','Pathological Test','0','diagnostic',0,0),(50,'Pregnancy Test','Pathological Test','150','diagnostic',30,0),(51,'Blood Grouping','Pathological Test','100','diagnostic',30,0),(52,'Widal Test','Pathological Test','300','diagnostic',30,0),(53,'RBS','Pathological Test','100','diagnostic',30,0),(54,'Blood Urea','Pathological Test','250','diagnostic',30,0),(55,'S. Creatinine','Pathological Test','250','diagnostic',30,0),(56,'S. cholesterol','Pathological Test','250','diagnostic',30,0),(57,'Fasting Lipid Profile','Pathological Test','850','diagnostic',30,0),(58,'S. Bilirubin','Pathological Test','150','diagnostic',30,0),(59,'S. Alkaline Phosohare','Pathological Test','300','diagnostic',30,0),(60,'S. Albumin','Pathological Test','250','diagnostic',30,0),(61,'S. Calcium','Pathological Test','350','diagnostic',30,0),(62,'RBS with CUS','Pathological Test','160','diagnostic',30,0),(63,'SGPT','Pathological Test','300','diagnostic',30,0),(64,'SGOT','Pathological Test','300','diagnostic',30,0),(65,'Urine for R/E','Pathological Test','150','diagnostic',30,0),(66,'Urine C/S','Pathological Test','350','diagnostic',30,0),(67,'Stool for R/E','Pathological Test','150','diagnostic',30,0),(68,'Semen Analysis','Pathological Test','300','diagnostic',30,0),(69,'S. Electrolyte','Pathological Test','800','diagnostic',30,0),(70,'S. T3/ T4/ THS','Pathological Test','1000','diagnostic',30,0),(71,'MT','Pathological Test','150','diagnostic',30,0),(77,'USG - Whole Abdomen ','USG - Whole Abdomen ','400','diagnostic',30,0),(73,'ECHO Normal','ksdjkfsd','700','diagnostic',30,0),(76,'x-ray chest','Normal','200','diagnostic',10,0),(79,'USG - KUB','USG - KUB','500','diagnostic',20,0),(80,'USG - Liver','USG - Liver','400','diagnostic',30,0),(81,'USG - Breast (Left)','USG - Breast (Left)','400','diagnostic',30,0),(82,'USG - Breast (Right)','USG - Breast (Right)','400','diagnostic',30,0),(83,'X-RAY - Ba MealS+D  ','X-RAY - Ba MealS+D  ','1400','diagnostic',20,0),(84,'X-RAY - Ba Swallo Oesopha','X-RAY - Ba Swallo Oesopha','1000','diagnostic',20,0),(85,'X-RAY - KUB                         ','X-RAY - KUB ','500','diagnostic',20,0),(86,'X-RAY - Leg Joint(B/V)(L/R)','X-RAY - Leg Joint(B/V)(L/R)','500','diagnostic',20,0),(87,'X-RAY -Knee Joint(L/R)','X-RAY -Knee Joint(L/R)','500','diagnostic',20,0),(88,'X-RAY - Finger(B/V) ','X-RAY - Finger(B/V) ','350','diagnostic',20,0),(89,'X-RAY - Wrist(B/V)(L/R) ','X-RAY - Wrist(B/V)(L/R) ','350','diagnostic',20,0),(90,'X-RAY - Hand(B/V)(L/R)                   ','X-RAY - Hand(B/V)(L/R)       ','350','diagnostic',20,0),(91,'X-RAY - Elbow(B/V)(L/R)','X-RAY - Elbow(B/V)(L/R)','350','diagnostic',20,0),(92,'X-RAY - Erm(B/V)(L/R )','X-RAY - Erm(B/V)(L/R )','350','diagnostic',20,0),(93,'X-RAY - Shoulder Joint (B/V)','X-RAY - Shoulder Joint (B/V)','500','diagnostic',20,0),(94,'X-RAY - Shoulder Joint (A/P)','X-RAY - Shoulder Joint (A/P)','350','diagnostic',20,0),(95,'X-RAY - Foot (B/V)','X-RAY - Foot (B/V)','350','diagnostic',20,0),(96,'X-RAY - Thigh(B/V)','X-RAY - Thigh(B/V)','500','diagnostic',20,0),(97,'X-RAY - Ankle(B/V)','X-RAY - Ankle(B/V)','350','diagnostic',20,0),(98,'X-RAY - Hip Joint(A/P)','X-RAY - Hip Joint(A/P)','350','diagnostic',20,0),(99,'X-RAY - Pelvis(A/P)','X-RAY - Pelvis(A/P)','500','diagnostic',20,0),(100,'X-RAY - L/S(B/V)(Lamber Spine)','X-RAY - L/S(B/V)(Lamber Spine)','500','diagnostic',20,0),(101,'X-RAY - L/S(A/P)(LamberSpine)','X-RAY - L/S(A/P)(LamberSpine)','500','diagnostic',20,0),(102,'X-RAY - D/L(A/P)(Thoracic)','X-RAY - D/L(A/P)(Thoracic)','500','diagnostic',20,0),(103,'X-RAY - Mandable(B/V)','X-RAY - Mandable(B/V)','500','diagnostic',20,0),(104,'X-RAY -C/S(AP)(Carvicai)','X-RAY -C/S(AP)(Carvicai)','500','diagnostic',20,0),(105,'X-RAY - PNS (AP)','X-RAY - PNS (AP)','350','diagnostic',20,0),(106,'ESR','Patho Test','150','diagnostic',30,0),(107,'FBS CUS','Pathological test','160','diagnostic',30,0),(108,'Hb%','Pathological test','100','diagnostic',30,0),(109,'Physio-Therapy','Therapy','1000','',0,0),(114,'2HABF','Pathological test','100','diagnostic',30,0),(113,'FBS','Pathological test','100','diagnostic',30,0),(115,'S. TSH','Pathological test','400','diagnostic',30,0),(116,'S. T3','Pathological test','400','diagnostic',30,0),(117,'DC','Pathological test','200','diagnostic',30,0),(118,'TC','Pathological test','200','diagnostic',30,0),(119,'X-Ray CXR (Digital)','X-Ray','500','diagnostic',20,0),(120,'S. Uric acid','Pathological test','250','diagnostic',30,0),(122,'U.S.G OF L/A ','U.S.G','400','diagnostic',30,0),(125,'Rt knee joient b/v','X-Ray','500','diagnostic',20,0),(126,'eosinphil','Pathology Test','100','diagnostic',0,0);
/*!40000 ALTER TABLE `payment_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentgateway`
--

DROP TABLE IF EXISTS `paymentgateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentgateway` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `merchant_key` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL,
  `APIUsername` varchar(100) NOT NULL,
  `APIPassword` varchar(100) NOT NULL,
  `APISignature` varchar(100) NOT NULL,
  `status` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentgateway`
--

LOCK TABLES `paymentgateway` WRITE;
/*!40000 ALTER TABLE `paymentgateway` DISABLE KEYS */;
INSERT INTO `paymentgateway` VALUES (1,'PayPal','','','','','Enter API Username','Enter API Password','Enter API Signature','test'),(2,'Pay U Money','2834204982','092j92409','','','','','Aaw-Fd69z.JLuiq13ejMN-CsSMuuAPEXWUFPF5QW9sD22fp1hosGIFKo','test');
/*!40000 ALTER TABLE `paymentgateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `system_vendor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `currency` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `language` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vat` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login_title` varchar(100) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `invoice_logo` varchar(500) NOT NULL,
  `gateway` varchar(100) NOT NULL,
  `payment_gateway` varchar(100) NOT NULL,
  `sms_gateway` varchar(50) NOT NULL,
  `codec_username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `codec_purchase_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Cash Management System','Halkhata','Chawk Bazer Dhaka - 1211','+8801717500223','info.shahanoorgroupdhakabd@gmail.com','#','$','english','flat','percentage','Login Title','uploads/logo-nonetext1.png','','1','PayPal','MSG91','0','0');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  `text1` varchar(500) NOT NULL,
  `text2` varchar(500) NOT NULL,
  `text3` varchar(500) NOT NULL,
  `position` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slide`
--

LOCK TABLES `slide` WRITE;
/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
INSERT INTO `slide` VALUES (7,'','uploads/store-management.png','','','','1','Active'),(8,'','uploads/the-secrets-to-successful-store-management-800x450.png','','','','3','Active');
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `recipient` varchar(500) NOT NULL,
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `api_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sender` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_settings`
--

LOCK TABLES `sms_settings` WRITE;
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` VALUES (1,'Clickatell','rizviplabon','','3570596','','','1'),(2,'MSG91','','','','','54646456546456456456456','1');
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spayment`
--

DROP TABLE IF EXISTS `spayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spayment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `supplier_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `ptype` varchar(100) NOT NULL,
  `cash_recevied` varchar(100) NOT NULL,
  `due` varchar(100) NOT NULL,
  `supplier_phone` varchar(100) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spayment`
--

LOCK TABLES `spayment` WRITE;
/*!40000 ALTER TABLE `spayment` DISABLE KEYS */;
INSERT INTO `spayment` VALUES (1,'1','','1558520489','10000','0','7000','3000','',''),(26,'516384','P&G','1558843200','','0','','0','',''),(24,'516384','P&G','1558843200','','0','','0','',''),(6,'2','P&G','1558843200','10','1','10','0','',''),(7,'2','P&G','1558843200','10','1','10','0','',''),(8,'2','P&G','1558843200','10','1','10','0','',''),(9,'2','P&G','1558843200','10','1','10','0','',''),(10,'2','P&G','1558843200','10','1','10','0','',''),(11,'2','P&G','1558843200','10','1','10','0','',''),(12,'2','P&G','1558843200','10','1','10','0','',''),(13,'2','P&G','1558843200','10','1','10','0','',''),(14,'2','P&G','1558843200','10','1','10','0','',''),(15,'2','P&G','1558843200','10','1','10','0','',''),(16,'2','P&G','1558843200','10','1','10','0','',''),(17,'2','P&G','1558843200','10','1','10','0','',''),(18,'1','Unilever BD','1558843200','10','1','10','0','',''),(19,'1','Unilever BD','1558843200','10','1','10','0','',''),(20,'1','Unilever BD','1558843200','10','1','10','0','',''),(21,'2','P&G','1558843200','10','1','10','0','',''),(22,'2','P&G','1558843200','10','1','10','0','','');
/*!40000 ALTER TABLE `spayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `supplier_category` varchar(100) NOT NULL,
  `ion_user_id` varchar(100) NOT NULL,
  `add_date` varchar(100) NOT NULL,
  `img_url` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_category`
--

DROP TABLE IF EXISTS `supplier_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_category`
--

LOCK TABLES `supplier_category` WRITE;
/*!40000 ALTER TABLE `supplier_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `members` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `task` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=746 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'127.0.0.1','admin','$2y$08$EsaKT2M8qXHVS5vOFmnF5O9stKpqdwO9XM9o9XGFIl.j1/LpzyGqm','','admin@example.com','','eX0.Bq6nP57EuXX4hJkPHO973e7a4c25f1849d3a',1511432365,'zCeJpcj78CKqJ4sVxVbxcO',1268889823,1567689433,1,'Admin','istrator','ADMIN','0'),(742,'45.251.231.64','client2','$2y$08$XTx2SF1DAgRs8DosYPqJUOAeh.w5kKoMUK7vaYfyljWY5HizzkVvy',NULL,'client2@example.com',NULL,NULL,NULL,NULL,1557828700,1558593506,1,NULL,NULL,NULL,NULL),(744,'45.251.231.64','client1','$2y$08$MaM2MLNm7VbAgdspxBfT8.kt6ifzorrsoq9CrerILn5SUto7f.5Qi',NULL,'client1@example.com',NULL,NULL,NULL,NULL,1558177275,1567689412,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=748 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1,1),(744,742,6),(746,744,6);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_settings`
--

DROP TABLE IF EXISTS `website_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `logo` varchar(1000) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `emergency` varchar(100) NOT NULL,
  `support` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `block_1_text_under_title` varchar(500) NOT NULL,
  `service_block__text_under_title` varchar(500) NOT NULL,
  `client_block__text_under_title` varchar(500) NOT NULL,
  `facebook_id` varchar(100) NOT NULL,
  `twitter_id` varchar(100) NOT NULL,
  `google_id` varchar(100) NOT NULL,
  `youtube_id` varchar(100) NOT NULL,
  `skype_id` varchar(100) NOT NULL,
  `x` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_settings`
--

LOCK TABLES `website_settings` WRITE;
/*!40000 ALTER TABLE `website_settings` DISABLE KEYS */;
INSERT INTO `website_settings` VALUES (1,'Halkhata','','Boropool, Rajbari-7700','+0123456789','+0123456789','+0123456789','admin@demo.com','$','Your Country , Your Choice','Aenean nibh ante, lacinia non tincidunt nec, lobortis ut tellus. Sed in porta diam.','0','https://www.facebook.com/rizvi.plabon','https://www.facebook.com/rizvi.plabon','https://www.facebook.com/rizvi.plabon','https://www.facebook.com/rizvi.plabon','https://www.facebook.com/rizvi.plabon',NULL);
/*!40000 ALTER TABLE `website_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:04:46
