-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: letsbid
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
-- Table structure for table `add_bal`
--

DROP TABLE IF EXISTS `add_bal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_bal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usid` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `via` varchar(255) NOT NULL,
  `too` varchar(255) NOT NULL,
  `frm` varchar(255) NOT NULL,
  `trx` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_bal`
--

LOCK TABLES `add_bal` WRITE;
/*!40000 ALTER TABLE `add_bal` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_bal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid_bid`
--

DROP TABLE IF EXISTS `bid_bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bid_bid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `opid` varchar(20) NOT NULL,
  `winstatus` int(1) NOT NULL DEFAULT '0',
  `bidtm` varchar(25) NOT NULL,
  `gstat` int(1) NOT NULL DEFAULT '0',
  `bidaff` int(1) NOT NULL DEFAULT '0',
  `winaff` int(1) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid_bid`
--

LOCK TABLES `bid_bid` WRITE;
/*!40000 ALTER TABLE `bid_bid` DISABLE KEYS */;
/*!40000 ALTER TABLE `bid_bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid_game`
--

DROP TABLE IF EXISTS `bid_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bid_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `btext` blob NOT NULL,
  `op1` varchar(255) NOT NULL,
  `op2` varchar(255) NOT NULL,
  `op1s` varchar(255) NOT NULL DEFAULT '0',
  `op2s` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT '0',
  `winop` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid_game`
--

LOCK TABLES `bid_game` WRITE;
/*!40000 ALTER TABLE `bid_game` DISABLE KEYS */;
/*!40000 ALTER TABLE `bid_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_data`
--

DROP TABLE IF EXISTS `deposit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usid` int(11) DEFAULT NULL,
  `tm` varchar(255) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `track` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `amountus` varchar(255) DEFAULT NULL,
  `bcam` varchar(255) DEFAULT '0',
  `bcid` varchar(255) DEFAULT '0',
  `trx` varchar(255) DEFAULT NULL,
  `trx_ext` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_data`
--

LOCK TABLES `deposit_data` WRITE;
/*!40000 ALTER TABLE `deposit_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposit_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_method`
--

DROP TABLE IF EXISTS `deposit_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `minamo` varchar(255) DEFAULT NULL,
  `maxamo` varchar(255) DEFAULT NULL,
  `charged` varchar(255) DEFAULT NULL,
  `chargep` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `val1` varchar(255) DEFAULT NULL,
  `val2` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_method`
--

LOCK TABLES `deposit_method` WRITE;
/*!40000 ALTER TABLE `deposit_method` DISABLE KEYS */;
INSERT INTO `deposit_method` VALUES (1,'PayPal','10','1000','0.3','3','1','rexrifat636@gmail.com','rexrifat636@gmail.com',1),(2,'Perfect Money','20','20000','2','1','1','U55151515','reg4e54h1grt1j',1),(3,'BitCoin','10','20000','1','0.5','1','API2','XPUB1',1),(4,'Credit Card','10','50000','3','3','1','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu',1);
/*!40000 ALTER TABLE `deposit_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_setting`
--

DROP TABLE IF EXISTS `general_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(255) DEFAULT NULL,
  `txt1` blob,
  `txt2` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_setting`
--

LOCK TABLES `general_setting` WRITE;
/*!40000 ALTER TABLE `general_setting` DISABLE KEYS */;
INSERT INTO `general_setting` VALUES (1,'Lets-BID',_binary 'ALL ABOUT THE WEBSITES AND GAMES ARE GOES HERE..',_binary 'Live Online Betting, Live Cricket Betting, Live Football Betting, Live Online Game\'s Betting, Live Ball Trade Game, Live Head & Tail And Many More..');
/*!40000 ALTER TABLE `general_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `head_tail`
--

DROP TABLE IF EXISTS `head_tail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `head_tail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `bidon` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `winstat` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `head_tail`
--

LOCK TABLES `head_tail` WRITE;
/*!40000 ALTER TABLE `head_tail` DISABLE KEYS */;
INSERT INTO `head_tail` VALUES (1,'2','HEAD','20',1),(2,'2','HEAD','20',0),(3,'2','HEAD','20',1),(4,'2','HEAD','20',0),(5,'2','HEAD','20',1),(6,'2','HEAD','20',0),(7,'2','HEAD','20',0);
/*!40000 ALTER TABLE `head_tail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_txt`
--

DROP TABLE IF EXISTS `home_txt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_txt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `h` varchar(255) DEFAULT NULL,
  `sh` varchar(255) DEFAULT NULL,
  `dt` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_txt`
--

LOCK TABLES `home_txt` WRITE;
/*!40000 ALTER TABLE `home_txt` DISABLE KEYS */;
INSERT INTO `home_txt` VALUES (1,'HEADS AND TAILS','Live Head & Tails Game.',_binary 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta, quod debitis nihil numquam. Sapiente, ut.'),(2,'SEVEN TRADE BALL','9 Ball\'s Thousand\'s Bidder',_binary 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta, quod debitis nihil numquam. Sapiente, ut.'),(3,'GAMES BETTING','Live Cricket Betting, Live Soccer Betting, And Other\'s....',_binary 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta, quod debitis nihil numquam. Sapiente, ut.');
/*!40000 ALTER TABLE `home_txt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seventrade_bid`
--

DROP TABLE IF EXISTS `seventrade_bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seventrade_bid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `ballid` varchar(20) NOT NULL,
  `winstatus` int(1) NOT NULL DEFAULT '0',
  `bidtm` varchar(25) NOT NULL,
  `rewin` int(1) NOT NULL DEFAULT '0',
  `gstat` int(1) NOT NULL DEFAULT '0',
  `bidaff` int(1) NOT NULL DEFAULT '0',
  `winaff` int(1) NOT NULL DEFAULT '0',
  `rtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seventrade_bid`
--

LOCK TABLES `seventrade_bid` WRITE;
/*!40000 ALTER TABLE `seventrade_bid` DISABLE KEYS */;
/*!40000 ALTER TABLE `seventrade_bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seventrade_game`
--

DROP TABLE IF EXISTS `seventrade_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seventrade_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(20) NOT NULL,
  `shuru` varchar(20) NOT NULL,
  `sesh` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  `winball` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seventrade_game`
--

LOCK TABLES `seventrade_game` WRITE;
/*!40000 ALTER TABLE `seventrade_game` DISABLE KEYS */;
/*!40000 ALTER TABLE `seventrade_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_home`
--

DROP TABLE IF EXISTS `slider_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `btxt` varchar(255) DEFAULT NULL,
  `stxt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_home`
--

LOCK TABLES `slider_home` WRITE;
/*!40000 ALTER TABLE `slider_home` DISABLE KEYS */;
INSERT INTO `slider_home` VALUES (6,'1499183144.jpg','BEST ONLINE BETTING HERE','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sint delectus numquam deserunt corrupti consectetur as'),(7,'1499183169.jpg','LIVE ONLINE BETTING GAME','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium sint delectus numquam deserunt corrupti consectetur as');
/*!40000 ALTER TABLE `slider_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_history`
--

DROP TABLE IF EXISTS `trx_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trx_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usid` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `sig` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `tm` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_history`
--

LOCK TABLES `trx_history` WRITE;
/*!40000 ALTER TABLE `trx_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `ref` int(11) NOT NULL DEFAULT '1',
  `mallu` varchar(20) NOT NULL DEFAULT '0',
  `sid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abirkhan75','ABIR KHAN','c3c21805b342901ec009ca995efaae16','abirkhaan75@gmail.com','8801737042794','Bangladesh',1,'0','a8c5e551dfd4366bc4bcf3bedba9205b'),(2,'controller','','594c103f2c6e04c3d8ab059f031e0c1a','abirkhaan.75@gmail.com','controller','Bangladesh',1,'540','20925282844136917a0cf74f9dd52044');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd_bal`
--

DROP TABLE IF EXISTS `wd_bal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd_bal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usid` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `via` varchar(255) NOT NULL,
  `too` varchar(255) NOT NULL,
  `frm` varchar(255) NOT NULL,
  `trx` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd_bal`
--

LOCK TABLES `wd_bal` WRITE;
/*!40000 ALTER TABLE `wd_bal` DISABLE KEYS */;
/*!40000 ALTER TABLE `wd_bal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:07:47
