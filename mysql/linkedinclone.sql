-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: linkedinclone
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
-- Table structure for table `certifications`
--

DROP TABLE IF EXISTS `certifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certifications` (
  `userid` int(11) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cauthority` varchar(50) DEFAULT NULL,
  `clicensenumber` varchar(50) DEFAULT NULL,
  `curl` varchar(50) DEFAULT NULL,
  `cstartdate` date DEFAULT NULL,
  `cenddate` date DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_userid` (`userid`),
  CONSTRAINT `certifications_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certifications`
--

LOCK TABLES `certifications` WRITE;
/*!40000 ALTER TABLE `certifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `certifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `commentbody` varchar(250) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_userid` (`userid`),
  KEY `fk_postid` (`postid`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comment_count` AFTER INSERT ON `comments` FOR EACH ROW update posts set comments=comments+1 where postid=new.postid */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `userid` int(11) NOT NULL,
  `educationid` int(11) NOT NULL,
  `coursename` varchar(50) DEFAULT NULL,
  `courseid` varchar(15) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_educationid` (`userid`,`educationid`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`userid`, `educationid`) REFERENCES `education` (`userid`, `educationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `userid` int(11) NOT NULL,
  `educationid` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `currentlydoing` tinyint(1) DEFAULT '0',
  `degree` varchar(50) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `grade` decimal(4,1) DEFAULT NULL,
  `activities` varchar(250) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  PRIMARY KEY (`educationid`),
  KEY `education_ibfk_1` (`userid`),
  CONSTRAINT `education_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationdetails`
--

DROP TABLE IF EXISTS `educationdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educationdetails` (
  `userid` int(11) NOT NULL,
  `educationid` int(11) NOT NULL,
  `detailslink` varchar(50) DEFAULT NULL,
  `fileorurl` enum('file','url') DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_educationid` (`userid`,`educationid`),
  CONSTRAINT `educationdetails_ibfk_1` FOREIGN KEY (`userid`, `educationid`) REFERENCES `education` (`userid`, `educationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationdetails`
--

LOCK TABLES `educationdetails` WRITE;
/*!40000 ALTER TABLE `educationdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `educationdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorsements`
--

DROP TABLE IF EXISTS `endorsements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endorsements` (
  `userid` int(11) NOT NULL,
  `skillid` int(11) NOT NULL,
  `euserid` int(11) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_userid` (`euserid`),
  KEY `fk_skill` (`userid`,`skillid`),
  CONSTRAINT `endorsements_ibfk_1` FOREIGN KEY (`euserid`) REFERENCES `userauthenticate` (`userid`),
  CONSTRAINT `endorsements_ibfk_2` FOREIGN KEY (`userid`, `skillid`) REFERENCES `skills` (`userid`, `skillid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorsements`
--

LOCK TABLES `endorsements` WRITE;
/*!40000 ALTER TABLE `endorsements` DISABLE KEYS */;
/*!40000 ALTER TABLE `endorsements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience` (
  `userid` int(11) NOT NULL,
  `experienceid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `currentlyworking` tinyint(1) DEFAULT '0',
  `description` varchar(1000) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  PRIMARY KEY (`experienceid`),
  KEY `experience_ibfk_1` (`userid`),
  CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencedetails`
--

DROP TABLE IF EXISTS `experiencedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencedetails` (
  `userid` int(11) NOT NULL,
  `experienceid` int(11) NOT NULL,
  `detailslink` varchar(50) DEFAULT NULL,
  `fileorurl` enum('file','url') DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  KEY `fk_experience` (`userid`,`experienceid`),
  CONSTRAINT `experiencedetails_ibfk_1` FOREIGN KEY (`userid`, `experienceid`) REFERENCES `experience` (`userid`, `experienceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencedetails`
--

LOCK TABLES `experiencedetails` WRITE;
/*!40000 ALTER TABLE `experiencedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `following`
--

DROP TABLE IF EXISTS `following`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `following` (
  `userid` int(11) NOT NULL,
  `category` enum('company','school') DEFAULT NULL,
  `organisationid` int(11) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_userid` (`userid`),
  KEY `fk_organisationid` (`organisationid`),
  CONSTRAINT `following_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`),
  CONSTRAINT `following_ibfk_2` FOREIGN KEY (`organisationid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `following`
--

LOCK TABLES `following` WRITE;
/*!40000 ALTER TABLE `following` DISABLE KEYS */;
/*!40000 ALTER TABLE `following` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `honorsandawards`
--

DROP TABLE IF EXISTS `honorsandawards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `honorsandawards` (
  `userid` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `issuer` varchar(50) DEFAULT NULL,
  `dateofissue` date DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_userid` (`userid`),
  CONSTRAINT `honorsandawards_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `honorsandawards`
--

LOCK TABLES `honorsandawards` WRITE;
/*!40000 ALTER TABLE `honorsandawards` DISABLE KEYS */;
/*!40000 ALTER TABLE `honorsandawards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobapplications`
--

DROP TABLE IF EXISTS `jobapplications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobapplications` (
  `applicationid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) NOT NULL,
  `jobid` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobapplications`
--

LOCK TABLES `jobapplications` WRITE;
/*!40000 ALTER TABLE `jobapplications` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobapplications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `userid` int(11) NOT NULL,
  `languages` varchar(25) DEFAULT NULL,
  `proficiency` varchar(25) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_userid` (`userid`),
  CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_userid` (`userid`),
  KEY `fk_postid` (`postid`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`postid`) REFERENCES `posts` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `like_count` AFTER INSERT ON `likes` FOR EACH ROW update posts set likes=likes+1 where postid=new.postid */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `organisation`
--

DROP TABLE IF EXISTS `organisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organisation` (
  `userid` int(11) DEFAULT NULL,
  `organisationname` varchar(50) DEFAULT NULL,
  `organisationtype` enum('company','school') DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  KEY `fk_userid` (`userid`),
  CONSTRAINT `organisation_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisation`
--

LOCK TABLES `organisation` WRITE;
/*!40000 ALTER TABLE `organisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `organisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `postheadline` varchar(25) DEFAULT NULL,
  `postbody` varchar(1000) DEFAULT NULL,
  `likes` int(11) DEFAULT '0',
  `comments` int(11) DEFAULT '0',
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `fk_userid` (`userid`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectmembers`
--

DROP TABLE IF EXISTS `projectmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectmembers` (
  `userid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `muserid` int(11) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_userid` (`muserid`),
  KEY `fk_projectid` (`userid`,`projectid`),
  CONSTRAINT `projectmembers_ibfk_1` FOREIGN KEY (`muserid`) REFERENCES `userauthenticate` (`userid`),
  CONSTRAINT `projectmembers_ibfk_2` FOREIGN KEY (`userid`, `projectid`) REFERENCES `projects` (`userid`, `projectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectmembers`
--

LOCK TABLES `projectmembers` WRITE;
/*!40000 ALTER TABLE `projectmembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectmembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `userid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL DEFAULT '0',
  `pname` varchar(50) DEFAULT NULL,
  `poccupation` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `currentlyworking` tinyint(1) DEFAULT '0',
  `projecturl` varchar(50) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  PRIMARY KEY (`userid`,`projectid`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `userid` int(11) NOT NULL,
  `skillid` int(11) NOT NULL AUTO_INCREMENT,
  `skillname` varchar(50) DEFAULT NULL,
  `endorsementcount` int(11) DEFAULT '0',
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  PRIMARY KEY (`skillid`),
  KEY `fk_userid` (`userid`),
  CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary`
--

DROP TABLE IF EXISTS `summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary` (
  `userid` int(11) NOT NULL,
  `summarydesc` varchar(1000) DEFAULT NULL,
  `document` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `presentation` varchar(50) DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  KEY `fk_userid` (`userid`),
  CONSTRAINT `summary_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary`
--

LOCK TABLES `summary` WRITE;
/*!40000 ALTER TABLE `summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userauthenticate`
--

DROP TABLE IF EXISTS `userauthenticate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userauthenticate` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `creationdate` date DEFAULT NULL,
  `modifydate` date DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `usertype` varchar(3) DEFAULT 'usr',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `uc_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userauthenticate`
--

LOCK TABLES `userauthenticate` WRITE;
/*!40000 ALTER TABLE `userauthenticate` DISABLE KEYS */;
/*!40000 ALTER TABLE `userauthenticate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetails` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `headline` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `twitter_handle` varchar(50) DEFAULT NULL,
  `websites` varchar(50) DEFAULT NULL,
  `summary` varchar(250) DEFAULT NULL,
  `certifications` tinyint(1) DEFAULT '0',
  `honorsandawards` tinyint(1) DEFAULT '0',
  `experience` tinyint(1) DEFAULT '0',
  `skillsandendorsements` tinyint(1) DEFAULT '0',
  `projects` tinyint(1) DEFAULT '0',
  `languages` tinyint(1) DEFAULT '0',
  `education` tinyint(1) DEFAULT '0',
  `additionalinfo` tinyint(1) DEFAULT '0',
  `volunteer` tinyint(1) DEFAULT '0',
  `courses` tinyint(1) DEFAULT '0',
  `following` tinyint(1) DEFAULT '0',
  `modifydate` date DEFAULT NULL,
  `creationdate` date DEFAULT NULL,
  `dob` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  CONSTRAINT `userdetails_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userauthenticate` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:07:50
