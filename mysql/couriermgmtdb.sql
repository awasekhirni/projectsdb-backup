-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: couriermgmtdb
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
-- Table structure for table `add_consolidate`
--

DROP TABLE IF EXISTS `add_consolidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_consolidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcon` int(11) NOT NULL,
  `con_tmp` int(11) NOT NULL,
  `order_inv` varchar(60) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `r_qnty` varchar(128) DEFAULT NULL,
  `r_weight` varchar(128) DEFAULT NULL,
  `v_weight` varchar(60) DEFAULT NULL,
  `r_description` text,
  `r_costtotal` double NOT NULL,
  `created` date NOT NULL,
  `r_hour` time NOT NULL,
  `act_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_consolidate`
--

LOCK TABLES `add_consolidate` WRITE;
/*!40000 ALTER TABLE `add_consolidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_consolidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_container`
--

DROP TABLE IF EXISTS `add_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_container` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcon` int(11) NOT NULL,
  `letter_or` varchar(6) DEFAULT NULL,
  `tracking` varchar(120) DEFAULT NULL,
  `order_inv` varchar(60) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_email` varchar(255) DEFAULT NULL,
  `r_address` varchar(255) DEFAULT NULL,
  `r_phone` varchar(255) DEFAULT NULL,
  `r_dest` varchar(255) DEFAULT NULL,
  `r_city` varchar(255) DEFAULT NULL,
  `r_postal` varchar(255) DEFAULT NULL,
  `origin_port` varchar(120) DEFAULT NULL,
  `destination_port` varchar(120) DEFAULT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `package` varchar(255) NOT NULL,
  `r_tax` varchar(128) DEFAULT NULL,
  `total_tax` varchar(60) DEFAULT NULL,
  `r_insurance` varchar(128) DEFAULT NULL,
  `total_insurance` varchar(60) DEFAULT NULL,
  `ship_mode` varchar(128) DEFAULT NULL,
  `n_weight` varchar(128) DEFAULT NULL,
  `g_weight` varchar(60) DEFAULT NULL,
  `s_description` text,
  `length` varchar(128) DEFAULT NULL,
  `width` varchar(128) DEFAULT NULL,
  `height` varchar(128) DEFAULT NULL,
  `incoterms` varchar(128) DEFAULT NULL,
  `pay_mode` varchar(40) DEFAULT NULL,
  `r_curren` varchar(128) DEFAULT NULL,
  `r_costtotal` double NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `s_week` varchar(6) DEFAULT NULL,
  `expiration_date` varchar(20) NOT NULL,
  `deli_time` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `r_hour` time NOT NULL,
  `courier` varchar(255) NOT NULL,
  `status_courier` varchar(128) DEFAULT NULL,
  `act_status` tinyint(1) NOT NULL,
  `level` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_container`
--

LOCK TABLES `add_container` WRITE;
/*!40000 ALTER TABLE `add_container` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_courier`
--

DROP TABLE IF EXISTS `add_courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_courier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `letter_or` varchar(6) DEFAULT NULL,
  `tracking` varchar(120) DEFAULT NULL,
  `order_inv` varchar(60) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_email` varchar(255) DEFAULT NULL,
  `r_address` varchar(255) DEFAULT NULL,
  `r_phone` varchar(255) DEFAULT NULL,
  `rc_phone` varchar(120) DEFAULT NULL,
  `r_dest` varchar(255) DEFAULT NULL,
  `r_city` varchar(255) DEFAULT NULL,
  `r_postal` varchar(255) DEFAULT NULL,
  `origin_off` varchar(255) DEFAULT NULL,
  `code_offnew` varchar(120) DEFAULT NULL,
  `package` varchar(255) NOT NULL,
  `r_tax` varchar(128) DEFAULT NULL,
  `total_tax` varchar(60) DEFAULT NULL,
  `r_insurance` varchar(128) DEFAULT NULL,
  `total_insurance` varchar(60) DEFAULT NULL,
  `itemcat` varchar(255) NOT NULL,
  `r_qnty` varchar(128) DEFAULT NULL,
  `r_weight` varchar(128) DEFAULT NULL,
  `v_weight` varchar(60) DEFAULT NULL,
  `r_description` text,
  `length` varchar(128) DEFAULT NULL,
  `width` varchar(128) DEFAULT NULL,
  `height` varchar(128) DEFAULT NULL,
  `r_custom` varchar(128) DEFAULT NULL,
  `pay_mode` varchar(40) DEFAULT NULL,
  `r_curren` varchar(128) DEFAULT NULL,
  `r_costtotal` double NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `deli_time` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `r_hour` time NOT NULL,
  `courier` varchar(255) NOT NULL,
  `service_options` varchar(120) DEFAULT NULL,
  `collection_courier` varchar(255) DEFAULT NULL,
  `c_driver` varchar(120) DEFAULT NULL,
  `status_courier` varchar(128) DEFAULT NULL,
  `act_status` tinyint(1) NOT NULL,
  `reasons` text,
  `deliver_date` varchar(40) DEFAULT NULL,
  `delivery_hour` varchar(40) DEFAULT NULL,
  `person_receives` varchar(120) DEFAULT NULL,
  `name_employee` varchar(120) DEFAULT NULL,
  `level` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_courier`
--

LOCK TABLES `add_courier` WRITE;
/*!40000 ALTER TABLE `add_courier` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_tracking`
--

DROP TABLE IF EXISTS `c_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_tracking` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `n_order` varchar(255) DEFAULT NULL,
  `order_track` varchar(120) DEFAULT NULL,
  `name_off` varchar(250) DEFAULT NULL,
  `role_user` varchar(250) DEFAULT NULL,
  `created_courier` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_tracking`
--

LOCK TABLES `c_tracking` WRITE;
/*!40000 ALTER TABLE `c_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name_item` varchar(120) DEFAULT NULL,
  `detail_item` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Accessory (no-battery)','Accessory (no-battery)'),(2,'Accessory (with battery)','Accessory (with battery)'),(3,'Audio Video','Audio Video'),(4,'Bags & Luggages','Bags & Luggages'),(5,'Books & Collectibles','Books & Collectibles'),(6,'Cameras','Cameras'),(7,'Computers & Laptops','Computers & Laptops'),(8,'Documents','Documents'),(9,'Dry Food & Supplements','Dry Food & Supplements'),(10,'Fashion','Fashion'),(11,'Gaming','Gaming'),(12,'Health & Beauty','Health & Beauty'),(13,'Home Appliances','Home Appliances'),(14,'Home Decor','Home Decor'),(15,'Jewelry','Jewelry'),(16,'Mobile Phones','Mobile Phones'),(17,'Pet Accessory','Pet Accessory'),(18,'Sauce','Sauce'),(19,'Sport & Leisure','Sport & Leisure'),(20,'Tablets','Tablets'),(21,'Toys','Toys'),(22,'Watches','Watches');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cons_products`
--

DROP TABLE IF EXISTS `cons_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cons_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcon` int(11) NOT NULL,
  `con_tmp` int(11) NOT NULL,
  `trackings` varchar(120) DEFAULT NULL,
  `order_invs` varchar(60) DEFAULT NULL,
  `order_cons` varchar(60) NOT NULL,
  `s_names` varchar(255) NOT NULL,
  `r_qntys` varchar(128) DEFAULT NULL,
  `r_weights` varchar(128) DEFAULT NULL,
  `v_weights` varchar(60) DEFAULT NULL,
  `r_descriptions` text,
  `r_costtotals` double NOT NULL,
  `createds` date NOT NULL,
  `r_hours` time NOT NULL,
  `levels` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cons_products`
--

LOCK TABLES `cons_products` WRITE;
/*!40000 ALTER TABLE `cons_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `cons_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cons_tmp`
--

DROP TABLE IF EXISTS `cons_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cons_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcon` int(11) NOT NULL,
  `con_tmp` int(11) NOT NULL,
  `trackings` varchar(120) DEFAULT NULL,
  `order_invs` varchar(60) DEFAULT NULL,
  `order_cons` varchar(60) DEFAULT NULL,
  `s_names` varchar(255) DEFAULT NULL,
  `r_qntys` varchar(128) DEFAULT NULL,
  `r_weights` varchar(128) DEFAULT NULL,
  `v_weights` varchar(60) DEFAULT NULL,
  `r_descriptions` text,
  `r_costtotals` double NOT NULL,
  `createds` date NOT NULL,
  `r_hours` time NOT NULL,
  `levels` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cons_tmp`
--

LOCK TABLES `cons_tmp` WRITE;
/*!40000 ALTER TABLE `cons_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cons_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consolidate`
--

DROP TABLE IF EXISTS `consolidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consolidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcon` int(11) NOT NULL,
  `letter_or` varchar(6) DEFAULT NULL,
  `tracking` varchar(120) DEFAULT NULL,
  `order_inv` varchar(60) DEFAULT NULL,
  `order_cons` varchar(60) DEFAULT NULL,
  `seals` varchar(60) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_email` varchar(255) DEFAULT NULL,
  `r_address` varchar(255) DEFAULT NULL,
  `r_phone` varchar(255) DEFAULT NULL,
  `r_dest` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `r_declarate` varchar(60) DEFAULT NULL,
  `r_qnty` varchar(60) DEFAULT NULL,
  `r_weight` varchar(60) DEFAULT NULL,
  `code_off` varchar(128) DEFAULT NULL,
  `code_offnew` varchar(120) DEFAULT NULL,
  `r_curren` varchar(128) DEFAULT NULL,
  `c_add_pound` varchar(60) DEFAULT NULL,
  `reexpedition` varchar(60) DEFAULT NULL,
  `r_costtotal` double NOT NULL,
  `pay_mode` varchar(60) NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `deli_time` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `r_hour` time NOT NULL,
  `courier` varchar(255) NOT NULL,
  `service_options` varchar(120) DEFAULT NULL,
  `c_driver` varchar(255) DEFAULT NULL,
  `status_courier` varchar(128) DEFAULT NULL,
  `act_status` tinyint(1) NOT NULL,
  `comments` text,
  `deliver_date` varchar(40) DEFAULT NULL,
  `delivery_hour` varchar(40) DEFAULT NULL,
  `person_receives` varchar(120) DEFAULT NULL,
  `name_employee` varchar(120) DEFAULT NULL,
  `level` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consolidate`
--

LOCK TABLES `consolidate` WRITE;
/*!40000 ALTER TABLE `consolidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `consolidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courier_com`
--

DROP TABLE IF EXISTS `courier_com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courier_com` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_com` varchar(100) DEFAULT NULL,
  `address_cou` varchar(120) DEFAULT NULL,
  `phone_cou` varchar(20) DEFAULT NULL,
  `country_cou` varchar(100) DEFAULT NULL,
  `city_cou` varchar(100) DEFAULT NULL,
  `postal_cou` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courier_com`
--

LOCK TABLES `courier_com` WRITE;
/*!40000 ALTER TABLE `courier_com` DISABLE KEYS */;
INSERT INTO `courier_com` VALUES (83,'USPS - Priority','WASHINGTON DC','+1-800-275-8777','U.S','WASHINGTON DC','05781'),(78,'FEDEX','Renaissance Center 1715 Aaron Brenner Drive Suite 600 Memphis,','1.866.393.4585','UNITED STATES','Memphis','38120'),(85,'DHL','WASHINGTON DC','1-800-225-5345','UNITED STATES','WASHINGTON DC','38120'),(86,'TNT','WASHINGTON DC','800-003-3339','UNITED STATES','WASHINGTON DC','38120'),(87,'UPS','WASHINGTON DC','01 8000 120 920','UNITED STATES','MIAMI','38120'),(88,'ROYAL MAIL','100 Victoria Embankment London EC4Y 0HQ','034758598','REINO UNIDO','LONDRES','38120');
/*!40000 ALTER TABLE `courier_com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courier_track`
--

DROP TABLE IF EXISTS `courier_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courier_track` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `t_id` varchar(20) DEFAULT NULL,
  `order_track` varchar(100) DEFAULT NULL,
  `t_dest` varchar(255) DEFAULT NULL,
  `t_city` varchar(250) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `rc_phone` varchar(60) DEFAULT NULL,
  `t_date` varchar(100) DEFAULT NULL,
  `t_hour` varchar(120) DEFAULT NULL,
  `status_courier` varchar(120) DEFAULT NULL,
  `code_offnew` varchar(120) DEFAULT NULL,
  `t_level` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courier_track`
--

LOCK TABLES `courier_track` WRITE;
/*!40000 ALTER TABLE `courier_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `courier_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_container`
--

DROP TABLE IF EXISTS `detail_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_container` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcon` int(20) NOT NULL,
  `order_inv` varchar(60) NOT NULL,
  `detail_container` text NOT NULL,
  `detail_weight` varchar(255) NOT NULL,
  `detail_qty` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `tprice` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `act_status` varchar(6) NOT NULL,
  `level` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_container`
--

LOCK TABLES `detail_container` WRITE;
/*!40000 ALTER TABLE `detail_container` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_container_tmp`
--

DROP TABLE IF EXISTS `detail_container_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_container_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcon` int(20) NOT NULL,
  `order_inv` varchar(60) NOT NULL,
  `detail_container` text NOT NULL,
  `detail_weight` varchar(255) NOT NULL,
  `detail_qty` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `tprice` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `act_status` varchar(6) NOT NULL,
  `level` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_container_tmp`
--

LOCK TABLES `detail_container_tmp` WRITE;
/*!40000 ALTER TABLE `detail_container_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_container_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `help` text,
  `body` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'Registration Email','Please verify your email','This template is used to send Registration Verification Email, when Configuration->Registration Verification is set to YES','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#f62d51\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hi!\r\n							</td>\r\n						</tr>\r\n						<td style=\'font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;\'>\r\n							[NAME]! Thanks for registering.\r\n						</td>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								You&#039;re now a member of [SITE_NAME].\r\n								<br>\r\n								Here are your login details. Please keep them in a safe place:\r\n								<br><br>\r\n								Username: <b>[USERNAME]</b>\r\n								<br>\r\n								Password: <b>[PASSWORD]</b>\r\n								<br><br>\r\n									The administrator of this site has requested all new accounts\r\n									to be activated by the users who created them thus your account\r\n									is currently inactive. To activate your account,\r\n									please visit the link below and enter the following:\r\n								<br><br>\r\n								<span style=\'color:#846add;\'>Activate Information:</span><br><br>\r\n								<span>\r\n								Token: [TOKEN]\r\n								<br>\r\n								Email: [EMAIL]\r\n								<br><br>\r\n								&lt;a href=&quot;[URL]/activate.php&quot;&gt;Click here to activate tour account&lt;/a&gt;\r\n								</span>\r\n								<br><br><br>\r\n								Thanks,<br>\r\n								[SITE_NAME] Team,<br>\r\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(2,'Forgot Password Email','Password Reset','This template is used for retrieving lost user password','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#f62d51\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hi!\r\n							</td>\r\n						</tr>\r\n						<td style=\'font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;\'>\r\n							&lt;strong&gt;[USERNAME]&lt;/strong&gt;\r\n						</td>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								You&#039;re now a member of [SITE_NAME].\r\n								<br>\r\n								It seems that you or someone requested a new password for you.\r\n								We have generated a new password, as requested:\r\n								<br><br>\r\n								Your new password: <b>[PASSWORD]</b>\r\n								<br><br>\r\n								To use the new password you need to activate it. To do this click the link provided below and login with your new password.\r\n								<br><br>\r\n								&lt;a href=&quot;[LINK]&quot;&gt;[LINK]&lt;/a&gt;&lt;br /&gt;\r\n								<br><br>\r\n								You can change your password after you sign in.&lt;hr /&gt;\r\n								Password requested from IP: [IP]&lt;/td&gt;\r\n								<br><br><br>\r\n								Thanks,<br>\r\n								[SITE_NAME] Team,<br>\r\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(3,'Welcome Mail From Admin','You have been registered','This template is used to send welcome email, when user is added by administrator','											&lt;!doctype html&gt;\n&lt;html&gt;\n\n&lt;head&gt;\n&lt;link href=&#039;https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600&#039; rel=&#039;stylesheet&#039; type=&#039;text/css&#039;&gt;\n&lt;/head&gt;\n\n&lt;body style=&#039;margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;&#039;&gt;\n	&lt;table border=&#039;0&#039; cellpadding=&#039;0&#039; cellspacing=&#039;0&#039; width=&#039;100%&#039;&gt;\n		&lt;table align=&#039;center&#039; border=&#039;0&#039; cellpadding=&#039;0&#039; cellspacing=&#039;0&#039; width=&#039;100%&#039; style=&#039;max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;&#039;&gt; \n\n			&lt;tr bgcolor=&#039;#f62d51&#039; height=&#039;5px&#039;&gt;\n				&lt;td align=&#039;center&#039; style=&#039;font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;&#039;&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n			&lt;tr bgcolor=&#039;#f9f9f9&#039;&gt;\n				&lt;td style=&#039;padding:40px;&#039;&gt;\n					&lt;table border=&#039;0&#039; cellpadding=&#039;0&#039; cellspacing=&#039;0&#039; width=&#039;100%&#039;&gt;\n						&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;[URL]/uploads/logo.png&quot; class=&quot;logo&quot;/&gt;&lt;/td&gt;&lt;/tr&gt;\n						&lt;br&gt;&lt;br&gt;\n						&lt;tr height=&#039;30&#039;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&#039;font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:17px; font-weight:400;&#039;&gt;\n							Hi! [NAME]!, Welcome You have been Registered\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&#039;15&#039;&gt;&lt;/tr&gt;\n						&lt;td style=&#039;font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;&#039;&gt;\n							You&#039;re now a member of [SITE_NAME].\n						&lt;/td&gt;\n						&lt;tr height=&#039;30&#039;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&quot;margin: 40px 0;line-height: 22px; font-family: &#039;Montserrat&#039;, Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;&quot;&gt;\n								Here are your login details. Please keep them in a safe place:\n								&lt;br&gt;&lt;br&gt;\n								Username: &lt;b&gt;[USERNAME]&lt;/b&gt;\n								&lt;br&gt;\n								Password: &lt;b&gt;[PASSWORD]&lt;/b&gt;								\n								&lt;br&gt;&lt;br&gt;&lt;br&gt;\n								Thanks,&lt;br&gt;\n								[SITE_NAME] Team,&lt;br&gt;\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n							&lt;/td&gt;\n						&lt;/tr&gt;\n						&lt;tr height=&#039;50&#039;&gt;&lt;/tr&gt;\n						&lt;tr&gt;\n							&lt;td style=&#039;margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;&#039;&gt;\n								To reply to this message you can simply reply this email.\n							&lt;/td&gt;\n						&lt;/tr&gt;\n					&lt;/table&gt;\n				&lt;/td&gt;\n			&lt;/tr&gt;\n		&lt;/table&gt; \n	&lt;/table&gt;\n&lt;/body&gt;\n&lt;/html&gt;										'),(4,'Default Newsletter','Newsletter','This is a default newsletter template','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#f62d51\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr height=\'15\'></tr>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hi! [NAME]!\r\n							</td>\r\n						</tr>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								You&#039;re now a member of [SITE_NAME].								\r\n								<br><br>\r\n									You are receiving this email as a part of your newsletter subscription.\r\n									&lt;hr&gt;\r\n									Here goes your newsletter content\r\n									&lt;hr&gt;\r\n								<br><br><br>\r\n								Thanks,<br>\r\n								[SITE_NAME] Team,<br>\r\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								&lt;span style=&quot;font-size: 11px;&quot;&gt;&lt;em&gt;To stop receiving future newsletters please login into your account         and uncheck newsletter subscription box.&lt;/em&gt;&lt;/span&gt;\r\n								<br><br>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(7,'Welcome Email','Welcome','This template is used to welcome newly registered user when Configuration-&gt;Registration Verification and Configuration-&gt;Auto Registration are both set to YES','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#f62d51\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr height=\'15\'></tr>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hi!\r\n							</td>\r\n						</tr>\r\n						<td style=\'font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;\'>\r\n							Welcome [NAME]! Thanks for registering.\r\n						</td>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								You&#039;re now a member of [SITE_NAME].\r\n								<br>\r\n								Here are your login details. Please keep them in a safe place:\r\n								<br><br>\r\n								Username: <b>[USERNAME]</b>\r\n								<br>\r\n								Password: <b>[PASSWORD]</b>\r\n								<br><br><br>\r\n								Thanks,<br>\r\n								[SITE_NAME] Team,<br>\r\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(10,'Contact Request','Contact Inquiry','This template is used to send default Contact Request Form','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#f62d51\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr height=\'15\'></tr>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hello Admin\r\n							</td>\r\n						</tr>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								<br><br>\r\n									You have a new contact request:         \r\n									&lt;hr /&gt;\r\n									[MESSAGE]         \r\n									&lt;hr /&gt;\r\n								<br><br>\r\n								<span style=\'color:#846add;\'>Information:</span><br><br>\r\n								<span>\r\n								From: &lt;strong&gt;[SENDER] - [NAME]&lt;/strong&gt;&lt;br /&gt;\r\n								Subject: &lt;strong&gt;[MAILSUBJECT]&lt;/strong&gt;&lt;br /&gt;\r\n								Senders IP: &lt;strong&gt;[IP]&lt;/strong&gt;\r\n								</span>\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(12,'Single Email','Single User Email','This template is used to email single user','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#f62d51\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr height=\'15\'></tr>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hello [NAME]\r\n							</td>\r\n						</tr>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								<br><br>\r\n									Your message goes here...         \r\n									\r\n								<br><br>\r\n								<span style=\'color:#846add;\'>Thanks,</span><br><br>\r\n								<span>\r\n								[SITE_NAME] Team\r\n								</span>\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(13,'Notify Admin','New User Registration','This template is used to notify admin of new registration when Configuration->Registration Notification is set to YES','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#6610f2\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hello Admin!\r\n							</td>\r\n						</tr>\r\n						\r\n						<td style=\'font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;\'>\r\n							You have a new user registration. You can login into your admin panel to view details:\r\n						</td>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								Username: <b>[USERNAME]</b>\r\n								<br>\r\n								Name: <b>[NAME]</b>\r\n								<br>\r\n								IP:   <b>[IP]</b>\r\n								<br>\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(14,'Registration Pending','Registration Verification Pending','This template is used to send Registration Verification Email, when Configuration->Auto Registration is set to NO','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#f62d51\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr height=\'15\'></tr>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hi!\r\n							</td>\r\n						</tr>\r\n						<td style=\'font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;\'>\r\n							Welcome [NAME]! Thanks for registering.\r\n						</td>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								You&#039;re now a member of [SITE_NAME].\r\n								<br>\r\n								Here are your login details. Please keep them in a safe place:\r\n								<br><br>\r\n								Username: &lt;strong&gt;[USERNAME]&lt;/strong&gt;&lt;br /&gt;\r\n								Password: &lt;strong&gt;[PASSWORD]&lt;/strong&gt;         &lt;hr /&gt;\r\n								The administrator of this site has requested all new accounts&lt;br /&gt;\r\n								to be activated by the users who created them thus your account&lt;br /&gt;\r\n								is currently pending verification process.\r\n								<br><br><br>\r\n								Thanks,<br>\r\n								[SITE_NAME] Team,<br>\r\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(16,'Notification Courier','sales@shipmentscript.com','This template is used to notify user when manual account activation is completed','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#f62d51\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr height=\'15\'></tr>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hi!\r\n							</td>\r\n						</tr>\r\n						<td style=\'font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;\'>\r\n							[NAME], [SNAME] Shipping a package for you!.\r\n						</td>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								These are the data of your shipment [NAME].\r\n								<br><br>\r\n								# Tracking: <b>[TRACKING]</b>\r\n								<br>\r\n								Status: <b>[COURIER]</b>\r\n								<br>\r\n								Destination: <b>[DESTINATION]</b>\r\n								<br>\r\n								Address: <b>[ADDRESS]</b>\r\n								<br>\r\n								Date of shipment: <b>[DELIVERY_TIME]</b>\r\n								<br>\r\n								Shipping details: <b>[DESCRIPTION]</b>\r\n								<br><br>\r\n								<br><br>\r\n								&lt;a href=&quot;[URL]/track_shipment.php&quot;&gt;See your shipment&lt;/a&gt;\r\n								</span>\r\n								<br><br><br>\r\n								Thanks,<br>\r\n								[SITE_NAME] Team,<br>\r\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(17,'Account Activation','Your account have been activated','This template is used to notify user when manual account activation is completed','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#36bea6\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr height=\'15\'></tr>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hello, [NAME]!\r\n							</td>\r\n						</tr>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								You&#039;re now a member of [SITE_NAME].\r\n								<br><br>\r\n								Your account is now fully activated, and you may login at \r\n								<br><br>\r\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;\r\n								<br><br><br>\r\n								Thanks,<br>\r\n								[SITE_NAME] Team,<br>\r\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>'),(18,'Approved Courier Online','Your shipment has ben approved','This template is used to approved shipments','<!doctype html>\r\n<html>\r\n\r\n<head>\r\n<link href=\'https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body style=\'margin: 0; padding: 20px; font-family: Montserrat, Arial, sans serif; font-size: 12px;font-weight:400;word-break: break-word;color:#555;line-height: 18px;\'>\r\n	<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n		<table align=\'center\' border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\' style=\'max-width:500px; margin:40px auto;border-collapse: collapse;border-radius: 2px;overflow: hidden;\'> \r\n\r\n			<tr bgcolor=\'#f62d51\' height=\'5px\'>\r\n				<td align=\'center\' style=\'font-family: Montserrat, Arial, sans serif; color: #fff;text-transform: uppercase;font-size: 20px;justify-content: center;align-items: center;letter-spacing: 4px;font-weight: 600;\'>\r\n				</td>\r\n			</tr>\r\n			<tr bgcolor=\'#f9f9f9\'>\r\n				<td style=\'padding:40px;\'>\r\n					<table border=\'0\' cellpadding=\'0\' cellspacing=\'0\' width=\'100%\'>\r\n						<tr><td><img src=\"[URL]/uploads/logo.png\" class=\"logo\"/></td></tr>\r\n						<br><br><br>\r\n						<tr height=\'15\'></tr>\r\n						<tr>\r\n							<td style=\'font-family: Montserrat, Arial, sans serif; margin:0; color:#846add; font-size:20px; font-weight:400;\'>\r\n							Hi!\r\n							</td>\r\n						</tr>\r\n						<td style=\'font-family: Montserrat, Arial, sans serif; margin:5px 0 0; font-size: 12px; font-weight:400;word-break: break-word;color:#333;line-height: 22px; position: relative; top: 10px;\'>\r\n							[NAME], Your shipment was approved.\r\n						</td>\r\n						<tr height=\'30\'></tr>\r\n						<tr>\r\n							<td style=\"margin: 40px 0;line-height: 22px; font-family: \'Montserrat\', Arial, sans serif; font-size: 12px;font-weight:100; word-break: break-word; color:#333;\">\r\n								These are the data of your shipment [NAME].\r\n								<br><br>\r\n								# Tracking: <b>[TRACKING]</b>\r\n								<br>\r\n								Status: <b>[COURIER]</b>\r\n								<br>								\r\n								<br><br>\r\n								<br><br>\r\n								&lt;a href=&quot;[URL]/login.php&quot;&gt;log in&lt;/a&gt;\r\n								</span>\r\n								<br><br><br>\r\n								Thanks,<br>\r\n								[SITE_NAME] Team,<br>\r\n								&lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;\r\n							</td>\r\n						</tr>\r\n						<tr height=\'50\'></tr>\r\n						<tr>\r\n							<td style=\'margin:40px 0; line-height: 22px; font-family: Montserrat, Arial, sans serif; font-size: 12px; font-weight:400; word-break: break-word; color:#333; padding-top: 10px; border-top: 1px solid #e2e2e2;\'>\r\n								To reply to this message you can simply reply this email.\r\n							</td>\r\n						</tr>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</table> \r\n	</table>\r\n</body>\r\n</html>');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incoterm`
--

DROP TABLE IF EXISTS `incoterm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incoterm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inco_name` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incoterm`
--

LOCK TABLES `incoterm` WRITE;
/*!40000 ALTER TABLE `incoterm` DISABLE KEYS */;
INSERT INTO `incoterm` VALUES (1,'EXW','EXW - ExWorks'),(2,'FCA','FCA - Free Carrier'),(3,'FAS','FAS - Free Alongside Ship'),(4,'FOB','FOB - Free On Board'),(5,'CFR','CFR - Cost and Freight'),(6,'CIF','CIF - Cost, Insurance, Freight'),(7,'CIP','CIP - Carriage and Insurance Paid'),(8,'CPT','CPT - Carriage Paid To'),(9,'DAF','DAF - Delivered At Frontier'),(10,'DES','DES - Delivered Ex Ship'),(11,'DEQ','DEQ - Delivered Ex Quay'),(12,'DDU','DDU - Delivered Duty Unpaid'),(13,'DDP','DDP - Delivered Duty Paid'),(14,'DAT','DAT â€“ Delivered at Terminal (named terminal at port or place of destination)'),(15,'DAP','DAP - Delivered At Place (named place of destination)');
/*!40000 ALTER TABLE `incoterm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `met_payment`
--

DROP TABLE IF EXISTS `met_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `met_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `met_payment` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `met_payment`
--

LOCK TABLES `met_payment` WRITE;
/*!40000 ALTER TABLE `met_payment` DISABLE KEYS */;
INSERT INTO `met_payment` VALUES (1,'Cash','Cash Payment'),(2,'Credit Card','Payment with Credit Card'),(3,'Debit Card','Payment with Debit Card'),(5,'Wire Transfer','Payment with Wire transfer'),(6,'Paypal','Paypal');
/*!40000 ALTER TABLE `met_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `author` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created` date NOT NULL DEFAULT '0000-00-00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (6,'Welcome to our Client Area!','&lt;p&gt;We are pleased to announce the new release DEPRIXA PRO v3.2.6.2&lt;br&gt;&lt;/p&gt;','Administrator','2019-02-02',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_off` varchar(100) DEFAULT NULL,
  `code_off` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone_off` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offices`
--

LOCK TABLES `offices` WRITE;
/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` VALUES (83,'OFFICE 3','AG1560','HELICVONIASD','fsdfsdf','55215'),(78,'OFFICE 1','AG1598','HELICONIAS','APARTADO','454544'),(82,'OFFICE 2','AG1599','HELICVONIASD','APARTADO','55215');
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packaging`
--

DROP TABLE IF EXISTS `packaging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packaging` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name_pack` varchar(120) DEFAULT NULL,
  `detail_pack` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packaging`
--

LOCK TABLES `packaging` WRITE;
/*!40000 ALTER TABLE `packaging` DISABLE KEYS */;
INSERT INTO `packaging` VALUES (12,'Paperboard boxes','Paperboard is a paper-based material that is lightweight, yet strong.'),(13,'Corrugated boxes','Corrugated boxes simply refer to what is commonly known as: Cardboard....'),(14,'Plastic boxes','Corrugated boxes simply refer to what is commonly known as: Cardboard.Plastic is used in a wide range of products, from spaceships to paper clips.'),(15,'Rigid boxes','A rigid box is made out of highly condensed paperboard that is 4 times thicker than the paperboard used in the construction of a standard folding carton.'),(16,'Chipboard packaging','Chipboard packaging is used in industries such as electronic, medical, food, cosmetic, and beverage.'),(17,'Poly bags','A poly bag, also known as a pouch or a plastic bag, is manufactured out of flexible, thin, plastic film fabric.'),(18,'Foil sealed bags','Foil sealed bags can be seen typically in most coffee and tea packaging.'),(20,'Container','Foil sealed bags can be seen typically in most coffee and tea packaging.'),(21,'Pallets','Foil sealed bags can be seen typically in most coffee and tea packaging.');
/*!40000 ALTER TABLE `packaging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(50) DEFAULT NULL,
  `c_nit` varchar(30) DEFAULT NULL,
  `c_phone` varchar(30) DEFAULT NULL,
  `cell_phone` varchar(30) DEFAULT NULL,
  `c_address` varchar(60) DEFAULT NULL,
  `c_country` varchar(60) DEFAULT NULL,
  `c_city` varchar(60) DEFAULT NULL,
  `c_postal` varchar(30) DEFAULT NULL,
  `site_email` varchar(40) DEFAULT NULL,
  `interms` text,
  `signing_customer` varchar(60) DEFAULT NULL,
  `signing_company` varchar(60) DEFAULT NULL,
  `site_url` varchar(200) DEFAULT NULL,
  `reg_allowed` tinyint(1) NOT NULL DEFAULT '1',
  `user_limit` tinyint(1) NOT NULL DEFAULT '0',
  `reg_verify` tinyint(1) NOT NULL DEFAULT '0',
  `notify_admin` tinyint(1) NOT NULL DEFAULT '0',
  `auto_verify` tinyint(1) NOT NULL DEFAULT '0',
  `account_paypal` varchar(60) DEFAULT NULL,
  `client_id` varchar(250) DEFAULT NULL,
  `user_perpage` varchar(4) NOT NULL DEFAULT '10',
  `thumb_w` varchar(4) NOT NULL,
  `thumb_h` varchar(4) NOT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `backup` varchar(60) DEFAULT NULL,
  `mailer` enum('PHP','SMTP') NOT NULL DEFAULT 'PHP',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(50) DEFAULT NULL,
  `smtp_pass` varchar(50) DEFAULT NULL,
  `smtp_port` varchar(6) DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(5) DEFAULT NULL,
  `prefix` varchar(6) DEFAULT NULL,
  `track_digit` varchar(15) DEFAULT NULL,
  `prefix_con` varchar(6) DEFAULT NULL,
  `track_container` varchar(12) DEFAULT NULL,
  `prefix_consolidate` varchar(6) DEFAULT NULL,
  `track_consolidate` varchar(12) DEFAULT NULL,
  `tax` varchar(4) DEFAULT NULL,
  `insurance` varchar(4) DEFAULT NULL,
  `value_weight` varchar(16) DEFAULT NULL,
  `meter` varchar(16) DEFAULT NULL,
  `c_value_pound` varchar(4) DEFAULT NULL,
  `c_add_pound` varchar(4) DEFAULT NULL,
  `c_handling` varchar(4) DEFAULT NULL,
  `c_fuel` varchar(4) DEFAULT NULL,
  `c_reexpedition` varchar(4) DEFAULT NULL,
  `c_logistic` varchar(4) DEFAULT NULL,
  `c_surcharges` varchar(4) DEFAULT NULL,
  `c_safe` varchar(4) DEFAULT NULL,
  `c_nationalization` varchar(4) DEFAULT NULL,
  `c_tariffs` varchar(4) DEFAULT NULL,
  `c_vat` varchar(4) DEFAULT NULL,
  `currency` varchar(120) NOT NULL,
  `timezone` varchar(120) NOT NULL,
  `language` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'DEPRIXA PRO','800124570-87','5782845147','57865985545','Avenue California 5A','Miami','Florida','1854212','support@jaom.info','ACCEPTED: This invoice complies with the requirements of article 774 of the commercial code modified by law 1231 of 2008 and therefore constitutes a security title. The person who signs declares to be duly authorized by the buyer to do so. The cancellation after the due date causes default interest at the current legal maximum rate.','Customer Signing','Company Signing','http://localhost/Deprixa_pro_v326.1',1,0,0,1,1,'osorio2380@yahoo.es','AZh1tcwI9IuTWqKlU_YV1fPDZ0HrXtRflE87FsI_kIpTPjItBSYewsMpKQeLB-PdukPKP0Pb_pIJJKKZ','0','200','200','logo.png','favicon.png','08-Feb-2019_21-26-47.sql','SMTP','n3plcpnl0258.prod.ams3.secureserver.net','sales@shipmentscript.com','xxxxxxxxx','465',1,'3.2.6','AWB','8','MSCU','8','COEE','8','19','5','3.25','5000','12','2.75','6','5','15','2','5','1.5','0.20','10','19','USD','America/Bogota','en');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ship_rate`
--

DROP TABLE IF EXISTS `ship_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ship_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `n_courier` varchar(255) DEFAULT NULL,
  `services` varchar(120) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `rate` varchar(10) DEFAULT NULL,
  `deli_time` varchar(120) DEFAULT NULL,
  `typeweight` varchar(120) DEFAULT NULL,
  `free_ship` varchar(120) DEFAULT NULL,
  `drop_off` varchar(120) DEFAULT NULL,
  `created` datetime NOT NULL,
  `brand` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship_rate`
--

LOCK TABLES `ship_rate` WRITE;
/*!40000 ALTER TABLE `ship_rate` DISABLE KEYS */;
INSERT INTO `ship_rate` VALUES (1,'UNITED STATES - Postal Service','USPS - Priority Mail','0.5','6.35','1 - 3 working days','lbs','Free Pickup','Drop-off','2018-08-04 23:53:10','AVT_BE778B-406FA7-1D5C38-B462B5-DBB8A8-1280CE.png'),(2,'UNITED STATES - Postal Service','USPS - First Class','2','3.18','2 - 5 working days','lbs','Free Pickup','Drop-off','2018-08-04 23:54:29','AVT_71EF42-B6C9E1-911929-371D01-F8C840-772FE7.png'),(3,'UNITED STATES - Postal Service','USPS - Parcel Select','15','6.55','3 - 7 working days','lbs','Free Pickup','Drop-off','2018-08-04 23:55:05','AVT_E390F7-5FB26C-1B0FD5-976D59-4DCAE9-ACFD51.png'),(4,'UNITED STATES - Postal Service','USPS - Priority Mail Express','210','21.98','1 - 3 working days','lbs','Free Pickup','Drop-off','2018-08-04 23:55:43','AVT_E3DA7B-271ADE-482DC9-AC3511-D24D54-FE7611.png');
/*!40000 ALTER TABLE `ship_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_line`
--

DROP TABLE IF EXISTS `shipping_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_line` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_line`
--

LOCK TABLES `shipping_line` WRITE;
/*!40000 ALTER TABLE `shipping_line` DISABLE KEYS */;
INSERT INTO `shipping_line` VALUES (1,'Atlantic Container Line','Freight forwarding - Atlantic Container Line'),(2,'American President Lines','Freight forwarding - American President Lines (APL)'),(3,'Atlantic Ro-Ro Carriers','Atlantic Ro-Ro Carriers'),(4,'China Shipping','Freight forwarding - China Shipping'),(5,'CMA CGM','Freight forwarding - CMA CGM Group'),(6,'Evergreen Marine Corp.','Freight forwarding - Evergreen Marine Corp (EMC)'),(7,'Fesco Transportation Group','FESCO Transportation Group'),(8,'Hanjin Shipping','Hanjin Shipping - Container Carrier'),(9,'Hamburg SÃ¼d Group','Hamburg SÃ¼d Group - Ocean Freight'),(10,'Hapag Lloyd','Freight forwarding - Hapag-Lloyd'),(11,'Maersk Sealand','Freight forwarding - Maersk Line'),(12,'MSC Mediterranean Shipping Company','Freight forwarding - Mediterranean Shipping Company'),(13,'OOCL Logistics','OOCL Vessel &amp; Rail Tracking'),(14,'Safmarine','Safmarine Container Lines'),(15,'Zim Integrated Shipping Services','Freight forwarding - ZIM Integrated Shipping Services'),(16,'Wallenius Lines','Freight forwarding - Wallenius Logistics');
/*!40000 ALTER TABLE `shipping_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_mode`
--

DROP TABLE IF EXISTS `shipping_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_mode` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_mode`
--

LOCK TABLES `shipping_mode` WRITE;
/*!40000 ALTER TABLE `shipping_mode` DISABLE KEYS */;
INSERT INTO `shipping_mode` VALUES (1,'Priority Mail Express','Priority Mail Express'),(2,'Priority Mail','Priority Mail ExpressPriority Mail'),(3,'Priority MailFirst-Class Mail','First-Class Mail'),(4,'International Economy','International Economy'),(5,'International Priority','International Priority'),(6,'Express Domestic','Express Domestic');
/*!40000 ALTER TABLE `shipping_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_templates`
--

DROP TABLE IF EXISTS `sms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_templates` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `help` text,
  `body1` text,
  `body2` text,
  `body3` text,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_templates`
--

LOCK TABLES `sms_templates` WRITE;
/*!40000 ALTER TABLE `sms_templates` DISABLE KEYS */;
INSERT INTO `sms_templates` VALUES (1,'Shipping notification','This template is used to notify the destination customer of your pending shipment','Deprixa Pro has sent you package, shipping number #','date of shipment','Check the status of your shipment, link:',1),(2,'Status update Courier','This template is used to notify the recipient of the status of the shipment','Your shipment has changed its status','new location','# shipping',1),(3,'Approval of the shipment','This template is used by the system administrator to approve managed shipments online','the reserved shipment on his dashboard was','delivery number','approved date',1),(16,'Notification paypal payments or credit cards','This template is used when the client wants to pay online and the incoming payment is notified by text message to the system administrator','Hi Admin !, you have a payment made by PAYPAL, total amount of','transaction date','Tracking #',1);
/*!40000 ALTER TABLE `sms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `styles`
--

DROP TABLE IF EXISTS `styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_style` varchar(200) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styles`
--

LOCK TABLES `styles` WRITE;
/*!40000 ALTER TABLE `styles` DISABLE KEYS */;
INSERT INTO `styles` VALUES (1,'Earring Collection','Earring Collection','#a3a3a3'),(2,'Received Office','Received Office','#74c22b'),(3,'In Transit','In Transit','#00e39a'),(4,'In warehouse','In warehouse','#ffe908'),(5,'Distribution','Distribution','#cd88ee'),(6,'Available','Available (only when is to be withdrawn at the offices)','#0ae4ff'),(7,'On route','On route for delivery (only when it is door to door)','#ff264f'),(8,'Delivered','Delivered','#43bd00'),(10,'Approved','Approved Booking','#ffa6a6'),(11,'Pending','Pending','#ff8e0d'),(12,'Rejected','Booking Online Cancelled','#ff0505');
/*!40000 ALTER TABLE `styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textsms`
--

DROP TABLE IF EXISTS `textsms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textsms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namesms` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `account_sid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `auth_token` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `twilio_number` varchar(120) DEFAULT NULL,
  `active_twi` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textsms`
--

LOCK TABLES `textsms` WRITE;
/*!40000 ALTER TABLE `textsms` DISABLE KEYS */;
INSERT INTO `textsms` VALUES (6,'Twilio','AC1357c40d3e37e016cbdf8df20106deba','701c6008343a2fd707c8cdbbc238f845','+13203378467',0);
/*!40000 ALTER TABLE `textsms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textsmsnexmo`
--

DROP TABLE IF EXISTS `textsmsnexmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textsmsnexmo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namesms` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `api_key` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `api_secret` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `nexmo_number` varchar(120) DEFAULT NULL,
  `active_nex` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textsmsnexmo`
--

LOCK TABLES `textsmsnexmo` WRITE;
/*!40000 ALTER TABLE `textsmsnexmo` DISABLE KEYS */;
INSERT INTO `textsmsnexmo` VALUES (6,'Nexmo','bb21885b','XPx2bNMsOIgNGcX6','+447449764031',0);
/*!40000 ALTER TABLE `textsmsnexmo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `transaction_amount` varchar(250) NOT NULL,
  `transaction_state` varchar(250) NOT NULL,
  `transaction_track` varchar(250) NOT NULL,
  `transaction_date` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `cookie_id` varchar(64) NOT NULL DEFAULT '0',
  `token` varchar(128) NOT NULL DEFAULT '0',
  `userlevel` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `email` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `avatar` varchar(60) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastip` varchar(16) DEFAULT NULL,
  `notes` text,
  `code_phone` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `enrollment` varchar(20) DEFAULT NULL,
  `vehiclecode` varchar(20) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `terms` varchar(120) DEFAULT NULL,
  `active` enum('y','n','b','t') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone` (
  `zone_id` int(10) NOT NULL AUTO_INCREMENT,
  `country_code` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `zone_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `idx_country_code` (`country_code`),
  KEY `idx_zone_name` (`zone_name`)
) ENGINE=MyISAM AUTO_INCREMENT=425 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES (1,'AD','Europe/Andorra'),(2,'AE','Asia/Dubai'),(3,'AF','Asia/Kabul'),(4,'AG','America/Antigua'),(5,'AI','America/Anguilla'),(6,'AL','Europe/Tirane'),(7,'AM','Asia/Yerevan'),(8,'AO','Africa/Luanda'),(9,'AQ','Antarctica/McMurdo'),(10,'AQ','Antarctica/Casey'),(11,'AQ','Antarctica/Davis'),(12,'AQ','Antarctica/DumontDUrville'),(13,'AQ','Antarctica/Mawson'),(14,'AQ','Antarctica/Palmer'),(15,'AQ','Antarctica/Rothera'),(16,'AQ','Antarctica/Syowa'),(17,'AQ','Antarctica/Troll'),(18,'AQ','Antarctica/Vostok'),(19,'AR','America/Argentina/Buenos_Aires'),(20,'AR','America/Argentina/Cordoba'),(21,'AR','America/Argentina/Salta'),(22,'AR','America/Argentina/Jujuy'),(23,'AR','America/Argentina/Tucuman'),(24,'AR','America/Argentina/Catamarca'),(25,'AR','America/Argentina/La_Rioja'),(26,'AR','America/Argentina/San_Juan'),(27,'AR','America/Argentina/Mendoza'),(28,'AR','America/Argentina/San_Luis'),(29,'AR','America/Argentina/Rio_Gallegos'),(30,'AR','America/Argentina/Ushuaia'),(31,'AS','Pacific/Pago_Pago'),(32,'AT','Europe/Vienna'),(33,'AU','Australia/Lord_Howe'),(34,'AU','Antarctica/Macquarie'),(35,'AU','Australia/Hobart'),(36,'AU','Australia/Currie'),(37,'AU','Australia/Melbourne'),(38,'AU','Australia/Sydney'),(39,'AU','Australia/Broken_Hill'),(40,'AU','Australia/Brisbane'),(41,'AU','Australia/Lindeman'),(42,'AU','Australia/Adelaide'),(43,'AU','Australia/Darwin'),(44,'AU','Australia/Perth'),(45,'AU','Australia/Eucla'),(46,'AW','America/Aruba'),(47,'AX','Europe/Mariehamn'),(48,'AZ','Asia/Baku'),(49,'BA','Europe/Sarajevo'),(50,'BB','America/Barbados'),(51,'BD','Asia/Dhaka'),(52,'BE','Europe/Brussels'),(53,'BF','Africa/Ouagadougou'),(54,'BG','Europe/Sofia'),(55,'BH','Asia/Bahrain'),(56,'BI','Africa/Bujumbura'),(57,'BJ','Africa/Porto-Novo'),(58,'BL','America/St_Barthelemy'),(59,'BM','Atlantic/Bermuda'),(60,'BN','Asia/Brunei'),(61,'BO','America/La_Paz'),(62,'BQ','America/Kralendijk'),(63,'BR','America/Noronha'),(64,'BR','America/Belem'),(65,'BR','America/Fortaleza'),(66,'BR','America/Recife'),(67,'BR','America/Araguaina'),(68,'BR','America/Maceio'),(69,'BR','America/Bahia'),(70,'BR','America/Sao_Paulo'),(71,'BR','America/Campo_Grande'),(72,'BR','America/Cuiaba'),(73,'BR','America/Santarem'),(74,'BR','America/Porto_Velho'),(75,'BR','America/Boa_Vista'),(76,'BR','America/Manaus'),(77,'BR','America/Eirunepe'),(78,'BR','America/Rio_Branco'),(79,'BS','America/Nassau'),(80,'BT','Asia/Thimphu'),(81,'BW','Africa/Gaborone'),(82,'BY','Europe/Minsk'),(83,'BZ','America/Belize'),(84,'CA','America/St_Johns'),(85,'CA','America/Halifax'),(86,'CA','America/Glace_Bay'),(87,'CA','America/Moncton'),(88,'CA','America/Goose_Bay'),(89,'CA','America/Blanc-Sablon'),(90,'CA','America/Toronto'),(91,'CA','America/Nipigon'),(92,'CA','America/Thunder_Bay'),(93,'CA','America/Iqaluit'),(94,'CA','America/Pangnirtung'),(95,'CA','America/Atikokan'),(96,'CA','America/Winnipeg'),(97,'CA','America/Rainy_River'),(98,'CA','America/Resolute'),(99,'CA','America/Rankin_Inlet'),(100,'CA','America/Regina'),(101,'CA','America/Swift_Current'),(102,'CA','America/Edmonton'),(103,'CA','America/Cambridge_Bay'),(104,'CA','America/Yellowknife'),(105,'CA','America/Inuvik'),(106,'CA','America/Creston'),(107,'CA','America/Dawson_Creek'),(108,'CA','America/Fort_Nelson'),(109,'CA','America/Vancouver'),(110,'CA','America/Whitehorse'),(111,'CA','America/Dawson'),(112,'CC','Indian/Cocos'),(113,'CD','Africa/Kinshasa'),(114,'CD','Africa/Lubumbashi'),(115,'CF','Africa/Bangui'),(116,'CG','Africa/Brazzaville'),(117,'CH','Europe/Zurich'),(118,'CI','Africa/Abidjan'),(119,'CK','Pacific/Rarotonga'),(120,'CL','America/Santiago'),(121,'CL','America/Punta_Arenas'),(122,'CL','Pacific/Easter'),(123,'CM','Africa/Douala'),(124,'CN','Asia/Shanghai'),(125,'CN','Asia/Urumqi'),(126,'CO','America/Bogota'),(127,'CR','America/Costa_Rica'),(128,'CU','America/Havana'),(129,'CV','Atlantic/Cape_Verde'),(130,'CW','America/Curacao'),(131,'CX','Indian/Christmas'),(132,'CY','Asia/Nicosia'),(133,'CY','Asia/Famagusta'),(134,'CZ','Europe/Prague'),(135,'DE','Europe/Berlin'),(136,'DE','Europe/Busingen'),(137,'DJ','Africa/Djibouti'),(138,'DK','Europe/Copenhagen'),(139,'DM','America/Dominica'),(140,'DO','America/Santo_Domingo'),(141,'DZ','Africa/Algiers'),(142,'EC','America/Guayaquil'),(143,'EC','Pacific/Galapagos'),(144,'EE','Europe/Tallinn'),(145,'EG','Africa/Cairo'),(146,'EH','Africa/El_Aaiun'),(147,'ER','Africa/Asmara'),(148,'ES','Europe/Madrid'),(149,'ES','Africa/Ceuta'),(150,'ES','Atlantic/Canary'),(151,'ET','Africa/Addis_Ababa'),(152,'FI','Europe/Helsinki'),(153,'FJ','Pacific/Fiji'),(154,'FK','Atlantic/Stanley'),(155,'FM','Pacific/Chuuk'),(156,'FM','Pacific/Pohnpei'),(157,'FM','Pacific/Kosrae'),(158,'FO','Atlantic/Faroe'),(159,'FR','Europe/Paris'),(160,'GA','Africa/Libreville'),(161,'GB','Europe/London'),(162,'GD','America/Grenada'),(163,'GE','Asia/Tbilisi'),(164,'GF','America/Cayenne'),(165,'GG','Europe/Guernsey'),(166,'GH','Africa/Accra'),(167,'GI','Europe/Gibraltar'),(168,'GL','America/Godthab'),(169,'GL','America/Danmarkshavn'),(170,'GL','America/Scoresbysund'),(171,'GL','America/Thule'),(172,'GM','Africa/Banjul'),(173,'GN','Africa/Conakry'),(174,'GP','America/Guadeloupe'),(175,'GQ','Africa/Malabo'),(176,'GR','Europe/Athens'),(177,'GS','Atlantic/South_Georgia'),(178,'GT','America/Guatemala'),(179,'GU','Pacific/Guam'),(180,'GW','Africa/Bissau'),(181,'GY','America/Guyana'),(182,'HK','Asia/Hong_Kong'),(183,'HN','America/Tegucigalpa'),(184,'HR','Europe/Zagreb'),(185,'HT','America/Port-au-Prince'),(186,'HU','Europe/Budapest'),(187,'ID','Asia/Jakarta'),(188,'ID','Asia/Pontianak'),(189,'ID','Asia/Makassar'),(190,'ID','Asia/Jayapura'),(191,'IE','Europe/Dublin'),(192,'IL','Asia/Jerusalem'),(193,'IM','Europe/Isle_of_Man'),(194,'IN','Asia/Kolkata'),(195,'IO','Indian/Chagos'),(196,'IQ','Asia/Baghdad'),(197,'IR','Asia/Tehran'),(198,'IS','Atlantic/Reykjavik'),(199,'IT','Europe/Rome'),(200,'JE','Europe/Jersey'),(201,'JM','America/Jamaica'),(202,'JO','Asia/Amman'),(203,'JP','Asia/Tokyo'),(204,'KE','Africa/Nairobi'),(205,'KG','Asia/Bishkek'),(206,'KH','Asia/Phnom_Penh'),(207,'KI','Pacific/Tarawa'),(208,'KI','Pacific/Enderbury'),(209,'KI','Pacific/Kiritimati'),(210,'KM','Indian/Comoro'),(211,'KN','America/St_Kitts'),(212,'KP','Asia/Pyongyang'),(213,'KR','Asia/Seoul'),(214,'KW','Asia/Kuwait'),(215,'KY','America/Cayman'),(216,'KZ','Asia/Almaty'),(217,'KZ','Asia/Qyzylorda'),(218,'KZ','Asia/Aqtobe'),(219,'KZ','Asia/Aqtau'),(220,'KZ','Asia/Atyrau'),(221,'KZ','Asia/Oral'),(222,'LA','Asia/Vientiane'),(223,'LB','Asia/Beirut'),(224,'LC','America/St_Lucia'),(225,'LI','Europe/Vaduz'),(226,'LK','Asia/Colombo'),(227,'LR','Africa/Monrovia'),(228,'LS','Africa/Maseru'),(229,'LT','Europe/Vilnius'),(230,'LU','Europe/Luxembourg'),(231,'LV','Europe/Riga'),(232,'LY','Africa/Tripoli'),(233,'MA','Africa/Casablanca'),(234,'MC','Europe/Monaco'),(235,'MD','Europe/Chisinau'),(236,'ME','Europe/Podgorica'),(237,'MF','America/Marigot'),(238,'MG','Indian/Antananarivo'),(239,'MH','Pacific/Majuro'),(240,'MH','Pacific/Kwajalein'),(241,'MK','Europe/Skopje'),(242,'ML','Africa/Bamako'),(243,'MM','Asia/Yangon'),(244,'MN','Asia/Ulaanbaatar'),(245,'MN','Asia/Hovd'),(246,'MN','Asia/Choibalsan'),(247,'MO','Asia/Macau'),(248,'MP','Pacific/Saipan'),(249,'MQ','America/Martinique'),(250,'MR','Africa/Nouakchott'),(251,'MS','America/Montserrat'),(252,'MT','Europe/Malta'),(253,'MU','Indian/Mauritius'),(254,'MV','Indian/Maldives'),(255,'MW','Africa/Blantyre'),(256,'MX','America/Mexico_City'),(257,'MX','America/Cancun'),(258,'MX','America/Merida'),(259,'MX','America/Monterrey'),(260,'MX','America/Matamoros'),(261,'MX','America/Mazatlan'),(262,'MX','America/Chihuahua'),(263,'MX','America/Ojinaga'),(264,'MX','America/Hermosillo'),(265,'MX','America/Tijuana'),(266,'MX','America/Bahia_Banderas'),(267,'MY','Asia/Kuala_Lumpur'),(268,'MY','Asia/Kuching'),(269,'MZ','Africa/Maputo'),(270,'NA','Africa/Windhoek'),(271,'NC','Pacific/Noumea'),(272,'NE','Africa/Niamey'),(273,'NF','Pacific/Norfolk'),(274,'NG','Africa/Lagos'),(275,'NI','America/Managua'),(276,'NL','Europe/Amsterdam'),(277,'NO','Europe/Oslo'),(278,'NP','Asia/Kathmandu'),(279,'NR','Pacific/Nauru'),(280,'NU','Pacific/Niue'),(281,'NZ','Pacific/Auckland'),(282,'NZ','Pacific/Chatham'),(283,'OM','Asia/Muscat'),(284,'PA','America/Panama'),(285,'PE','America/Lima'),(286,'PF','Pacific/Tahiti'),(287,'PF','Pacific/Marquesas'),(288,'PF','Pacific/Gambier'),(289,'PG','Pacific/Port_Moresby'),(290,'PG','Pacific/Bougainville'),(291,'PH','Asia/Manila'),(292,'PK','Asia/Karachi'),(293,'PL','Europe/Warsaw'),(294,'PM','America/Miquelon'),(295,'PN','Pacific/Pitcairn'),(296,'PR','America/Puerto_Rico'),(297,'PS','Asia/Gaza'),(298,'PS','Asia/Hebron'),(299,'PT','Europe/Lisbon'),(300,'PT','Atlantic/Madeira'),(301,'PT','Atlantic/Azores'),(302,'PW','Pacific/Palau'),(303,'PY','America/Asuncion'),(304,'QA','Asia/Qatar'),(305,'RE','Indian/Reunion'),(306,'RO','Europe/Bucharest'),(307,'RS','Europe/Belgrade'),(308,'RU','Europe/Kaliningrad'),(309,'RU','Europe/Moscow'),(310,'RU','Europe/Simferopol'),(311,'RU','Europe/Volgograd'),(312,'RU','Europe/Kirov'),(313,'RU','Europe/Astrakhan'),(314,'RU','Europe/Saratov'),(315,'RU','Europe/Ulyanovsk'),(316,'RU','Europe/Samara'),(317,'RU','Asia/Yekaterinburg'),(318,'RU','Asia/Omsk'),(319,'RU','Asia/Novosibirsk'),(320,'RU','Asia/Barnaul'),(321,'RU','Asia/Tomsk'),(322,'RU','Asia/Novokuznetsk'),(323,'RU','Asia/Krasnoyarsk'),(324,'RU','Asia/Irkutsk'),(325,'RU','Asia/Chita'),(326,'RU','Asia/Yakutsk'),(327,'RU','Asia/Khandyga'),(328,'RU','Asia/Vladivostok'),(329,'RU','Asia/Ust-Nera'),(330,'RU','Asia/Magadan'),(331,'RU','Asia/Sakhalin'),(332,'RU','Asia/Srednekolymsk'),(333,'RU','Asia/Kamchatka'),(334,'RU','Asia/Anadyr'),(335,'RW','Africa/Kigali'),(336,'SA','Asia/Riyadh'),(337,'SB','Pacific/Guadalcanal'),(338,'SC','Indian/Mahe'),(339,'SD','Africa/Khartoum'),(340,'SE','Europe/Stockholm'),(341,'SG','Asia/Singapore'),(342,'SH','Atlantic/St_Helena'),(343,'SI','Europe/Ljubljana'),(344,'SJ','Arctic/Longyearbyen'),(345,'SK','Europe/Bratislava'),(346,'SL','Africa/Freetown'),(347,'SM','Europe/San_Marino'),(348,'SN','Africa/Dakar'),(349,'SO','Africa/Mogadishu'),(350,'SR','America/Paramaribo'),(351,'SS','Africa/Juba'),(352,'ST','Africa/Sao_Tome'),(353,'SV','America/El_Salvador'),(354,'SX','America/Lower_Princes'),(355,'SY','Asia/Damascus'),(356,'SZ','Africa/Mbabane'),(357,'TC','America/Grand_Turk'),(358,'TD','Africa/Ndjamena'),(359,'TF','Indian/Kerguelen'),(360,'TG','Africa/Lome'),(361,'TH','Asia/Bangkok'),(362,'TJ','Asia/Dushanbe'),(363,'TK','Pacific/Fakaofo'),(364,'TL','Asia/Dili'),(365,'TM','Asia/Ashgabat'),(366,'TN','Africa/Tunis'),(367,'TO','Pacific/Tongatapu'),(368,'TR','Europe/Istanbul'),(369,'TT','America/Port_of_Spain'),(370,'TV','Pacific/Funafuti'),(371,'TW','Asia/Taipei'),(372,'TZ','Africa/Dar_es_Salaam'),(373,'UA','Europe/Kiev'),(374,'UA','Europe/Uzhgorod'),(375,'UA','Europe/Zaporozhye'),(376,'UG','Africa/Kampala'),(377,'UM','Pacific/Midway'),(378,'UM','Pacific/Wake'),(379,'US','America/New_York'),(380,'US','America/Detroit'),(381,'US','America/Kentucky/Louisville'),(382,'US','America/Kentucky/Monticello'),(383,'US','America/Indiana/Indianapolis'),(384,'US','America/Indiana/Vincennes'),(385,'US','America/Indiana/Winamac'),(386,'US','America/Indiana/Marengo'),(387,'US','America/Indiana/Petersburg'),(388,'US','America/Indiana/Vevay'),(389,'US','America/Chicago'),(390,'US','America/Indiana/Tell_City'),(391,'US','America/Indiana/Knox'),(392,'US','America/Menominee'),(393,'US','America/North_Dakota/Center'),(394,'US','America/North_Dakota/New_Salem'),(395,'US','America/North_Dakota/Beulah'),(396,'US','America/Denver'),(397,'US','America/Boise'),(398,'US','America/Phoenix'),(399,'US','America/Los_Angeles'),(400,'US','America/Anchorage'),(401,'US','America/Juneau'),(402,'US','America/Sitka'),(403,'US','America/Metlakatla'),(404,'US','America/Yakutat'),(405,'US','America/Nome'),(406,'US','America/Adak'),(407,'US','Pacific/Honolulu'),(408,'UY','America/Montevideo'),(409,'UZ','Asia/Samarkand'),(410,'UZ','Asia/Tashkent'),(411,'VA','Europe/Vatican'),(412,'VC','America/St_Vincent'),(413,'VE','America/Caracas'),(414,'VG','America/Tortola'),(415,'VI','America/St_Thomas'),(416,'VN','Asia/Ho_Chi_Minh'),(417,'VU','Pacific/Efate'),(418,'WF','Pacific/Wallis'),(419,'WS','Pacific/Apia'),(420,'YE','Asia/Aden'),(421,'YT','Indian/Mayotte'),(422,'ZA','Africa/Johannesburg'),(423,'ZM','Africa/Lusaka'),(424,'ZW','Africa/Harare');
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:03:17
