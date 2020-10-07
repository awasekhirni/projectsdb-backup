-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: clinicmgmtdb
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
-- Temporary view structure for view `action_serial`
--

DROP TABLE IF EXISTS `action_serial`;
/*!50001 DROP VIEW IF EXISTS `action_serial`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `action_serial` AS SELECT 
 1 AS `id`,
 1 AS `appointment_id`,
 1 AS `patient_id`,
 1 AS `phone_number`,
 1 AS `schedul_id`,
 1 AS `date`,
 1 AS `sequence`,
 1 AS `doctor_id`,
 1 AS `problem`,
 1 AS `get_date_time`,
 1 AS `get_by`,
 1 AS `status`,
 1 AS `day`,
 1 AS `start_time`,
 1 AS `end_time`,
 1 AS `per_patient_time`,
 1 AS `visibility`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `app_setting`
--

DROP TABLE IF EXISTS `app_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_setting`
--

LOCK TABLES `app_setting` WRITE;
/*!40000 ALTER TABLE `app_setting` DISABLE KEYS */;
INSERT INTO `app_setting` VALUES (1,'english');
/*!40000 ALTER TABLE `app_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_tbl`
--

DROP TABLE IF EXISTS `appointment_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_tbl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appointment_id` varchar(250) NOT NULL,
  `patient_id` varchar(250) NOT NULL,
  `phone_number` varchar(120) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `schedul_id` int(11) NOT NULL,
  `sequence` varchar(100) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `get_date_time` datetime NOT NULL,
  `get_by` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_tbl`
--

LOCK TABLES `appointment_tbl` WRITE;
/*!40000 ALTER TABLE `appointment_tbl` DISABLE KEYS */;
INSERT INTO `appointment_tbl` VALUES (1,'A17JR0IC','P17K8JD','534535345345',5,16,'02:05 AM','Demo','2017-11-20 09:33:16',1,'2017-11-20',1),(2,'A17R72WB','P17YVT8','35235345',5,13,'02:00 AM','fsfsdf','2017-11-21 04:57:19',14,'2017-11-21',1);
/*!40000 ALTER TABLE `appointment_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
  `md_id` int(11) DEFAULT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `ms_id` int(11) NOT NULL,
  PRIMARY KEY (`mc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,1,'Category One',1,1),(2,2,'Cata Two',2,2),(3,23,'Category Three',2,4);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classification`
--

DROP TABLE IF EXISTS `classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classification` (
  `classific_id` int(11) NOT NULL AUTO_INCREMENT,
  `classification` text,
  `cat_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`classific_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification`
--

LOCK TABLES `classification` WRITE;
/*!40000 ALTER TABLE `classification` DISABLE KEYS */;
INSERT INTO `classification` VALUES (1,'Classification One',1,1),(2,'Classification Two',2,2),(3,'Classification 5',3,2);
/*!40000 ALTER TABLE `classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_sms_info`
--

DROP TABLE IF EXISTS `custom_sms_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_sms_info` (
  `custom_sms_id` int(11) NOT NULL,
  `reciver` varchar(100) NOT NULL,
  `gateway` text NOT NULL,
  `message` text NOT NULL,
  `sms_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_sms_info`
--

LOCK TABLES `custom_sms_info` WRITE;
/*!40000 ALTER TABLE `custom_sms_info` DISABLE KEYS */;
INSERT INTO `custom_sms_info` VALUES (0,'534535345345','nexmo','ssss','0000-00-00 00:00:00'),(0,'35235345','nexmo','ssss','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `custom_sms_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disease` (
  `md_id` int(11) NOT NULL AUTO_INCREMENT,
  `ms_id` int(11) DEFAULT NULL,
  `disease_name` text,
  `lang_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`md_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (1,1,'Disease One',1),(2,2,'Disease Two',2),(15,6,'Ã¦Å“Ë†Ã§Â»ÂÃ§â€”â€¦',3),(16,6,'Ã¥Â¸Â¦Ã¤Â¸â€¹Ã§â€”â€¦',3),(17,6,'Ã¥Â¦Å Ã¥Â¨Â Ã§â€”â€¦',3),(18,6,'Ã¤Â¸Â´Ã¤ÂºÂ§Ã§â€”â€¦',3),(19,7,'Ã¦â€“Â°Ã§â€Å¸Ã¥â€žÂ¿Ã§â€“Â¾Ã§â€”â€¦',3),(20,7,'Ã¨â€šÂ¾Ã§Â³Â»Ã§â€“Â¾Ã§â€”â€¦',3),(21,7,'Ã¤Â¼Â Ã¦Å¸â€œÃ§â€”â€¦',3),(22,7,'Ã¥Â¯â€žÃ§â€Å¸Ã¨â„¢Â«Ã§â€”â€¦',3),(23,4,'Hear Deasease',2),(24,4,'Head Deases',2),(25,5,'Nose Deases',2);
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_details`
--

DROP TABLE IF EXISTS `doctor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_details` (
  `doctor_details_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `doctor_short_bio` text,
  `doctor_details_bio` text,
  `academic_info` text,
  `work_experience` text,
  PRIMARY KEY (`doctor_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_details`
--

LOCK TABLES `doctor_details` WRITE;
/*!40000 ALTER TABLE `doctor_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_tbl`
--

DROP TABLE IF EXISTS `doctor_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_tbl` (
  `doctor_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `doctor_name` varchar(120) NOT NULL,
  `department` text NOT NULL,
  `designation` varchar(120) NOT NULL,
  `degrees` text NOT NULL,
  `specialist` varchar(250) NOT NULL,
  `doctor_exp` text,
  `birth_date` date NOT NULL,
  `sex` varchar(50) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `doctor_phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `service_place` text,
  `about_me` text,
  `picture` varchar(100) DEFAULT NULL,
  `doctor_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_tbl`
--

LOCK TABLES `doctor_tbl` WRITE;
/*!40000 ALTER TABLE `doctor_tbl` DISABLE KEYS */;
INSERT INTO `doctor_tbl` VALUES (1,1,'Jhon Dev','available','There are many variations of passages of Lorem Ipsum available','There are many variations of passages of Lorem Ipsum available','There are many variations of passages of Lorem Ipsum available','There are many variations of passages of Lorem Ipsum available','2017-06-10','Male','A+','01751194212','                                                                                                                                    There are many variations of passages of Lorem Ipsum available                                                             ','There are many variations of passages of Lorem Ipsum available','                                                                                                                                                <p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have suffered alteration in some form, by injected humour, or \r\nrandomised words which don\'t look even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsum, you need to be sure there isn\'t \r\nanything embarrassing hidden in the middle of text. All the Lorem Ipsum \r\ngenerators on the Internet tend to repeat predefined chunks as \r\nnecessary, <br></p>                                                                                                                           ','http://localhost/bdc/clinick/./assets/uploads/doctor/appoin.jpg',1),(5,14,'Johan','CSE','MBBS','FCPS','Nose','5 Years Experience','1998-11-09','Male','A+','452345435235','98 Green Road, Farmgate, Dhaka-1215','Dhaka Medical College','I am a Professional Doctor','http://clinic365.bdtask.com/./assets/uploads/doctor/tanzil.jpg',1);
/*!40000 ALTER TABLE `doctor_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_config` (
  `email_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `at_appointment` int(11) NOT NULL,
  `at_registration` int(11) NOT NULL,
  `reminder` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `mailpath` text NOT NULL,
  `mailtype` text NOT NULL,
  `sender` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_config`
--

LOCK TABLES `email_config` WRITE;
/*!40000 ALTER TABLE `email_config` DISABLE KEYS */;
INSERT INTO `email_config` VALUES (1,1,1,0,'sendmail','/usr/sbin/sendmail','html','doctorss@gmail.com',1);
/*!40000 ALTER TABLE `email_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_delivery`
--

DROP TABLE IF EXISTS `email_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_delivery` (
  `email_delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_ss_id` int(11) DEFAULT NULL,
  `reciver_email` varchar(120) NOT NULL,
  `delivery_date_time` datetime NOT NULL,
  `email_info_id` int(11) DEFAULT NULL,
  `message` longtext,
  PRIMARY KEY (`email_delivery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_delivery`
--

LOCK TABLES `email_delivery` WRITE;
/*!40000 ALTER TABLE `email_delivery` DISABLE KEYS */;
INSERT INTO `email_delivery` VALUES (1,NULL,'hena@gmail.com','2017-11-20 09:33:17',NULL,'\r\n \r\n  \r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Doctoress</title>\r\n\r\n    <style type=\"text/css\">\r\n\r\n\r\n     @media only screen and (max-width: 680px){\r\n        body{width:100% !important; min-width:100% !important;} \r\n        \r\n        table[id=\"emailBody\"],\r\n        table[class=\"flexibleContainer\"],\r\n       td[class=\"flexibleContainerCell\"] {width:100% !important;}\r\n        td[class=\"flexibleContainerBox\"], td[class=\"flexibleContainerBox\"] table {display: block;width: 100%;text-align: left;}\r\n       table[class=\"flexibleContainerBoxNext\"]{padding-top: 10px !important;}\r\n  \r\n      }\r\n   </style>\r\n\r\n\r\n  \r\n\r\n\r\n  \r\n\r\n    <center style=\"background-color:#E1E1E1;\">\r\n      <table id=\"bodyTable\" style=\"table-layout: fixed;max-width:100% !important;width: 100% !important;min-width: 100% !important;\" width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n       <tbody><tr>\r\n         <td valign=\"top\" align=\"center\">\r\n\r\n\r\n            <table id=\"emailBody\" width=\"700\" bgcolor=\"#FFFFFF\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n\r\n             <tbody><tr>\r\n               <td valign=\"top\" align=\"center\">\r\n\r\n                  <table style=\"color:#FFFFFF;\" width=\"100%\" bgcolor=\"#3498db\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                          <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\" align=\"center\">\r\n\r\n                            \r\n                              <table width=\"100%\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"textContent\" valign=\"top\" align=\"center\">\r\n                                    <h1 style=\"color:#FFFFFF;line-height:100%;font-family:Helvetica,Arial,sans-serif;font-size:35px;font-weight:normal;margin-bottom:5px;text-align:center;\">\r\n                                   Hi! hena</h1>\r\n                                   <h2 style=\"text-align:center;font-weight:normal;font-family:Helvetica,Arial,sans-serif;font-size:23px;margin-bottom:10px;color:#205478;line-height:135%;\">\r\n                                    Your Appointment Information</h2>\r\n                                 </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                        \r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n\r\n\r\n             <tr>\r\n                <td valign=\"top\" align=\"center\">\r\n\r\n                  <table style=\"color:#FFFFFF;\" width=\"100%\" bgcolor=\"#3498db\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                          <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\" align=\"center\">\r\n\r\n                            \r\n                              <table width=\"100%\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"textContent\" valign=\"top\" align=\"center\">\r\n                                    <p style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#fff;line-height:135%;\">\r\n                                      Thnks for your appointment request to Jhon Dev .\r\n                                     This is an automatic system generated email as with na\r\n                                      appointment.\r\n                                      Your appointment details as below...\r\n                                    </p>\r\n                                  </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                        \r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n         \r\n              <tr>\r\n                <td valign=\"top\" align=\"center\">\r\n                  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                   <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                         <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\">\r\n\r\n                             <table width=\"100%\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"flexibleContainerBox\" valign=\"middle\" align=\"left\">\r\n                                    <table class=\"flexibleContainerBoxNext\" style=\"max-width: 100%;\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                      <tbody><tr>\r\n                                       <td style=\"margin-left: 1em;\">\r\n                                          <h3 style=\"color:#5F5F5F;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;\">\r\n                                            Your name : hena</h3>\r\n                                         <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            Your ID : P17K8JD, </div>\r\n                                         <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            Appointment ID : A17JR0IC, </div>\r\n                                          <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            Serial : 02:05 AM </div>\r\n                                         <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            and Appointment Date : 20 November 2017. \r\n                                          </div>\r\n                                        </td>\r\n                                     </tr>\r\n                                   </tbody></table>\r\n                                  </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n\r\n\r\n             <tr>\r\n                <td valign=\"top\" align=\"center\">\r\n\r\n                  <table style=\"color:#FFFFFF;\" width=\"100%\" bgcolor=\"#3498db\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                          <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\" align=\"center\">\r\n\r\n                            \r\n                              <table width=\"100%\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"textContent\" valign=\"top\" align=\"center\">\r\n                                    \r\n                                    <div style=\"text-align:center;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#FFFFFF;line-height:135%;\">\r\n                                      Thank you for the Appointment\r\n                                    </div>\r\n                                  </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                        \r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n\r\n         \r\n        \r\n      </tbody></table>\r\n    \r\n  \r\n\r\n</td></tr></tbody></table></center>'),(2,NULL,'doctor@gmail.com','2017-11-21 04:57:19',NULL,'\r\n \r\n  \r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Doctoress</title>\r\n\r\n    <style type=\"text/css\">\r\n\r\n\r\n     @media only screen and (max-width: 680px){\r\n        body{width:100% !important; min-width:100% !important;} \r\n        \r\n        table[id=\"emailBody\"],\r\n        table[class=\"flexibleContainer\"],\r\n       td[class=\"flexibleContainerCell\"] {width:100% !important;}\r\n        td[class=\"flexibleContainerBox\"], td[class=\"flexibleContainerBox\"] table {display: block;width: 100%;text-align: left;}\r\n       table[class=\"flexibleContainerBoxNext\"]{padding-top: 10px !important;}\r\n  \r\n      }\r\n   </style>\r\n\r\n\r\n  \r\n\r\n\r\n  \r\n\r\n    <center style=\"background-color:#E1E1E1;\">\r\n      <table id=\"bodyTable\" style=\"table-layout: fixed;max-width:100% !important;width: 100% !important;min-width: 100% !important;\" width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n       <tbody><tr>\r\n         <td valign=\"top\" align=\"center\">\r\n\r\n\r\n            <table id=\"emailBody\" width=\"700\" bgcolor=\"#FFFFFF\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n\r\n             <tbody><tr>\r\n               <td valign=\"top\" align=\"center\">\r\n\r\n                  <table style=\"color:#FFFFFF;\" width=\"100%\" bgcolor=\"#3498db\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                          <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\" align=\"center\">\r\n\r\n                            \r\n                              <table width=\"100%\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"textContent\" valign=\"top\" align=\"center\">\r\n                                    <h1 style=\"color:#FFFFFF;line-height:100%;font-family:Helvetica,Arial,sans-serif;font-size:35px;font-weight:normal;margin-bottom:5px;text-align:center;\">\r\n                                   Hi! fsdf</h1>\r\n                                   <h2 style=\"text-align:center;font-weight:normal;font-family:Helvetica,Arial,sans-serif;font-size:23px;margin-bottom:10px;color:#205478;line-height:135%;\">\r\n                                    Your Appointment Information</h2>\r\n                                 </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                        \r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n\r\n\r\n             <tr>\r\n                <td valign=\"top\" align=\"center\">\r\n\r\n                  <table style=\"color:#FFFFFF;\" width=\"100%\" bgcolor=\"#3498db\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                          <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\" align=\"center\">\r\n\r\n                            \r\n                              <table width=\"100%\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"textContent\" valign=\"top\" align=\"center\">\r\n                                    <p style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#fff;line-height:135%;\">\r\n                                      Thnks for your appointment request to Johan .\r\n                                     This is an automatic system generated email as with na\r\n                                      appointment.\r\n                                      Your appointment details as below...\r\n                                    </p>\r\n                                  </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                        \r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n         \r\n              <tr>\r\n                <td valign=\"top\" align=\"center\">\r\n                  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                   <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                         <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\">\r\n\r\n                             <table width=\"100%\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"flexibleContainerBox\" valign=\"middle\" align=\"left\">\r\n                                    <table class=\"flexibleContainerBoxNext\" style=\"max-width: 100%;\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                      <tbody><tr>\r\n                                       <td style=\"margin-left: 1em;\">\r\n                                          <h3 style=\"color:#5F5F5F;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;\">\r\n                                            Your name : fsdf</h3>\r\n                                         <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            Your ID : P17YVT8, </div>\r\n                                         <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            Appointment ID : A17R72WB, </div>\r\n                                          <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            Serial : 02:00 AM </div>\r\n                                         <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            and Appointment Date : 21 November 2017. \r\n                                          </div>\r\n                                        </td>\r\n                                     </tr>\r\n                                   </tbody></table>\r\n                                  </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n\r\n\r\n             <tr>\r\n                <td valign=\"top\" align=\"center\">\r\n\r\n                  <table style=\"color:#FFFFFF;\" width=\"100%\" bgcolor=\"#3498db\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                          <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\" align=\"center\">\r\n\r\n                            \r\n                              <table width=\"100%\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"textContent\" valign=\"top\" align=\"center\">\r\n                                    \r\n                                    <div style=\"text-align:center;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#FFFFFF;line-height:135%;\">\r\n                                      Thank you for the Appointment\r\n                                    </div>\r\n                                  </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                        \r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n\r\n         \r\n        \r\n      </tbody></table>\r\n    \r\n  \r\n\r\n</td></tr></tbody></table></center>');
/*!40000 ALTER TABLE `email_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_info`
--

DROP TABLE IF EXISTS `email_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_info` (
  `email_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(255) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_phone` varchar(111) NOT NULL,
  `patient_email` varchar(111) DEFAULT NULL,
  `appointment_date` datetime NOT NULL,
  `appointment_id` varchar(111) NOT NULL,
  `status` int(11) DEFAULT '0',
  `email_counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_info`
--

LOCK TABLES `email_info` WRITE;
/*!40000 ALTER TABLE `email_info` DISABLE KEYS */;
INSERT INTO `email_info` VALUES (1,'P17K8JD',5,'534535345345','hena@gmail.com','2017-11-20 02:00:00','A17JR0IC',0,0),(2,'P17YVT8',5,'35235345','doctor@gmail.com','2017-11-21 02:00:00','A17R72WB',0,0);
/*!40000 ALTER TABLE `email_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_schedule`
--

DROP TABLE IF EXISTS `email_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_schedule` (
  `email_ss_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_temp_id` int(11) NOT NULL,
  `email_ss_name` text NOT NULL,
  `email_schedule` varchar(100) NOT NULL,
  `email_ss_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_schedule`
--

LOCK TABLES `email_schedule` WRITE;
/*!40000 ALTER TABLE `email_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_template` (
  `email_temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_temp_name` text NOT NULL,
  `email_template` longtext NOT NULL,
  `email_temp_status` int(11) DEFAULT '1',
  `default_status` int(11) NOT NULL DEFAULT '0',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `set_default` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email_temp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template`
--

LOCK TABLES `email_template` WRITE;
/*!40000 ALTER TABLE `email_template` DISABLE KEYS */;
INSERT INTO `email_template` VALUES (1,'Default Template','\r\n \r\n  \r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Doctoress</title>\r\n\r\n    <style type=\"text/css\">\r\n\r\n\r\n     @media only screen and (max-width: 680px){\r\n        body{width:100% !important; min-width:100% !important;} \r\n        \r\n        table[id=\"emailBody\"],\r\n        table[class=\"flexibleContainer\"],\r\n       td[class=\"flexibleContainerCell\"] {width:100% !important;}\r\n        td[class=\"flexibleContainerBox\"], td[class=\"flexibleContainerBox\"] table {display: block;width: 100%;text-align: left;}\r\n       table[class=\"flexibleContainerBoxNext\"]{padding-top: 10px !important;}\r\n  \r\n      }\r\n   </style>\r\n\r\n\r\n  \r\n\r\n\r\n  \r\n\r\n    <center style=\"background-color:#E1E1E1;\">\r\n      <table id=\"bodyTable\" style=\"table-layout: fixed;max-width:100% !important;width: 100% !important;min-width: 100% !important;\" width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n       <tbody><tr>\r\n         <td valign=\"top\" align=\"center\">\r\n\r\n\r\n            <table id=\"emailBody\" width=\"700\" bgcolor=\"#FFFFFF\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n\r\n             <tbody><tr>\r\n               <td valign=\"top\" align=\"center\">\r\n\r\n                  <table style=\"color:#FFFFFF;\" width=\"100%\" bgcolor=\"#3498db\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                          <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\" align=\"center\">\r\n\r\n                            \r\n                              <table width=\"100%\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"textContent\" valign=\"top\" align=\"center\">\r\n                                    <h1 style=\"color:#FFFFFF;line-height:100%;font-family:Helvetica,Arial,sans-serif;font-size:35px;font-weight:normal;margin-bottom:5px;text-align:center;\">\r\n                                   Hi! %patient_name%</h1>\r\n                                   <h2 style=\"text-align:center;font-weight:normal;font-family:Helvetica,Arial,sans-serif;font-size:23px;margin-bottom:10px;color:#205478;line-height:135%;\">\r\n                                    Your Appointment Information</h2>\r\n                                 </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                        \r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n\r\n\r\n             <tr>\r\n                <td valign=\"top\" align=\"center\">\r\n\r\n                  <table style=\"color:#FFFFFF;\" width=\"100%\" bgcolor=\"#3498db\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                          <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\" align=\"center\">\r\n\r\n                            \r\n                              <table width=\"100%\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"textContent\" valign=\"top\" align=\"center\">\r\n                                    <p style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#fff;line-height:135%;\">\r\n                                      Thnks for your appointment request to %doctor_name% .\r\n                                     This is an automatic system generated email as with na\r\n                                      appointment.\r\n                                      Your appointment details as below...\r\n                                    </p>\r\n                                  </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                        \r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n         \r\n              <tr>\r\n                <td valign=\"top\" align=\"center\">\r\n                  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                   <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                         <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\">\r\n\r\n                             <table width=\"100%\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"flexibleContainerBox\" valign=\"middle\" align=\"left\">\r\n                                    <table class=\"flexibleContainerBoxNext\" style=\"max-width: 100%;\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                      <tbody><tr>\r\n                                       <td style=\"margin-left: 1em;\">\r\n                                          <h3 style=\"color:#5F5F5F;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;\">\r\n                                            Your name : %patient_name%</h3>\r\n                                         <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            Your ID : %patient_id%, </div>\r\n                                         <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            Appointment ID : %appointment_id%, </div>\r\n                                          <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            Serial : %sequence% </div>\r\n                                         <div style=\"text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;\">\r\n                                            and Appointment Date : %appointment_date%. \r\n                                          </div>\r\n                                        </td>\r\n                                     </tr>\r\n                                   </tbody></table>\r\n                                  </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n\r\n\r\n             <tr>\r\n                <td valign=\"top\" align=\"center\">\r\n\r\n                  <table style=\"color:#FFFFFF;\" width=\"100%\" bgcolor=\"#3498db\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tbody><tr>\r\n                     <td valign=\"top\" align=\"center\">\r\n\r\n                        <table class=\"flexibleContainer\" width=\"700\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                          <tbody><tr>\r\n                           <td class=\"flexibleContainerCell\" valign=\"top\" width=\"700\" align=\"center\">\r\n\r\n                            \r\n                              <table width=\"100%\" border=\"0\" cellpadding=\"30\" cellspacing=\"0\">\r\n                                <tbody><tr>\r\n                                 <td class=\"textContent\" valign=\"top\" align=\"center\">\r\n                                    \r\n                                    <div style=\"text-align:center;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#FFFFFF;line-height:135%;\">\r\n                                      Thank you for the Appointment\r\n                                    </div>\r\n                                  </td>\r\n                               </tr>\r\n                             </tbody></table>\r\n\r\n                            </td>\r\n                         </tr>\r\n                       </tbody></table>\r\n                        \r\n                      </td>\r\n                   </tr>\r\n                 </tbody></table>\r\n                </td>\r\n             </tr>\r\n\r\n         \r\n        \r\n      </tbody></table>\r\n    \r\n  \r\n\r\n</td></tr></tbody></table></center>',1,1,0,1);
/*!40000 ALTER TABLE `email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emergency_stop_tbl`
--

DROP TABLE IF EXISTS `emergency_stop_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emergency_stop_tbl` (
  `stop_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `stop_date` date NOT NULL,
  `schedul_date` date NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergency_stop_tbl`
--

LOCK TABLES `emergency_stop_tbl` WRITE;
/*!40000 ALTER TABLE `emergency_stop_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `emergency_stop_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `herbs`
--

DROP TABLE IF EXISTS `herbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `herbs` (
  `herbs_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) NOT NULL,
  `herbs` text NOT NULL,
  PRIMARY KEY (`herbs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herbs`
--

LOCK TABLES `herbs` WRITE;
/*!40000 ALTER TABLE `herbs` DISABLE KEYS */;
INSERT INTO `herbs` VALUES (1,1,'Herbs One'),(2,2,'herbs2'),(3,1,'herbs3'),(4,2,'herbs4'),(5,2,'h1'),(6,2,'h2'),(8,3,'h3'),(9,3,'h4'),(10,3,'h5'),(11,3,'h6'),(12,3,'h7'),(13,3,'h8'),(14,3,'h9'),(15,2,'Medicien Herb2');
/*!40000 ALTER TABLE `herbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance_company_name` text,
  PRIMARY KEY (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `patient_id` varchar(111) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `total_tax` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `payment_notes` text,
  `payment_method` varchar(250) NOT NULL,
  `payment_method_notes` text,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_product`
--

DROP TABLE IF EXISTS `invoice_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_product` (
  `inv_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `grand_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`inv_p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_product`
--

LOCK TABLES `invoice_product` WRITE;
/*!40000 ALTER TABLE `invoice_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` text NOT NULL,
  `english` text,
  `spanish` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'deashbord','Dashboard',NULL),(2,'prescription','Prescription',NULL),(3,'appointment','Appointment',NULL),(4,'create_trade','Create (Trade)',NULL),(5,'create_generic','Create (Generic)',NULL),(6,'create_appointment','Create Appointment',NULL),(7,'appointment_list','Appointment List',NULL),(8,'patient','Patient',NULL),(9,'add_new_patient','Add New Patient',NULL),(10,'patient_list','Patient List',NULL),(11,'schedule','Schedule',NULL),(12,'add_schedule','Add Schedule',NULL),(13,'schedule_list','Schedule List',NULL),(14,'emergency_stop','Emergency Stop',NULL),(15,'stop','Stop',NULL),(16,'emergency_stop_list','Emergency Stop List',NULL),(17,'venue','Venue',NULL),(18,'create_venue','Create Venue',NULL),(19,'venue_list','Venue List',NULL),(20,'setup_data','Setup Data',NULL),(21,'add_medicine','Add New Medicine',NULL),(22,'medicine_list','Medicine List',NULL),(23,'add_company','Add Company',NULL),(24,'add_group','Add Group',NULL),(25,'add_advice','Add Advice',NULL),(26,'add_test_name','Add Test Name',NULL),(27,'test_list','Test List',NULL),(28,'users','Users',NULL),(29,'web_site','Web Site',NULL),(30,'language_setting','Language Setting',NULL),(31,'web_setting','Web Settiing',NULL),(32,'header_setup','Header Setup',NULL),(33,'profile','Profile',NULL),(34,'slider','Slider setup',NULL),(35,'blog','Blog',NULL),(36,'add_new_post','Add New Post',NULL),(37,'post_list','Post List',NULL),(38,'gateway','Gateway Setup',NULL),(39,'sms_template','Template',NULL),(40,'send_custom_sms','Send Cutom Sms',NULL),(41,'sms_setup','SMS',NULL),(42,'sms_schedule','Sms Schedule',NULL),(43,'sms_report','Sms Report',NULL),(44,'custom_sms_report','Custom SMS Report',NULL),(45,'auto_sms_report','Auto SMS Report',NULL),(46,'email_setup','Email Setup',NULL),(47,'email_configaretion','Email Configaretion',NULL),(48,'email_template','Email Template',NULL),(49,'email_template_list','Email Template List',NULL),(50,'email_schedule_setup','Email Schedule Setup',NULL),(51,'emergency_stop_setup','Emergency Stop Setup',NULL),(52,'add_new_user','Add New User',NULL),(53,'user_list','user List',NULL),(54,'send_custom_email','Send Cutom Email',NULL),(55,'email_list','Email List',NULL),(56,'prescription_list','Prescription List',NULL),(57,'total_patient','Total Patient',NULL),(58,'today_patient','Today Patient',NULL),(59,'today_appointment','Today Appointment',NULL),(60,'new_appointment','New Appointment',NULL),(61,'total_appointment','Total Appointment',NULL),(62,'today_prescription','Today Prescription',NULL),(63,'total_prescription','Total Prescription',NULL),(64,'total_sms','Total SMS',NULL),(65,'today_sms','Today SMS',NULL),(66,'custom_sms','Custom SMS',NULL),(67,'auto_sms','Auto SMS',NULL),(68,'total_send_email','Total Send Email',NULL),(69,'line_chart','Line Chart',NULL),(70,'appointment_chart','Appointment Chart',NULL),(71,'patient_chart','Patient Chart',NULL),(72,'chart_shows_total_report','This chart shows total report',NULL),(73,'appointment_progress','This chart shows total appointment progress',NULL),(74,'patient_progress','This chart shows total patient progress',NULL),(75,'send_total_email','Send Total Email',NULL),(76,'patient_name','Patient Name',NULL),(77,'phone_number','Phone Number',NULL),(78,'birth_date','Birth date',NULL),(79,'age','Age',NULL),(80,'male','Male',NULL),(81,'female','Female',NULL),(82,'others','Others',NULL),(83,'patient_id','Patient Id',NULL),(84,'patient_cc','Patient CC',NULL),(85,'patient_weight','Patient Weight',NULL),(86,'patient_bp','Patient BP',NULL),(87,'oex','O/Ex',NULL),(88,'pd','PD',NULL),(89,'medicine','Medicine',NULL),(90,'type','Type',NULL),(91,'medicine_name','Medicine Name',NULL),(92,'mgml','Mg/Ml',NULL),(93,'dose','Dose',NULL),(94,'day','Day',NULL),(95,'medicine_comment','Comments',NULL),(96,'overal_comment','Overall Comment',NULL),(97,'test','Test',NULL),(98,'add','Add',NULL),(99,'advice','Advice',NULL),(100,'test_name','Test Name',NULL),(101,'submit','Submit',NULL),(102,'reset','Reset',NULL),(103,'description','Description',NULL),(104,'generic_name','Generic Name',NULL),(105,'picture','Picture',NULL),(106,'sex','Gender',NULL),(107,'action','Action',NULL),(108,'appointment_id','Appointment Id',NULL),(109,'date','Date',NULL),(110,'choose_serial','Choose Serial',NULL),(111,'date_placeholder','yyyy-mm-dd',NULL),(112,'sequence','Appointment Time',NULL),(113,'sms','Send SMS',NULL),(114,'sms_gateway','SMS Gateway',NULL),(115,'send','Send',NULL),(116,'sms_message','SMS Send Successfully!',NULL),(117,'name','Full Name',NULL),(118,'email','Email Address',NULL),(119,'blood_group','Blood Group',NULL),(120,'address','Address',NULL),(121,'edit_patient','Edit Patient',NULL),(122,'update','Update',NULL),(123,'visibility','Visibility',NULL),(124,'yes','Yes',NULL),(125,'no','No',NULL),(126,'set_time_msg','You can set only minute',NULL),(127,'set_per_patient_time','Per Patient Time',NULL),(128,'end_time','End Time',NULL),(129,'start_time','Start Time',NULL),(130,'set_time','Set Time',NULL),(131,'saturday','Saturday',NULL),(132,'sunday','Sunday',NULL),(133,'monday','Monday',NULL),(134,'tuesday','Tuesday',NULL),(135,'wednesday','Wednesday',NULL),(136,'thusday','Thursday',NULL),(137,'friday','Friday',NULL),(138,'edit_schedule','Edit Schedule',NULL),(139,'stop_date','Stop Date',NULL),(140,'schedule_date','Schedule Date',NULL),(141,'message','Message',NULL),(142,'specialist','Specialist',NULL),(143,'edit_emergency_stop','Edit Emergency Stop',NULL),(144,'venue_name','Venue Name',NULL),(145,'venue_contact','Venue Contact',NULL),(146,'venue_address','Venue Address',NULL),(147,'venue_map','Venue Map',NULL),(148,'edot_venue','Edit Venue',NULL),(149,'company_name','Company Name',NULL),(150,'group_name','Group Name',NULL),(151,'medicine_description','Medicine Description',NULL),(152,'edit_medicine','Edit Medicine',NULL),(153,'web_site_enable_disable','Web site Enable Or Disable',NULL),(154,'html_code_title','Html Code Sample',NULL),(155,'js_code_title','Js Code Sample ',NULL),(156,'use_thirt_parti_api','Use third party Api ',NULL),(157,'therd_parti_api_preview','Third party Api preview',NULL),(158,'website_enable','Website Enable',NULL),(159,'website_desable','website Desable',NULL),(160,'website_enable_msg','If you don\'t want to Show The website, Click the button',NULL),(161,'website_desable_msg','If you want to Show The website, Click the button',NULL),(162,'html_code_description','Html Code Sample Place this code wherever you want the plugin to appear on your page.',NULL),(163,'js_code_description','Place this code wherever you want the plugin to appear on your page.',NULL),(164,'facebook_link','facebook Link',NULL),(165,'twitter_link','twitter Link',NULL),(166,'youtube_link','Youtube Link',NULL),(167,'linkedin_link','Linkedin Link',NULL),(168,'google_link','Google Linlk',NULL),(169,'working_description','Working Description',NULL),(170,'hotline','Hotline',NULL),(171,'copy_right','Copy Right',NULL),(172,'logo','Logo',NULL),(173,'favicon','Favicon',NULL),(174,'appointment_image','Appointment Image',NULL),(175,'about_image','About Image',NULL),(176,'total_appointment_details','Total Appointment details',NULL),(177,'today_appointment_details','Today Appointment Details',NULL),(178,'total_patient_details','Total Patient Details',NULL),(179,'twitter_post','Twitter Post',NULL),(180,'google_map','Google Map',NULL),(181,'doctor_name','Doctor Name',NULL),(182,'designation','Designation',NULL),(183,'degrees','Degrees',NULL),(184,'department','Department',NULL),(185,'service_place','Service Place',NULL),(186,'about_me','About Me',NULL),(187,'slider_list','Slider List',NULL),(188,'heading','Heading',NULL),(189,'details','Details',NULL),(190,'select_category','Select Category',NULL),(191,'title','Title',NULL),(192,'edit_post','Edit Post',NULL),(193,'edit_slider','Edit Slider',NULL),(194,'category','Select Category',NULL),(195,'category_name','Category Name',NULL),(196,'status','Status',NULL),(197,'provider','Provider',NULL),(198,'user_name','User Name',NULL),(199,'password','password',NULL),(200,'sender','Sender',NULL),(201,'sms_template_list','SMS Template List',NULL),(202,'sms_template_setup','SMS Template Setup',NULL),(203,'template_name','Template Name',NULL),(204,'set_default','Set Default',NULL),(205,'schedule_name','Schedule Name',NULL),(206,'time','Time',NULL),(207,'sms_cronjob_des','You can use above link for cron job. Copy and paste at cron job Command box',NULL),(208,'sms_schedule_list','SMS Schedule List',NULL),(209,'reciver','Reciver',NULL),(210,'from_date','From Date',NULL),(211,'to_date','To Date',NULL),(212,'date_time','Date Time',NULL),(213,'search','Search',NULL),(214,'send_at_appointment','Email Send At Appointment Time. ',NULL),(215,'send_at_registration','Email Send At Patient Registretion.',NULL),(216,'send_by_reminder','Email Send By Reminder.',NULL),(217,'protocol','Protocol',NULL),(218,'mailepath','MailPath',NULL),(219,'mailtype','MailType',NULL),(220,'sender_email','Sender Email',NULL),(221,'email_template_list_of_app','Email Templ list For Registration',NULL),(222,'email_template_list_of_reg','Email Templ list For Appointment',NULL),(223,'active','Active',NULL),(224,'reciver_email','Reciver Email',NULL),(225,'subject','Subject',NULL),(226,'edit_email_template','Edit Email Template',NULL),(227,'email_schedule_stup','Email Schedule Setup',NULL),(228,'email_schedule_stup_list','Email Schedule Setup List',NULL),(229,'email_cronjob_msg','You can use above link for cron job. Copy and paste at cron job Command box.',NULL),(230,'appointment_info','Appointment Information',NULL),(231,'appointment_footer_msg','Kindly Report to Reception 30 minutes Earlier then your appointment',NULL),(232,'patient_history',' History',NULL),(233,'signature','Signature',NULL),(234,'chamber_time','CHAMBER TIME',NULL),(235,'prescription_empty_msg','You have no prescription......................',NULL),(236,'social_link','Social Link',NULL),(237,'recent_news','Recent News',NULL),(238,'latest_twitter','Latest Twitter',NULL),(239,'register','REGISTER',NULL),(240,'doctor_spciality','Doctor Spciality',NULL),(241,'doctor_degrees','Doctor Degrees',NULL),(242,'doctor_experience','Doctor Experience',NULL),(243,'website_title','Website Title',NULL),(244,'home','HOME',NULL),(245,'working_hour','WORKING HOURS',NULL),(246,'testimonial','TESTIMONIAL',NULL),(247,'contact','CONTACT',NULL),(248,'latest_news','Latest News',NULL),(249,'larnmore','Larn More',NULL),(250,'close','Close',NULL),(251,'login','Login',NULL),(252,'doctor','Doctor',NULL),(253,'assistant','Assistant',NULL),(254,'login_title','Please Login',NULL),(255,'login_msg','UserEmail or Password are Invalid.',NULL),(256,'image_upload_msg','Image dosn\'t upload!. Image size to large.',NULL),(257,'website_setup_msg','Setup Successgully.',NULL),(258,'delete_msg','Delete Successfull.',NULL),(259,'edit_msg','Edit Successfully.',NULL),(260,'slider_ste_msg','Slider set Successful..',NULL),(261,'update_msg','Update Successfully.',NULL),(262,'venue_add_msg','Venue Added successfully',NULL),(263,'exist_error_msg','It\'s Allrady Exist',NULL),(264,'register_msg','Registeration Successfully.',NULL),(265,'post_add_msg','Add New Post Successfully..',NULL),(266,'sms_send_msg','SMS Send Successfully!',NULL),(267,'emal_send_msg','Email Send Successfully.',NULL),(268,'schedule_add_msg','Schedule Add Successfully.',NULL),(269,'template_add_msg','Add Template Successfully.',NULL),(270,'gorup_add_msg','Group inserted Successful',NULL),(271,'medicine_add_msg','Mdicine inserted Successful',NULL),(272,'advice_add_msg','Advice inserted Successful',NULL),(273,'test_add_msg','Test inserted Successful',NULL),(274,'company_add_msg','Company inserted Successful',NULL),(275,'password_change_msg','Password Change Successfull',NULL),(276,'password_change_error_msg','Your Old Password Dos Not Mathch',NULL),(277,'schedule_error_msg','Already set up scheduled on this day, please select others one day.',NULL),(278,'emergency_stop_msg','Emergency Stop Successfully.',NULL),(279,'appointment_error_msg','Sorry You already get apointment in this date',NULL),(280,'get','',NULL),(281,'get_appointment_msg','You Got this appointment Successful..',NULL),(282,'patient_id_exist_msg','This id Is allredy exist, Please try again',NULL),(283,'venue_empty_msg','Sorry there have no assign venue.',NULL),(284,'email_setup_msg','Email Configaretion Successfully.',NULL),(285,'email_template_add_msg','Email Template Add Successfully.',NULL),(286,'about_menu','ABOUT',NULL),(287,'font_appointment','APPOINTMENT',NULL),(288,'change_password','Change Password',NULL),(289,'logout','Logout',NULL),(290,'register_information','Registration Information.',NULL),(291,'sl','SL',NULL),(292,'pad_print','Pad Print',NULL),(293,'default_print','Default Print',NULL),(294,'history','History',NULL),(295,'temperature','Temperature',NULL),(296,'print_pattern','Print Pattern',NULL),(297,'setup_pattern','Setup Print Pattern',NULL),(298,'pattern_list','Setup Pattern List',NULL),(299,'header_blank','Header Blank',NULL),(300,'footer_blank','Footer Blank',NULL),(301,'side_content','Side Content',NULL),(302,'content_blank','Content Blank',NULL),(303,'height','Height',NULL),(304,'width','Width',NULL),(305,'edit_print_pattern','Edit Print Pattern',NULL),(306,'footer_logo','Footer Logo',NULL),(307,'payment','Payment',NULL),(308,'setup_payment_method','Setup Payment Method',NULL),(309,'paypal_business_email','Paypal Business Email',NULL),(310,'amount','Amount',NULL),(311,'pyment_list','Pyment List',NULL),(312,'pyment_setup','Pyment Setup',NULL),(313,'payment_setup','Payment Setup',NULL),(314,'payment_list','Payment List',NULL),(315,'notes','Notes',NULL),(316,'doctoress_dashboard','Clinic Dashboard',NULL),(317,'site_view','Site View',NULL),(318,'edit_prescription','Edit Prescription',NULL),(319,'select_message','Please Select any one Number',NULL),(320,'schedule_msg','<strong>MESSAGGIO DI ERRORE!</strong>                       <p>There have no time schedule setup! Please Try Again.</p>',NULL),(321,'schedule_date_msg','<strong>ERROR MESSAGE!</strong>  <h4>Doctor do not seat In this date!</h4>',NULL),(322,'book_sequence','You Selected',NULL),(323,'patient_id_msg','Your id is available',NULL),(324,'patient_name_load_msg','Didn\'t match. Please Enter Your Valid Id.',NULL),(325,'remember_me','Remember me',NULL),(326,'edit_generic','Edit(Generic)',NULL),(327,'sms_list','SMS List',NULL),(328,'time_zone_setup','Time Zone Setup',NULL),(329,'time_setup','Select Time Zone',NULL),(330,'next_follow_up','Next Follow Up/Ã Â¦ÂªÃ Â¦Â°Ã Â¦Â¬Ã Â¦Â°Ã Â§ÂÃ Â¦Â¤Ã Â§â‚¬ Ã Â¦Â¸Ã Â¦Â¾Ã Â¦â€¢Ã Â§ÂÃ Â¦Â·Ã Â¦Â¾Ã Â¦Â¤',NULL),(331,'doctor_list','Doctor List',NULL),(332,'new_invoice','New Invoice',NULL),(333,'invoice_list','Invoice List',NULL),(334,'edit_invoice','Edit Invoice',NULL),(335,'service_info','Service Info',NULL),(336,'quantity','Quantity',NULL),(337,'price','Price',NULL),(338,'discount','Discount',NULL),(339,'total','Total',NULL),(340,'total_tax','Total Tax',NULL),(341,'grand_total','Grand Total',NULL),(342,'paid_ammount','Paid Ammount',NULL),(343,'due','Due',NULL),(344,'add_new_service','Add New Sevice',NULL),(345,'payment_notes','Payment Notes',NULL),(346,'payment_method_notes','Payment Method Notes',NULL),(347,'save_and_paid','Save And Paid',NULL),(348,'delete','Delete',NULL),(349,'add_new_invoice','Add New Invoice',NULL),(350,'sl_no','SL NO',NULL),(351,'invoice_id','Invoice Id',NULL),(352,'create_prescription','Create Prescription',NULL),(353,'chief_complain','Chief Complain',NULL),(354,'reference_diagnosis','Reference Diagnosis',NULL),(355,'section','Section',NULL),(356,'language','Language',NULL),(357,'disease','Disease',NULL),(358,'classification','Classification',NULL),(359,'syndromes','Syndromes',NULL),(360,'treatment','Treatment',NULL),(361,'herbs','Herbs',NULL),(362,'comment','Comment',NULL),(363,'inspecsion','Inspecsion',NULL),(364,'treatment_plan','Treatment Plan',NULL),(365,'treatment_goals','Treatment Goals',NULL),(366,'doctor_told','Doctor Told',NULL),(367,'treatment_effect','Treatment Effect',NULL),(368,'treatment_evaluation','Treatment evaluation',NULL),(369,'referral_doctor','Referral Doctor',NULL),(370,'old_password','Old Password',NULL),(371,'new_password','New Password',NULL),(372,'confirm_password','confirm Password',NULL),(373,'change','Change',NULL),(374,'mobile','Movile Number',NULL),(375,'given_name','Given name',NULL),(376,'family_name','Family Name',NULL),(377,'post_code','Post Code',NULL),(378,'suburb','Suburb',NULL),(379,'work_injury_insurance','Work injury insurance claim number',NULL),(380,'traffic_accident','Traffic accident claim number',NULL),(381,'version_number','Veteran number',NULL),(382,'custom_receipt','Custom receipt number attachment',NULL),(383,'deaggregate','Diagnostics',NULL),(384,'additional_info','Additional info',NULL),(385,'overall_comment','Overall comments',NULL),(386,'create_doctor','Create Doctor',NULL),(387,'add_service','Add New Service',NULL),(388,'service_list','Service List',NULL),(389,'service_name','Service Name',NULL),(390,'tex','Tex',NULL),(391,'service_model','Service Model',NULL),(392,'invoice','Invoice',NULL),(393,'emergency_contact','Emergency Contact',NULL),(394,'madical_info','Madical Information',NULL),(395,'patient_info','Patient Information',NULL),(396,'invoice_recit','Invoice Recit',NULL),(397,'billing_to','Billing To',NULL),(398,'billing_from','Billing From',NULL),(399,'rate','Rate',NULL),(400,'authorised_by','Authorised By',NULL),(401,'crispin','Crispin',NULL),(402,'invoice_no','Invoice No',NULL);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_info`
--

DROP TABLE IF EXISTS `log_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_info` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT '1',
  `logout_time` varchar(120) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_info`
--

LOCK TABLES `log_info` WRITE;
/*!40000 ALTER TABLE `log_info` DISABLE KEYS */;
INSERT INTO `log_info` VALUES (1,'admin@gmail.com','e10adc3949ba59abbe56e057f20f883e',1,1,''),(8,'d1@gmail.com','e10adc3949ba59abbe56e057f20f883e',2,1,''),(10,'user@gmail.com','e10adc3949ba59abbe56e057f20f883e',3,1,''),(11,'test13@gmail.com','e10adc3949ba59abbe56e057f20f883e',2,1,''),(13,'test54@gmail.com','e10adc3949ba59abbe56e057f20f883e',3,1,''),(14,'johan@gmail.com','e10adc3949ba59abbe56e057f20f883e',2,1,'');
/*!40000 ALTER TABLE `log_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL AUTO_INCREMENT,
  `classification` varchar(255) DEFAULT NULL,
  `symptom` text,
  `treatment` text,
  `medicine` text,
  `cat_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `diagonisis` text,
  PRIMARY KEY (`medicine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'1','Semptom 1','treat ment 1','Medicine 1',1,1,'Diagonisis '),(2,'1','Semptom 2','treat ment 2','Medicine 2',1,1,'Diagonisis 1'),(3,'2','Semptom 3','treat ment 3','Medicine 3',2,2,'Diagonisis 3'),(4,'2','Semptom 4','treat ment 4','Medicine 4',2,2,'Diagonisis 4'),(5,'3','Headech','heat of body','Napa',3,2,'take doctor suggestion');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_herbs`
--

DROP TABLE IF EXISTS `medicine_herbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_herbs` (
  `mh_id` int(11) NOT NULL AUTO_INCREMENT,
  `medicine_id` int(11) DEFAULT NULL,
  `herbs_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_herbs`
--

LOCK TABLES `medicine_herbs` WRITE;
/*!40000 ALTER TABLE `medicine_herbs` DISABLE KEYS */;
INSERT INTO `medicine_herbs` VALUES (1,1,1,1),(2,2,3,1),(3,3,2,2),(4,3,4,2),(5,3,5,2),(6,3,7,2),(7,4,0,2),(8,4,5,2),(9,5,8,3),(10,5,9,3),(11,6,8,3),(12,6,0,3),(13,6,13,3),(14,6,0,3),(15,6,0,3),(16,6,15,3),(17,6,16,3),(18,6,17,3),(19,5,4,2);
/*!40000 ALTER TABLE `medicine_herbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_temp`
--

DROP TABLE IF EXISTS `medicine_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `patient_id` text,
  `medicine_name` text,
  `herbs` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_temp`
--

LOCK TABLES `medicine_temp` WRITE;
/*!40000 ALTER TABLE `medicine_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_medical_info`
--

DROP TABLE IF EXISTS `patient_medical_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_medical_info` (
  `pmi_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` text,
  `dob` varchar(200) DEFAULT NULL,
  `food_allergies` text,
  `bleed_tendency` text,
  `heart_disease` text,
  `diabetic` text,
  `high_blood_pressure` text,
  `surgeries` text,
  `accidents` text,
  `others` text,
  `high_risk_diseases` text,
  `family_history` text,
  `current_medication` text,
  `female_pregnent` text,
  `female_breast_feeding` text,
  `others_msurance` text,
  `others_comcare` text,
  `others_tac` text,
  `others_low_income` text,
  `others_reffer` text,
  `subscription` text,
  PRIMARY KEY (`pmi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_medical_info`
--

LOCK TABLES `patient_medical_info` WRITE;
/*!40000 ALTER TABLE `patient_medical_info` DISABLE KEYS */;
INSERT INTO `patient_medical_info` VALUES (17,'P17LC5H','1994-09-17','test','test','Yes','Yes','Yes','Yes','Yes','Yes','test',' test','test','Yes','Yes','Yes','Yes','Yes','Pensioner','Friend','Yes'),(18,NULL,'1991-10-31','test','teste','Yes','Yes','Yes','Yes','Yes','Yes','test','  test','test','Yes','Yes','Yes','Yes','Yes','Pensioner','Friend','Yes'),(19,NULL,'1983-10-31','test','test','Yes','Yes','Yes','Yes','Yes','Yes','test',' test','test','Yes','Yes','Yes','Yes','Yes','Pensioner','Friend','Yes'),(20,NULL,'1983-10-31','test','test','Yes','Yes','Yes','Yes','Yes','Yes','test','  test','test','Yes','Yes','Yes','Yes','Yes','Pensioner','Friend','Yes'),(21,'P17RFVG','1972-11-20','yes','No','Yes','Yes','Yes','Yes','Yes','Yes','No',' ','','Yes','Yes','Yes','Yes','Yes','Pensioner','Friend','Yes'),(22,'P17K8JD','1961-11-20','','','Yes','Yes','Yes','Yes','Yes','Yes','','  ','','Yes','Yes','Yes','Yes','Yes','Pensioner','Friend','Yes'),(23,'P17YVT8','1972-11-21','','','Yes','Yes','Yes','Yes','Yes','Yes','',' ','','Yes','Yes','Yes','Yes','Yes','Pensioner','Friend','Yes');
/*!40000 ALTER TABLE `patient_medical_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_tbl`
--

DROP TABLE IF EXISTS `patient_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_tbl` (
  `patient_id` varchar(250) NOT NULL,
  `family_name` text NOT NULL,
  `given_name` text NOT NULL,
  `patient_email` varchar(120) DEFAULT NULL,
  `patient_phone` varchar(15) DEFAULT NULL,
  `mobile_number` varchar(222) DEFAULT NULL,
  `title` text,
  `post_code` varchar(210) DEFAULT NULL,
  `suburb` text,
  `address` text,
  `sex` varchar(120) DEFAULT NULL,
  `birth_date` date NOT NULL,
  `blood_group` varchar(250) NOT NULL,
  `picture` varchar(250) DEFAULT NULL,
  `emg_title` text,
  `emg_family_name` text,
  `emg_given_name` text,
  `emg_phone` varchar(210) DEFAULT NULL,
  `emg_mobile` varchar(210) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_tbl`
--

LOCK TABLES `patient_tbl` WRITE;
/*!40000 ALTER TABLE `patient_tbl` DISABLE KEYS */;
INSERT INTO `patient_tbl` VALUES ('P17K8JD','hena','done','hena@gmail.com','534535345345','34534535354','Mr','1254','','98 Green Road, farmgate','Female','1961-11-20','',NULL,'Mr','jhana','Rehana','42342342345','34532452345',1,'2017-11-20 03:32:53'),('P17RFVG','Khali','Komi','komo@gmail.com','+102-9333-29343','+192-34329876','Mr','1215','','98 Green Road, Farmgate, Dhaka-1215','Male','1972-11-20','A+','http://clinic365.bdtask.com/./assets/uploads/patient/bdtask.jpg','Mr','jhana','Rehana','+102-9333-29343','2-9333-29343',1,'2017-11-20 03:28:11'),('P17YVT8','fsdf','fgdfg','doctor@gmail.com','35235345','353535','sfsd','3454','dfg','dgffg','Male','1972-11-21','A+','','dfgdg','dgdgf','dgdg','423453245','3453425532',14,'2017-11-21 10:57:05');
/*!40000 ALTER TABLE `patient_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_account_setup`
--

DROP TABLE IF EXISTS `payment_account_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_account_setup` (
  `set_up_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `paypal_email` varchar(200) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`set_up_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_account_setup`
--

LOCK TABLES `payment_account_setup` WRITE;
/*!40000 ALTER TABLE `payment_account_setup` DISABLE KEYS */;
INSERT INTO `payment_account_setup` VALUES (1,1,'test@gmail.com',25);
/*!40000 ALTER TABLE `payment_account_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_table`
--

DROP TABLE IF EXISTS `payment_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_table` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_id` varchar(200) NOT NULL,
  `patient_id` varchar(200) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payer_email` varchar(200) NOT NULL,
  `date_time` datetime NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT '1',
  `notes` text,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_table`
--

LOCK TABLES `payment_table` WRITE;
/*!40000 ALTER TABLE `payment_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pres_language`
--

DROP TABLE IF EXISTS `pres_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pres_language` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_name` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pres_language`
--

LOCK TABLES `pres_language` WRITE;
/*!40000 ALTER TABLE `pres_language` DISABLE KEYS */;
INSERT INTO `pres_language` VALUES (1,'Bangla'),(2,'English'),(3,'Spanish'),(4,'Hindi');
/*!40000 ALTER TABLE `pres_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription_data`
--

DROP TABLE IF EXISTS `prescription_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription_data` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text,
  `patient_id` text,
  `doctor_id` int(11) DEFAULT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `appointment_id` text,
  PRIMARY KEY (`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription_data`
--

LOCK TABLES `prescription_data` WRITE;
/*!40000 ALTER TABLE `prescription_data` DISABLE KEYS */;
INSERT INTO `prescription_data` VALUES (1,'{\"chief_complain\":\"dfgdfgsdfgsdf\",\"medicine_data\":{\"medicine\":[{\"medicine\":\"Napa\",\"harbs\":\"h3,h4,herbs4,\",\"comment\":\"Before Meal\"},{\"medicine\":\"Napa\",\"harbs\":\"h3,h4,hers ,do\",\"comment\":\"After Meal\"}]},\"inspecsion\":\"\",\"treatment\":\"\",\"tretment_plan\":\"\",\"treatment_goals\":\"\",\"doctor_told\":\"\",\"treatment_effect\":\"\",\"treatment_evaluation\":\"\",\"referral_doctor\":\"\",\"work_injury\":\"\",\"traffic_accident\":\"\",\"veteran_number\":\"\",\"custom_receipt\":\"\",\"diagnostics\":\"\",\"additional_info\":\"\",\"overall_comment\":\"\"}','P17K8JD',5,'2017-11-20 09:53:05','A17JR0IC'),(2,'{\"chief_complain\":\"\",\"medicine_data\":{\"medicine\":[{\"medicine\":\"Napa\",\"harbs\":\"h3,h4,herbs4,\",\"comment\":\"\"},{\"medicine\":\"Napa\",\"harbs\":\"h3,h4,herbs4,\",\"comment\":\"\"}]},\"inspecsion\":\"\",\"treatment\":\"\",\"tretment_plan\":\"\",\"treatment_goals\":\"\",\"doctor_told\":\"\",\"treatment_effect\":\"\",\"treatment_evaluation\":\"\",\"referral_doctor\":\"\",\"work_injury\":\"\",\"traffic_accident\":\"\",\"veteran_number\":\"\",\"custom_receipt\":\"\",\"diagnostics\":\"\",\"additional_info\":\"\",\"overall_comment\":\"\"}','P17YVT8',5,'2017-11-21 04:58:07','A17R72WB');
/*!40000 ALTER TABLE `prescription_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `print_pattern`
--

DROP TABLE IF EXISTS `print_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `print_pattern` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern_no` text NOT NULL,
  `header_height` int(11) DEFAULT NULL,
  `header_width` int(11) DEFAULT NULL,
  `footer_height` int(11) DEFAULT NULL,
  `footer_width` int(11) DEFAULT NULL,
  `content_height_1` int(11) DEFAULT NULL,
  `content_width_1` int(11) DEFAULT NULL,
  `content_height_2` int(11) DEFAULT NULL,
  `content_width_2` int(11) DEFAULT NULL,
  `pattern_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `print_pattern`
--

LOCK TABLES `print_pattern` WRITE;
/*!40000 ALTER TABLE `print_pattern` DISABLE KEYS */;
INSERT INTO `print_pattern` VALUES (1,'pattern_two',250,800,200,800,300,800,300,800,1);
/*!40000 ALTER TABLE `print_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedul_setup_tbl`
--

DROP TABLE IF EXISTS `schedul_setup_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedul_setup_tbl` (
  `schedul_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `day` int(11) NOT NULL,
  `per_patient_time` int(11) NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`schedul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedul_setup_tbl`
--

LOCK TABLES `schedul_setup_tbl` WRITE;
/*!40000 ALTER TABLE `schedul_setup_tbl` DISABLE KEYS */;
INSERT INTO `schedul_setup_tbl` VALUES (2,2,'10:00:00','15:00:00',3,30,1,1),(3,2,'10:00:00','19:00:00',6,30,1,1),(4,3,'10:00:00','19:00:00',7,30,1,1),(6,3,'09:00:00','19:00:00',4,30,1,1),(7,3,'09:00:00','19:00:00',5,30,1,1),(8,3,'09:00:00','19:00:00',2,30,1,1),(9,4,'10:00:00','15:00:00',3,30,1,1),(10,4,'10:00:00','15:00:00',4,30,1,1),(11,4,'10:00:00','15:00:00',5,30,1,1),(12,5,'02:00:00','18:00:00',3,5,1,1),(13,5,'02:00:00','18:00:00',4,5,1,1),(14,5,'02:00:00','18:00:00',5,5,1,1),(15,5,'02:00:00','18:00:00',6,5,1,1),(16,5,'02:00:00','18:00:00',7,5,1,1),(17,5,'02:00:00','18:00:00',1,5,1,1),(18,5,'02:00:00','18:00:00',2,5,1,1);
/*!40000 ALTER TABLE `schedul_setup_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` text,
  `lang_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Section One',1),(4,'Section two',2),(5,'Section Three',2);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_info`
--

DROP TABLE IF EXISTS `service_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` text NOT NULL,
  `service_price` int(11) NOT NULL,
  `description` text,
  `tax` int(11) DEFAULT NULL,
  `model` varchar(122) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_info`
--

LOCK TABLES `service_info` WRITE;
/*!40000 ALTER TABLE `service_info` DISABLE KEYS */;
INSERT INTO `service_info` VALUES (1,'Service One',900,'There are many variations of passages of Lorem Ipsum available,',14,'S2'),(2,'Service two',800,'sss',15,'ss33'),(3,'Service Three',500,'ssssssssssss',25,'sssts'),(4,'special herbs',100,'testing',10,'what is service model?'),(6,'Service Five',700,'sssssssss',70,'F5'),(7,'medicine5',300,'dfsdf',30,'345');
/*!40000 ALTER TABLE `service_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_delivery`
--

DROP TABLE IF EXISTS `sms_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_delivery` (
  `sms_delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_id` int(11) NOT NULL,
  `delivery_date_time` datetime NOT NULL,
  `sms_info_id` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`sms_delivery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_delivery`
--

LOCK TABLES `sms_delivery` WRITE;
/*!40000 ALTER TABLE `sms_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_gateway`
--

DROP TABLE IF EXISTS `sms_gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_gateway` (
  `gateway_id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_name` text NOT NULL,
  `user` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `authentication` text NOT NULL,
  `link` text NOT NULL,
  `default_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`gateway_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_gateway`
--

LOCK TABLES `sms_gateway` WRITE;
/*!40000 ALTER TABLE `sms_gateway` DISABLE KEYS */;
INSERT INTO `sms_gateway` VALUES (1,'nexmo','nexmo','sssss','ssss','https://www.nexmo.com/',1,1);
/*!40000 ALTER TABLE `sms_gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_info`
--

DROP TABLE IF EXISTS `sms_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_info` (
  `sms_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  `phone_no` varchar(250) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `appointment_id` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sms_counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sms_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_info`
--

LOCK TABLES `sms_info` WRITE;
/*!40000 ALTER TABLE `sms_info` DISABLE KEYS */;
INSERT INTO `sms_info` VALUES (1,5,'P17K8JD','534535345345','2017-11-20 02:00:00','A17JR0IC',0,0),(2,5,'P17YVT8','35235345','2017-11-21 02:00:00','A17R72WB',0,0);
/*!40000 ALTER TABLE `sms_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_schedule`
--

DROP TABLE IF EXISTS `sms_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_schedule` (
  `ss_id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_teamplate_id` int(11) NOT NULL,
  `ss_name` text NOT NULL,
  `ss_schedule` varchar(100) NOT NULL,
  `ss_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_schedule`
--

LOCK TABLES `sms_schedule` WRITE;
/*!40000 ALTER TABLE `sms_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_teamplate`
--

DROP TABLE IF EXISTS `sms_teamplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_teamplate` (
  `teamplate_id` int(11) NOT NULL AUTO_INCREMENT,
  `teamplate_name` text,
  `teamplate` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `default_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`teamplate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_teamplate`
--

LOCK TABLES `sms_teamplate` WRITE;
/*!40000 ALTER TABLE `sms_teamplate` DISABLE KEYS */;
INSERT INTO `sms_teamplate` VALUES (1,'Template One','ssss',1,1);
/*!40000 ALTER TABLE `sms_teamplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_tbl`
--

DROP TABLE IF EXISTS `users_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_tbl` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `user_email` varchar(55) NOT NULL,
  `user_phone` varchar(15) DEFAULT NULL,
  `birth_date` varchar(55) DEFAULT NULL,
  `sex` varchar(55) DEFAULT NULL,
  `blood_group` varchar(12) DEFAULT NULL,
  `address` text,
  `picture` varchar(100) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_tbl`
--

LOCK TABLES `users_tbl` WRITE;
/*!40000 ALTER TABLE `users_tbl` DISABLE KEYS */;
INSERT INTO `users_tbl` VALUES (2,10,'Md Tuhin Sarker','tuhinsorker@gmail.com','01751194212','1992-11-05','Male','A+','                                            Address                                                                                                             ','http://localhost/clinick365/./assets/uploads/users/me-160.jpg','2017-11-05 01:00:07'),(3,13,'test','test54@gmail.com','01751194212','1992-11-05','Male','A-',' sdfsdf','','2017-11-05 06:28:37');
/*!40000 ALTER TABLE `users_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_pages_tbl`
--

DROP TABLE IF EXISTS `web_pages_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_pages_tbl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `details` text,
  `sequence` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `icon` text,
  `picture` varchar(250) DEFAULT NULL,
  `head_line` text,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_pages_tbl`
--

LOCK TABLES `web_pages_tbl` WRITE;
/*!40000 ALTER TABLE `web_pages_tbl` DISABLE KEYS */;
INSERT INTO `web_pages_tbl` VALUES (1,'phone','01751178212',NULL,NULL,NULL,NULL,NULL,1),(2,'email','tuhinso2@gmail.com',NULL,NULL,NULL,NULL,NULL,1),(3,'facebook','facebook.com/',NULL,NULL,NULL,NULL,NULL,1),(4,'twitter','',NULL,NULL,NULL,NULL,NULL,1),(5,'linkedin','',NULL,NULL,NULL,NULL,NULL,1),(6,'youtube','',NULL,NULL,NULL,NULL,NULL,1),(7,'google','',NULL,NULL,NULL,NULL,NULL,1),(8,'hotline','01751194212',NULL,NULL,NULL,NULL,NULL,1),(9,'working_des','                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  <p>                                       There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have suffered alteration in some form, by injected humour, or \r\nrandomised words which don\'t look even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsum, <br></p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ',NULL,NULL,NULL,NULL,NULL,1),(10,'logo',NULL,NULL,NULL,NULL,'http://clinic365.bdtask.com/./assets/uploads/images/clinic2.png',NULL,1),(11,'app_image',NULL,NULL,NULL,NULL,'http://softest1.bdtask.com/clinic/./assets/uploads/images/tech-w.png',NULL,1),(12,'about_img',NULL,NULL,NULL,NULL,'http://softest1.bdtask.com/clinic/./assets/uploads/images/depart.jpg',NULL,1),(13,'google_map','                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.338167485426!2d90.36570495018637!3d23.77096939383232!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c0aee2dbc1e9%3A0xa7cf8e13f79ef43c!2sVictoria+Medical+Services+Limited!5e0!3m2!1sbn!2sbd!4v1494944238848\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ',NULL,NULL,NULL,NULL,NULL,1),(14,'total_appointment_details','There are many variations of passages of Lorem Ipsum available,',NULL,NULL,NULL,NULL,NULL,1),(15,'today_appointment_details','There are many variations of passages of Lorem Ipsum available,',NULL,NULL,NULL,NULL,NULL,1),(16,'total_patient_details','There are many variations of passages of Lorem Ipsum available,',NULL,NULL,NULL,NULL,NULL,1),(17,'address','                                                                                                                                                                                                                                                                                 Evar Green socity 98 Greenroad, Farmgat                                                                                                                                                                                                                                                                                                                                            Dhaka-1200, Bangladesh                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ',NULL,NULL,NULL,NULL,NULL,1),(18,'twitter_post','                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          <a class=\"twitter-timeline\" data-height=\"260\" data-dnt=\"true\" href=\"https://twitter.com/TwitterDev\">Tweets by TwitterDev</a> <script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ',NULL,NULL,NULL,NULL,NULL,1),(19,'footer_picture',NULL,NULL,NULL,NULL,'http://localhost/bdc/clinick/./assets/uploads/images/212.png',NULL,1),(20,'footer_picture',NULL,NULL,NULL,NULL,'http://localhost/bdc/clinick/./assets/uploads/images/212.png',NULL,1),(21,'copy_right','<p>Developed By <a href=\"http://bdtask.com/\">BDtask</a></p>',NULL,NULL,NULL,NULL,NULL,1),(22,'website_title','TEst-title',NULL,NULL,NULL,NULL,NULL,1),(23,'timezone','Asia/Dhaka',NULL,NULL,NULL,NULL,NULL,1),(24,'youtube_chanel_id','',NULL,NULL,NULL,NULL,NULL,1),(25,'website_on_off','on',NULL,NULL,NULL,NULL,NULL,1),(26,'footer_picture',NULL,NULL,NULL,NULL,'http://localhost/bdc/clinick/./assets/uploads/images/212.png',NULL,1),(27,'footer_picture',NULL,NULL,NULL,NULL,'http://localhost/bdc/clinick/./assets/uploads/images/212.png',NULL,1),(28,'footer_picture',NULL,NULL,NULL,NULL,'http://localhost/bdc/clinick/./assets/uploads/images/212.png',NULL,1),(29,'footer_picture',NULL,NULL,NULL,NULL,'http://localhost/bdc/clinick/./assets/uploads/images/212.png',NULL,1),(30,'footer_picture',NULL,NULL,NULL,NULL,'http://localhost/bdc/clinick/./assets/uploads/images/doctor2.png',NULL,1),(31,'footer_picture',NULL,NULL,NULL,NULL,'http://localhost/bdc/clinick/./assets/uploads/images/doctor2.png',NULL,1),(32,'footer_picture',NULL,NULL,NULL,NULL,'http://localhost/bdc/clinick/./assets/uploads/images/doctor2.png',NULL,1),(33,'footer_picture',NULL,NULL,NULL,NULL,'http://softest1.bdtask.com/clinick/./assets/uploads/images/doctor.png',NULL,1),(34,'footer_picture',NULL,NULL,NULL,NULL,'http://softest1.bdtask.com/clinick/./assets/uploads/images/doctor.png',NULL,1),(35,'footer_picture',NULL,NULL,NULL,NULL,'http://softest1.bdtask.com/clinic/./assets/uploads/images/doctor.png',NULL,1),(36,'footer_picture',NULL,NULL,NULL,NULL,'http://softest1.bdtask.com/clinic/./assets/uploads/images/doctor.png',NULL,1),(37,'footer_picture',NULL,NULL,NULL,NULL,'http://softest1.bdtask.com/clinic/./assets/uploads/images/doctor.png',NULL,1),(38,'footer_picture',NULL,NULL,NULL,NULL,'http://clinic365.bdtask.com/./assets/uploads/images/clinic3.png',NULL,1),(39,'footer_picture',NULL,NULL,NULL,NULL,'http://clinic365.bdtask.com/./assets/uploads/images/clinic3.png',NULL,1),(40,'fabicon',NULL,NULL,NULL,NULL,'http://softest1.bdtask.com/clinic/./assets/uploads/images/dr-fav.png',NULL,1);
/*!40000 ALTER TABLE `web_pages_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `action_serial`
--

/*!50001 DROP VIEW IF EXISTS `action_serial`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `action_serial` AS select `appointment_tbl`.`id` AS `id`,`appointment_tbl`.`appointment_id` AS `appointment_id`,`appointment_tbl`.`patient_id` AS `patient_id`,`appointment_tbl`.`phone_number` AS `phone_number`,`appointment_tbl`.`schedul_id` AS `schedul_id`,`appointment_tbl`.`date` AS `date`,`appointment_tbl`.`sequence` AS `sequence`,`appointment_tbl`.`doctor_id` AS `doctor_id`,`appointment_tbl`.`problem` AS `problem`,`appointment_tbl`.`get_date_time` AS `get_date_time`,`appointment_tbl`.`get_by` AS `get_by`,`appointment_tbl`.`status` AS `status`,`schedul_setup_tbl`.`day` AS `day`,`schedul_setup_tbl`.`start_time` AS `start_time`,`schedul_setup_tbl`.`end_time` AS `end_time`,`schedul_setup_tbl`.`per_patient_time` AS `per_patient_time`,`schedul_setup_tbl`.`visibility` AS `visibility` from (`appointment_tbl` join `schedul_setup_tbl`) where ((`appointment_tbl`.`schedul_id` = `schedul_setup_tbl`.`schedul_id`) and (`schedul_setup_tbl`.`status` = '1')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:03:05
