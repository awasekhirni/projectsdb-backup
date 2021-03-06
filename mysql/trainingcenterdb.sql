-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: trainingcenterdb
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
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendence` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `course` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `attendence` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoemailshortcode`
--

DROP TABLE IF EXISTS `autoemailshortcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autoemailshortcode` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoemailshortcode`
--

LOCK TABLES `autoemailshortcode` WRITE;
/*!40000 ALTER TABLE `autoemailshortcode` DISABLE KEYS */;
INSERT INTO `autoemailshortcode` VALUES (1,'{firstname}','payment'),(2,'{lastname}','payment'),(3,'{name}','payment'),(4,'{amount}','payment'),(5,'{course}','payment'),(6,'{batch}','payment'),(7,'{firstname}','studentbatch'),(8,'{name}','studentbatch'),(9,'{lastname}','studentbatch'),(10,'{course}','studentbatch'),(11,'{batch}','studentbatch'),(12,'{name}','instructor'),(13,'{firstname}','instructor'),(14,'{lastname}','instructor'),(15,'{batch}','instructor'),(16,'{course}','instructor'),(17,'{firstname}','student'),(18,'{lastname}','student'),(19,'{name}','student'),(20,'{name}','taskassign'),(21,'{firstname}','taskassign'),(22,'{lastname}','taskassign'),(23,'{assignbyfirstname}','taskassign'),(24,'{assignbylastname}','taskassign'),(25,'{assignbyname}','taskassign'),(26,'{name}','employee'),(27,'{firstname}','employee'),(28,'{lastname}','employee'),(29,'{institution}','employee'),(30,'{firstname}','instructoraapoin'),(31,'{lastname}','instructoraapoin'),(32,'{name}','instructoraapoin'),(33,'{institution}','instructoraapoin'),(34,'{institution}','student'),(35,'{designation}','employee');
/*!40000 ALTER TABLE `autoemailshortcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoemailtemplate`
--

DROP TABLE IF EXISTS `autoemailtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autoemailtemplate` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoemailtemplate`
--

LOCK TABLES `autoemailtemplate` WRITE;
/*!40000 ALTER TABLE `autoemailtemplate` DISABLE KEYS */;
INSERT INTO `autoemailtemplate` VALUES (1,'Payment successful email to student for batch enrollment','<p>Dear {name}, Your paying amount - Tk {amount} for course- {course} in batch- {batch} was successful. Thank You</p>\r\n','payment','Active'),(2,'Email to student for enrolling to batch','<p>Dear {name}, You are enrolled to course- {course} and batch-{batch} . Thank You</p>\r\n','studentbatch','Active'),(3,'Email to instructor for assigning him/her for a batch','<p>Dear {name}, You are now assigned for course- {course} and batch- {batch}. Thank You</p>\r\n','instructor','Active'),(4,'Email to student to enroll in institution','<p>Dear {name}, Your are successfully admitted to this institute. Thank You</p>\r\n','student','Active'),(5,'Auto email to employee for notifying their assigning work','<p>Dear {name}, You are assigned for this task-{taskname} . Assigned By- {assignbyname} Please Check your profile for further details. Thank you</p>\r\n','taskassign','Active'),(6,'Send appoint confirmation to employee','<p>Dear {name},<br />\r\nYou are appointed as a {designation}&nbsp; in {institution}.<br />\r\nThank YOu</p>\r\n','employee','Inactive'),(7,'Send appoint confirmation to instructor','<p>Dear {name}, You are appointed as a instructor in {institution}. Thank YOu</p>\r\n','instructoraapoin','Active');
/*!40000 ALTER TABLE `autoemailtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoshortcode`
--

DROP TABLE IF EXISTS `autoshortcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autoshortcode` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoshortcode`
--

LOCK TABLES `autoshortcode` WRITE;
/*!40000 ALTER TABLE `autoshortcode` DISABLE KEYS */;
INSERT INTO `autoshortcode` VALUES (1,'{name}','payment'),(2,'{firstname}','payment'),(3,'{lastname}','payment'),(4,'{amount}','payment'),(5,'{course}','payment'),(6,'{batch}','payment'),(7,'{firstname}','studentbatch'),(8,'{name}','studentbatch'),(9,'{lastname}','studentbatch'),(10,'{course}','studentbatch'),(11,'{batch}','studentbatch'),(12,'{name}','instructor'),(13,'{firstname}','instructor'),(14,'{lastname}','instructor'),(15,'{batch}','instructor'),(16,'{course}','instructor'),(18,'{firstname}','student'),(19,'{name}','student'),(20,'{lastname}','student'),(21,'{name}','taskassign'),(22,'{firstname}','taskassign'),(23,'{lastname}','taskassign'),(24,'{assignbyname}','taskassign'),(25,'{assignbyfirstname}','taskassign'),(26,'{assignbylastname}','taskassign'),(27,'{taskname}','taskassign'),(28,'{firstname}','employee'),(29,'{lastname}','employee'),(30,'{name}','employee'),(31,'{institution}','employee'),(32,'{institution}','instructoraapoin'),(33,'{name}','instructoraapoin'),(34,'{firstname}','instructoraapoin'),(35,'{lastname}','instructoraapoin'),(36,'{institution}','student'),(37,'{designation}','employee');
/*!40000 ALTER TABLE `autoshortcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autosmstemplate`
--

DROP TABLE IF EXISTS `autosmstemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autosmstemplate` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autosmstemplate`
--

LOCK TABLES `autosmstemplate` WRITE;
/*!40000 ALTER TABLE `autosmstemplate` DISABLE KEYS */;
INSERT INTO `autosmstemplate` VALUES (1,'Payment successful sms to student for batch enrollment','Dear {name}, Your paying amount - Tk {amount} for course- {course} in batch- {batch} was successful. Thank You\r\nPlease contact our support for furter queries.\r\n\r\n{course}\r\n','payment','Active'),(2,'Sms to student for enrolling to batch','Dear {name},\r\nYou are enrolled to course- {course} and batch-{batch} .\r\nThank You','studentbatch','Active'),(3,'Sms to instructor for assigning him/her for a batch','Dear {name},\r\nYou are now assigned for course- {course} and batch- {batch}.\r\n\r\nThank You','instructor','Active'),(4,'Sms to student to enroll in institution','Dear {name},\r\n Your are successfully admitted to this institute.\r\n\r\n Thank You ','student','Active'),(7,'Auto email to employee for notifying their assigning work','Dear {name},\r\nYou are assigned for this task-{taskname} .\r\nAssigned By- {assignbyname}\r\nPlease Check your profile for further details.\r\nThank you','taskassign','Active'),(9,'Send Registration Confirmation to Employee','Dear {name},\r\nYou are appointed as a {designation}  in {institution}.\r\nThank YOu','employee','Active'),(10,'Send Registration Confirmation to Instructor','Dear {name},\r\nYou are appointed as a instructor in {institution}.\r\nThank YOu','instructoraapoin','Active');
/*!40000 ALTER TABLE `autosmstemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `batch_id` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `instructor` varchar(100) NOT NULL,
  `course_fee` varchar(100) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `n_o_students` varchar(100) NOT NULL,
  `coursename` varchar(1000) DEFAULT NULL,
  `instructorname` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_course`
--

DROP TABLE IF EXISTS `batch_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_course` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `batch` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_course`
--

LOCK TABLES `batch_course` WRITE;
/*!40000 ALTER TABLE `batch_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_material`
--

DROP TABLE IF EXISTS `batch_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_material` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `batch_id` varchar(1000) DEFAULT NULL,
  `batchname` varchar(1000) DEFAULT NULL,
  `course_id` varchar(1000) DEFAULT NULL,
  `coursename` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `materialid` varchar(1000) DEFAULT NULL,
  `iconurl` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_material`
--

LOCK TABLES `batch_material` WRITE;
/*!40000 ALTER TABLE `batch_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `course_fee` varchar(100) NOT NULL,
  `material` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_material`
--

DROP TABLE IF EXISTS `course_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_material` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `addtobatch` varchar(1000) DEFAULT NULL,
  `coursename` varchar(1000) DEFAULT NULL,
  `iconurl` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_material`
--

LOCK TABLES `course_material` WRITE;
/*!40000 ALTER TABLE `course_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_material` ENABLE KEYS */;
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
  `dateformat` varchar(1000) DEFAULT NULL,
  `message` varchar(10000) NOT NULL,
  `reciepient` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
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
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_template` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template`
--

LOCK TABLES `email_template` WRITE;
/*!40000 ALTER TABLE `email_template` DISABLE KEYS */;
INSERT INTO `email_template` VALUES (1,'test2222','<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>sds</td>\r\n			<td>sddsd</td>\r\n		</tr>\r\n		<tr>\r\n			<td>sdsds</td>\r\n			<td>sdsd</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ddsds</td>\r\n			<td>sdsds</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n{email}{instructor}','email'),(2,'sdgfgfdgfdgdf','{email}{instructor}{address}','email'),(3,'sdgfgfdgfdgdf','{email}{instructor}{address}','email'),(4,'First Name','{email}{instructor}{address}{course}{batch}',NULL),(5,'fgfdgdfgdf','gdfgdfgdfgdfgdfgdfgdfg','email');
/*!40000 ALTER TABLE `email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `ion_user_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (5,'uploads/favicon5.png','Mr. Employee','employee@example.com','Collegepara, Rajbari','Admin Officer','+0123456789','','354');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
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
  `category` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
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
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_category`
--

LOCK TABLES `expense_category` WRITE;
/*!40000 ALTER TABLE `expense_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontend`
--

DROP TABLE IF EXISTS `frontend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frontend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sliderImage1` varchar(500) NOT NULL,
  `sliderImage2` varchar(500) NOT NULL,
  `sliderImage3` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontend`
--

LOCK TABLES `frontend` WRITE;
/*!40000 ALTER TABLE `frontend` DISABLE KEYS */;
/*!40000 ALTER TABLE `frontend` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin','Administrator'),(2,'members','General User'),(3,'Employee','For Financial Activities'),(4,'Instructor','Instructor'),(5,'Student','Students');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `add_date` varchar(100) NOT NULL,
  `ion_user_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (7,'uploads/favicon8.png','Mr Instructor','instructor@example.com','+0123456789','Collegepara, Rajbari','','','353');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` VALUES (1,'45.120.114.166','student@example.com',1574673655);
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manualemailshortcode`
--

DROP TABLE IF EXISTS `manualemailshortcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manualemailshortcode` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manualemailshortcode`
--

LOCK TABLES `manualemailshortcode` WRITE;
/*!40000 ALTER TABLE `manualemailshortcode` DISABLE KEYS */;
INSERT INTO `manualemailshortcode` VALUES (1,'{firstname}','email'),(2,'{lastname}','email'),(3,'{name}','email'),(4,'{batch}','email'),(5,'{course}','email'),(6,'{address}','email'),(7,'{instructor}','email'),(8,'{email}','email'),(9,'{phone}','email');
/*!40000 ALTER TABLE `manualemailshortcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manualshortcode`
--

DROP TABLE IF EXISTS `manualshortcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manualshortcode` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manualshortcode`
--

LOCK TABLES `manualshortcode` WRITE;
/*!40000 ALTER TABLE `manualshortcode` DISABLE KEYS */;
INSERT INTO `manualshortcode` VALUES (1,'{firstname}','sms'),(2,'{lastname}','sms'),(3,'{name}','sms'),(4,'{email}','sms'),(5,'{phone}','sms'),(6,'{address}','sms'),(7,'{batch}','sms'),(8,'{instructor}','sms'),(10,'{course}','sms');
/*!40000 ALTER TABLE `manualshortcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` varchar(100) NOT NULL,
  `add_date` varchar(100) NOT NULL,
  `adddate` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_log`
--

DROP TABLE IF EXISTS `office_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_log` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `sign_in_time` varchar(100) NOT NULL,
  `sign_in_ip` varchar(100) NOT NULL,
  `sign_out_time` varchar(100) NOT NULL,
  `sign_out_ip` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_log`
--

LOCK TABLES `office_log` WRITE;
/*!40000 ALTER TABLE `office_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `office_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `student` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `gross_total` varchar(100) NOT NULL,
  `amount_received` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
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
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `c_price` varchar(100) NOT NULL,
  `d_commission` int(100) NOT NULL,
  `h_commission` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_category`
--

LOCK TABLES `payment_category` WRITE;
/*!40000 ALTER TABLE `payment_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgateway`
--

DROP TABLE IF EXISTS `pgateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pgateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `signature` varchar(500) NOT NULL,
  `merchant_key` varchar(500) NOT NULL,
  `salt` varchar(500) NOT NULL,
  `publish` varchar(500) NOT NULL,
  `secret` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgateway`
--

LOCK TABLES `pgateway` WRITE;
/*!40000 ALTER TABLE `pgateway` DISABLE KEYS */;
INSERT INTO `pgateway` VALUES (1,'PayPal','','','','','','','',''),(2,'Stripe','','','','','','','',''),(3,'PayU Money','','','','','','','','test');
/*!40000 ALTER TABLE `pgateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routine`
--

DROP TABLE IF EXISTS `routine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routine` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `course` varchar(100) NOT NULL,
  `batch_id` varchar(100) NOT NULL,
  `batchcode` varchar(1000) DEFAULT NULL,
  `routine` varchar(5000) DEFAULT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routine`
--

LOCK TABLES `routine` WRITE;
/*!40000 ALTER TABLE `routine` DISABLE KEYS */;
/*!40000 ALTER TABLE `routine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `system_vendor` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook_id` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `date_format` varchar(100) NOT NULL,
  `login_title` varchar(100) NOT NULL,
  `login_logoo` varchar(100) NOT NULL,
  `codec_username` varchar(100) NOT NULL,
  `codec_purchase_code` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `sms_gateway` varchar(100) DEFAULT NULL,
  `payment_gateway` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Code Aristos Training Academy','Trai ning','CollegePara, Rajbari','+012345678','admin@example.com','#','$','','percentage','2','Training Center Management System','uploads/thumbnail.jpg','','','english','Twilio','PayPal');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
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
  `dateformat` varchar(100) DEFAULT NULL,
  `message` varchar(100) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
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
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `sendernumber` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_settings`
--

LOCK TABLES `sms_settings` WRITE;
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` VALUES (1,'Clickatell','','','','','','1','','',''),(2,'MSG91','','','','','','1','','',''),(5,'Twilio','','','','','','1','','','');
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `add_date` varchar(100) NOT NULL,
  `ion_user_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (6,'uploads/favicon3.png','Mr Student','student@example.com','Collegepara, Rajbari','+0123456789','','1486066379','358');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_batch`
--

DROP TABLE IF EXISTS `student_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_batch` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `student` varchar(100) NOT NULL,
  `batch` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_batch`
--

LOCK TABLES `student_batch` WRITE;
/*!40000 ALTER TABLE `student_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `requested_by` varchar(100) NOT NULL,
  `requested_for` varchar(100) NOT NULL,
  `to_do` varchar(1000) NOT NULL,
  `timeline` varchar(100) NOT NULL,
  `to_do_report` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL,
  `add_date` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `requested_byname` varchar(1000) DEFAULT NULL,
  `requested_forname` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_category`
--

DROP TABLE IF EXISTS `task_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `x` varchar(100) NOT NULL,
  `y` varchar(100) NOT NULL,
  `z` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_category`
--

LOCK TABLES `task_category` WRITE;
/*!40000 ALTER TABLE `task_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
INSERT INTO `template` VALUES (1,'test','{firstname} come to my offce {lastname}','sms'),(2,'test11','{address} {name}{name} {phone}','sms'),(3,'sdgfgfdgfdgdf','<p>{email}{instructor}{address} gfdgdfg</p>\r\n','email'),(4,'qwert',' {firstname} is this','sms'),(6,'dsfsdfsdfds',' {firstname}{lastname}{name}{address}{email}{phone}','sms'),(7,'test223','<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>dsfsf</td>\r\n			<td>sdfsdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>sdfdsf</td>\r\n			<td>dfdsf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>dfdf</td>\r\n			<td>dfdfd</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n{email}{instructor}','email');
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'127.0.0.1','admin','$2y$08$9VBRxBZsZaPfPvD.wEVJKuYbGrp4oeUN.b4A1d8cho6ERewMS00jC','','admin@example.com','','dc10sss4EZougSSnIBO8gu314b5803e044d47f0c',1435777809,'zCeJpcj78CKqJ4sVxVbxcO',1268889823,1574747608,1,'Admin','istrator','ADMIN','0'),(353,'103.231.160.34','Mr Instructor','$2y$08$jjPHAzet9D5DC0PVstCsruVm.rRqbpmM24eIhKn7FLZOZx1b5aYgy',NULL,'instructor@example.com',NULL,NULL,NULL,NULL,1485348618,1574591339,1,NULL,NULL,NULL,NULL),(354,'103.231.160.34','Mr. Employee','$2y$08$wJ6ApXTu4pHYPs5roPob2OXYq2NLusOT0NzpXNO/qkc9O92A1/8j6',NULL,'employee@example.com',NULL,NULL,NULL,NULL,1485348676,1574679305,1,NULL,NULL,NULL,NULL),(358,'110.76.129.222','student@example.com','$2y$08$/9wi/VMB4bSsuyxF781jZOoPtaq.EAfH29Ik2frXR7eZjCUo918g.',NULL,'student@example.com',NULL,NULL,NULL,NULL,1486066379,1486066499,1,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1,1),(2,1,2),(355,353,4),(356,354,3),(360,358,5);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `about` varchar(1000) NOT NULL,
  `facebook` varchar(500) NOT NULL,
  `twitter` varchar(500) NOT NULL,
  `tumblr` varchar(500) NOT NULL,
  `slider1` varchar(500) NOT NULL,
  `slider2` varchar(500) NOT NULL,
  `slider3` varchar(500) NOT NULL,
  `course1` varchar(100) NOT NULL,
  `course1detail` varchar(500) NOT NULL,
  `course2` varchar(100) NOT NULL,
  `course2detail` varchar(500) NOT NULL,
  `course3` varchar(100) NOT NULL,
  `course3detail` varchar(500) NOT NULL,
  `instructor1` varchar(100) NOT NULL,
  `instructor1detail` varchar(500) NOT NULL,
  `instructor2` varchar(100) NOT NULL,
  `instructor2detail` varchar(500) NOT NULL,
  `instructor3` varchar(100) NOT NULL,
  `instructor3detail` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
INSERT INTO `website` VALUES (1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                                                                                                                                                                                                                                                                                                                                                                                                                                    ','https://www.facebook.com/casft','#','#','uploads/1UVm5I1j351RFw8aLHpVs5g.jpg','','','CSE115',' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop ','CSE235',' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop ','CSE456',' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop ','asa',' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop ','aga',' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop ','ada',' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop ');
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:15:23
