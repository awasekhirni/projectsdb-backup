-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: tradeone
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
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(20) NOT NULL,
  `total_refered` varchar(20) NOT NULL DEFAULT '0',
  `total_activated` varchar(20) DEFAULT '0',
  `earnings` varchar(20) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `agent` (`agent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balances`
--

DROP TABLE IF EXISTS `balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `wallet` varchar(20) DEFAULT NULL,
  `balance` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balances`
--

LOCK TABLES `balances` WRITE;
/*!40000 ALTER TABLE `balances` DISABLE KEYS */;
/*!40000 ALTER TABLE `balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_transactions`
--

DROP TABLE IF EXISTS `cp_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cp_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `amount_paid` varchar(100) DEFAULT NULL,
  `user_plan` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `user_tele_id` varchar(200) DEFAULT NULL,
  `amount1` varchar(100) DEFAULT NULL,
  `amount2` varchar(100) DEFAULT NULL,
  `currency1` varchar(100) DEFAULT NULL,
  `currency2` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_text` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cp_p_key` varchar(255) DEFAULT NULL,
  `cp_pv_key` varchar(255) DEFAULT NULL,
  `cp_m_id` varchar(255) DEFAULT NULL,
  `cp_ipn_secret` varchar(255) DEFAULT NULL,
  `cp_debug_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=565 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_transactions`
--

LOCK TABLES `cp_transactions` WRITE;
/*!40000 ALTER TABLE `cp_transactions` DISABLE KEYS */;
INSERT INTO `cp_transactions` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'2018-08-05 00:00:00','2020-01-09 22:23:42','aa3f6948307c4fc318be48571d0f33603f9479d9e084ab9eee0601eeb25b09ad','d57F069303fFDa7a88A6Ba121E7bFd19C4026Fcb789c874D04190773873E80Df','6c0ec8a4a9fc05cc6843418cbdd5c08e','lpskjkviim94','khjhjhj@jhj.jd');
/*!40000 ALTER TABLE `cp_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(200) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `plan` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_packs`
--

DROP TABLE IF EXISTS `investment_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment_packs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `cur_1` varchar(50) DEFAULT NULL,
  `cur_2` varchar(50) DEFAULT NULL,
  `cur_3` varchar(50) DEFAULT NULL,
  `cur_4` varchar(50) DEFAULT NULL,
  `cur_5` varchar(50) DEFAULT NULL,
  `cur_6` varchar(50) DEFAULT NULL,
  `cur_7` varchar(50) DEFAULT NULL,
  `cur_8` varchar(50) DEFAULT NULL,
  `cur_9` varchar(50) DEFAULT NULL,
  `cur_10` varchar(50) DEFAULT NULL,
  `cur_11` varchar(50) DEFAULT NULL,
  `cur_12` varchar(50) DEFAULT NULL,
  `cur_13` varchar(50) DEFAULT NULL,
  `cur_14` varchar(50) DEFAULT NULL,
  `cur_15` varchar(50) DEFAULT NULL,
  `cur_16` varchar(50) DEFAULT NULL,
  `cur_17` varchar(50) DEFAULT NULL,
  `cur_18` varchar(50) DEFAULT NULL,
  `cur_19` varchar(50) DEFAULT NULL,
  `cur_20` varchar(50) DEFAULT NULL,
  `cur_21` varchar(50) DEFAULT NULL,
  `share_1` varchar(50) DEFAULT '0',
  `share_2` varchar(50) DEFAULT '0',
  `share_3` varchar(50) DEFAULT '0',
  `share_4` varchar(50) DEFAULT '0',
  `share_5` varchar(50) DEFAULT '0',
  `share_6` varchar(50) DEFAULT '0',
  `share_7` varchar(50) DEFAULT '0',
  `share_8` varchar(50) DEFAULT '0',
  `share_9` varchar(50) DEFAULT '0',
  `share_10` varchar(50) DEFAULT '0',
  `share_11` varchar(50) DEFAULT '0',
  `share_12` varchar(50) DEFAULT '0',
  `share_13` varchar(50) DEFAULT '0',
  `share_14` varchar(50) DEFAULT '0',
  `share_15` varchar(50) DEFAULT '0',
  `share_16` varchar(50) DEFAULT '0',
  `share_17` varchar(50) DEFAULT '0',
  `share_18` varchar(50) DEFAULT '0',
  `share_19` varchar(50) DEFAULT '0',
  `share_20` varchar(50) DEFAULT '0',
  `share_21` varchar(50) DEFAULT '0',
  `duration` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_packs`
--

LOCK TABLES `investment_packs` WRITE;
/*!40000 ALTER TABLE `investment_packs` DISABLE KEYS */;
/*!40000 ALTER TABLE `investment_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investments`
--

DROP TABLE IF EXISTS `investments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  `asset` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `open_price` varchar(50) DEFAULT NULL,
  `close_price` varchar(50) DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `p_l` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `pack_id` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investments`
--

LOCK TABLES `investments` WRITE;
/*!40000 ALTER TABLE `investments` DISABLE KEYS */;
/*!40000 ALTER TABLE `investments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markets`
--

DROP TABLE IF EXISTS `markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market` varchar(50) DEFAULT NULL,
  `base_curr` varchar(50) DEFAULT NULL,
  `quote_curr` varchar(50) DEFAULT NULL,
  `current_pair` varchar(50) DEFAULT NULL,
  `default_mark` varchar(50) DEFAULT NULL,
  `commission_type` varchar(50) DEFAULT NULL,
  `commission_fee` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markets`
--

LOCK TABLES `markets` WRITE;
/*!40000 ALTER TABLE `markets` DISABLE KEYS */;
/*!40000 ALTER TABLE `markets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt4details`
--

DROP TABLE IF EXISTS `mt4details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt4details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(255) DEFAULT NULL,
  `mt4_id` varchar(255) DEFAULT NULL,
  `mt4_password` varchar(200) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `leverage` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt4details`
--

LOCK TABLES `mt4details` WRITE;
/*!40000 ALTER TABLE `mt4details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt4details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL,
  `message` text,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `base_c` varchar(20) DEFAULT NULL,
  `quote_c` varchar(20) DEFAULT NULL,
  `base_amount` varchar(50) DEFAULT NULL,
  `quote_amount` varchar(50) DEFAULT NULL,
  `closed_amount` varchar(50) DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('Rejoice2017@gmail.com','1a637489097377dbf21c8a7a7ba973d63a25f2f4ef2c483edb62f104a2182f1c','2017-02-26 23:29:47'),('rialebrume@gmail.com','d53c6a25865107ac7400f22436e6d37da6721bcdd36e9a67b86afee9c9fc9b7d','2017-03-09 18:19:02'),('dynamixng@gmail.com','$2y$10$nel4xzM2Dvii86czm4YQxuH0nzdDUximHJM3QVkkkRmky1C.48GRy','2018-08-14 12:44:33'),('test123@happ.com','$2y$10$Ue8EEVYbIRIRA0EA7o1aJ.h.K5MZLyip4ZMuiSpbxsq3xUp0DN.cu','2018-09-11 06:22:04'),('humble5y@gmail.com','$2y$10$IM0FlP6UaB7N1rTdGgo04elJiex9bdHYXc2K3IaLWSduq99zTUr3O','2018-09-15 22:48:32'),('ranawaseemsajid@outlook.com','$2y$10$VRnunT6BauJemm2mKqp/N.yXb8C5HHOJGnBOSZYdyAj1otmP.y1Ru','2018-09-25 21:53:33'),('test1234@happ.com','$2y$10$.rvGmEIKCMxwCTMW2Ftlcec77Lv1hUjz/qH/aGdS4tbRVmQKzhVqS','2018-10-11 08:58:43'),('johnsteiner530@gmail.com','$2y$10$V5QsjmZUSymjpNSTIfMTluwTn4bBKE34hKQSu7NZ58unUHRQganH6','2019-10-17 12:03:31');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `w_limit` varchar(50) DEFAULT NULL,
  `price` varchar(20) NOT NULL,
  `min_price` varchar(20) DEFAULT NULL,
  `max_price` varchar(20) DEFAULT NULL,
  `minr` varchar(50) NOT NULL,
  `maxr` varchar(50) NOT NULL,
  `gift` varchar(50) NOT NULL,
  `expected_return` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `increment_interval` varchar(20) NOT NULL,
  `increment_type` varchar(20) NOT NULL,
  `increment_amount` varchar(20) DEFAULT NULL,
  `expiration` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (23,'Starter','100','5000','5000','5000','500','1000','50','1000','Main','2019-11-20 21:29:06','2019-12-10 10:51:37','Weekly','Percentage','5','One week'),(24,'Premium','300','1000','200','3000','322','353','444','20','Main','2019-11-22 00:44:46','2019-12-10 10:55:51','Daily','Percentage','5','Three months');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `description` text,
  `total_investors` int(50) NOT NULL DEFAULT '0',
  `active_investors` int(50) NOT NULL DEFAULT '0',
  `contracted_companies` int(50) NOT NULL DEFAULT '0',
  `currency` varchar(100) NOT NULL,
  `s_currency` varchar(20) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `eth_address` varchar(200) DEFAULT NULL,
  `btc_address` varchar(200) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `s_s_k` varchar(200) DEFAULT NULL,
  `s_p_k` varchar(200) DEFAULT NULL,
  `pp_cs` varchar(200) DEFAULT NULL,
  `pp_ci` varchar(200) DEFAULT NULL,
  `keywords` varchar(255) NOT NULL,
  `site_title` varchar(100) NOT NULL,
  `site_address` varchar(100) NOT NULL,
  `bot_link` varchar(200) DEFAULT NULL,
  `logo` varchar(200) NOT NULL,
  `trade_mode` varchar(20) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `referral_commission` varchar(20) DEFAULT NULL,
  `referral_commission1` varchar(10) DEFAULT NULL,
  `referral_commission2` varchar(10) DEFAULT NULL,
  `referral_commission3` varchar(10) DEFAULT NULL,
  `referral_commission4` varchar(10) DEFAULT NULL,
  `referral_commission5` varchar(10) DEFAULT NULL,
  `signup_bonus` varchar(20) DEFAULT NULL,
  `files_key` varchar(50) DEFAULT NULL,
  `tawk_to` text,
  `enable_2fa` varchar(20) NOT NULL DEFAULT 'no',
  `enable_kyc` varchar(20) NOT NULL DEFAULT 'no',
  `enable_verification` varchar(255) NOT NULL DEFAULT 'true',
  `withdrawal_option` varchar(20) NOT NULL DEFAULT 'auto',
  `dashboard_option` varchar(20) DEFAULT NULL,
  `site_preference` varchar(20) DEFAULT NULL,
  `bot_activate` varchar(20) DEFAULT NULL,
  `telegram_token` varchar(255) DEFAULT NULL,
  `bot_group_chat` varchar(200) DEFAULT NULL,
  `bot_channel` varchar(200) DEFAULT NULL,
  `site_colour` varchar(50) DEFAULT NULL,
  `commission_type` varchar(50) DEFAULT NULL,
  `commission_fee` varchar(50) DEFAULT NULL,
  `monthlyfee` varchar(50) DEFAULT NULL,
  `quaterlyfee` varchar(50) DEFAULT NULL,
  `yearlyfee` varchar(50) DEFAULT NULL,
  `update` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Online Trade','Dreams can only be succeeded if you work towards them. Even building wealth is no different. Online Trade is here to provide a fast lane of online investment,  risk management and advisory services to both institutional and individual investor around the globe as we are',7763,3001,5,'$','USD','First International Bank PLC','Admin Account name','2123343493659',NULL,NULL,NULL,'123456','sk_test_BQokikJOvBiI2HlWgH4olfQ2','pk_test_6pRNASCoBOKtIshFeQd4XMUh',NULL,NULL,'make money online, portfolio management stock, forex, cryptocurrency me pooo','Create your investment management platform in minutes and 3 seconds','yoursiteurl.com/trade','https://t.me/onlinetradeofficialbotdd','','off','Support@onlinetrade.com','2.53','23','1.73','1.23','13','0.53','203','OT_TItUA','hbhlhahihlhlhuAJHO347T8UGQ0U[I9ghp','no','yes','false','manual','Online Trade','Web dashboard only','false','jhlhgohghgoygynouyoq','https://t.me/joinchat/IXw1_UrqB788hd-9Qff','https://t.me/OT_Official_channeldd','default','Percentage','3','40','60','80','It can only get better with our Trading Platform or with any other platform','2017-02-27 01:10:03','2020-04-03 09:34:58','Test');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_transactions`
--

DROP TABLE IF EXISTS `tp_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tp_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_transactions`
--

LOCK TABLES `tp_transactions` WRITE;
/*!40000 ALTER TABLE `tp_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_packs`
--

DROP TABLE IF EXISTS `user_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_packs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  `investment_pack` varchar(50) DEFAULT NULL,
  `p_l` varchar(50) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `open_price_1` varchar(50) DEFAULT NULL,
  `close_price_1` varchar(50) DEFAULT NULL,
  `open_price_2` varchar(50) DEFAULT NULL,
  `close_price_2` varchar(50) DEFAULT NULL,
  `open_price_3` varchar(50) DEFAULT NULL,
  `close_price_3` varchar(50) DEFAULT NULL,
  `open_price_4` varchar(50) DEFAULT NULL,
  `close_price_4` varchar(50) DEFAULT NULL,
  `open_price_5` varchar(50) DEFAULT NULL,
  `close_price_5` varchar(50) DEFAULT NULL,
  `open_price_6` varchar(50) DEFAULT NULL,
  `close_price_6` varchar(50) DEFAULT NULL,
  `open_price_7` varchar(50) DEFAULT NULL,
  `close_price_7` varchar(50) DEFAULT NULL,
  `open_price_8` varchar(50) DEFAULT NULL,
  `close_price_8` varchar(50) DEFAULT NULL,
  `open_price_9` varchar(50) DEFAULT NULL,
  `close_price_9` varchar(50) DEFAULT NULL,
  `open_price_10` varchar(50) DEFAULT NULL,
  `close_price_10` varchar(50) DEFAULT NULL,
  `open_price_11` varchar(50) DEFAULT NULL,
  `close_price_11` varchar(50) DEFAULT NULL,
  `open_price_12` varchar(50) DEFAULT NULL,
  `close_price_12` varchar(50) DEFAULT NULL,
  `open_price_13` varchar(50) DEFAULT NULL,
  `close_price_13` varchar(50) DEFAULT NULL,
  `open_price_14` varchar(50) DEFAULT NULL,
  `close_price_14` varchar(50) DEFAULT NULL,
  `open_price_15` varchar(50) DEFAULT NULL,
  `close_price_15` varchar(50) DEFAULT NULL,
  `open_price_16` varchar(50) DEFAULT NULL,
  `close_price_16` varchar(50) DEFAULT NULL,
  `open_price_17` varchar(50) DEFAULT NULL,
  `close_price_17` varchar(50) DEFAULT NULL,
  `open_price_18` varchar(50) DEFAULT NULL,
  `close_price_18` varchar(50) DEFAULT NULL,
  `open_price_19` varchar(50) DEFAULT NULL,
  `close_price_19` varchar(50) DEFAULT NULL,
  `open_price_20` varchar(50) DEFAULT NULL,
  `close_price_20` varchar(50) DEFAULT NULL,
  `open_price_21` varchar(50) DEFAULT NULL,
  `close_price_21` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `closed_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_packs`
--

LOCK TABLES `user_packs` WRITE;
/*!40000 ALTER TABLE `user_packs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plans`
--

DROP TABLE IF EXISTS `user_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan` varchar(20) DEFAULT NULL,
  `w_limit` varchar(50) DEFAULT NULL,
  `amount` varchar(20) DEFAULT '0',
  `user` varchar(20) DEFAULT NULL,
  `active` varchar(20) DEFAULT NULL,
  `inv_duration` varchar(50) DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plans`
--

LOCK TABLES `user_plans` WRITE;
/*!40000 ALTER TABLE `user_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogs`
--

DROP TABLE IF EXISTS `userlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(20) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogs`
--

LOCK TABLES `userlogs` WRITE;
/*!40000 ALTER TABLE `userlogs` DISABLE KEYS */;
INSERT INTO `userlogs` VALUES (1,1,'127.0.0.1','login','2019-11-27 20:45:09','2019-11-27 20:45:09'),(2,1,'127.0.0.1','login','2019-11-27 21:56:54','2019-11-27 21:56:54'),(4,10,'127.0.0.1','login','2019-11-27 22:16:34','2019-11-27 22:16:34'),(5,NULL,'127.0.0.1','Register','2019-11-27 22:17:59','2019-11-27 22:17:59'),(6,NULL,'127.0.0.1','Register','2019-11-27 22:18:48','2019-11-27 22:18:48'),(7,NULL,'127.0.0.1','Register','2019-11-27 23:24:46','2019-11-27 23:24:46'),(8,15,'127.0.0.1','Register','2019-11-28 01:42:45','2019-11-28 01:42:45'),(9,16,'127.0.0.1','Register','2019-11-28 01:44:09','2019-11-28 01:44:09'),(10,1,'127.0.0.1','login','2019-11-28 17:22:11','2019-11-28 17:22:11'),(11,8,'127.0.0.1','login','2019-11-28 18:36:36','2019-11-28 18:36:36'),(12,1,'127.0.0.1','login','2019-11-28 22:05:00','2019-11-28 22:05:00'),(13,8,'127.0.0.1','login','2019-12-02 17:45:59','2019-12-02 17:45:59'),(14,1,'127.0.0.1','login','2019-12-02 17:47:59','2019-12-02 17:47:59'),(15,8,'127.0.0.1','login','2019-12-02 22:29:35','2019-12-02 22:29:35'),(16,1,'127.0.0.1','login','2019-12-02 22:41:09','2019-12-02 22:41:09'),(17,1,'127.0.0.1','login','2019-12-03 00:58:56','2019-12-03 00:58:56'),(18,1,'127.0.0.1','login','2019-12-03 17:23:26','2019-12-03 17:23:26'),(19,1,'127.0.0.1','login','2019-12-03 23:04:24','2019-12-03 23:04:24'),(20,8,'127.0.0.1','login','2019-12-03 23:24:33','2019-12-03 23:24:33'),(21,8,'127.0.0.1','login','2019-12-04 00:43:41','2019-12-04 00:43:41'),(22,8,'127.0.0.1','login','2019-12-04 01:11:05','2019-12-04 01:11:05'),(23,8,'127.0.0.1','login','2019-12-04 17:35:59','2019-12-04 17:35:59'),(24,1,'127.0.0.1','login','2019-12-04 17:37:26','2019-12-04 17:37:26'),(25,8,'127.0.0.1','login','2019-12-06 01:15:49','2019-12-06 01:15:49'),(26,8,'127.0.0.1','login','2019-12-06 17:53:29','2019-12-06 17:53:29'),(27,8,'127.0.0.1','login','2019-12-06 20:21:45','2019-12-06 20:21:45'),(28,1,'127.0.0.1','login','2019-12-07 00:20:35','2019-12-07 00:20:35'),(29,8,'127.0.0.1','login','2019-12-07 01:02:42','2019-12-07 01:02:42'),(30,1,'127.0.0.1','login','2019-12-07 16:58:46','2019-12-07 16:58:46'),(31,1,'127.0.0.1','login','2019-12-13 00:14:13','2019-12-13 00:14:13');
/*!40000 ALTER TABLE `userlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tele_id` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `adress` text,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `areacode` varchar(50) DEFAULT NULL,
  `token_2fa` varchar(255) DEFAULT NULL,
  `token_2fa_expiry` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `dashboard_style` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_no` varchar(50) DEFAULT NULL,
  `btc_address` varchar(255) DEFAULT NULL,
  `eth_address` varchar(255) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `plan` varchar(25) DEFAULT '0',
  `user_plan` varchar(20) DEFAULT NULL,
  `promo_plan` varchar(20) NOT NULL DEFAULT '0',
  `confirmed_plan` varchar(25) DEFAULT '0',
  `inv_duration` varchar(100) DEFAULT NULL,
  `account_bal` varchar(20) NOT NULL DEFAULT '0',
  `roi` varchar(50) NOT NULL DEFAULT '0',
  `bonus` varchar(50) DEFAULT NULL,
  `ref_bonus` varchar(20) NOT NULL DEFAULT '0',
  `signup_bonus` varchar(20) DEFAULT NULL,
  `bonus_released` varchar(20) NOT NULL DEFAULT '0',
  `ref_by` varchar(20) DEFAULT NULL,
  `ref_link` varchar(100) DEFAULT NULL,
  `bot_ref_link` varchar(200) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `account_verify` varchar(20) DEFAULT NULL,
  `entered_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT 'active',
  `act_session` varchar(255) DEFAULT NULL,
  `trade_mode` varchar(20) NOT NULL DEFAULT 'on',
  `type` varchar(25) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`,`email`),
  FULLTEXT KEY `name_2` (`name`,`l_name`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'Admin ','Test',NULL,NULL,'test123@happ.com','0985678999','','93669','2020-04-03 10:46:30',NULL,'light','$2y$10$4sYtScImx93NShw8jNzqW.yMvqHHolSjjYJHpjUI7ZZ96TClaDYHC','bgUO4m4ENTzWg2J1RM1f8VCxl3ZSHGOIENg4KhD0VLfa83i08zuUtKzv7vsW',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,'0','0',NULL,'825.0683705707233','10','10','25','received','0',NULL,'alphalogicsystem.com/ref/1',NULL,'new update.png','new update.png','yes',NULL,NULL,NULL,'active',NULL,'on','1','2019-11-08 14:54:06','2020-04-03 10:46:30'),(18,NULL,'BS Test','Test',NULL,NULL,'test1234@happ.com','087656789876',NULL,NULL,'2020-04-03 09:26:27',NULL,'light','$2y$10$IbzDWmkyEh2C4z1uUh5O1.GfO46fiuwNxEU55GGyES/8a5DkCKCjS','nv3Pj60v3AfxkdZ1ESAYxAYQMme1j9LgAv58hKzh7rsGeM4p46Xu70uY7nyB',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,'0','0',NULL,'3165.696938495491','1000','183','0','received','0',NULL,'yoursiteurl.com/trade/ref/18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active','J6O6fR3NjswzzJD9MDuP649pWorIxcSTdkNbVR4W','on','0','2020-01-24 10:29:31','2020-04-03 09:39:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wdmethods`
--

DROP TABLE IF EXISTS `wdmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wdmethods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `minimum` varchar(50) NOT NULL,
  `maximum` varchar(50) NOT NULL,
  `charges_fixed` varchar(50) NOT NULL,
  `charges_percentage` varchar(50) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wdmethods`
--

LOCK TABLES `wdmethods` WRITE;
/*!40000 ALTER TABLE `wdmethods` DISABLE KEYS */;
INSERT INTO `wdmethods` VALUES (1,'Bitcoin','10','20000','2','2','instant','withdrawal','enabled','2019-11-09 09:05:00','2019-11-09 09:05:23'),(2,'Ethereum','5','10000','2','2','instant','withdrawal','enabled','2019-11-09 09:11:21','2019-11-09 09:11:21'),(5,'Bank transfer','100','100000','2','2','2 working days','withdrawal','enabled','2019-11-09 11:36:37','2019-11-09 11:36:37'),(4,'Litecoin','10','2','4000','2','2','withdrawal','enabled','2019-11-09 11:35:35','2019-11-09 11:35:35'),(6,'Credit Card','10','100000','2','2','2 working days','withdrawal','enabled','2019-12-11 18:51:04','2019-12-11 18:51:04');
/*!40000 ALTER TABLE `wdmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(200) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `to_deduct` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawals`
--

LOCK TABLES `withdrawals` WRITE;
/*!40000 ALTER TABLE `withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:15:11
