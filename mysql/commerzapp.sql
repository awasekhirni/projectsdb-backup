-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: commerzapp
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
-- Table structure for table `admin_user_conversations`
--

DROP TABLE IF EXISTS `admin_user_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_conversations`
--

LOCK TABLES `admin_user_conversations` WRITE;
/*!40000 ALTER TABLE `admin_user_conversations` DISABLE KEYS */;
INSERT INTO `admin_user_conversations` VALUES (11,'gfdg',13,'fdgfdgdf','2018-11-29 08:40:03','2018-11-29 08:40:03'),(14,'jrf',13,'dfsdfsdf','2018-12-04 13:14:33','2018-12-04 13:14:33');
/*!40000 ALTER TABLE `admin_user_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_messages`
--

DROP TABLE IF EXISTS `admin_user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_messages`
--

LOCK TABLES `admin_user_messages` WRITE;
/*!40000 ALTER TABLE `admin_user_messages` DISABLE KEYS */;
INSERT INTO `admin_user_messages` VALUES (28,11,'fdgfdgdf',NULL,'2018-11-29 08:40:03','2018-11-29 08:40:03'),(31,14,'dfsdfsdf',NULL,'2018-12-04 13:14:34','2018-12-04 13:14:34');
/*!40000 ALTER TABLE `admin_user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Administrator',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','admin@gmail.com','0000000000','Administrator','15455012941535429467review-profile.png','$2y$10$9qkomlAvMPVMjqktEM5ekuPLVjR/xY8Vu04xBAd0jt6Y/fN0MgX.C',1,'Vq7OIVYpInRKYAXHRmzVu6kl6Kfd8yKidv4OQfkkeyR84gdnd3LyRZrYrX8Z','2018-02-28 23:27:08','2018-12-23 05:54:54'),(2,'Wu ZI Mu','wuzimu@gmail.com','3242342345436554654645','Staff','1539171190profile3.jpg','$2y$10$f5TJcOwfSAUu1D.doxAZhuZBZdqrvrN1CVTMn8nPh3EY.XveZEBw2',1,NULL,'2018-10-10 11:33:10','2018-10-10 11:33:10');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertises`
--

DROP TABLE IF EXISTS `advertises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `script` text,
  `size` varchar(191) NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertises`
--

LOCK TABLES `advertises` WRITE;
/*!40000 ALTER TABLE `advertises` DISABLE KEYS */;
INSERT INTO `advertises` VALUES (3,'banner','1520953940add.jpg','Advertisement','http://geniusocean.com/',NULL,'728x90',5,1),(4,'banner','1520953955ad1.jpg','Advertisement','http://geniusocean.com/',NULL,'300x250',5,1);
/*!40000 ALTER TABLE `advertises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `top1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top4` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top1l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top2l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top3l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top4l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom1l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom2l` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'154550106104-min.jpg','154550107202-min.jpg','15455011426-min.jpg','154550108901-min.jpg','1536060875banner-1.jpg','1536060875banner-2.jpg','https://www.google.com/','https://www.google.com/','https://www.google.com/','https://www.google.com/','https://www.google.com/','https://www.google.com/');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (9,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASAâ€™s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI â€” For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And thatâ€™s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth â€” and one of the most active â€” covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean â€” and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldnâ€™t see what,â€ said \r\nTim Jones.\r\n                                    </p>','15455012491534404112latest-news-1.jpg','www.geniusocean.com',25,1,'2018-03-06 09:53:41','2018-12-23 06:02:23',NULL,NULL),(10,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASAâ€™s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI â€” For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And thatâ€™s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth â€” and one of the most active â€” covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean â€” and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldnâ€™t see what,â€ said \r\nTim Jones.\r\n                                    </p>','15455012691534404112latest-news-1.jpg','www.geniusocean.com',13,1,'2018-03-06 09:54:21','2018-12-23 05:54:29',NULL,NULL),(12,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASAâ€™s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI â€” For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And thatâ€™s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth â€” and one of the most active â€” covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean â€” and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldnâ€™t see what,â€ said \r\nTim Jones.\r\n                                    </p>','15455012331534404112latest-news-1.jpg','www.geniusocean.com',19,1,'2018-03-06 22:04:20','2019-01-21 11:54:17',NULL,NULL),(13,'How to design effective arts?','<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASAâ€™s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI â€” For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And thatâ€™s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth â€” and one of the most active â€” covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean â€” and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldnâ€™t see what,â€ said \r\nTim Jones.\r\n                                    </p>','1534404112latest-news-1.jpg','www.geniusocean.com',59,1,'2018-03-06 22:04:36','2019-01-19 09:32:01',NULL,NULL);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'1525528423client_logo_01.png','https://www.google.com/'),(2,'1525528470client_logo_02.png','https://www.google.com/'),(3,'1525528512client_logo_03.png','https://www.google.com/'),(4,'1525528518client_logo_04.png','https://www.google.com/'),(5,'1525528524client_logo_05.png','https://www.google.com/'),(6,'1525528531client_logo_06.png','https://www.google.com/'),(7,'1525528531client_logo_06.png','https://www.google.com/'),(8,'1525528536client_logo_07.png','https://www.google.com/'),(9,'1525528542client_logo_08.png','https://www.google.com/'),(10,'1525528634client_logo_10.png','https://www.google.com/'),(18,'1535438306client_logo_11.png','https://www.google.com/'),(19,'1535438312client_logo_09.png','https://www.google.com/'),(21,'1535438321client_logo_10.png','https://www.google.com/'),(22,'1535438325client_logo_06.png','https://www.google.com/'),(23,'1535438329client_logo_04.png','https://www.google.com/'),(24,'1535438337client_logo_03.png','https://www.google.com/'),(26,'15455016451536465813client_logo_05.png',NULL),(27,'15455016671525528542client_logo_08.png','https://www.google.com/'),(28,'15455016801535438325client_logo_06.png','geniusocean.com/'),(29,'15455016951525528536client_logo_07.png','geniusocean.com/');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bloodgroups_slug_unique` (`cat_slug`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (11,'Category 1','cat1',1,'1536219926computer.png'),(12,'Category 2','cat2',1,'15455525631536057812checked.png'),(13,'Category 3','cat3',1,'15455526071536057812refresh-button.png'),(14,'Category 4','cat4',1,'15455526191536057837customer-support.png'),(15,'Category 5','cat5',1,'15455526281536058640delivery-van.png'),(16,'Category 6','cat6',1,'15455526451539837442customer-support.png'),(17,'Category 7','cat7',1,NULL),(18,'Category 8','cat8',1,NULL),(19,'Category 9','cat9',1,NULL),(20,'Category 10','cat10',1,NULL),(21,'Category 11','cat11',1,NULL),(23,'Category 12','cat12',1,NULL),(24,'Category 13','cat13',1,NULL),(25,'Category 14','cat14',1,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `childcategories`
--

DROP TABLE IF EXISTS `childcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `childcategories` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `subcategory_id` int(191) unsigned NOT NULL,
  `child_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childcategories`
--

LOCK TABLES `childcategories` WRITE;
/*!40000 ALTER TABLE `childcategories` DISABLE KEYS */;
INSERT INTO `childcategories` VALUES (14,8,'Child Category 1','c1',1),(15,8,'Child Category 2','c2',1),(16,8,'Child Category 3','c3',1),(17,9,'Child Category 4','c4',1),(18,9,'Child Category 5','c5',1),(19,10,'Child Category 6','c6',1);
/*!40000 ALTER TABLE `childcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) unsigned NOT NULL,
  `product_id` int(191) unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES (1,'referral','www.facebook.com',5,0,NULL),(2,'referral','geniusocean.com',2,0,NULL),(3,'browser','Windows 10',2760,0,NULL),(4,'browser','Linux',221,0,NULL),(5,'browser','Unknown OS Platform',384,0,NULL),(6,'browser','Windows 7',415,0,NULL),(7,'referral','yandex.ru',15,0,NULL),(8,'browser','Windows 8.1',536,0,NULL),(9,'referral','www.google.com',6,0,NULL),(10,'browser','Android',348,0,NULL),(11,'browser','Mac OS X',502,0,NULL),(12,'referral','l.facebook.com',1,0,NULL),(13,'referral','codecanyon.net',6,0,NULL),(14,'browser','Windows XP',2,0,NULL),(15,'browser','Windows 8',1,0,NULL),(16,'browser','iPad',4,0,NULL),(17,'browser','Ubuntu',1,0,NULL),(18,'browser','iPhone',3,0,NULL);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'eqwe',1,12.22,NULL,9,1,'2018-09-01','2018-12-31'),(2,'sdsdsasd',0,11,NULL,1,1,'2018-09-01','2018-12-31'),(3,'werwd',0,22,'46',3,1,'2018-09-01','2018-12-31'),(4,'asdasd',1,23.5,'76',1,1,'2018-09-01','2018-12-31'),(5,'kopakopakopa',0,40,NULL,0,1,'2018-10-05','2019-01-31'),(6,'rererere',1,9,NULL,0,1,'2018-12-15','2018-12-29');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','$',1,1),(4,'BDT','à§³',82.92649841308594,0),(6,'EUR','â‚¬',0.864870011806488,0);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email_body` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'new_order','Your Order Placed Successfully','<p>Hello {customer_name},<br>Your order has been placed successfully</p>',1),(2,'new_registration','Welcome To KingCommerce','<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>',1),(3,'vendor_accept','Your Vendor Account Activated','<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>',1),(4,'subscription_warning','Your subscrption plan will end after five days','<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>',1);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Reducing the visibility of the negative information','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!'),(3,'Protecting brand integrity','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!'),(4,'Protecting brand integrity','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!'),(5,'Protecting brand integrity','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum tenetur dicta commodi, totam atque fugit ut magnam laboriosam dignissimos dolorum minus quia sed distinctio in mollitia laborum sint delectus accusamus!');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_sellers`
--

DROP TABLE IF EXISTS `favorite_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_sellers`
--

LOCK TABLES `favorite_sellers` WRITE;
/*!40000 ALTER TABLE `favorite_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(191) unsigned NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,42,'1545385661product (2).jpg'),(2,42,'1545385661product (3).jpg'),(3,42,'1545385661product (4).jpg'),(4,42,'1545385661product (5).jpg'),(5,43,'1545385661product (2).jpg'),(6,43,'1545385661product (3).jpg'),(7,43,'1545385661product (4).jpg'),(8,43,'1545385661product (4).jpg'),(9,44,'1545385661product (2).jpg'),(10,44,'1545385661product (3).jpg'),(11,44,'1545385661product (4).jpg'),(12,44,'1545385661product (5).jpg'),(13,45,'1545385661product (2).jpg'),(14,45,'1545385661product (3).jpg'),(15,45,'1545385661product (4).jpg'),(16,45,'1545385661product (5).jpg'),(17,46,'1545385661product (2).jpg'),(18,46,'1545385661product (3).jpg'),(19,46,'1545385661product (4).jpg'),(20,46,'1545385661product (5).jpg'),(21,47,'1545385661product (2).jpg'),(22,47,'1545385661product (3).jpg'),(23,47,'1545385661product (4).jpg'),(24,47,'1545385661product (5).jpg'),(25,48,'1545385661product (2).jpg'),(26,48,'1545385661product (3).jpg'),(28,48,'1545385661product (5).jpg'),(29,49,'1545385661product (2).jpg'),(31,49,'1545385661product (4).jpg'),(32,49,'1545385661product (5).jpg'),(34,50,'1545385661product (3).jpg'),(35,50,'1545385661product (4).jpg'),(36,50,'1545385661product (5).jpg'),(37,51,'1545385661product (2).jpg'),(38,51,'1545385661product (3).jpg'),(39,51,'1545385661product (4).jpg'),(40,51,'1545385661product (5).jpg'),(41,52,'1545385661product (2).jpg'),(42,52,'1545385661product (3).jpg'),(43,52,'1545385661product (4).jpg'),(44,52,'1545385661product (5).jpg'),(45,50,'1545501393product (1)-min.jpg'),(47,49,'1545501426product-(10)-min.jpg'),(48,48,'1545501448product (9)-min.jpg');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generalsettings`
--

DROP TABLE IF EXISTS `generalsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generalsettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bgimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fax` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `np` int(11) NOT NULL DEFAULT '0',
  `fp` int(11) NOT NULL DEFAULT '0',
  `pb` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ss` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcheck` tinyint(4) NOT NULL DEFAULT '1',
  `scheck` tinyint(4) NOT NULL DEFAULT '1',
  `mcheck` tinyint(4) NOT NULL DEFAULT '1',
  `bcheck` tinyint(4) NOT NULL DEFAULT '1',
  `ccheck` tinyint(4) NOT NULL DEFAULT '1',
  `mmi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship` int(191) unsigned NOT NULL,
  `vid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vidimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sign` tinyint(1) NOT NULL DEFAULT '0',
  `slider` tinyint(4) NOT NULL DEFAULT '1',
  `category` tinyint(4) NOT NULL DEFAULT '1',
  `sb` tinyint(4) NOT NULL DEFAULT '1',
  `hv` tinyint(4) NOT NULL DEFAULT '1',
  `ftp` tinyint(4) NOT NULL DEFAULT '1',
  `lp` tinyint(4) NOT NULL DEFAULT '1',
  `pp` tinyint(4) NOT NULL DEFAULT '1',
  `lb` tinyint(4) NOT NULL DEFAULT '1',
  `bs` tinyint(4) NOT NULL DEFAULT '1',
  `ts` tinyint(4) NOT NULL DEFAULT '1',
  `bl` tinyint(4) NOT NULL DEFAULT '1',
  `colors` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loader` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_heading` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_section` tinyint(10) NOT NULL DEFAULT '0',
  `order_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cart_success` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_error` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_success` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_error` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_success` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_error` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_change` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_already` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdraw_charge` int(191) DEFAULT '0',
  `withdraw_fee` int(191) NOT NULL DEFAULT '0',
  `fixed_commission` int(191) DEFAULT '0',
  `percentage_commission` int(191) DEFAULT '0',
  `tax` int(191) DEFAULT '0',
  `ship_info` tinyint(10) NOT NULL DEFAULT '0',
  `multiple_ship` int(191) NOT NULL DEFAULT '0',
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subscribe_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subscribe_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_subscribe` tinyint(1) NOT NULL DEFAULT '1',
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '1',
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `is_affilate` tinyint(1) NOT NULL DEFAULT '0',
  `affilate_charge` int(191) NOT NULL DEFAULT '0',
  `guest_checkout` tinyint(1) DEFAULT '0',
  `affilate_banner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '0',
  `footer_background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generalsettings`
--

LOCK TABLES `generalsettings` WRITE;
/*!40000 ALTER TABLE `generalsettings` DISABLE KEYS */;
INSERT INTO `generalsettings` VALUES (1,'154550162515376137271537337050logo.png','15455008411525426363favicon (1).ico','Online Store','https://geniusocean.com/','1534401824Slider-image3.jpg','1535429167review-bg.jpg','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae','3584 Hickory Heights Drive ,Hanover MD 21076, USA','00 000 000 000','00 000 000 000','admin@geniusocean.com','COPYRIGHT 2018&nbsp;<a href=\"http://geniusocean.com/\">GeniusOcean.com</a>','Lorem ipsum dolor sit amet','https://geniusocean.com/','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam velit, sit debitis enim dicta a! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam velit, sit debitis enim dicta a!',0,10,'shaon143-facilitator-1@gmail.com','pk_test_UnU1Coi1p5qFGwtpjZMRMgJM','sk_test_QQcg3vGsKRPlW6T3dXcNJsor',1,1,0,0,1,'<span style=\"font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: none; font-family: Raleway, sans-serif;\">Faites vos depots sur les numero suivant 42784249 / 78939896 / 04835863</span>','<span style=\"font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: none; font-family: Raleway, sans-serif;\">Bank Compte Bancaire</span>',5,'https://www.youtube.com/watch?v=_sI_Ps7JSEk','1535432669video-bg.jpg','a,b,c,d,x,y,z,k',0,1,1,1,1,1,1,1,1,1,1,1,'#0057ff','1539851805images.JPG','15455007811534395815Blocks-1s-125px.gif','Deal of The Day','GET UP TO 50% OFF','2019/03/28','https://www.google.com/','1536044322countdown-cover.jpg',0,'<h1 class=\"text-center\" style=\"font-family: Rubik, sans-serif; font-weight: 500; color: green;\">Congratulation !!</h1>','<h2 style=\"font-family: Rubik, sans-serif; font-weight: 500; color: rgb(51, 51, 51); font-size: 36px; text-align: center;\">Your Order Has been Confirmed.</h2>','Successfully Added To Cart.','Out Of Stock !!','Successfully Added To Wishlist.','Already Added To Wishlist !!','Successfully Remove From Wishlist.','Successfully Added To Compare.','Already Added To Compare !!','Successfully Remove From Compare.','Invalid Input !!','Color has Changed Successfully.','Size Has Changed Successfully.','Coupon Applied Successfully','No Coupon Found.','This Coupon Has Already Been Applied.',5,5,3,5,10,1,1,0,'<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>','NEWSLETTER','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.','1539773680Slider-image3.jpg',1,1,1,0,1,8,1,'15455529221538057747banner-2.jpg','in-v3.mailjet.com','587','0e05029e2dc70da691aa2223aa53c5be','5df1b6242e86bce602c3fd9adc178460','admin@geniusocean.com','GeniusOcean',1,1,'1545561002footer-bg.jpg',0);
/*!40000 ALTER TABLE `generalsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (3,'1538057747banner-2.jpg','https://www.google.com/'),(4,'1538058113banner-1.jpg','https://www.google.com/');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `home` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fht` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `h` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vdn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faqs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `maq` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `con` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `spe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sucp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dashboard` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reset` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logout` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `np` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rnp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chnp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hcs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lns` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lm` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ston` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `s` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sm` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `al` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dni` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `search` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ec` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sbg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dopd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dol` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dopr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doci` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dosp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `don` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doem` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `app` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `md` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doad` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doph` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dofx` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dofpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dotpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dogpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dolpl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doeml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `doupl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `success` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dttl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ddesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ppr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fpr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cremove` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cimage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cproduct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cedit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cquantity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cupice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cst` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ccs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cpc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `odetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bdetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ship` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `onow` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ships` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pickup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pickups` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `onotes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pickupss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogsss` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contacts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ctry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sctry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cpn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ecpn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `acpn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ft` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `review_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enter_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hot_sale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `latest_special` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `big_sale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured_product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_arrival` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_now` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `week` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `day` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hour` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `minute` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `second` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view_website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wish_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favorite_product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_processing` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_completed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view_all` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `all_categories` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wishlists` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wish_head` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `colors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `linked_accounts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signinup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_registration` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vshop_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `owner_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reg_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `optional` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `welcome` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_dashboard` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `conv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_conv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_conv` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_bonus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `current_balance` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `item_sold` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_earning` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `clear` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favorite_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `messages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `purchased_item` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_withdraw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `affilate_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_products` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_orders` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `withdraw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sliders` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shop_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_cost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_apply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `availability` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wishlist_add` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quick_view` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_condition` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `watch_video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_seller` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `send_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `send_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_send` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `region` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `licence_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_favorite` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `digital_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tax` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `write_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `write_reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reply_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remove` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `update_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `edit_reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_rating` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_vendor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_available` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `compare_cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_compare` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `to_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `view_replies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancel_edit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `see_more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `see_less` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,0,1,'English','HOME','MY ACCOUNT','My Cart','Your Cart is Empty.','Total','CHECKOUT','VIEW CART','ABOUT US','BLOG','BLOG','FAQ','FREQUENTLY ASKED QUESTION','Most Asked Questions','CONTACT US','Your Name','Your Phone','Your Email','Write a Reply','Sign In','LOGIN','Sign Up','Create a new account','Review Description','Postal Code','HAPPY CUSTOMERS','Password','Confirm Password','Dashboard','Edit Profile','Change Password','Logout','Current Password','New Password','Re-Type New Password','Change Password','Top Category','Top Rate','Add To Cart','LATEST BLOGS','Best Sellers','VIEW DETAILS','Subscribe Our Newsletter','SUBSCRIBE','FOOTER LINKS','Send Message','Forgot your Password?','Forgot Password','Email Address','SUBMIT','Orders','Already Have Account? Login','Featured','Out Of Stock','Search','Search For Product','In Stock','Search Result','Source','Qty','Size','Quick Review','Filter Option','Sort By Latest Product','Sort By Oldest Product','Sort By Lowest Price','Sort By Highest Price','All Categories','Price','Search','Popular Tags','Tag','Full Name','Select Payment Method','Paypal','Credit Card','Submit Review','No Review','Related Products','City','Address','Phone Number','Fax','Your rating is','Mobile Money','Bank Wire','Cash On Delivery','Email Address','Update Profile','Enter Your Email','Successfully updated your profile','Reviews','Full Description','Return & Policy','Write a Review','Remove','Image','Product Name','Edit','Quantity','Unit Price','Sub Total','Continue Shopping','Proceed Checkout','Order Details','Billing Details','Shipping Cost','Order Now','Ship To Address','Ship to a Different Address?','Pick Up','Select a PickUp Location','Order Notes','Transaction ID#','Pickup From The Location you Selected','BLOG DETAILS','Recent Posts','Contact','Country','Select Country','Coupon Code','Enter Your Coupn Code','Apply Coupon','Discount','Final Total','What People Are Saying','See How it Works','Enter Code','Tickets','Product Details Page','Hot Sale','Latest Special','Big Save','FEATURED PRODUCTS','NEW ARRIVAL PRODUCTS','SHOP NOW!','Week(s)','Day(s)','Hour(s)','Minute(s)','Second(s)','View Website','Wishlists','Favorite Product(s)','Order(s) Processing !','Order(s) Completed !','View All','All Categories','WISHLIST','Wishlisted Product','OTHERS','Color','Shop Name','Description','Linked Accounts','Sign In / Up','Vendor Registration','Shop Name','Owner Name','Shop Contact Number','Shop Address','Registration Number','Message','This Field is Optional','SELL','Welcome !','User Dashboard','New Conversations.','You Have a New Message.','No New Message.','Affilate Bonus!','Current Balance!','Total Item Sold!','Total Earnings!','Clear All','Customer','Favorite Sellers','Messages','Purchased Items','Affilate Settings','Affilate Withdraw','Affilate Code','Vendor Products','Vendor Orders','Withdraw','Settings','Sliders','Shop Description','Shipping Cost','Social Links','Apply For Vendor','Availability','Add To Wishlist','Quick View','Compare','Product Condition','Estimated Shipping Time','Watch Video','Add To Favorite Seller','Contact Seller','Phone Number','Send Message To Seller','Send To','New Message','Subject','Message','Send','Platform:','Region:','Type:','Login','To Comment','Favorite','Login With Facebook','Login With Google','You must sign in to purchase Digital Product','Tax','COMMENT','COMMENTS','Write Your Comments Here...','Write Your Replies Here...','Edit','Reply','Remove','Update','Edit Your Comment...','Edit Your Reply...','Product Compare','Rating','Vendor','Description','Available','Cart','NO PRODUCTS TO COMPARE.','To Review','You can not provide review before purchase','View Replies','Cancel','See More','See Less'),(2,1,0,'Bangla','à¦¹à§‹à¦®','à¦†à¦®à¦¾à¦° à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','à¦†à¦®à¦¾à¦° à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','à¦†à¦®à¦¾à¦° à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','à¦®à§‹à¦Ÿ','à¦šà§‡à¦•à¦†à¦‰à¦Ÿ','à¦•à¦¾à¦°à§à¦Ÿ à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ','à¦ªà¦¾à¦ à§à¦¯','à¦¬à§à¦²à¦—','à¦¬à§à¦²à¦—à¦¸','à¦«à¦•','à¦«à¦• à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®','à¦«à§à¦¯à¦¾à¦• à¦ªà§ƒà¦·à§à¦ à¦¾ à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®','à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—','à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—à§‡à¦° à¦¨à¦¾à¦®','à¦«à§‹à¦¨à§‡  à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à§à¦¨','à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦‡à¦®à§‡à¦‡à¦²','à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à§à¦¨','à¦¸à¦¾à¦‡à¦¨ à¦‡à¦¨','à¦²à¦—à¦‡à¦¨ à¦•à¦°à§à¦¨','à¦¸à¦¾à¦‡à¦¨ à¦†à¦ª','à¦¸à¦¾à¦‡à¦¨ à¦†à¦ª à¦•à¦°à§à¦¨','à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾ à¦¬à¦¿à¦¬à¦°à¦£','à¦ªà§‹à¦¸à§à¦Ÿà¦¾à¦² à¦•à§‹à¦¡','à¦¶à§à¦­ à¦—à§à¦°à¦¾à¦¹à¦•','à¦¸à¦¾à¦‡à¦¨ à¦†à¦ª à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡','à¦¸à¦¾à¦‡à¦¨ à¦†à¦ª à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§à¦¨','à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡','à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦°à¦¿à¦¸à§‡à¦Ÿ','à¦¸à¦¾à¦‡à¦¨ à¦†à¦‰à¦Ÿ','à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡','à¦¨à¦¤à§à¦¨ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡','à¦¨à¦¤à§à¦¨ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦ªà§à¦¨à¦°à¦¾à¦¯à¦¼ à¦Ÿà¦¾à¦‡à¦ª à¦•à¦°à§à¦¨','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨','à¦¶à§€à¦°à§à¦· à¦¬à¦¿à¦­à¦¾à¦—','à¦¶à§€à¦°à§à¦· à¦¹à¦¾à¦°','à¦•à¦¾à¦°à¦Ÿà§‡ à¦¯à§‹à¦— à¦•à¦°à§à¦¨','à¦¸à¦°à§à¦¬à¦¶à§‡à¦· à¦¬à§à¦²à¦—','à¦¸à§‡à¦°à¦¾ à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾','à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤ à¦¦à§‡à¦–à§à¦¨','à¦¸à¦¾à¦¬à¦¸à§à¦•à§à¦°à¦¾à¦‡à¦¬ à¦•à¦°à§à¦¨','à¦¸à¦¾à¦¬à¦¸à§à¦•à§à¦°à¦¾à¦‡à¦¬ à¦•à¦°à§à¦¨','à¦«à§à¦Ÿà§‡à¦° à¦²à¦¿à¦‚à¦•','à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—  à¦•à¦°à§à¦¨','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦­à§à¦²à§‡ à¦—à§‡à¦›à¦¿','à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦­à§à¦²à§‡ à¦—à§‡à¦šà§‡à¦¨ ?','à¦‡à¦®à§‡à¦‡à¦²','à¦•à§à¦²à¦¿à¦• à¦•à¦°à§à¦¨','à¦¨à¦¤à§à¦¨ à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦•à§à¦°à¦¿à§Ÿà§‡à¦Ÿ à¦•à¦°à§à¦¨','à¦…à¦²à¦°à§‡à¦¡à¦¿ à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦†à¦›à§‡','à¦¬à§ˆà¦¶à¦¿à¦·à§à¦Ÿà§à¦¯à¦¯à§à¦•à§à¦¤','à¦†à¦‰à¦Ÿ à¦…à¦« à¦¸à§à¦Ÿà¦•','à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®','à¦¸à§à¦¥à¦¾à¦¨à¦§à¦¾à¦°à¦• à¦ªà¦¾à¦ à§à¦¯ à¦¸à¦¨à§à¦§à¦¾à¦¨','à¦‰à¦ªà¦²à¦­à§à¦¯','à¦…à¦¨à§à¦¸à¦¨à§à¦§à¦¾à¦¨ à¦«à¦²à¦¾à¦«à¦²','à¦¬à§à¦²à¦— à¦‰à¦¤à§à¦¸','à¦ªà¦°à¦¿à¦®à¦¾à¦£','à¦†à¦•à¦¾à¦°','à¦¦à§à¦°à§à¦¤ à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾','à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦° à¦…à¦ªà¦¶à¦¨','à¦¸à¦°à§à¦¬à¦¶à§‡à¦· à¦²à§‡à¦–à¦¾ à¦¸à¦¾à¦œà¦¾à¦¨','à¦ªà§à¦°à¦¾à¦šà§€à¦¨à¦¤à¦® à¦ªà¦¾à¦ à§à¦¯à¦•à§à¦°à¦® à¦¸à¦¾à¦œà¦¾à¦¨','à¦¸à¦°à§à¦¬à¦¨à¦¿à¦®à§à¦¨ à¦ªà¦¾à¦ à§à¦¯ à¦¸à¦¾à¦œà¦¾à¦¨','à¦¸à¦¾à¦œà¦¾à¦¨à§‹à¦° à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š','à¦¸à¦®à¦¸à§à¦¤ à¦¬à¦¿à¦­à¦¾à¦—','à¦®à§‚à¦²à§à¦¯','à¦…à¦¨à§à¦¸à¦¨à§à¦§à¦¾à¦¨','à¦œà¦¨à¦ªà§à¦°à¦¿à¦¯à¦¼ à¦Ÿà§à¦¯à¦¾à¦—','à¦Ÿà§à¦¯à¦¾à¦—','à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¨à¦¾à¦®','à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦ªà¦¦à§à¦§à¦¤à¦¿','à¦ªà§‡à¦ªà§à¦¯à¦¾à¦²','à¦•à§à¦°à§‡à¦¡à¦¿à¦Ÿ à¦•à¦¾à¦°à§à¦¡','à¦°à§‡à¦­à¦¿à¦à¦“ à¦¸à¦¾à¦¬à¦®à¦¿à¦¤ à¦•à¦°à§à¦¨','à¦¨à§‹ à¦°à§‡à¦­à¦¿à¦à¦“','à¦¸à¦®à§à¦ªà¦°à§à¦•à¦¿à¦¤ à¦ªà¦£à§à¦¯','à¦¸à¦¿à¦Ÿà¦¿','à¦ à¦¿à¦•à¦¾à¦¨à¦¾','à¦«à§‹à¦¨ à¦¨à¦®à§à¦¬à¦°','à¦«à§à¦¯à¦¾à¦•à§à¦¸','à¦†à¦ªà¦¨à¦¾à¦° à¦°à§‡à¦Ÿà¦¿à¦‚','à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦®à¦¾à¦¨à¦¿','à¦¬à§à¦¯à¦¾à¦‚à¦• à¦“à¦¯à¦¼à§à¦¯à¦¾à¦°','à¦•à§à¦¯à¦¾à¦¶ à¦…à¦¨ à¦¡à§‡à¦²à¦¿à¦­à¦¾à¦°à¦¿','à¦‡à¦®à§‡à¦² à¦ à¦¿à¦•à¦¾à¦¨à¦¾','à¦†à¦ªà¦¡à§‡à¦Ÿ','à¦¸à§à¦¥à¦¾à¦¨à¦§à¦¾à¦°à¦• à¦ªà¦¾à¦ à§à¦¯à¦•à§à¦°à¦® à¦¸à¦¾à¦¬à¦¸à§à¦•à§à¦°à¦¾à¦‡à¦¬ à¦•à¦°à§à¦¨','à¦†à¦ªà¦¨à¦¿ à¦¸à¦¾à¦•à¦¸à§‡à¦¸à¦«à§à¦²à§à¦­à¦¾à¦¬à§‡ à¦†à¦ªà¦¡à§‡à¦¤ à¦•à¦°à§‡à¦›à§‡à¦¨','à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾','à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¬à¦°à§à¦£à¦¨à¦¾','à¦«à§‡à¦°à¦¤ à¦à¦¬à¦‚ à¦¨à§€à¦¤à¦¿','à¦à¦•à¦Ÿà¦¿ à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾ à¦²à¦¿à¦–à§à¦¨','à¦•à¦¾à¦°à§à¦Ÿ à¦®à§à¦›à§‡ à¦«à§‡à¦²à§à¦¨','à¦‡à¦®à§‡à¦œ','à¦ªà¦£à§à¦¯ à¦¨à¦¾à¦®','à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾','à¦ªà¦°à¦¿à¦®à¦¾à¦£','à¦‡à¦‰à¦¨à¦¿à¦Ÿ à¦®à§‚à¦²à§à¦¯','à¦¸à¦¾à¦¬ à¦Ÿà§‹à¦Ÿà¦¾à¦²','à¦¶à¦ªà¦¿à¦‚ à¦šà¦¾à¦²à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨','à¦šà§‡à¦•à¦†à¦‰à¦Ÿà§‡ à¦à¦—à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨','à¦…à¦°à§à¦¡à¦¾à¦°','à¦¬à¦¿à¦²à¦¿à¦‚ à¦¬à¦¿à¦¬à¦°à¦£','à¦¶à¦¿à¦ªà¦¿à¦‚ à¦–à¦°à¦š','à¦…à¦°à§à¦¡à¦¾à¦° à¦•à¦°à§à¦¨','à¦¶à¦¿à¦ª à¦•à¦°à§à¦¨','à¦…à¦¨à§à¦¯ à¦ à¦¿à¦•à¦¾à¦¨à¦¾à§à¦¤à§‡ à¦¶à¦¿à¦ª à¦•à¦°à§à¦¨','à¦¬à¦¾à¦›à¦¾à¦‡ à¦•à¦°à§à¦¨','à¦²à§‹à¦•à§‡à¦¶à¦¾à¦¨ à¦ªà¦¿à¦• à¦•à¦°à§à¦¨','à¦…à¦°à§à¦¡à¦¾à¦° à¦¨à§‹à¦Ÿ','à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦¾à¦•à¦¶à¦¨','à¦²à§‹à¦•à§‡à¦¶à¦¾à¦¨ à¦ªà¦¿à¦• à¦•à¦°à§à¦¨','à¦¬à§à¦²à¦— à¦¬à¦¿à¦¬à¦°à¦£','à¦¸à¦¾à¦®à§à¦ªà§à¦°à¦¤à¦¿à¦• à¦ªà§‹à¦¸à§à¦Ÿ','à¦¬à§à¦²à¦— à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—','à¦¦à§‡à¦¶','à¦¦à§‡à¦¶  à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','à¦•à§à¦ªà¦¨ à¦•à§‹à¦¡','à¦•à§à¦ªà¦¨ à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ','à¦•à§à¦ªà¦¨  à¦ªà§à¦°à¦¯à¦¼à§‹à¦— à¦•à¦°à§à¦¨','à¦¡à¦¿à¦¸à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','à¦šà§‚à¦¡à¦¼à¦¾à¦¨à§à¦¤ à¦®à§‹à¦Ÿ','à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾ à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®','à¦­à¦¿à¦¡à¦¿à¦“ à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®','à¦à¦¨à§à¦Ÿà¦¾à¦° à¦•à§‹à¦¡','à¦Ÿà¦¿à¦•à¦¿à¦Ÿ','à¦ªà¦£à§à¦¯ à¦¬à¦¿à¦¬à¦°à¦£','à¦¹à¦Ÿ à¦¬à¦¿à¦•à§à¦°à¦¯à¦¼','à¦¸à¦°à§à¦¬à¦¶à§‡à¦· à¦¬à¦¿à¦¶à§‡à¦·','à¦¬à¦¡à¦¼ à¦¸à¦‚à¦°à¦•à§à¦·à¦£','à¦¬à§ˆà¦¶à¦¿à¦·à§à¦Ÿà§à¦¯à¦¯à§à¦•à§à¦¤ à¦ªà¦£à§à¦¯','à¦¨à¦¤à§à¦¨ à¦†à¦—à¦®à¦¨à§‡à¦° à¦ªà¦£à§à¦¯','à¦à¦–à¦¨à¦‡ à¦•à§‡à¦¨à¦¾à¦•à¦¾à¦Ÿà¦¾ à¦•à¦°à§à¦¨','à¦¸à¦ªà§à¦¤à¦¾à¦¹à§‡à¦°','à¦¦à¦¿à¦¨','à¦˜à¦¨à§à¦Ÿà¦¾','à¦®à¦¿à¦¨à¦¿à¦Ÿ','à¦¸à§‡à¦•à§‡à¦¨à§à¦¡','à¦“à¦¯à¦¼à§‡à¦¬à¦¸à¦¾à¦‡à¦Ÿ à¦¦à§‡à¦–à§à¦¨','à¦‰à¦‡à¦¶à¦²à¦¿à¦¸à§à¦Ÿ','à¦ªà§à¦°à¦¿à¦¯à¦¼ à¦ªà¦£à§à¦¯','à¦…à¦°à§à¦¡à¦¾à¦° à¦ªà§à¦°à¦•à§à¦°à¦¿à¦¯à¦¼à¦¾à¦•à¦°à¦£','à¦…à¦°à§à¦¡à¦¾à¦° à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£','à¦¸à¦¬ à¦¦à§‡à¦–à§à¦¨','à¦¸à¦®à¦¸à§à¦¤ à¦¬à¦¿à¦­à¦¾à¦—','à¦«à§à¦°à¦¨à§à¦Ÿ à¦ªà§‡à¦œ à¦‰à¦‡à¦¶ à¦²à¦¿à¦¸à§à¦Ÿ','à¦«à§à¦°à¦¨à§à¦Ÿ à¦ªà§‡à¦œ à¦‰à¦‡à¦¶ à¦²à¦¿à¦¸à§à¦Ÿ à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®','à¦…à¦¨à§à¦¯','à¦°à¦™','à¦¦à§‹à¦•à¦¾à¦¨à§‡à¦° à¦¨à¦¾à¦®','à¦·à¦ª à¦¡à§‡à¦¸à§à¦•à§à¦°à¦¿à¦ªà§à¦¸à¦¨','à¦²à¦¿à¦™à§à¦•à¦¡ à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','à¦¸à¦¾à¦‡à¦¨ à¦‡à¦¨ / à¦†à¦ª','à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾ à¦¨à¦¿à¦¬à¦¨à§à¦§à¦¨','à¦¦à§‹à¦•à¦¾à¦¨ à¦¨à¦¾à¦®','à¦®à¦¾à¦²à¦¿à¦•à§‡à¦° à¦¨à¦¾à¦®','à¦¦à§‹à¦•à¦¾à¦¨ à¦¨à¦®à§à¦¬à¦°','à¦¦à§‹à¦•à¦¾à¦¨à§‡à¦° à¦ à¦¿à¦•à¦¾à¦¨à¦¾','à¦¨à¦¿à¦¬à¦¨à§à¦§à¦¨ à¦¸à¦‚à¦–à§à¦¯à¦¾','à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾ à¦¬à¦¾à¦°à§à¦¤à¦¾','à¦à¦‡ à¦•à§à¦·à§‡à¦¤à§à¦°à¦Ÿà¦¿ à¦à¦šà§à¦›à¦¿à¦•','à¦¬à¦¿à¦•à§à¦°à§Ÿ','à¦¸à§à¦¬à¦¾à¦—à¦¤à¦® !','à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€ à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡','à¦¨à¦¤à§à¦¨ à¦•à¦¥à§‹à¦ªà¦•à¦¥à¦¨','à¦‡à¦‰ à¦¹à¦¾à¦­à§‡ à¦† à¦¨à¦¿à¦‰  à¦•à¦¨à¦­à¦¾à¦°à¦¸à§‡à¦¸à¦¨','à¦¨à§‹ à¦¨à¦¿à¦‰ à¦•à¦¨à¦­à¦¾à¦°à¦¸à§‡à¦¶à¦¨','à¦†à¦«à¦¿à¦²à§‡à¦Ÿ à¦¬à§‹à¦¨à¦¾à¦¸','à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦¬à§à¦¯à¦¾à¦²à¦¾à¦¨à§à¦¸','à¦†à¦‡à¦Ÿà§‡à¦® à¦¬à¦¿à¦•à§à¦°à¦¿','à¦®à§‹à¦Ÿ à¦‰à¦ªà¦¾à¦°à§à¦œà¦¨','à¦¸à¦¾à¦« à¦•à¦°à§à¦¨','à¦—à§à¦°à¦¾à¦¹à¦•','à¦ªà§à¦°à¦¿à¦¯à¦¼ à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾','à¦¬à¦¾à¦°à§à¦¤à¦¾','à¦•à§à¦°à¦¯à¦¼ à¦†à¦‡à¦Ÿà§‡à¦®','à¦…à§à¦¯à¦¾à¦«à¦¿à¦²à¦¿à¦¯à¦¼à§‡à¦Ÿ à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸','à¦ªà¦¾à¦ à§à¦¯ à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦¹à¦¾à¦°','à¦…à§à¦¯à¦¾à¦«à¦¿à¦²à¦¿à¦¯à¦¼à§‡à¦Ÿ à¦•à§‹à¦¡','à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾ à¦ªà¦£à§à¦¯','à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾ à¦†à¦¦à§‡à¦¶','à¦“à§Ÿà¦¿à¦¥à¦¡à§à¦°à¦¾','à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸','à¦¸à§à¦²à¦¾à¦‡à¦¡à¦¾à¦°à§à¦¸','à¦¦à§‹à¦•à¦¾à¦¨ à¦¬à¦°à§à¦£à¦¨à¦¾','à¦¶à¦¿à¦ªà¦¿à¦‚ à¦–à¦°à¦š','à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦²à¦¿à¦‚à¦•','à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦œà¦¨à§à¦¯ à¦†à¦¬à§‡à¦¦à¦¨ à¦•à¦°à§à¦¨','à¦ªà§à¦°à¦¾à¦ªà§à¦¯à¦¤à¦¾','à¦‰à¦‡à¦¶à¦²à¦¿à¦¸à§à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨','à¦¦à§à¦°à§à¦¤ à¦¦à§‡à¦–à§à¦¨','à¦¤à§à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨','à¦ªà¦£à§à¦¯ à¦¶à¦°à§à¦¤','à¦†à¦¨à§à¦®à¦¾à¦¨à¦¿à¦• à¦¶à¦¿à¦ªà¦¿à¦‚ à¦Ÿà¦¾à¦‡à¦®','à¦­à¦¿à¦¡à¦¿à¦“  à¦¦à§‡à¦–à§à¦¨','à¦ªà§à¦°à¦¿à¦¯à¦¼ à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾ à¦¯à§‹à¦— à¦•à¦°à§à¦¨','à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾','à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾ à¦«à§‹à¦¨ à¦¨à¦®à§à¦¬à¦°','à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾  à¦¬à¦¾à¦°à§à¦¤à¦¾ à¦ªà¦¾à¦ à¦¾à¦¨','à¦ªà¦¾à¦ à¦¾à¦¨ à¦®à§‡à¦¸','à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾ à¦¨à¦¤à§à¦¨ à¦¬à¦¾à¦°à§à¦¤à¦¾','à¦¬à¦¿à¦·à¦¯à¦¼','à¦¬à¦¾à¦°à§à¦¤à¦¾','à¦ªà¦¾à¦ à¦¾à¦¨','Platform','Region','Type','à¦²à¦—à¦‡à¦¨','à¦®à¦¨à§à¦¤à¦¬à§à¦¯ à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾','à¦ªà§à¦°à¦¿à¦¯à¦¼','à¦«à§‡à¦¸à¦¬à§à¦•à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦²à¦—à¦‡à¦¨ à¦•à¦°à§à¦¨','à¦—à§à¦—à¦² à¦à¦° à¦¸à¦¾à¦¥à§‡ à¦²à¦—à¦‡à¦¨ à¦•à¦°à§à¦¨','à¦¡à¦¿à¦œà¦¿à¦Ÿà¦¾à¦² à¦šà§‡à¦•à¦†à¦‰à¦Ÿ à¦¬à¦¾à¦°à§à¦¤à¦¾','à¦•à¦°','à¦®à¦¨à§à¦¤à¦¬à§à¦¯','à¦®à¦¨à§à¦¤à¦¬à§à¦¯','à¦®à¦¨à§à¦¤à¦¬à§à¦¯ à¦²à¦¿à¦–à§à¦¨','à¦‰à¦¤à§à¦¤à¦° à¦²à¦¿à¦–à§à¦¨','à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾','à¦‰à¦¤à§à¦¤à¦°','à¦¸à¦°à¦¾à¦¨','à¦†à¦ªà¦¡à§‡à¦Ÿ','à¦®à¦¨à§à¦¤à¦¬à§à¦¯ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦•à¦°à§à¦¨','à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦•à¦°à§à¦¨','à¦ªà¦£à§à¦¯ à¦¤à§à¦²à¦¨à¦¾','à¦°à§‡à¦Ÿà¦¿à¦‚','à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾','à¦¬à¦°à§à¦£à¦¨à¦¾','à¦‰à¦ªà¦²à¦¬à§à¦§','à¦•à¦¾à¦°à§à¦Ÿ','à¦•à§‹à¦¨ à¦ªà¦£à§à¦¯ à¦¤à§à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨à¥¤','à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾','à¦•à¦¿à¦¨à§à¦¨ à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾ à¦•à¦°à¦¤à§‡','à¦¦à§‡à¦–à§à¦¨','à¦¬à¦¾à¦¤à¦¿à¦²','à¦†à¦°à§‹ à¦¦à§‡à¦–à§à¦¨','à¦•à¦® à¦¦à§‡à¦–à§à¦¨');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `order_id` int(191) unsigned DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
  `user_id` int(191) NOT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (39,14,'BZh91AY&SYaÃZ\0\nÂ€PA@XÃ¿ÃºÂ¿Ã¯Ã¿Ã´Â¿Ã¿Ã¿Ãº`\n\0\0\0\0\0\0\0\0\0\0\r4ÃÂ†ÂšddÃ‚Â¦Â€0Âš4Ã‰Â€\r\ZiÂ‚\r4ÃˆÃ‰Â„M\0a4iÂ“\0\Z4Ã“2\ZiÂ‘Â“Âš\0Ã‚hÃ“&\048iÂ¦d4Ã“#&\r4Â„Ã‘Â¦L\0 hpÃ“LÃˆiÂ¦FL \Zh	Â£LÂ˜\0@Ã*HA4M&ÂŒ 2<ÂÃ½\0ÂžÂ§ÃªÂŸÂ¢zLÂ“Ã‚ÂšÃ‚&ÃÂ‰ÃŠw_\\Ã¿/Â±Ã®~ÂÃ½ÂŸÂ£Ã­{ÃƒÃ\0Ã½Â‘Ã¬Â’hT)ÂºÂ™\ZÃ¡=Ã…FqÃ»F\"Â¢Ã´Â›Â¢Â‘ÃºÃ’*ÂªÂ•UÃ¹Ã†\nÃš*?Ã”T^\nÂ”ll\\`b(ÃœÂ²ÂŒ,hd0lf`Â±Â®Â¦E\ZÂ®Â±u\nÂ—7Â™2EÂ¦S;ÂœÂ†eÂ“8ÃgÂ€Â§Ã‘dÃ•JU2ÂWÂ‹Â·Â·Â‹Â¿Ã­Ã­Ã ~NVÂ¬Ãž\ZzTÃŸÃªxs/Â“Â³Â«vEÃ»Ã²	?Ã‚y!Ã‘Ã…Ãªx[ÃžwÃ€Ã¥)Ã·Â¾Ã³Â¼Â§ Ã§/Â­Â¬Ã¤sÂÃ·Ã„wÂœÃŽÂ…2|NÃ«Ã”Ã˜ÂŸqcÃ¤Ã¤WlÃ¤Ã•vÂ‹,Ã·;3#4Â“Â´Â¡HÂ’Ã˜Â´Â“bÂ‹ÂšÃ˜Ã•vfk>&oÂ›B#\'Â’CÂ±Ã‹CÂ©DÃžÃ¢Â²4YNÃ’Ã¨Ã‚ÂÃ•Ã…WÂ‹\nÂ¢*3Â¤XÂ¨Â¹w)xÃ´5dÃƒÃ§xÂŒ9[Â—fÂ±ÃŽÃ‰dÂºÂŽj*Â°ÃžÂ±Â¢Â‘Â¢Â¤Â²3)Ã›^%Â¡ÂƒÃ¦Âº1Â‘Â‘Â›Â¾Ã­0Ã©r5fTÂ“WS6I7*QÂ¼Â¢Ã†kÂ¬d\rÂžÂ·Ã˜Â³YÂ³fÃ‹Ã‹MTÂ¥Ã§Ã‘u.\nnUÃŽÃ Ã­Â™9Ã™#E81\"KÃ‚Â‹Â–ÃŸhÃ”Ã¸Ã˜ÃžÃ‘Â¦jÂ˜SÂ‘eÂ¹Ã©Â‘xJ*\rÃ…ÂŒÃ®fv7:ÂœÃ¬43Ã±)ÃšR]DÂ”PÂ˜,vÂ·Â–0Ã®Â¬Ã Â§Âƒ)\'2Â¦(nÂ¨Z5/cl>Ã§Â‘Ã¼Â¿&ÃÂ¦Ã\ng3Â™ÂªÃºÂœÂ®(Â»Â•ÂšÂ¬n0]ÃœdÃ•Â“Â¢2Â‹Ã…\"Â£tb1ÂŠÂÃ‘xÂ´eÂ£8Âº4Â‹Ã…Â–ÃŠKÂ°Â¦mfÃŠÃ†JYÃ›hÂ¾ÂŒdÂ±Â©ÂƒÂ‰Â PXÂ¨ÃŒdLÂÃÂ´\\Ã“,Â™Â™ÂšÂ†Â¤ÃÂ–&ÃÂ‰bÃ¢Ã†\rKÂ™FÃƒt`Â¬Ã®LÃ‰Â‘xÂ±Ã²dIÃ»ÂŸjTKÂ¤(Â¢~e$XÂ¨ÂŠ)\"Â…HÃ€Â´K\n)(Â¤Â¡IhÂ±Â‚Â”ÂŠ(RÂŽbÂŽÂšÂ½Â¢ÃŠ*%Au,Â¢YAÂ‘RÃ±Â‹Ã™Â½Ã‹Â¯\"KÂ²Ã’Ã–Â„Z-b%Ã‹Â—^IÂH\\Â¤QÂ©Ã†7Ã¯(o1ÃoÂ‰jÃ/$Â‘?8Â©;T`ÃÃÃŒbFE2Â‹Ã¢.ÃŒÂ¹Â™vÃ¢Â³ÃˆÂ¨Â´n-Ã”ÃÂ¢ÂŠmÂ­Ã±Â¸ÃÃŒYCfÂ›VirÂ—Â±Â“&fÃ³5Â¡Â©i77c}hÃ‹}Ã—+sMÂ™Â–jdYMLÂ£cyEÂLÃ˜ÂŠÃŒÂ±eÂ¥*Â”Ã˜Ã™Â…4fjgÂ¢n47Â›Ã‹F&RÂ’Â¥\'+ÃˆÃ¾[Ã–b=Â¯Â¥Â‡Ã¼Ã Ã‰Ã¸GÂ–9_Â“Â¼Ã½Ãš;xcÃŽÃ‘Ã²7?gÂÃˆÃ¿Â§[Ã¼=Â­#\'ÃÃ´Â©Ã”Ã³Â®ÃƒÃ„Ã¶Ã€|Ã¯Â©Ãž|Ã±Ã«uÃ¸ÂŠÃ·>Â‡KÃœÃ¸cÂ­ÃŒÃ¦YÃ²:cÂ¸Ã¾Â¥Â¤Ã®Â·\Z</Â‰Ã°ÂºÂ™Â½Â±Ã§oÂ‡Â¼Ã¼ÃÃ‡Ã–Ãµ<CÂ‰E\rÃ„ÃºÃ™Â–*sÂ¼Â¡3aÂ„Ã§Â–ÂŽÂ¸ÃµÃ‡CsÃ¯}Â‘NGÃ‰xÃ¼ÃˆÃ´?Â¨Â§Â—Ã±ÂÂž9_Ã®8Â“Ã´Ã…Â¢Ã¤Â´b&Ã¨Ã€Ãžw]$YÃ–Â¹Ã¤q9Ã”tÂŽÂ¤Ã¹\"Â¡Â³Ã´Â‹Ã‡+Â’369LÃ™Ã„t,\rÂ£ÂºÃ¡zÃ„~Â€Ã£&Ã¸Ãµ\rFÃ‘Â¼Â¤PÂ¢Â¢OÂ¹gÃ¤Ãµ:bdÃ™EÂ£Ã…Ã„Ã¢q<Ã®wÃ£Â¸9ÂÃ²>Â¨oK#Âª\'Â¼QÃ®ÂŽÂ¢Ã£Â…ÂÂ©Â¡Â…Ã‹Â©kdÂ¶QÂ…Ã—5K<ÃŠ|Â®Â·ddÃŒÂ›Ã†Ã¢b<c~9Â£Âª7Fg%EÃˆÃ„hqÂŠ$Ãš*1VlÂ£Â’<_hÂ¨ll;eÃÃ±=ÃxSÃÃ²>Ã¦|lÂÂÃÂ Ã¼Ã”NÃ†Ã‘Ã²Â¸ÂŸsÂ½RÃŽÃªZ/ÂƒÃŒÃ‰Ã¯Â®KÂ²6Âdv>ÃœÃ±Â”QcÂ¸Ã¦8Â’ÂŸÃœ=Ã¢$Ã»iRU-I\'Â¡Â¤v\"xÃˆn#RÂŠÂ…ÂžHÃ³\'Ã¢Ã²ÂšFiÃ˜Ã„sÃ‡Âª7Ã…Â£y<Ã‹Ã…Ã¡Â‚Â¢n=M$uÃ†Â‘Ã©GÂ¤Ã•Â›Â¶nuÂ§Â¢wÃ“Ã†Â•%)Ã¿ÃÂ®2NIÃ£ÂÃ¬Ã»Ã–tÃ‡Â•Â‘Ã¥<Ã‘Ã§:Ã¢Â’Â‘IÂ£Â¾Â³Â¥ÂˆÃNeÂ‰Â”Â—#Â­ÃÃ’0Ã˜Ãª7Â´b/&Â¤ÃŠ1Â‹Ã˜Â¦UGÃÃŠ0LÂŒÂŽÂˆÂ¼qhÂ±2E2$Ã¹bÃ‘hÃ¾Â”ÂŒ7Â“Â´Ã©Â‹ ÃƒÂ¸Â¦Ã³Â™#hÂŠÂ…EÃšÂ»k>Â†Ã£PÃš;Â‡Ã¥5\'Â€ÃDÂ¨Ã©ÂŽÂƒ\'Ã†Ãžr\',eQÃ‚>tÃªÂÃ†;Â±cÂž*Â©UZi>XÃ¥fÃž<gÂ¾fPÃ·ÃÃ§h;Ã±-Ã‘Ã¡%:bÃ†Ã£ÂŒrÃ…ÃŽ1ÃµsÂ¾*2Â‹ÃƒCÃ‚ÃÃƒÂŒTXÂÂ‘pÃ™Â¢Ã‡=Ã£tp<Ã§1Â™Ã€ÃœÃÃ°Ã‰Ã«ÂŠÂŠÂ’RÂ¢Â«Ã–TXJEHT***aDQB%TÂ‚XÂ R*HÂ¤Â¨Ã£\ZÃ‰6\'Â–0ÃªtÃ¨Â Ã±\ZÃ„Â±F\"Ã…Â‰Ã’qÂ´mÃ³Â Â¢Ã‘Â‘Â¨Ã®Ã†Ã³qÂ£Hz[Â’7Ã‡mÃ‹xÂ¢Â…Ã‘Â¤pÂŽ32ÂŒ0Â¨ÃœMÃÂ¢oÂŽÂ‰2ÂŒ#ÃˆÃ–7Â”OA?Âª7Â”ÃªÂMÂŽÃŸ%Ã‰Â™:#ÃžÃ¨ÂŽgDÂŸ+CÂ¹KÂ¦#s$`Ã»Ã›Ã˜Â¼{Ã®SÂ¾TKÃ‡CrÃ…Ã£Ã¬XÂ›ÃŸSÂÃ”=Â±Ã§=Ã§Â­ÃÃµÂˆÂGÂ¢zdJ)R,XÂ²ZÂ¢Ã‰Ã¿Ã¢Ã®HÂ§\n:\nBÃ€','Stripe','shipto',NULL,'6',297.11,'txn_1DfOJzJlIV5dN9n7rmIjop1f','ch_1DfOJzJlIV5dN9n7UZ0Syjoy','m01o1544346683','Completed','junnuns@gmail.com','Test','Angola','43534564654645','Address','Washington','1321',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pending','2018-12-09 09:11:29','2018-12-09 09:11:29',NULL,NULL,'$',1,10,10,0),(40,13,'BZh91AY&SYÂ³Â˜|Â¥\0ÂˆÃŸÂ€PÂ XwÃ¸)OÃ¼DÂ¿Ã¿Ã¿Ãº`}BÂ•@Â•A\"Â„Â¡ÃŒ&0a0Âš`\02iÂ cÂ˜L`Ã‚a4Ã€\0dÃ“@Ã‡0Â˜Ã€	Â„Ã‚iÂ€\0Ã‰Â¦ÂÂŽa0	Â€	Â„Ã“\0\0	Â“MÂ’ ÂšOIÂ¡Â¢mIÃ¥Â›HÃšÂ€Â¦iÂšÂ™Â¤Â‚MIÂ´ÃˆdÂÃ©Ã¤ÃˆÂSÃ”ÃAÂ²Â†GÂ©Â™$Â›Ã‰$ÃªGÃˆÃ¾gÃ€Ã¸Â—.XÂ£Ã¤})!qÂ²ÂžÃ<ÂƒÃ`Ã·ÃÃ‰Â»@Ã¾Ã˜:AÂ’OÃ©Â˜ZZÂ‰RÃ±7Ã¡LÂ¦KÃ™Â»Ã¤Â¦TÃ•Â‚Ã®afÂ¬)5lÃ¤Ã‹Â”Â§Ã‰Â¥ÃXÃŒÃ¥,Âš\ZM\nÃ‰Â¹Ã½OÃ‘Â»Ã„vÂ¿Ã‰Â³Ã†Ã­Ã¡Ã›-Ã˜Â‘\"Â“ÃªÃ³ÃƒÃ’Â®Ã¹$Â™ÂŸxÃª0{ÂpÃ«(Ã´ÂžÂ¯fÃŽÃ“Ã­I>Ã¤ÃµÂ™2~Â§Ã¡Â’ÂÃ¬QD1PÃ¨Â£Â­Â†s$Â¥!JÂ’QcÂ¸Â¿YQiMÂ¥)HÂ©Ã¼(Â«KMÂ›Â­,Ãµ6.ÂŽE\ZDrÂ±&$2,dX7[ 1LÂ²eÃ¸\\Ã”Â®ÂªÂ—ÂšÂ”XÂ¡FÂ‹,Ã•rÃƒÃ„Ã”ÃŒÃ”Ã„5/hTÂ¼jÂ½Â—Â‰Ju,ÃµÂ°ÃÃ¤0Â¢]gÂ³F\"/,Ã…ÂžÃ–iÂ‚Ã¬Â©(ÃÂŠaÂ…ÃG\'YÂ´Â¤Â©yÂ¬Ã„Â¦8Â¶iÃÃÃ…Â°Ã¬lÃ‘FAÂ‹\n2AÃˆÂ£Â±ÃŒPÂ²Â¦LÂ¦[Â¢Â¥ÂšeÂ†ÃƒTÃŠY0Ã•Â£	IeÃ‹0Ã•vQL\nÃŒ+KÂ¦Â‰Â•Âš;Ãh!Ã x^Â›ÂŠQÃ¹ Â”Ã…!Â‰PÃ‰f*.TÂ¥*QQyfE#ÃŒÂ¤Â¨\\!Ã´!\nVÂˆS@$HÂ‹ÂŠÂ•\"]eÃ—Â†Â•\nÂ®Â²YÂ³Â¤Ã±rs9Â³Ã”CÂœÃ´ZÃIÃ°Â•<whÃÂ»3,ÃŽ30YÂ–ÂÃšaS1)ÂºÃ“*6a3ÂÂÃ¤jfÃ“&ÃŒÂŽaw\nÂ¸eÃ‰s\rÂ¦ÃÃ”Â³Â…Ã¦\\QÃ‰ÃƒVÂÂ™Ã•Â»g\'%Â¦2Â¥*OÃ—Ã—=Â³Ã•0ZxÃ„Â¢Â|ÂƒÃ§Ã­ÂžÃžÃ¦ÂšMÃ“rÃ£ÃŸ=ÃÂ¥ÃÂ©\ZÂÂˆj\0Ã Â»_ÂƒGÂµÂ‡ÃšÃ‚Ã Ã»?Â‡Ã´\'Ã¯uÂ½Ã6\Zu]ÂÃƒCp>Â€Ã¤6Â„:ÂƒÂ˜;Â¥GÃ‚Zh}Ã§Â¬Ã§5YÃ‘Â¤Â\"ÂƒÂ¤Ã¥4p)&Ã†Â‡\'Â°1\'2E{ÃƒzÃ¦<Ã¥ÃŸ;Â«ÃˆÃ¦Ã§DÃ”ÃÃ¨t/%ÃŠNÃ‰=?Â´Ã‘v\Z,yÂÂ‰Â‘rÂ†Ã­Ãƒ3Â­Ã€q.7PÃ±uwÂ¹Â¸Ã‚2ÂœÂÂŒ6?;gAÃ¿=ÃŽ{Â˜Âš\Z)cjÃ´Â½\'Ã½|Ã°Â°Â˜9Ã®GÃsiÃ¬ÂŒ\\^`ÂÃŒ,l3Â’v(Â‡Â®DpzÃ !ÃškÃ”ÃµÂF-Â8Ã½a;ÃžÂ°Ã­v6vÂ4Â–\"Ã¦bÂœOÂœÃ–]=\rNÂƒÃ v\'qJygCÃ>jZryÃÃ“Â½ÃŒÃ²Ã‹Â”Â©ÂÃ°R^K#/#Â¦Ã©Â ÃÂ»AÃ¢oc*`Â˜-Â†Ã…6)Ã•Â²\nÃ©lÃ’s\0ÃCÂ”LTÂ‰Â›Â€Ã…Ã¢y68Â}oÃœ\')Â¡ÃˆÃ™HÃ­~AÃŽ\'Ã¼Ã°h7Â†ÂŠi=Â{Ã²4xNgÃ”Ã´Â˜Â¥wÂ wCÂ¤Â¢Ã©Ã–ÃƒWscÂ¡ÃŸÃ¸Ã„4cÂ€RP!FÂš1Â¡ÂÃ³6!ÃºZ7Ã™Ã‰ÃÃºÂŽ&\'iÃ©OSÂžÂ¢4$Â„HÃ†\0ÃAa\Z Â°bÂ#Â«Â€j.ÃÃ´>`Ã FÃšbÂ´&MÃš(ÂÂˆÃ§iÂ¼Ã³Â»Â´Ã‹cÃ‹<Ã­ÃšÂµÂÂ‰Ã„ÃªÂ´Â¥LÃŽ\'y\n3;ÂŒÂ›Â¦Ã£cÂ”Ã­Â™Â˜MÂ§%\'ÃœÂŸÃ¦;ÂŽÂ§#aÂµÃ¢RÃƒaÃ„x7:Â†Ã§+adÂ¼kj-<&Â²Ã’Â“AÂ«#Ã§=Ã‘Ã±ÂÂÃ½Ã¾Âˆ)IJK,Â±jÂ–?Ã¸Â»Â’)Ã‚Â„Â…ÂœÃƒÃ¥(','Cash On Delivery','shipto',NULL,'16',1684.54,NULL,NULL,'HxZy1548061091','Processing','user@gmail.com','User','United States','1232324353','Address','Washington, DC','1234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'processing','2019-01-21 08:58:11','2019-01-21 08:58:57',NULL,NULL,'$',1,5,10,0),(41,16,'BZh91AY&SYÂÂ°Â‰Â‹\0Â‰ÃŸÂ€P`XwÃ¸)OÃ¼DÂ¿Ã¿Ã¿Ãº`~|\0))HJÂ¨JÃ‚`\0&	Â¦\0\0&Âš9Â„Ã€&\0L&L\0\0&M4s	Â€L\0Â˜L&Â˜\0\0LÂšhÃ¦\0Â˜0Â˜M0\0\0Â™4Ã0Â‰	Â¥OÃ\ZÂš2e\r4aÂ¡GÂ hÃ*H DÃ”ÃÃˆdÂ¦Â™Ã©GÂ¦Ã”zÂÃµ=FC4zÂ˜ÂªÂ»]ÃŠ|ÂƒÃºÃ€Ã­\n\n\n Ã©Ã”Ã·	Ã·ÂÂ‡Ã„ÂŽ.nnÂ½ÂƒÂ¬$Ã¶Â³\nKOÃ±*^\'LÂ”ÃÃº)Â†VjÃ‰Â‡\rYÂ«\\Â¬Â–lÃ¤Ã‹Â©GÃ¨Â³Â£\nÂœÂ¥Â“&Ã“BÃ²nCÃ¯nÃ³Â¯Ã„Ã™Ã§vÃ°Ã­Â–Ã¬HÂ‘IÃ´yÃ°Ã·+Â¾I&gÂ¼u>\'Ã„z\n=Ã†Â‡Ã­Ã¬*GÃ›IÃ¤ÃªÃ±0hÃ¼ÂŠdÃ±CÃ’Â¢Âˆ^Â¡Ã‘GÃ˜Ãƒ	ÃfÃ¡P.Â¨`Ã®=\">Â¢ÂšÂ¥JRÂ‘S>Ã»%Ã•7aÃ‚Ã³Ã ÃœÂ²9Â”9*%IQMÂ”Ã•uÂÂ¥JÂ‘u,Â—}Â…ÃÃŒNÂ²Â‹Â‚Â”(ÃŠÃ‹4\\Â°Ã«4360ZQÂ©hÂ“BÂ—ÂTÂ´JPÂ²ÃÃ”Ã‚Ã’Q,Â³n0ÃŒFfWÂ³Â­Â…Ã—Â‹RQtÂºÃ®g7)Â¤Ã–RTÂ¼Ã‘ÃÂ¦;[iÃ…Ã‘Ã‰Â±Ã³6Ã‘FaÂ“\Z3AÃgÂ“Â Â¡eLÂ™LÂ·EK4Ã‹\rÂ†Â©Â”Â²aÂ«FÂ’Ã‹Â–aÂªÃ¬Â¢Â˜7Â˜VÂ—M%Â´uÂŸ\0CÂ´Ã­Â¶)=Â„ÂˆÂ¤ 0b-!ÃƒÂšÂ–Ã‘Â‰0NÃ©C\0Â„\\)BÂ­Â€DXDJTÂ‰eÂ™^\ZT.Â¹dÂ³gIÃ¦Ã¤Ã¦sgÂ¨Â‡8\"ÂµÂ´~Â¦Ã˜hÃv\'[3LÃŒeÂ£fÂ˜TÃŒJlÂ´ÃŠÂÂ˜JluÂŽÂ›,ÃÃ§hÃˆÃ¡FpÂ»v\\Â—0ÃšlÃK8^eÃeÂœ.Ã‹ftnÃ‹Â“Â’Ã“RÂ•\'Ã¥Ã£<Â§Ã‚`Â´Ã°>Â²ÂŠ>RÂŸÂ”Ã²Ã¡^Â¹Â¡Â´Ã7.>SÃ¢Ã½ÂŽÃˆ@Ãœ6CpÂŠÃ­~ÃFcÃ¨~ÃÂ»Ã¼}GÃ«>Ã©Ã”Â˜ÂžÃ¹itÂ´ÃªÂ“yÂƒÂ‡BxÃœÂŠzÂ9Ã¯Â•Â„Â´ÃÃºÃÂœÃ•gFÂ’=*Â“Â”Ã‘Ã€Â¤>Â¦Ã†Â‡7Â¤27BEzÃƒÂ‰tCÂ¡ÃœÃ³ssÂŽÂ¢jht:Â’Ã¥\'dÂžÃ’ÂŸÃšhÂ»\rzÃŸÃ¹Â«\n&&\rÂžÃ‰Â”Ã‘Â„Ã„Ã¹Ã®uNÂ¹Â´Ã‰IL#)ÃŒÃ˜ÃtcÃ¹Â¶Ãª?0ÂÃ°Ã©Ã€Ã„Ã”Ã”8K6Â¯qÃ®ÃŸÂ£ÃšÃµÂ…Â‰Â‹Â™ÃˆÃ¦~Â‡FÂžÂ(Ã‰Ã‰Ã£Ã¯mÂ…Â›\rÃ°Â\"Â¡Ã¥Â…@qyEÃž!Ã”Â‹ÃŒÃ·ÂŽc&ÃŽÂÃ°Â„mÃ¢{ÃÃ”Ã¬mÃš4Ã’YC ÃÃ¢|Ã¦Â²Ã©Ã­jtyÃ˜ÂÃ…)ÃªÂ\\Ã¹Â©iÃ‰Ã¬wNÃ·3Ã•,RRÂ¦CÃIy,ÂŒLÂ½,JÂ›Â¦ÂƒÂƒÂƒAÃµ,ÃŽÂ˜&+ce6SÂ¹Â´,lgÃ¯Â—Â–Â†Ã©Ã’PÃ ÂœÃždi\"Â¢Â¦Â“Â¹ÃºÃ‹ÂœÃ£ÃŽdAÂÂ•Ã³	Ã‚j~MÂ©Â¯Ã 9Ã¿]Ã­D)Â¢ÂšOÂµÃ¤Ã»ÂÂ™Ã´=Ã†Ã®cÂº%<ÂŒ27<\rÂœÂ¯Â£ÂŒMXÃ¢Â”ÂÂ£]XÃÃ€Ã¯Â¶&cÃºÂ´q[Â›Â©Ã 9ÃŒÂŽÂ£Ã·OÂž\"4$Â„HÃ†\0ÃAa\Z Â°bÂ#Â¹Ã„7\nÂ°gÂºÃˆÃ€:ÂŒÂ–Â„ÃÃÂ¢Â“Â±Ã­7ÂžÃ‡bÂ–Â™lzÂ§Â±Â»VÂ±Â±8ÂVÂ”Â¢Ã‰Â™Ã„Ã¢Ã¯IfgqÂƒ3tÃœlrÂÂ³3	Â´Ã¤Â¤Ã°ÂÃ½\rÂ€Ã¦s6^pbÂ–69Ã·Â•Ã¥p8XÃ¹Ã…Â’Ã±Â©Ã¨TZxMeÂ¥&ÂƒVGÃŽ{]Â£Ã³ÂÂÃ½Ã¾Ã˜)IJK,Â±jÂ–?Ã¸Â»Â’)Ã‚Â„Â„\rÂ„LX','Paypal','shipto',NULL,'2',215.38,NULL,NULL,'e9J41548344273','Pending','shaoneel@gmail.com','Test Name','United States','0000000000','Test Address','Los Angels','6600',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pending','2019-01-24 15:37:53','2019-01-24 15:37:53',NULL,NULL,'$',1,5,10,0),(42,16,'BZh91AY&SYÂ±Â°Âš\0!ÃŸÂ€P XwÃ¸)OÃ¼DÂ¿Ã¿Ã¿ÃºPÂ¾Ã‹Â¢Â³6Z44SCÂšb`#LÃ‚0\0\00ÂŒÂ¦Â“#SJÂš=@2\0\0\Z0ÂŒ4C !SHÂ hÃ\0iÂ¦Â€d\0\0Âšb`#LÃ‚0\0\00ÂŒÂ¤Â‰2hLÂ¦2\Z5CÃ‘14Ã½P\Z\Zhd\Z=L\ZQÃ¢Ã»ÃžÃ§ÃuÃ–SÃ¢Ã°B`]=Ã±Ã²mÂ±Âµ`ÂMÃŒ ÃŠÂ¹9ÃŒ\"ÃŒÃ™ÃŒÂ´-:TÃŠ|IÂ¼>!6+YÂ‰HÃ©~ÃŒ9Â£Â´Â”\\Â°ÃÃ¹?LÃ·8~Ã­=9Ã¯pÃž	SÂÃ¢ÃµÂ¸Â¢0zMÂCÂŒ4Ã†p+Ã†Ã¨Âƒ}qÂ®SÃÂ°Â£+Ã4Â’ÂµÂœÂ“qÂšÃŒÂ©I\nÂ°qu0Â‘Ã¢Â¬ÂŠUTTÃ‘EÂ©Â¦Ã¬Ã®Ã‰QÂ©FjÂŒÂŠ*eloi)/VÂ—Ã¶KÂ´Â°mRÃ¡TSEÂ­ÂÃ–6ÃŒZWc)Â’Ã’+*Ã«Â„Â›Ã£Â—.Â DÂ±DV\"JBÂ¢Â¦4*ei0^^Ã»Â´1QMlX,Â¦Â¥Ã–hibÂ¹ÃaÃŸÃ„KÃ IÂ°Ã¿-Ã€@Ã¨Â’ZtyÂŠ4Â³Â´bÃ°Ã‰ÂžÃƒÃ†-,(4!^ÃvÂ›Ã±Ã§`nÂŽÂ†A)&ÃƒÂ½Â¢\ZMÂ€Ã“E6Ã˜Ã†Â¡AMÂƒEÃ¶Â›Â¡Â°h*\0Â†$0i&Ã’ÂˆÂ¿tÃ†Â¢Ã·Â–-Â§lÃ•Â­Â¯\rÂÂšÃÂ˜Ã‘$Ã·)kÃ¨ÃÃ¦Â“dÂŠ\nÂ›Ã–!ÃŒÂ©Ã‰EC*6I)Ã Ã­ÃžC(Â‹fÃšNÂ¶\"ÂŠÃ‘>lNGFÂ®F\"juÃ‹Â“)1Â·ÃžszÃ˜,Ã±zÂ”Â§Â¶CÃ‹Â›ÂžÂªÃ­bÃ’ÃŽfÂ¹Ã­~Âµ2ÂªZÂ¥Ãš\0\\Ã“Ã¨Â1Ã¢Ã“:Â£Ã‡Â¸Ãˆ}ÂÂªÂŒ$Â–tÂ°jÃš=-ÂšÃ•Ã˜Ã©ÂžÂ¥OrÃŒ^Â·Â±Â±Â•Â¶Ã¢Ât6ÂµÂ±Ã”TyÂ­2rbÂ™4Ã‘JÂ¡ÃÃ¦4ÂX;Ã\rÂ›6NÂ„Ã‰Â‹kjÃ¥Ã”o<ÃºÂ±Â¾Ã›Â·Ã¾Ã‹\nL+tÂ–Â¼4\'Ã¬Ãœ6HÂ™		ÃŒh&jÃ¦,eÂ¿%=M;U5jnÂ¾Â³ÂƒÂ†Ã·Ã´Ã¸9Â¯\Zu2Ãº:TÂ³Â‘lXÂºTÃžÂºÂ¯ÂžÂ™Ã¥9ÂªÂ“PÃ«Â‡$ÃˆÃ Ã­Ã¡ÂŠÃ¼gÂ¡KÂ·;\\Â™Â®Ã—,Â´Â½\Zqijy2\\Ã¯Ã‰Â´Ã·ÂºÃ§rÂ«ÂƒkÂ±Ã¥K5Ã¶Ã·8Ã¬v,Â¢Â©Â xÃ”Â¹hÃÂ¢ÃµÃ‹V*(ÂƒÃ¤Â¢Â¦Ã¬\rTÃ0ZJ$%,\nÂ¬Â™ÃÂª5&ÃÃ‘ÂŠTÂ¦L\\~KÃ±ÂœqTÂ§Â±ÃŽ7jÃ˜ÂºS[Ã‰Ã•Ã«zÃžjÂ¬k7Ã˜Ã‘Ã¢Ã–Ã¥Ã§a]Ã†Ã£Âº:Â¼Ã©V;\nÃµ7}Â´jSBÃ’Ã…ÃªÃšÂµ)iNÃµÃ’ÂºÃ„hÃ‰tÃŒÃŸÃ—Â³oÃˆ1Â€ÃžB14Ã†4Â–PÂªÂ‘*Â¤KTÂ”RTÂ§CCÂ¢LÃ§ÂÃšÃŸJ9bZ2`ÂµÂ¦Ã¸Ã™fnÃ­ÃµfÂ.Ã‡vy2ÂšdÃ”Ã¨Â²ÂÃ¡&LÃ›Âº<Â›Ã„hÃš6Â§|Â’ÂSzÂÃª)Â¶Ã¶2Ã[ÂŠR^^c7Â°Ã«uÂ°ÃœÂ§IbÃ³\'UK<Y,Â©Â‰Â–ÂƒÃ‰Ã¡Ã€Ã¸Â Ã¯Ã°\'Â…EÂ­ijZÃ¢Ã®HÂ§\n6Â³@','Paypal','shipto',NULL,'1',110.44,NULL,NULL,'2K6o1548344328','Pending','shaoneel@gmail.com','Test Name','United States','0000000000','Test Address','Los Angels','6600',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pending','2019-01-24 15:38:48','2019-01-24 15:38:48',NULL,NULL,'$',1,5,10,0),(43,13,'BZh91AY&SYÂ«]Âœ\0!ÃŸÂ€P XwÃ¸)OÃ¼DÂ¿Ã¿Ã¿ÃºPÂ¾Ã‹Â–Ã›26Â\n2ÃÃ¦Â˜Â˜Ã“0ÂŒ\0\0\0L#$M)Â”Ãµ\ZFÂ€\Z\0\0Ã“Ã‘\Z\0IÂ©)Â£zÂ£`\'Â¤Ã‘Ã¨Ã€\0@9Â¦&4Ã€ÂŒ#\0\0\0Ã€*ÂˆÂ“ÃM\ny225CÃ’iÃ©4Ã½P\ZÃ’\Z?TÂ¹`Â„3GÂ›Ã°{ÂŸUQ/7Â‚Â¸Âª?h|Â›Ã ÃžÃ…$bs`fÃºÂ.9ÃŒ1	g4Â¤Â‘Â´Ã¨jÂ¦{Ã‘9Â´Â½Ã¥Â•Ã±Â­M3Â¶\\Â“QÃ•,@Ã…Ã¹Â¿\\v86Ã£Â½Ãƒx\"cÂ˜Ã¤Ã±rB=FkÂœÃ‡0hÂ‰ÂºcÂšFÃ¡,Ã8ÂŒGÂs|&Â“Ã©0N\nÃœ3Â‹Ãˆ2QÂ®hÂ—ÂÃŠ8ÃÂƒ#+Ã°Â£Ã‰zÂÃ‰0XÂ’bÃ”ÂµiÂ¥\"QYÂ¤G*Âƒ$Â›F Â˜Â§{@Ã¡ÂµXÂ¥Â°ÂÂ¹	,ciÂ‘Â©+~ÃÂ›Ã‘\n$ÂªÂ½Â¡(Â«WÃ­bÂ¥Ã‰%XÂ­tÂ²bÂ²Ã´Â’ÂªÃ‹Â”KTh`Â²Â§B{Â–Â§Â¸ÃŒÂ®Ã¾Âž\0`v(Â¥Z	Â‡ÂµNÃªÂ“Â©Â½Â¥2xoÂ†ÂsBZÃÂ¬ÂªÃ´}Ã.~tÃi\"Â‡c\ndPÃ‚Ã¥\nÂ¢2Â¥PaÃ³bÃœP`^Â€Â¤ÂAÂ’,Â‚Â’Uv`VdD\'Ã†Ã•ÂMgÂÃ”@Â™Â%Ã´Â¼TÂ›Â¨ÃCIÂªÃ˜Â¼Â±I6Â¦1)Â°nÂ”aÃ¤ÃªÃšÂƒ,Lf4Â­`ÂœÃ‘ÂŸ0VGc\\Â•Â‰Â¶Â—Ã—W*Â™Â‘Â¿Â•Ã‘Ã«\\Â£Ã…Ã¤Â”Â½Â±^ÂŽÂ™OrÃŒÃ†*ÂžÃ—Ã£Ã%Ã³&ÃŽ\0 Ã¸Ã…wÂ\0ÂŒOÃÃ¬~ÂºÃŽsÃ¶rKÂ™ÂŠV(Ã”bÂ¹Â–Â±Ã©gÂ¥=Â­Â±Ã¤Â˜Ã·(Â³Ã–Ã¶3_MvGdÂm+dL?Â¼TÂ‹ÃœÃ–EÃ¬$Â”ÃˆÃ¨Ã´Â®wÂµ3Ã8Ã”Â‹Ã–kkTÂªMÃ§Â‚}Ã«VÃ«SÂ»Ã¾Â¾ÃªEÃ‹ÂŒvÃŠVÂ•\'Ã€Ã©6ÂŒ2aÂ˜g/Â Ã‰`cÂ¼AÂ•Ã¸KÃ‰Â†Â´Ã†Y6WIÃÃƒ{Ãº|Â†Â…Ã»Â—Ã½RÂ£Â™K,ÃšÂ–ÃµS\\pÂŽÂ±ÃŒBf\"Ã¦Ã¡Ã™4^pwpÂ²Â¼Â£Ã©JÂ­ÂŽÃ§6*Â´Ã…ÂŠÃ‰Â…Â˜2u^Â©ÃŸ{YÃ¯vGÃÂ·kÂ¬Â¨Ã“ÃÃ…Ã‹7jÂ‰&ZÂŒÃ…JBÃ¥pÃˆÃ†ÂŠÃŠIÃ©$Â˜Â»ÂŒÂŠPÃ¤9Â°Â„@B^Â¥TF1Â­&HÃd,Â‰Â‰]Â¬Â³Â—Ã‰^QÃŠÃ‰Â‰{!Â³,Ã•DÂ´ÂºÂ·CÃ½oSÃ‘3iÂ³Ã¬}Â­-.~Â•Ã“Ã„Ã˜qÂ†Â¤Â«SlÃšÂ•ÃœÃ™Ã·IÂ’ZÂŠÂšeÂ’TÂ‰wÂ­&@ÃŠVÂ…ÂŒÂ‡Â¿w_ÃŸÃšsÂˆÂ€Â¹Â’Â Â‚F\"0Â” ,Â„Y	LÂˆ$b`b0Â“:}McQIÃŽÃ…!zÃ¥)Ã¡ÂÂ¸Ã¯Âš4`Ã­qÃ†ÃµÃ±Â„FMT3dÃŒpÂG%\Z-\nSÂ°Q!ÂƒV^#ÃºÃ†#_jÃ¼tÂ¹\"QXÂ¬Z7Â®Ã¬v.Ã˜Â–Ã’Â…bÃ¶Ã©ÂŠ<WÂ¨Â˜Â±~ÂƒÂ«ÃƒÂÃ¦ÂÃŸÃ GÂ„Â“%)HÂ¤Â©Ã¸Â»Â’)Ã‚Â„Â€Â•ZÃ¬Ã ','Paypal','shipto',NULL,'1',110.44,NULL,NULL,'L76V1548531839','Pending','user@gmail.com','User','United States','1232324353','Address','Washington, DC','1234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pending','2019-01-26 19:43:59','2019-01-26 19:43:59',NULL,NULL,'$',1,5,10,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` tinyint(100) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'About Us','about','<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 1<br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 2<br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 3<br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\">Title number 9<br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>',2,NULL,NULL),(2,'Privacy & Policy','privacy','<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2>Title number 1</h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 2<br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 3<br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \">Title number 9<br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>',1,'test,test1,test2,test3','Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),(3,'Service','services','<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 1<br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 2<br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2>Title number 3<br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \">Title number 9<br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>',3,'t,t1,t2,t3,t4','t has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.'),(4,'Test','test','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce elit est, gravida et dolor vel, sollicitudin facilisis magna. Suspendisse justo erat, interdum a mi eleifend, aliquet commodo odio. Morbi fermentum sapien nisi, convallis vehicula tortor mattis a. Sed sed erat eget lorem porttitor accumsan sed in arcu. Curabitur imperdiet, nisi ac fermentum semper, neque urna tempus odio, quis ultrices felis dolor non ipsum. Nullam quam ligula, imperdiet semper aliquet ut, consectetur eget magna. Etiam interdum massa non odio finibus, ut convallis orci porttitor. Duis eu maximus urna. Praesent dignissim, felis ut congue sagittis, nibh tellus placerat augue, suscipit porttitor enim urna blandit orci. Aliquam vestibulum velit quis tortor maximus posuere. Praesent laoreet, lectus aliquam blandit consectetur, dolor enim venenatis metus, nec sollicitudin eros quam non orci. Vestibulum tempor, diam non convallis molestie, est nibh posuere lacus, et blandit quam mauris eu diam. Suspendisse vitae ante rhoncus, molestie erat et, pulvinar dolor. Donec nec nulla libero. Vivamus lobortis magna eget mi dignissim, sed viverra diam tincidunt.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Donec in eros viverra nunc congue porta. Integer lacus urna, tristique et imperdiet et, malesuada nec felis. Ut vitae neque sed magna tristique ultricies finibus et nisl. Quisque aliquam tortor erat, id molestie lectus faucibus at. Cras in quam sit amet metus egestas mollis. Ut ligula felis, dapibus ac tortor sed, sodales ultricies nisl. Pellentesque id ipsum nec elit placerat tincidunt sed sit amet magna. Morbi vel odio in enim porta iaculis quis nec magna.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Curabitur sodales ut lorem vel cursus. Morbi pretium ut mauris non laoreet. Sed a ipsum eu nibh elementum commodo gravida iaculis metus. Ut mollis a magna ut ultrices. Nullam non vestibulum ipsum. Donec in lectus in lacus gravida sagittis. Mauris commodo dictum neque, commodo pulvinar massa vulputate vitae. Aenean eget purus vehicula, convallis elit sit amet, ullamcorper felis. Nulla sed mi porttitor, suscipit ligula in, consequat odio. Duis feugiat nulla sed erat auctor, id cursus sem ullamcorper. Nulla accumsan leo sit amet maximus aliquam. Integer at arcu vehicula massa iaculis hendrerit ac at turpis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Fusce quis sollicitudin nibh. Donec ut pulvinar nulla, nec volutpat ipsum. Duis non consequat nisi, condimentum fermentum quam. Aliquam quis efficitur nisl. Nunc gravida cursus eros in dignissim. Integer ut sodales justo. Mauris eget magna auctor, tristique nulla at, aliquet ex. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed elementum, nibh eu pharetra placerat, urna mauris congue erat, et tincidunt tortor elit nec elit. Quisque a turpis a ligula cursus dapibus sit amet sit amet metus. Fusce nisl eros, dapibus sed nunc vitae, luctus dapibus risus. Cras at mattis diam.</p>',0,'a,a1,a2','Integer sit amet erat a tellus facilisis faucibus vitae nec tellus. Nam aliquam diam et dui convallis consequat. Sed viverra finibus fermentum. Donec viverra lacus mauris. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi at ante et ipsum congue consectetur. Pellentesque sit amet nisl urna. Aenean vel sagittis sapien, hendrerit vulputate nisi. Duis rhoncus, neque ac egestas fermentum, ipsum dolor porta metus, ut rutrum sapien orci quis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed viverra, ipsum sit amet maximus elementum, turpis nisi fringilla sapien, eu volutpat sapien augue vitae dolor. Sed auctor, libero et rutrum egestas, neque velit gravida magna, in ultrices orci nibh vel orci. Etiam eget justo suscipit, efficitur dolor vitae, rutrum risus.');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagesettings`
--

DROP TABLE IF EXISTS `pagesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagesettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_success` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `a_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bnimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagesettings`
--

LOCK TABLES `pagesettings` WRITE;
/*!40000 ALTER TABLE `pagesettings` DISABLE KEYS */;
INSERT INTO `pagesettings` VALUES (1,'Success! Thanks for contacting us, we will get back to you shortly.','admin@geniusocean.com','Drop Us a line','<div style=\"text-align: justify;\">Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have to be managed to isolate ancient human DNA without turning up a single bone.</div>','<div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit; margin: 0px 0px 15px; font-size: 30px;\">Title number 1<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\"><strong style=\"box-sizing: border-box; font-weight: 700;\">Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit; margin: 0px 0px 15px; font-size: 30px;\">Title number 2<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; font-family: inherit; font-weight: 700; line-height: 1.1; color: inherit; margin: 0px 0px 15px; font-size: 30px;\">Title number 3<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 style=\"box-sizing: border-box; font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">Title number 9<br style=\"box-sizing: border-box;\"></h2><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>','<div>\r\n<h2>What is Lorem Ipsum, Really?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p>\r\n</div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don\'t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn\'t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>',1,1,1,'https://www.google.com/','1525536094Banner1.png',1);
/*!40000 ALTER TABLE `pagesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_gateways`
--

DROP TABLE IF EXISTS `payment_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_gateways`
--

LOCK TABLES `payment_gateways` WRITE;
/*!40000 ALTER TABLE `payment_gateways` DISABLE KEYS */;
INSERT INTO `payment_gateways` VALUES (2,'Rocket','<b>Rocket Mobile No: 01728068515<br>Rocket Reference No: 6622</b>',1),(3,'bKash','<div style=\"text-align: left;\"><b>Mobile Number: 01732716885</b></div><b><div style=\"text-align: left;\"><b>Reference Number: 778899</b></div></b>',1),(4,'QuickCash','<b>MOBILE NUMBER: 9038423432849</b>',0),(5,'Easy Cash','<b>Please Call at 98989898989</b>',1);
/*!40000 ALTER TABLE `payment_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `featured` varchar(255) NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `process_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (5,24,'txn_1CAM4hJlIV5dN9n7wuIhtbMO',10,'Completed','Vo1522173546','no','Stripe','ch_1CAM4gJlIV5dN9n74exxkQUJ','2018-03-27 23:59:10'),(6,24,'txn_1CAM9BJlIV5dN9n7L95Yg4RU',10,'Completed','wp1522173824','yes','Stripe','ch_1CAM9AJlIV5dN9n7GA4akuVa','2018-03-28 00:03:48'),(8,13,'9V52144530246673F',10,'Completed','nm1522227283','no','Paypal',NULL,'2018-03-28 14:54:43'),(9,13,'4TL74232C9274030Y',10,'Completed','YM1522227864','yes','Paypal',NULL,'2018-03-28 15:04:24'),(10,22,'txn_1CAhOaJlIV5dN9n7SscUvo5B',20,'Completed','6R1522255501','yes','Stripe','ch_1CAhOaJlIV5dN9n740fbr6Rf','2018-03-28 22:45:08'),(16,7,'txn_1CAipgJlIV5dN9n75bFj2vtM',10,'Completed','1Y1522261025','no','Stripe','ch_1CAipfJlIV5dN9n7OlUy3ugI','2018-03-29 00:17:12'),(17,10,'txn_1CB5PGJlIV5dN9n7CCj5x5mf',10,'Completed','cw1522347801','yes','Stripe','ch_1CB5PFJlIV5dN9n7EL0KpPKJ','2018-03-30 00:23:25'),(18,10,'txn_1CB5VOJlIV5dN9n75O7lhQvU',10,'Completed','1N1522348180','yes','Stripe','ch_1CB5VOJlIV5dN9n7PEuwYLuy','2018-03-30 00:29:46');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickups`
--

DROP TABLE IF EXISTS `pickups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickups` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickups`
--

LOCK TABLES `pickups` WRITE;
/*!40000 ALTER TABLE `pickups` DISABLE KEYS */;
INSERT INTO `pickups` VALUES (2,'Azampur'),(3,'Dhaka'),(4,'Kazipara'),(5,'Kamarpara'),(6,'Uttara');
/*!40000 ALTER TABLE `pickups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
INSERT INTO `portfolios` VALUES (3,'David Smith','1547893517review-profile.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nullam sapien elit'),(4,'EBangladesh','1547893510review-profile.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nullam sapien elit'),(5,'The Usual Suspects','1547893504review-profile.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nllam sapien elit'),(6,'Mr. XYZ','1547893498review-profile.png','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra justo quis ligula ullamcorper scelerisque. Quisque tempor nulla quis sapien malesuada ultricies. Nullam sapien elit, laoreet congue sapien eget, suscipit imperdiet nisi. Vivamus rutrum lectus eu urna ullamcorper porta. Nllam sapien elit');
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_clicks`
--

DROP TABLE IF EXISTS `product_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=785 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_clicks`
--

LOCK TABLES `product_clicks` WRITE;
/*!40000 ALTER TABLE `product_clicks` DISABLE KEYS */;
INSERT INTO `product_clicks` VALUES (1,29,'2018-09-01'),(2,29,'2018-11-18'),(3,29,'2018-11-18'),(8,29,'2018-11-18'),(9,28,'2018-11-18'),(10,28,'2018-11-18'),(15,30,'2018-11-18'),(16,30,'2018-11-18'),(17,30,'2018-11-18'),(18,30,'2018-11-18'),(19,30,'2018-11-18'),(20,27,'2018-11-18'),(22,29,'2018-11-18'),(23,28,'2018-11-18'),(24,30,'2018-11-18'),(25,30,'2018-11-18'),(26,30,'2018-11-18'),(27,30,'2018-11-18'),(28,21,'2018-11-18'),(29,7,'2018-11-18'),(30,21,'2018-11-19'),(31,1,'2018-11-19'),(32,27,'2018-11-19'),(33,27,'2018-11-20'),(34,22,'2018-11-22'),(35,22,'2018-11-22'),(36,22,'2018-11-22'),(46,27,'2018-11-25'),(47,29,'2018-11-25'),(48,29,'2018-11-25'),(49,29,'2018-11-25'),(50,29,'2018-11-25'),(51,28,'2018-11-25'),(52,28,'2018-11-25'),(53,22,'2018-11-25'),(54,26,'2018-11-25'),(55,29,'2018-11-25'),(56,27,'2018-11-25'),(57,27,'2018-11-25'),(58,27,'2018-11-25'),(59,27,'2018-11-25'),(61,30,'2018-11-25'),(62,13,'2018-11-25'),(115,1,'2018-12-08'),(116,1,'2018-12-08'),(118,29,'2018-12-08'),(119,29,'2018-12-08'),(120,29,'2018-12-08'),(121,29,'2018-12-08'),(122,29,'2018-12-08'),(123,29,'2018-12-08'),(138,30,'2018-12-08'),(139,30,'2018-12-08'),(140,29,'2018-12-08'),(141,30,'2018-12-08'),(142,30,'2018-12-08'),(143,30,'2018-12-08'),(144,30,'2018-12-08'),(145,30,'2018-12-08'),(146,30,'2018-12-08'),(147,30,'2018-12-08'),(148,30,'2018-12-08'),(149,29,'2018-12-08'),(151,29,'2018-12-08'),(152,29,'2018-12-08'),(153,29,'2018-12-08'),(154,29,'2018-12-08'),(155,29,'2018-12-08'),(156,30,'2018-12-08'),(157,30,'2018-12-08'),(158,30,'2018-12-08'),(159,30,'2018-12-08'),(160,30,'2018-12-08'),(161,30,'2018-12-08'),(162,30,'2018-12-08'),(163,30,'2018-12-08'),(164,30,'2018-12-08'),(165,30,'2018-12-08'),(166,30,'2018-12-08'),(167,30,'2018-12-08'),(168,30,'2018-12-08'),(169,30,'2018-12-08'),(170,30,'2018-12-08'),(171,30,'2018-12-08'),(172,30,'2018-12-08'),(173,30,'2018-12-08'),(174,30,'2018-12-08'),(175,30,'2018-12-08'),(176,30,'2018-12-08'),(177,30,'2018-12-08'),(178,30,'2018-12-08'),(179,30,'2018-12-08'),(180,30,'2018-12-08'),(181,30,'2018-12-08'),(182,30,'2018-12-08'),(183,30,'2018-12-08'),(184,30,'2018-12-08'),(185,30,'2018-12-08'),(186,30,'2018-12-08'),(187,30,'2018-12-08'),(188,30,'2018-12-08'),(189,30,'2018-12-08'),(190,30,'2018-12-08'),(191,30,'2018-12-08'),(199,29,'2018-12-08'),(200,29,'2018-12-08'),(201,29,'2018-12-08'),(213,30,'2018-12-08'),(214,30,'2018-12-08'),(215,30,'2018-12-08'),(216,30,'2018-12-08'),(217,29,'2018-12-08'),(218,29,'2018-12-08'),(219,29,'2018-12-08'),(220,30,'2018-12-08'),(221,30,'2018-12-08'),(222,30,'2018-12-08'),(223,30,'2018-12-08'),(224,30,'2018-12-08'),(225,30,'2018-12-08'),(226,30,'2018-12-08'),(227,30,'2018-12-08'),(228,30,'2018-12-08'),(229,30,'2018-12-08'),(230,30,'2018-12-08'),(231,30,'2018-12-08'),(232,30,'2018-12-08'),(233,30,'2018-12-08'),(234,30,'2018-12-08'),(235,30,'2018-12-08'),(236,30,'2018-12-08'),(237,30,'2018-12-08'),(238,30,'2018-12-08'),(239,30,'2018-12-08'),(240,30,'2018-12-08'),(241,30,'2018-12-08'),(242,30,'2018-12-08'),(243,30,'2018-12-08'),(244,30,'2018-12-08'),(245,30,'2018-12-08'),(246,30,'2018-12-08'),(247,30,'2018-12-08'),(277,30,'2018-12-09'),(302,30,'2018-12-09'),(303,30,'2018-12-09'),(315,4,'2018-12-19'),(316,29,'2018-12-19'),(317,29,'2018-12-19'),(318,29,'2018-12-19'),(319,29,'2018-12-19'),(320,29,'2018-12-19'),(321,29,'2018-12-19'),(322,29,'2018-12-19'),(323,29,'2018-12-19'),(324,29,'2018-12-19'),(325,29,'2018-12-19'),(326,29,'2018-12-19'),(327,29,'2018-12-19'),(328,29,'2018-12-19'),(329,29,'2018-12-19'),(330,29,'2018-12-19'),(331,29,'2018-12-19'),(332,29,'2018-12-19'),(333,29,'2018-12-19'),(334,30,'2018-12-19'),(335,30,'2018-12-19'),(336,30,'2018-12-19'),(337,30,'2018-12-19'),(338,30,'2018-12-19'),(339,30,'2018-12-19'),(340,30,'2018-12-19'),(341,30,'2018-12-19'),(342,30,'2018-12-19'),(371,30,'2018-12-19'),(372,30,'2018-12-19'),(376,28,'2018-12-19'),(395,1,'2018-12-20'),(396,1,'2018-12-20'),(397,1,'2018-12-20'),(398,1,'2018-12-20'),(399,1,'2018-12-20'),(400,5,'2018-12-20'),(401,1,'2018-12-20'),(402,1,'2018-12-20'),(403,1,'2018-12-20'),(404,1,'2018-12-20'),(719,48,'2018-12-22'),(720,48,'2018-12-22'),(721,48,'2018-12-22'),(722,49,'2018-12-22'),(723,49,'2018-12-22'),(724,50,'2018-12-23'),(725,50,'2018-12-23'),(726,42,'2018-12-23'),(727,42,'2018-12-23'),(728,49,'2018-12-23'),(729,49,'2018-12-23'),(730,51,'2018-12-23'),(731,51,'2018-12-23'),(732,51,'2018-12-23'),(733,51,'2018-12-23'),(734,51,'2018-12-23'),(735,43,'2018-12-23'),(736,42,'2018-12-23'),(737,44,'2018-12-23'),(738,45,'2018-12-23'),(739,45,'2018-12-23'),(740,45,'2018-12-23'),(741,49,'2018-12-23'),(742,49,'2018-12-23'),(743,50,'2018-12-23'),(744,50,'2018-12-23'),(745,50,'2018-12-23'),(746,50,'2018-12-23'),(747,50,'2018-12-23'),(748,50,'2018-12-23'),(749,50,'2018-12-23'),(750,50,'2018-12-23'),(751,50,'2018-12-23'),(752,51,'2019-01-19'),(753,48,'2019-01-19'),(754,48,'2019-01-19'),(755,50,'2019-01-20'),(756,46,'2019-01-22'),(757,46,'2019-01-22'),(758,50,'2019-01-22'),(759,50,'2019-01-22'),(760,51,'2019-01-22'),(761,49,'2019-01-22'),(762,51,'2019-01-22'),(763,51,'2019-01-27'),(764,51,'2019-01-27'),(765,51,'2019-01-27'),(766,51,'2019-01-27'),(767,51,'2019-01-27'),(768,51,'2019-01-27'),(769,51,'2019-01-27'),(770,51,'2019-01-27'),(771,47,'2019-01-27'),(772,47,'2019-01-27'),(773,42,'2019-01-27'),(774,47,'2019-01-27'),(775,47,'2019-01-27'),(776,47,'2019-01-27'),(777,51,'2019-01-28'),(778,51,'2019-01-28'),(779,51,'2019-01-28'),(780,50,'2019-02-13'),(781,42,'2019-02-13'),(782,42,'2019-02-13'),(783,42,'2019-02-13'),(784,46,'2019-04-10');
/*!40000 ALTER TABLE `product_clicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(191) unsigned NOT NULL,
  `subcategory_id` int(191) unsigned DEFAULT NULL,
  `childcategory_id` int(191) unsigned DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cprice` float NOT NULL,
  `pprice` float DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `views` int(191) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `best` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `top` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `hot` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `latest` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `big` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (42,11,8,14,13,'Here will be your product title as your wish','1545501526product-(10)-min.jpg',NULL,NULL,50,100,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',1,19,NULL,'2018-12-21 15:47:41','2019-02-13 05:44:45',1,1,1,1,1,0,'keyword','#f0d90a',2,NULL,0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,11,8,14,13,'Here will be your product title as your wish','1545501517product (9)-min.jpg','X,XL,XXL,M,L,S','#000000,#9c1515,#24f015,#050bc2,#d1900c',88,100,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',1,4,NULL,'2018-12-21 15:47:41','2019-01-26 19:36:46',1,1,1,1,1,1,'50% OFF','#12d928',2,'3 Days',0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,11,8,14,13,'Here will be your product title as your wish','1545501507product (8)-min.jpg','X,XL,XXL,M,L,S','#000000,#9c1515,#24f015,#050bc2,#d1900c',88,100,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',1,3,NULL,'2018-12-21 15:47:41','2019-01-26 19:36:46',0,0,1,1,1,1,NULL,NULL,2,'3 Days',0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,11,8,14,13,'Here will be your product title as your wish','1545501495product (7)-min.jpg','X,XL,XXL,M,L,S','#000000,#9c1515,#24f015,#050bc2,#d1900c',100,120,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',1,5,NULL,'2018-12-21 15:47:41','2019-01-26 19:36:46',1,1,1,1,1,1,NULL,NULL,2,'3 Days',0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,11,8,14,13,'Here will be your product title as your wish','1545501480product (6)-min.jpg','X,XL,XXL,M,L,S','#000000,#9c1515,#24f015,#050bc2,#d1900c',90,100,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',1,5,NULL,'2018-12-21 15:47:41','2019-04-10 08:24:02',1,1,1,1,0,1,NULL,NULL,2,'3 Days',0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,11,8,14,13,'Here will be your product title as your wish','1545501468product (5)-min.jpg','X,XL,XXL,M,L,S','#000000,#9c1515,#24f015,#050bc2,#d1900c',88,100,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',1,7,NULL,'2018-12-21 15:47:41','2019-01-27 09:43:22',1,1,1,1,1,1,'keyword 1,keyword 2','#0a3aee,#0dcc0b',2,'3 Days',0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,11,8,14,13,'Here will be your product title as your wish','1545501458product (4)-min.jpg','X,XL,XXL,M,L,S','#000000,#9c1515,#24f015,#050bc2,#d1900c',88,100,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',1,20,NULL,'2018-12-21 15:47:41','2019-01-28 06:48:23',1,1,1,1,1,1,NULL,NULL,2,'3 Days',0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,11,8,14,13,'Here will be your product title as your wish','1545501431product (3)-min.jpg','X,XL,XXL,M,L,S','#000000,#9c1515,#24f015,#050bc2,#d1900c',88,100,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',0,12,NULL,'2018-12-21 15:47:41','2019-01-28 06:48:29',1,1,0,1,0,1,NULL,NULL,2,'3 Days',0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,11,8,14,13,'Here will be your product title as your wish','1545501399product (2)-min.jpg','X,XL,XXL,M,L,S','#000000,#9c1515,#24f015,#050bc2,#d1900c',88,100,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',1,18,NULL,'2018-12-21 15:47:41','2019-02-13 04:52:27',1,1,0,1,1,1,NULL,NULL,2,'3 Days',0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,11,8,14,13,'Here will be your product title as your wish','1545502810product (8)-min.jpg','X,XL,XXL,M,L,S','#000000,#9c1515,#24f015,#050bc2,#d1900c',88,0,'<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',NULL,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>',1,31,NULL,'2018-12-21 15:47:41','2019-01-28 06:50:39',1,0,1,1,1,0,NULL,NULL,2,'3 Days',0,NULL,NULL,'https://www.youtube.com/watch?v=hVEaL9izgjs',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) unsigned NOT NULL,
  `comment_id` int(191) unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (3,14,3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sollicitudin erat est, et mollis massa pharetra at. Fusce interdum leo nec faucibus elementum. Nam rutrum justo vel nisl porttitor, tempus convallis ex pellentesque. Nullam gravida velit eu magna dapibus pellentesque. Fusce euismod enim et venenatis ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque efficitur dapibus tortor commodo aliquet.','2018-12-08 09:18:07','2018-12-08 09:18:07');
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(191) unsigned NOT NULL,
  `product_id` int(191) unsigned NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seotools`
--

DROP TABLE IF EXISTS `seotools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seotools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keys` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seotools`
--

LOCK TABLES `seotools` WRITE;
/*!40000 ALTER TABLE `seotools` DISABLE KEYS */;
INSERT INTO `seotools` VALUES (1,'<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>','Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');
/*!40000 ALTER TABLE `seotools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (2,'FREE SHIPPING','Free Shipping All Order','1539837332delivery-van.png'),(3,'PAYMENT METHOD','Secure Payment','1539837356checked.png'),(4,'30 DAY RETURNS','30-Day Return Policy','1539837376refresh-button.png'),(5,'HELP CENTER','24/7 Support System','1539837442customer-support.png');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_anime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_anime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (1,'Slider Title 1','Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry','1534412737Slider-image.jpg','slide_style_left','72','#bd0954','fadeInLeft','19','#920000','fadeInLeft'),(2,'Slider Title Test','ttLorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry','1534412745Slider-image3.jpg','slide_style_center','74','#bd497a','rollIn','21','#00c021','flipInY'),(3,'Slider Title 3','Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry','1534412750Slider-image4.jpg','slide_style_right','72','#e6cf06','flipInX','19','#b30000','fadeInDown');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_providers`
--

DROP TABLE IF EXISTS `social_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_providers`
--

LOCK TABLES `social_providers` WRITE;
/*!40000 ALTER TABLE `social_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sociallinks`
--

DROP TABLE IF EXISTS `sociallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sociallinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `fcheck` tinyint(10) DEFAULT NULL,
  `gcheck` tinyint(10) DEFAULT NULL,
  `fclient_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fredirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gclient_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gredirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociallinks`
--

LOCK TABLES `sociallinks` WRITE;
/*!40000 ALTER TABLE `sociallinks` DISABLE KEYS */;
INSERT INTO `sociallinks` VALUES (1,'https://www.facebook.com/','https://plus.google.com/','https://twitter.com/','https://www.linkedin.com/',1,1,1,1,1,1,'503140663460329','f66cd670ec43d14209a2728af26dcc43','https://localhost/updated/kingfinal/auth/facebook/callback','904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com','yGBWmUpPtn5yWhDAsXnswEX3','http://localhost/updated/kingfinal/auth/google/callback');
/*!40000 ALTER TABLE `sociallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_replies`
--

DROP TABLE IF EXISTS `sub_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_replies` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `reply_id` int(191) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_replies`
--

LOCK TABLES `sub_replies` WRITE;
/*!40000 ALTER TABLE `sub_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(191) unsigned NOT NULL,
  `sub_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (8,11,'Sub Category 1','sub1',1),(9,11,'Sub Category 2','sub2',1),(10,11,'Sub Category 3','sub3',1),(11,11,'Sub Category 4','sub4',1),(12,12,'Sub Category 5','sub5',1);
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscribers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'Basic','$','USD',0,30,1,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),(5,'Standard','$','USD',60,45,25,'<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),(6,'Premium','$','USD',120,90,90,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),(7,'Unlimited','$','USD',250,365,0,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notifications`
--

DROP TABLE IF EXISTS `user_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL DEFAULT '0',
  `conversation1_id` int(191) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notifications`
--

LOCK TABLES `user_notifications` WRITE;
/*!40000 ALTER TABLE `user_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_subscriptions`
--

DROP TABLE IF EXISTS `user_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_subscriptions`
--

LOCK TABLES `user_subscriptions` WRITE;
/*!40000 ALTER TABLE `user_subscriptions` DISABLE KEYS */;
INSERT INTO `user_subscriptions` VALUES (1,13,1,'Basic','$','USD',0,30,1,'<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>','Free',NULL,NULL,'2019-01-28 16:47:08','2019-01-28 16:47:08',1);
/*!40000 ALTER TABLE `user_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `residency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT '0',
  `shop_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(10) NOT NULL DEFAULT '0',
  `shop_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `f_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_check` tinyint(5) DEFAULT '0',
  `g_check` tinyint(5) DEFAULT '0',
  `t_check` tinyint(5) DEFAULT '0',
  `l_check` tinyint(5) DEFAULT '0',
  `shipping_cost` int(191) NOT NULL DEFAULT '0',
  `current_balance` int(191) NOT NULL DEFAULT '0',
  `affilate_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double DEFAULT '0',
  `date` date DEFAULT NULL,
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `donors_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'User','1547699934500x600-size.jpg','1234','Rain','Washington, DC','Address','1232324353','23123121','user@gmail.com','$2y$10$80VuwakMupDVA21UQ37S1.igEVvP7QCP0/nBtuK78nBqkXfz3meZW','2018-03-07 18:05:44','2019-02-13 05:16:11',0,'Laravel Store','Alexander J Curtis','6434534432423','39 D/A, Washington DC.','5345345435','Hiiiiii',2,'<div style=\"text-align: justify;\"><b style=\"font-family: Roboto, sans-serif;\">Lorem</b><span style=\"font-family: Roboto, sans-serif;\"> ipsum dolor sit amet, consectetur adipisicing elit. Error hic unde soluta necessitatibus ad odit, dolores in. Omnis laborum, et nisi!7</span></div>','https://www.facebook.com/','https://plus.google.com/','https://twitter.com/','https://www.linkedin.com/',1,1,1,1,5,0,'33899bafa30292165430cb90b545728a',0,'2021-06-26',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_orders`
--

DROP TABLE IF EXISTS `vendor_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` int(191) NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_orders`
--

LOCK TABLES `vendor_orders` WRITE;
/*!40000 ALTER TABLE `vendor_orders` DISABLE KEYS */;
INSERT INTO `vendor_orders` VALUES (1,13,40,5,477,'HxZy1548061091','processing'),(2,13,40,11,1049,'HxZy1548061091','processing'),(3,13,41,1,95,'e9J41548344273','pending'),(4,13,41,1,95,'e9J41548344273','pending'),(5,13,42,1,95,'2K6o1548344328','pending'),(6,13,43,1,95,'L76V1548531839','pending');
/*!40000 ALTER TABLE `vendor_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_sliders`
--

DROP TABLE IF EXISTS `vendor_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_sliders` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_sliders`
--

LOCK TABLES `vendor_sliders` WRITE;
/*!40000 ALTER TABLE `vendor_sliders` DISABLE KEYS */;
INSERT INTO `vendor_sliders` VALUES (5,13,'1547892877flower-4.jpg'),(6,13,'1547892868flower-3.jpg'),(7,13,'1547892861flower-2.jpg'),(15,13,'1547892853flower-1.jpg');
/*!40000 ALTER TABLE `vendor_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(191) unsigned NOT NULL,
  `product_id` int(191) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (135,13,50),(136,13,49),(137,13,48),(138,13,42);
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

-- Dump completed on 2020-10-06 22:03:11
