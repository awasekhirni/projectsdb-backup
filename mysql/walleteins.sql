-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: walleteins
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
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_bal`
--

LOCK TABLES `add_bal` WRITE;
/*!40000 ALTER TABLE `add_bal` DISABLE KEYS */;
INSERT INTO `add_bal` VALUES (1,'1','15','System','System','System','1501170330558692','1');
/*!40000 ALTER TABLE `add_bal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pwr` varchar(255) NOT NULL,
  `hide` varchar(255) NOT NULL DEFAULT '0',
  `sid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','Abir Khan','21232f297a57a5a743894a0e4a801fc3','i@abir.biz','01737042794','100','0','f8fbe2ac44a58fd153af3cdeafc428e4'),(2,'abir','Abir Khan','9ab209d66a9bf2250d7f56cc4b3b125d','abirkhan75@gmail.com','8801737042794','0','0','eb8dab0a0fe9b4fcd0c9c1f44b5239ac'),(3,'AbirKhan','shahed','b59c67bf196a4758191e42f76670ceba','aaa123@gmail.com','8801671545690','','0','');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `freez` varchar(255) NOT NULL DEFAULT '0',
  `mallu` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_fees`
--

DROP TABLE IF EXISTS `bank_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_fees`
--

LOCK TABLES `bank_fees` WRITE;
/*!40000 ALTER TABLE `bank_fees` DISABLE KEYS */;
INSERT INTO `bank_fees` VALUES (1,'Bangladesh','10'),(2,'india','09'),(3,'USA','1'),(4,'UK','1'),(5,'Canada','1');
/*!40000 ALTER TABLE `bank_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charges`
--

DROP TABLE IF EXISTS `charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `c1` varchar(255) NOT NULL,
  `c2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charges`
--

LOCK TABLES `charges` WRITE;
/*!40000 ALTER TABLE `charges` DISABLE KEYS */;
INSERT INTO `charges` VALUES (1,'','',''),(2,'','0.35','5');
/*!40000 ALTER TABLE `charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_location`
--

DROP TABLE IF EXISTS `deposit_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '0',
  `country` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_location`
--

LOCK TABLES `deposit_location` WRITE;
/*!40000 ALTER TABLE `deposit_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposit_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_setting`
--

DROP TABLE IF EXISTS `general_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitetitle` varchar(255) NOT NULL,
  `reg` varchar(1) NOT NULL,
  `notimail` varchar(366) NOT NULL,
  `emailtemp` blob NOT NULL,
  `smsapi` varchar(2555) NOT NULL,
  `head` varchar(255) NOT NULL,
  `htext` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_setting`
--

LOCK TABLES `general_setting` WRITE;
/*!40000 ALTER TABLE `general_setting` DISABLE KEYS */;
INSERT INTO `general_setting` VALUES (1,'E-Wallet','0','support@thesoftking.com',_binary '<p>&nbsp;</p>\r\n<div class=\"wrapper\" style=\"background-color: #f2f2f2;\">\r\n<table style=\"border-collapse: collapse; table-layout: fixed; color: #b8b8b8; font-family: Ubuntu,sans-serif;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"preheader__snippet\" style=\"padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n<td class=\"preheader__webversion\" style=\"text-align: right; padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0; width: 600px;\">\r\n<div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\">\r\n<div id=\"emb-email-header\" class=\"logo-left\" style=\"font-size: 0px !important; line-height: 0 !important;\" align=\"left\"><img style=\"height: auto; width: 100%; border: 0; max-width: 312px;\" src=\"http://i.imgur.com/nNCNPZT.png\" alt=\"\" width=\"312\" height=\"44\" /></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;\">\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-top: 24px;\">\r\n<div style=\"line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px;\">\r\n<h2>Hi {{name}},</h2>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px;\">\r\n<div style=\"line-height: 40px; font-size: 1px;\">&nbsp;</div>\r\n</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">\r\n<p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br /> <strong>E Wallet Team</strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>','https://api.infobip.com/api/v3/sendsms/plain?user=****&password=*****&sender=XpertCash&SMSText={{message}}&GSM={{number}}&type=longSMS','What Is e-Wallet',_binary '<h4 style=\"text-align: justify;\"><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos corporis inventore, nobis nemo, iusto praesentium labore rem blanditiis quam, cupiditate quibusdam id maxime aliquid cum. Repellendus ratione, doloremque sed tenetur inventore. Impedit, eius pariatur qui, ab inventore eligendi debitis quis sit laborum commodi quaerat quidem, sapiente omnis atque fugiat quia iure eaque consequuntur!</strong></h4>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong> Magni reprehenderit commodi illum facilis totam veritatis esse aspernatur quo facere hic! Quibusdam itaque maxime nulla aliquam, dolores perferendis delectus. Aut mollitia porro a laboriosam repellat ratione possimus totam dolores ex tenetur quos recusandae eos fugiat quam molestiae veniam deserunt soluta maxime iusto rerum, tempora voluptas sed!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos corporis inventore, nobis nemo, iusto praesentium labore rem blanditiis quam, cupiditate quibusdam id maxime aliquid cum. Repellendus ratione, doloremque sed tenetur inventore. Impedit, eius pariatur qui, ab inventore eligendi debitis quis sit laborum commodi quaerat quidem, sapiente omnis atque fugiat quia iure eaque consequuntur! Magni reprehenderit commodi illum facilis totam veritatis esse aspernatur quo facere hic! Quibusdam itaque maxime nulla aliquam,</strong></p>\r\n<p style=\"text-align: justify;\"><em><strong>amet, consectetur adipisicing elit. Eos corporis inventore, nobis nemo, iusto praesentium labore rem blanditiis quam, cupiditate quibusdam id maxime aliquid cum. Repellendus ratione, doloremque sed tenetur inventore. Impedit, eius pariatur qui, ab inventore eligendi debitis quis sit laborum commodi quaerat quidem, sapiente omnis atque fugiat quia iure eaque consequuntur! Magni reprehenderit commodi illum facilis totam veritatis esse aspernatur quo facere hic! Quibusdam itaque maxime nulla aliquam, dolores perferendis delectus. Aut mollitia porro a laboriosam repellat ratione possimus totam dolores ex tenetur quos recusandae eos fugiat quam molestiae veniam deserunt soluta maxime iusto rerum, tempora voluptas sed!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos corporis inventore, nobis nemo, iusto praesentium labore rem blanditiis quam, cupiditate quibusdam id maxime aliquid cum. Repellendus ratione, doloremque sed tenetur inventore. Impedit, eius pariatur qui, ab inventore eligendi debitis quis sit laborum commodi quaerat quidem, sapiente omnis atque fugiat quia iure eaque consequuntur! Magni reprehenderit commodi illum facilis totam veritatis esse aspernatur quo facere hic! Quibusdam itaque maxime nulla aliquam, dolores perferendis delectus. Aut mollitia porro a laboriosam repellat ratione possimus totam dolores ex tenetur quos recusandae eos fugiat quam molestiae veniam deserunt soluta maxime iusto rerum, tempora voluptas sed!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos corporis inventore, nobis nemo, iusto praesentium labore rem blanditiis quam, cupiditate quibusdam id maxime aliquid cum. Repellendus ratione, doloremque sed tenetur inventore. Impedit, eius pariatur qui, ab inventore eligendi debitis quis sit laborum commodi quaerat quidem, sapiente omnis atque fugiat quia iure eaque consequuntur!</strong></em></p>\r\n<p style=\"text-align: center;\"><em> Magni reprehenderit commodi illum facilis totam veritatis esse aspernatur quo facere hic! Quibusdam itaque maxime nulla aliquam, dolores perferendis delectus. Aut mollitia porro a laboriosam repellat ratione possimus totam dolores ex tenetur quos recusandae eos fugiat quam molestiae veniam deserunt soluta maxime iusto rerum, tempora voluptas sed!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos corporis inventore, nobis nemo, iusto praesentium labore rem blanditiis quam, cupiditate quibusdam id maxime aliquid cum. Repellendus ratione, doloremque sed tenetur inventore. Impedit, eius pariatur qui, ab inventore eligendi debitis quis sit laborum commodi quaerat quidem, sapiente omnis atque fugiat quia iure eaque consequuntur! Magni reprehenderit commodi illum facilis</em></p>\r\n<p style=\"text-align: justify;\"><em>totam veritatis esse aspernatur quo facere hic! Quibusdam itaque maxime nulla aliquam, dolores perferendis delectus. Aut mollitia porro a laboriosam repellat ratione possimus totam dolores ex tenetur quos recusandae eos fugiat quam molestiae veniam deserunt soluta maxime iusto rerum, tempora voluptas sed!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos corporis inventore, nobis nemo, iusto praesentium labore rem blanditiis quam, cupiditate quibusdam id maxime aliquid cum. Repellendus ratione, doloremque sed tenetur inventore. Impedit, eius pariatur qui, ab inventore eligendi debitis quis sit laborum commodi quaerat quidem, sapiente omnis atque fugiat quia iure eaque consequuntur! Magni reprehenderit commodi illum facilis totam veritatis esse aspernatur quo facere hic! Quibusdam itaque maxime nulla aliquam, dolores perferendis delectus. Aut mollitia porro a laboriosam repellat ratione possimus totam dolores ex tenetur quos recusandae eos fugiat quam molestiae veniam deserunt soluta maxime iusto rerum, tempora voluptas sed!</em></p>');
/*!40000 ALTER TABLE `general_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generated`
--

DROP TABLE IF EXISTS `generated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tto` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `trx` varchar(255) NOT NULL,
  `tm` varchar(255) NOT NULL,
  `msg` blob,
  `typ` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generated`
--

LOCK TABLES `generated` WRITE;
/*!40000 ALTER TABLE `generated` DISABLE KEYS */;
INSERT INTO `generated` VALUES (1,'nipa@dabua.com','10000','2005160800275608','1463752827',_binary 'Eid Gift','0'),(2,'zssuchi@gmail.com','50','1401170251169058','1484340676',_binary 'Gift','0'),(3,'zssuchi@gmail.com','50','1401170251501326','1484340710',_binary 'Gift','0'),(4,'abirkhan75@gmail.com','15','1501170330558692','1484429455',_binary '51\r\n','0');
/*!40000 ALTER TABLE `generated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `btext` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'About Us',_binary '<p style=\"text-align: justify;\"><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem expedita, dolore distinctio a sequi eum libero repellat adipisci quos maiores rerum vel reprehenderit inventore architecto porro esse pariatur, quo suscipit aliquid vero. Hic rem, officia dolor ad fuga natus totam fugiat dignissimos nihil facere, repellat, voluptates soluta ducimus exercitationem magni consectetur maiores autem error deleniti eaque dolore reiciendis laudantium quasi!</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Ad iste itaque eligendi est sed accusantium, deserunt recusandae at optio quis magnam rem, porro temporibus perspiciatis deleniti mollitia nostrum atque repellendus esse officia cupiditate consequuntur. Asperiores consequuntur, eos vel illo dolorem quod, doloremque repudiandae perspiciatis libero quae recusandae, reprehenderit cum ipsam earum velit ullam dolores unde ab! Voluptatum reiciendis, laudantium distinctio ab quia aperiam consequuntur iusto sint at veritatis qui adipisci inventore delectus cumque architecto labore iure quaerat eligendi! Quae consequatur quaerat non aut id reiciendis doloremque pariatur odit quod repellat. Culpa at non nulla voluptas dignissimos labore, dolor, ipsam, deleniti doloribus optio cumque, tenetur. Distinctio, tempore, esse! Ex autem exercitationem, excepturi assumenda odio cupiditate mollitia voluptatum. Quod, perferendis! Itaque debitis qui doloribus placeat ab quod voluptates ipsum dolor culpa commodi magnam, nostrum illo distinctio id quidem similique, rem, nemo perspiciatis ullam doloremque at alias. Sequi corrupti esse, officia laborum, libero natus</p>\r\n<p style=\"text-align: justify;\">cupiditate rem necessitatibus praesentium, tempora porro quae voluptas blanditiis impedit. Quo corrupti sit, doloribus ea neque laudantium iste facilis consectetur, explicabo, qui voluptatibus officia voluptatum soluta. Qui magnam impedit asperiores! Doloremque magnam qui, molestiae nihil quas officiis libero velit neque totam tempora soluta, dicta unde nobis voluptatum ut eaque saepe nam provident. Eos impedit, quasi placeat distinctio, asperiores ex inventore, quis magnam dolor officiis modi eum, eaque culpa voluptas? Exercitationem maxime praesentium libero voluptas officiis magnam saepe, asperiores quod id distinctio sequi repudiandae velit aut, ipsam aspernatur itaque voluptatem tempora placeat eaque iure explicabo hic ducimus atque quibusdam. Beatae, reiciendis quam praesentium suscipit molestiae impedit eligendi. Earum temporibus esse labore sed. Iste fugiat ex autem, ad molestias eaque amet. Unde provident necessitatibus accusamus ex rem eveniet quia soluta ducimus quis, doloribus quisquam qui modi cum quaerat? Officia, esse laudantium porro voluptas iure atque nostrum debitis officiis. Nobis est eius harum sed repudiandae nihil doloribus ex, qui iure iusto totam laudantium, ratione, quod nam laborum dolorum labore omnis magnam pariatur dignissimos, corporis? Odio debitis similique doloremque quas fugiat nobis molestias ullam laudantium reiciendis. Distinctio corrupti nulla voluptatem nihil inventore consectetur dolore repellat vero unde nobis in velit reprehenderit sit porro blanditiis, voluptatibus, eveniet quaerat. Perspiciatis, aliquid, quos. Inventore atque, vero dolores harum ut nisi beatae. Vitae, quia! Consectetur dolorum fugiat ipsa temporibus vero, aliquid nobis tenetur incidunt maiores necessitatibus recusandae modi eligendi animi ut, error minima laborum voluptatibus ipsam. Vel quod, et ea ullam, molestiae quidem ut praesentium minima provident distinctio aperiam incidunt nesciunt itaque, libero asperiores iure temporibus. Sequi dolorem necessitatibus hic cum voluptates pariatur molestias, delectus veniam excepturi incidunt asperiores est eum ipsa odit reiciendis placeat nam aliquid eveniet ea quia, neque ab facilis accusantium. Et placeat a aliquam labore dolorum fugit officia totam natus consequuntur?</p>'),(2,'Why US',_binary '<p style=\"text-align: justify;\"><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem expedita, dolore distinctio a sequi eum libero repellat adipisci quos maiores rerum vel reprehenderit inventore architecto porro esse pariatur, quo suscipit aliquid vero. Hic rem, officia dolor ad fuga natus totam fugiat dignissimos nihil facere, repellat, voluptates soluta ducimus exercitationem magni consectetur maiores autem error deleniti eaque dolore reiciendis laudantium quasi!</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Ad iste itaque eligendi est sed accusantium, deserunt recusandae at optio quis magnam rem, porro temporibus perspiciatis deleniti mollitia nostrum atque repellendus esse officia cupiditate consequuntur. Asperiores consequuntur, eos vel illo dolorem quod, doloremque repudiandae perspiciatis libero quae recusandae, reprehenderit cum ipsam earum velit ullam dolores unde ab! Voluptatum reiciendis, laudantium distinctio ab quia aperiam consequuntur iusto sint at veritatis qui adipisci inventore delectus cumque architecto labore iure quaerat eligendi! Quae consequatur quaerat non aut id reiciendis doloremque pariatur odit quod repellat. Culpa at non nulla voluptas dignissimos labore, dolor, ipsam, deleniti doloribus optio cumque, tenetur. Distinctio, tempore, esse! Ex autem exercitationem, excepturi assumenda odio cupiditate mollitia voluptatum. Quod, perferendis! Itaque debitis qui doloribus placeat ab quod voluptates ipsum dolor culpa commodi magnam, nostrum illo distinctio id quidem similique, rem, nemo perspiciatis ullam doloremque at alias. Sequi corrupti esse, officia laborum, libero natus</p>\r\n<p style=\"text-align: justify;\">cupiditate rem necessitatibus praesentium, tempora porro quae voluptas blanditiis impedit. Quo corrupti sit, doloribus ea neque laudantium iste facilis consectetur, explicabo, qui voluptatibus officia voluptatum soluta. Qui magnam impedit asperiores! Doloremque magnam qui, molestiae nihil quas officiis libero velit neque totam tempora soluta, dicta unde nobis voluptatum ut eaque saepe nam provident. Eos impedit, quasi placeat distinctio, asperiores ex inventore, quis magnam dolor officiis modi eum, eaque culpa voluptas? Exercitationem maxime praesentium libero voluptas officiis magnam saepe, asperiores quod id distinctio sequi repudiandae velit aut, ipsam aspernatur itaque voluptatem tempora placeat eaque iure explicabo hic ducimus atque quibusdam. Beatae, reiciendis quam praesentium suscipit molestiae impedit eligendi. Earum temporibus esse labore sed. Iste fugiat ex autem, ad molestias eaque amet. Unde provident necessitatibus accusamus ex rem eveniet quia soluta ducimus quis, doloribus quisquam qui modi cum quaerat? Officia, esse laudantium porro voluptas iure atque nostrum debitis officiis. Nobis est eius harum sed repudiandae nihil doloribus ex, qui iure iusto totam laudantium, ratione, quod nam laborum dolorum labore omnis magnam pariatur dignissimos, corporis? Odio debitis similique doloremque quas fugiat nobis molestias ullam laudantium reiciendis. Distinctio corrupti nulla voluptatem nihil inventore consectetur dolore repellat vero unde nobis in velit reprehenderit sit porro blanditiis, voluptatibus, eveniet quaerat. Perspiciatis, aliquid, quos. Inventore atque, vero dolores harum ut nisi beatae. Vitae, quia! Consectetur dolorum fugiat ipsa temporibus vero, aliquid nobis tenetur incidunt maiores necessitatibus recusandae modi eligendi animi ut, error minima laborum voluptatibus ipsam. Vel quod, et ea ullam, molestiae quidem ut praesentium minima provident distinctio aperiam incidunt nesciunt itaque, libero asperiores iure temporibus. Sequi dolorem necessitatibus hic cum voluptates pariatur molestias, delectus veniam excepturi incidunt asperiores est eum ipsa odit reiciendis placeat nam aliquid eveniet ea quia, neque ab facilis accusantium. Et placeat a aliquam labore dolorum fugit officia totam natus consequuntur?</p>'),(3,'Menu 1',_binary '<p style=\"text-align: justify;\"><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem expedita, dolore distinctio a sequi eum libero repellat adipisci quos maiores rerum vel reprehenderit inventore architecto porro esse pariatur, quo suscipit aliquid vero. Hic rem, officia dolor ad fuga natus totam fugiat dignissimos nihil facere, repellat, voluptates soluta ducimus exercitationem magni consectetur maiores autem error deleniti eaque dolore reiciendis laudantium quasi!</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Ad iste itaque eligendi est sed accusantium, deserunt recusandae at optio quis magnam rem, porro temporibus perspiciatis deleniti mollitia nostrum atque repellendus esse officia cupiditate consequuntur. Asperiores consequuntur, eos vel illo dolorem quod, doloremque repudiandae perspiciatis libero quae recusandae, reprehenderit cum ipsam earum velit ullam dolores unde ab! Voluptatum reiciendis, laudantium distinctio ab quia aperiam consequuntur iusto sint at veritatis qui adipisci inventore delectus cumque architecto labore iure quaerat eligendi! Quae consequatur quaerat non aut id reiciendis doloremque pariatur odit quod repellat. Culpa at non nulla voluptas dignissimos labore, dolor, ipsam, deleniti doloribus optio cumque, tenetur. Distinctio, tempore, esse! Ex autem exercitationem, excepturi assumenda odio cupiditate mollitia voluptatum. Quod, perferendis! Itaque debitis qui doloribus placeat ab quod voluptates ipsum dolor culpa commodi magnam, nostrum illo distinctio id quidem similique, rem, nemo perspiciatis ullam doloremque at alias. Sequi corrupti esse, officia laborum, libero natus</p>\r\n<p style=\"text-align: justify;\">cupiditate rem necessitatibus praesentium, tempora porro quae voluptas blanditiis impedit. Quo corrupti sit, doloribus ea neque laudantium iste facilis consectetur, explicabo, qui voluptatibus officia voluptatum soluta. Qui magnam impedit asperiores! Doloremque magnam qui, molestiae nihil quas officiis libero velit neque totam tempora soluta, dicta unde nobis voluptatum ut eaque saepe nam provident. Eos impedit, quasi placeat distinctio, asperiores ex inventore, quis magnam dolor officiis modi eum, eaque culpa voluptas? Exercitationem maxime praesentium libero voluptas officiis magnam saepe, asperiores quod id distinctio sequi repudiandae velit aut, ipsam aspernatur itaque voluptatem tempora placeat eaque iure explicabo hic ducimus atque quibusdam. Beatae, reiciendis quam praesentium suscipit molestiae impedit eligendi. Earum temporibus esse labore sed. Iste fugiat ex autem, ad molestias eaque amet. Unde provident necessitatibus accusamus ex rem eveniet quia soluta ducimus quis, doloribus quisquam qui modi cum quaerat? Officia, esse laudantium porro voluptas iure atque nostrum debitis officiis. Nobis est eius harum sed repudiandae nihil doloribus ex, qui iure iusto totam laudantium, ratione, quod nam laborum dolorum labore omnis magnam pariatur dignissimos, corporis? Odio debitis similique doloremque quas fugiat nobis molestias ullam laudantium reiciendis. Distinctio corrupti nulla voluptatem nihil inventore consectetur dolore repellat vero unde nobis in velit reprehenderit sit porro blanditiis, voluptatibus, eveniet quaerat. Perspiciatis, aliquid, quos. Inventore atque, vero dolores harum ut nisi beatae. Vitae, quia! Consectetur dolorum fugiat ipsa temporibus vero, aliquid nobis tenetur incidunt maiores necessitatibus recusandae modi eligendi animi ut, error minima laborum voluptatibus ipsam. Vel quod, et ea ullam, molestiae quidem ut praesentium minima provident distinctio aperiam incidunt nesciunt itaque, libero asperiores iure temporibus. Sequi dolorem necessitatibus hic cum voluptates pariatur molestias, delectus veniam excepturi incidunt asperiores est eum ipsa odit reiciendis placeat nam aliquid eveniet ea quia, neque ab facilis accusantium. Et placeat a aliquam labore dolorum fugit officia totam natus consequuntur?</p>'),(4,'Menu 2',_binary '<p style=\"text-align: justify;\"><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem expedita, dolore distinctio a sequi eum libero repellat adipisci quos maiores rerum vel reprehenderit inventore architecto porro esse pariatur, quo suscipit aliquid vero. Hic rem, officia dolor ad fuga natus totam fugiat dignissimos nihil facere, repellat, voluptates soluta ducimus exercitationem magni consectetur maiores autem error deleniti eaque dolore reiciendis laudantium quasi!</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Ad iste itaque eligendi est sed accusantium, deserunt recusandae at optio quis magnam rem, porro temporibus perspiciatis deleniti mollitia nostrum atque repellendus esse officia cupiditate consequuntur. Asperiores consequuntur, eos vel illo dolorem quod, doloremque repudiandae perspiciatis libero quae recusandae, reprehenderit cum ipsam earum velit ullam dolores unde ab! Voluptatum reiciendis, laudantium distinctio ab quia aperiam consequuntur iusto sint at veritatis qui adipisci inventore delectus cumque architecto labore iure quaerat eligendi! Quae consequatur quaerat non aut id reiciendis doloremque pariatur odit quod repellat. Culpa at non nulla voluptas dignissimos labore, dolor, ipsam, deleniti doloribus optio cumque, tenetur. Distinctio, tempore, esse! Ex autem exercitationem, excepturi assumenda odio cupiditate mollitia voluptatum. Quod, perferendis! Itaque debitis qui doloribus placeat ab quod voluptates ipsum dolor culpa commodi magnam, nostrum illo distinctio id quidem similique, rem, nemo perspiciatis ullam doloremque at alias. Sequi corrupti esse, officia laborum, libero natus</p>\r\n<p style=\"text-align: justify;\">cupiditate rem necessitatibus praesentium, tempora porro quae voluptas blanditiis impedit. Quo corrupti sit, doloribus ea neque laudantium iste facilis consectetur, explicabo, qui voluptatibus officia voluptatum soluta. Qui magnam impedit asperiores! Doloremque magnam qui, molestiae nihil quas officiis libero velit neque totam tempora soluta, dicta unde nobis voluptatum ut eaque saepe nam provident. Eos impedit, quasi placeat distinctio, asperiores ex inventore, quis magnam dolor officiis modi eum, eaque culpa voluptas? Exercitationem maxime praesentium libero voluptas officiis magnam saepe, asperiores quod id distinctio sequi repudiandae velit aut, ipsam aspernatur itaque voluptatem tempora placeat eaque iure explicabo hic ducimus atque quibusdam. Beatae, reiciendis quam praesentium suscipit molestiae impedit eligendi. Earum temporibus esse labore sed. Iste fugiat ex autem, ad molestias eaque amet. Unde provident necessitatibus accusamus ex rem eveniet quia soluta ducimus quis, doloribus quisquam qui modi cum quaerat? Officia, esse laudantium porro voluptas iure atque nostrum debitis officiis. Nobis est eius harum sed repudiandae nihil doloribus ex, qui iure iusto totam laudantium, ratione, quod nam laborum dolorum labore omnis magnam pariatur dignissimos, corporis? Odio debitis similique doloremque quas fugiat nobis molestias ullam laudantium reiciendis. Distinctio corrupti nulla voluptatem nihil inventore consectetur dolore repellat vero unde nobis in velit reprehenderit sit porro blanditiis, voluptatibus, eveniet quaerat. Perspiciatis, aliquid, quos. Inventore atque, vero dolores harum ut nisi beatae. Vitae, quia! Consectetur dolorum fugiat ipsa temporibus vero, aliquid nobis tenetur incidunt maiores necessitatibus recusandae modi eligendi animi ut, error minima laborum voluptatibus ipsam. Vel quod, et ea ullam, molestiae quidem ut praesentium minima provident distinctio aperiam incidunt nesciunt itaque, libero asperiores iure temporibus. Sequi dolorem necessitatibus hic cum voluptates pariatur molestias, delectus veniam excepturi incidunt asperiores est eum ipsa odit reiciendis placeat nam aliquid eveniet ea quia, neque ab facilis accusantium. Et placeat a aliquam labore dolorum fugit officia totam natus consequuntur?</p>'),(5,'Menu 3',_binary '<p style=\"text-align: justify;\"><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem expedita, dolore distinctio a sequi eum libero repellat adipisci quos maiores rerum vel reprehenderit inventore architecto porro esse pariatur, quo suscipit aliquid vero. Hic rem, officia dolor ad fuga natus totam fugiat dignissimos nihil facere, repellat, voluptates soluta ducimus exercitationem magni consectetur maiores autem error deleniti eaque dolore reiciendis laudantium quasi!</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Ad iste itaque eligendi est sed accusantium, deserunt recusandae at optio quis magnam rem, porro temporibus perspiciatis deleniti mollitia nostrum atque repellendus esse officia cupiditate consequuntur. Asperiores consequuntur, eos vel illo dolorem quod, doloremque repudiandae perspiciatis libero quae recusandae, reprehenderit cum ipsam earum velit ullam dolores unde ab! Voluptatum reiciendis, laudantium distinctio ab quia aperiam consequuntur iusto sint at veritatis qui adipisci inventore delectus cumque architecto labore iure quaerat eligendi! Quae consequatur quaerat non aut id reiciendis doloremque pariatur odit quod repellat. Culpa at non nulla voluptas dignissimos labore, dolor, ipsam, deleniti doloribus optio cumque, tenetur. Distinctio, tempore, esse! Ex autem exercitationem, excepturi assumenda odio cupiditate mollitia voluptatum. Quod, perferendis! Itaque debitis qui doloribus placeat ab quod voluptates ipsum dolor culpa commodi magnam, nostrum illo distinctio id quidem similique, rem, nemo perspiciatis ullam doloremque at alias. Sequi corrupti esse, officia laborum, libero natus</p>\r\n<p style=\"text-align: justify;\">cupiditate rem necessitatibus praesentium, tempora porro quae voluptas blanditiis impedit. Quo corrupti sit, doloribus ea neque laudantium iste facilis consectetur, explicabo, qui voluptatibus officia voluptatum soluta. Qui magnam impedit asperiores! Doloremque magnam qui, molestiae nihil quas officiis libero velit neque totam tempora soluta, dicta unde nobis voluptatum ut eaque saepe nam provident. Eos impedit, quasi placeat distinctio, asperiores ex inventore, quis magnam dolor officiis modi eum, eaque culpa voluptas? Exercitationem maxime praesentium libero voluptas officiis magnam saepe, asperiores quod id distinctio sequi repudiandae velit aut, ipsam aspernatur itaque voluptatem tempora placeat eaque iure explicabo hic ducimus atque quibusdam. Beatae, reiciendis quam praesentium suscipit molestiae impedit eligendi. Earum temporibus esse labore sed. Iste fugiat ex autem, ad molestias eaque amet. Unde provident necessitatibus accusamus ex rem eveniet quia soluta ducimus quis, doloribus quisquam qui modi cum quaerat? Officia, esse laudantium porro voluptas iure atque nostrum debitis officiis. Nobis est eius harum sed repudiandae nihil doloribus ex, qui iure iusto totam laudantium, ratione, quod nam laborum dolorum labore omnis magnam pariatur dignissimos, corporis? Odio debitis similique doloremque quas fugiat nobis molestias ullam laudantium reiciendis. Distinctio corrupti nulla voluptatem nihil inventore consectetur dolore repellat vero unde nobis in velit reprehenderit sit porro blanditiis, voluptatibus, eveniet quaerat. Perspiciatis, aliquid, quos. Inventore atque, vero dolores harum ut nisi beatae. Vitae, quia! Consectetur dolorum fugiat ipsa temporibus vero, aliquid nobis tenetur incidunt maiores necessitatibus recusandae modi eligendi animi ut, error minima laborum voluptatibus ipsam. Vel quod, et ea ullam, molestiae quidem ut praesentium minima provident distinctio aperiam incidunt nesciunt itaque, libero asperiores iure temporibus. Sequi dolorem necessitatibus hic cum voluptates pariatur molestias, delectus veniam excepturi incidunt asperiores est eum ipsa odit reiciendis placeat nam aliquid eveniet ea quia, neque ab facilis accusantium. Et placeat a aliquam labore dolorum fugit officia totam natus consequuntur?</p>'),(6,'Menu 4',_binary '<p style=\"text-align: justify;\"><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem expedita, dolore distinctio a sequi eum libero repellat adipisci quos maiores rerum vel reprehenderit inventore architecto porro esse pariatur, quo suscipit aliquid vero. Hic rem, officia dolor ad fuga natus totam fugiat dignissimos nihil facere, repellat, voluptates soluta ducimus exercitationem magni consectetur maiores autem error deleniti eaque dolore reiciendis laudantium quasi!</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Ad iste itaque eligendi est sed accusantium, deserunt recusandae at optio quis magnam rem, porro temporibus perspiciatis deleniti mollitia nostrum atque repellendus esse officia cupiditate consequuntur. Asperiores consequuntur, eos vel illo dolorem quod, doloremque repudiandae perspiciatis libero quae recusandae, reprehenderit cum ipsam earum velit ullam dolores unde ab! Voluptatum reiciendis, laudantium distinctio ab quia aperiam consequuntur iusto sint at veritatis qui adipisci inventore delectus cumque architecto labore iure quaerat eligendi! Quae consequatur quaerat non aut id reiciendis doloremque pariatur odit quod repellat. Culpa at non nulla voluptas dignissimos labore, dolor, ipsam, deleniti doloribus optio cumque, tenetur. Distinctio, tempore, esse! Ex autem exercitationem, excepturi assumenda odio cupiditate mollitia voluptatum. Quod, perferendis! Itaque debitis qui doloribus placeat ab quod voluptates ipsum dolor culpa commodi magnam, nostrum illo distinctio id quidem similique, rem, nemo perspiciatis ullam doloremque at alias. Sequi corrupti esse, officia laborum, libero natus</p>\r\n<p style=\"text-align: justify;\">cupiditate rem necessitatibus praesentium, tempora porro quae voluptas blanditiis impedit. Quo corrupti sit, doloribus ea neque laudantium iste facilis consectetur, explicabo, qui voluptatibus officia voluptatum soluta. Qui magnam impedit asperiores! Doloremque magnam qui, molestiae nihil quas officiis libero velit neque totam tempora soluta, dicta unde nobis voluptatum ut eaque saepe nam provident. Eos impedit, quasi placeat distinctio, asperiores ex inventore, quis magnam dolor officiis modi eum, eaque culpa voluptas? Exercitationem maxime praesentium libero voluptas officiis magnam saepe, asperiores quod id distinctio sequi repudiandae velit aut, ipsam aspernatur itaque voluptatem tempora placeat eaque iure explicabo hic ducimus atque quibusdam. Beatae, reiciendis quam praesentium suscipit molestiae impedit eligendi. Earum temporibus esse labore sed. Iste fugiat ex autem, ad molestias eaque amet. Unde provident necessitatibus accusamus ex rem eveniet quia soluta ducimus quis, doloribus quisquam qui modi cum quaerat? Officia, esse laudantium porro voluptas iure atque nostrum debitis officiis. Nobis est eius harum sed repudiandae nihil doloribus ex, qui iure iusto totam laudantium, ratione, quod nam laborum dolorum labore omnis magnam pariatur dignissimos, corporis? Odio debitis similique doloremque quas fugiat nobis molestias ullam laudantium reiciendis. Distinctio corrupti nulla voluptatem nihil inventore consectetur dolore repellat vero unde nobis in velit reprehenderit sit porro blanditiis, voluptatibus, eveniet quaerat. Perspiciatis, aliquid, quos. Inventore atque, vero dolores harum ut nisi beatae. Vitae, quia! Consectetur dolorum fugiat ipsa temporibus vero, aliquid nobis tenetur incidunt maiores necessitatibus recusandae modi eligendi animi ut, error minima laborum voluptatibus ipsam. Vel quod, et ea ullam, molestiae quidem ut praesentium minima provident distinctio aperiam incidunt nesciunt itaque, libero asperiores iure temporibus. Sequi dolorem necessitatibus hic cum voluptates pariatur molestias, delectus veniam excepturi incidunt asperiores est eum ipsa odit reiciendis placeat nam aliquid eveniet ea quia, neque ab facilis accusantium. Et placeat a aliquam labore dolorum fugit officia totam natus consequuntur?</p>'),(7,'Contact',_binary '<p style=\"text-align: justify;\"><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem expedita, dolore distinctio a sequi eum libero repellat adipisci quos maiores rerum vel reprehenderit inventore architecto porro esse pariatur, quo suscipit aliquid vero. Hic rem, officia dolor ad fuga natus totam fugiat dignissimos nihil facere, repellat, voluptates soluta ducimus exercitationem magni consectetur maiores autem error deleniti eaque dolore reiciendis laudantium quasi!</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Ad iste itaque eligendi est sed accusantium, deserunt recusandae at optio quis magnam rem, porro temporibus perspiciatis deleniti mollitia nostrum atque repellendus esse officia cupiditate consequuntur. Asperiores consequuntur, eos vel illo dolorem quod, doloremque repudiandae perspiciatis libero quae recusandae, reprehenderit cum ipsam earum velit ullam dolores unde ab! Voluptatum reiciendis, laudantium distinctio ab quia aperiam consequuntur iusto sint at veritatis qui adipisci inventore delectus cumque architecto labore iure quaerat eligendi! Quae consequatur quaerat non aut id reiciendis doloremque pariatur odit quod repellat. Culpa at non nulla voluptas dignissimos labore, dolor, ipsam, deleniti doloribus optio cumque, tenetur. Distinctio, tempore, esse! Ex autem exercitationem, excepturi assumenda odio cupiditate mollitia voluptatum. Quod, perferendis! Itaque debitis qui doloribus placeat ab quod voluptates ipsum dolor culpa commodi magnam, nostrum illo distinctio id quidem similique, rem, nemo perspiciatis ullam doloremque at alias. Sequi corrupti esse, officia laborum, libero natus</p>\r\n<p style=\"text-align: justify;\">cupiditate rem necessitatibus praesentium, tempora porro quae voluptas blanditiis impedit. Quo corrupti sit, doloribus ea neque laudantium iste facilis consectetur, explicabo, qui voluptatibus officia voluptatum soluta. Qui magnam impedit asperiores! Doloremque magnam qui, molestiae nihil quas officiis libero velit neque totam tempora soluta, dicta unde nobis voluptatum ut eaque saepe nam provident. Eos impedit, quasi placeat distinctio, asperiores ex inventore, quis magnam dolor officiis modi eum, eaque culpa voluptas? Exercitationem maxime praesentium libero voluptas officiis magnam saepe, asperiores quod id distinctio sequi repudiandae velit aut, ipsam aspernatur itaque voluptatem tempora placeat eaque iure explicabo hic ducimus atque quibusdam. Beatae, reiciendis quam praesentium suscipit molestiae impedit eligendi. Earum temporibus esse labore sed. Iste fugiat ex autem, ad molestias eaque amet. Unde provident necessitatibus accusamus ex rem eveniet quia soluta ducimus quis, doloribus quisquam qui modi cum quaerat? Officia, esse laudantium porro voluptas iure atque nostrum debitis officiis. Nobis est eius harum sed repudiandae nihil doloribus ex, qui iure iusto totam laudantium, ratione, quod nam laborum dolorum labore omnis magnam pariatur dignissimos, corporis? Odio debitis similique doloremque quas fugiat nobis molestias ullam laudantium reiciendis. Distinctio corrupti nulla voluptatem nihil inventore consectetur dolore repellat vero unde nobis in velit reprehenderit sit porro blanditiis, voluptatibus, eveniet quaerat. Perspiciatis, aliquid, quos. Inventore atque, vero dolores harum ut nisi beatae. Vitae, quia! Consectetur dolorum fugiat ipsa temporibus vero, aliquid nobis tenetur incidunt maiores necessitatibus recusandae modi eligendi animi ut, error minima laborum voluptatibus ipsam. Vel quod, et ea ullam, molestiae quidem ut praesentium minima provident distinctio aperiam incidunt nesciunt itaque, libero asperiores iure temporibus. Sequi dolorem necessitatibus hic cum voluptates pariatur molestias, delectus veniam excepturi incidunt asperiores est eum ipsa odit reiciendis placeat nam aliquid eveniet ea quia, neque ab facilis accusantium. Et placeat a aliquam labore dolorum fugit officia totam natus consequuntur?</p>');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal` varchar(255) NOT NULL,
  `pmuid` varchar(255) NOT NULL,
  `pmsec` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'abirkhan75@hotmail.com','U151','dkbvebnjrtnhb');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reqmoney`
--

DROP TABLE IF EXISTS `reqmoney`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reqmoney` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tto` varchar(255) NOT NULL,
  `frm` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `tm` varchar(255) NOT NULL,
  `msg` blob,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reqmoney`
--

LOCK TABLES `reqmoney` WRITE;
/*!40000 ALTER TABLE `reqmoney` DISABLE KEYS */;
INSERT INTO `reqmoney` VALUES (1,'1','1','50','1484422953','','2'),(2,'1','1','50','1484425613','','2'),(3,'1','3','50','1484435751','','1'),(4,'1','3','50','1484435788','','1'),(5,'1','1','90','1484436105','','1');
/*!40000 ALTER TABLE `reqmoney` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_home`
--

DROP TABLE IF EXISTS `slider_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `btxt` varchar(2555) NOT NULL,
  `stxt` varchar(2555) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_home`
--

LOCK TABLES `slider_home` WRITE;
/*!40000 ALTER TABLE `slider_home` DISABLE KEYS */;
INSERT INTO `slider_home` VALUES (1,'1484432330.jpg','Using E-Wallet','Awesome Services'),(2,'1484432356.jpg','Your Online Cash','We Secure '),(3,'1484432377.jpg','Using E-Wallet ','Super Service');
/*!40000 ALTER TABLE `slider_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx`
--

DROP TABLE IF EXISTS `trx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(255) NOT NULL,
  `byy` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `sig` varchar(255) NOT NULL,
  `typ` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL,
  `tm` varchar(255) NOT NULL,
  `trxid` varchar(255) NOT NULL,
  `msg` blob,
  `refund` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx`
--

LOCK TABLES `trx` WRITE;
/*!40000 ALTER TABLE `trx` DISABLE KEYS */;
INSERT INTO `trx` VALUES (1,'1','0','10000','+','Account Credited','0','1463752827','2005160800275608',_binary 'Eid Gift',9),(2,'2','0','50','+','Account Credited','0','1484340676','1401170251169058',_binary 'Gift',9),(3,'2','0','50','+','Account Credited','0','1484340710','1401170251501326',_binary 'Gift',9),(4,'1','1','10','-','Payment Send','0.85','1484422821','1501170140215747','',0),(5,'1','1','10','+','Payment Received','0','1484422821','1501170140215747','',0),(6,'1','1','10','-','Payment Send','0.85','1484422864','1501170141045800','',1),(7,'1','1','10','+','Payment Received','0','1484422864','1501170141045800','',1),(8,'1','000wd','100','-','Withdraw By PayPal','0','1484423111','1501170145112755',_binary '6151PP',0),(9,'1','000wd','101','-','Withdraw By PerfectMoney','0','1484423177','1501170146175587',_binary 'edfry',0),(10,'1','000wd','500','-','Withdraw By Bank','0','1484423463','1501170151038063',_binary 'Banks ;)',0),(11,'1','1','10','-','Refund Send','0','1484423565','1501170141045800',_binary 'REFUNDED',1),(12,'1','1','10','+','Refund Received','0','1484423565','1501170141045800',_binary 'REFUNDED',1),(13,'1','0','15','+','Account Credited','0','1484429455','1501170330558692',_binary '51\r\n',9),(14,'2','1','10','-','Payment Send','0','1484433526','1501170438467601',_binary 'DEMO TRX',0),(15,'1','2','10','+','Payment Received','0.85','1484433526','1501170438467601',_binary 'DEMO TRX',0),(16,'2','1','10','-','Payment Send','0','1484433532','1501170438526897',_binary 'DEMO TRX',0),(17,'1','2','10','+','Payment Received','0.85','1484433532','1501170438526897',_binary 'DEMO TRX',0),(18,'2','1','10','-','Payment Send','0','1484433532','1501170438521927',_binary 'DEMO TRX',0),(19,'1','2','10','+','Payment Received','0.85','1484433532','1501170438521927',_binary 'DEMO TRX',0),(20,'2','1','10','-','Payment Send','0','1484433533','1501170438536708',_binary 'DEMO TRX',0),(21,'1','2','10','+','Payment Received','0.85','1484433533','1501170438536708',_binary 'DEMO TRX',0),(22,'2','1','10','-','Payment Send','0','1484433533','1501170438537918',_binary 'DEMO TRX',0),(23,'1','2','10','+','Payment Received','0.85','1484433533','1501170438537918',_binary 'DEMO TRX',0),(24,'2','1','10','-','Payment Send','0','1484433534','1501170438547143',_binary 'DEMO TRX',0),(25,'1','2','10','+','Payment Received','0.85','1484433534','1501170438547143',_binary 'DEMO TRX',0),(26,'2','1','10','-','Payment Send','0','1484433534','1501170438545835',_binary 'DEMO TRX',0),(27,'1','2','10','+','Payment Received','0.85','1484433534','1501170438545835',_binary 'DEMO TRX',0),(28,'2','1','10','-','Payment Send','0','1484433534','1501170438549147',_binary 'DEMO TRX',0),(29,'1','2','10','+','Payment Received','0.85','1484433534','1501170438549147',_binary 'DEMO TRX',0),(30,'2','1','10','-','Payment Send','0','1484433537','1501170438576417',_binary 'DEMO TRX',0),(31,'1','2','10','+','Payment Received','0.85','1484433537','1501170438576417',_binary 'DEMO TRX',0),(32,'1','3','50','-','Send Payment on Request','0','1484435989','1501170519498426','',0),(33,'3','1','50','+','Received Payment on Request','2.85','1484435989','1501170519498426','',0),(34,'1','3','50','-','Send Payment on Request','0','1484436019','1501170520191711','',0),(35,'3','1','50','+','Received Payment on Request','2.85','1484436019','1501170520191711','',0),(36,'1','1','90','-','Send Payment on Request','0','1484436117','1501170521573910','',1),(37,'1','1','90','+','Received Payment on Request','4.85','1484436117','1501170521573910','',1),(38,'1','1','85.15','-','Refund Send','0','1484436130','1501170521573910','',1),(39,'1','1','85.15','+','Refund Received','0','1484436130','1501170521573910','',1);
/*!40000 ALTER TABLE `trx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_agent`
--

DROP TABLE IF EXISTS `trx_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trx_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `who` varchar(255) NOT NULL,
  `byy` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `sig` varchar(255) NOT NULL,
  `typ` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL,
  `tm` varchar(255) NOT NULL,
  `trxid` varchar(255) NOT NULL,
  `msg` blob,
  `refund` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_agent`
--

LOCK TABLES `trx_agent` WRITE;
/*!40000 ALTER TABLE `trx_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mallu` varchar(255) NOT NULL DEFAULT '0',
  `block` varchar(255) NOT NULL DEFAULT '0',
  `sid` varchar(255) NOT NULL,
  `mv` varchar(1) NOT NULL DEFAULT '0',
  `mvcode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Abir','Khan','1990*03*1','BD','female','+8801821525007','abirkhan75@gmail.com','c3c21805b342901ec009ca995efaae16','9289','0','9d07bfda21aae3fbaeb0b3e07c6be20b','1','886573'),(2,'Demo','Access','1993*08*06','BD','female','8801924036688','admin@thesoftking.com','21232f297a57a5a743894a0e4a801fc3','910','0','d6ab0b084ff69e69b015a26411ad9f97','1','971380'),(3,'We','Host','1990*01*25','BD','male','8801924036687','wehost.pw@gmail.com','f677cf55f08fa56704876567e7c8d3e6','94','0','63bcb1fe369e130d3413bbcde41cadd3','1','737190');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verify_docs`
--

DROP TABLE IF EXISTS `verify_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verify_docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usid` varchar(255) NOT NULL,
  `typ` varchar(255) NOT NULL,
  `d1` varchar(255) NOT NULL,
  `d2` varchar(255) NOT NULL,
  `msg` blob,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verify_docs`
--

LOCK TABLES `verify_docs` WRITE;
/*!40000 ALTER TABLE `verify_docs` DISABLE KEYS */;
INSERT INTO `verify_docs` VALUES (1,'1','Pasport','201701130442164137ABIR.jpg','201701130442161916ABIR.jpg','','0');
/*!40000 ALTER TABLE `verify_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wd`
--

DROP TABLE IF EXISTS `wd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(255) NOT NULL,
  `usr` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `tm` varchar(255) NOT NULL,
  `details` blob,
  `msg` blob,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wd`
--

LOCK TABLES `wd` WRITE;
/*!40000 ALTER TABLE `wd` DISABLE KEYS */;
INSERT INTO `wd` VALUES (1,'PayPal','1','100','1484423111',_binary 'Paypal Email: abirkhan75@gmail.com',_binary '6151PP','0'),(2,'PerfectMoney','1','101','1484423177',_binary 'PerfectMoney Account: PMUSD',_binary 'edfry','0'),(3,'Bank','1','500','1484423463',_binary '\nAccount Name: Abir Khan<br/>\nAccount No: 105.152.0255<br/>\nBank Name: DBBL<br/>\nBranch: Pabna<br/>\nSWIFT CODE: DBBLBDDH<br/>\nCountry: Bangladesh<br/>\nFee: 50 USD<br/>\n',_binary 'Banks ;)','1');
/*!40000 ALTER TABLE `wd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:16:26
