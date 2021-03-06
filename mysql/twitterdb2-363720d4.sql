-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: twitterdb2-363720d4
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
-- Table structure for table `follower`
--

DROP TABLE IF EXISTS `follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follower` (
  `USER_ID` varchar(10) NOT NULL,
  `FOLLOWER_ID` varchar(10) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `START_DATE` date NOT NULL,
  PRIMARY KEY (`USER_ID`,`FOLLOWER_ID`),
  KEY `FK_1` (`USER_ID`),
  KEY `FK_2` (`FOLLOWER_ID`),
  CONSTRAINT `FOLLOWER_ibfk_1` FOREIGN KEY (`FOLLOWER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FOLLOWER_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follower`
--

LOCK TABLES `follower` WRITE;
/*!40000 ALTER TABLE `follower` DISABLE KEYS */;
INSERT INTO `follower` VALUES ('dankmemer','jaya_lall','n','2018-10-29'),('dankmemer','princess','n','2018-10-29'),('Diana','dankmemer','n','2018-10-29'),('Diana','princess','n','2018-10-29'),('jaya_lall','tusharone','n','2018-10-21'),('princess','jaya_lall','n','2018-10-21'),('tusharone','dankmemer','n','2018-10-29'),('tusharone','Diana','n','2018-10-29'),('tusharone','jaya_lall','n','2018-10-21'),('tusharone','rajivbro','n','2018-10-26'),('tusharone','varsha_1','n','2018-10-21'),('vaibhav','deathmarks','n','2018-11-17'),('varsha_1','jaya_lall','n','2018-10-21'),('varsha_1','tusharone','n','2018-10-21'),('vikram1','tusharone','n','2018-10-21'),('vikram1','varsha_1','n','2018-10-21');
/*!40000 ALTER TABLE `follower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like` (
  `TWEET_ID` varchar(10) NOT NULL,
  `USER_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`TWEET_ID`,`USER_ID`),
  KEY `FK_6` (`TWEET_ID`),
  KEY `FK_7` (`USER_ID`),
  CONSTRAINT `LIKE_ibfk_1` FOREIGN KEY (`TWEET_ID`) REFERENCES `tweets` (`TWEET_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `LIKE_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like`
--

LOCK TABLES `like` WRITE;
/*!40000 ALTER TABLE `like` DISABLE KEYS */;
INSERT INTO `like` VALUES ('11294','tusharone'),('23789','jaya_lall'),('25640','tusharone'),('30854','vaibhav'),('41524','Diana'),('41524','tusharone'),('45660','tusharone'),('50571','princess'),('50571','tusharone'),('64680','dankmemer');
/*!40000 ALTER TABLE `like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `SENDER_ID` varchar(10) NOT NULL,
  `RECIEVER_ID` varchar(10) NOT NULL,
  `MESSAGE_ID` varchar(10) NOT NULL,
  `CONTENT` varchar(100) NOT NULL,
  `DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`MESSAGE_ID`),
  KEY `FK_13` (`SENDER_ID`),
  KEY `FK_14` (`RECIEVER_ID`),
  CONSTRAINT `MESSAGES_ibfk_1` FOREIGN KEY (`SENDER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `MESSAGES_ibfk_2` FOREIGN KEY (`RECIEVER_ID`) REFERENCES `user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES ('tusharone','jaya_lall','169624','Hey sweetie','2018-10-28 12:11:15'),('tusharone','jaya_lall','17528','Hey Looks like the heat is here.','2018-10-21 06:35:13'),('tusharone','dankmemer','28370','Looking forward to meet you','2018-10-29 05:03:18'),('rajivbro','tusharone','411422','Oye bro kidhar hai aajkal ','2018-10-21 07:11:07'),('tusharone','dankmemer','66427','Yo whasssup','2018-10-29 05:02:41'),('princess','jaya_lall','76125','heeeey','2018-10-21 06:57:04'),('tusharone','varsha_1','887931','Hi there!','2018-10-21 06:23:33'),('Coolboi','rajivbro','910626','Yo bro whassssup','2018-10-27 05:36:29');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `NOTIFY_ID` varchar(10) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USER_ID` varchar(10) NOT NULL,
  `NOTIFIER_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`NOTIFY_ID`),
  KEY `FK_10` (`USER_ID`),
  KEY `FK_11` (`NOTIFIER_ID`),
  CONSTRAINT `NOTIFICATION_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES ('131128','tusharone Messaged you','2018-10-21 06:35:13','tusharone','jaya_lall'),('133109','rajivbro Messaged you','2018-10-21 07:11:07','rajivbro','tusharone'),('1570','Diana Replied on Your Post','2018-10-29 05:14:52','Diana',''),('1648','vaibhav Liked Your Post','2018-11-17 09:32:43','vaibhav','deathmarks'),('181','tusharone Replied on Your Post','2018-10-29 05:19:36','tusharone',''),('2000','tusharone Liked Your Post','2018-10-29 07:06:42','tusharone','dankmemer'),('2155','tusharone Liked Your Post','2018-10-26 08:39:52','tusharone','tusharone'),('2194','tusharone Replied on Your Post','2018-10-29 07:06:54','tusharone',''),('228938','tusharone Messaged you','2018-10-29 05:03:18','tusharone','dankmemer'),('3379','tusharone Liked Your Post','2018-10-29 05:05:24','tusharone','dankmemer'),('3423','princess Liked Your Post','2018-10-26 10:31:03','princess','varsha_1'),('351','tusharone Liked Your Post','2018-10-21 06:34:42','tusharone','varsha_1'),('366617','tusharone Messaged you','2018-10-29 05:02:41','tusharone','dankmemer'),('3769','tusharone Liked Your Post','2018-10-29 05:19:13','tusharone','Diana'),('4243','tusharone Replied on Your Post','2018-10-29 05:01:55','tusharone',''),('4789','tusharone Retweeted Your Post','2018-10-29 05:05:33','tusharone','dankmemer'),('4875','vaibhav Replied on Your Post','2018-11-17 09:32:34','vaibhav',''),('520905','tusharone Messaged you','2018-10-28 12:11:15','tusharone','jaya_lall'),('5283','jaya_lall Liked Your Post','2018-10-21 06:48:03','jaya_lall','tusharone'),('5496','Diana Liked Your Post','2018-10-29 05:14:29','Diana','dankmemer'),('6130','tusharone Replied on Your Post','2018-10-26 08:39:59','tusharone',''),('6703','dankmemer Liked Your Post','2018-10-29 04:51:35','dankmemer','princess'),('704626','Coolboi Messaged you','2018-10-27 05:36:29','Coolboi','rajivbro'),('7352','tusharone Replied on Your Post','2018-10-21 06:25:12','tusharone',''),('7553','tusharone Replied on Your Post','2018-10-29 05:02:15','tusharone',''),('763142','vikram1 Messaged you','2018-10-21 06:45:35','vikram1','tusharone'),('7919','jaya_lall Replied on Your Post','2018-10-21 06:47:56','jaya_lall',''),('8010','Diana Replied on Your Post','2018-10-29 05:14:05','Diana',''),('8012','tusharone Liked Your Post','2018-10-21 06:24:51','tusharone','jaya_lall'),('808873','princess Messaged you','2018-10-21 06:57:04','princess','jaya_lall'),('8174','tusharone Retweeted Your Post','2018-10-29 07:07:06','tusharone','dankmemer'),('8582','tusharone Replied on Your Post','2018-10-21 06:33:16','tusharone',''),('860130','tusharone Messaged you','2018-10-21 06:23:33','tusharone','varsha_1'),('9133','tusharone Liked Your Post','2018-10-21 06:41:49','tusharone','varsha_1'),('9700','dankmemer Replied on Your Post','2018-10-29 04:51:47','dankmemer','');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `TWEET_ID` varchar(10) NOT NULL,
  `USER_ID` varchar(10) NOT NULL,
  `CONTENT` varchar(50) NOT NULL,
  `DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `FK_8` (`TWEET_ID`),
  KEY `FK-9` (`USER_ID`),
  CONSTRAINT `REPLY_ibfk_1` FOREIGN KEY (`TWEET_ID`) REFERENCES `tweets` (`TWEET_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `REPLY_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES ('11294','tusharone','Naturey :) ','2018-10-21 06:25:12'),('50571','tusharone','Yeah right!','2018-10-21 06:33:16'),('23789','jaya_lall','Looking Good :)','2018-10-21 06:47:56'),('45660','tusharone','Some good shit','2018-10-26 08:39:59'),('64680','dankmemer','Be gone Vile creature','2018-10-29 04:51:47'),('41524','tusharone','yeah So many great moments together','2018-10-29 05:01:55'),('35081','tusharone','Improve resolution man','2018-10-29 05:02:15'),('64680','Diana','Same here :)','2018-10-29 05:14:05'),('41524','Diana','You played without me :(','2018-10-29 05:14:52'),('25640','tusharone','Obama takes tips from ACP Pradymun','2018-10-29 05:19:36'),('41524','tusharone','Looking Good','2018-10-29 07:06:54'),('30854','vaibhav','hey am rachit','2018-11-17 09:32:34');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retweet`
--

DROP TABLE IF EXISTS `retweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retweet` (
  `TWEET_ID` varchar(10) NOT NULL,
  `USER_ID` varchar(10) NOT NULL,
  `CONTENT` varchar(150) NOT NULL,
  `DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `FK_4` (`TWEET_ID`),
  KEY `FK_5` (`USER_ID`),
  CONSTRAINT `RETWEET_ibfk_1` FOREIGN KEY (`TWEET_ID`) REFERENCES `tweets` (`TWEET_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RETWEET_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retweet`
--

LOCK TABLES `retweet` WRITE;
/*!40000 ALTER TABLE `retweet` DISABLE KEYS */;
INSERT INTO `retweet` VALUES ('41524','tusharone','Retweet','2018-10-29 05:05:33'),('41524','tusharone','Retweet','2018-10-29 07:07:06');
/*!40000 ALTER TABLE `retweet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweets` (
  `TWEET_ID` varchar(10) NOT NULL,
  `USER_ID` varchar(10) NOT NULL,
  `CONTENT` varchar(150) NOT NULL,
  `IMG` varchar(300) NOT NULL,
  `DATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TWEET_ID`),
  KEY `FK_3` (`USER_ID`),
  CONSTRAINT `TWEETS_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweets`
--

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` VALUES ('11294','jaya_lall','I love being close to nature.Makes me all naturey','tweets/instagram_11.jpg','2018-10-21 18:08:31'),('23789','tusharone','This is my first tweet on Zion.Looking forward to it.','tweets/instagram_3.jpg','2018-10-21 18:01:57'),('25462','tusharone','<p>Retweet-</p>Paintball is lyf','tweets/10387703_780514128712585_8636153785485008754_n.jpg','2018-10-29 05:05:33'),('25640','Diana','Because CID is lyf','tweets/1910502_1510929019160831_8944620236999805206_n_jpgoh=c874b991590957a2661d272579803858_oe=54B90E0E.jpg','2018-10-29 05:10:30'),('30854','deathmarks','hi','','2018-10-21 18:11:41'),('34354','deathmarks','hi','','2018-10-21 18:11:13'),('35081','rajivbro','I am Optimus Prime and I send this message to all ','tweets/op.jpg','2018-10-21 19:10:24'),('41524','dankmemer','Paintball is lyf','tweets/10387703_780514128712585_8636153785485008754_n.jpg','2018-10-29 04:51:01'),('45660','tusharone','Cages are a strange Thing.Built to enslave or built to protect  ','tweets/instagram_12.jpg','2018-10-21 18:03:02'),('50571','varsha_1','This looks a like a cool place to visit.','tweets/instagram_14.jpg','2018-10-21 18:18:52'),('54433','Diana','LAN partyyyy','tweets/FB_20160226_11_11_57_Saved_Picture.jpg','2018-10-29 05:13:05'),('64680','princess','I am upto No Good ','tweets/laugh.jpg','2018-10-21 19:03:54'),('71574','dankmemer','satya vachan','tweets/10357523_591971347614934_7934394326718576313_n_jpgoh=ef953b54d3493ada09c162a4001e4677_oe=55150AFE.jpg','2018-10-29 04:50:10'),('81156','jaya_lall','Zion is Awesome. Zion is Cool. All hail Zion','tweets/11232553_781050122002688_496870046_n.jpg','2018-10-21 18:05:54');
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `USER_ID` varchar(10) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `GENDER` char(1) NOT NULL,
  `PRIVACY` char(1) NOT NULL,
  `LANGUAGES` varchar(20) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `BIO` varchar(50) NOT NULL,
  `BIO_IMG` varchar(300) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `CONTACT_NO` varchar(15) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Coolboi','7cef8a734855777c2a9d0caf42666e691a1dc91c907325c69271ddf0c944bc72','M','N','English','Rajiv Singh','Hi there,I am using Zion','images/instagram_4.jpg','z2cuk@gmail.com','2018-10-02','1234748234'),('dankmemer','519b8158691fbc26ff34f83b2f69d35c1a1dc91c907325c69271ddf0c944bc72','F','N','English','Roshni Shah','Hi there,I am using Zion','images/14707_1408036946178698_4013345381772839963_n[2].jpg','fasf@gmail.com','2018-10-15','2382183744'),('deathmarks','windows8.1','M','N','English','death','Hi there,I am using Zion','images/the-black-and-white-image-of-lord-shiva.jpg','promailharsh@gmail.com','1999-05-18','900588756'),('Diana','3a23bb515e06d0e944ff916e79a7775c1a1dc91c907325c69271ddf0c944bc72','F','N','English','Rakshita Singh','Hi there,I am using Zion','images/1375888_439460139492796_600387983_n.jpg','zcuk@gmail.com','2018-10-03','3632653434'),('extraone','extra','M','N','English','Kulwinder','Hi there,I am using Zion','images/instagram_18.jpg','mhcuk@gmail.com','2018-10-04','23761246442'),('jaya_lall','jaya','F','N','English','Jaya Lall','Hi there,I am using Zion','images/1168963_1525901401047353_2069157675_n.jpg','faswf@gmail.com','2018-10-04','9211400400'),('princess','8afa847f50a716e64932d995c8e7435a1a1dc91c907325c69271ddf0c944bc72','M','N','English','Shikha Upadhyay','Hi there,I am using Zion','images/10991101_1547288178855219_5666916831333803271_n.jpg','shikha@gmail.com','2018-10-04','9234534520'),('rajivbro','411b20485dbb3f07429f11b57ac02bea1a1dc91c907325c69271ddf0c944bc72','M','N','English','Rajiv Sethi','Hi there,I am using Zion','images/op.jpg','rj@gmail.com','2018-10-01','9233100010'),('tusharone','7cef8a734855777c2a9d0caf42666e691a1dc91c907325c69271ddf0c944bc72','M','N','English','Tushar Singh','Hi there,I am using Zion','images/191536-dragon-ball-z-dragon-ball-z-goku-super-saiyan-3.jpg','z2mhcuk@gmail.com','0000-00-00','9211420420'),('vaibhav','1234','M','N','English','SKILLS','Hi there,I am using Zion','','rachitjain@mvaburhanpur.com','2018-11-07','123'),('varsha_1','ff2f87e3b76f13788e41d6feae7c5dbb1a1dc91c907325c69271ddf0c944bc72','M','N','English','Varsha Singhania','Hi there,I am using Zion','images/997084_1503469236568664_4958876887774782609_n.jpg','ahfdaj@gmail.com','2018-10-03','9210420400'),('vikram1','4f03a3d7d3dffa764d27606ff37733111a1dc91c907325c69271ddf0c944bc72','M','N','English','Vikram Seth','Hi there,I am using Zion','images/instagram_15.jpg','vik@gmail.com','2018-10-03','9200420420');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:15:34
