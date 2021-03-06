-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: onecommercedb
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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','','','admin','$2y$10$5utF9MpBgXKcMGJ7c2gBBeFscqGULMTF0xvVda/BkQoLz8BC0hUGK','fUDLChXMo7yOxxtrXZTIK488WFuZcILPc2G1kEON7jTL04y0ZTFbiIiTGTUa',NULL,'2018-11-10 08:15:21');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `views` int(11) NOT NULL DEFAULT '0',
  `impression` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_coupons`
--

DROP TABLE IF EXISTS `cart_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) DEFAULT NULL,
  `coupon_fixed` decimal(11,2) DEFAULT NULL,
  `coupon_percentage` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_coupons`
--

LOCK TABLES `cart_coupons` WRITE;
/*!40000 ALTER TABLE `cart_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `cart_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `current_price` decimal(11,2) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` int(3) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_type` varchar(30) DEFAULT NULL,
  `coupon_amount` decimal(11,2) DEFAULT NULL,
  `coupon_min_amount` decimal(11,2) DEFAULT NULL,
  `valid_till` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_requests`
--

DROP TABLE IF EXISTS `deposit_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `usd_amo` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `accepted` int(3) DEFAULT '0',
  `r_img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_requests`
--

LOCK TABLES `deposit_requests` WRITE;
/*!40000 ALTER TABLE `deposit_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposit_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `try` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorits`
--

DROP TABLE IF EXISTS `favorits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorits`
--

LOCK TABLES `favorits` WRITE;
/*!40000 ALTER TABLE `favorits` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_intervals`
--

DROP TABLE IF EXISTS `flash_intervals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_intervals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_intervals`
--

LOCK TABLES `flash_intervals` WRITE;
/*!40000 ALTER TABLE `flash_intervals` DISABLE KEYS */;
/*!40000 ALTER TABLE `flash_intervals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateways`
--

DROP TABLE IF EXISTS `gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gateways` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Website',
  `val4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Industry Type',
  `val5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Channel ID',
  `val6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Transaction URL',
  `val7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paytm Transaction Status URL	',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=903 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateways`
--

LOCK TABLES `gateways` WRITE;
/*!40000 ALTER TABLE `gateways` DISABLE KEYS */;
INSERT INTO `gateways` VALUES (101,'PayPal','PayPal','5','1000','0.511','2.52','79','rexrifat636@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-08-06 01:27:05'),(102,'PerfectMoney','Perfect Money','20','20000','2','1','80','U5376900','G079qn4Q7XATZBqyoCkBteGRg',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-07-01 01:22:11'),(103,'Stripe','Credit Card','10','50000','3','3','80','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-05-27 18:11:50'),(104,'Skrill','Skrill','10','50000','3','3','80','merchant@skrill','TheSoftKing',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-05-20 12:01:09'),(105,'PayTM','PayTM','1','100','1','1','80','PoojaE46324372286132','JAKMX9PVoj208dMq','WEB_STAGINGb','Retail','WEB','https://pguat.paytm.com/oltp-web/processTransaction','https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp',1,NULL,'2019-03-10 04:27:24'),(106,'Payeer','Payeer','1','100','1','1','80','627881897','Admin727096',NULL,NULL,NULL,NULL,NULL,1,NULL,'2019-03-10 04:30:35'),(107,'PayStack','PayStack','1','100','1','1','80','pk_test_c1775454cc81a5ad2d6a31d0b0471585d44c4dcb','sk_test_22327c329aa7ea76448cfe279aa1e5d583d306fa',NULL,NULL,NULL,NULL,'0.0028',1,NULL,'2019-03-10 04:35:38'),(108,'VoguePay','VoguePay','1','100','1','1','80','demo',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(501,'Blockchain.info','BitCoin','1','20000','1','0.5','80','3965f52f-ec19-43af-90ed-d613dc60657eSSS','xpub6DREmHywjNizvs9b4hhNekcjFjvL4rshJjnrHHgtLNCSbhhx5jKFRgqdmXAecLAddEPudDZY4xoDbV1NVHSCeDp1S7NumPCNNjbxB7sGasY0000',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-05-21 01:20:29'),(502,'block.io - BTC','BitCoin','1','99999','1','0.5','80','1658-8015-2e5e-9afb','09876softk',NULL,NULL,NULL,NULL,NULL,1,'2018-01-27 18:00:00','2018-05-31 09:12:55'),(503,'block.io - LTC','LiteCoin','100','10000','0.4','1','80','cb91-a5bc-69d7-1c27','09876softk',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-07-19 01:28:33'),(504,'block.io - DOGE','DogeCoin','1','50000','0.51','2.52','80','2daf-d165-2135-5951','09876softk',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-05-31 09:28:54'),(505,'CoinPayment - BTC','BitCoin','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-05-31 09:38:33'),(506,'CoinPayment - ETH','Etherium','1','50000','0.51','2.52','79','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-07-16 03:42:22'),(507,'CoinPayment - BCH','Bitcoin Cash','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-07-18 01:40:09'),(508,'CoinPayment - DASH','DASH','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-05-31 09:39:04'),(509,'CoinPayment - DOGE','DOGE','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-05-31 09:39:04'),(510,'CoinPayment - LTC','LTC','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-05-31 09:39:04'),(512,'CoinGate','CoinGate','10','1000','05','5','80','Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N',NULL,NULL,NULL,NULL,NULL,NULL,1,'2018-07-08 18:00:00','2018-07-18 01:40:30'),(513,'CoinPayment-ALL','Coin Payment','10','1000','05','5','80','db1d9f12444e65c921604e289a281c56',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-05-21 01:20:54'),(900,'JPMorgan Chase','JPMorgan Chase','1000','40000','4','3','80',NULL,NULL,'Account Name: Samiul Alim Pratik\r\nAccount Number: 201414011',NULL,NULL,NULL,NULL,1,'2018-07-18 01:32:15','2019-03-18 11:34:22'),(901,'Bank of America','Bank of America','500','50000','4','3','80',NULL,NULL,'Account Name: Samiul Alim Pratik\r\nAccount Number: 201414011',NULL,NULL,NULL,NULL,1,'2018-07-19 01:24:13','2019-03-18 11:35:33'),(902,'Citigroup','Citigroup','1000','60000','10','3','84',NULL,NULL,'Account Name: John Doe\r\nAccount Number: 201414011',NULL,NULL,NULL,NULL,1,'2018-08-06 01:29:15','2019-03-18 11:35:44');
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `website_title` varchar(255) DEFAULT NULL,
  `base_color_code` varchar(20) DEFAULT NULL,
  `base_curr_text` varchar(20) DEFAULT NULL,
  `base_curr_symbol` blob,
  `dec_pt` int(11) DEFAULT NULL,
  `registration` int(11) DEFAULT NULL,
  `email_verification` int(11) DEFAULT NULL,
  `sms_verification` int(11) DEFAULT NULL,
  `email_notification` int(11) DEFAULT NULL,
  `sms_notification` int(11) DEFAULT NULL,
  `email_sent_from` varchar(255) DEFAULT NULL,
  `email_template` blob,
  `sms_api` text,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment_script` text,
  `footer` text,
  `home_style` varchar(255) DEFAULT NULL,
  `refund_policy` blob,
  `replacement_policy` blob,
  `main_city` varchar(255) DEFAULT NULL,
  `in_cash_on_delivery` double(11,2) NOT NULL DEFAULT '0.00',
  `in_advanced` double(11,2) NOT NULL DEFAULT '0.00',
  `around_cash_on_delivery` double(11,2) NOT NULL DEFAULT '0.00',
  `around_advanced` double(11,2) NOT NULL DEFAULT '0.00',
  `world_cash_on_delivery` double(11,2) NOT NULL DEFAULT '0.00',
  `world_advanced` double(11,2) NOT NULL DEFAULT '0.00',
  `tax` double(11,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_type` varchar(30) DEFAULT NULL,
  `coupon_amount` decimal(11,2) DEFAULT NULL,
  `coupon_min_amount` decimal(11,2) DEFAULT NULL,
  `valid_till` varchar(255) DEFAULT NULL,
  `tos` blob,
  `privacy` blob,
  `in_min` int(11) DEFAULT NULL,
  `in_max` int(11) DEFAULT NULL,
  `am_min` int(11) DEFAULT NULL,
  `am_max` int(11) DEFAULT NULL,
  `aw_min` int(11) DEFAULT NULL,
  `aw_max` int(11) DEFAULT NULL,
  `con_phone` varchar(255) DEFAULT NULL,
  `con_email` varchar(255) DEFAULT NULL,
  `con_address` varchar(255) DEFAULT NULL,
  `work_hours` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `menu_text` varchar(255) DEFAULT NULL,
  `user_login_text` blob,
  `user_register_text` blob,
  `vendor_login_text` blob,
  `vendor_register_text` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,'eCom','0378fe','USD',_binary '$',2,1,1,1,1,1,'do-not-reply@thesofking.com',_binary '<br><br>\r\n	<div class=\"contents\" style=\"max-width: 600px; margin: 0 auto; border: 2px solid #000036;\">\r\n\r\n<div class=\"header\" style=\"background-color: #000036; padding: 15px; text-align: center;\">\r\n	<div class=\"logo\" style=\"width: 260px;text-align: center; margin: 0 auto;\">\r\n		<img src=\"https://i.imgur.com/4NN55uD.png\" alt=\"THESOFTKING\" style=\"width: 100%;\">\r\n	</div>\r\n</div>\r\n\r\n<div class=\"mailtext\" style=\"padding: 30px 15px; background-color: #f0f8ff; font-family: \'Open Sans\', sans-serif; font-size: 16px; line-height: 26px;\">\r\n\r\nHi {{name}},\r\n<br><br>\r\n{{message}}\r\n<br><br>\r\n<br><br>\r\n</div>\r\n\r\n<div class=\"footer\" style=\"background-color: #000036; padding: 15px; text-align: center;\">\r\n<a href=\"https://thesoftking.com/\" style=\"	background-color: #2ecc71;\r\n	padding: 10px 0;\r\n	margin: 10px;\r\n	display: inline-block;\r\n	width: 100px;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	color: #ffff;\r\n	font-weight: 600;\r\n	border-radius: 4px;\">Website</a>\r\n<a href=\"https://thesoftking.com/products\" style=\"	background-color: #2ecc71;\r\n	padding: 10px 0;\r\n	margin: 10px;\r\n	display: inline-block;\r\n	width: 100px;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	color: #ffff;\r\n	font-weight: 600;\r\n	border-radius: 4px;\">Products</a>\r\n<a href=\"https://thesoftking.com/contact\" style=\"	background-color: #2ecc71;\r\n	padding: 10px 0;\r\n	margin: 10px;\r\n	display: inline-block;\r\n	width: 100px;\r\n	text-transform: uppercase;\r\n	text-decoration: none;\r\n	color: #ffff;\r\n	font-weight: 600;\r\n	border-radius: 4px;\">Contact</a>\r\n</div>\r\n\r\n\r\n<div class=\"footer\" style=\"background-color: #000036; padding: 15px; text-align: center; border-top: 1px solid rgba(255, 255, 255, 0.2);\">\r\n\r\n<strong style=\"color: #fff;\">Â© 2011 - 2018 THESOFTKING. All Rights Reserved.</strong>\r\n<p style=\"color: #ddd;\">TheSoftKing is not partnered with any other \r\ncompany or person. We work as a team and do not have any reseller, \r\ndistributor or partner!</p>\r\n\r\n\r\n</div>\r\n\r\n	</div>\r\n<br><br>','https://api.infobip.com/api/v3/sendsms/plain?user=****&password=*****&sender=eCom&SMSText={{message}}&GSM={{number}}&type=longSMS','+8801689583182','pratik.anwar@gmail.com u','<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0&appId=446348272471579&autoLogAppEvents=1\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>','Copyright by@Bigenza - 2018','home1',_binary 'If you are not 100% satisfied with your purchase, you can return the product and get a full refund or exchange the product for another one, be it similar or not. You can return a product for up to 30 days from the date you purchased it. Any product you return must be in the same condition you received it and in the original packaging. Please keep the receipt.',_binary 'If you are not 100% satisfied with your purchase, you can return the product and get a full refund or exchange the product for another one, be it similar or not.\r\n\r\nYou can return a product for up to 30 days from the date you purchased it.\r\n\r\nAny product you return must be in the same condition you received it and in the original packaging. Please keep the receipt.','City',25.00,0.00,45.00,25.00,200.00,150.00,4.00,'40OFF','percentage',5.00,20.00,'2019-03-05',_binary '<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\" style=\"\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"><h2 style=\"box-sizing: border-box; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; font-weight: 700; line-height: 1.1; margin: 0px 0px 25px; font-size: 28px; padding: 0px;\"><font color=\"#000000\"><br></font></h2><h2 style=\"box-sizing: border-box; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; font-weight: 700; line-height: 1.1; margin: 0px 0px 25px; font-size: 28px; padding: 0px;\"><font color=\"#000000\"><br></font></h2><h2 style=\"box-sizing: border-box; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; font-weight: 700; line-height: 1.1; margin: 0px 0px 25px; font-size: 28px; padding: 0px;\"><font color=\"#000000\">1. Acceptance of the Terms of Use</font></h2></div></div></div></div></blockquote></blockquote></blockquote></blockquote><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\" style=\"\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"><h2 style=\"color: rgb(17, 28, 36); font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; line-height: 1.1; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 28px; padding: 0px;\"><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; color: rgb(17, 28, 36); font-size: 14px; font-weight: 400;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"></div><div class=\"component text-component text-block        \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">The following terms and conditions, together with any referenced documents (collectively,&nbsp;\"<b style=\"font-weight: bold;\">Terms of Use</b>\") form a legal agreement between you and your employer, employees, agents, contractors and any other entity on whose behalf you accept these terms (collectively, â€œ<b style=\"font-weight: bold;\">you</b>â€ and â€œ<b style=\"font-weight: bold;\">your</b>â€), and ServiceNow, Inc. (â€œ<b style=\"font-weight: bold;\">ServiceNow</b>,â€ â€œ<b style=\"font-weight: bold;\">we</b>,â€ â€œ<b style=\"font-weight: bold;\">us</b>â€ and â€œ<b style=\"font-weight: bold;\">our</b>â€). The Terms of Use apply to the demonstration services available on the website where these Terms of Use are presented, including any ServiceNow Intellectual Property (as defined below) therein (the â€œ<b style=\"font-weight: bold;\">Demo Website</b>â€).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">By accessing or using the Demo Website, or by clicking to accept or agree to the Terms of Use when this option is made available to you, you represent that you have read and understood, and agree to be bound by these Terms of Use. If you do not agree to these Terms of Use, you may not use the Demo Website.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Personally identifiable information collected about you by this Demo Website is treated in accordance with the&nbsp;<a href=\"https://www.servicenow.com/privacy-statement.html\" style=\"background-image: linear-gradient(rgb(129, 181, 161), rgb(129, 181, 161)); background-position: center bottom; background-size: 2px 2px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: inherit; position: relative; padding-bottom: 0.3rem; color: rgb(41, 62, 64) !important; transition: background 0.25s ease-out 0s !important;\">Privacy Policy</a>, which is hereby incorporated into these Terms of Use by reference. If you do not agree to these Terms of Use or the&nbsp;<a href=\"https://www.servicenow.com/privacy-statement.html\" style=\"background-image: linear-gradient(rgb(129, 181, 161), rgb(129, 181, 161)); background-position: center bottom; background-size: 2px 2px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: inherit; position: relative; padding-bottom: 0.3rem; color: rgb(41, 62, 64) !important; transition: background 0.25s ease-out 0s !important;\">Privacy Policy</a>, you must accept these Terms of Use or access the Demo Website.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Access</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">We reserve the right to terminate or modify the Demo Website in whole or in part, in any manner in our sole discretion, without notice. We will not be liable if, for any reason, all or any part of the Demo Website is unavailable at any time or for any period. From time to time, we may restrict access to all or part of the Demo Website to a subset of permitted users. You are solely responsible for making all arrangements necessary for you to access the Demo Website.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">You shall use the Demo Website exclusively to test and evaluate the ServiceNow product and service, and you shall access it only through the registration portal, regardless of any previous registration or access. To access portions of the Demo Website or certain resources, you may be asked to provide certain registration details or other information.&nbsp; It is a condition of your use of the Demo Website, and you hereby represent and warrant, that all information you provide is correct, current and complete. You must logout from the Demo Website at the end of each session. You agree that you are solely responsible to us for all activities identified with your access and registration. ServiceNow has the absolute right to disable any user name or password, at any time, for any reason, including, if in our sole discretion we believe that you have failed to comply with any provision of these Terms of Use.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Data Visible to Other Users</b></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">The Demo Website is a collection of shared instances that automatically reset on a timed schedule. Anything input by a user of the Demo Website that remains on an instance following your use will be visible and usable to all other users that access the same instance before it is reset.&nbsp; In addition to the rights provided to ServiceNow above, you hereby grant to all users of the Demo Website a royaltyâ€‘free, fullyâ€‘paid, nonâ€‘exclusive, nonâ€‘transferable, subâ€‘licensable, worldwide right to use any data and intellectual property provided by you to each other user of the Demo Website solely to use the Demo Website as described herein.</p></div></div></div></div><div id=\"prohibited\" style=\"color: rgb(17, 28, 36); font-size: 14px; font-weight: 400;\"></div></h2></div></div></div></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\" style=\"\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"><h2 style=\"color: rgb(17, 28, 36); font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; line-height: 1.1; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 28px; padding: 0px;\">2. Prohibited Uses</h2></div></div></div></div></blockquote></blockquote></blockquote></blockquote><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\" style=\"\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"><h2 style=\"color: rgb(17, 28, 36); font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; line-height: 1.1; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 28px; padding: 0px;\"><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; color: rgb(17, 28, 36); font-size: 14px; font-weight: 400;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"></div><div class=\"component text-component text-block        \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">You agree not to access or use (and shall not permit others to access or use) the Demo Website or ServiceNow Intellectual Property in any manner:</p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">Other than for product evaluation purposes (specifically excluding product demonstration, development, or any production or commercial purposes).</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To process, use, transmit or introduce any confidential or sensitive information of any kind, including personally identifiable information, sensitive personal data, health information of any kind, or factual data regarding your employees or third data, and particularly excluding: (1) information protected under the privacy or security regulations issued pursuant to the Health Insurance Portability and Accountability Act of 1996 (HIPAA) or subject to the Health Information Technology for Economic and Clinical Health (HITECH) Act; or (2) nonâ€‘public sensitive or personally identifiable information including but not limited to drivers license numbers, passport numbers, social security numbers, tax identification numbers, voter registration numbers or similar identifying numbers, health information, or financial information including bank, checking, credit card, debit card, or other account numbers.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To license, subâ€‘license, sell, reâ€‘sell, rent, lease, transfer, distribute or time share or otherwise make them available for access by third parties.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To disassemble, reverse engineer, decompile or modify them or otherwise create derivative works of them.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To access them for the purpose of developing a product or service that competes with a ServiceNow Product.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To use them to create, use, send, store or run viruses or other harmful computer code, files, scripts, agents or other programs or engage in any other malicious act.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To disrupt their security, integrity or operation.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To remove or modify a copyright or other proprietary rights notice in them.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To use them to reproduce, distribute, display, transmit or use material protected by copyright or other intellectual property right (including the rights of publicity or privacy) without first obtaining the permission of the owner.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To use them to damage the property of another.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">That violates any applicable federal, state, local or international law or regulation, or advocates, promotes or assists in any unlawful act, constitutes an illegal threat or violates export control laws.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">That temporarily or permanently alters, erases, removes, copies, modifies, halts or disables any ServiceNow or third party data, software or network.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">That violates the rights of any person or entity that may give rise to civil or criminal liability under applicable laws or regulations applicable to you, another user, and/or ServiceNow, including violation of privacy or publicity rights, infringement of any copyright, patent, trademark, trade secret or other intellectual property right, or conflicts with these Terms of Use or the Privacy Policy.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To transmit or introduce offensive materials, including those involving profanity, violence, sexual conduct, pornography or discrimination based on race, sex, religion, nationality, disability, sexual orientation or age.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To monitor or attempt to gain unauthorized access to: (1) an account or computer not belonging to you; (2) any data, information or communications on any network or system not owned by you, without authorization; (3) any system or network user accounts or passwords of other users, without authorization; or (4) eâ€‘mail addresses, screen names or other identifiers without the consent of the person identified (including, without limitation, phishing, password robbery, spidering and harvesting).</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">That is false, deceptive, misleading or fraudulent, including but not limited to: (1) any attempt to impersonate any person or entity, including any other user, ServiceNow or a ServiceNow employee; (2) to misrepresent your identity or affiliation with any person or organization; and (3) any attempt to give the impression that you are posting materials from any person or entity other than yourself if that is not the case, including but not limited to altering your IP source address.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">To monitor or copy materials on the Demo Website for any unauthorized purpose or access the Demo Website via any automatic device, process or means of access such as a robot or spider.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">That may have a detrimental effect on the Demo Websiteâ€™s function, user interaction or security, including but not limited to: (1)&nbsp;gaining unauthorized access to, or attempting to compromise the security of, any network, system, computing facility, equipment, data or information; (2) attempting to intercept, redirect or otherwise interfere with communications intended for others; (3) disabling, damaging overburdening or impairing the Demo Website or any server, computer or database connected to or accessed by the Demo Website; (4) modifying, blocking or otherwise interfering with the display of the Demo Website; (5)&nbsp;interfering with another userâ€™s ability to access, use and enjoy the Demo Website; (6)&nbsp;accessing another userâ€™s registration information or user account without that userâ€™s express written permission; (7)&nbsp;transmitting or introducing any malicious or technologically harmful element to the Demo Website such as a spyware program, virus, Trojan horse, worm or logic bomb; (8)&nbsp;performing, without ServiceNowâ€™s express prior written authorization, scalability testing, load testing, probing, scanning, penetration or vulnerability testing of the Demo Website, including without limitation the Community Services; and (9)&nbsp;engaging in any activities that results in any server being the target of a denial of service attack.</li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Notification of Violation</b></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">If you become aware of any violation of these Terms of Use by any person, including other users or third parties, you shall immediately notify ServiceNow via eâ€‘mail to&nbsp;<a href=\"mailto:info@servicenow.com\" style=\"background-image: linear-gradient(rgb(129, 181, 161), rgb(129, 181, 161)); background-position: center bottom; background-size: 2px 2px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: inherit; position: relative; padding-bottom: 0.3rem; color: rgb(41, 62, 64) !important; transition: background 0.25s ease-out 0s !important;\">info@servicenow.com</a>.</p></div></div></div></div><div id=\"intellectual\" style=\"color: rgb(17, 28, 36); font-size: 14px; font-weight: 400;\"></div></h2></div></div></div></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\" style=\"\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"><h2 style=\"color: rgb(17, 28, 36); font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; line-height: 1.1; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 28px; padding: 0px;\">3. Intellectual Property</h2></div></div></div></div></blockquote></blockquote></blockquote></blockquote><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\" style=\"\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"><h2 style=\"color: rgb(17, 28, 36); font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; line-height: 1.1; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 28px; padding: 0px;\"><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; color: rgb(17, 28, 36); font-size: 14px; font-weight: 400;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"></div><div class=\"component text-component text-block        \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">As between you and ServiceNow, all rights, title and interest in and to all the intellectual property rights in the ServiceNow Intellectual Property are owned exclusively by ServiceNow and its licensors, notwithstanding any other provision in these Terms of Use or any other agreement. The ServiceNow Intellectual Property is protected by United States and international laws regarding copyrights, trademarks, trade secrets and other intellectual property or proprietary rights. As used herein, â€œ<b style=\"font-weight: bold;\">ServiceNow Intellectual Property</b>â€ means the information, text, displays, images, video, audio, and user interfaces included in or generated by the Demo Website, and the design, selection and arrangement thereof, as well as the technology that is used by ServiceNow to deliver the Demo Website, including: (a) software code (whether in source or object form) including platforms and applications, hardware, algorithms, templates, graphical user interfaces, architectures, class libraries, application programming interfaces, objects, methodologies, and documentation (both printed and electronic) in existence as of the Effective Date or otherwise acquired or developed by ServiceNow apart from the services rendered under these Terms of Use; and (b) any derivative works, improvements, enhancements or extensions of the foregoing made by ether you or ServiceNow. Except as expressly provided in this Agreement, ServiceNow does not grant you (and expressly reserves) any rights, express or implied, or ownership in the ServiceNow Intellectual Property. No right, title or interest in or to the Demo Website is transferred to you. ServiceNow reserves all rights not expressly granted to you herein. You hereby grant to ServiceNow a royaltyâ€‘free, fullyâ€‘paid, nonâ€‘exclusive, nonâ€‘transferable, subâ€‘licensable, worldwide right to use: (a)&nbsp;electronic data uploaded or processed by you to the Demo Website; and (b) any software, methodologies, templates, business processes, documentation or other material authored, invented or otherwise created by you using or for use with the ServiceNow Intellectual Property provided by you to ServiceNow solely to provide the Demo Website.&nbsp; Customer Technology does not include, and Customer will have no ownership of intellectual property in, ServiceNow Core Technology. Any use of the Demo Website not expressly permitted by these Terms of Use is a breach of these Terms of Use and may violate copyright, trademark and other laws. You are permitted to use the Demo Website only for legitimate business purposes related to your role as a current or prospective customer, supplier or partner of ServiceNow. You shall not copy, modify, create derivative works of, publicly display or perform, republish, download or store, or transmit any ServiceNow Intellectual Property without ServiceNowâ€™s express prior written consent or except as expressly provided in these Terms of Use.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">ServiceNow Trademarks</b></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><i>ServiceNow</i>, â€œ<i>now</i>â€ with a stylized power button, the â€œNOWâ€ family of marks, and all related, logos, product and service names, designs and slogans are trademarks or service marks of ServiceNow or our affiliates or licensors. You must not use such marks without our prior written permission. All other names, brands and marks are used for identification purposes only and are the trademarks of their respective owners.</p></div></div></div></div><div id=\"monitoring\" style=\"color: rgb(17, 28, 36); font-size: 14px; font-weight: 400;\"></div></h2></div></div></div></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\" style=\"\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"><h2 style=\"color: rgb(17, 28, 36); font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; line-height: 1.1; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 28px; padding: 0px;\">4. Monitoring, Enforcement and Feedback</h2></div></div></div></div></blockquote></blockquote></blockquote></blockquote><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\" style=\"\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"><h2 style=\"color: rgb(17, 28, 36); font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; line-height: 1.1; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 28px; padding: 0px;\"><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; color: rgb(17, 28, 36); font-size: 14px; font-weight: 400;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"></div><div class=\"component text-component text-block        \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">The Demo Website is a shared environment. ServiceNow has the right but not the obligation to:</p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; list-style: none; padding: 0px;\"><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">Terminate your access to all or part of the Demo Website for any reason or no reason, in our sole discretion, including without limitation any violation of these Terms of Use or the Privacy Policy.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">Disclose your identity to any third party who claims that material posted by you violates their rights, including their intellectual property rights or their right to privacy.</li><li style=\"padding-left: 0.65em; text-indent: -0.7em; padding-bottom: 10px;\">Take appropriate legal action, including without limitation, referral to law enforcement, for any illegal or unauthorized use of the Demo Website.</li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Without limiting the foregoing, ServiceNow has the right to fully cooperate with any law enforcement authorities or court order requesting or directing us to disclose the identity of anyone including any materials on or through the Demo Website. YOU WAIVE AND HOLD SERVICENOW HARMLESS FROM ANY CLAIMS RESULTING FROM ANY ACTION TAKEN BY SERVICENOW DURING OR AS A RESULT OF ITS INVESTIGATIONS AND FROM ANY ACTIONS TAKEN AS A CONSEQUENCE OF INVESTIGATIONS BY EITHER SERVICENOW OR LAW ENFORCEMENT AUTHORITIES.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">ServiceNow can neither review all material before it is included on the Demo Website nor ensure prompt removal of objectionable material after it has been posted and assumes no liability for any action or inaction regarding transmissions, communications or content provided by any user or third parties. We have no liability or responsibility to anyone for performance or nonperformance of the activities described in this paragraph.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Feedback &amp; Suggestions</b></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">Direct feedback, comments, suggestions, requests for support and other communications relating to the Demo Website to:&nbsp;<a href=\"mailto:info@servicenow.com\" style=\"background-image: linear-gradient(rgb(129, 181, 161), rgb(129, 181, 161)); background-position: center bottom; background-size: 2px 2px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: inherit; position: relative; padding-bottom: 0.3rem; color: rgb(41, 62, 64) !important; transition: background 0.25s ease-out 0s !important;\">info@servicenow.com</a>. ServiceNow shall have a royaltyâ€‘free, worldwide, nonâ€‘exclusive, transferable, subâ€‘licensable, irrevocable, perpetual right and license to make, use, sell, offer for sale, import or otherwise incorporate for any purpose, any feedback, and suggestions for improvements or enhancements to the Demo Website and the ServiceNow Products.</p></div></div></div></div><div id=\"legal\" style=\"color: rgb(17, 28, 36); font-size: 14px; font-weight: 400;\"></div></h2><h2 style=\"color: rgb(17, 28, 36); font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; line-height: 1.1; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 28px; padding: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5. Legal Considerations</h2><h2 style=\"color: rgb(17, 28, 36); font-family: &quot;Gotham SSm A&quot;, &quot;Gotham SSm B&quot;, Arial, sans-serif; line-height: 1.1; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 28px; padding: 0px;\"><div class=\"background-component space     space-sm-bottom background-extra-wide\" style=\"padding-bottom: 40px; color: rgb(17, 28, 36); font-size: 14px; font-weight: 400;\"><div class=\"container\" style=\"padding-left: 80px; padding-right: 80px; width: 960px;\"><div class=\"component text-jumbo-new-component variation-1  text-left text-center-mobile\" data-component-name=\"textJumbo\"><div class=\"component text-component title-block  text-light  font-size-d-30     \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px; font-size: 30px !important;\"></div><div class=\"component text-component text-block        \" style=\"line-height: 1.71429; padding-left: 0px; padding-right: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Regional Legal Considerations</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">The owner of the Demo Website is based in the state of California in the United States. The Demo Website can be accessed from countries around the world.&nbsp; Access to the Demo Website may not be legal by certain persons or in certain countries. If you access the Demo Website from outside the United States, you do so on your own initiative and are responsible for compliance with local laws. Access to the Demo Website from territories where the Demo Website or any of its services or products are illegal is prohibited. You acknowledge that you remain responsible at all times for your compliance with U.S. and all applicable export and related statutes and regulations.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Disclaimer of Warranties</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">ServiceNow cannot and does not promise or warrant that any aspect of the Demo Website is free of viruses or other destructive code. You are responsible for implementing sufficient procedures and checkpoints to satisfy your particular requirements for antiâ€‘virus protection and accuracy of data input and output, and for maintaining a means external to our site for any reconstruction of any lost data. &nbsp;WE WILL NOT BE LIABLE FOR ANY LOSS OR DAMAGE CAUSED BY A DISTRIBUTED DENIALâ€‘OFâ€‘SERVICE ATTACK, VIRUSES OR OTHER TECHNOLOGICALLY HARMFUL MATERIAL THAT MAY INFECT YOUR COMPUTER EQUIPMENT, COMPUTER PROGRAMS, DATA OR OTHER PROPRIETARY MATERIAL DUE TO YOUR USE OF THE DEMO WEBSITE OR ANY SERVICES OR ITEMS OBTAINED THROUGH THE DEMO WEBSITE OR TO YOUR DOWNLOADING OF ANY MATERIAL POSTED ON IT, OR ON ANY WEBSITE LINKED TO IT.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">YOUR USE OF THE DEMO WEBSITE, INCLUDING ANY WEBSITE CONTENT, AND ANY SERVICES OR ITEMS OBTAINED THROUGH THE DEMO WEBSITE, IS AT YOUR OWN RISK AND PROVIDED ON AN \"AS IS\" AND \"AS AVAILABLE\" BASIS, WITHOUT ANY WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED. NEITHER SERVICENOW NOR ANY PERSON ASSOCIATED WITH SERVICENOW MAKES ANY WARRANTY OR REPRESENTATION WITH RESPECT TO THE COMPLETENESS, SECURITY, RELIABILITY, QUALITY, ACCURACY OR AVAILABILITY OF THE DEMO WEBSITE. WITHOUT LIMITING THE FOREGOING, NEITHER SERVICENOW NOR ANYONE ASSOCIATED WITH SERVICENOW REPRESENTS OR WARRANTS THAT THE DEMO WEBSITE WILL BE ACCURATE, RELIABLE, ERRORâ€‘FREE OR UNINTERRUPTED, THAT DEFECTS WILL BE CORRECTED, THAT OUR SITE OR THE SERVER THAT MAKES IT AVAILABLE ARE FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS OR THAT THE DEMO WEBSITE OR ANY SERVICES OR ITEMS OBTAINED THROUGH THE DEMO WEBSITE WILL OTHERWISE MEET YOUR NEEDS OR EXPECTATIONS.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">SERVICENOW HEREBY DISCLAIMS ALL WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, STATUTORY OR OTHERWISE, WITH RESPECT TO THE DEMO WEBSITE AND THE WEBSITE CONTENT, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OF MERCHANTABILITY, NONâ€‘INFRINGEMENT AND FITNESS FOR PARTICULAR PURPOSE.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">THE FOREGOING DOES NOT AFFECT ANY WARRANTIES WHICH CANNOT BE EXCLUDED OR LIMITED UNDER APPLICABLE LAW.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Limitation of Liability</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">EXCEPT TO THE EXTENT THAT A DISCLAIMER OF LIABILITY IS PROHIBITED UNDER APPLICABLE LAW, IN NO EVENT WILL SERVICENOW, ITS AFFILIATES AND ITS LICENSORS, SERVICE PROVIDERS, EMPLOYEES, AGENTS, OFFICERS AND DIRECTORS BE LIABLE FOR DAMAGES OF ANY KIND, UNDER ANY LEGAL THEORY, ARISING OUT OF OR IN CONNECTION WITH YOUR USE, OR INABILITY TO USE, THE DEMO WEBSITE, INCLUDING ANY WEBSITE CONTENT, INCLUDING ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL, CONSEQUENTIAL OR PUNITIVE DAMAGES, INCLUDING BUT NOT LIMITED TO, PERSONAL INJURY, PAIN AND SUFFERING, EMOTIONAL DISTRESS, LOSS OF REVENUE, LOSS OF PROFITS, LOSS OF BUSINESS OR ANTICIPATED SAVINGS, LOSS OF USE, LOSS OF GOODWILL, LOSS OF DATA, AND WHETHER CAUSED BY TORT (INCLUDING NEGLIGENCE), BREACH OF CONTRACT OR OTHERWISE, EVEN IF FORESEEABLE.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Indemnification</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">You agree to defend, indemnify and hold ServiceNow, its affiliates and licensors and their respective officers, directors, employees, contractors, agents, licensors and suppliers harmless from and against any claims, liabilities, damages, judgments, awards, losses, costs, expenses or fees (including reasonable attorneys\' fees and other costs of defense) resulting from your violation of these Terms of Use or your use of the Demo Website, including, without limitation, any use of the Demo Website\'s content, services and products other than as expressly authorized in these Terms of Use or your use of any information obtained from the Demo Website.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Governing Law and Jurisdiction</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">These Terms of Use and any dispute or claim arising out of, or related to, them, their subject matter or their formation (in each case, including nonâ€‘contractual disputes or claims) shall be governed by and construed in accordance with the internal laws of the State of California in the United States without giving effect to any choice or conflict of laws provision or rule (whether of the State of California or any other jurisdiction).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Any legal suit, action or proceeding arising out of, or related to, these Terms of Use or the Demo Website shall be instituted exclusively in the federal courts of the United States or the courts of the State of California, in each case located in the Santa Clara, California although we retain the right to bring any suit, action or proceeding against you for breach of these Terms of Use in your country of residence or any other relevant country. You hereby irrevocably waive any and all objections to the exercise of jurisdiction over you by such courts and to venue in such courts.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Export Restrictions</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">You may not access, download, use or export materials posted to the Demo Website in violation of U.S. export laws or regulations, including the Export Administration Regulations (EAR), or in violation of any other applicable export or import laws or regulations. You agree to comply with all export laws and restrictions and regulations of any United States or foreign agency or authority.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Waiver and Severability</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">No waiver of these Terms of Use by ServiceNow shall be deemed a further or continuing waiver of such term or condition or any other term or condition, and any failure of ServiceNow to assert a right or provision under these Terms of Use shall not constitute a waiver of such right or provision.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">If any provision of these Terms of Use is held by a court of competent jurisdiction to be invalid, illegal or unenforceable for any reason, such provision shall be eliminated or limited to the minimum extent such that the remaining provisions of the Terms of Use will continue in full force and effect.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Third Party Beneficiaries</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">There are no thirdâ€‘party beneficiaries to this agreement.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Classification of Website and ServiceNow Products</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">In the event of a dispute, the categorization of any subject matter as either the Demo Website or a ServiceNow Product shall be made by ServiceNow in its sole discretion, and ServiceNow may reclassify as a ServiceNow Product subject matter previously included in the Demo Website.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Termination</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">ServiceNow may terminate these Terms of Use at any time for any reason by giving you written notice, and all licenses, permissions and other rights granted to you hereunder shall immediately terminate.&nbsp; Notwithstanding the termination of this Agreement for any reason, Sections 3 and 5 herein shall survive.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><b style=\"font-weight: bold;\">Entire Agreement</b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">The Terms of Use and our Privacy Policy constitute the sole and entire agreement between you and ServiceNow with respect to the Demo Website and supersede all prior and contemporaneous understandings, agreements, representations and warranties, both written and oral, with respect to the Demo Website. For the avoidance of doubt, these Terms of Use do not supersede any Master Ordering Agreement, subscription agreement or other agreement pursuant to which you have been granted the right to use or access a ServiceNow product or service.</p></div></div></div></div></h2></div></div></div></div>',_binary '<p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" style=\"\" face=\"arial\">This privacy policy sets out how â€œ[business name]â€ uses and protects any information that you give â€œ[business name]â€ when you use this website.</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">â€œ[business name]â€ is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement.</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">â€œ[business name]â€ may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes. This policy is effective from [date].</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">What we collect</font></span></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">We may collect the following information:</font></span></p><ul style=\"margin: 15px 0px 15px 40px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; list-style: none;\"><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">name and job title</font></span></li><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">contact information including email address</font></span></li><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">demographic information such as postcode, preferences and interests</font></span></li><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">other information relevant to customer surveys and/or offers</font></span></li></ul><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">What we do with the information we gather</font></span></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:</font></span></p><ul style=\"margin: 15px 0px 15px 40px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; list-style: none;\"><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">Internal record keeping.</font></span></li><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">We may use the information to improve our products and services.</font></span></li><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">We may periodically send promotional emails about new products, special offers or other information which we think you may find interesting using the email address which you have provided.</font></span></li><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail. We may use the information to customise the website according to your interests.</font></span></li></ul><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">Security</font></span></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">How we use cookies</font></span></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">A cookie is a small file which asks permission to be placed on your computerâ€™s hard drive. Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">We use traffic log cookies to identify which pages are being used. This helps us analyse data about webpage traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us.</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">Links to other websites</font></span></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">Our website may contain links to other websites of interest. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">Controlling your personal information</font></span></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">You may choose to restrict the collection or use of your personal information in the following ways:</font></span></p><ul style=\"margin: 15px 0px 15px 40px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; list-style: none;\"><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes</font></span></li><li style=\"margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; list-style-position: outside; list-style-type: disc;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">if you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by writing to or emailing us at [email address]</font></span></li></ul><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" face=\"arial\">You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee will be payable. If you would like a copy of the information held on you please write to [address].</font></span></p><p style=\"margin: 0.5em 0px 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit;\"><font color=\"#000000\" style=\"\" face=\"arial\">If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible, at the above address. We will promptly correct any information found to be incorrect.</font></span></p>',2,3,4,5,6,8,'+ (123) 1800-567-8990','info@examplte.com','198 West 21th Street, Suite 721, New York NY 10010','Mon - Fri: 9:00 - 19:00 / Closed on Friday','info@examplte.com','(012) 800 456 789 - 10','Info Pages',_binary '<div class=\"top-content\" style=\"margin-bottom: 37px; color: rgb(131, 139, 151); font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"color: rgb(125, 124, 143); line-height: 24px;\">To view your products and account details, please login to your E-Shop account.</p></div><div class=\"bottom-content\" style=\"display: inline-block; position: relative; color: rgb(131, 139, 151); font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Login as a user</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Choose products</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Buy your desired products</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;View and manage your orders</p></div>',_binary '<div class=\"top-content\" style=\"margin-bottom: 37px; color: rgb(131, 139, 151); font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"color: rgb(125, 124, 143); line-height: 24px;\">To view your orders and account details, please login to your E-Shop account.</p></div><div class=\"bottom-content\" style=\"display: inline-block; position: relative; color: rgb(131, 139, 151); font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Signup as a user</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Choose products</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Buy your desired products</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;View and manage your orders</p></div>',_binary '<div class=\"top-content\" style=\"margin-bottom: 37px; color: rgb(131, 139, 151); font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"color: rgb(125, 124, 143); line-height: 24px;\">To view your products and account details, please login to your E-Shop account.</p></div><div class=\"bottom-content\" style=\"display: inline-block; position: relative; color: rgb(131, 139, 151); font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Login as a vendor</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Start posting your products</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Get paid after selling those products</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;View and manage your products/orders at your convenience</p></div>',_binary '<div class=\"top-content\" style=\"margin-bottom: 37px; color: rgb(131, 139, 151); font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"color: rgb(125, 124, 143); line-height: 24px;\">To view your products and account details, please login to your E-Shop account.</p></div><div class=\"bottom-content\" style=\"display: inline-block; position: relative; color: rgb(131, 139, 151); font-family: &quot;Open Sans&quot;, sans-serif;\"><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Signup as a vendor</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Start posting your products</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;Get paid after selling those products</p><p style=\"color: rgb(35, 43, 55); line-height: 1.625;\"><span class=\"fa fa-check-circle base-txt\" style=\"color: rgb(46, 204, 113) !important;\"></span>&nbsp;View and manage your products/orders at your convenience</p></div>');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `subdistrict` varchar(255) DEFAULT NULL,
  `description` blob,
  `price` decimal(11,2) DEFAULT NULL,
  `negotiable` varchar(255) DEFAULT NULL,
  `extras` text,
  `postad` int(3) NOT NULL DEFAULT '0',
  `contact_hide` int(3) NOT NULL DEFAULT '0',
  `sell` int(3) NOT NULL DEFAULT '0',
  `rent` int(3) NOT NULL DEFAULT '0',
  `featured` int(3) NOT NULL DEFAULT '0',
  `expired_date` varchar(255) DEFAULT NULL,
  `published` int(3) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `body` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (9,'About Us','ABOUT US','about-us',_binary '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"3\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</font></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"3\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</font></p>','2019-03-04 00:42:05','2019-03-08 23:17:55');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
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
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(3) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderedproducts`
--

DROP TABLE IF EXISTS `orderedproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderedproducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `offered_product_price` varchar(255) DEFAULT NULL,
  `product_price` decimal(11,2) DEFAULT NULL,
  `coupon_amount` decimal(11,2) DEFAULT NULL COMMENT 'total coupon discount for this product',
  `quantity` int(11) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `product_total` decimal(11,2) DEFAULT NULL COMMENT 'it will be added to vendor balance',
  `shipping_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 - pending, 1- in-process, 2- shipped',
  `shipping_date` timestamp NULL DEFAULT NULL,
  `approve` int(11) NOT NULL DEFAULT '0' COMMENT '0-pending, -1- reject',
  `refunded` int(11) NOT NULL DEFAULT '0',
  `comment_type` varchar(30) DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderedproducts`
--

LOCK TABLES `orderedproducts` WRITE;
/*!40000 ALTER TABLE `orderedproducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderedproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderpayments`
--

DROP TABLE IF EXISTS `orderpayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderpayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `usd_amo` varchar(255) DEFAULT NULL,
  `btc_amo` varchar(255) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `trx` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `try` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderpayments`
--

LOCK TABLES `orderpayments` WRITE;
/*!40000 ALTER TABLE `orderpayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderpayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `order_notes` text,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `tax` decimal(11,2) DEFAULT NULL,
  `payment_method` int(3) DEFAULT NULL,
  `shipping_method` varchar(25) DEFAULT NULL,
  `shipping_status` int(11) DEFAULT '0' COMMENT '0 - pending, 1- in-process, 2- shipped',
  `approve` int(11) DEFAULT '0' COMMENT '0-pending, 1-approve, -1- reject',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `s_desc` text,
  `price` varchar(255) DEFAULT NULL,
  `products` int(11) DEFAULT NULL,
  `validity` int(11) DEFAULT NULL,
  `status` int(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_payments`
--

DROP TABLE IF EXISTS `place_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_payments`
--

LOCK TABLES `place_payments` WRITE;
/*!40000 ALTER TABLE `place_payments` DISABLE KEYS */;
INSERT INTO `place_payments` VALUES (1,'18','in',2,'2019-03-23 09:14:17','2019-03-25 17:53:16');
/*!40000 ALTER TABLE `place_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preview_images`
--

DROP TABLE IF EXISTS `preview_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preview_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `big_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preview_images`
--

LOCK TABLES `preview_images` WRITE;
/*!40000 ALTER TABLE `preview_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `preview_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `attrname` varchar(255) DEFAULT NULL,
  `status` int(3) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attributes`
--

LOCK TABLES `product_attributes` WRITE;
/*!40000 ALTER TABLE `product_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating` double(11,2) DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `attributes` text,
  `description` blob,
  `coupon_code` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `valid_till` varchar(255) DEFAULT NULL,
  `offer_type` varchar(255) DEFAULT NULL,
  `offer_amount` varchar(255) DEFAULT NULL,
  `flash_sale` int(3) DEFAULT NULL COMMENT '0 - no, 1 - yes',
  `flash_type` int(3) DEFAULT NULL COMMENT '0 - fixed, 1 - percent',
  `flash_amount` varchar(255) DEFAULT NULL,
  `flash_date` varchar(255) DEFAULT NULL,
  `flash_interval` int(11) DEFAULT NULL,
  `flash_status` int(3) NOT NULL DEFAULT '0' COMMENT '0-pending, 1-approve, -1- reject',
  `flash_div_refresh` int(11) NOT NULL DEFAULT '0',
  `current_price` decimal(11,2) DEFAULT NULL,
  `search_price` decimal(11,2) DEFAULT NULL,
  `sales` int(11) NOT NULL DEFAULT '0',
  `avg_rating` decimal(11,2) NOT NULL DEFAULT '0.00',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `flash_request_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,NULL,'0','0',0,NULL,'2019-03-25 08:56:43');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderedproduct_id` int(11) DEFAULT NULL,
  `reason` text,
  `status` int(3) DEFAULT NULL COMMENT '0 - pending, 1 - accept, -1 - reject',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refunds`
--

LOCK TABLES `refunds` WRITE;
/*!40000 ALTER TABLE `refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bold_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (17,'1551963244.jpg','Stock up on sportswear and limited edition collections on our awesome mid-season sale.','New Arrivals','SPRING - SUMMER 2018','http://localhost/ecommerce/shop','2019-03-07 06:54:05','2019-03-07 06:54:05'),(18,'1551963276.jpg','Stock up on sportswear and limited edition collections on our awesome mid-season sale.','New Arrivals','SPRING - SUMMER 2018','http://localhost/ecommerce/shop','2019-03-07 06:54:37','2019-03-07 06:54:37'),(19,'1551963296.jpg','Stock up on sportswear and limited edition collections on our awesome mid-season sale.','New Arrivals','SPRING - SUMMER 2018','http://localhost/ecommerce/shop','2019-03-07 06:54:56','2019-03-07 06:54:56');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fontawesome_code` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(3) NOT NULL DEFAULT '1',
  `attributes` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `trx_id` varchar(255) DEFAULT NULL,
  `after_balance` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `address` text,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `billing_first_name` varchar(255) DEFAULT NULL,
  `billing_last_name` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(30) DEFAULT NULL,
  `billing_address` text,
  `billing_country` varchar(50) DEFAULT NULL,
  `billing_state` varchar(50) DEFAULT NULL,
  `billing_city` varchar(50) DEFAULT NULL,
  `billing_zip_code` varchar(30) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active',
  `email_verified` int(3) DEFAULT NULL,
  `sms_verified` int(3) DEFAULT NULL,
  `email_ver_code` int(11) DEFAULT NULL,
  `sms_ver_code` int(11) DEFAULT NULL,
  `email_sent` int(3) NOT NULL DEFAULT '0',
  `sms_sent` int(3) NOT NULL DEFAULT '0',
  `vsent` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_password_resets`
--

DROP TABLE IF EXISTS `vendor_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_password_resets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_password_resets`
--

LOCK TABLES `vendor_password_resets` WRITE;
/*!40000 ALTER TABLE `vendor_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `balance` decimal(11,2) DEFAULT '0.00',
  `address` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `products` int(11) DEFAULT '0',
  `expired_date` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active',
  `email_verified` int(3) DEFAULT NULL,
  `sms_verified` int(3) DEFAULT NULL,
  `email_ver_code` int(11) DEFAULT NULL,
  `sms_ver_code` int(11) DEFAULT NULL,
  `email_sent` int(3) NOT NULL DEFAULT '0',
  `sms_sent` int(3) NOT NULL DEFAULT '0',
  `vsent` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` text,
  `approved` int(3) NOT NULL DEFAULT '0' COMMENT '0-pending, 1-approve, -1- reject',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_methods`
--

DROP TABLE IF EXISTS `withdraw_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` double(10,2) DEFAULT NULL,
  `max_limit` double(10,2) DEFAULT NULL,
  `fixed_charge` double(8,2) DEFAULT NULL,
  `percentage_charge` double(5,2) DEFAULT NULL,
  `process_time` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_methods`
--

LOCK TABLES `withdraw_methods` WRITE;
/*!40000 ALTER TABLE `withdraw_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraws` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `withdraw_method_id` int(11) DEFAULT NULL,
  `trx` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraws`
--

LOCK TABLES `withdraws` WRITE;
/*!40000 ALTER TABLE `withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraws` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:10:22
