-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolchaindb
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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `balance` double(18,2) NOT NULL DEFAULT '0.00',
  `branch_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advance_salary`
--

DROP TABLE IF EXISTS `advance_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advance_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `deduct_month` varchar(20) DEFAULT NULL,
  `year` varchar(20) NOT NULL,
  `reason` text CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paid_date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=pending,2=paid,3=rejected',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `issued_by` varchar(200) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `branch_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advance_salary`
--

LOCK TABLES `advance_salary` WRITE;
/*!40000 ALTER TABLE `advance_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `advance_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `type_id` int(11) NOT NULL,
  `uploader_id` varchar(20) NOT NULL,
  `class_id` varchar(20) DEFAULT 'unfiltered',
  `file_name` varchar(255) NOT NULL,
  `enc_name` varchar(255) NOT NULL,
  `subject_id` varchar(200) DEFAULT 'unfiltered',
  `session_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments_type`
--

DROP TABLE IF EXISTS `attachments_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments_type`
--

LOCK TABLES `attachments_type` WRITE;
/*!40000 ALTER TABLE `attachments_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `gift_item` varchar(255) NOT NULL,
  `award_amount` decimal(18,2) NOT NULL,
  `award_reason` text NOT NULL,
  `given_date` date NOT NULL,
  `session_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `isbn_no` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `purchase_date` date NOT NULL,
  `description` text NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `total_stock` varchar(20) NOT NULL,
  `issued_copies` varchar(20) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_issues`
--

DROP TABLE IF EXISTS `book_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `date_of_issue` date DEFAULT NULL,
  `date_of_expiry` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `fine_amount` decimal(18,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = pending, 1 = accepted, 2 = rejected, 3 = returned',
  `issued_by` varchar(255) DEFAULT NULL,
  `return_by` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_issues`
--

LOCK TABLES `book_issues` WRITE;
/*!40000 ALTER TABLE `book_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileno` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `symbol` varchar(25) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulk_msg_category`
--

DROP TABLE IF EXISTS `bulk_msg_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulk_msg_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT 'sms=1, email=2',
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulk_msg_category`
--

LOCK TABLES `bulk_msg_category` WRITE;
/*!40000 ALTER TABLE `bulk_msg_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulk_msg_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulk_sms_email`
--

DROP TABLE IF EXISTS `bulk_sms_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulk_sms_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(255) DEFAULT NULL,
  `sms_gateway` varchar(55) DEFAULT '0',
  `message` text,
  `email_subject` varchar(255) DEFAULT NULL,
  `message_type` tinyint(3) DEFAULT '0' COMMENT 'sms=1, email=2',
  `recipient_type` tinyint(3) NOT NULL COMMENT 'group=1, individual=2, class=3',
  `recipients_details` longtext,
  `additional` longtext,
  `schedule_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `posting_status` tinyint(3) NOT NULL COMMENT 'schedule=1,competed=2',
  `total_thread` int(11) NOT NULL,
  `successfully_sent` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulk_sms_email`
--

LOCK TABLES `bulk_sms_email` WRITE;
/*!40000 ALTER TABLE `bulk_sms_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulk_sms_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_numeric` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field`
--

DROP TABLE IF EXISTS `custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_to` varchar(50) DEFAULT NULL,
  `field_label` varchar(100) NOT NULL,
  `default_value` text,
  `field_type` enum('text','textarea','dropdown','date','checkbox','number','url','email') NOT NULL,
  `required` varchar(5) NOT NULL DEFAULT 'false',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `show_on_table` varchar(5) DEFAULT NULL,
  `field_order` int(11) NOT NULL,
  `bs_column` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field`
--

LOCK TABLES `custom_field` WRITE;
/*!40000 ALTER TABLE `custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_values`
--

DROP TABLE IF EXISTS `custom_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relid` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid` (`relid`),
  KEY `fieldid` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_values`
--

LOCK TABLES `custom_fields_values` WRITE;
/*!40000 ALTER TABLE `custom_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_encryption` varchar(10) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_config`
--

LOCK TABLES `email_config` WRITE;
/*!40000 ALTER TABLE `email_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tags` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'account_registered','{institute_name}, {name}, {login_email}, {password}, {user_role}, {login_url}'),(2,'forgot_password','{institute_name}, {username}, {email}, {reset_url}'),(3,'change_password','{institute_name}, {username}, {email}, {password}'),(4,'new_message_received','{institute_name}, {recipient}, {message}, {message_url}'),(5,'payslip_generated','{institute_name}, {username}, {month_year}, {payslip_url}'),(6,'award','{institute_name}, {winner_name}, {award_name}, {gift_item}, {award_reason}, {given_date}'),(7,'leave_approve','{institute_name}, {applicant_name}, {start_date}, {end_date}, {comments}'),(8,'leave_reject','{institute_name}, {applicant_name}, {start_date}, {end_date}, {comments}'),(9,'advance_salary_approve','{institute_name}, {applicant_name}, {deduct_motnh}, {amount}, {comments}'),(10,'advance_salary_reject','{institute_name}, {applicant_name}, {deduct_motnh}, {amount}, {comments}');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates_details`
--

DROP TABLE IF EXISTS `email_templates_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `template_body` text NOT NULL,
  `notified` tinyint(1) NOT NULL DEFAULT '1',
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates_details`
--

LOCK TABLES `email_templates_details` WRITE;
/*!40000 ALTER TABLE `email_templates_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enroll`
--

DROP TABLE IF EXISTS `enroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `branch_id` tinyint(3) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll`
--

LOCK TABLES `enroll` WRITE;
/*!40000 ALTER TABLE `enroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `enroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` text NOT NULL,
  `audition` longtext NOT NULL,
  `selected_list` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_types`
--

LOCK TABLES `event_types` WRITE;
/*!40000 ALTER TABLE `event_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `type_id` tinyint(4) NOT NULL COMMENT '1=mark,2=gpa,3=both',
  `session_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `remark` text NOT NULL,
  `mark_distribution` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_attendance`
--

DROP TABLE IF EXISTS `exam_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `status` varchar(4) DEFAULT NULL COMMENT 'P=Present, A=Absent, L=Late',
  `remark` varchar(255) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_attendance`
--

LOCK TABLES `exam_attendance` WRITE;
/*!40000 ALTER TABLE `exam_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_hall`
--

DROP TABLE IF EXISTS `exam_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_hall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hall_no` longtext NOT NULL,
  `seats` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_hall`
--

LOCK TABLES `exam_hall` WRITE;
/*!40000 ALTER TABLE `exam_hall` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_mark_distribution`
--

DROP TABLE IF EXISTS `exam_mark_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_mark_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_mark_distribution`
--

LOCK TABLES `exam_mark_distribution` WRITE;
/*!40000 ALTER TABLE `exam_mark_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_mark_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_term`
--

DROP TABLE IF EXISTS `exam_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_term`
--

LOCK TABLES `exam_term` WRITE;
/*!40000 ALTER TABLE `exam_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_allocation`
--

DROP TABLE IF EXISTS `fee_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_allocation`
--

LOCK TABLES `fee_allocation` WRITE;
/*!40000 ALTER TABLE `fee_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_fine`
--

DROP TABLE IF EXISTS `fee_fine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_fine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `fine_value` varchar(20) NOT NULL,
  `fine_type` varchar(20) NOT NULL,
  `fee_frequency` varchar(20) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_fine`
--

LOCK TABLES `fee_fine` WRITE;
/*!40000 ALTER TABLE `fee_fine` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_fine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_groups`
--

DROP TABLE IF EXISTS `fee_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `session_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_groups`
--

LOCK TABLES `fee_groups` WRITE;
/*!40000 ALTER TABLE `fee_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_groups_details`
--

DROP TABLE IF EXISTS `fee_groups_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_groups_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_groups_id` int(11) NOT NULL,
  `fee_type_id` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_groups_details`
--

LOCK TABLES `fee_groups_details` WRITE;
/*!40000 ALTER TABLE `fee_groups_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_groups_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_payment_history`
--

DROP TABLE IF EXISTS `fee_payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_payment_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allocation_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `collect_by` varchar(20) DEFAULT NULL,
  `amount` decimal(18,2) NOT NULL,
  `discount` decimal(18,2) NOT NULL,
  `fine` decimal(18,2) NOT NULL,
  `pay_via` varchar(20) NOT NULL,
  `remarks` longtext NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_payment_history`
--

LOCK TABLES `fee_payment_history` WRITE;
/*!40000 ALTER TABLE `fee_payment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_payment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_reminder`
--

DROP TABLE IF EXISTS `fees_reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees_reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency` varchar(255) NOT NULL,
  `days` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `student` tinyint(3) NOT NULL,
  `guardian` tinyint(3) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_reminder`
--

LOCK TABLES `fees_reminder` WRITE;
/*!40000 ALTER TABLE `fees_reminder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fees_reminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_type`
--

DROP TABLE IF EXISTS `fees_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `fee_code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_type`
--

LOCK TABLES `fees_type` WRITE;
/*!40000 ALTER TABLE `fees_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `fees_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_settings`
--

DROP TABLE IF EXISTS `global_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(255) NOT NULL,
  `institution_code` varchar(255) NOT NULL,
  `reg_prefix` varchar(255) NOT NULL,
  `institute_email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `mobileno` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `sms_service_provider` varchar(100) NOT NULL,
  `session_id` int(11) NOT NULL,
  `translation` varchar(100) NOT NULL,
  `footer_text` varchar(255) NOT NULL,
  `animations` varchar(100) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `date_format` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `facebook_url` varchar(255) NOT NULL,
  `twitter_url` varchar(255) NOT NULL,
  `linkedin_url` varchar(255) NOT NULL,
  `youtube_url` varchar(255) NOT NULL,
  `cron_secret_key` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_settings`
--

LOCK TABLES `global_settings` WRITE;
/*!40000 ALTER TABLE `global_settings` DISABLE KEYS */;
INSERT INTO `global_settings` VALUES (1,'Test','RSM-','on','ramom@example.com','','','USD','â‚¹','disabled',3,'english','Â© 2020 Ramom School Management - Developed by RamomCoder','fadeInUp','Pacific/Midway','d.M.Y','https://www.facebook.com/username','https://www.twitter.com/username','https://www.linkedin.com/username','https://www.youtube.com/username','340fe292903d1bdc2eb79298a71ebda6','2018-10-22 15:07:49','2020-05-31 13:06:26');
/*!40000 ALTER TABLE `global_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `grade_point` varchar(255) NOT NULL,
  `lower_mark` int(11) NOT NULL,
  `upper_mark` int(11) NOT NULL,
  `remark` text NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hall_allocation`
--

DROP TABLE IF EXISTS `hall_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hall_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `hall_no` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hall_allocation`
--

LOCK TABLES `hall_allocation` WRITE;
/*!40000 ALTER TABLE `hall_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `hall_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homework`
--

DROP TABLE IF EXISTS `homework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `date_of_homework` date NOT NULL,
  `date_of_submission` date NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `sms_notification` tinyint(2) NOT NULL,
  `schedule_date` date DEFAULT NULL,
  `document` varchar(255) NOT NULL,
  `evaluation_date` date DEFAULT NULL,
  `evaluated_by` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homework`
--

LOCK TABLES `homework` WRITE;
/*!40000 ALTER TABLE `homework` DISABLE KEYS */;
/*!40000 ALTER TABLE `homework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homework_evaluation`
--

DROP TABLE IF EXISTS `homework_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homework_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `remark` text NOT NULL,
  `rank` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homework_evaluation`
--

LOCK TABLES `homework_evaluation` WRITE;
/*!40000 ALTER TABLE `homework_evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `homework_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `watchman` longtext NOT NULL,
  `remarks` longtext,
  `branch_id` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_category`
--

DROP TABLE IF EXISTS `hostel_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `description` longtext,
  `branch_id` int(11) DEFAULT NULL,
  `type` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_category`
--

LOCK TABLES `hostel_category` WRITE;
/*!40000 ALTER TABLE `hostel_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostel_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_room`
--

DROP TABLE IF EXISTS `hostel_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `no_beds` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `bed_fee` decimal(18,2) NOT NULL,
  `remarks` longtext NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_room`
--

LOCK TABLES `hostel_room` WRITE;
/*!40000 ALTER TABLE `hostel_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostel_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_list`
--

DROP TABLE IF EXISTS `language_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  `lang_field` varchar(600) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_list`
--

LOCK TABLES `language_list` WRITE;
/*!40000 ALTER TABLE `language_list` DISABLE KEYS */;
INSERT INTO `language_list` VALUES (1,'English','english',1,'2018-11-15 17:36:31','2020-04-18 20:05:12'),(2,'Bengali','bengali',1,'2018-11-15 17:36:31','2018-12-04 15:41:50'),(3,'Arabic','arabic',1,'2018-11-15 17:36:31','2019-01-20 03:04:53'),(4,'French','french',1,'2018-11-15 17:36:31','2019-01-20 03:04:55'),(5,'Hindi','hindi',1,'2018-11-15 17:36:31','2019-01-20 03:00:10'),(6,'Indonesian','indonesian',1,'2018-11-15 17:36:31','2019-01-20 03:00:12'),(7,'Italian','italian',1,'2018-11-15 17:36:31','2019-01-20 03:00:14'),(8,'Japanese','japanese',1,'2018-11-15 17:36:31','2019-01-20 03:00:15'),(9,'Korean','korean',1,'2018-11-15 17:36:31','2019-01-20 03:00:17'),(10,'Dutch','dutch',1,'2018-11-15 17:36:31','2019-01-20 03:00:19'),(11,'Portuguese','portuguese',1,'2018-11-15 17:36:31','2019-01-20 03:00:20'),(12,'Thai','thai',1,'2018-11-15 17:36:31','2019-01-20 03:00:22'),(13,'Turkish','turkish',1,'2018-11-15 17:36:31','2019-01-20 03:00:25'),(14,'Urdu','urdu',1,'2018-11-15 17:36:31','2019-01-20 03:00:28'),(15,'Chinese','chinese',1,'2018-11-15 17:36:31','2019-03-29 02:44:39');
/*!40000 ALTER TABLE `language_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `english` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bengali` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `arabic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `french` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hindi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `indonesian` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `italian` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `japanese` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `korean` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dutch` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `turkish` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `urdu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chinese` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=981 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'language','Language','à¦­à¦¾à¦·à¦¾','Ù„ØºØ©','La langue','à¤­à¤¾à¤·à¤¾','Bahasa','Lingua','è¨€èªž','ì–¸ì–´','Taal','LÃ­ngua','à¸ à¸²à¸©à¸²','Dil','Ø²Ø¨Ø§Ù†','è¯­è¨€'),(2,'attendance_overview','Attendance Overview','à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦ªà¦°à¦¿à¦¦à¦°à§à¦¶à¦¨','Ù†Ø¸Ø±Ø© Ø¹Ø§Ù…Ø© Ø¹Ù„Ù‰ Ø§Ù„Ø­Ø¶ÙˆØ±','AperÃ§u de la frÃ©quentation','à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤…à¤µà¤²à¥‹à¤•à¤¨','Ikhtisar Kehadiran','Panoramica delle presenze','å‡ºå¸­ã®æ¦‚è¦','ì¶œì„ ê°œìš”','Aanwezigheid Overzicht','VisÃ£o geral de participaÃ§Ã£o','à¸ à¸²à¸žà¸£à¸§à¸¡à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡','Seyirci Genel BakÄ±ÅŸ','Ø­Ø§Ø¶Ø±ÛŒ Ø¬Ø§Ø¦Ø²Û','å‡ºå‹¤æ¦‚è§ˆ'),(3,'annual_fee_summary','Annual Fee Summary','à¦¬à¦¾à¦°à§à¦·à¦¿à¦• à¦«à¦¿ à¦¸à¦‚à¦•à§à¦·à¦¿à¦ªà§à¦¤ à¦¬à¦¿à¦¬à¦°à¦£','Ù…Ù„Ø®Øµ Ø§Ù„Ø±Ø³ÙˆÙ… Ø§Ù„Ø³Ù†ÙˆÙŠØ©','RÃ©sumÃ© des frais annuels','à¤µà¤¾à¤°à¥à¤·à¤¿à¤• à¤¶à¥à¤²à¥à¤• à¤¸à¤¾à¤°à¤¾à¤‚à¤¶','Ringkasan Biaya Tahunan','Riepilogo della tariffa annuale','å¹´ä¼šè²»ã‚µãƒžãƒªãƒ¼','ì—°íšŒë¹„ ìš”ì•½','Annual Fee Summary','Resumo da taxa anual','à¸ªà¸£à¸¸à¸›à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸£à¸²à¸¢à¸›à¸µ','YÄ±llÄ±k Ãœcret Ã–zeti','Ø³Ø§Ù„Ø§Ù†Û ÙÛŒØ³ Ø®Ù„Ø§ØµÛ','å¹´è´¹æ‘˜è¦'),(4,'my_annual_attendance_overview','My Annual Attendance Overview','à¦†à¦®à¦¾à¦° à¦¬à¦¾à¦°à§à¦·à¦¿à¦• à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦ªà¦°à¦¿à¦¦à¦°à§à¦¶à¦¨','Ø­Ø¶Ø±ÙŠ Ø§Ù„Ø³Ù†ÙˆÙŠ Ù†Ø¸Ø±Ø© Ø¹Ø§Ù…Ø©','Mon assiduitÃ© annuelle','à¤®à¥‡à¤°à¥€ à¤µà¤¾à¤°à¥à¤·à¤¿à¤• à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤…à¤µà¤²à¥‹à¤•à¤¨','Ikhtisar Kehadiran Tahunan Saya','La mia panoramica sulla partecipazione annuale','ç§ã®å¹´æ¬¡å‡ºå¸­è€…ã®æ¦‚è¦','ë‚´ ì—°ê°„ ì¶œì„ ê°œìš”','Mijn jaarlijkse aanwezigheidsoverzicht','Minha visÃ£o geral de comparecimento anual','à¸ à¸²à¸žà¸£à¸§à¸¡à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸›à¸£à¸°à¸Šà¸¸à¸¡à¸›à¸£à¸°à¸ˆà¸³à¸›à¸µà¸‚à¸­à¸‡à¸‰à¸±à¸™','YÄ±llÄ±k KatÄ±lÄ±ma Genel BakÄ±ÅŸ','Ù…ÛŒØ±Ø§ Ø³Ø§Ù„Ø§Ù†Û Ø­Ø§Ø¶Ø±ÛŒ Ø¬Ø§Ø¦Ø²Û','æˆ‘çš„å¹´åº¦å‡ºå‹¤æƒ…å†µæ¦‚è¿°'),(5,'schedule','Schedule','à¦¸à¦®à¦¯à¦¼à¦¸à§‚à¦šà§€','Ø¬Ø¯Ø§ÙˆÙ„','des horaires','à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤®','jadwal','orari','ã‚¹ã‚±ã‚¸ãƒ¥ãƒ¼ãƒ«','ì¼ì •','schema','horÃ¡rios','à¸•à¸²à¸£à¸²à¸‡à¹€à¸§à¸¥à¸²','programlarÄ±','Ø´ÛŒÚˆÙˆÙ„Ø²','æ—¶é—´è¡¨'),(6,'student_admission','Student Admission','à¦›à¦¾à¦¤à§à¦° à¦­à¦°à§à¦¤à¦¿','Ù‚Ø¨ÙˆÙ„ Ø§Ù„Ø·Ù„Ø§Ø¨','Admission des Ã©tudiants','à¤›à¤¾à¤¤à¥à¤° à¤ªà¥à¤°à¤µà¥‡à¤¶','Penerimaan Mahasiswa','Ammissione degli studenti','å­¦ç”Ÿã®å…¥å ´','í•™ìƒ ìž…ìž¥','Studenten toelating','AdmissÃ£o de estudantes','à¸à¸²à¸£à¸£à¸±à¸šà¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²','Ã–ÄŸrenci KabulÃ¼','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ø¯Ø§Ø®Ù„Û','å­¦ç”Ÿå…¥å­¦'),(7,'returned','Returned','à¦«à§‡à¦°à§Ž','Ø¹Ø§Ø¯','Revenu','à¤²à¥Œà¤Ÿà¤¾ à¤¹à¥à¤†','Kembali','tornati','æˆ»ã£ã¦ããŸ','ë°˜í’ˆ ë¨','teruggekeerd','Devolvida','à¸à¸¥à¸±à¸š','Ä°ade','ÙˆØ§Ù¾Ø³ÛŒ','å›ž'),(8,'user_name','User Name','à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Nom d\'utilisateur','à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤¨à¤¾à¤®','Nama pengguna','Nome utente','ãƒ¦ãƒ¼ã‚¶ãƒ¼å','ì‚¬ìš©ìž ì´ë¦„','Gebruikersnaam','Nome de usuÃ¡rio','à¸Šà¸·à¹ˆà¸­à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰','KullanÄ±cÄ± adÄ±','ØµØ§Ø±Ù Ú©Ø§ Ù†Ø§Ù…','ç”¨æˆ·å'),(9,'rejected','Rejected','à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦–à§à¦¯à¦¾à¦¤','Ù…Ø±ÙÙˆØ¶','RejetÃ©','à¤…à¤¸à¥à¤µà¥€à¤•à¥ƒà¤¤','Ditolak','Respinto','æ‹’å¦ã•ã‚ŒãŸ','ê±°ë¶€ ë¨','Verworpen','Rejeitado','à¸›à¸à¸´à¹€à¸ªà¸˜','Reddedilen','Ù…Ø³ØªØ±Ø¯','æ‹’ç»'),(10,'route_name','Route Name','à¦°à§à¦Ÿ à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…Ø³Ø§Ø±','Nom de l\'itinÃ©raire','à¤°à¥‚à¤Ÿ à¤¨à¤¾à¤®','Nama rute','Nome della rotta','ãƒ«ãƒ¼ãƒˆå','ê²½ë¡œ ì´ë¦„','Route Name','Nome da rota','à¸Šà¸·à¹ˆà¸­à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡','Rota AdÄ±','Ø±ÙˆÙ¹ Ú©Ø§ Ù†Ø§Ù…','è·¯çº¿åç§°'),(11,'route_fare','Route Fare','à¦°à§à¦Ÿ à¦­à¦¾à¦¡à¦¼à¦¾','Ø§Ù„Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø£Ø¬Ø±Ø©','Tarif d\'itinÃ©raire','à¤°à¥‚à¤Ÿ à¤•à¤¿à¤°à¤¾à¤¯à¤¾','Tarif rute','Route Fare','ãƒ«ãƒ¼ãƒˆé‹è³ƒ','ë…¸ì„  ìš”ê¸ˆ','Route Tarief','Tarifa da rota','à¸„à¹ˆà¸²à¹‚à¸”à¸¢à¸ªà¸²à¸£à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡','Yol Ãœcreti','Ø±Ø§Ø³ØªÛ’ Ú©ÛŒ Ù‚Ø³Ù…','è·¯çº¿ç¥¨ä»·'),(12,'edit_route','Edit Route','à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨ à¦•à¦°à¦¾ à¦°à§à¦Ÿ','ØªØ­Ø±ÙŠØ± Ø§Ù„Ù…Ø³Ø§Ø±','Modifier la route','à¤®à¤¾à¤°à¥à¤— à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','Edit rute','Modifica la rotta','çµŒè·¯ã‚’ç·¨é›†ã™ã‚‹','ê²½ë¡œ íŽ¸ì§‘','Route bewerken','Editar rota','à¹à¸à¹‰à¹„à¸‚à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡','RotayÄ± dÃ¼zenle','Ø±Ø§Ø³ØªÛ’ Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘è·¯çº¿'),(13,'this_value_is_required','This value is required.','à¦à¦‡ à¦®à¦¾à¦¨ à¦ªà§à¦°à¦¯à¦¼à§‹à¦œà¦¨','Ù‡Ø°Ù‡ Ø§Ù„Ù‚ÙŠÙ…Ø© Ù…Ø·Ù„ÙˆØ¨Ø©','Cette valeur est requise','à¤¯à¤¹ à¤®à¤¾à¤¨ à¤†à¤µà¤¶à¥à¤¯à¤• à¤¹à¥ˆ','Nilai ini diperlukan','Questo valore Ã¨ richiesto','ã“ã®å€¤ã¯å¿…é ˆã§ã™','ì´ ê°’ì€ í•„ìˆ˜ í•­ëª©ìž…ë‹ˆë‹¤.','Deze waarde is vereist','Este valor Ã© obrigatÃ³rio','à¸ˆà¸³à¹€à¸›à¹‡à¸™à¸•à¹‰à¸­à¸‡à¹ƒà¸Šà¹‰à¸„à¹ˆà¸²à¸™à¸µà¹‰','Bu deÄŸer gerekli','ÛŒÛ Ù‚ÛŒÙ…Øª Ú©ÛŒ Ø¶Ø±ÙˆØ±Øª ÛÛ’','è¯¥å€¼æ˜¯å¿…éœ€çš„'),(14,'vehicle_no','Vehicle No','à¦¯à¦¾à¦¨à¦¬à¦¾à¦¹à¦¨ à¦¨à¦‚','Ø§Ù„Ø³ÙŠØ§Ø±Ø© Ù„Ø§','NumÃ©ro de vÃ©hicule','à¤µà¤¾à¤¹à¤¨ à¤¨à¤‚à¤¬à¤°','Kendaraan No','N','è»Šä¸¡ç•ªå·','ì°¨ëŸ‰ ë²ˆí˜¸','Voertuignummer','VeÃ­culo nÃ£o','à¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°','AraÃ§ HayÄ±r','Ú¯Ø§Ú‘ÛŒ Ù†Ù…Ø¨Ø±','è½¦å·'),(15,'insurance_renewal_date','Insurance Renewal Date','à¦¬à§€à¦®à¦¾ à¦¨à¦¬à¦¾à¦¯à¦¼à¦¨ à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® ØªØ¬Ø¯ÙŠØ¯ Ø§Ù„ØªØ£Ù…ÙŠÙ†','Date de renouvellement de l&#39;assurance','à¤¬à¥€à¤®à¤¾ à¤¨à¤µà¥€à¤•à¤°à¤£ à¤¤à¤¿à¤¥à¤¿','Tanggal perpanjangan asuransi','Data di rinnovo dell\'assicurazione','ä¿é™ºæ›´æ–°æ—¥','ë³´í—˜ ê°±ì‹ ì¼','Verzekering Vernieuwingsdatum','Data de renovaÃ§Ã£o do seguro','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸•à¹ˆà¸­à¸­à¸²à¸¢à¸¸à¸à¸²à¸£à¸›à¸£à¸°à¸à¸±à¸™','Sigorta Yenileme Tarihi','Ø§Ù†Ø´ÙˆØ±Ù†Ø³ Ú©ÛŒ Ø¨Ø­Ø§Ù„ÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','ä¿é™©ç»­æœŸ'),(16,'driver_name','Driver Name','à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦°à§‡à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ø³Ø§Ø¦Ù‚','Nom du conducteur','à¤šà¤¾à¤²à¤• à¤•à¤¾ à¤¨à¤¾à¤®','Nama Driver','Nome del driver','ãƒ‰ãƒ©ã‚¤ãƒå','ë“œë¼ì´ë²„ ì´ë¦„','Naam van de bestuurder','Nome do motorista','à¸Šà¸·à¹ˆà¸­à¹„à¸”à¸£à¹Œà¹€à¸§à¸­à¸£à¹Œ','SÃ¼rÃ¼cÃ¼ AdÄ±','ÚˆØ±Ø§Ø¦ÛŒÙˆØ± Ú©Ø§ Ù†Ø§Ù…','é©±åŠ¨ç¨‹åºåç§°'),(17,'driver_license','Driver License','à¦šà¦¾à¦²à¦•à§‡à¦° à¦…à¦¨à§à¦®à§‹à¦¦à¦¨','Ø±Ø®ØµØ© Ù‚ÙŠØ§Ø¯Ø©','Permis de conduire','à¤šà¤¾à¤²à¤• à¤²à¤¾à¤‡à¤¸à¥‡à¤‚à¤¸','SIM','Patente di guida','é‹è»¢å…è¨±è¨¼','ìš´ì „ ë©´í—ˆì¦','Rijbewijs','Carteira de motorista','à¹ƒà¸šà¸­à¸™à¸¸à¸à¸²à¸•à¸‚à¸±à¸šà¸£à¸–','Ehliyet','ÚˆØ±Ø§Ø¦ÛŒÙˆØ± Ù„Ø§Ø¦Ø³Ù†Ø³','é©¾ç…§'),(18,'select_route','Select Route','à¦°à§à¦Ÿ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ø·Ø±ÙŠÙ‚','SÃ©lectionnez l\'itinÃ©raire','à¤®à¤¾à¤°à¥à¤— à¤šà¥à¤¨à¥‡à¤‚','Pilih Rute','Seleziona Route','ãƒ«ãƒ¼ãƒˆã‚’é¸æŠž','ê²½ë¡œ ì„ íƒ','Selecteer Route','Selecione a rota','à¹€à¸¥à¸·à¸­à¸à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡','RotayÄ± seÃ§in','Ø±Ø§Ø³ØªÛ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©è·¯çº¿'),(19,'edit_vehicle','Edit Vehicle','à¦¯à¦¾à¦¨à¦¬à¦¾à¦¹à¦¨ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦•à¦°à§à¦¨','ØªØ­Ø±ÙŠØ± Ø§Ù„Ø³ÙŠØ§Ø±Ø©','Modifier le vÃ©hicule','à¤µà¤¾à¤¹à¤¨ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','Edit Kendaraan','Modifica il veicolo','è»Šä¸¡ã®ç·¨é›†','ì°¨ëŸ‰ íŽ¸ì§‘','Bewerk voertuig','Editar veÃ­culo','à¹à¸à¹‰à¹„à¸‚à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°','AracÄ± DÃ¼zenle','Ú¯Ø§Ú‘ÛŒØ§Úº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘è½¦è¾†'),(20,'add_students','Add Students','à¦›à¦¾à¦¤à§à¦°à¦¦à§‡à¦° à¦¯à§‹à¦— à¦•à¦°à§à¦¨',' Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø·Ù„Ø§Ø¨','Ajouter des Ã©tudiants','à¤›à¤¾à¤¤à¥à¤° à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Siswa','Aggiungere gli studenti','å­¦ç”Ÿã‚’è¿½åŠ ã™ã‚‹','í•™ìƒ ì¶”ê°€','Voeg studenten toe','Adicionar alunos','à¹€à¸žà¸´à¹ˆà¸¡à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™','Ã–ÄŸrenci ekle','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù…ÙˆÚº Ú©Ùˆ Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ å­¦ç”Ÿ'),(21,'vehicle_number','Vehicle Number','à¦¯à¦¾à¦¨à¦¬à¦¾à¦¹à¦¨ à¦¸à¦‚à¦–à§à¦¯à¦¾','Ø¹Ø¯Ø¯ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª','NumÃ©ro de vÃ©hicule','à¤µà¤¾à¤¹à¤¨ à¤¸à¤‚à¤–à¥à¤¯à¤¾','Nomor kendaraan','Numero di veicolo','è»Šä¸¡ç•ªå·','ì°¨ëŸ‰ ë²ˆí˜¸','Voertuignummer','NÃºmero do veÃ­culo','à¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°','AraÃ§ NumarasÄ±','Ú¯Ø§Ú‘ÛŒ Ù†Ù…Ø¨Ø±','è½¦å·'),(22,'select_route_first','Select Route First','à¦°à§à¦Ÿ à¦ªà§à¦°à¦¥à¦® à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ø·Ø±ÙŠÙ‚ Ø£ÙˆÙ„Ø§','SÃ©lectionnez l\'itinÃ©raire d\'abord','à¤®à¤¾à¤°à¥à¤— à¤ªà¤¹à¤²à¥‡ à¤šà¥à¤¨à¥‡à¤‚','Pilih Rute Pertama','Seleziona Route First','æœ€åˆã«ãƒ«ãƒ¼ãƒˆã‚’é¸æŠž','ê²½ë¡œ ìš°ì„  ì„ íƒ','Selecteer Route First','Selecione a rota primeiro','à¹€à¸¥à¸·à¸­à¸à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡à¹à¸£à¸','Ã–nce GÃ¼zergahÄ± seÃ§in','Ø±Ø§Ø³ØªÛ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©è·¯ç”±ä¼˜å…ˆ'),(23,'transport_fee','Transport Fee','à¦ªà¦°à¦¿à¦¬à¦¹à¦¨ à¦«à¦¿','Ù…ØµØ§Ø±ÙŠÙ Ø§Ù„Ø´Ø­Ù†','Frais de transport','à¤ªà¤°à¤¿à¤µà¤¹à¤¨ à¤¶à¥à¤²à¥à¤•','Biaya transportasi','Tassa di trasporto','é‹è³ƒ','ìš´ì†¡ë¹„','Transportkosten','Tarifa de transporte','à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸à¸²à¸£à¸‚à¸™à¸ªà¹ˆà¸‡','TaÅŸÄ±ma Ã¼creti','Ù¹Ø±Ø§Ù†Ø³Ù¾ÙˆØ±Ù¹ ÙÛŒØ³','è¿è´¹'),(24,'control','Control','à¦¨à¦¿à¦¯à¦¼à¦¨à§à¦¤à§à¦°à¦£','Ù…Ø±Ø§Ù‚Ø¨Ø©','contrÃ´le','à¤¨à¤¿à¤¯à¤‚à¤¤à¥à¤°à¤£','kontrol','controllo','ã‚³ãƒ³ãƒˆãƒ­ãƒ¼ãƒ«','ì œì–´','controle','ao controle','à¸„à¸§à¸šà¸„à¸¸à¸¡','kontrol','Ù‚Ø§Ø¨Ùˆ','æŽ§åˆ¶'),(25,'set_students','Set Students','à¦›à¦¾à¦¤à§à¦°à¦¦à§‡à¦° à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨','ØªØ¹ÙŠÙŠÙ† Ø§Ù„Ø·Ù„Ø§Ø¨','Mettre les Ã©lÃ¨ves','à¤›à¤¾à¤¤à¥à¤°à¥‹à¤‚ à¤•à¥‹ à¤¸à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚','Set siswa','Impostare gli studenti','ç”Ÿå¾’ã‚’è¨­å®šã™ã‚‹','í•™ìƒ ë°°ì¹˜','Studenten stellen','Definir estudantes','à¸•à¸±à¹‰à¸‡à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™','Ã–ÄŸrencileri ayarla','Ø·Ù„Ø¨Ø§ Ù‚Ø§Ø¦Ù… Ú©Ø±ÛŒÚº','è®¾ç½®å­¦ç”Ÿ'),(26,'hostel_list','Hostel List','à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ù†Ø²Ù„','Liste d\'auberges','à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤¸à¥‚à¤šà¥€','Daftar hostel','Lista degli ostelli','ãƒ›ã‚¹ãƒ†ãƒ«ãƒªã‚¹ãƒˆ','í˜¸ìŠ¤í…”ë¦¬ìŠ¤íŠ¸','Hostel lijst','Lista de albergue','à¸£à¸²à¸¢à¸à¸²à¸£à¸—à¸µà¹ˆà¸žà¸±à¸','Hostel listesi','ÛØ§Ø³Ù¹Ù„ ÙÛØ±Ø³Øª','æ—…é¦†åˆ—è¡¨'),(27,'watchman_name','Watchman Name','à¦“à¦¯à¦¼à¦¾à¦šà¦®à§à¦¯à¦¾à¦¨ à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ø­Ø§Ø±Ø³','Nom du gardien','à¤µà¥‰à¤šà¤®à¥‡à¤¨ à¤•à¤¾ à¤¨à¤¾à¤®','Nama Watchman','Nome guardiano','ã‚¦ã‚©ãƒƒãƒãƒžãƒ³å','ê²½ë¹„ì› ì´ë¦„','Watchman Naam','Nome do Vigilante','à¸Šà¸·à¹ˆà¸­à¸œà¸¹à¹‰à¸”à¸¹à¹à¸¥','BekÃ§i adÄ±nÄ±','ÙˆØ§Ú† Ù…ÛŒÙ† Ú©Ø§ Ù†Ø§Ù…','å®ˆæœ›è€…å§“å'),(28,'hostel_address','Hostel Address','à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦ à¦¿à¦•à¦¾à¦¨à¦¾','Ø¹Ù†ÙˆØ§Ù† Ø§Ù„ÙÙ†Ø¯Ù‚','Adresse de l\'auberge','à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤•à¤¾ à¤ªà¤¤à¤¾','Alamat hostel','Indirizzo dell\'ostello','ãƒ›ã‚¹ãƒ†ãƒ«ã‚¢ãƒ‰ãƒ¬ã‚¹','í˜¸ìŠ¤í…” ì£¼ì†Œ','Hostel adres','EndereÃ§o do albergue','à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆà¸«à¸­à¸žà¸±à¸','Hostel adresi','ÛØ§Ø³Ù¹Ù„ Ø§ÛŒÚˆØ±ÛŒØ³','å®¿èˆåœ°å€'),(29,'edit_hostel','Edit Hostel','à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦•à¦°à§à¦¨','ØªØ­Ø±ÙŠØ± Ù†Ø²Ù„','Modifier hostel','à¤¹à¥‹à¤¸à¥à¤Ÿà¤² à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','edit hostel','Modifica ostello','ãƒ›ã‚¹ãƒ†ãƒ«ã‚’ç·¨é›†','í˜¸ìŠ¤í…”ì„ íŽ¸ì§‘í•˜ë‹¤','Wijzig hostel','Editar albergue','à¹à¸à¹‰à¹„à¸‚à¸«à¸­à¸žà¸±à¸','Hostel dÃ¼zenlemek','ÛØ§Ø³Ù¹Ù„Ø² Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘å®¿èˆ'),(30,'room_name','Room Name','à¦°à§à¦®à§‡à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„ØºØ±ÙØ©','Nom de la salle','à¤•à¤®à¤°à¥‡ à¤•à¤¾ à¤¨à¤¾à¤®','Nama ruangan','Nome della stanza','ãƒ«ãƒ¼ãƒ å','ë°© ì´ë¦„','Kamer naam','Nome da sala','à¸Šà¸·à¹ˆà¸­à¸«à¹‰à¸­à¸‡','Oda ismi','Ú©Ù…Ø±Û Ú©Ø§ Ù†Ø§Ù…','æˆ¿é—´åç§°'),(31,'no_of_beds','No Of Beds','à¦¶à¦¯à§à¦¯à¦¾ à¦¸à¦‚à¦–à§à¦¯à¦¾','Ø¹Ø¯Ø¯ Ø§Ù„Ø£Ø³Ø±Ø©','Nombre de lits','à¤¬à¥‡à¤¡ à¤•à¥€ à¤¸à¤‚à¤–à¥à¤¯à¤¾','Jumlah tempat tidur','Numero di letti','ãƒ™ãƒƒãƒ‰æ•°','ì¹¨ëŒ€ ìˆ˜','Aantal bedden','NÃºmero de leitos','à¸ˆà¸³à¸™à¸§à¸™à¹€à¸•à¸µà¸¢à¸‡','Yatak sayÄ±sÄ±','Ø¨Ø³ØªØ±ÙˆÚº Ú©ÛŒ ØªØ¹Ø¯Ø§Ø¯','åºŠæ•°'),(32,'select_hostel_first','Select Hostel First','à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦ªà§à¦°à¦¥à¦® à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ Ù†Ø²Ù„ Ø£ÙˆÙ„Ø§','SÃ©lectionnez l\'auberge en premier','à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤•à¤¾ à¤ªà¤¹à¤²à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih hostel dulu','Selezionare l\'ostello prima','æœ€åˆã«ãƒ›ã‚¹ãƒ†ãƒ«ã‚’é¸æŠž','í˜¸ìŠ¤í…”ì„ ë¨¼ì € ì„ íƒí•˜ì‹­ì‹œì˜¤.','Selecteer eerst hostel','Selecione albergue primeiro','à¹€à¸¥à¸·à¸­à¸à¹‚à¸®à¸ªà¹€à¸—à¸¥à¸à¹ˆà¸­à¸™','Ã–nce pansiyon seÃ§','Ø³Ø¨ Ø³Û’ Ù¾ÛÙ„Û’ ÛØ§Ø³Ù¹Ù„ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','å…ˆé€‰æ‹©å®¿èˆ'),(33,'remaining','Remaining','à¦…à¦¬à¦¶à¦¿à¦·à§à¦Ÿ','Ù…ØªØ¨Ù‚','Restant','à¤¶à¥‡à¤·','Tersisa','Rimanente','æ®‹ã‚Š','ë‚¨ì€','resterende','Restante','à¸—à¸µà¹ˆà¹€à¸«à¸¥à¸·à¸­à¸­à¸¢à¸¹à¹ˆ','Kalan','Ø¨Ø§Ù‚ÛŒ','å‰©ä½™'),(34,'hostel_fee','Hostel Fee','à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦«à¦¿','Ø±Ø³ÙˆÙ… Ø§Ù„Ù†Ø²Ù„','Tarif de l\'auberge','à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤¶à¥à¤²à¥à¤•','Biaya hostel','Tariffa ostello','ãƒ›ã‚¹ãƒ†ãƒ«æ–™é‡‘','í˜¸ìŠ¤í…” ìš”ê¸ˆ','Hostel kosten','Taxa de albergue','à¸„à¹ˆà¸²à¸«à¸­à¸žà¸±à¸','Hostel Ã¼creti','Ù…ÛŒØ²Ø¨Ø§Ù† ÙÛŒØ³','å®¿èˆè´¹'),(35,'accountant_list','Accountant List','à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿà§‡à¦¨à§à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù…Ø­Ø§Ø³Ø¨ÙŠÙ†','Liste comptable','à¤²à¥‡à¤–à¤¾à¤•à¤¾à¤° à¤¸à¥‚à¤šà¥€','Daftar akuntan','Elenco dei contabili','ä¼šè¨ˆå£«ãƒªã‚¹ãƒˆ','íšŒê³„ì‚¬ ëª©ë¡','Accountant lijst','Lista de contadores','à¸šà¸±à¸à¸Šà¸µà¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­','Muhasebeci listesi','Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ù¹ Ú©ÛŒ ÙÛØ±Ø³Øª','ä¼šè®¡æ¸…å•'),(36,'students_fees','Students Fees','à¦›à¦¾à¦¤à§à¦° à¦«à¦¿','Ø±Ø³ÙˆÙ… Ø§Ù„Ø·Ù„Ø§Ø¨','Frais d\'Ã©tudiants','à¤›à¤¾à¤¤à¥à¤°à¥‹à¤‚ à¤•à¥€ à¤«à¥€à¤¸','Biaya siswa','Le tasse degli studenti','å­¦ç”Ÿæ‰‹æ•°æ–™','í•™ìƒ ë¹„ìš©','Studentenkosten','Taxas de estudantes','à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²','Ã–ÄŸrenci Ã¼cretleri','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù…ÙˆÚº Ú©ÛŒ ÙÛŒØ³','å­¦è´¹'),(37,'fees_status','Fees Status','à¦«à¦¿ à¦¸à§à¦¥à¦¿à¦¤à¦¿','Ø­Ø§Ù„Ø© Ø§Ù„Ø±Ø³ÙˆÙ…','Statut des frais','à¤«à¥€à¤¸ à¤•à¥€ à¤¸à¥à¤¥à¤¿à¤¤à¤¿','Status biaya','Status dei diritti','æ‰‹æ•°æ–™ã‚¹ãƒ†ãƒ¼ã‚¿ã‚¹','ìˆ˜ìˆ˜ë£Œ ìƒíƒœ','Tarieven status','Status de tarifas','à¸ªà¸–à¸²à¸™à¸°à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret durumu','ÙÛŒØ³ Ú©ÛŒ Ø­ÛŒØ«ÛŒØª','è´¹ç”¨çŠ¶å†µ'),(38,'books','Books','à¦¬à¦‡','Ø§Ù„ÙƒØªØ¨','livres','à¤ªà¥à¤¸à¥à¤¤à¤•à¥‡à¤‚','Buku','libri','æœ¬','ì„œì ','boeken','Livros','à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','kitaplar','Ú©ØªØ§Ø¨ÛŒÚº','å›¾ä¹¦'),(39,'home_page','Home Page','à¦¹à§‹à¦® à¦ªà§‡à¦œ','Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ©','Page d\'accueil','à¤®à¥à¤– à¤ªà¥ƒà¤·à¥à¤ ','Halaman rumah','Home page','ãƒ›ãƒ¼ãƒ ãƒšãƒ¼ã‚¸','í™ˆíŽ˜ì´ì§€','Startpagina','pagina inicial','à¸«à¸™à¹‰à¸²à¹à¸£à¸','Ana sayfa','ÛÙˆÙ… Ù¾ÛŒØ¬','ä¸»é¡µ'),(40,'collected','Collected','à¦¸à¦‚à¦—à§ƒà¦¹à§€à¦¤','Ø¬Ù…Ø¹','collectÃ©','à¤œà¥à¤Ÿà¤¾à¤¯à¤¾ à¤¹à¥à¤†','dikumpulkan','raccolto','é›†ã‚ã¾ã—ãŸ','ëª¨ì€','verzamelde','coletado','à¹€à¸à¹‡à¸šà¸£à¸§à¸šà¸£à¸§à¸¡','toplanmÄ±ÅŸ','Ø¬Ù…Ø¹','é›†'),(41,'student_mark','Student Mark','à¦›à¦¾à¦¤à§à¦° à¦®à¦¾à¦°à§à¦•','Ø¹Ù„Ø§Ù…Ø© Ø§Ù„Ø·Ø§Ù„Ø¨','Marque Ã©tudiante','à¤›à¤¾à¤¤à¥à¤° à¤¨à¤¿à¤¶à¤¾à¤¨','Tanda siswa','Marchio studente','å­¦ç”Ÿè¨¼','í•™ìƒ í‘œ','Studentenmerk','Marca estudantil','à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™','Ã–ÄŸrenci iÅŸareti','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©Ø§ Ù†Ø´Ø§Ù†','å­¦ç”Ÿæ ‡è®°'),(42,'select_exam_first','Select Exam First','à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦ªà§à¦°à¦¥à¦® à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù† Ø£ÙˆÙ„Ø§','SÃ©lectionnez l\'examen en premier','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤ªà¤¹à¤²à¥‡ à¤šà¥à¤¨à¥‡à¤‚','Pilih ujian dulu','Selezionare l\'esame per primo','æœ€åˆã«è©¦é¨“ã‚’é¸æŠž','ë¨¼ì € ì‹œí—˜ì„ ì„ íƒí•˜ì‹­ì‹œì˜¤.','Selecteer eerst examen','Selecione o exame primeiro','à¹€à¸¥à¸·à¸­à¸à¸à¸²à¸£à¸ªà¸­à¸šà¸à¹ˆà¸­à¸™','Ã–nce sÄ±navÄ± seÃ§','Ø³Ø¨ Ø³Û’ Ù¾ÛÙ„Û’ Ø§Ù…ØªØ­Ø§Ù† Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','å…ˆé€‰æ‹©è€ƒè¯•'),(43,'transport_details','Transport Details','à¦ªà¦°à¦¿à¦¬à¦¹à¦¨ à¦¬à¦¿à¦¬à¦°à¦£','ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ù†Ù‚Ù„','DÃ©tails de transport','à¤ªà¤°à¤¿à¤µà¤¹à¤¨ à¤µà¤¿à¤µà¤°à¤£','Rincian transportasi','Dettagli di trasporto','é‹é€ã®è©³ç´°','ìš´ì†¡ ì„¸ë¶€ ì •ë³´','Transport details','Detalhes do transporte','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸à¸²à¸£à¸‚à¸™à¸ªà¹ˆà¸‡','UlaÅŸÄ±m bilgileri','Ù†Ù‚Ù„ Ùˆ Ø­Ù…Ù„ Ú©ÛŒ ØªÙØµÛŒÙ„Ø§Øª','è¿è¾“ç»†èŠ‚'),(44,'no_of_teacher','No of Teacher','à¦¶à¦¿à¦•à§à¦·à¦•à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾','Ù„Ø§ Ø§Ù„Ù…Ø¹Ù„Ù…','Nombre de professeurs','à¤¶à¤¿à¤•à¥à¤·à¤• à¤•à¥€ à¤¸à¤‚à¤–à¥à¤¯à¤¾','Tidak ada guru','Nemo autem magister','å…ˆç”Ÿã®ã„ã„ãˆ','êµì‚¬ ìˆ˜','Nee van leraar','NÃ£o professor','à¹„à¸¡à¹ˆà¸¡à¸µà¸„à¸£à¸¹','Ã–ÄŸretmenin numarasÄ±','Ø§Ø³ØªØ§Ø¯ Ú©ÛŒ Ú©ÙˆØ¦ÛŒ Ø¨Ú¾ÛŒ Ù†ÛÛŒÚº','ä¸æ˜¯è€å¸ˆ'),(45,'basic_details','Basic Details','à¦®à§Œà¦²à¦¿à¦• à¦¬à¦¿à¦¬à¦°à¦£','ØªÙØ§ØµÙŠÙ„ Ø£Ø³Ø§Ø³ÙŠØ©','DÃ©tails de base','à¤®à¥‚à¤² à¤µà¤¿à¤µà¤°à¤£','Detail Dasar','Dettagli di base','åŸºæœ¬çš„ãªè©³ç´°','ê¸°ë³¸ ì„¸ë¶€ ì‚¬í•­','Basisgegevens','Detalhes BÃ¡sicos','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸žà¸·à¹‰à¸™à¸à¸²à¸™','Temel Detaylar','Ø¨Ù†ÛŒØ§Ø¯ÛŒ ØªÙØµÛŒÙ„Ø§Øª','åŸºæœ¬ç»†èŠ‚'),(46,'fee_progress','Fee Progress','à¦«à¦¿ à¦…à¦—à§à¦°à¦—à¦¤à¦¿','Ø±Ø³ÙˆÙ… Ø§Ù„ØªÙ‚Ø¯Ù…','Progression des frais','à¤¶à¥à¤²à¥à¤• à¤ªà¥à¤°à¤—à¤¤à¤¿','Kemajuan Biaya','Avanzamento della tassa','æ–™é‡‘ã®é€²æ—','ìš”ê¸ˆ ì§„í–‰ ìƒí™©','Progress Progress','Progresso de taxas','à¸„à¸§à¸²à¸¡à¸„à¸·à¸šà¸«à¸™à¹‰à¸²à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret Ä°lerlemesi','ÙÛŒØ³ Ù¾ÛŒØ´ Ø±ÙØª','è´¹ç”¨è¿›åº¦'),(47,'word','Word','à¦¶à¦¬à§à¦¦','ÙƒÙ„Ù…Ø©','mot','à¤¶à¤¬à¥à¤¦','kata','parola','ãƒ¯ãƒ¼ãƒ‰','ì›Œë“œ','word','palavra','à¸„à¸³','sÃ¶zcÃ¼k','Ù„ÙØ¸','å­—'),(48,'book_category','Book Category','à¦¬à¦‡ à¦¬à¦¿à¦­à¦¾à¦—','ÙØ¦Ø© Ø§Ù„ÙƒØªØ§Ø¨','CatÃ©gorie livre','à¤ªà¥à¤¸à¥à¤¤à¤• à¤¶à¥à¤°à¥‡à¤£à¥€','Kategori buku','Categoria di libri','æœ¬ã‚«ãƒ†ã‚´ãƒª','ë„ì„œ ì¹´í…Œê³ ë¦¬','Boek categorie','Categoria de livro','book à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆ','Kitap kategorisi','Ú©ØªØ§Ø¨ Ú©ÛŒ Ù‚Ø³Ù…','ä¹¦ç±»'),(49,'driver_phone','Driver Phone','à¦¡à§à¦°à¦¾à¦‡à¦­à¦¾à¦° à¦«à§‹à¦¨','Ø³Ø§Ø¦Ù‚ Ø§Ù„Ù‡Ø§ØªÙ','Driver Phone','à¤šà¤¾à¤²à¤• à¤«à¥‹à¤¨','Driver Telepon','Telefono del conducente','ãƒ‰ãƒ©ã‚¤ãƒãƒ¼ãƒ•ã‚©ãƒ³','ìš´ì „ìž ì „í™” ë²ˆí˜¸','Driver Telefoon','Driver Phone','à¹‚à¸—à¸£à¸¨à¸±à¸žà¸—à¹Œà¹„à¸”à¸£à¹Œà¹€à¸§à¸­à¸£à¹Œ','SÃ¼rÃ¼cÃ¼ Telefon','ÚˆØ±Ø§Ø¦ÛŒÙˆØ± ÙÙˆÙ†','å¸æœºç”µè¯'),(50,'invalid_csv_file','Invalid / Corrupted CSV File','à¦…à¦¬à§ˆà¦§ / à¦¦à§‚à¦·à¦¿à¦¤ CSV à¦«à¦¾à¦‡à¦²','Ù…Ù„Ù ÙƒØ³Ù ØºÙŠØ± ØµØ§Ù„Ø­ / Ù…Ø¹Ø·Ù„','fichier CSV invalide / corrompu','à¤…à¤®à¤¾à¤¨à¥à¤¯ / à¤­à¥à¤°à¤·à¥à¤Ÿ CSV à¤«à¤¼à¤¾à¤‡à¤²','file CSV yang tidak benar / rusak','file CSV non valido / danneggiato','ç„¡åŠ¹/ç ´æã—ãŸCSVãƒ•ã‚¡ã‚¤ãƒ«','ìœ íš¨í•˜ì§€ ì•Šì€ / ì†ìƒëœ CSV íŒŒì¼','ongeldig / beschadigd CSV-bestand','arquivo CSV invÃ¡lido / corrompido','à¹„à¸Ÿà¸¥à¹Œ CSV à¸—à¸µà¹ˆà¹„à¸¡à¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡ / à¹€à¸ªà¸µà¸¢à¸«à¸²à¸¢','geÃ§ersiz / bozuk CSV dosyasÄ±','ØºÙ„Ø· / Ø®Ø±Ø§Ø¨ CSV ÙØ§Ø¦Ù„','æ— æ•ˆ/æŸåçš„CSVæ–‡ä»¶'),(51,'requested_book_list','Requested Book List','à¦…à¦¨à§à¦°à§‹à¦§à¦•à§ƒà¦¤ à¦¬à¦‡à¦¯à¦¼à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ø·Ù„Ø¨ Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ÙƒØªØ¨','Liste de livres demandÃ©e','à¤…à¤¨à¥à¤°à¥‹à¤§à¤¿à¤¤ à¤ªà¥à¤¸à¥à¤¤à¤• à¤¸à¥‚à¤šà¥€','Daftar buku yang diminta','L\'elenco dei libri richiesti','è¦æ±‚ã•ã‚ŒãŸæœ¬ã®ãƒªã‚¹ãƒˆ','ìš”ì²­ ëœ ë„ì„œ ëª©ë¡','Gevraagde boekenlijst','Lista de livros solicitada','à¸£à¸²à¸¢à¸à¸²à¸£à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­à¸—à¸µà¹ˆà¸‚à¸­','Talep edilen kitap listesi','Ø¯Ø±Ø®ÙˆØ§Ø³Øª Ú©ÛŒ Ú©ØªØ§Ø¨ Ú©ÛŒ ÙÛØ±Ø³Øª','è¦æ±‚ä¹¦ç›®å½•'),(52,'request_status','Request Status','à¦…à¦¨à§à¦°à§‹à¦§ à¦¸à§à¦¥à¦¿à¦¤à¦¿','Ø­Ø§Ù„Ø© Ø§Ù„Ø·Ù„Ø¨','Statut de demande','à¤…à¤¨à¥à¤°à¥‹à¤§ à¤•à¥€ à¤¸à¥à¤¥à¤¿à¤¤à¤¿','Status permintaan','Stato di richiesta','è¦æ±‚ã‚¹ãƒ†ãƒ¼ã‚¿ã‚¹','ìš”ì²­ ìƒíƒœ','Status aanvragen','Status de solicitaÃ§Ã£o','à¸ªà¸–à¸²à¸™à¸°à¸„à¸³à¸‚à¸­','Istek durumu','Ø¯Ø±Ø®ÙˆØ§Ø³Øª Ú©ÛŒ Ø­ÛŒØ«ÛŒØª','è¯·æ±‚çŠ¶æ€'),(53,'book_request','Book Request','à¦¬à¦‡à¦¯à¦¼à§‡à¦° à¦…à¦¨à§à¦°à§‹à¦§','Ø·Ù„Ø¨ Ø§Ù„ÙƒØªØ§Ø¨','Demande de livre','à¤ªà¥à¤¸à¥à¤¤à¤• à¤…à¤¨à¥à¤°à¥‹à¤§','Permintaan buku','Richiesta di libro','æœ¬ã®ãƒªã‚¯ã‚¨ã‚¹ãƒˆ','ë„ì„œ ìš”ì²­','Boekverzoek','Pedido de livro','à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­à¸‚à¸­','Kitap isteÄŸi','Ú©ØªØ§Ø¨ Ú©ÛŒ Ø¯Ø±Ø®ÙˆØ§Ø³Øª','ä¹¦ç±è¦æ±‚'),(54,'logout','Logout','à¦ªà§à¦°à¦¸à§à¦¥à¦¾à¦¨','Ø§Ù„Ø®Ø±ÙˆØ¬','Connectez - Out','à¤²à¥‹à¤— à¤†à¤‰à¤Ÿ','keluar','logout','ãƒ­ã‚°ã‚¢ã‚¦ãƒˆ','ë¡œê·¸ ì•„ì›ƒ','uitloggen','sair','à¸­à¸­à¸à¸ˆà¸²à¸à¸£à¸°à¸šà¸š','Ã§Ä±kÄ±ÅŸ Yap','Ù„Ø§Ú¯ Ø¢ÙˆÙ¹','ç™»å‡º'),(55,'select_payment_method','Select Payment Method','à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦ªà¦¦à§à¦§à¦¤à¦¿ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø§Ø®ØªØ§Ø± Ø·Ø±ÙŠÙ‚Ø© Ø§Ù„Ø¯ÙØ¹','SÃ©lectionnez le mode de paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¤¾ à¤¤à¤°à¥€à¤•à¤¾ à¤šà¥à¤¨à¥‡à¤‚','Pilih metode pembayaran','scegli il metodo di pagamento','ãŠæ”¯æ‰•ã„æ–¹æ³•ã‚’é¸æŠž','ì§€ë¶ˆ ë°©ë²• ì„ íƒ','Selecteer betaalmethode','Selecione o mÃ©todo de pagamento','à¹€à¸¥à¸·à¸­à¸à¸§à¸´à¸˜à¸µà¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã¶deme tÃ¼rÃ¼nÃ¼ seÃ§in','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Ø§ Ø·Ø±ÛŒÙ‚Û Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©ä»˜æ¬¾æ–¹å¼'),(56,'select_method','Select Method','à¦ªà¦¦à§à¦§à¦¤à¦¿ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ø·Ø±ÙŠÙ‚Ø©','MÃ©thode choisie','à¤µà¤¿à¤§à¤¿ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih metode','Selezionare il metodo','ãƒ¡ã‚½ãƒƒãƒ‰ã®é¸æŠž','ì„ íƒ ë°©ë²•','Selecteer methode','MÃ©todo selecionado','à¹€à¸¥à¸·à¸­à¸à¸§à¸´à¸˜à¸µ','YÃ¶ntemi seÃ§','Ø·Ø±ÛŒÙ‚Û Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©æ–¹æ³•'),(57,'payment','Payment','à¦ªà§à¦°à¦¦à¦¾à¦¨','Ø¯ÙØ¹','Paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨','Pembayaran','Pagamento','æ”¯æ‰•ã„','ì§€ë¶ˆ','Betaling','Pagamento','à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã–deme','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ','ä»˜æ¬¾'),(58,'filter','Filter','à¦›à¦¾à¦à¦•à¦¨à¦¿','Ù…Ù†Ù‚ÙŠ','Filtre','à¤«à¤¼à¤¿à¤²à¥à¤Ÿà¤°','Filter','Filtro','ãƒ•ã‚£ãƒ«ã‚¿','í•„í„°','Filter','Filtro','à¸à¸£à¸­à¸‡','filtre','ÙÙ„Ù¹Ø±','è¿‡æ»¤'),(59,'status','Status','à¦…à¦¬à¦¸à§à¦¥à¦¾','Ø§Ù„Ø­Ø§Ù„Ø©','statut','à¤¸à¥à¤¥à¤¿à¤¤à¤¿','Status','Stato','çŠ¶æ…‹','ì§€ìœ„','toestand','estado','à¸ªà¸–à¸²à¸™à¸°','durum','Ø³Ù¹ÛŒÙ¹Ø³','çŠ¶æ€'),(60,'paid','Paid','à¦…à¦°à§à¦¥ à¦ªà§à¦°à¦¦à¦¾à¦¨','Ø¯ÙØ¹','PayÃ©','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¤¿à¤¯à¤¾ à¤¹à¥ˆ','dibayar','Pagato','æ”¯æ‰•ã‚ã‚Œã¾ã—ãŸ','ìœ ë£Œ','Betaald','Pago','à¸•à¹‰à¸­à¸‡à¸ˆà¹ˆà¸²à¸¢','Ã¼cretli','Ø§Ø¯Ø§ Ú©ÛŒ','ä»˜è´¹'),(61,'unpaid','Unpaid','à¦…à¦¬à§ˆà¦¤à¦¨à¦¿à¦•','ØºÙŠØ± Ù…Ø¯ÙÙˆØ¹','Non payÃ©','à¤…à¤µà¥ˆà¤¤à¤¨à¤¿à¤•','Tunggakan','non pagato','æœªæ‰•ã„','ì§€ë¶ˆí•˜ì§€ ì•Šì€','onbetaald','nÃ£o remunerado','à¸¢à¸±à¸‡à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸Šà¸³à¸£à¸°','Ã¶denmemiÅŸ','Ø¨Ù„Ø§ Ù…Ø¹Ø§ÙˆØ¶Û','æœªä»˜'),(62,'method','Method','à¦ªà¦¦à§à¦§à¦¤à¦¿','Ø·Ø±ÙŠÙ‚Ø©','la mÃ©thode','à¤¤à¤°à¥€à¤•à¤¾','Metode','metodo','æ–¹æ³•','ë°©ë²•','Methode','MÃ©todo','à¸§à¸´à¸˜à¸µ','YÃ¶ntem','Ø·Ø±ÛŒÙ‚Û','æ–¹æ³•'),(63,'cash','Cash','à¦¨à¦—à¦¦','Ø§Ù„Ø³ÙŠÙˆÙ„Ø© Ø§Ù„Ù†Ù‚Ø¯ÙŠØ©','Argent liquide','à¤°à¥‹à¤•à¤¡à¤¼','Kas','Contanti','ç¾é‡‘','í˜„ê¸ˆ','geld','Dinheiro','à¹€à¸‡à¸´à¸™à¸ªà¸”','Nakit','Ù†Ù‚Ø¯','çŽ°é‡‘'),(64,'check','Check','à¦šà§‡à¦•','Ø§Ù„Ø§Ø®ØªÙŠØ§Ø±','VÃ©rifier','à¤šà¥‡à¤•','Memeriksa','Dai un\'occhiata','ãƒã‚§ãƒƒã‚¯','ê²€ì‚¬','check','Verifica','à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸š','Ara','Ú†ÛŒÚ© Ú©Ø±ÛŒÚº','æ£€æŸ¥'),(65,'card','Card','à¦•à¦¾à¦°à§à¦¡','Ø¨Ø·Ø§Ù‚Ø©','Carte','à¤•à¤¾à¤°à¥à¤¡','Kartu','Carta','ã‚«ãƒ¼ãƒ‰','ì¹´ë“œ','Kaart','CartÃ£o','à¸šà¸±à¸•à¸£','kart','Ú©Ø§Ø±Úˆ','å¡'),(66,'payment_history','Payment History','à¦…à¦°à§à¦¥ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¯ÙØ¹','historique de paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸','Riwayat Pembayaran','Storico dei pagamenti','æ”¯æ‰•æ­´','ì§€ê¸‰ ë‚´ì—­','Betaalgeschiedenis','HistÃ³rico de pagamento','à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã¶deme geÃ§miÅŸi','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','ä»˜æ¬¾è®°å½•'),(67,'category','Category','à¦¬à¦¿à¦­à¦¾à¦—','ÙØ¦Ø©','CatÃ©gorie','à¤µà¤°à¥à¤—','Kategori','Categoria','ã‚«ãƒ†ã‚´ãƒªãƒ¼','ë²”ì£¼','Categorie','Categoria','à¸›à¸£à¸°à¹€à¸ à¸—','Kategori','Ù‚Ø³Ù…','ç±»åˆ«'),(68,'book_list','Book List','à¦ªà¦¾à¦ à§à¦¯à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ÙƒØªØ¨','Liste de livres','à¤ªà¥à¤¸à¥à¤¤à¤• à¤¸à¥‚à¤šà¥€','Daftar buku','Lista di libri','ãƒ–ãƒƒã‚¯ãƒªã‚¹ãƒˆ','ë„ì„œ ëª©ë¡','Book List','Lista de livros','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','Kitap listesi','Ú©ØªØ§Ø¨ Ú©ÛŒ ÙÛØ±Ø³Øª','å›¾ä¹¦æ¸…å•'),(69,'author','Author','à¦²à§‡à¦–à¦•','Ù…Ø¤Ù„Ù','Auteur','à¤²à¥‡à¤–à¤•','Penulis','Autore','è‘—è€…','ì €ìž','Auteur','Autor','à¸œà¸¹à¹‰à¹€à¸‚à¸µà¸¢à¸™','Yazar','Ù…ØµÙ†Ù','ä½œè€…'),(70,'price','Price','à¦®à§‚à¦²à§à¦¯','Ø§Ù„Ø³Ø¹Ø±','Prix','à¤®à¥‚à¤²à¥à¤¯','Harga','Prezzo','ä¾¡æ ¼','ê°€ê²©','Prijs','PreÃ§o','à¸£à¸²à¸„à¸²','Fiyat','Ù‚ÛŒÙ…Øª','ä»·é’±'),(71,'available','Available','à¦¸à¦¹à¦œà¦²à¦­à§à¦¯','Ù…ØªØ§Ø­','Disponible','à¤‰à¤ªà¤²à¤¬à¥à¤§','Tersedia','A disposizione','åˆ©ç”¨ã§ãã¾ã™','ìœ íš¨í•œ','Beschikbaar','DisponÃ­vel','à¸—à¸µà¹ˆà¸¡à¸µà¸ˆà¸³à¸«à¸™à¹ˆà¸²à¸¢','Mevcut','Ø¯Ø³ØªÛŒØ§Ø¨','å¯ç”¨çš„'),(72,'unavailable','Unavailable','à¦…à¦ªà§à¦°à¦¾à¦ªà§à¦¯','ØºÙŠØ± Ù…ØªÙˆÙØ±Ù‡','Indisponible','à¤…à¤¨à¥à¤ªà¤²à¤¬à¥à¤§','tidak tersedia','non disponibile','åˆ©ç”¨ã§ãã¾ã›ã‚“','ì—†ëŠ”','Niet beschikbaar','IndisponÃ­vel','à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¹„à¸¡à¹ˆà¹„à¸”à¹‰','yok','Ø¯Ø³ØªÛŒØ§Ø¨ Ù†ÛÛŒÚº','ä¸å¯ç”¨'),(73,'transport_list','Transport List','à¦ªà¦°à¦¿à¦¬à¦¹à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù†Ù‚Ù„','Liste des transports','à¤ªà¤°à¤¿à¤µà¤¹à¤¨ à¤¸à¥‚à¤šà¥€','Daftar transportasi','Lista dei trasporti','ãƒˆãƒ©ãƒ³ã‚¹ãƒãƒ¼ãƒˆä¸€è¦§','ì „ì†¡ ëª©ë¡','transport List','Lista de transportes','à¸£à¸²à¸¢à¸à¸²à¸£à¸‚à¸™à¸ªà¹ˆà¸‡','TaÅŸÄ±ma listesi','Ù¹Ø±Ø§Ù†Ø³Ù¾ÙˆØ±Ù¹ Ú©ÛŒ ÙÛØ±Ø³Øª','äº¤é€šè¿è¾“æ¸…å•'),(74,'edit_transport','Edit Transport','à¦ªà¦°à¦¿à¦¬à¦¹à¦¨ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾','ØªØ­Ø±ÙŠØ± Ø§Ù„Ù†Ù‚Ù„','Modifier Transport','à¤ªà¤°à¤¿à¤µà¤¹à¤¨ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','mengedit Transportasi','Modifica Trasporti','ç·¨é›†äº¤é€š','íŽ¸ì§‘ ì „ì†¡','Transport bewerken','Editar Transportes','à¹à¸à¹‰à¹„à¸‚à¸‚à¸™à¸ªà¹ˆà¸‡','DÃ¼zenleme UlaÅŸÄ±m','Ù¹Ø±Ø§Ù†Ø³Ù¾ÙˆØ±Ù¹ Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘ä¼ è¾“'),(75,'hostel_name','Hostel Name','à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…Ù‡Ø¬Ø¹','Nom Dortoir','à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤•à¤¾ à¤¨à¤¾à¤®','Nama asrama','Nome dormitorio','å¯®ã®åå‰','ê¸°ìˆ™ì‚¬ ì´ë¦„','slaapzaal Naam','Nome dormitÃ³rio','à¸Šà¸·à¹ˆà¸­à¸«à¸­à¸žà¸±à¸','yatakhane Ad','Ø´ÛŒÙ†Ø§Ú¯Ø§Ø± Ù†Ø§Ù…','å®¿èˆåç§°'),(76,'number_of_room','Hostel Of Room','à¦°à§à¦® à¦¨à¦®à§à¦¬à¦°','Ø¹Ø¯Ø¯ Ø§Ù„ØºØ±Ù','Nombre de chambres','à¤•à¤®à¤°à¥‡ à¤•à¥€ à¤¸à¤‚à¤–à¥à¤¯à¤¾','Jumlah Kamar','Il numero di stanze','éƒ¨å±‹ã®æ•°','ë£¸ì˜ ìˆ˜','Aantal kamers','NÃºmero de salas','à¸ˆà¸³à¸™à¸§à¸™à¸«à¹‰à¸­à¸‡à¸žà¸±à¸','Oda SayÄ±sÄ±','Ú©Ù…Ø±Û Ú©ÛŒ ØªØ¹Ø¯Ø§Ø¯','æ•°ç§å®¢æˆ¿'),(77,'yes','Yes','à¦¹à¦¾à¦','Ù†Ø¹Ù… ÙØ¹Ù„Ø§','Oui','à¤¹à¤¾à¤','iya nih','sÃ¬','ã¯ã„','ì˜ˆ','Ja','sim','à¹ƒà¸Šà¹ˆ','Evet','Ø¬ÛŒ ÛØ§Úº','æ˜¯'),(78,'no','No','à¦¨à¦¾','Ù„Ø§','Non','à¤¨à¤¹à¥€à¤‚','Tidak','No','ã„ã„ãˆ','ì•„ë‹ˆ','Nee','NÃ£o','à¹„à¸¡à¹ˆ','hayÄ±r','Ù†ÛÛŒÚº','æ²¡æœ‰'),(79,'messages','Messages','à¦¬à¦¾à¦°à§à¦¤à¦¾','Ø±Ø³Ø§Ø¦Ù„','messages','à¤¸à¤‚à¤¦à¥‡à¤¶','pesan','messaggi','ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸','ë©”ì‹œì§€','berichten','mensagens','à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡','Mesajlar','Ù¾ÛŒØºØ§Ù…Ø§Øª','æ¶ˆæ¯'),(80,'compose','Compose','à¦¨à¦¤à§à¦¨ à¦¬à¦¾à¦°à§à¦¤à¦¾ à¦²à¦¿à¦–à¦¤à§‡','Ø¥Ø±Ø³Ø§Ù„ Ø±Ø³Ø§Ù„Ø© Ø¬Ø¯ÙŠØ¯Ø©','Ecrire un nouveau message','à¤¨à¤¯à¤¾ à¤¸à¤‚à¤¦à¥‡à¤¶ à¤²à¤¿à¤–à¥‡à¤‚','Tulis baru Pesan','Scrivi nuovo messaggio','æ–°ã—ã„ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸ã‚’æ›¸ãã¾ã™','ìƒˆ ë©”ì‹œì§€ ì“°ê¸°','Schrijf New Message','Escrever Nova Mensagem','à¹€à¸‚à¸µà¸¢à¸™à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¹ƒà¸«à¸¡à¹ˆ','Yeni Mesaj Yaz','Ù†ÛŒØ§ Ù¾ÛŒØºØ§Ù… Ù„Ú©Ú¾ÛŒÚº','æˆ‘è¦ç•™è¨€'),(81,'recipient','Recipient','à¦ªà§à¦°à¦¾à¦ªà¦•','Ù…Ø³ØªÙ„Ù…','BÃ©nÃ©ficiaire','à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤à¤•à¤°à¥à¤¤à¤¾','Penerima','Destinatario','å—ä¿¡è€…','ë°›ëŠ” ì‚¬ëžŒ','Ontvanger','beneficiÃ¡rio','à¸œà¸¹à¹‰à¸£à¸±à¸š','alÄ±cÄ±','ÙˆØµÙˆÙ„ Ú©Ù†Ù†Ø¯Û','æŽ¥å—è€…'),(82,'select_a_user','Select A User','à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦à¦•à¦Ÿà¦¿ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€','ØªØ­Ø¯ÙŠØ¯ Ù…Ø³ØªØ®Ø¯Ù…','SÃ©lectionnez un utilisateur','à¤šà¤¯à¤¨ à¤à¤• à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾','Pilih User','Selezionare un utente','ãƒ¦ãƒ¼ã‚¶ãƒ¼ã‚’é¸æŠžã—ã¾ã™','ì‚¬ìš©ìžë¥¼ ì„ íƒ','Kies een gebruiker','Selecione um usuÃ¡rio','à¹€à¸¥à¸·à¸­à¸à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰','Bir kullanÄ±cÄ± seÃ§in','A ÛŒÙˆØ²Ø± Ú©Ø±ÛŒÚº','é€‰æ‹©ä¸€ä¸ªç”¨æˆ·'),(83,'send','Send','à¦ªà¦¾à¦ à¦¾à¦¨','Ø¥Ø±Ø³Ø§Ù„','Envoyer','à¤­à¥‡à¤œà¤¨à¤¾','Kirim','Inviare','é€ä¿¡','ë³´ë‚´ë‹¤','sturen','Enviar','à¸ªà¹ˆà¸‡','gÃ¶ndermek','Ø­Ø³Ø§Ø¨','å‘é€'),(84,'global_settings','Global Settings','à¦¸à¦¾à¦°à§à¦¬à¦œà¦¨à§€à¦¨ à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦£','Ø§Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù†Ø¸Ø§Ù…','Les paramÃ¨tres du systÃ¨me','à¤ªà¥à¤°à¤£à¤¾à¤²à¥€ à¤µà¥à¤¯à¤µà¤¸à¥à¤¥à¤¾','Pengaturan sistem','Impostazioni di sistema','ã‚·ã‚¹ãƒ†ãƒ è¨­å®š','ì‹œìŠ¤í…œ ì„¤ì •','Systeem instellingen','ConfiguraÃ§Ãµes de sistema','à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸£à¸°à¸šà¸š','Sistem ayarlarÄ±','Ù†Ø¸Ø§Ù… Ú©ÛŒ ØªØ±ØªÛŒØ¨Ø§Øª','ç³»ç»Ÿè®¾ç½®'),(85,'currency','Currency','à¦®à§à¦¦à§à¦°à¦¾','Ø¹Ù…Ù„Ø©','Devise','à¤®à¥à¤¦à¥à¤°à¤¾','Mata uang','Moneta','é€šè²¨','í†µí™”','Valuta','Moeda','à¹€à¸‡à¸´à¸™à¸•à¸£à¸²','para','Ú©Ø±Ù†Ø³ÛŒ','è´§å¸'),(86,'system_email','System Email','à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦® à¦‡à¦®à§‡à¦‡à¦²','Ù†Ø¸Ø§Ù… Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','systÃ¨me Email','à¤ªà¥à¤°à¤£à¤¾à¤²à¥€ à¤ˆà¤®à¥‡à¤²','sistem Email','sistema di posta elettronica','ã‚·ã‚¹ãƒ†ãƒ ãƒ¡ãƒ¼ãƒ«','System ì „ìž ë©”ì¼','System E-mail','sistema de E-mail','à¸£à¸°à¸šà¸šà¸­à¸µà¹€à¸¡à¸¥','sistem E-posta','Ø³Ø³Ù¹Ù… Ú©ÛŒ Ø§ÛŒ Ù…ÛŒÙ„','ç”µå­é‚®ä»¶ç³»ç»Ÿ'),(87,'create','Create','à¦¸à§ƒà¦·à§à¦Ÿà¦¿','Ø®Ù„Ù‚','crÃ©er','à¤¸à¤°à¥à¤œà¤¨ à¤•à¤°à¤¨à¤¾','membuat','creare','ä½œæˆã™ã‚‹','ëª¹ì‹œ ë– ë“¤ì–´ ëŒ€ë‹¤','creÃ«ren','crio','à¸ªà¸£à¹‰à¸²à¸‡','yaratmak','Ø¨Ù†Ø§Ù†Ø§','åˆ›å»º'),(88,'save','Save','à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à§à¦¨','Ø­ÙØ¸','sauvegarder','à¤¬à¤šà¤¾à¤¨à¤¾','Menyimpan','Salvare','ã‚»ãƒ¼ãƒ–','êµ¬í•˜ë‹¤','Save','Salvar','à¸šà¸±à¸™à¸—à¸¶à¸','Kaydet','Ù…Ø­ÙÙˆØ¸ Ú©Ø±ÛŒÚº','ä¿å­˜'),(89,'file','File','à¦«à¦¾à¦‡à¦²','Ù…Ù„Ù','Fichier','à¤«à¤¼à¤¾à¤‡à¤²','Mengajukan','File','ãƒ•ã‚¡ã‚¤ãƒ«','íŒŒì¼','file','Arquivo','à¹„à¸Ÿà¸¥à¹Œ','Dosya','ÙØ§Ø¦Ù„','æ–‡ä»¶'),(90,'theme_settings','Theme Settings','à¦¥à¦¿à¦® à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ù…ÙˆØ¶ÙˆØ¹','RÃ©glage des thÃ¨mes','à¤µà¤¿à¤·à¤¯ à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—','Pengaturan tema','Impostazioni tema','ãƒ†ãƒ¼ãƒžè¨­å®š','í…Œë§ˆ ì„¤ì •','Thema instellingen','ConfiguraÃ§Ãµes de tema','à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸˜à¸µà¸¡','Tema ayarlarÄ±','ØªÚ¾ÛŒÙ… ØªØ±ØªÛŒØ¨Ø§Øª','ä¸»é¢˜è®¾ç½®'),(91,'default','Default','à¦¡à¦¿à¦«à¦²à§à¦Ÿ','Ø§ÙØªØ±Ø§Ø¶ÙŠ','DÃ©faut','à¤šà¥‚à¤•','kegagalan','Predefinito','ãƒ‡ãƒ•ã‚©ãƒ«ãƒˆ','íƒœë§Œ','Standaard','PadrÃ£o','à¸„à¹ˆà¸²à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™','VarsayÄ±lan','Ù¾ÛÙ„Û’ Ø³Û’ Ø·Û’ Ø´Ø¯Û','é»˜è®¤'),(92,'select_theme','Select Theme','à¦¥à¦¿à¦® à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°','Ø§Ø®ØªØ± Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹','SÃ©lectionne un thÃ¨me','à¤µà¤¿à¤·à¤¯ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih tema','Seleziona il tema','ãƒ†ãƒ¼ãƒžã‚’é¸æŠž','ì„ íƒ í…Œë§ˆ','Selecteer thema','Escolha um tema','à¹€à¸¥à¸·à¸­à¸à¸˜à¸µà¸¡','seÃ§ Tema','ØªÚ¾ÛŒÙ… Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©ä¸»é¢˜'),(93,'upload_logo','Upload Logo','à¦²à§‹à¦—à§‹ à¦†à¦ªà¦²à§‹à¦¡ à¦•à¦°à§à¦¨','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ø´Ø¹Ø§Ø±','TÃ©lÃ©charger Logo','à¤…à¤ªà¤²à¥‹à¤¡ à¤²à¥‹à¤—à¥‹','Upload Logo','Carica Logo','ãƒ­ã‚´ã‚’ã‚¢ãƒƒãƒ—ãƒ­ãƒ¼ãƒ‰','ì—…ë¡œë“œ ë¡œê³ ','Upload Logo','Carregar Logo','à¸­à¸±à¸›à¹‚à¸«à¸¥à¸”à¹‚à¸¥à¹‚à¸à¹‰','yÃ¼kleme Logo','Ø§Ù¾ Ù„ÙˆÚˆ Ú©ÛŒ Ø¹Ù„Ø§Ù…Øª','ä¸Šä¼ å¾½æ ‡'),(94,'upload','Upload','à¦†à¦ªà¦²à§‹à¦¡','ØªØ­Ù…ÙŠÙ„','TÃ©lÃ©charger','à¤…à¤ªà¤²à¥‹à¤¡','Upload','Caricare','ã‚¢ãƒƒãƒ—ãƒ­ãƒ¼ãƒ‰','ì—…ë¡œë“œ','Uploaden','Envio','à¸­à¸±à¸›à¹‚à¸«à¸¥à¸”','yÃ¼kleme','Ø§Ù¾ Ù„ÙˆÚˆ Ú©Ø±ÛŒÚº','ä¸Šä¼ '),(95,'remember','Remember','à¦¸à§à¦®à¦°à¦£ à¦•à¦°à¦¾','ØªØ°ÙƒØ±','Rappelles toi','à¤¯à¤¾à¤¦ à¤¹à¥ˆ','Ingat','Ricorda','è¦šãˆã¦ã„ã‚‹','ìƒê°í•´ ë‚´ë‹¤','Onthouden','Lembrar','à¸ˆà¸³','HatÄ±rlamak','ÛŒØ§Ø¯ Ø±Ú©Ú¾ÛŒÚº','è®°å¾—'),(96,'not_selected','Not Selected','à¦…à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¿à¦¤','Ù„Ù… ÙŠØªÙ… Ø§Ø®ØªÙŠØ§Ø±Ù‡','Non sÃ©lÃ©ctionnÃ©','à¤¨à¤¹à¥€à¤‚ à¤šà¥à¤¨à¥‡ à¤—à¤','Tidak terpilih','Non selezionato','é¸æŠžã•ã‚Œã¦ã„ã¾ã›ã‚“','ì„ íƒë˜ì§€ ì•ŠìŒ','Niet geselecteerd','NÃ£o selecionado','à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¹€à¸¥à¸·à¸­à¸','SeÃ§ilmedi','Ù…Ù†ØªØ®Ø¨ Ù†ÛÛŒÚº','æœªé€‰æ‹©'),(97,'disabled','Disabled','à¦…à¦•à§à¦·à¦®','Ù…Ø¹Ø§Ù‚','dÃ©sactivÃ©','à¤µà¤¿à¤•à¤²à¤¾à¤‚à¤—','Cacat','Disabilitato','ä½¿ç”¨ç¦æ­¢','ìž¥ì• ì¸','invalide','Desativado','à¸žà¸´à¸à¸²à¸£','engelli','Ù…Ø¹Ø°ÙˆØ±','æ®‹'),(98,'inactive_account','Inactive Account','à¦¨à¦¿à¦·à§à¦•à§à¦°à¦¿à¦¯à¦¼ à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','Ø­Ø³Ø§Ø¨ ØºÙŠØ± Ù†Ø´Ø·','Compte inactif','à¤¨à¤¿à¤·à¥à¤•à¥à¤°à¤¿à¤¯ à¤–à¤¾à¤¤à¤¾','Akun tidak aktif','Account inattivo','éžã‚¢ã‚¯ãƒ†ã‚£ãƒ–ã‚¢ã‚«ã‚¦ãƒ³ãƒˆ','ë¹„í™œì„± ê³„ì •','Inactief account','Conta inativa','à¸šà¸±à¸à¸Šà¸µà¸—à¸µà¹ˆà¹„à¸¡à¹ˆà¹ƒà¸Šà¹‰à¸‡à¸²à¸™','Pasif hesap','ØºÛŒØ± ÙØ¹Ø§Ù„ Ø§Ú©Ø§Ø¤Ù†Ù¹','éžæ´»åŠ¨å¸æˆ·'),(99,'update_translations','Update Translations','à¦†à¦ªà¦¡à§‡à¦Ÿ à¦…à¦¨à§à¦¬à¦¾à¦¦','ØªØ­Ø¯ÙŠØ« Ø§Ù„ØªØ±Ø¬Ù…Ø§Øª','actualiser les traductions','à¤…à¤¨à¥à¤µà¤¾à¤¦ à¤…à¤ªà¤¡à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚','update terjemahan','aggiornare le traduzioni','ç¿»è¨³ã‚’æ›´æ–°ã™ã‚‹','ë²ˆì—­ ì—…ë°ì´íŠ¸','vertalingen bijwerken','atualizar traduÃ§Ãµes','à¸­à¸±à¸›à¹€à¸”à¸•à¸à¸²à¸£à¹à¸›à¸¥','Ã§evirileri gÃ¼ncelle','ØªØ±Ø¬Ù…Û Ø§Ù¾ ÚˆÛŒÙ¹ Ú©Ø±ÛŒÚº','æ›´æ–°ç¿»è¯‘'),(100,'language_list','Language List','à¦¨à¦¤à§à¦¨ à¦­à¦¾à¦·à¦¾à¦Ÿà¦¿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾à¦¯à¦¼ à¦†à¦—à§‡','Ù‚Ø§Ø¦Ù…Ø© Ù„ØºØ©','Liste des langues','à¤­à¤¾à¤·à¤¾ à¤¸à¥‚à¤šà¥€','Daftar bahasa','Elenco lingue','è¨€èªžã®ä¸€è¦§','ì–¸ì–´ ëª©ë¡','taal List','Lista idioma','à¸£à¸²à¸¢à¸à¸²à¸£à¸ à¸²à¸©à¸²','Dil listesi','Ø²Ø¨Ø§Ù† Ú©ÛŒ ÙÛØ±Ø³Øª','è¯­è¨€åˆ—è¡¨'),(101,'option','Option','à¦ªà¦›à¦¨à§à¦¦','Ø®ÙŠØ§Ø±','Option','à¤¦à¥‡à¤–à¤¿à¤¯à¥‡','Pilihan','Opzione','ã‚ªãƒ—ã‚·ãƒ§ãƒ³','ì„ íƒê¶Œ','Keuze','OpÃ§Ã£o','à¸•à¸±à¸§à¹€à¸¥à¸·à¸­à¸','seÃ§enek','Ø¢Ù¾Ø´Ù†','é€‰é¡¹'),(102,'edit_word','Edit Word','à¦¶à¦¬à§à¦¦ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦•à¦°à§à¦¨','ØªØ­Ø±ÙŠØ± Ø§Ù„ÙƒÙ„Ù…Ø©','modifier le mot','à¤¶à¤¬à¥à¤¦ à¤•à¥‹ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','edit kata','modifica parola','å˜èªžã‚’ç·¨é›†ã™ã‚‹','ë‹¨ì–´ íŽ¸ì§‘','bewerk woord','editar palavra','à¹à¸à¹‰à¹„à¸‚à¸„à¸³','kelimeyi dÃ¼zenle','Ù„ÙØ¸ Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘å•è¯'),(103,'update_profile','Update Profile','à¦ªà§à¦°à¦«à¦¾à¦‡à¦² à¦¹à¦¾à¦²à¦¨à¦¾à¦—à¦¾à¦¦','ØªØ­Ø¯ÙŠØ« Ø§Ù„Ù…Ù„Ù','Mettre Ã  jour le profil','à¤ªà¥à¤°à¥‹à¤«à¤¼à¤¾à¤‡à¤² à¤…à¤ªà¤¡à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚','Memperbaharui profil','Aggiorna il profilo','ãƒ—ãƒ­ãƒ•ã‚£ãƒ¼ãƒ«ã‚’æ›´æ–°','í”„ë¡œí•„ ì—…ë°ì´íŠ¸','Profiel bijwerken','Atualizar perfil','à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸‚à¸­à¸‡','Profili gÃ¼ncelle','Ø§Ù¾ ÚˆÛŒÙ¹ Ù¾Ø±ÙˆÙØ§Ø¦Ù„','æ›´æ–°ä¸ªäººä¿¡æ¯'),(104,'current_password','Current Password','à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡','ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø± Ø§Ù„Ø­Ø§Ù„ÙŠØ©','Mot de passe actuel','à¤µà¤°à¥à¤¤à¤®à¤¾à¤¨ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡','kata sandi saat ini','Password attuale','ç¾åœ¨ã®ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰','í˜„ìž¬ ë¹„ë°€ë²ˆí˜¸','huidig â€‹â€‹wachtwoord','senha atual','à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¸›à¸±à¸ˆà¸ˆà¸¸à¸šà¸±à¸™','Åžimdiki Åžifre','Ù…ÙˆØ¬ÙˆØ¯Û Ø®ÙÛŒÛ Ù„ÙØ¸','å½“å‰å¯†ç '),(105,'new_password','New Password','à¦¨à¦¤à§à¦¨ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡','ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø± Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©','nouveau mot de passe','à¤¨à¤¯à¤¾ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡','kata sandi baru','nuova password','æ–°ã—ã„ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰','ìƒˆ ë¹„ë°€ë²ˆí˜¸','nieuw paswoord','Nova senha','à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¹ƒà¸«à¸¡à¹ˆ','Yeni Åžifre','Ù†ÛŒØ§ Ù¾Ø§Ø³ ÙˆØ±Úˆ','æ–°å¯†ç '),(106,'login','Login','à¦²à¦—à¦‡à¦¨','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„','S\'identifier','à¤²à¥‰à¤—à¤¿à¤¨','Masuk','Accesso','ãƒ­ã‚°ã‚¤ãƒ³','ë¡œê·¸ì¸','Log in','Entrar','à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸š','Oturum aÃ§','Ù„Ø§Ú¯ Ø§Ù†','ç™»å½•'),(107,'reset_password','Reset Password','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦°à¦¿à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨','Ø§Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø±','rÃ©initialiser le mot de passe','à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤°à¥€à¤¸à¥‡à¤Ÿ','Reset password','Resetta la password','ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’å†è¨­å®šã™ã‚‹','ì•”í˜¸ë¥¼ ìž¬ì„¤ì •','Reset Password','Trocar a senha','à¸£à¸µà¹€à¸‹à¹‡à¸•à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™','Åžifreyi yenile','Ù¾Ø§Ø³ ÙˆØ±Úˆ Ø±ÛŒ Ø³ÛŒÙ¹','é‡è®¾å¯†ç '),(108,'present','Present','à¦¹à¦¾à¦œà¦¿à¦°','Ø­Ø§Ø¶Ø±','PrÃ©sent','à¤µà¤°à¥à¤¤à¤®à¤¾à¤¨','Menyajikan','Presente','ç¾åœ¨','ì„ ë¬¼','aanwezig','Presente','à¸™à¸³à¹€à¸ªà¸™à¸­','mevcut','Ù¾ÛŒØ´','å½“ä¸‹'),(109,'absent','Absent','à¦…à¦¨à§à¦ªà¦¸à§à¦¥à¦¿à¦¤','ØºØ§Ø¦Ø¨','Absent','à¤…à¤¨à¥à¤ªà¤¸à¥à¤¥à¤¿à¤¤','Tidak hadir','Assente','ã‚ã‚Šã¾ã›ã‚“','ì—†ëŠ”','Afwezig','Ausente','à¹„à¸¡à¹ˆà¸­à¸¢à¸¹à¹ˆ','Yok','ØºØ§Ø¦Ø¨','ç¼ºå¸­'),(110,'update_attendance','Update Attendance','à¦†à¦ªà¦¡à§‡à¦Ÿ à¦à§à¦¯à¦¾à¦Ÿà§‡à¦¨à¦¡à§‡à¦¨à§à¦¸','ØªØ­Ø¯ÙŠØ« Ø§Ù„Ø­Ø¶ÙˆØ±','Mise Ã  jour de prÃ©sence','à¤…à¤¦à¥à¤¯à¤¤à¤¨ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿','Update Kehadiran','Aggiornamento presenze','å‡ºå¸­ã‚’æ›´æ–°','ì—…ë°ì´íŠ¸ ì¶œì„','Attendance bijwerken','PresenÃ§a atualizaÃ§Ã£o','à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸›à¸£à¸°à¸Šà¸¸à¸¡','gÃ¼ncelleme Seyirci','Ø§Ù¾ ÚˆÛŒÙ¹ Ø­Ø§Ø¶Ø±ÛŒ','æ›´æ–°è€ƒå‹¤'),(111,'undefined','Undefined','à¦…à¦¨à¦¿à¦°à§à¦¦à¦¿à¦·à§à¦Ÿ','ØºÙŠØ± Ù…Ø­Ø¯Ø¯','IndÃ©fini','à¤…à¤ªà¤°à¤¿à¤­à¤¾à¤·à¤¿à¤¤','Tidak terdefinisi','Non definito','æœªå®šç¾©','ì •ì˜ë˜ì§€ ì•Šì€','onbepaald','Indefinido','à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸à¸³à¸«à¸™à¸”','tanÄ±mlanmamÄ±ÅŸ','Ø¬Ø§Ù†Ú†','æœªå®šä¹‰'),(112,'back','Back','à¦ªà¦¿à¦›à¦¨à§‡','Ø§Ù„Ù‰ Ø§Ù„Ø®Ù„Ù','ArriÃ¨re','à¤µà¤¾à¤ªà¤¸','Kembali','Indietro','ãƒãƒƒã‚¯','ë’¤ë¡œ','Terug','Costas','à¸à¸¥à¸±à¸š','Geri','ÙˆØ§Ù¾Ø³','èƒŒéƒ¨'),(113,'save_changes','Save Changes','à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨à¦—à§à¦²à§‹à¦° à¦¸à¦‚à¦°à¦•à§à¦·à¦¨','Ø­ÙØ¸ Ø§Ù„ØªØºÙŠØ±Ø§Øª','Sauvegarder les modifications','à¤ªà¤°à¤¿à¤µà¤°à¥à¤¤à¤¨à¥‹à¤‚ à¤•à¥‹ à¤¸à¥à¤°à¤•à¥à¤·à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','Simpan perubahan','Salva I Cambiamenti','å¤‰æ›´å†…å®¹ã‚’ä¿å­˜','ë³€ê²½ ì‚¬í•­ì„ ì €ìž¥í•˜ë‹¤','Wijzigingen opslaan','Salvar alteraÃ§Ãµes','à¸šà¸±à¸™à¸—à¸¶à¸à¸à¸²à¸£à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹à¸›à¸¥à¸‡','DeÄŸiÅŸiklikleri Kaydet','ØªØ¨Ø¯ÛŒÙ„ÛŒØ§Úº Ù…Ø­ÙÙˆØ¸ Ú©Ø±Ùˆ','ä¿å­˜æ›´æ”¹'),(114,'uploader','Uploader','à¦†à¦ªà¦²à§‹à¦¡à¦¾à¦°','Ø±Ø§ÙØ¹','Uploader','à¤…à¤ªà¤²à¥‹à¤¡à¤°','pengunggah','Uploader','ã‚¢ãƒƒãƒ—ãƒ­ãƒ¼ãƒ€ãƒ¼','ì—… ë¡œë”','Uploader','Uploader','à¸­à¸±à¸žà¹‚à¸«à¸¥à¸”','YÃ¼kleyici','Ø§Ù¾ Ù„ÙˆÚˆØ±','ä¸Šä¼ '),(115,'download','Download','à¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡','ØªØ­Ù…ÙŠÙ„','TÃ©lÃ©charger','à¤¡à¤¾à¤‰à¤¨à¤²à¥‹à¤¡','Download','Scaricare','ãƒ€ã‚¦ãƒ³ãƒ­ãƒ¼ãƒ‰','ë‹¤ìš´ë¡œë“œ','Download','baixar','à¸”à¸²à¸§à¸™à¹Œà¹‚à¸«à¸¥à¸”','indir','Ù„ÙˆÚˆ','ä¸‹è½½'),(116,'remove','Remove','à¦…à¦ªà¦¸à¦¾à¦°à¦£','Ø¥Ø²Ø§Ù„Ø©','Retirer','à¤¹à¤Ÿà¤¾à¤¨à¤¾','Menghapus','Cancella','å‰Šé™¤ã—ã¾ã™','ì—†ì• ë‹¤','Verwijderen','Remover','à¹€à¸­à¸²à¸­à¸­à¸','KaldÄ±r','Ø¯ÙˆØ±','åŽ»æŽ‰'),(117,'print','Print','à¦›à¦¾à¦ªà¦¾à¦¨à§‹','Ø·Ø¨Ø§Ø¹Ø©','Impression','à¤›à¤¾à¤ª','Mencetak','Stampare','å°åˆ·','ì¸ì‡„','Afdrukken','ImpressÃ£o','à¸žà¸´à¸¡à¸žà¹Œ','baskÄ±','Ù¾Ø±Ù†Ù¹','æ‰“å°'),(118,'select_file_type','Select File Type','à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦«à¦¾à¦‡à¦² à¦Ÿà¦¾à¦‡à¦ª','Ø­Ø¯Ø¯ Ù†ÙˆØ¹ Ø§Ù„Ù…Ù„Ù','SÃ©lectionner le type de fichier','à¤šà¥à¤¨à¥‡à¤‚ à¤«à¤¼à¤¾à¤‡à¤² à¤ªà¥à¤°à¤•à¤¾à¤°','Pilih File Type','Selezionare il tipo di file','ãƒ•ã‚¡ã‚¤ãƒ«ã‚¿ã‚¤ãƒ—ã‚’é¸æŠžã—ã¾ã™','ì„ íƒ íŒŒì¼ í˜•ì‹','Select File Type','Selecionar Tipo de Arquivo','à¹€à¸¥à¸·à¸­à¸à¸›à¸£à¸°à¹€à¸ à¸—à¹„à¸Ÿà¸¥à¹Œ','SeÃ§in Dosya TÃ¼rÃ¼','Ù…Ù†ØªØ®Ø¨ ÙØ§Ø¦Ù„ Ú©ÛŒ Ù‚Ø³Ù…','é€‰æ‹©æ–‡ä»¶ç±»åž‹'),(119,'excel','Excel','à¦¸à§€à¦®à¦¾ à¦…à¦¤à¦¿à¦•à§à¦°à¦® à¦•à¦°à¦¾','ØªÙÙˆÙ‚','Exceller','à¤à¤•à¥à¤¸à¥‡à¤²','Unggul','Eccellere','ã‚¨ã‚¯ã‚»ãƒ«','ë›°ì–´ë‚˜ë‹¤','uitmunten','sobressair','Excel','Excel','Ø§ÛŒÚ©Ø³Ù„','é«˜å¼º'),(120,'other','Other','à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯','Ø¢Ø®Ø±','Autre','à¤…à¤¨à¥à¤¯','Lain','Altro','ä»–ã®','ë‹¤ë¥¸','anders','De outros','à¸­à¸·à¹ˆà¸™ à¹†','DiÄŸer','Ø¯ÛŒÚ¯Ø±','å…¶ä»–'),(121,'students_of_class','Students Of Class','à¦•à§à¦²à¦¾à¦¸ à¦›à¦¾à¦¤à§à¦°à¦¦à§‡à¦°','Ø·Ù„Ø¨Ø© Ø§Ù„Ø¯Ø±Ø¬Ø©','Les Ã©lÃ¨ves de la classe','à¤•à¤•à¥à¤·à¤¾ à¤•à¥‡ à¤›à¤¾à¤¤à¥à¤°','Siswa Kelas','Gli studenti della classe','ã‚¯ãƒ©ã‚¹ã®ç”Ÿå¾’','í´ëž˜ìŠ¤ì˜ í•™ìƒ','Studenten van de klasse','Os alunos da classe','à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™à¸Šà¸±à¹‰à¸™','SÄ±nÄ±fÄ±nÄ±n Ã–ÄŸrenciler','Ú©Ù„Ø§Ø³ Ú©Û’ Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù…ÙˆÚº','å­¦ç”Ÿç±»ä¸­'),(122,'marks_obtained','Marks Obtained','à¦ªà§à¦°à¦¾à¦ªà§à¦¤ à¦¨à¦®à§à¦¬à¦°','Ø§Ù„Ø¹Ù„Ø§Ù…Ø§Øª Ø§Ù„ØªÙŠ ÙŠØ­ØµÙ„','Notes obtenues','à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤à¤¾à¤‚à¤•','Marks Diperoleh','Voti Ottenuti','å¾—ã‚‰ã‚ŒãŸãƒžãƒ¼ã‚¯ã‚¹','ë§ˆí¬ íšë“','Marks verkregen','notas obtidas','à¸—à¸µà¹ˆà¹„à¸”à¹‰à¸£à¸±à¸šà¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢','Marks elde','Ù…Ø§Ø±Ú©Ø³ Ø­Ø§ØµÙ„','èŽ·å¾—å•†æ ‡'),(123,'attendance_for_class','Attendance For Class','à¦à§à¦¯à¦¾à¦Ÿà§‡à¦¨à¦¡à§‡à¦¨à§à¦¸ à¦¬à¦°à§à¦— à¦œà¦¨à§à¦¯','Ø§Ù„Ø­Ø¶ÙˆØ± Ù„ÙØ¦Ø©','Participation Pour la classe','à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤•à¤•à¥à¤·à¤¾ à¤•à¥‡ à¤²à¤¿à¤','Kehadiran Untuk Kelas','Partecipazione Per la Classe','ã‚¯ãƒ©ã‚¹ã®å‡ºå¸­','í´ëž˜ìŠ¤ì— ëŒ€í•œ ì¶œì„','Attendance Voor klasse','PresenÃ§a Para a Classe','à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸›à¸£à¸°à¸Šà¸¸à¸¡à¸ªà¸³à¸«à¸£à¸±à¸š Class','SÄ±nÄ±fÄ± Seyirci','Ú©Ù„Ø§Ø³ Ú©Û’ Ù„Ø¦Û’ Ø­Ø§Ø¶Ø±ÛŒ','è€ƒå‹¤ç±»'),(124,'receiver','Receiver','à¦—à§à¦°à¦¾à¦¹à¦•','Ø§Ù„Ù…ØªÙ„Ù‚ÙŠ','RÃ©cepteur','à¤°à¤¿à¤¸à¥€à¤µà¤°','Penerima','Ricevitore','å—ä¿¡æ©Ÿ','ë¦¬ì‹œë²„','Ontvanger','recebedor','à¸œà¸¹à¹‰à¸£à¸±à¸š','alÄ±cÄ±','ÙˆØµÙˆÙ„','æŽ¥æ”¶å™¨'),(125,'please_select_receiver','Please Select Receiver','à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡ à¦°à¦¿à¦¸à¦¿à¦­à¦¾à¦° à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø¥Ø®ØªÙŠØ§Ø± Ø§Ø³ØªÙ‚Ø¨Ø§Ù„','S\'il vous plaÃ®t SÃ©lectionnez Receiver','à¤•à¥ƒà¤ªà¤¯à¤¾ à¤°à¤¿à¤¸à¥€à¤µà¤° à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Silakan Pilih Receiver','Selezionare Ricevitore','Receiverã‚’é¸æŠžã—ã¦ãã ã•ã„','ìˆ˜ì‹ ê¸°ë¥¼ ì„ íƒí•˜ì„¸ìš”','Selecteer Receiver','Selecione Receiver','à¸à¸£à¸¸à¸“à¸²à¹€à¸¥à¸·à¸­à¸à¸£à¸±à¸šà¸ªà¸±à¸à¸à¸²à¸“','AlÄ±cÄ±sÄ± SeÃ§iniz','ÙˆØµÙˆÙ„ Ø¨Ø±Ø§Û Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','è¯·é€‰æ‹©æŽ¥æ”¶å™¨'),(126,'session_changed','Session Changed','à¦¸à§‡à¦¶à¦¨ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¿à¦¤','Ø¬Ù„Ø³Ø© ØªØºÙŠÙŠØ±','session Changed','à¤¸à¤¤à¥à¤° à¤¬à¤¦à¤²à¥€ à¤—à¤ˆ','sesi Berubah','sessione cambiato','ã‚»ãƒƒã‚·ãƒ§ãƒ³ãŒå¤‰æ›´ã—ã¾ã™','ì„¸ì…˜ ë³€ê²½','Session Changed','sessÃ£o Changed','à¹€à¸‹à¸ªà¸Šà¸±à¹ˆà¸™à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™','Oturum DeÄŸiÅŸti','Ø³ÛŒØ´Ù† ØªØ¨Ø¯ÛŒÙ„ Ú©Ø± Ø¯ÛŒØ§ Ú¯ÛŒØ§','ä¼šè®®æ”¹'),(127,'exam_marks','Exam Marks','à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦®à¦¾à¦°à§à¦•à¦¸','Ø¹Ù„Ø§Ù…Ø§Øª Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†','Marques d\'examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤®à¤¾à¤°à¥à¤•à¥à¤¸','Marks ujian','Marks esame','è©¦é¨“ãƒžãƒ¼ã‚¯ã‚¹','ì‹œí—˜ ë§ˆí¬','examen Marks','Marcas de exame','Marks à¸ªà¸­à¸š','sÄ±nav Marks','Ø§Ù…ØªØ­Ø§Ù† Ù…Ø§Ø±Ú©Ø³','è€ƒè¯•é©¬å…‹æ–¯'),(128,'total_mark','Total Mark','à¦®à§‹à¦Ÿ à¦®à¦¾à¦°à§à¦•','Ø¹Ø¯Ø¯ Ø§Ù„Ø£Ù‚Ø³Ø§Ù…','total Mark','à¤•à¥à¤² à¤®à¤¾à¤°à¥à¤•','total Mark','Mark totale','åˆè¨ˆãƒžãƒ¼ã‚¯','ì´ ë§ˆí¬','Totaal Mark','total de Mark','à¸¡à¸²à¸£à¹Œà¸„à¸£à¸§à¸¡','Toplam Mark','Ú©Ù„ Ù…Ø§Ø±Ú©','ç§¯åˆ†'),(129,'mark_obtained','Mark Obtained','à¦®à¦¾à¦°à§à¦• à¦ªà§à¦°à¦¾à¦ªà§à¦¤','Ø¹Ù„Ø§Ù…Ø© Ø­ØµÙ„','Mark Obtenu','à¤šà¤¿à¤¹à¥à¤¨ à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤','Mark Diperoleh','Mark Ottenuto','ãƒžãƒ¼ã‚¯å–å¾—','ë§ˆí¬ íšë“','Mark verkregen','Mark Obtido','à¸¡à¸²à¸£à¹Œà¸„à¹„à¸”à¹‰à¸£à¸±à¸š','Mark elde','Ù…Ø§Ø±Ú© Ø­Ø§ØµÙ„','æ ‡è®°æ‰€èŽ·å¾—'),(130,'invoice/payment_list','Invoice / Payment List','à¦‡à¦¨à¦­à¦¯à¦¼à§‡à¦¸ / à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','ÙØ§ØªÙˆØ±Ø© / Ù‚Ø§Ø¦Ù…Ø© Ø¯ÙØ¹','Facture / Liste de paiement','à¤šà¤¾à¤²à¤¾à¤¨ / à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤¸à¥‚à¤šà¥€','Faktur / Daftar pembayaran','Fattura / Lista pagamento','è«‹æ±‚æ›¸/æ”¯æ‰•ä¸€è¦§','ì†¡ìž¥ / ì§€ë¶ˆ ëª©ë¡','Factuur / betaling List','Invoice / Lista de pagamento','à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰ / à¸£à¸²à¸¢à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Fatura / Ã¶deme listesi','Ø§Ù†ÙˆØ§Ø¦Ø³ / Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ ÙÛØ±Ø³Øª','å‘ç¥¨/ä»˜æ¬¾æ¸…å•'),(131,'obtained_marks','Obtained Marks','à¦ªà§à¦°à¦¾à¦ªà§à¦¤ à¦®à¦¾à¦°à§à¦•à¦¸','Ø§Ù„Ø¹Ù„Ø§Ù…Ø§Øª Ø§Ù„ØªÙŠ ØªÙ… Ø§Ù„Ø­ØµÙˆÙ„ Ø¹Ù„ÙŠÙ‡Ø§','Les notes obtenues','à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤ à¤…à¤‚à¤•à¥‹à¤‚','Marks diperoleh','punteggi ottenuti','å¾—ã‚‰ã‚Œãƒžãƒ¼ã‚¯ã‚¹','íšë“ ë§ˆí¬','verkregen Marks','notas obtidas','à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸—à¸µà¹ˆà¹„à¸”à¹‰à¸£à¸±à¸š','elde edilen Marks','Ø­Ø§ØµÙ„ Ù…Ø§Ø±Ú©Ø³','èŽ·å¾—å•†æ ‡'),(132,'highest_mark','Highest Mark','à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦®à¦¾à¦°à§à¦•','Ø£Ø¹Ù„Ù‰ Ø§Ù„Ø£Ù‚Ø³Ø§Ù…','le plus Ã©levÃ© Mark','à¤‰à¤šà¥à¤šà¤¤à¤® à¤¨à¤¿à¤¶à¤¾à¤¨','Mark tertinggi','Massima Mark','æœ€é«˜ç‚¹','ìµœê³  ë§ˆí¬','hoogste Mark','maior Mark','à¸¡à¸²à¸£à¹Œà¸„à¸ªà¸¹à¸‡à¸ªà¸¸à¸”','En yÃ¼ksek iÅŸaretle','Ø³Ø¨ Ø³Û’ Ø²ÛŒØ§Ø¯Û Ù†Ø´Ø§Ù†','æœ€é«˜åˆ†'),(133,'grade','Grade (GPA)','à¦¶à§à¦°à§‡à¦£à§€','Ø¯Ø±Ø¬Ø©','QualitÃ©','à¤—à¥à¤°à¥‡à¤¡','Kelas','Grado','ã‚°ãƒ¬ãƒ¼ãƒ‰','í•™ë…„','Rang','Grau','à¹€à¸à¸£à¸”','sÄ±nÄ±f','Ú¯Ø±ÛŒÚˆ','å¹´çº§'),(134,'dashboard','Dashboard','à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡','Ù„ÙˆØ­Ø© Ø§Ù„Ù‚ÙŠØ§Ø¯Ø©','Tableau de bord','à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡','Dasbor','Cruscotto','ãƒ€ãƒƒã‚·ãƒ¥ãƒœãƒ¼ãƒ‰','ê³„ê¸°ë°˜','Dashboard','painel de instrumentos','à¹à¸œà¸‡à¸„à¸§à¸šà¸„à¸¸à¸¡','gÃ¶sterge paneli','ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ','ä»ªè¡¨æ¿'),(135,'student','Student','à¦›à¦¾à¦¤à§à¦°','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù…','Ã‰lÃ¨ve','à¤›à¤¾à¤¤à¥à¤°','Mahasiswa','Alunno','å­¦ç”Ÿ','í•™ìƒ','Student','Aluna','à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™','Ã¶ÄŸrenci','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù…','å­¦ç”Ÿ'),(136,'rename','Rename','à¦¨à¦¾à¦®à¦¾à¦¨à§à¦¤à¦°','Ø¥Ø¹Ø§Ø¯Ø© ØªØ³Ù…ÙŠØ©','rebaptiser','à¤¨à¤¾à¤® à¤¬à¤¦à¤²à¤¨à¥‡','ganti nama','rinominare','åå‰ã‚’å¤‰æ›´ã™ã‚‹','ì´ë¦„ ë°”ê¾¸ê¸°','andere naam geven','renomear','à¸•à¸±à¹‰à¸‡à¸Šà¸·à¹ˆà¸­à¹ƒà¸«à¸¡à¹ˆ','adÄ±nÄ± deÄŸiÅŸtirmek','ØªØ¨Ø¯ÛŒÙ„ Ú©Ø±ÛŒÚº','æ”¹å'),(137,'class','Class','à¦¶à§à¦°à§‡à¦£à§€','ØµÙ Ù…Ø¯Ø±Ø³ÙŠ','Classe','à¤•à¤•à¥à¤·à¤¾','Kelas','Classe','ã‚¯ãƒ©ã‚¹','ìˆ˜ì—…','Klasse','Classe','à¸Šà¸±à¹‰à¸™','sÄ±nÄ±f','Ú©Ù„Ø§Ø³','ç±»'),(138,'teacher','Teacher','à¦¶à¦¿à¦•à§à¦·à¦•','Ù…Ø¯Ø±Ø³','Professeur','à¤…à¤§à¥à¤¯à¤¾à¤ªà¤•','Guru','Insegnante','å…ˆç”Ÿ','ì„ ìƒ','Leraar','Professor','à¸„à¸£à¸¹','Ã¶ÄŸretmen','Ù¹ÛŒÚ†Ø±','è€å¸ˆ'),(139,'parents','Parents','à¦®à¦¾à¦¤à¦¾à¦ªà¦¿à¦¤à¦¾','Ø§Ù„Ø¢Ø¨Ø§Ø¡','Des parents','à¤®à¤¾à¤¤à¤¾-à¤ªà¤¿à¤¤à¤¾','Orangtua','genitori','è¦ª','ë¶€ëª¨ë‹˜','Ouders','Pais','à¸žà¹ˆà¸­à¹à¸¡à¹ˆ','ebeveyn','ÙˆØ§Ù„Ø¯ÛŒÙ†','çˆ¶æ¯'),(140,'subject','Subject','à¦¬à¦¿à¦·à¦¯à¦¼','Ù…ÙˆØ¶ÙˆØ¹','Assujettir','à¤µà¤¿à¤·à¤¯','Subyek','Soggetto','ãƒ†ãƒ¼ãƒž','ì œëª©','Onderwerpen','Sujeito','à¹€à¸£à¸·à¹ˆà¸­à¸‡','konu','Ù…ÙˆØ¶ÙˆØ¹','å­¦ç§‘'),(141,'student_attendance','Student Attendance','à¦›à¦¾à¦¤à§à¦° à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿','Ø­Ø¶ÙˆØ± Ø§Ù„Ø·Ø§Ù„Ø¨','Participation des Ã©tudiants','à¤›à¤¾à¤¤à¥à¤° à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿','Kehadiran siswa','Frequenza degli studenti','å­¦ç”Ÿã®å‡ºå¸­','í•™ìƒ ì¶œì„','Studentenbijwonen','FreqÃ¼Ãªncia de estudantes','à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¹€à¸£à¸µà¸¢à¸™à¸‚à¸­à¸‡à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™','Ã–ÄŸrenci yurdu','Ø·Ù„Ø¨Ø§ Ú©ÛŒ Ø­Ø§Ø¶Ø±ÛŒ','å‡ºå¸­å­¦ç”Ÿ'),(142,'exam_list','Exam List','à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†','Liste d\'examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤¸à¥‚à¤šà¥€','Daftar ujian','Lista esame','è©¦é¨“ã®ãƒªã‚¹ãƒˆ','ì‹œí—˜ ëª©ë¡','examen Lijst','Lista de exame','à¸£à¸²à¸¢à¸à¸²à¸£à¸ªà¸­à¸š','sÄ±nav listesi','Ø§Ù…ØªØ­Ø§Ù† Ú©ÛŒ ÙÛØ±Ø³Øª','è€ƒè¯•åå•'),(143,'grades_range','Grades Range','à¦—à§à¦°à§‡à¦¡ à¦ªà¦°à¦¿à¦¸à§€à¦®à¦¾','Ù…Ø¬Ù…ÙˆØ¹Ø© Ø§Ù„Ø¯Ø±Ø¬Ø§Øª','Gamme de notes','à¤—à¥à¤°à¥‡à¤¡ à¤¶à¥à¤°à¥‡à¤£à¥€','Kisaran nilai','Gamma di gradi','ã‚°ãƒ¬ãƒ¼ãƒ‰ã®ç¯„å›²','ì„±ì  ë²”ìœ„','Rangen bereik','Escala de notas','à¸Šà¹ˆà¸§à¸‡à¸„à¸°à¹à¸™à¸™','Derece aralÄ±ÄŸÄ±','Ú¯Ø±ÛŒÚˆ Ú©ÛŒ Ø­Ø¯','ç­‰çº§èŒƒå›´'),(144,'loading','Loading','à¦¬à§‹à¦à¦¾à¦‡','Ø¬Ø§Ø± Ø§Ù„ØªØ­Ù…ÙŠÙ„','chargement','à¤²à¥‹à¤¡ à¤¹à¥‹ à¤°à¤¹à¤¾ à¤¹à¥ˆ','pemuatan','Caricamento in corso','ãƒ­ãƒ¼ãƒ‡ã‚£ãƒ³ã‚°','ë¡œë”©','bezig met laden','Carregando','à¹‚à¸«à¸¥à¸”','YÃ¼kleniyor','Ù„ÙˆÚˆÙ†Ú¯','è£…è½½'),(145,'library','Library','à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à¦¿','Ù…ÙƒØªØ¨Ø©','BibliothÃ¨que','à¤ªà¥à¤¸à¥à¤¤à¤•à¤¾à¤²à¤¯','Perpustakaan','Biblioteca','ãƒ©ã‚¤ãƒ–ãƒ©ãƒª','ë„ì„œê´€','Bibliotheek','Biblioteca','à¸«à¹‰à¸­à¸‡à¸ªà¸¡à¸¸à¸”','kÃ¼tÃ¼phane','Ù„Ø§Ø¦Ø¨Ø±ÛŒØ±ÛŒ','å›¾ä¹¦é¦†'),(146,'hostel','Hostel','à¦›à¦¾à¦¤à§à¦°à¦¾à¦¬à¦¾à¦¸','Ø§Ù„Ù…Ù‡Ø¬Ø¹','Dortoir','à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸','asrama mahasiswa','Dormitorio','å¯®','ê¸°ìˆ™ì‚¬','Slaapzaal','DormitÃ³rio','à¸«à¸­à¸žà¸±à¸','Yurt','Ø´ÛŒÙ†Ø§Ú¯Ø§Ø±','å®¿èˆ'),(147,'events','Events','à¦¸à§‚à¦šà¦¨à¦¾à¦«à¦²à¦•','Ø§Ù„Ù„Ø§ÙØªØ©','Tableau d\'affichage','à¤¸à¥‚à¤šà¤¨à¤¾ à¤ªà¤Ÿà¥à¤Ÿ','Papan peringatan','Bacheca','æŽ²ç¤ºæ¿','ê³µì§€ ì‚¬í•­ ê²Œì‹œíŒ','Notitiebord','Quadro de notÃ­cias','à¸à¸£à¸°à¸”à¸²à¸™à¸›à¹‰à¸²à¸¢à¸•à¸´à¸”à¸›à¸£à¸°à¸à¸²à¸¨','noticeboard','Ù†ÙˆÙ¹Ø³ Ø¨ÙˆØ±Úˆ','å¸ƒå‘Šæ '),(148,'message','Message','à¦¬à¦¾à¦°à§à¦¤à¦¾','Ø§Ù„Ø±Ø³Ø§Ù„Ø©','Message','à¤¸à¤‚à¤¦à¥‡à¤¶','Pesan','Messaggio','ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸','ë©”ì‹œì§€','Bericht','Mensagem','à¸‚à¹ˆà¸²à¸§à¸ªà¸²à¸£','Mesaj','Ù¾ÛŒØºØ§Ù…','ä¿¡æ¯'),(149,'translations','Translations','à¦…à¦¨à§à¦¬à¦¾à¦¦à§‡à¦°','ØªØ±Ø¬Ù…Ø©','traductions','à¤…à¤¨à¥à¤µà¤¾à¤¦','terjemahan','traduzioni','ç¿»è¨³','ë²ˆì—­','vertaalwerk','traduÃ§Ãµes','à¹à¸›à¸¥','Ã§eviriler','ØªØ±Ø¬Ù…Û','è¯‘æ–‡'),(150,'account','Account','à¦¹à¦¿à¦¸à¦¾à¦¬','Ø­Ø³Ø§Ø¨','Compte','à¤²à¥‡à¤–à¤¾','Rekening','account','ã‚¢ã‚«ã‚¦ãƒ³ãƒˆ','ê³„ì •','Account','Conta','à¸šà¸±à¸à¸Šà¸µ','hesap','Ø§Ú©Ø§Ø¤Ù†Ù¹','å¸æˆ·'),(151,'selected_session','Selected Session','à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¿à¦¤ à¦¸à§‡à¦¶à¦¨','Ø¬Ù„Ø³Ø© Ù…Ø®ØªØ§Ø±Ø©','session sÃ©lectionnÃ©e','à¤šà¤¯à¤¨à¤¿à¤¤ à¤¸à¤¤à¥à¤°','sesi terpilih','sessione selezionata','é¸æŠžã•ã‚ŒãŸã‚»ãƒƒã‚·ãƒ§ãƒ³','ì„ íƒëœ ì„¸ì…˜','geselecteerde sessie','sessÃ£o selecionada','à¹€à¸‹à¸ªà¸Šà¸±à¸™à¸—à¸µà¹ˆà¹€à¸¥à¸·à¸­à¸','seÃ§ilen oturum','Ù…Ù†ØªØ®Ø¨ Ú©Ø±Ø¯Û Ø³ÛŒØ´Ù†','é€‰å®šçš„ä¼šè¯'),(152,'change_password','Change Password','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦•à¦°à§à¦¨','ØªØºÙŠÙŠØ± ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø±','Changer le mot de passe','à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤¬à¤¦à¤²à¥‡à¤‚','Ganti kata sandi','Cambia la password','ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’å¤‰æ›´ã™ã‚‹','ì•”í˜¸ ë³€ê²½','Verander wachtwoord','Mudar senha','à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™','Åžifre deÄŸiÅŸtir','Ù¾Ø§Ø³ ÙˆØ±Úˆ ØªØ¨Ø¯ÛŒÙ„ Ú©Ø±ÛŒÚº','æ›´æ”¹å¯†ç '),(153,'section','Section','à¦…à¦§à§à¦¯à¦¾à¦¯à¦¼','Ù‚Ø³Ù…','Section','à¤…à¤¨à¥à¤­à¤¾à¤—','Bagian','Sezione','ã‚»ã‚¯ã‚·ãƒ§ãƒ³','ì„¹ì…˜','sectie','SeÃ§Ã£o','à¸¡à¸²à¸•à¸£à¸²','BÃ¶lÃ¼m','Ø³ÛŒÚ©Ø´Ù†','éƒ¨åˆ†'),(154,'edit','Edit','à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨ à¦•à¦°à¦¾','ØªØ­Ø±ÙŠØ±','modifier','à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','mengedit','Modifica','ç·¨é›†','íŽ¸ì§‘í•˜ë‹¤','Bewerk','Editar','à¹à¸à¹‰à¹„à¸‚','DÃ¼zenleme','ØªØµÛŒØ­','ç¼–è¾‘'),(155,'delete','Delete','à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¾','Ø­Ø°Ù','Effacer','à¤®à¤¿à¤Ÿà¤¾à¤¨à¤¾','Menghapus','cancellare','å‰Šé™¤','ì§€ìš°ë‹¤','Verwijder','Excluir','à¸¥à¸š','silmek','Ø­Ø°Ù Ú©Ø±ÛŒÚº','åˆ é™¤'),(156,'cancel','Cancel','à¦¬à¦¾à¦¤à¦¿à¦²','Ø¥Ù„ØºØ§Ø¡','Annuler','à¤°à¤¦à¥à¤¦ à¤•à¤°à¤¨à¤¾','Membatalkan','Annulla','ã‚­ãƒ£ãƒ³ã‚»ãƒ«','ì·¨ì†Œ','Annuleer','Cancelar','à¸¢à¸à¹€à¸¥à¸´à¸','Ä°ptal','Ù…Ù†Ø³ÙˆØ® Ú©Ø±ÛŒÚº','å–æ¶ˆ'),(157,'parent','Parent','à¦®à¦¾à¦¤à¦¾','Ø£ØµÙ„','Parent','à¤®à¤¾à¤¤à¤¾-à¤ªà¤¿à¤¤à¤¾','Induk','Genitore','è¦ª','ë¶€ëª¨ì˜','Ouder','parente','à¸œà¸¹à¹‰à¸›à¸à¸„à¸£à¸­à¸‡','ebeveyn','ÙˆØ§Ù„Ø¯ÛŒÙ†','äº²'),(158,'attendance','Attendance','à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿','Ø§Ù„Ø­Ø¶ÙˆØ±','PrÃ©sence','à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿','Kehadiran','partecipazione','å‡ºå¸­','ì¶œì„','opkomst','Comparecimento','à¸à¸²à¸£à¸”à¸¹à¹à¸¥à¸£à¸±à¸à¸©à¸²','katÄ±lÄ±m','Ø­Ø§Ø¶Ø±ÛŒ','æŠ¤ç†'),(159,'addmission_form','Admission Form','à¦­à¦°à§à¦¤à¦¿à¦° à¦«à¦°à§à¦®','Ø´ÙƒÙ„ Ø§Ù„Ù‚Ø¨ÙˆÙ„','Formulaire d\'admission','à¤ªà¥à¤°à¤µà¥‡à¤¶ à¤«à¤¾à¤°à¥à¤®','Formulir Pendaftaran','Modulo di ammissione','å…¥å­¦å¼','ìž…í•™ í—ˆê°€ì„œ','Toelatingsformulier','FormulÃ¡rio de admissÃ£o','à¹à¸šà¸šà¸Ÿà¸­à¸£à¹Œà¸¡à¸à¸²à¸£à¸£à¸±à¸šà¸ªà¸¡à¸±à¸„à¸£','Kabul Formu','Ø¯Ø§Ø®Ù„Û ÙØ§Ø±Ù…','å…¥å­¦è¡¨æ ¼'),(160,'name','Name','à¦¨à¦¾à¦®','Ø§Ø³Ù…','prÃ©nom','à¤¨à¤¾à¤®','Nama','Nome','å','ì´ë¦„','Naam','Nome','à¸Šà¸·à¹ˆà¸­','isim','Ù†Ø§Ù…','åç§°'),(161,'select','Select','à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à¦¾','Ø§Ø®ØªØ§Ø±','SÃ©lectionner','à¤šà¥à¤¨à¤¤à¥‡ à¤¹à¥ˆà¤‚','Memilih','Selezionare','é¸æŠžã—ã¾ã™','ê³ ë¥´ë‹¤','kiezen','selecionar','à¹€à¸¥à¸·à¸­à¸','seÃ§mek','Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©'),(162,'roll','Roll','à¦°à§‹à¦²','Ù„ÙØ©','Roulent','à¤°à¥‹à¤²','Gulungan','Rotolo','ãƒ­ãƒ¼ãƒ«','ë¡¤','Rollen','Rolo','à¸¡à¹‰à¸§à¸™','Rulo','Ø±ÙˆÙ„','æ»š'),(163,'birthday','Date Of Birth','à¦œà¦¨à§à¦® à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯','Anniversaire','à¤œà¤¨à¥à¤®à¤¦à¤¿à¤¨','Ulang tahun','Compleanno','ãŠèª•ç”Ÿæ—¥','ìƒì¼','Verjaardag','AniversÃ¡rio','à¸§à¸±à¸™à¹€à¸à¸´à¸”','DoÄŸum gÃ¼nÃ¼','Ø³Ø§Ù„Ú¯Ø±Û','ç”Ÿæ—¥'),(164,'gender','Gender','à¦²à¦¿à¦™à§à¦—','Ø¬Ù†Ø³','Le genre','à¤²à¤¿à¤‚à¤—','Jenis kelamin','Genere','æ€§åˆ¥','ì„±ë³„','Geslacht','GÃªnero','à¹€à¸žà¸¨','Cinsiyet','ØµÙ†Ù','æ€§åˆ«'),(165,'male','Male','à¦ªà§à¦°à§à¦·','Ø°ÙƒØ±','MÃ¢le','à¤¨à¤°','Pria','Maschio','ç”·æ€§','ë‚¨ì„±','Mannetje','Masculino','à¸Šà¸²à¸¢','Erkek','Ù…Ø±Ø¯','ç”·'),(166,'female','Female','à¦®à¦¹à¦¿à¦²à¦¾','Ø£Ù†Ø«Ù‰','Femelle','à¤®à¤¹à¤¿à¤²à¤¾','Wanita','Femmina','å¥³æ€§','ì—¬ìž','Vrouw','FÃªmea','à¸«à¸à¸´à¸‡','KadÄ±n','Ø®ÙˆØ§ØªÛŒÙ†','å¥³'),(167,'address','Address','à¦ à¦¿à¦•à¦¾à¦¨à¦¾','Ø¹Ù†ÙˆØ§Ù†','Adresse','à¤ªà¤¤à¤¾','Alamat','Indirizzo','ä½æ‰€','ì£¼ì†Œ','Adres','EndereÃ§o','à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆ','adres','Ø§ÛŒÚˆØ±ÛŒØ³','åœ°å€'),(168,'phone','Phone','à¦«à§‹à¦¨','Ù‡Ø§ØªÙ','TÃ©lÃ©phone','à¤«à¤¼à¥‹à¤¨','Telepon','Telefono','é›»è©±','ì „í™”','Telefoon','Telefone','à¹‚à¸—à¸£à¸¨à¸±à¸žà¸—à¹Œ','Telefon','ÙÙˆÙ†','ç”µè¯'),(169,'email','Email','à¦‡-à¦®à§‡à¦‡à¦²','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Email','à¤ˆà¤®à¥‡à¤²','E-mail','E-mail','Eãƒ¡ãƒ¼ãƒ«','ì´ë©”ì¼','E-mail','O email','à¸­à¸µà¹€à¸¡à¸¥à¹Œ','E-posta','Ø¯ÙˆØ³ØªÙˆÚº Ú©ÙˆØ§Ø±Ø³Ø§Ù„ Ú©Ø±ÛŒÚº','ç”µå­é‚®ä»¶'),(170,'password','Password','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡','ÙƒÙ„Ù…Ù‡ Ø§Ù„Ø³Ø±','Mot de passe','à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡','Kata sandi','parola d\'ordine','ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰','ì•”í˜¸','Wachtwoord','Senha','à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™','Parola','Ù¾Ø§Ø³ ÙˆØ±Úˆ','å¯†ç '),(171,'transport_route','Transport Route','à¦ªà¦°à¦¿à¦¬à¦¹à¦¨ à¦°à§à¦Ÿ','Ø§Ù„Ù†Ù‚Ù„ Ø§Ù„Ø·Ø±ÙŠÙ‚','Transport Route','à¤ªà¤°à¤¿à¤µà¤¹à¤¨ à¤®à¤¾à¤°à¥à¤—','Transportasi Route','Transport Route','äº¤é€šãƒ«ãƒ¼ãƒˆ','ìš´ì†¡ ê²½ë¡œ','transport Route','ItinerÃ¡rios','à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡à¸‚à¸™à¸ªà¹ˆà¸‡','UlaÅŸtÄ±rma Rota','Ù¹Ø±Ø§Ù†Ø³Ù¾ÙˆØ±Ù¹ Ø±ÙˆÙ¹','è¿è¾“è·¯çº¿'),(172,'photo','Photo','à¦›à¦¬à¦¿','ØµÙˆØ±Ø© ÙÙˆØªÙˆØºØ±Ø§ÙÙŠØ©','photo','à¤¤à¤¸à¥à¤µà¥€à¤°','Foto','Foto','å†™çœŸ','ì‚¬ì§„','Foto','foto','à¸ à¸²à¸žà¸–à¹ˆà¸²à¸¢','fotoÄŸraf','ØªØµÙˆÛŒØ±','ç…§ç‰‡'),(173,'select_class','Select Class','à¦•à§à¦²à¦¾à¦¸ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨','Ø­Ø¯Ø¯ ÙØ¦Ø©','SÃ©lectionnez la classe','à¤µà¤°à¥à¤— à¤•à¤¾ à¤šà¤¯à¤¨','Pilih Kelas','Seleziona classe','ã‚¯ãƒ©ã‚¹ã‚’é¸æŠžã—ã¾ã™','ì„ íƒ í´ëž˜ìŠ¤','Select Class','Selecionar classe','à¹€à¸¥à¸·à¸­à¸à¸Šà¸±à¹‰à¸™à¹€à¸£à¸µà¸¢à¸™','seÃ§in SÄ±nÄ±f','Ú©Ù„Ø§Ø³ Ù…Ù†ØªØ®Ø¨','é€‰æ‹©ç±»åˆ«'),(174,'username_password_incorrect','Username Or Password Is Incorrect','à¦¬à§à¦¯à¦¾à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦° à¦¨à¦¾à¦® à¦…à¦¥à¦¬à¦¾ à¦—à§‹à¦ªà¦¨ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°à¦Ÿà¦¿ à¦­à§à¦²','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø£Ùˆ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± ØºÙŠØ± ØµØ­ÙŠØ­Ø©','L\'identifiant ou le mot de passe est incorrect','à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤¨à¤¾à¤® à¤¯à¤¾ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤—à¤²à¤¤ à¤¹à¥ˆ','Nama pengguna atau kata sandi salah','Nome utente o password non sono corretti','ãƒ¦ãƒ¼ã‚¶ãƒ¼åã‹ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ãŒé–“é•ã£ã¦ã„ã¾ã™','ì‚¬ìš©ìž ì´ë¦„ ë˜ëŠ” ì•”í˜¸ê°€ ì˜¬ë°”ë¥´ì§€ ì•ŠìŠµë‹ˆë‹¤','Gebruikersnaam of wachtwoord is onjuist','Nome de usuÃ¡rio ou senha estÃ¡ incorreta','à¸Šà¸·à¹ˆà¸­à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¸«à¸£à¸·à¸­à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¹„à¸¡à¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡','KullanÄ±cÄ± adÄ± veya ÅŸifre yanlÄ±ÅŸ','ØµØ§Ø±Ù Ú©Ø§ Ù†Ø§Ù… ÛŒØ§ Ù¾Ø§Ø³ ÙˆØ±Úˆ ØºÙ„Ø· ÛÛ’','ç”¨æˆ·åæˆ–å¯†ç ä¸æ­£ç¡®'),(175,'select_section','Select Section','à¦…à¦¨à§à¦šà§à¦›à§‡à¦¦ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ù‚Ø³Ù…','SÃ©lectionnez Section','à¤…à¤¨à¥à¤­à¤¾à¤— à¤•à¤¾ à¤šà¤¯à¤¨','Pilih Bagian','Seleziona sezione','ã‚»ã‚¯ã‚·ãƒ§ãƒ³ã‚’é¸æŠžã—ã¾ã™','ì„ íƒ ì„¹ì…˜','Select Section','Select Section','à¹€à¸¥à¸·à¸­à¸à¸ªà¹ˆà¸§à¸™','seÃ§ BÃ¶lÃ¼m','Ø³ÛŒÚ©Ø´Ù† Ù…Ù†ØªØ®Ø¨','é€‰æ‹©éƒ¨åˆ†'),(176,'options','Options','à¦¬à¦¿à¦•à¦²à§à¦ª','Ø®ÙŠØ§Ø±Ø§Øª','options de','à¤µà¤¿à¤•à¤²à¥à¤ª','Pilihan','Opzioni','ã‚ªãƒ—ã‚·ãƒ§ãƒ³','ì˜µì…˜','opties','opÃ§Ãµes','à¸•à¸±à¸§à¹€à¸¥à¸·à¸­à¸','SeÃ§enekler','Ø§Ø®ØªÛŒØ§Ø±Ø§Øª','é€‰é¡¹'),(177,'mark_sheet','Mark Sheet','à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦¶à¦¿à¦Ÿ','ÙˆØ±Ù‚Ø© Ø¹Ù„Ø§Ù…Ø©','Mark Sheet','à¤…à¤‚à¤• à¤¤à¤¾à¤²à¤¿à¤•à¤¾','Lembar penilaian','Libretto universitario','ãƒžãƒ¼ã‚¯ã‚·ãƒ¼ãƒˆ','ë§ˆí¬ ì‹œíŠ¸','Mark Sheet','Mark Sheet','à¸¡à¸²à¸£à¹Œà¸„à¹à¸œà¹ˆà¸™','Ä°ÅŸareti levha','Ù…Ø§Ø±Ú© Ø´ÛŒÙ¹','æ ‡è®°è¡¨'),(178,'profile','Profile','à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦²à§‡','Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ','Profil','à¤ªà¥à¤°à¥‹à¤«à¤¾à¤‡à¤²','profil','Profilo','ãƒ—ãƒ­ãƒ•ã‚£ãƒ¼ãƒ«','ìœ¤ê³½','Profiel','Perfil','à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸ªà¹ˆà¸§à¸™à¸•à¸±à¸§','Profil','Ù¾Ø±ÙˆÙØ§Ø¦Ù„','è½®å»“'),(179,'select_all','Select All','à¦¸à¦¬à¦—à§à¦²à§‹ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à¦¾','Ø§Ø®ØªØ± Ø§Ù„ÙƒÙ„','SÃ©lectionner tout','à¤¸à¤­à¥€ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡','Pilih Semua','Seleziona tutto','ã™ã¹ã¦é¸æŠž','ëª¨ë‘ ì„ íƒ','Selecteer alles','Selecionar tudo','à¹€à¸¥à¸·à¸­à¸à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','Hepsini seÃ§','ØªÙ…Ø§Ù… Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','å…¨é€‰'),(180,'select_none','Select None','à¦•à¦¿à¦›à§à¦‡ à¦¨à¦¾','Ø­Ø¯Ø¯ Ø¨Ù„Ø§','Ne rien sÃ©lectionner','à¤•à¤¿à¤¸à¥€ à¤•à¤¾ à¤šà¤¯à¤¨ à¤¨ à¤•à¤°à¥‡à¤‚','Pilih Tidak','Non selezionare niente','ä½•ã‚‚é¸æŠžã—ã¾ã›ã‚“','ì„ íƒ ì—†ìŒ','Niets selecteren','Selecione nenhum','à¹€à¸¥à¸·à¸­à¸à¹„à¸¡à¹ˆà¸¡à¸µ','HiÃ§bir ÅŸey seÃ§ilmedi','Ú©ÙˆØ¦ÛŒ Ø¨Ú¾ÛŒ Ù…Ù†ØªØ®Ø¨','é€‰æ‹©æ— '),(181,'average','Average','à¦—à¦¡à¦¼','Ù…ØªÙˆØ³Ø·','Moyenne','à¤”à¤¸à¤¤','rata-rata','Media','å¹³å‡','í‰ê· ','Gemiddelde','MÃ©dia','à¹€à¸‰à¸¥à¸µà¹ˆà¸¢','Ortalama','Ø§ÙˆØ³Ø·','å¹³å‡'),(182,'transfer','Transfer','à¦¹à¦¸à§à¦¤à¦¾à¦¨à§à¦¤à¦°','ØªØ­ÙˆÙŠÙ„','transfert','à¤¸à¥à¤¥à¤¾à¤¨à¤¾à¤‚à¤¤à¤°à¤£','transfer','trasferimento','è»¢é€','ì´ì „','overdracht','transferir','à¹‚à¸­à¸™','aktarma','Ù…Ù†ØªÙ‚Ù„ÛŒ','è½¬è®©'),(183,'edit_teacher','Edit Teacher','à¦—à§à¦°à§ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾','ØªØ­Ø±ÙŠØ± Ø§Ù„Ù…Ø¹Ù„Ù…','Modifier enseignant','à¤¶à¤¿à¤•à¥à¤·à¤• à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','mengedit Guru','Modifica Maestro','ç·¨é›†æ•™å¸«','íŽ¸ì§‘ êµì‚¬','Leraar bewerken','Editar professor','à¹à¸à¹‰à¹„à¸‚à¸„à¸£à¸¹','DÃ¼zenleme Ã–ÄŸretmen','Ù¹ÛŒÚ†Ø± ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘è€å¸ˆ'),(184,'sex','Sex','à¦²à¦¿à¦™à§à¦—','Ø¬Ù†Ø³','Sexe','à¤²à¤¿à¤‚à¤—','Seks','Sesso','ã‚»ãƒƒã‚¯ã‚¹','ì„¹ìŠ¤','Seks','Sexo','à¹€à¸žà¸¨','Seks','Ø¬Ù†Ø³','æ€§åˆ«'),(185,'marksheet_for','Marksheet For','à¦®à¦¾à¦°à§à¦• à¦¶à§€à¦Ÿ','ÙˆØ±Ù‚Ø© Ø¹Ù„Ø§Ù…Ø© Ù„','Marquer les feuilles pour','Marksheet For','Mark lembar untuk','fogli marchio per','ç”¨ãƒžãƒ¼ã‚¯ã‚·ãƒ¼ãƒˆ','ì— ëŒ€í•œ ë§ˆí¬ ì‹œíŠ¸','Mark platen voor','Marcar folhas para','à¹à¸œà¹ˆà¸™à¸¡à¸²à¸£à¹Œà¸„à¸ªà¸³à¸«à¸£à¸±à¸š','Mark levhalar','Marksheet For','é©¬å…‹è–„æ¿'),(186,'total_marks','Total Marks','à¦®à§‹à¦Ÿ à¦®à¦¾à¦°à§à¦•à¦¸','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„Ø¯Ø±Ø¬Ø§Øª','total de points','à¤•à¥à¤² à¤®à¤¾à¤°à¥à¤•','total Marks','Marks totali','ç·ãƒžãƒ¼ã‚¯ã‚¹','ì´ ë§ˆí¬','Totaal Marks','total de Marcas','Marks à¸£à¸§à¸¡','Toplam Marks','Ú©Ù„ Ù…Ø§Ø±Ú©Ø³','æ€»åˆ†'),(187,'parent_phone','Parent Phone','à¦ªà§‡à¦°à§‡à¦¨à§à¦Ÿ à¦«à§‹à¦¨','Ø§Ù„Ø£Ù… Ø§Ù„Ù‡Ø§ØªÙ','Parent tÃ©lÃ©phone','à¤®à¤¾à¤¤à¤¾ à¤ªà¤¿à¤¤à¤¾ à¤•à¥‡ à¤«à¥‹à¤¨','induk Telepon','Parent Phone','è¦ªã®æºå¸¯é›»è©±','ë¶€ëª¨ ì „í™”','Parent Phone','pais Telefone','à¸œà¸¹à¹‰à¸›à¸à¸„à¸£à¸­à¸‡à¹‚à¸—à¸£à¸¨à¸±à¸žà¸—à¹Œ','Veli Telefon','ÙˆØ§Ù„Ø¯ÛŒÙ† ÙÙˆÙ†','å®¶é•¿ç”µè¯'),(188,'subject_author','Subject Author','à¦¬à¦¿à¦·à¦¯à¦¼ à¦²à§‡à¦–à¦•','Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹ Ø§Ù„Ù…Ø¤Ù„Ù','Sujet Auteur','à¤µà¤¿à¤·à¤¯ à¤²à¥‡à¤–à¤•','Subjek Penulis','Autore del soggetto','ãƒ†ãƒ¼ãƒžä½œæˆè€…','ì œëª© ìž‘ì„±ìž','Onderwerp Auteur','Assunto Autor','à¸œà¸¹à¹‰à¹à¸•à¹ˆà¸‡à¹€à¸£à¸·à¹ˆà¸­à¸‡','Konu Yazar','Ù…ÙˆØ¶ÙˆØ¹ Ù…ØµÙ†Ù','ä¸»é¢˜ä½œè€…'),(189,'update','Update','à¦¹à¦¾à¦²à¦¨à¦¾à¦—à¦¾à¦¦','ØªØ­Ø¯ÙŠØ«','Mettre Ã  jour','à¤…à¤ªà¤¡à¥‡à¤Ÿ','Memperbarui','Aggiornare','æ›´æ–°','ìµœì‹  ì •ë³´','Bijwerken','Atualizar','à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡','GÃ¼ncelleÅŸtirme','Ø§Ù¾ ÚˆÛŒÙ¹','æ›´æ–°'),(190,'class_list','Class List','à¦•à§à¦²à¦¾à¦¸ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø·Ø¨Ù‚Ø©','Liste des classes','à¤•à¤•à¥à¤·à¤¾ à¤¸à¥‚à¤šà¥€','Daftar kelas','Lista Class','ã‚¯ãƒ©ã‚¹ä¸€è¦§','í´ëž˜ìŠ¤ ëª©ë¡','class List','Lista de Classes','à¸£à¸²à¸¢à¸à¸²à¸£à¸£à¸°à¸”à¸±à¸š','sÄ±nÄ±f listesi','Ú©Ù„Ø§Ø³ Ú©ÛŒ ÙÛØ±Ø³Øª','ç­çº§åˆ—è¡¨'),(191,'class_name','Class Name','à¦¶à§à¦°à§‡à¦£à¦¿à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ø·Ø¨Ù‚Ø©','Nom du cours','à¤•à¤•à¥à¤·à¤¾ à¤•à¤¾ à¤¨à¤¾à¤®','Nama kelas','Nome della classe','ã‚¯ãƒ©ã‚¹å','í´ëž˜ìŠ¤ ì´ë¦„','Naam van de klasse','Nome da classe','à¸Šà¸·à¹ˆà¸­à¸Šà¸±à¹‰à¸™','SÄ±nÄ±f adÄ±','Ú©Ù„Ø§Ø³ Ù†Ø§Ù…','ç±»å'),(192,'name_numeric','Name Numeric','à¦¨à¦¾à¦® à¦¸à¦‚à¦–à§à¦¯à¦¾à¦¸à§‚à¦šà¦•','Ø§Ø³Ù… Ø§Ù„Ø±Ù‚Ù…ÙŠØ©','Nom numÃ©rique','à¤¨à¤¾à¤® à¤¸à¤‚à¤–à¥à¤¯à¤¾à¤¤à¥à¤®à¤•','nama Numeric','nome numerico','åå‰æ•°å€¤','ì´ë¦„ ìˆ«ìž','naam Numeriek','nome numÃ©rico','à¸Šà¸·à¹ˆà¸­à¸•à¸±à¸§à¹€à¸¥à¸‚','isim SayÄ±sal','Ù†Ø§Ù… Ù†Ù…Ø¨Ø±ÛŒ','åç§°æ•°å­—'),(193,'select_teacher','Select Teacher','à¦—à§à¦°à§ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ù…Ø¹Ù„Ù…','SÃ©lectionnez ce professeur','à¤¶à¤¿à¤•à¥à¤·à¤• à¤•à¤¾ à¤šà¤¯à¤¨','Pilih Guru','Seleziona insegnante','æ•™å¸«ã‚’é¸æŠž','ì„ íƒ êµì‚¬','Selecteer Teacher','Escolha um professor','à¹€à¸¥à¸·à¸­à¸à¸„à¸£à¸¹','seÃ§in Ã–ÄŸretmen','Ù¹ÛŒÚ†Ø± Ù…Ù†ØªØ®Ø¨','é€‰æ‹©æ•™å¸ˆ'),(194,'edit_class','Edit Class','à¦•à§à¦²à¦¾à¦¸ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾','ØªØ­Ø±ÙŠØ± Ø§Ù„ÙØ¦Ø©','Modifier la classe','à¤•à¤•à¥à¤·à¤¾ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','mengedit Kelas','Modifica Class','ç·¨é›†ã‚¯ãƒ©ã‚¹','íŽ¸ì§‘ í´ëž˜ìŠ¤','klasse bewerken','Editar Classe','à¹à¸à¹‰à¹„à¸‚à¸Šà¸±à¹‰à¸™','DÃ¼zenleme SÄ±nÄ±fÄ±','ØªØµÛŒØ­ Ú©Ù„Ø§Ø³','ç¼–è¾‘ç±»'),(195,'section_name','Section Name','à¦…à¦¨à§à¦šà§à¦›à§‡à¦¦ à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù‚Ø³Ù…','Nom de la section','à¤…à¤¨à¥à¤­à¤¾à¤— à¤•à¤¾ à¤¨à¤¾à¤®','bagian Nama','Nome sezione','ã‚»ã‚¯ã‚·ãƒ§ãƒ³å','ì„¹ì…˜ ì´ë¦„','sectie Naam','Nome da seÃ§Ã£o','à¸ªà¹ˆà¸§à¸™à¸Šà¸·à¹ˆà¸­','bÃ¶lÃ¼m AdÄ±','Ø­ØµÛ’ Ú©Ø§ Ù†Ø§Ù…','éƒ¨åˆ†åç§°'),(196,'add_section','Add Section','à¦…à¦¨à§à¦šà§à¦›à§‡à¦¦ à¦¯à§‹à¦—','Ø¥Ø¶Ø§ÙØ© Ù…Ù‚Ø·Ø¹','Ajouter Section','à¤§à¤¾à¤°à¤¾ à¤œà¥‹à¤¡à¤¼à¥‡','Tambahkan Bagian','Aggiungere Sezione','ã‚»ã‚¯ã‚·ãƒ§ãƒ³ã‚’è¿½åŠ ã—ã¾ã™ã€‚','ì„¹ì…˜ ì¶”ê°€','Sectie toevoegen','Adicionar SeÃ§Ã£o','à¹€à¸žà¸´à¹ˆà¸¡à¸ªà¹ˆà¸§à¸™','BÃ¶lÃ¼m ekle','Ø³ÛŒÚ©Ø´Ù† Ú©Ø§ Ø§Ø¶Ø§ÙÛ Ú©Ø±ÛŒÚº','æ·»åŠ ç« èŠ‚'),(197,'subject_list','Subject List','à¦¬à¦¿à¦·à¦¯à¦¼ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹','Liste Sujet','à¤µà¤¿à¤·à¤¯ à¤¸à¥‚à¤šà¥€','Daftar subjek','soggetto List','ä»¶åä¸€è¦§','ì£¼ì œ ëª©ë¡','subject List','Assunto Lista','à¸£à¸²à¸¢à¸à¸²à¸£à¸«à¸±à¸§à¹€à¸£à¸·à¹ˆà¸­à¸‡','Konu listesi','Ù…ÙˆØ¶ÙˆØ¹ Ù„Ø³Ù¹','ä¸»é¢˜åˆ—è¡¨'),(198,'subject_name','Subject Name','à¦¬à¦¿à¦·à¦¯à¦¼ à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹','Nom Sujet','à¤µà¤¿à¤·à¤¯ à¤¨à¤¾à¤®','Nama subjek','soggetto Nome','ã‚µãƒ–ã‚¸ã‚§ã‚¯ãƒˆå','ì£¼ì²´ ì´ë¦„','onderwerp Naam','Nome Assunto','à¸Šà¸·à¹ˆà¸­à¹€à¸£à¸·à¹ˆà¸­à¸‡','Konu AdÄ±','Ù…ÙˆØ¶ÙˆØ¹ Ú©Ø§ Ù†Ø§Ù…','ä¸»é¢˜åç§°'),(199,'edit_subject','Edit Subject','à¦¬à¦¿à¦·à¦¯à¦¼ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾','ØªØ­Ø±ÙŠØ± Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹','Modifier Objet','à¤µà¤¿à¤·à¤¯ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','Edit Perihal','Modifica oggetto','ç·¨é›†ä»¶å','íŽ¸ì§‘ ì£¼ì œ','Onderwerp bewerken','Editar assunto','à¹à¸à¹‰à¹„à¸‚à¹€à¸£à¸·à¹ˆà¸­à¸‡','Konu DÃ¼zenle','Ù…ÙˆØ¶ÙˆØ¹ Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘ä¸»é¢˜'),(200,'day','Day','à¦¦à¦¿à¦¨','ÙŠÙˆÙ…','journÃ©e','à¤¦à¤¿à¤¨','Hari','Giorno','æ—¥','ì¼','Dag','Dia','à¸§à¸±à¸™','GÃ¼n','ÚˆÛ’','å¤©'),(201,'starting_time','Starting Time','à¦¸à¦®à¦¯à¦¼ à¦¶à§à¦°à§','Ø§Ø¨ØªØ¯Ø§Ø¡ Ù…Ù† Ø§Ù„ÙˆÙ‚Øª','Heure de dÃ©part','à¤ªà¥à¤°à¤¾à¤°à¤®à¥à¤­ à¤•à¤¾ à¤¸à¤®à¤¯','Waktu mulai','Tempo di partenza','èµ·å‹•æ™‚é–“','ì‹œê°„ ì‹œìž‘','Starttijd','Tempo de partida','à¹€à¸§à¸¥à¸²à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™','BaÅŸlangÄ±Ã§ â€‹â€‹zamanÄ±','ÙˆÙ‚Øª Ù¾Ø± Ø´Ø±ÙˆØ¹','å¼€å§‹æ—¶é—´'),(202,'hour','Hour','à¦˜à¦¨à§à¦Ÿà¦¾','Ø³Ø§Ø¹Ø©','Heure','à¤¸à¤®à¤¯','Jam','Ora','æ™‚é–“','ì‹œê°„','Uur','Hora','à¸Šà¸±à¹ˆà¸§à¹‚à¸¡à¸‡','Saat','Ù‚ÛŒØ§Ù…Øª','å°æ—¶'),(203,'minutes','Minutes','à¦®à¦¿à¦¨à¦¿à¦Ÿ','Ø¯Ù‚ÙŠÙ‚Ø©','Minutes','à¤®à¤¿à¤¨à¤Ÿ','Menit','Minuti','åˆ†','ì˜ì‚¬ë¡','Notulen','Minutos','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¸›à¸£à¸°à¸Šà¸¸à¸¡','dakika','Ù…Ù†Ù¹Ø³','çºªè¦'),(204,'ending_time','Ending Time','à¦¸à¦®à¦¯à¦¼ à¦¶à§‡à¦·','Ø¥Ù†Ù‡Ø§Ø¡ Ø§Ù„ÙˆÙ‚Øª','Fin Temps','à¤…à¤‚à¤¤à¤¿à¤® à¤¸à¤®à¤¯','akhir Waktu','Fine Tempo','çµ‚äº†æ™‚åˆ»','ì‹œê°„ ì¢…ë£Œ','Ending Time','Tempo Final','à¹€à¸§à¸¥à¸²à¸ªà¸´à¹‰à¸™à¸ªà¸¸à¸”','Zaman BitiÅŸ','ÙˆÙ‚Øª Ø®ØªÙ…','ç»“æŸæ—¶é—´'),(205,'select_subject','Select Subject','à¦¬à¦¿à¦·à¦¯à¦¼ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹','SÃ©lectionnez Objet','à¤µà¤¿à¤·à¤¯ à¤•à¤¾ à¤šà¤¯à¤¨','Pilih Jurusan','Selezionare Oggetto','ä»¶åã‚’é¸æŠž','ì„ íƒ ì£¼ì œ','Selecteer Onderwerp','Selecione Assunto','à¹€à¸¥à¸·à¸­à¸à¸ªà¸²à¸‚à¸²à¸§à¸´à¸Šà¸²','Konu seÃ§in','Ù…ÙˆØ¶ÙˆØ¹ Ù…Ù†ØªØ®Ø¨','é€‰æ‹©ä¸»é¢˜'),(206,'select_date','Select Date','à¦¤à¦¾à¦°à¦¿à¦– à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ Ø§Ù„ØªØ§Ø±ÙŠØ®','SÃ©lectionnez date','à¤¤à¤¾à¤°à¥€à¤–à¤¼ à¤šà¥à¤¨à¥‡à¤‚','Pilih Tanggal','Selezionare Data','æ—¥ä»˜ã‚’é¸æŠž','ë‚ ì§œ ì„ íƒ','Datum selecteren','Selecione Data','à¹€à¸¥à¸·à¸­à¸à¸§à¸±à¸™à¸—à¸µà¹ˆ','seÃ§in tarihi','ØªØ§Ø±ÛŒØ® Ù…Ù†ØªØ®Ø¨','é€‰æ‹©æ—¥æœŸ'),(207,'select_month','Select Month','à¦®à¦¾à¦¸ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø§Ø®ØªØ± Ø§Ù„Ø´Ù‡Ø±','SÃ©lectionnez un mois','à¤®à¤¹à¥€à¤¨à¤¾ à¤šà¥à¤¨à¤¿à¤','Pilih Bulan','Selezionare il mese','æœˆã‚’é¸æŠž','ì›”ì„ ì„ íƒ','Selecteer maand','Selecione o mÃªs','à¹€à¸¥à¸·à¸­à¸à¹€à¸”à¸·à¸­à¸™','Ay seÃ§','Ù…ÛÛŒÙ†Û Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©æœˆä»½'),(208,'select_year','Select Year','à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦¬à¦›à¦°','Ø§Ø®ØªØ± Ø§Ù„Ø³Ù†Ø©','SÃ©lectionnez AnnÃ©e','à¤šà¤¯à¤¨ à¤µà¤°à¥à¤·','pilih Tahun','Seleziona Anno','å¹´ã‚’é¸æŠž','ë…„ë„ ì„ íƒ','Selecteer Jaar','Selecione o ano','à¹€à¸¥à¸·à¸­à¸à¸›à¸µ','YÄ±l seÃ§in','Ú†Ú¾Ø§Ù†Ù¹ÛŒÚº Ú©Ø±ÛŒÚº','é€‰æ‹©å¹´ä»½'),(209,'add_language','Add Language','à¦­à¦¾à¦·à¦¾ à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø¥Ø¶Ø§ÙØ© Ù„ØºØ©','ajouter une langue','à¤­à¤¾à¤·à¤¾ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','tambahkan bahasa','aggiungere la lingua','è¨€èªžã‚’è¿½åŠ ã™ã‚‹','ì–¸ì–´ ì¶”ê°€','taal toevoegen','adicionar linguagem','à¹€à¸žà¸´à¹ˆà¸¡à¸ à¸²à¸©à¸²','dil ekle','Ø²Ø¨Ø§Ù† Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ è¯­è¨€'),(210,'exam_name','Exam Name','à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†','Nom d\'examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤•à¤¾ à¤¨à¤¾à¤®','ujian Nama','Nome esame','è©¦é¨“å','ì‹œí—˜ ì´ë¦„','examen Naam','exame Nome','à¸Šà¸·à¹ˆà¸­à¸ªà¸­à¸š','sÄ±nav AdÄ±','Ø§Ù…ØªØ­Ø§Ù† Ù†Ø§Ù…','è€ƒè¯•åç§°'),(211,'date','Date','à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ®','date','à¤¤à¤¾à¤°à¥€à¤–','Tanggal','Data','æ—¥ä»˜','ë‚ ì§œ','Datum','Encontro','à¸§à¸±à¸™à¸—à¸µà¹ˆ','tarih','ØªØ§Ø±ÛŒØ®','æ—¥æœŸ'),(212,'comment','Comment','à¦®à¦¨à§à¦¤à¦¬à§à¦¯','Ø§Ù„ØªØ¹Ù„ÙŠÙ‚','Commentaire','à¤Ÿà¤¿à¤ªà¥à¤ªà¤£à¥€','Komentar','Commento','ã‚³ãƒ¡ãƒ³ãƒˆ','ë…¼í‰','Commentaar','Comente','à¸„à¸´à¸”à¹€à¸«à¹‡à¸™','Yorum','ØªØ¨ØµØ±Û','è¯„è®º'),(213,'edit_exam','Edit Exam','à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾','ØªØ­Ø±ÙŠØ± Ø§Ù…ØªØ­Ø§Ù†','Modifier examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','mengedit Ujian','Modifica esame','ç·¨é›†è©¦é¨“','íŽ¸ì§‘ ì‹œí—˜','Examen bewerken','Editar Exame','à¹à¸à¹‰à¹„à¸‚à¸à¸²à¸£à¸ªà¸­à¸š','DÃ¼zenleme SÄ±navÄ±','Ø§Ù…ØªØ­Ø§Ù† Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘è€ƒè¯•'),(214,'grade_list','Grade List','à¦—à§à¦°à§‡à¦¡ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ØµÙ','Liste de grade','à¤—à¥à¤°à¥‡à¤¡ à¤¸à¥‚à¤šà¥€','Daftar kelas','Lista grado','ã‚°ãƒ¬ãƒ¼ãƒ‰ä¸€è¦§','í•™ë…„ ëª©ë¡','Grade List','Lista Grade','à¸£à¸²à¸¢à¸à¸²à¸£à¹€à¸à¸£à¸”','sÄ±nÄ±f listesi','Ú¯Ø±ÛŒÚˆ Ú©ÛŒ ÙÛØ±Ø³Øª','ç­‰çº§åå•'),(215,'grade_name','Grade Name','à¦—à§à¦°à§‡à¦¡ à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„ØµÙ','Nom de grade','à¤—à¥à¤°à¥‡à¤¡ à¤¨à¤¾à¤®','Nama kelas','Nome grado','ã‚°ãƒ¬ãƒ¼ãƒ‰å','í•™ë…„ ì´ë¦„','Grade Naam','Nome grau','à¸Šà¸·à¹ˆà¸­à¸Šà¸±à¹‰à¸™à¸›à¸£à¸°à¸–à¸¡à¸¨à¸¶à¸à¸©à¸²','SÄ±nÄ±f AdÄ±','Ú¯Ø±ÛŒÚˆ Ù†Ø§Ù…','ç‰Œå·åç§°'),(216,'grade_point','Grade Point','à¦—à§à¦°à§‡à¦¡ à¦ªà¦¯à¦¼à§‡à¦¨à§à¦Ÿ','Ø§Ù„ØµÙ Ù†Ù‚Ø·Ø©','grade point','à¤—à¥à¤°à¥‡à¤¡ à¤¬à¤¿à¤‚à¤¦à¥','Indeks Prestasi','Grade Point','ã‚°ãƒ¬ãƒ¼ãƒ‰ãƒã‚¤ãƒ³ãƒˆ','í•™ì ','Grade Point','Ponto de classificaÃ§Ã£o','à¹€à¸à¸£à¸”','not','Ú¯Ø±ÛŒÚˆ Ù†Ù‚Ø·Û','ç»©ç‚¹'),(217,'select_exam','Select Exam','à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†','SÃ©lectionnez Exam','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤•à¤¾ à¤šà¤¯à¤¨','Pilih Ujian','Selezionare esame','è©¦é¨“ã‚’é¸æŠž','ì„ íƒì˜ ì‹œí—˜','Selecteer Examen','Select Exam','à¹€à¸¥à¸·à¸­à¸à¸ªà¸­à¸š','seÃ§ SÄ±nav','Ø§Ù…ØªØ­Ø§Ù† Ù…Ù†ØªØ®Ø¨','é€‰æ‹©è€ƒè¯•'),(218,'students','Students','à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€à¦°à¦¾','Ø§Ù„Ø·Ù„Ø§Ø¨','Ã‰lÃ¨ves','à¤›à¤¾à¤¤à¥à¤°','siswa','Alunni','å­¦ç”Ÿã®','ìž¬í•™ìƒ','leerlingen','estudantes','à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™','Ã–ÄŸrenciler','Ø·Ù„Ø¨Ø§Ø¡','å­¦ç”Ÿä»¬'),(219,'subjects','Subjects','à¦ªà§à¦°à¦œà¦¾à¦¦à§‡à¦°','Ø§Ù„Ù…ÙˆØ§Ø¶ÙŠØ¹','Sujets','à¤µà¤¿à¤·à¤¯à¥‹à¤‚','subyek','Soggetti','ç§‘ç›®','ì£¼ì œ','vakken','assuntos','à¸­à¸²à¸ªà¸²à¸ªà¸¡à¸±à¸„à¸£','Konular','Ù…Ø¶Ø§Ù…ÛŒÙ†','ä¸»é¢˜'),(220,'total','Total','à¦®à§‹à¦Ÿ','Ù…Ø¬Ù…ÙˆØ¹','Total','à¤•à¥à¤²','Total','Totale','åˆè¨ˆ','í•©ê³„','Totaal','Total','à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','Toplam','Ú©Ù„','æ€»'),(221,'select_academic_session','Select Academic Session','à¦à¦•à¦¾à¦¡à§‡à¦®à¦¿à¦• à¦¸à§‡à¦¶à¦¨ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ø¯ÙˆØ±Ø© Ø§Ù„Ø£ÙƒØ§Ø¯ÙŠÙ…ÙŠØ©','SÃ©ance scolaire sÃ©lectionnÃ©e','à¤…à¤•à¤¾à¤¦à¤®à¤¿à¤• à¤¸à¤¤à¥à¤° à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih sesi akademik','Selezionare sessione accademica','å­¦ä¼šã‚’é¸æŠžã™ã‚‹','í•™ìˆ íšŒì˜ ì„ íƒ','Selecteer een academische sessie','Selecione a sessÃ£o acadÃªmica','à¹€à¸¥à¸·à¸­à¸à¹€à¸‹à¸ªà¸Šà¸±à¸™à¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²','Akademik oturumu seÃ§','ØªØ¹Ù„ÛŒÙ…ÛŒ Ø³ÛŒØ´Ù† Ú©Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©å­¦æœ¯ä¼šè®®'),(222,'invoice_informations','Invoice Informations','à¦šà¦¾à¦²à¦¾à¦¨ à¦‡à¦¨à¦«à¦°à¦®à§‡à¦¶à¦¨','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„ÙØ§ØªÙˆØ±Ø©','Informations de facturation','à¤šà¤¾à¤²à¤¾à¤¨ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€','Informasi faktur','Informazioni fattura','è«‹æ±‚æ›¸æƒ…å ±','ì†¡ìž¥ ì •ë³´','factuur Informations','InformaÃ§Ãµes factura','à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰','fatura Bilgileri','Ø§Ù†ÙˆØ§Ø¦Ø³ Ú©ÛŒ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª','å‘ç¥¨ä¿¡æ¯'),(223,'title','Title','à¦–à§‡à¦¤à¦¾à¦¬','Ø¹Ù†ÙˆØ§Ù†','Titre','à¤¶à¥€à¤°à¥à¤·à¤•','Judul','Titolo','ã‚¿ã‚¤ãƒˆãƒ«','í‘œì œ','Titel','TÃ­tulo','à¸«à¸±à¸§à¸‚à¹‰à¸­','baÅŸlÄ±k','Ø¹Ù†ÙˆØ§Ù†','æ ‡é¢˜'),(224,'description','Description','à¦¬à¦¿à¦¬à¦°à¦£','ÙˆØµÙ','La description','à¤µà¤¿à¤µà¤°à¤£','Deskripsi','Descrizione','èª¬æ˜Ž','ê¸°ìˆ ','Beschrijving','DescriÃ§Ã£o','à¸¥à¸±à¸à¸©à¸“à¸°','tanÄ±m','ØªÙØµÛŒÙ„','æè¿°'),(225,'payment_informations','Payment Informations','à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¤à¦¥à§à¦¯','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø¯ÙØ¹','Informations de paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€','Informasi Pembayaran','Informazioni di pagamento','æ”¯æ‰•æƒ…å ±','ê²°ì œ ì •ë³´','Payment Informations','InformaÃ§Ãµes de pagamento','à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã–deme Bilgileri','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª','ä»˜æ¬¾ä¿¡æ¯'),(226,'view_invoice','View Invoice','à¦¦à§‡à¦–à§à¦¨ à¦šà¦¾à¦²à¦¾à¦¨','Ø¹Ø±Ø¶ Ø§Ù„ÙØ§ØªÙˆØ±Ø©','Voir la facture','à¤šà¤¾à¤²à¤¾à¤¨ à¤¦à¥‡à¤–à¥‡à¤‚','Lihat Faktur','Visualizza fattura','è«‹æ±‚æ›¸ã‚’è¦‹ã¾ã™','ë³´ê¸° ì†¡ìž¥','Bekijk Factuur','Ver Invoice','à¸”à¸¹à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰','GÃ¶rÃ¼nÃ¼m Fatura','Ù„Ù†Ú© Ø§Ù†ÙˆØ§Ø¦Ø³','æŸ¥çœ‹å‘ç¥¨'),(227,'payment_to','Payment To','à¦ªà¦°à¦¿à¦¶à§‹à¦¦ à¦•à¦°à¦¾','Ø¯ÙØ¹ Ù„','Paiement Ã ','à¤•à¥‹ à¤­à¥à¤—à¤¤à¤¾à¤¨','pembayaran untuk','pagamento a','ã¸ã®æ”¯æ‰•ã„','ë¡œ ì§€ë¶ˆ','Betaling aan','Pagamento para','à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','IÃ§in Ã¶deme','Ú©Ø±Ù†Û’ Ú©Û’ Ù„Ø¦Û’ Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ','æ”¯ä»˜'),(228,'bill_to','Bill To','à¦¬à¦¿à¦² à¦•à¦°à¦¤à§‡','ÙØ§ØªÙˆØ±Ø© Ø§Ù„Ù‰','Facturer','à¤¬à¤¿à¤² à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤à¤•à¤°à¥à¤¤à¤¾','Pembayaran kepada','Fatturare a','è«‹æ±‚æ›¸é€ä»˜å…ˆ','ë¹Œë¡œ','Rekening naar','Projeto de lei para','à¸ªà¹ˆà¸‡à¹€à¸šà¸´à¸à¹„à¸›à¸—à¸µà¹ˆ','Ya fatura edilecek','Ú©Ø§ Ø¨Ù„','è®°è´¦åˆ°'),(229,'total_amount','Total Amount','à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦ªà¦°à¦¿à¦®à¦¾à¦£','Ø§Ù„Ù…Ø¨Ù„Øº Ø§Ù„Ø¥Ø¬Ù…Ø§Ù„ÙŠ','Montant total','à¤•à¥à¤² à¤°à¤•à¤®','Jumlah total','Importo totale','åˆè¨ˆé‡‘é¡','ì´ì•¡','Totaalbedrag','Valor total','à¸ˆà¸³à¸™à¸§à¸™à¹€à¸‡à¸´à¸™à¸£à¸§à¸¡','Toplam tutar','Ú©Ù„ Ø±Ù‚Ù…','æ€»é‡‘é¢'),(230,'paid_amount','Paid Amount','à¦¦à§‡à¦“à¦¯à¦¼à¦¾ à¦ªà¦°à¦¿à¦®à¦¾à¦£','Ø§Ù„Ù…Ø¨Ù„Øº Ø§Ù„Ù…Ø¯ÙÙˆØ¹','Montant payÃ©','à¤­à¤°à¥€ à¤—à¤ˆ à¤°à¤¾à¤¶à¤¿','Jumlah pembayaran','Importo pagato','æ”¯æ‰•é‡‘é¡','ì§€ë¶ˆ ê¸ˆì•¡','Betaalde hoeveelheid','Quantidade paga','à¸ˆà¸³à¸™à¸§à¸™à¹€à¸‡à¸´à¸™à¸—à¸µà¹ˆà¸Šà¸³à¸£à¸°','Ã–denen miktar','Ø§Ø¯Ø§ Ú©ÛŒ Ú¯Ø¦ÛŒ Ø±Ù‚Ù…','å·²ä»˜é‡‘é¢'),(231,'due','Due','à¦¦à¦°à§à¦¨','Ø¨Ø³Ø¨Ø¨','DÃ»','à¤¦à¥‡à¤¯','karena','Dovuto','åŽŸå› ','ì •ë‹¹í•œ','verschuldigd','Devido','à¸„à¸£à¸šà¸à¸³à¸«à¸™à¸”','gereken','ÙˆØ¬Û','åº”æœ‰'),(232,'amount_paid','Amount Paid','à¦ªà¦°à¦¿à¦®à¦¾à¦£ à¦…à¦°à§à¦¥ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à¦¾','Ø§Ù„Ù…Ø¨Ù„Øº Ø§Ù„Ù…Ø¯ÙÙˆØ¹','Le montant payÃ©','à¤°à¤¾à¤¶à¤¿ à¤•à¤¾ à¤­à¥à¤—à¤¤à¤¾à¤¨','Jumlah yang dibayarkan','Importo pagato','æ‰•è¾¼é‡‘é¡','ê¸ˆì•¡ ì§€ê¸‰','Betaald bedrag','Quantia paga','à¸ˆà¸³à¸™à¸§à¸™à¹€à¸‡à¸´à¸™à¸—à¸µà¹ˆà¸ˆà¹ˆà¸²à¸¢','Ã–denen miktar','Ø±Ù‚Ù… Ø§Ø¯Ø§ Ú©Ø± Ø¯ÛŒ','æ”¯ä»˜çš„é‡‘é¢'),(233,'payment_successfull','Payment has been successful','à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦«à¦² à¦¹à¦¯à¦¼à§‡à¦›à§‡','Ø¯ÙØ¹ Ø§Ù„Ù†Ø¬Ø§Ø­','Paiement Successfull','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤¸à¤«à¤²','Successfull pembayaran','Successfull pagamento','æ”¯æ‰•æˆåŠŸã—','ê²°ì œ ì„±ê³µì ì¸','betaling Succesvolle','Successfull pagamento','à¸—à¸µà¹ˆà¸›à¸£à¸°à¸ªà¸šà¸„à¸§à¸²à¸¡à¸ªà¸³à¹€à¸£à¹‡à¸ˆà¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã–deme BaÅŸarÄ±lÄ±','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Ø§Ù…ÛŒØ§Ø¨','æ”¯ä»˜å…¨æˆ'),(234,'add_invoice/payment','Add Invoice/payment','à¦‡à¦¨à¦­à¦¯à¦¼à§‡à¦¸ / à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¯à§‹à¦—','Ø¥Ø¶Ø§ÙØ© ÙØ§ØªÙˆØ±Ø© / Ø¯ÙØ¹','Ajouter Facture / paiement','à¤šà¤¾à¤²à¤¾à¤¨ / à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤œà¥‹à¤¡à¤¼à¥‡','Tambahkan Faktur / pembayaran','Aggiungere fattura / pagamento','è«‹æ±‚æ›¸/æ”¯æ‰•ã„ã‚’è¿½åŠ ','ì†¡ìž¥ / ì§€ë¶ˆ ì¶”ê°€','Voeg Factuur / betaling','Adicionar fatura / pagamento','à¹€à¸žà¸´à¹ˆà¸¡à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰ / à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Fatura / Ã¶deme ekle','Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº Ø§Ù†ÙˆØ§Ø¦Ø³ / Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ','æ·»åŠ å‘ç¥¨/ä»˜æ¬¾'),(235,'invoices','Invoices','à¦‡à¦¨à¦­à¦¯à¦¼à§‡à¦¸ à¦¬à¦¾ à¦šà¦¾à¦²à¦¾à¦¨','Ø§Ù„ÙÙˆØ§ØªÙŠØ±','factures','à¤šà¤¾à¤²à¤¾à¤¨','faktur','Fatture','è«‹æ±‚æ›¸','ì†¡ìž¥','facturen','facturas','à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰','faturalar','Ø§Ù†ÙˆØ§Ø¦Ø³','å‘ç¥¨'),(236,'action','Action','à¦•à¦°à§à¦®','Ø¹Ù…Ù„','action','à¤•à¤¾à¤°à¥à¤¯','Tindakan','Azione','ã‚¢ã‚¯ã‚·ãƒ§ãƒ³','ë™ìž‘','Actie','AÃ§ao','à¸à¸²à¸£à¸à¸£à¸°à¸—à¸³','Aksiyon','Ø¹Ù…Ù„','è¡ŒåŠ¨'),(237,'required','Required','à¦ªà§à¦°à¦¯à¦¼à§‹à¦œà¦¨à§€à¦¯à¦¼','Ù…Ø·Ù„ÙˆØ¨','Obligatoire','à¤…à¤ªà¥‡à¤•à¥à¤·à¤¿à¤¤','Wajib','richiesto','å¿…é ˆ','í•„ìˆ˜','nodig','Requeridos','à¸ˆà¸³à¹€à¸›à¹‡à¸™à¸•à¹‰à¸­à¸‡à¹ƒà¸Šà¹‰','gereken','Ù…Ø·Ù„ÙˆØ¨','éœ€è¦'),(238,'info','Info','à¦¤à¦¥à§à¦¯','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª','Info','à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€','Info','Informazioni','ã‚¤ãƒ³ãƒ•ã‚©','ì •ë³´','info','informaÃ§Ãµes','à¸‚à¹‰à¸­à¸¡à¸¹à¸¥','Bilgi','Ø§Ù†ÙØ§Ø±Ù…ÛŒØ´Ù†','ä¿¡æ¯'),(239,'month','Month','à¦®à¦¾à¦¸','\r\nØ´Ù‡Ø±','mois','à¤®à¤¹à¥€à¤¨à¤¾','bulan','mese','æœˆ','ë‹¬','maand','mÃªs','à¹€à¸”à¸·à¸­à¸™','ay','Ù…ÛÛŒÙ†Û','æœˆ'),(240,'details','Details','à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤','ØªÙØ§ØµÙŠÙ„','DÃ©tails','à¤µà¤¿à¤µà¤°à¤£','rincian','Dettagli','è©³ç´°','ì„¸ë¶€','Details','Detalhes','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”','AyrÄ±ntÄ±lar','ØªÙØµÛŒÙ„Ø§Øª Ø¯ÛŒÚ©Ú¾ÛŒÚº','ç»†èŠ‚'),(241,'new','New','à¦¨à¦¤à§à¦¨','Ø§Ù„Ø¬Ø¯ÙŠØ¯','Nouveau','à¤¨à¤¯à¤¾','Baru','Nuovo','æ–°ã—ã„','ìƒˆë¡œìš´','nieuwe','Novo','à¹ƒà¸«à¸¡à¹ˆ','Yeni','Ù†Ø¦ÛŒ','æ–°'),(242,'reply_message','Reply Message','à¦¬à¦¾à¦°à§à¦¤à¦¾ à¦‰à¦¤à§à¦¤à¦°','Ø±Ø³Ø§Ù„Ø© Ø§Ù„Ø±Ø¯','RÃ©ponse au message','à¤¸à¤‚à¤¦à¥‡à¤¶ à¤•à¤¾ à¤œà¤µà¤¾à¤¬','pesan balasan','messaggio di risposta','ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸è¿”ä¿¡','ë©”ì‹œì§€ íšŒì‹ ','berichtantwoord','Resposta da mensagem','à¸•à¸­à¸šà¸à¸¥à¸±à¸šà¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡','Mesaj cevabÄ±','Ù¾ÛŒØºØ§Ù… Ú©Ø§ Ø¬ÙˆØ§Ø¨','æ¶ˆæ¯å›žå¤'),(243,'message_sent','Message Sent','à¦¬à¦¾à¦°à§à¦¤à¦¾ à¦ªà¦¾à¦ à¦¾à¦¨à§‹','ØªÙ… Ø§Ù„Ø§Ø±Ø³Ø§Ù„','','à¤®à¥ˆà¤¸à¥‡à¤œ à¤¬à¥‡à¤œà¤¾ à¤—à¤¯à¤¾','Pesan terkirim','Messaggio inviato','ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸ãŒé€ä¿¡ã•ã‚Œã¾ã—ãŸ','ë©”ì‹œì§€ ì „ì†¡ ë¨','Bericht verzonden','Mensagem enviada','à¸ªà¹ˆà¸‡à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡','MesajÄ± gÃ¶nderildi','Ù¾ÛŒØºØ§Ù… Ú†Ù„Ø§ Ú¯ÛŒØ§','ç•™è¨€å·²å‘é€'),(244,'search','Search','à¦…à¦¨à§à¦¸à¦¨à§à¦§à¦¾à¦¨','Ø¨Ø­Ø«','chercher','à¤–à¥‹à¤œ','pencarian','ricerca','ã‚µãƒ¼ãƒ','ìˆ˜ìƒ‰','zoeken','pesquisa','à¸„à¹‰à¸™à¸«à¸²','arama','Ú©ÛŒ ØªÙ„Ø§Ø´','æœç´¢'),(245,'religion','Religion','à¦§à¦°à§à¦®','Ø¯ÙŠÙ†','Religion','à¤§à¤°à¥à¤®','Agama','Religione','å®—æ•™','ì¢…êµ','Godsdienst','ReligiÃ£o','à¸¨à¸²à¸ªà¸™à¸²','Din','Ù…Ø°ÛØ¨','å®—æ•™'),(246,'blood_group','Blood group','à¦°à¦•à§à¦¤à§‡à¦° à¦—à§à¦°à§à¦ª','ÙØµÙŠÙ„Ø© Ø§Ù„Ø¯Ù…','groupe sanguin','à¤°à¤•à¥à¤¤ à¤¸à¤®à¥‚à¤¹','golongan darah','gruppo sanguigno','è¡€æ¶²åž‹','í˜ˆì•¡í˜•','bloedgroep','grupo sanguÃ­neo','à¸à¸£à¸¸à¹Šà¸›à¹€à¸¥à¸·à¸­à¸”','kan grubu','Ø®ÙˆÙ† Ú©Û’ Ú¯Ø±ÙˆÙ¾','è¡€åž‹'),(247,'database_backup','Database Backup','à¦¡à¦¾à¦Ÿà¦¾à¦¬à§‡à¦œ à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª','Ù‚Ø§Ø¹Ø¯Ø© Ø¨ÙŠØ§Ù†Ø§Øª Ø§Ù„Ù†Ø³Ø® Ø§Ù„Ø§Ø­ØªÙŠØ§Ø·ÙŠ','Sauvegarde de base de donnÃ©es','à¤¡à¤¾à¤Ÿà¤¾à¤¬à¥‡à¤¸ à¤¬à¥ˆà¤•à¤…à¤ª','database Backup','Database Backup','ãƒ‡ãƒ¼ã‚¿ãƒ™ãƒ¼ã‚¹ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—','ë°ì´í„°ë² ì´ìŠ¤ ë°±ì—…','Database Backup','Backup de banco de dados','à¸à¸²à¸£à¸ªà¸³à¸£à¸­à¸‡à¸à¸²à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥','VeritabanÄ± Yedekleme','ÚˆÛŒÙ¹Ø§ Ø¨ÛŒØ³ Ø¨ÛŒÚ© Ø§Ù¾','æ•°æ®åº“å¤‡ä»½'),(248,'search','Search','à¦…à¦¨à§à¦¸à¦¨à§à¦§à¦¾à¦¨','Ø¨Ø­Ø«','chercher','à¤–à¥‹à¤œ','pencarian','ricerca','ã‚µãƒ¼ãƒ','ìˆ˜ìƒ‰','zoeken','pesquisa','à¸„à¹‰à¸™à¸«à¸²','arama','Ú©ÛŒ ØªÙ„Ø§Ø´','æœç´¢'),(249,'payments_history','Fees Pay / Invoice','à¦«à¦¿ à¦ªà¦°à¦¿à¦¶à§‹à¦§ / à¦šà¦¾à¦²à¦¾à¦¨','Ø±Ø³ÙˆÙ… Ø§Ù„Ø¯ÙØ¹ / Ø§Ù„ÙØ§ØªÙˆØ±Ø©','honoraires payer / facture','à¤«à¥€à¤¸ à¤•à¤¾ à¤­à¥à¤—à¤¤à¤¾à¤¨ / à¤šà¤¾à¤²à¤¾à¤¨','biaya bayar / faktur','tasse di pagamento / fattura','æ‰‹æ•°æ–™/è«‹æ±‚æ›¸','ìˆ˜ìˆ˜ë£Œ ì§€ë¶ˆ / ì†¡ìž¥','honoraria betalen / facturen','taxas de pagamento / fatura','à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™ / à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰','Ã¼cret Ã¶demesi / fatura','ÙÛŒØ³ Ø§Ø¯Ø§ / Ø§Ù†ÙˆØ§Ø¦Ø³','æ”¶è´¹/å‘ç¥¨'),(250,'message_restore','Message Restore','à¦¬à¦¾à¦°à§à¦¤à¦¾ à¦ªà§à¦¨à¦°à§à¦¦à§à¦§à¦¾à¦°','Ø§Ø³ØªØ¹Ø§Ø¯Ø© Ø§Ù„Ø±Ø³Ø§Ø¦Ù„','Restauration de message','à¤¸à¤‚à¤¦à¥‡à¤¶ à¤ªà¥à¤¨à¤°à¥à¤¸à¥à¤¥à¤¾à¤ªà¤¨à¤¾','Pesan dikembalikan','Messaggio di ripristino','ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸ã®å¾©å…ƒ','ë©”ì‹œì§€ ë³µì›','bericht herstellen','Restaurar mensagem','à¸à¸¹à¹‰à¸„à¸·à¸™à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡','MesajÄ±n geri yÃ¼klenmesi','Ù¾ÛŒØºØ§Ù… Ø¨Ø­Ø§Ù„','ç•™è¨€æ¢å¤'),(251,'write_new_message','Write New Message','à¦¨à¦¤à§à¦¨ à¦¬à¦¾à¦°à§à¦¤à¦¾ à¦²à¦¿à¦–à¦¤à§‡','Ø¥Ø±Ø³Ø§Ù„ Ø±Ø³Ø§Ù„Ø© Ø¬Ø¯ÙŠØ¯Ø©','Ecrire un nouveau message','à¤¨à¤¯à¤¾ à¤¸à¤‚à¤¦à¥‡à¤¶ à¤²à¤¿à¤–à¥‡à¤‚','Tulis baru Pesan','Scrivi nuovo messaggio','æ–°ã—ã„ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸ã‚’æ›¸ãã¾ã™','ìƒˆ ë©”ì‹œì§€ ì“°ê¸°','Schrijf New Message','Escrever Nova Mensagem','à¹€à¸‚à¸µà¸¢à¸™à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¹ƒà¸«à¸¡à¹ˆ','Yeni Mesaj Yaz','Ù†ÛŒØ§ Ù¾ÛŒØºØ§Ù… Ù„Ú©Ú¾ÛŒÚº','æˆ‘è¦ç•™è¨€'),(252,'attendance_sheet','Attendance Sheet','à¦à§à¦¯à¦¾à¦Ÿà§‡à¦¨à¦¡à§‡à¦¨à§à¦¸ à¦¶à§€à¦Ÿ','ÙˆØ±Ù‚Ø© Ø§Ù„Ø­Ø¶ÙˆØ±','Feuille de prÃ©sence','à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤ªà¤¤à¥à¤°à¤•','Absensi','Foglio presenze','å‡ºå¸­ã‚·ãƒ¼ãƒˆ','ì¶œì„ ì‹œíŠ¸','Presentielijst','Folha de Atendimento','à¹à¸œà¹ˆà¸™à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡','Yoklama kaÄŸÄ±dÄ±','Ø­Ø§Ø¶Ø±ÛŒ Ø´ÛŒÙ¹','è€ƒå‹¤è¡¨'),(253,'holiday','Holiday','à¦›à§à¦Ÿà¦¿à¦° à¦¦à¦¿à¦¨','ÙŠÙˆÙ… Ø§Ù„Ø§Ø¬Ø§Ø²Ø©','Vacances','à¤›à¥à¤Ÿà¥à¤Ÿà¥€ à¤•à¤¾ à¤¦à¤¿à¤¨','Liburan','Vacanza','ä¼‘æ—¥','íœ´ì¼','Vakantie','Feriado','à¸§à¸±à¸™à¸«à¸¢à¸¸à¸”','Tatil','Ú†Ú¾Ù¹ÛŒÙˆÚº Ú©Ø§','å‡æ—¥'),(254,'exam','Exam','à¦ªà¦°à§€à¦•à§à¦·à¦¾','Ø§Ù…ØªØ­Ø§Ù†','Examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾','Ujian','Esame','è©¦é¨“','ì‹œí—˜','Examen','Exame','à¸à¸²à¸£à¸ªà¸­à¸š','SÄ±nav','Ø§Ù…ØªØ­Ø§Ù†','è€ƒè¯•'),(255,'successfully','Successfully','à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡','Ø¨Ù†Ø¬Ø§Ø­','Avec succÃ¨s','à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤•','Berhasil','Con successo','æˆåŠŸ','ì„±ê³µì ìœ¼ë¡œ','Met succes','Com sucesso','à¸›à¸£à¸°à¸ªà¸šà¸„à¸§à¸²à¸¡à¸ªà¸³à¹€à¸£à¹‡à¸ˆ','BaÅŸarÄ±yla','Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’','æˆåŠŸäº†'),(256,'admin','Admin','à¦…à§à¦¯à¦¾à¦¡à¦®à¦¿à¦¨','Ù…Ø´Ø±Ù','Admin','à¤µà¥à¤¯à¤µà¤¸à¥à¤¥à¤¾à¤ªà¤•','Admin','Admin','ç®¡ç†è€…','ê´€ë¦¬ìž','beheerder','Admin','à¸œà¸¹à¹‰à¸”à¸¹à¹à¸¥à¸£à¸°à¸šà¸š','Admin','Ø§ÛŒÚˆÙ…Ù†','ç®¡ç†å‘˜'),(257,'inbox','Inbox','à¦‡à¦¨à¦¬à¦•à§à¦¸','ØµÙ†Ø¯ÙˆÙ‚ Ø§Ù„ÙˆØ§Ø±Ø¯','BoÃ®te de rÃ©ception','à¤‡à¤¨à¤¬à¥‰à¤•à¥à¤¸','Kotak masuk','Posta in arrivo','å—ä¿¡ãƒˆãƒ¬ã‚¤','ë°›ì€ íŽ¸ì§€í•¨','Inbox','Caixa de entrada','à¸à¸¥à¹ˆà¸­à¸‡à¸ˆà¸”à¸«à¸¡à¸²à¸¢','Gelen kutusu','Ø§Ù† Ø¨Ø§Ú©Ø³','æ”¶ä»¶ç®±'),(258,'sent','Sent','à¦ªà§à¦°à§‡à¦°à¦¿à¦¤','Ø£Ø±Ø³Ù„Øª','EnvoyÃ©','à¤­à¥‡à¤œ à¤¦à¤¿à¤¯à¤¾','Dikirim','Inviato','é€ä¿¡æ¸ˆã¿','ì „ì†¡ ë¨','Verzonden','Enviei','à¸ªà¹ˆà¸‡à¹à¸¥à¹‰à¸§','GÃ¶nderildi','Ù…Ø±Ø³Ù„Û','å‘äº†'),(259,'important','Important','à¦—à§à¦°à§à¦¤à§à¦¬à¦ªà§‚à¦°à§à¦£','Ù…Ù‡Ù…','Important','à¤œà¤°à¥‚à¤°à¥€','Penting','Importante','é‡è¦','ì¤‘ëŒ€í•œ','Belangrijk','Importante','à¸ªà¸³à¸„à¸±à¸','Ã–nemli','Ø§ÛÙ…','é‡è¦'),(260,'trash','Trash','à¦†à¦¬à¦°à§à¦œà¦¨à¦¾','Ù‚Ù…Ø§Ù…Ø©ØŒ ÙŠØ¯Ù…Ø±ØŒ ÙŠÙ‡Ø¯Ù…','Poubelle','à¤•à¤šà¤°à¤¾','Sampah','Spazzatura','ã”ã¿','íë¬¼','Prullenbak','Lixo','à¸–à¸±à¸‡à¸‚à¸¢à¸°','Ã‡Ã¶p','Ø±Ø¯ÛŒ Ú©ÛŒ Ù¹ÙˆÚ©Ø±ÛŒ','åžƒåœ¾'),(261,'error','Unsuccessful','à¦¬à§à¦¯à¦¾à¦°à§à¦¥','ØºÙŠØ± Ù†Ø§Ø¬Ø­Ø©','Infructueux','à¤…à¤¸à¤«à¤²','Gagal','Senza esito','å¤±æ•—','ì‹¤íŒ¨','Mislukt','Mal sucedido','à¹„à¸¡à¹ˆà¸ªà¸³à¹€à¸£à¹‡à¸ˆ','BaÅŸarÄ±sÄ±z','Ù†Ø§Ú©Ø§Ù…','ä¸æˆåŠŸ'),(262,'sessions_list','Sessions List','à¦¸à§‡à¦¶à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø¬Ù„Ø³Ø§Øª','Liste des sessions','à¤¸à¤¤à¥à¤° à¤¸à¥‚à¤šà¥€','Daftar Sesi','Elenco Sessioni','ã‚»ãƒƒã‚·ãƒ§ãƒ³ãƒªã‚¹ãƒˆ','ì„¸ì…˜ ëª©ë¡','Sessieslijst','Lista de SessÃµes','à¸£à¸²à¸¢à¸à¸²à¸£à¹€à¸‹à¸ªà¸Šà¸±à¹ˆà¸™','Oturumlar Listesi','Ø³ÛŒØ´Ù† Ú©ÛŒ ÙÛØ±Ø³Øª','ä¼šè®®åˆ—è¡¨'),(263,'session_settings','Session Settings','à¦¸à§‡à¦¶à¦¨ à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø¬Ù„Ø³Ø©','ParamÃ¨tres de la session','à¤¸à¤¤à¥à¤° à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—','Pengaturan Sesi','Impostazioni sessione','ã‚»ãƒƒã‚·ãƒ§ãƒ³è¨­å®š','ì„¸ì…˜ ì„¤ì •','Sessie instellingen','ConfiguraÃ§Ãµes da SessÃ£o','à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¹€à¸‹à¸ªà¸Šà¸±à¸™','Oturum AyarlarÄ±','Ø³ÛŒØ´Ù† ØªØ±ØªÛŒØ¨Ø§Øª','ä¼šè¯è®¾ç½®'),(264,'add_designation','Add Designation','à¦ªà¦¦à¦¬à§€ à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø¥Ø¶Ø§ÙØ© ØªØ³Ù…ÙŠØ©','Ajouter une dÃ©signation','à¤ªà¤¦à¤¨à¤¾à¤® à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Penunjukan','Aggiungi designazione','æŒ‡å®šã‚’è¿½åŠ ã™ã‚‹','ì§€ì • ì¶”ê°€','Aanwijzing toevoegen','Adicionar DesignaÃ§Ã£o','à¹€à¸žà¸´à¹ˆà¸¡à¸à¸²à¸£à¸à¸³à¸«à¸™à¸”','Ä°smi Ekle','Ø¹ÛØ¯Û Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ åç§°'),(265,'users','Users','à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦°à¦¾','Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','Utilisateurs','à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾','Pengguna','utenti','ãƒ¦ãƒ¼ã‚¶ãƒ¼','ì‚¬ìš©ìž','gebruikers','Comercial','à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰','KullanÄ±cÄ±lar','ØµØ§Ø±ÙÛŒÙ†','ç”¨æˆ·'),(266,'librarian','Librarian','à¦—à§à¦°à¦¨à§à¦¥à¦¾à¦—à¦¾à¦°à¦¿à¦•','Ø£Ù…ÙŠÙ† Ø§Ù„Ù…ÙƒØªØ¨Ø©','BibliothÃ©caire','à¤ªà¥à¤¸à¥à¤¤à¤•à¤¾à¤²à¤¯ à¤…à¤§à¥à¤¯à¤•à¥à¤·','Pustakawan','Bibliotecario','å›³æ›¸é¤¨å“¡','ì‚¬ì„œ','Bibliothecaris','BibliotecÃ¡rio','à¸šà¸£à¸£à¸“à¸²à¸£à¸±à¸à¸©à¹Œ','kÃ¼tÃ¼phaneci','Ù„Ø§Ø¦Ø¨Ø±ÛŒØ±ÛŒÙ†','å›¾ä¹¦ç®¡ç†å‘˜'),(267,'accountant','Accountant','à¦¹à¦¿à¦¸à¦¾à¦¬à¦°à¦•à§à¦·à¦•','Ù…Ø­Ø§Ø³Ø¨','Comptable','à¤®à¥à¤¨à¥€à¤®','Akuntan','Contabile','ä¼šè¨ˆå£«','íšŒê³„ì‚¬','Accountant','Contador','à¸™à¸±à¸à¸šà¸±à¸à¸Šà¸µ','Muhasebeci','Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ù¹','ä¼šè®¡'),(268,'academics','Academics','à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à¦¯à¦¼ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤','Ù…Ø¤Ø³Ø³ÙŠØ§','institutionnellement','à¤¸à¤‚à¤¸à¥à¤¥à¤¾à¤—à¤¤','secara institusional','istituzionalmente','åˆ¶åº¦çš„ã«','ì œë„ì ìœ¼ë¡œ','institutioneel','institucionalmente','institutionally','kurumsal olarak','Ø§Ø¯Ø§Ø±Û','ä½“åˆ¶'),(269,'employees_attendance','Employees Attendance','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿','Ø­Ø¶ÙˆØ± Ø§Ù„Ù…ÙˆØ¸ÙÙŠÙ†','Participation des employÃ©s','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿','Kehadiran karyawan','La presenza dei dipendenti','å¾“æ¥­å“¡ã®å‡ºå¸­','ì§ì› ì¶œì„','Medewerkers aanwezigheid','Atendimento dos funcionÃ¡rios','à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸‡à¸²à¸™à¸‚à¸­à¸‡à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸanlara katÄ±lÄ±m','Ù…Ù„Ø§Ø²Ù…ÛŒÙ† Ú©ÛŒ Ø­Ø§Ø¶Ø±ÛŒ','å‘˜å·¥å‡ºå‹¤'),(270,'set_exam_term','Set Exam Term','à¦Ÿà¦¾à¦°à§à¦® à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨','ØªØ¹ÙŠÙŠÙ† Ù…Ø¯Ø© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†','Terminer l\'examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤µà¤§à¤¿ à¤¸à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚','Tetapkan Ujian Term','Impostare la durata dell&#39;esame','è©¦é¨“æœŸé–“ã‚’è¨­å®šã™ã‚‹','ì‹œí—˜ ê¸°ê°„ ì„¤ì •','Stel examentermijn in','Definir Termo de Exame','à¸à¸³à¸«à¸™à¸”à¸£à¸°à¸¢à¸°à¹€à¸§à¸¥à¸²à¸à¸²à¸£à¸ªà¸­à¸š','SÄ±nav SÃ¼resini AyarlayÄ±n','Ø§Ù…ØªØ­Ø§Ù† Ú©ÛŒ Ù…Ø¯Øª Ù…Ù‚Ø±Ø± Ú©Ø±ÛŒÚº','è®¾ç½®è€ƒè¯•æœŸé™'),(271,'set_attendance','Set Attendance','à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨','ØªØ¹ÙŠÙŠÙ† Ø§Ù„Ø­Ø¶ÙˆØ±','Assurer la frÃ©quentation','à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤¸à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚','Tetapkan Kehadiran','Impostare la frequenza','å‡ºå¸­ã‚’è¨­å®šã™ã‚‹','ì¶œì„ ì„¤ì •','Set Attendance','Definir atendimento','à¸•à¸±à¹‰à¸‡à¸œà¸¹à¹‰à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡','KatÄ±lÄ±mÄ± ayarla','Ø­Ø§Ø¶Ø±ÛŒ Ù…Ù‚Ø±Ø± Ú©Ø±ÛŒÚº','è®¾ç½®è€ƒå‹¤'),(272,'marks','Marks','à¦®à¦¾à¦°à§à¦•à¦¸','Ø¹Ù„Ø§Ù…Ø§Øª','Des notes','à¤¨à¤¿à¤¶à¤¾à¤¨','Tanda','votazione','ãƒžãƒ¼ã‚¯','ì ìˆ˜','Marks','Marcas','à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢','izler','Ù†Ø´Ø§Ù†Ø§Øª','åˆ†æ•°'),(273,'books_category','Books Category','à¦¬à¦‡ à¦¬à¦¿à¦­à¦¾à¦—','ÙØ¦Ø© Ø§Ù„ÙƒØªØ§Ø¨','CatÃ©gorie de livres','à¤ªà¥à¤¸à¥à¤¤à¤• à¤¶à¥à¤°à¥‡à¤£à¥€','Kategori buku','Categoria di libri','ãƒ–ãƒƒã‚¯ã‚«ãƒ†ã‚´ãƒª','ë„ì„œ ì¹´í…Œê³ ë¦¬','Boek categorie','Categoria de livro','à¸«à¸¡à¸§à¸”à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','Kitap Kategorisi','Ú©ØªØ§Ø¨ Ú©ÛŒ Ù‚Ø³Ù…','ä¹¦ç±»'),(274,'transport','Transport','à¦ªà¦°à¦¿à¦¬à¦¹à¦¨','Ø§Ù„Ù…ÙˆØ§ØµÙ„Ø§Øª','Transport','à¤Ÿà¥à¤°à¤¾à¤‚à¤¸à¤ªà¥‹à¤°à¥à¤Ÿ','Mengangkut','Trasporto','è¼¸é€','ìˆ˜ì†¡','Vervoer','Transporte','à¸‚à¸™à¸ªà¹ˆà¸‡','taÅŸÄ±ma','Ù†Ù‚Ù„ Ùˆ Ø­Ù…Ù„','è¿è¾“'),(275,'fees','Fees','à¦«à¦¿','Ø±Ø³ÙˆÙ…','honoraires','à¤«à¥€à¤¸','Biaya','tasse','æ‰‹æ•°æ–™','ìˆ˜ìˆ˜ë£Œ','fees','honorÃ¡rios','à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','harÃ§','ÙÛŒØ³','è´¹ç”¨'),(276,'fees_allocation','Fees Allocation','à¦«à¦¿ à¦¬à¦°à¦¾à¦¦à§à¦¦à¦•à¦°à¦£','ØªÙˆØ²ÙŠØ¹ Ø§Ù„Ø±Ø³ÙˆÙ…','rÃ©partition des frais','à¤¶à¥à¤²à¥à¤• à¤†à¤µà¤‚à¤Ÿà¤¨','alokasi biaya','assegnazione dei diritti','æ‰‹æ•°æ–™ã®å‰²ã‚Šå½“ã¦','ìˆ˜ìˆ˜ë£Œ í• ë‹¹','verdeling van de vergoedingen','alocaÃ§Ã£o de tarifas','à¸à¸²à¸£à¸ˆà¸±à¸”à¸ªà¸£à¸£à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ã¼cret tahsisi','ÙÛŒØ³ Ù…Ø®ØªØµ','è´¹ç”¨åˆ†é…'),(277,'fee_category','Fee Category','à¦«à¦¿ à¦¬à¦¿à¦­à¦¾à¦—','ÙØ¦Ø© Ø§Ù„Ø±Ø³ÙˆÙ…','CatÃ©gorie tarifaire','à¤¶à¥à¤²à¥à¤• à¤¶à¥à¤°à¥‡à¤£à¥€','Kategori biaya','Categoria di tassa','æ‰‹æ•°æ–™ã‚«ãƒ†ã‚´ãƒª','ìˆ˜ìˆ˜ë£Œ ì¹´í…Œê³ ë¦¬','Tariefcategorie','Categoria de taxa','à¸›à¸£à¸°à¹€à¸ à¸—à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret kategorisi','ÙÛŒØ³ Ú©ÛŒ Ù‚Ø³Ù…','è´¹ç”¨ç±»åˆ«'),(278,'report','Report','à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨','Ø£Ø¨Ù„Øº Ø¹Ù†','rapport','à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','melaporkan','rapporto','å ±å‘Šã™ã‚‹','ë³´ê³ ì„œ','rapport','relatÃ³rio','à¸£à¸²à¸¢à¸‡à¸²à¸™','rapor','Ø±Ù¾ÙˆØ±Ù¹','æŠ¥å‘Š'),(279,'employee','Employee','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€','Ø§Ù„Ù…ÙˆØ¸ÙÙŠÙ†','employÃ©s','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¤¿à¤¯à¥‹à¤‚','para karyawan','dipendenti','å¾“æ¥­å“¡','ì§ì›','werknemers','FuncionÃ¡rios','à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã§alÄ±ÅŸanlar','Ù…Ù„Ø§Ø²Ù…ÛŒÙ†','Ù…Ù„Ø§Ø²Ù…ÛŒÙ†'),(280,'invoice','Invoice','à¦šà¦¾à¦²à¦¾à¦¨','ÙØ§ØªÙˆØ±Ø©','facture d\'achat','à¤¬à¥€à¤œà¤•','faktur','fattura','è«‹æ±‚æ›¸','ì†¡ìž¥','factuur','fatura','à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰','fatura','Ø§Ù†ÙˆØ§Ø¦Ø³','å‘ç¥¨'),(281,'event_catalogue','Event Catalogue','à¦‡à¦­à§‡à¦¨à§à¦Ÿ à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦²à¦—','ÙƒØªØ§Ù„ÙˆØ¬ Ø§Ù„Ø£Ø­Ø¯Ø§Ø«','Catalogue des Ã©vÃ©nements','à¤‡à¤µà¥‡à¤‚à¤Ÿ à¤•à¥ˆà¤Ÿà¤²à¥‰à¤—','Katalog acara','Catalogo eventi','ã‚¤ãƒ™ãƒ³ãƒˆã‚«ã‚¿ãƒ­ã‚°','ì´ë²¤íŠ¸ ì¹´íƒˆë¡œê·¸','Event Catalogus','CatÃ¡logo de Eventos','à¹à¸„à¹‡à¸•à¸•à¸²à¸¥à¹‡à¸­à¸à¸à¸´à¸ˆà¸à¸£à¸£à¸¡','Etkinlik KataloÄŸu','ÙˆØ§Ù‚Ø¹Û Ú©ÛŒ ÙÛØ±Ø³Øª','æ´»åŠ¨ç›®å½•'),(282,'total_paid','Total Paid','à¦®à§‹à¦Ÿ à¦¦à§‡à¦“à¦¯à¦¼à¦¾','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„Ù…Ø¨Ø§Ù„Øº Ø§Ù„Ù…Ø¯ÙÙˆØ¹Ø©','Total payÃ©','à¤•à¥à¤² à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤¹à¥‹ à¤—à¤¯à¤¾','Total Dibayar','Totale pagato','æ”¯æ‰•ç·é¡','ì´ ì§€ë¶ˆì•¡','Totaal betaald','Total pago','à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¸—à¸µà¹ˆà¸ˆà¹ˆà¸²à¸¢','Toplam Ãœcretli','Ú©Ù„ Ø§Ø¯Ø§ Ø´Ø¯Û','æ€»æ”¯ä»˜'),(283,'total_due','Total Due','à¦®à§‹à¦Ÿ à¦¬à¦¾à¦•à¦¿','Ø§Ù„Ø§Ø¬Ù…Ø§Ù„ÙŠ Ø§Ù„Ù…Ø³ØªØ­Ù‚','Total dÃ»','à¤•à¥à¤² à¤¦à¥‡à¤¯','Total Jatuh Tempo','Totale dovuto','ç·é¡','ì´ ë§Œê¸°ì¼','Totaal verschuldigd','Total Due','à¸£à¸§à¸¡à¸„à¸£à¸šà¸à¸³à¸«à¸™à¸”','Toplam Vade','Ú©Ù„ Ú©ÛŒ ÙˆØ¬Û Ø³Û’','æ€»åˆ°æœŸ'),(284,'fees_collect','Fees Collect','à¦«à¦¿ à¦¸à¦‚à¦—à§à¦°à¦¹','ØªØ­ØµÙŠÙ„ Ø§Ù„Ø±Ø³ÙˆÙ…','Frais collectÃ©s','à¤«à¥€à¤¸ à¤œà¤®à¤¾ à¤•à¤°à¥‡à¤‚','Biaya mengumpulkan','Le tasse si raccolgono','æ‰‹æ•°æ–™å¾´åŽ','ìˆ˜ìˆ˜ë£Œ ì§•ìˆ˜','Vergoedingen verzamelen','Taxas cobradas','à¹€à¸à¹‡à¸šà¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret toplama','ÙÛŒØ³ Ø¬Ù…Ø¹','æ”¶è´¹'),(285,'total_school_students_attendance','Total School Students Attendance','à¦®à§‹à¦Ÿ à¦¸à§à¦•à§à¦²à§‡à¦° à¦›à¦¾à¦¤à§à¦° à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿','Ù…Ø¬Ù…ÙˆØ¹ Ø·Ù„Ø§Ø¨ Ø§Ù„Ù…Ø¯Ø§Ø±Ø³ Ø§Ù„Ø­Ø¶ÙˆØ±','Participation totale des Ã©tudiants','à¤•à¥à¤² à¤µà¤¿à¤¦à¥à¤¯à¤¾à¤²à¤¯ à¤•à¥‡ à¤›à¤¾à¤¤à¥à¤°à¥‹à¤‚ à¤•à¥€ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿','Total kehadiran siswa sekolah','La frequenza totale degli studenti delle scuole','ç·å­¦ç”Ÿå°±å­¦','ì´ í•™ìƒ ìˆ˜ê°•ìƒ','Totale schoolstudenten aanwezigheid','Total de frequÃªncia escolar','à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¹€à¸£à¸µà¸¢à¸™à¸‚à¸­à¸‡à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™à¹ƒà¸™à¹‚à¸£à¸‡à¹€à¸£à¸µà¸¢à¸™à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','Toplam okul Ã¶ÄŸrencileri devam ediyor','Ú©Ù„ Ø§Ø³Ú©ÙˆÙ„ Ú©Û’ Ø·Ù„Ø¨Ø§Ø¡ Ø­Ø§Ø¶Ø±ÛŒ','å…¨æ ¡å­¦ç”Ÿå‡ºå¸­'),(286,'overview','Overview','à¦¸à¦‚à¦•à§à¦·à¦¿à¦ªà§à¦¤ à¦¬à¦¿à¦¬à¦°à¦£','Ù†Ø¸Ø±Ø© Ø¹Ø§Ù…Ø©','AperÃ§u','à¤…à¤µà¤²à¥‹à¤•à¤¨','Ikhtisar','Panoramica','æ¦‚è¦','ê°œìš”','Overzicht','VisÃ£o geral','à¸ à¸²à¸žà¸£à¸§à¸¡','genel bakÄ±ÅŸ','Ø¬Ø§Ø¦Ø²Û','æ¦‚è§‚'),(287,'currency_symbol','Currency Symbol','à¦®à§à¦¦à§à¦°à¦¾ à¦ªà§à¦°à¦¤à§€à¦•','Ø±Ù…Ø² Ø§Ù„Ø¹Ù…Ù„Ø©','symbole de la monnaie','à¤®à¥à¤¦à¥à¤°à¤¾ à¤ªà¥à¤°à¤¤à¥€à¤•','Simbol mata uang','Simbolo di valuta','é€šè²¨è¨˜å·','í†µí™” ê¸°í˜¸','symbool van munteenheid','SÃ­mbolo monetÃ¡rio','à¸ªà¸±à¸à¸¥à¸±à¸à¸©à¸“à¹Œà¸ªà¸à¸¸à¸¥à¹€à¸‡à¸´à¸™','Para birimi sembolÃ¼','Ú©Ø±Ù†Ø³ÛŒ Ø¹Ù„Ø§Ù…Øª','è´§å¸ç¬¦å·'),(288,'enable','Enable','à¦¸à¦•à§à¦·à¦® à¦•à¦°à¦¾','Ù…ÙƒÙ†','Activer','à¤¸à¤•à¥à¤·à¤® à¤•à¤°à¥‡à¤‚','Memungkinkan','Abilitare','æœ‰åŠ¹ã«ã™ã‚‹','ì‚¬ìš©','in staat stellen','Habilitar','à¸—à¸³à¹ƒà¸«à¹‰à¸ªà¸²à¸¡à¸²à¸£à¸–','etkinleÅŸtirme','ÙØ¹Ø§Ù„','å¯ç”¨'),(289,'disable','Disable','à¦…à¦•à§à¦·à¦®','ØªØ¹Ø·ÙŠÙ„','DÃ©sactiver','à¤…à¤•à¥à¤·à¤®','Nonaktifkan','disattivare','ç„¡åŠ¹ã«ã™ã‚‹','ì‚¬ìš© ì•ˆí•¨','onbruikbaar maken','Desativar','à¸›à¸´à¸”à¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™','Devre dÄ±ÅŸÄ±','ØºÛŒØ± ÙØ¹Ø§Ù„','ç¦ç”¨'),(290,'payment_settings','Payment Settings','à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø¯ÙØ¹','ParamÃ¨tres de paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—','Setelan Pembayaran','Impostazioni di pagamento','æ”¯æ‰•ã„è¨­å®š','ì§€ë¶ˆ ì„¤ì •','Betaalinstellingen','ConfiguraÃ§Ãµes de pagamento','à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã–deme AyarlarÄ±','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ ØªØ±ØªÛŒØ¨Ø§Øª','ä»˜æ¬¾è®¾ç½®'),(291,'student_attendance_report','Student Attendance Report','à¦›à¦¾à¦¤à§à¦° à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ','ØªÙ‚Ø±ÙŠØ± Ø­Ø¶ÙˆØ± Ø§Ù„Ø·Ø§Ù„Ø¨','Rapport de prÃ©sence Ã©tudiante','à¤›à¤¾à¤¤à¥à¤° à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','Laporan kehadiran siswa','Rapporto di frequenza degli studenti','å­¦ç”Ÿå‡ºå¸­å ±å‘Š','í•™ìƒ ì¶œì„ ë³´ê³ ì„œ','Studentenbijwoningsverslag','RelatÃ³rio de atendimento ao aluno','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¹€à¸£à¸µà¸¢à¸™à¸‚à¸­à¸‡à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™','Ã–ÄŸrenci katÄ±lÄ±m raporu','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ø­Ø§Ø¶Ø±ÛŒ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹','å­¦ç”Ÿå‡ºå‹¤æŠ¥å‘Š'),(292,'attendance_type','Attendance Type','à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦ªà§à¦°à¦•à¦¾à¦°','Ù†ÙˆØ¹ Ø§Ù„Ø­Ø¶ÙˆØ±','Type de prÃ©sence','à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤ªà¥à¤°à¤•à¤¾à¤°','Tipe kehadiran','Tipo di partecipazione','å‡ºå¸­ã‚¿ã‚¤ãƒ—','ì¶œì„ ìœ í˜•','Aanwezigheidstype','Tipo de atendimento','à¸›à¸£à¸°à¹€à¸ à¸—à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸‡à¸²à¸™','Devam tÃ¼rÃ¼','Ø­Ø§Ø¶Ø±ÛŒ Ú©ÛŒ Ù‚Ø³Ù…','è€ƒå‹¤ç±»åž‹'),(293,'late','Late','à¦¬à¦¿à¦²à¦®à§à¦¬à§‡','Ù…ØªØ£Ø®Ø±','En retard','à¤¦à¥‡à¤° à¤¸à¥‡','Terlambat','in ritardo','å¾ŒæœŸ','ëŠ¦ì€','Laat','Atrasado','à¸ªà¸²à¸¢','GeÃ§','Ø¯ÛŒØ±','æ™šäº†'),(294,'employees_attendance_report','Employees Attendance Report','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ','Ø§Ù„Ù…ÙˆØ¸ÙÙŠÙ† ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ø­Ø¶ÙˆØ±','Rapport de prÃ©sence des employÃ©s','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¤¿à¤¯à¥‹à¤‚ à¤•à¥€ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','Laporan kehadiran karyawan','Rapporto di presenza dei dipendenti','å¾“æ¥­å“¡ã®å‡ºå¸­ãƒ¬ãƒãƒ¼ãƒˆ','ì§ì› ì¶œì„ ë³´ê³ ì„œ','Medewerkers aanwezigheidsrapport','RelatÃ³rio de comparecimento de funcionÃ¡rios','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸‡à¸²à¸™à¸‚à¸­à¸‡à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸanlar katÄ±lÄ±m raporu','Ù…Ù„Ø§Ø²Ù…ÛŒÙ† Ú©ÛŒ Ø­Ø§Ø¶Ø±ÛŒ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹','å‘˜å·¥å‡ºå‹¤æŠ¥å‘Š'),(295,'attendance_report_of','Attendance Report Of','à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ','ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ø­Ø¶ÙˆØ± Ù…Ù†','Rapport de prÃ©sence de','à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤•à¥€ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','Laporan kehadiran','Relazione di partecipazione di','ã®å‡ºå¸­å ±å‘Šæ›¸','ì¶œì„ ë³´ê³ ì„œ','Aanwezigheidsverslag van','RelatÃ³rio de atendimento de','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸‡à¸²à¸™à¸‚à¸­à¸‡','Devam raporu','Ø­Ø§Ø¶Ø±ÛŒ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹','å‡ºå¸­æŠ¥å‘Š'),(296,'fee_paid_report','Fee Paid Report','à¦«à¦¿ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨','Ø§Ù„Ø±Ø³ÙˆÙ… Ø§Ù„Ù…Ø¯ÙÙˆØ¹Ø© Ø§Ù„ØªÙ‚Ø±ÙŠØ±','Rapport payÃ© payÃ©','à¤¶à¥à¤²à¥à¤• à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','Laporan biaya dibayar','Pagamento pagato rapporto','å ±é…¬æ”¯æ‰•å ±å‘Šæ›¸','ìœ ë£Œ ë³´ê³ ì„œ','Betaald rapport','RelatÃ³rio remunerado','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸„à¹ˆà¸²à¹ƒà¸Šà¹‰à¸ˆà¹ˆà¸²à¸¢','Ãœcretli Ã–denen Rapor','ÙÛŒØ³ Ø§Ø¯Ø§ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹','ä»˜è´¹æŠ¥é…¬'),(297,'invoice_no','Invoice No','à¦šà¦¾à¦²à¦¾à¦¨ à¦¨à¦‚','Ø±Ù‚Ù… Ø§Ù„ÙØ§ØªÙˆØ±Ø©','Facture non','à¤šà¤¾à¤²à¤¾à¤¨ à¤¨à¤‚à¤¬à¤°','nomor faktur','fattura n','è«‹æ±‚æ›¸ç•ªå·','ì†¡ìž¥ ë²ˆí˜¸','factuur nr','Factura nÃ£o','à¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰','Fatura no','Ø§Ù†ÙˆØ§Ø¦Ø³ Ù†Ù…Ø¨Ø±','å‘ç¥¨å·ç '),(298,'payment_mode','Payment Mode','à¦ªà¦°à¦¿à¦¶à§‹à¦§à§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦®','Ø·Ø±ÙŠÙ‚Ø© Ø§Ù„Ø¯ÙØ¹','mode de paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¤¾ à¤ªà¥à¤°à¤•à¤¾à¤°','Mode pembayaran','metodo di pagamento','æ”¯æ‰•ã„ãƒ¢ãƒ¼ãƒ‰','ì§€ë¶ˆ ëª¨ë“œ','betaalmethode','modo de pagamento','à¹‚à¸«à¸¡à¸”à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã¶deme ÅŸekli','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Ø§ Ø·Ø±ÛŒÙ‚Û Ú©Ø§Ø±','ä»˜æ¬¾æ–¹å¼'),(299,'payment_type','Payment Type','à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦ª','Ù†ÙˆØ¹ Ø§Ù„Ø¯ÙØ¹','type de paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¥‡ à¤ªà¥à¤°à¤•à¤¾à¤°','tipe pembayaran','modalitÃ  di pagamento','æ‰•ã„ã®ç¨®é¡ž','ì§€ë¶ˆ ìœ í˜•','betalingswijze','tipo de pagamento','à¸›à¸£à¸°à¹€à¸ à¸—à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã¶deme tÃ¼rÃ¼','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ Ù‚Ø³Ù…','ä»˜æ¬¾æ–¹å¼'),(300,'done','Done','à¦¸à¦®à§à¦ªà¦¨à§à¦¨','ÙØ¹Ù„Ù‡','terminÃ©','à¤•à¤¿à¤¯à¤¾ à¤¹à¥à¤†','Selesai','fatto','å®Œäº†','ëë‚œ','gedaan','feito','à¹€à¸ªà¸£à¹‡à¸ˆà¹à¸¥à¹‰à¸§','tamam','Ú©ÛŒØ§ ÛÙˆØ§','å®Œæˆ'),(301,'select_fee_category','Select Fee Category','à¦«à¦¿ à¦¬à¦¿à¦­à¦¾à¦— à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ ÙØ¦Ø© Ø§Ù„Ø±Ø³ÙˆÙ…','SÃ©lectionner la catÃ©gorie tarifaire','à¤¶à¥à¤²à¥à¤• à¤¶à¥à¤°à¥‡à¤£à¥€ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih kategori biaya','Selezionare la categoria dei diritti','é¸æŠžæ–™é‡‘ã‚«ãƒ†ã‚´ãƒª','ìš”ê¸ˆ ì¹´í…Œê³ ë¦¬ ì„ íƒ','Selecteer de tariefcategorie','Categoria de taxa selecionada','à¹€à¸¥à¸·à¸­à¸à¸«à¸¡à¸§à¸”à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret kategorisini seÃ§in','ÙÛŒØ³ Ú©ÛŒ Ù‚Ø³Ù… Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©è´¹ç”¨ç±»åˆ«'),(302,'discount','Discount','à¦¡à¦¿à¦¸à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','Ø®ØµÙ…','remise','à¤›à¥‚à¤Ÿ','diskon','sconto','ãƒ‡ã‚£ã‚¹ã‚«ã‚¦ãƒ³ãƒˆ','í• ì¸','korting','desconto','à¸ªà¹ˆà¸§à¸™à¸¥à¸”','indirim','ÚˆØ³Ú©Ø§Ø¤Ù†Ù¹','æŠ˜æ‰£'),(303,'enter_discount_amount','Enter Discount Amount','à¦›à¦¾à¦¡à¦¼à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£ à¦²à¦¿à¦–à§à¦¨','Ø£Ø¯Ø®Ù„ Ù…Ø¨Ù„Øº Ø§Ù„Ø®ØµÙ…','Saisir un montant d\'escompte','à¤¡à¤¿à¤¸à¥à¤•à¤¾à¤‰à¤‚à¤Ÿ à¤°à¤¾à¤¶à¤¿ à¤¦à¤°à¥à¤œ à¤•à¤°à¥‡à¤‚','Masukkan jumlah diskon','Inserire l\'importo del sconto','å‰²å¼•é¡ã‚’å…¥åŠ›','í• ì¸ ê¸ˆì•¡ì„ ìž…ë ¥í•˜ì‹­ì‹œì˜¤.','Vul kortingsbedrag in','Insira valor de desconto','à¸›à¹‰à¸­à¸™à¸ˆà¸³à¸™à¸§à¸™à¹€à¸‡à¸´à¸™à¸ªà¹ˆà¸§à¸™à¸¥à¸”','Indirim tutarÄ±nÄ± gir','ÚˆØ³Ú©Ø§Ø¤Ù†Ù¹ Ø±Ù‚Ù… Ø¯Ø±Ø¬ Ú©Ø±ÛŒÚº','è¾“å…¥æŠ˜æ‰£é‡‘é¢'),(304,'online_payment','Online Payment','à¦¦à§‚à¦°à¦¬à¦°à§à¦¤à§€ à¦…à¦°à§à¦¥ à¦ªà§à¦°à¦¦à¦¾à¦¨','Ø§Ù„Ø¯ÙØ¹ Ø¹Ù† Ø¨Ø¹Ø¯','Paiement Ã  distance','à¤°à¤¿à¤®à¥‹à¤Ÿ à¤­à¥à¤—à¤¤à¤¾à¤¨','Pembayaran Jarak Jauh','Pagamento remoto','é éš”æ”¯æ‰•ã„','ì›ê²© ì§€ë¶ˆ','Afhankelijk van de betaling','Pagamento Remoto','à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™à¸£à¸°à¸¢à¸°à¹„à¸à¸¥','Uzaktan Ã–deme','Ø±ÛŒÙ…ÙˆÙ¹ Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ','è¿œç¨‹ä»˜æ¬¾'),(305,'student_name','Student Name','à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€à¦° à¦¨à¦¾à¦®','Ø£Ø³Ù… Ø§Ù„Ø·Ø§Ù„Ø¨','nom d\'Ã©tudiant','à¤›à¤¾à¤¤à¥à¤° à¤•à¤¾ à¤¨à¤¾à¤®','nama siswa','nome dello studente','å­¦ç”Ÿã®åå‰','í•™ìƒ ì´ë¦„','studenten naam','nome do aluno','à¸Šà¸·à¹ˆà¸­à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™','Ã–ÄŸrenci adÄ±','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©Ø§ Ù†Ø§Ù…','å­¦ç”Ÿå§“å'),(306,'invoice_history','Invoice History','à¦šà¦¾à¦²à¦¾à¦¨ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸','ØªØ§Ø±ÙŠØ® Ø§Ù„ÙØ§ØªÙˆØ±Ø©','Historique des factures','à¤šà¤¾à¤²à¤¾à¤¨ à¤•à¤¾ à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸','Riwayat faktur','La cronologia delle fatture','è«‹æ±‚æ›¸å±¥æ­´','ì†¡ìž¥ ë‚´ì—­','Factuurgeschiedenis','HistÃ³rico de faturamento','à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰','Fatura geÃ§miÅŸi','Ø§Ù†ÙˆØ§Ø¦Ø³ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','å‘ç¥¨åŽ†å²è®°å½•'),(307,'discount_amount','Discount Amount','à¦¹à§à¦°à¦¾à¦¸à¦•à§ƒà¦¤ à¦®à§à¦²à§à¦¯','Ù…Ù‚Ø¯Ø§Ø± Ø§Ù„Ø®ØµÙ…','Montant de l\'escompte','à¤›à¥‚à¤Ÿ à¤°à¤¾à¤¶à¤¿','jumlah diskon','totale sconto','å‰²å¼•é¡','í• ì¸ ê¸ˆì•¡','korting hoeveelheid','Valor do desconto','à¸ˆà¸³à¸™à¸§à¸™à¸ªà¹ˆà¸§à¸™à¸¥à¸”','indirim tutarÄ±','ÚˆØ³Ú©Ø§Ø¤Ù†Ù¹ Ø±Ù‚Ù…','æŠ˜æ‰£é‡‘é¢'),(308,'invoice_list','Invoice List','à¦šà¦¾à¦²à¦¾à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ÙØ§ØªÙˆØ±Ø©','Liste des factures','à¤šà¤¾à¤²à¤¾à¤¨ à¤¸à¥‚à¤šà¥€','Daftar faktur','Elenco delle fatture','è«‹æ±‚æ›¸ä¸€è¦§','ì†¡ìž¥ ëª©ë¡','Factuurlijst','Lista de faturamento','à¸£à¸²à¸¢à¸à¸²à¸£à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰','Fatura listesi','Ø±Ø³ÛŒØ¯ Ú©ÛŒ ÙÛØ±Ø³Øª','å‘ç¥¨æ¸…å•'),(309,'partly_paid','Partly Paid','à¦†à¦‚à¦¶à¦¿à¦• à¦ªà¦°à¦¿à¦¶à§‹à¦§à¦¿à¦¤','ØªØ¯ÙØ¹ Ø¬Ø²Ø¦ÙŠØ§','En partie payÃ©','à¤†à¤‚à¤¶à¤¿à¤• à¤°à¥‚à¤ª à¤¸à¥‡ à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¤¿à¤¯à¤¾','Sebagian dibayar','Parzialmente pagato','éƒ¨åˆ†çš„ã«æ”¯æ‰•ã‚ã‚ŒãŸ','ë¶€ë¶„ì ìœ¼ë¡œ ì§€ë¶ˆ ëœ','Gedeeltelijk betaald','Parcialmente pago','à¸ˆà¹ˆà¸²à¸¢à¸šà¸²à¸‡à¸ªà¹ˆà¸§à¸™','KÄ±smen Ã¶denmiÅŸ','Ø¬Ø²ÙˆÛŒ Ø·ÙˆØ± Ù¾Ø± Ø§Ø¯Ø§ Ú©ÛŒØ§','éƒ¨åˆ†æ”¯ä»˜'),(310,'fees_list','Fees List','à¦«à¦¿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø±Ø³ÙˆÙ…','Liste des frais','à¤¶à¥à¤²à¥à¤• à¤¸à¥‚à¤šà¥€','Daftar biaya','Lista dei diritti','æ‰‹æ•°æ–™ãƒªã‚¹ãƒˆ','ìˆ˜ìˆ˜ë£Œ ëª©ë¡','Kostenlijst','Lista de tarifas','à¸£à¸²à¸¢à¸à¸²à¸£à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret listesi','ÙÛŒØ³ Ú©ÛŒ ÙÛØ±Ø³Øª','è´¹ç”¨æ¸…å•'),(311,'voucher_id','Voucher ID','à¦­à¦‰à¦šà¦¾à¦° à¦†à¦‡à¦¡à¦¿','Ù…Ø¹Ø±Ù Ø§Ù„Ù‚Ø³ÙŠÙ…Ø©','Id de bon','à¤µà¤¾à¤‰à¤šà¤° à¤†à¤ˆà¤¡à¥€','voucher Id','Voucher Id','ãƒã‚¦ãƒãƒ£ãƒ¼ID','ì¿ í° ID','Voucher id','Id do vale','à¸£à¸«à¸±à¸ªà¸šà¸±à¸•à¸£à¸à¸³à¸™à¸±à¸¥','Kupon kimliÄŸi','ÙˆØ§Ø¤Ú†Ø± Ú©ÛŒ Ø´Ù†Ø§Ø®Øª','å‡­è¯ID'),(312,'transaction_date','Transaction Date','à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„ØµÙÙ‚Ø©','transaction date','à¤²à¥‡à¤¨ - à¤¦à¥‡à¤¨ à¤•à¥€ à¤¤à¤¾à¤°à¥€à¤–','tanggal transaksi','Data di transazione','å–å¼•æ—¥å–å¼•æ—¥','ê±°ëž˜ ë‚ ì§œ','transactie datum','Data da transaÃ§Ã£o','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸—à¸³à¸£à¸²à¸¢à¸à¸²à¸£','Ä°ÅŸlem Tarihi','Ù¹Ø±Ø§Ù†Ø²ÛŒÚ©Ø´Ù† Ú©ÛŒ ØªØ§Ø±ÛŒØ®','äº¤æ˜“æ—¥æœŸ'),(313,'admission_date','Admission Date','à¦­à¦°à§à¦¤à¦¿à¦° à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ù‚Ø¨ÙˆÙ„','admission date','à¤ªà¥à¤°à¤µà¥‡à¤¶ à¤¤à¤¿à¤¥à¤¿','Tanggal masuk','data di ammissione','å…¥å­¦æ—¥','ìž…í•™ì‹œê¸°','toelatingsdatum','data de admissÃ£o','à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸‚à¹‰à¸²à¹€à¸£à¸µà¸¢à¸™','Kabul tarihi','Ø¯Ø§Ø®Ù„Û Ú©ÛŒ ØªØ§Ø±ÛŒØ®','å…¥å­¦æ—¥æœŸ'),(314,'user_status','User Status','à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦° à¦¸à§à¦¥à¦¿à¦¤à¦¿','Ø­Ø§Ù„Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Statut de l\'utilisateur','à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤•à¥€ à¤¸à¥à¤¥à¤¿à¤¤à¤¿','User Status','Stato dell\'utente','ãƒ¦ãƒ¼ã‚¶ãƒ¼ã‚¹ãƒ†ãƒ¼ã‚¿ã‚¹','ì‚¬ìš©ìž ìƒíƒœ','Gebruikers status','Status do usuÃ¡rio','à¸ªà¸–à¸²à¸™à¸°à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰','KullanÄ±cÄ± durumu','ØµØ§Ø±Ù Ú©ÛŒ Ø­ÛŒØ«ÛŒØª','ç”¨æˆ·çŠ¶æ€'),(315,'nationality','Nationality','à¦œà¦¾à¦¤à§€à¦¯à¦¼à¦¤à¦¾','Ø¬Ù†Ø³ÙŠØ©','nationalitÃ©','à¤°à¤¾à¤·à¥à¤Ÿà¥à¤°à¥€à¤¯à¤¤à¤¾','kebangsaan','nazionalitÃ ','å›½ç±','êµ­ì ','nationaliteit','nacionalidade','à¸ªà¸±à¸à¸Šà¸²à¸•à¸´','milliyet','Ù‚ÙˆÙ…ÛŒØª','å›½ç±'),(316,'register_no','Register No','à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà¦¾à¦° à¦¨à¦‚','Ø³Ø¬Ù„ Ø±Ù‚Ù…','Inscrivez-vous non','à¤°à¤œà¤¿à¤¸à¥à¤Ÿà¤° à¤¨à¤‚','Daftar no','Registrare n','ç™»éŒ²ç•ªå·','ë“±ë¡ ë²ˆí˜¸','Registratienummer','NÃ£o registre','à¸¥à¸‡à¸—à¸°à¹€à¸šà¸µà¸¢à¸™à¹„à¸¡à¹ˆ','KayÄ±t yok','Ø±Ø¬Ø³Ù¹Ø± Ù†Ù…Ø¨Ø±','æ³¨å†Œå·'),(317,'first_name','First Name','à¦ªà§à¦°à¦¥à¦® à¦¨à¦¾à¦®','Ø§Ù„Ø§Ø³Ù… Ø§Ù„Ø§ÙˆÙ„','PrÃ©nom','à¤ªà¤¹à¤²à¤¾ à¤¨à¤¾à¤®','nama depan','nome di battesimo','ãƒ•ã‚¡ãƒ¼ã‚¹ãƒˆãƒãƒ¼ãƒ ','ì´ë¦„','Voornaam','primeiro nome','à¸Šà¸·à¹ˆà¸­à¸ˆà¸£à¸´à¸‡','Ä°sim','Ù¾ÛÙ„Ø§ Ù†Ø§Ù…','åå­—'),(318,'last_name','Last Name','à¦¨à¦¾à¦®à§‡à¦° à¦¶à§‡à¦·à¦¾à¦‚à¦¶','Ø§Ù„ÙƒÙ†ÙŠØ©','nom de famille','à¤…à¤‚à¤¤à¤¿à¤® à¤¨à¤¾à¤®','nama keluarga','cognome','è‹—å­—','ì„±','achternaam','Ãºltimo nome','à¸™à¸²à¸¡à¸ªà¸à¸¸à¸¥','soyadÄ±','Ø¢Ø®Ø±ÛŒ Ù†Ø§Ù…','å§“'),(319,'state','State','à¦°à¦¾à¦·à§à¦Ÿà§à¦°','Ø­Ø§Ù„Ø©','Etat','à¤°à¤¾à¤œà¥à¤¯','negara','stato','çŠ¶æ…‹','ìƒíƒœ','staat','Estado','à¸ªà¸–à¸²à¸™à¸°','belirtmek, bildirmek','Ø­Ø§Ù„Øª','å·ž'),(320,'transport_vehicle_no','Transport Vehicle No','à¦ªà¦°à¦¿à¦¬à¦¹à¦¨ à¦¯à¦¾à¦¨à¦¬à¦¾à¦¹à¦¨ à¦¨à¦‚','Ø±Ù‚Ù… Ù…Ø±ÙƒØ¨Ø© Ø§Ù„Ù†Ù‚Ù„','VÃ©hicule de transport no','à¤Ÿà¥à¤°à¤¾à¤‚à¤¸à¤ªà¥‹à¤°à¥à¤Ÿ à¤µà¥à¤¹à¥€à¤•à¤² à¤¨à¤‚','Kendaraan Transportasi No','Veicolo di trasporto n','è¼¸é€è»Šä¸¡','ìš´ì†¡ ì°¨ëŸ‰ ë²ˆí˜¸','Transportvoertuig Nr','Transport Vehicle No','à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°à¸‚à¸™à¸ªà¹ˆà¸‡','TaÅŸÄ±ma AracÄ± No','Ù¹Ø±Ø§Ù†Ø³Ù¾ÙˆØ±Ù¹ Ú¯Ø§Ú‘ÛŒØ§Úº Ù†Ù…Ø¨Ø±','è¿è¾“è½¦è¾†å·'),(321,'percent','Percent','à¦¶à¦¤à¦¾à¦‚à¦¶','Ù†Ø³Ø¨Ù‡ Ù…Ø¦ÙˆÙŠÙ‡','pour cent','à¤ªà¥à¤°à¤¤à¤¿à¤¶à¤¤','persen','per cento','ãƒ‘ãƒ¼ã‚»ãƒ³ãƒˆ','í¼ì„¼íŠ¸','procent','por cento','à¹€à¸›à¸­à¸£à¹Œà¹€à¸‹à¹‡à¸™à¸•à¹Œ','yÃ¼zde','ÙÛŒØµØ¯','ç™¾åˆ†'),(322,'average_result','Average Result','à¦—à¦¡à¦¼ à¦«à¦²à¦¾à¦«à¦²','Ù…ØªÙˆØ³Ø· â€‹â€‹Ø§Ù„Ù†ØªÙŠØ¬Ø©','RÃ©sultat moyen','à¤”à¤¸à¤¤ à¤ªà¤°à¤¿à¤£à¤¾à¤®','Hasil rata-rata','Risultato medio','å¹³å‡çµæžœ','í‰ê·  ê²°ê³¼','Gemiddeld resultaat','Resultado mÃ©dio','à¸œà¸¥à¹€à¸‰à¸¥à¸µà¹ˆà¸¢','Ortalama sonuÃ§','Ø§ÙˆØ³Ø· Ù†ØªÛŒØ¬Û','å¹³å‡ç»“æžœ'),(323,'student_category','Student Category','à¦›à¦¾à¦¤à§à¦° à¦¬à¦¿à¦­à¦¾à¦—','Ø·Ø§Ù„Ø¨','CatÃ©gorie Ã©tudiante','à¤›à¤¾à¤¤à¥à¤° à¤¶à¥à¤°à¥‡à¤£à¥€','Kategori siswa','Categoria studente','å­¦ç”Ÿã‚«ãƒ†ã‚´ãƒª','í•™ìƒ ë¶„ë¥˜','Studentencategorie','Categoria de estudante','à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆà¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²','Ã–ÄŸrenci kategorisi','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©ÛŒ Ù‚Ø³Ù…','å­¦ç”Ÿç±»åˆ«'),(324,'category_name','Category Name','à¦¬à¦¿à¦­à¦¾à¦— à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„ØªØµÙ†ÙŠÙ','Nom de catÃ©gorie','à¤¶à¥à¤°à¥‡à¤£à¥€ à¤¨à¤¾à¤®','Nama kategori','Nome della categoria','ç¨®åˆ¥å','ì¹´í…Œê³ ë¦¬ ì´ë¦„','categorie naam','Nome da Categoria','à¸Šà¸·à¹ˆà¸­à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆ','Kategori adÄ±','Ø²Ù…Ø±Û Ú©Ø§ Ù†Ø§Ù…','åˆ†ç±»åç§°'),(325,'category_list','Category List','à¦¬à¦¿à¦­à¦¾à¦— à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ÙØ¦Ø§Øª','Liste des catÃ©gories','à¤¶à¥à¤°à¥‡à¤£à¥€ à¤¸à¥‚à¤šà¥€','Daftar kategori','Elenco categorie','ã‚«ãƒ†ã‚´ãƒªãƒªã‚¹ãƒˆ','ì¹´í…Œê³ ë¦¬ ëª©ë¡','Categorie lijst','Lista de categorias','à¸£à¸²à¸¢à¸à¸²à¸£à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆ','Kategori listesi','Ø²Ù…Ø±Û Ú©ÛŒ ÙÛØ±Ø³Øª','ç±»åˆ«åˆ—è¡¨'),(326,'please_select_student_first','Please Select Students First','à¦ªà§à¦°à¦¥à¦®à§‡ à¦›à¦¾à¦¤à§à¦°à¦¦à§‡à¦° à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ø§Ù„Ø·Ù„Ø§Ø¨ Ø£ÙˆÙ„Ø§','S\'il vous plaÃ®t sÃ©lectionner les Ã©tudiants de premiÃ¨re',' à¤•à¥ƒà¤ªà¤¯à¤¾ à¤ªà¤¹à¤²à¥‡ à¤›à¤¾à¤¤à¥à¤°à¥‹à¤‚ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','KÃ©rjÃ¼k, elÅ‘szÃ¶r vÃ¡lassza ki a diÃ¡kokat','Per favore seleziona gli studenti prima','æœ€åˆã«ç”Ÿå¾’ã‚’é¸æŠžã—ã¦ãã ã•ã„','ë¨¼ì € í•™ìƒì„ ì„ íƒí•˜ì‹­ì‹œì˜¤.','Kies alsjeblieft eerst de leerlingen','Selecione os alunos primeiro','à¹‚à¸›à¸£à¸”à¹€à¸¥à¸·à¸­à¸à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™à¸à¹ˆà¸­à¸™','LÃ¼tfen Ã¶nce Ã¶ÄŸrencileri seÃ§','Ø³Ø¨ Ø³Û’ Ù¾ÛÙ„Û’ Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù…ÙˆÚº Ú©Ùˆ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','è¯·å…ˆé€‰æ‹©å­¦ç”Ÿ'),(327,'designation','Designation','à¦‰à¦ªà¦¾à¦§à¦¿','ØªØ¹ÙŠÙŠÙ†','La dÃ©signation','à¤ªà¤¦','Penunjukan','Designazione','æŒ‡å®š','ì§€ì •','Aanwijzing','DesignaÃ§Ã£o','à¸à¸²à¸£à¹à¸•à¹ˆà¸‡à¸•à¸±à¹‰à¸‡','tayin','Ø¹ÛØ¯Û','æŒ‡å®š'),(328,'qualification','Qualification','à¦¯à§‹à¦—à§à¦¯à¦¤à¦¾','Ø§Ù„Ù…Ø¤Ù‡Ù„','Qualification','à¤¯à¥‹à¤—à¥à¤¯à¤¤à¤¾','Kualifikasi','Qualificazione','è³‡æ ¼','ìžê²©','Kwalificatie','QualificaÃ§Ã£o','à¸„à¸¸à¸“à¸ªà¸¡à¸šà¸±à¸•à¸´','VasÄ±f','Ø§ÛÙ„ÛŒØª','åˆæ ¼'),(329,'account_deactivated','Account Deactivated','à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦¨à¦¿à¦·à§à¦•à§à¦°à¦¿à¦¯à¦¼','ØªÙ… Ø¥Ù„ØºØ§Ø¡ ØªÙ†Ø´ÙŠØ· Ø§Ù„Ø­Ø³Ø§Ø¨','Compte dÃ©sactivÃ©','à¤–à¤¾à¤¤à¤¾ à¤¨à¤¿à¤·à¥à¤•à¥à¤°à¤¿à¤¯','Akun dinonaktifkan','Account disattivato','ã‚¢ã‚«ã‚¦ãƒ³ãƒˆãŒç„¡åŠ¹ã«ãªã£ãŸ','ê³„ì •ì´ ë¹„í™œì„±í™”ë˜ì—ˆìŠµë‹ˆë‹¤.','Account gedeactiveerd','Conta desativada','à¸›à¸´à¸”à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸šà¸±à¸à¸Šà¸µà¹à¸¥à¹‰à¸§','Hesap devre dÄ±ÅŸÄ±','Ø§Ú©Ø§Ø¤Ù†Ù¹ ØºÛŒØ± ÙØ¹Ø§Ù„ ÛÛ’','å¸æˆ·å·²åœç”¨'),(330,'account_activated','Account Activated','à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼','ØªÙ… ØªÙ†Ø´ÙŠØ· Ø§Ù„Ø­Ø³Ø§Ø¨','Compte activÃ©','à¤–à¤¾à¤¤à¥‡ à¤¸à¤•à¥à¤°à¤¿à¤¯','Akun diaktifkan','Account attivato','Account attivato','ê³„ì • í™œì„±í™” ë¨','Account geactiveerd','Conta ativada','à¹€à¸›à¸´à¸”à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸šà¸±à¸à¸Šà¸µà¹à¸¥à¹‰à¸§','Hesap etkinleÅŸtirildi','Ø§Ú©Ø§Ø¤Ù†Ù¹ Ú†Ø§Ù„Ùˆ','å¸æˆ·å·²æ¿€æ´»'),(331,'designation_list','Designation List','à¦ªà¦¦à¦¬à§€ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ØªØ¹ÙŠÙŠÙ†','Liste de dÃ©signation','à¤ªà¤¦à¤¨à¤¾à¤® à¤¸à¥‚à¤šà¥€','Daftar Penunjukan','Elenco descrizioni','æŒ‡å®šãƒªã‚¹ãƒˆ','ì§€ì • ëª…ë¶€','Benaming','Lista de designaÃ§Ã£o','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­','Belirleme Listesi','Ø¹ÛØ¯Û Ú©ÛŒ ÙÛØ±Ø³Øª','åå•'),(332,'joining_date','Joining Date','à¦¯à§‹à¦—à¦¦à¦¾à¦¨ à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø§Ù†Ø¶Ù…Ø§Ù…','Date d\'inscription','à¤•à¤¾à¤°à¥à¤¯à¤—à¥à¤°à¤¹à¤£ à¤¤à¤¿à¤¥à¤¿','Tanggal Bergabung','Data di adesione','å‚åŠ æ—¥','ê°€ìž… ë‚ ì§œ','Aansluitingsdatum','Data de ingresso','à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡','BirleÅŸtirme Tarihi','ØªØ§Ø±ÛŒØ® Ù…ÛŒÚº Ø´Ù…ÙˆÙ„ÛŒØª','å…¥èŒæ—¥æœŸ'),(333,'relation','Relation','à¦¸à¦®à§à¦ªà¦°à§à¦•','Ø¹Ù„Ø§Ù‚Ø©','Relation','à¤°à¤¿à¤¶à¥à¤¤à¤¾','Hubungan','Relazione','é–¢ä¿‚','ê´€ê³„','Relatie','RelaÃ§Ã£o','à¸„à¸§à¸²à¸¡à¸ªà¸±à¸¡à¸žà¸±à¸™à¸˜à¹Œ','iliÅŸki','ØªØ¹Ù„Ù‚Ø§Øª','å…³ç³»'),(334,'father_name','Father Name','à¦¬à¦¾à¦¬à¦¾à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ø£Ø¨','nom du pÃ¨re','à¤ªà¤¿à¤¤à¤¾ à¤•à¤¾ à¤¨à¤¾à¤®','nama ayah','nome del padre','çˆ¶ã®åå‰','ì•„ë²„ì§€ì˜ ì´ë¦„','Vader naam','nome do pai','à¸Šà¸·à¹ˆà¸­à¸šà¸´à¸”à¸²','baba adÄ±','ÙˆØ§Ù„Ø¯ Ú©Ø§ Ù†Ø§Ù…','çˆ¶äº²å§“å'),(335,'librarian_list','Librarian List','à¦—à§à¦°à¦¨à§à¦¥à¦¾à¦—à¦¾à¦°à¦¿à¦• à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø£Ù…ÙŠÙ† Ø§Ù„Ù…ÙƒØªØ¨Ø©','Liste des bibliothÃ©caires','à¤²à¤¾à¤‡à¤¬à¥à¤°à¥‡à¤°à¤¿à¤¯à¤¨ à¤²à¤¿à¤¸à¥à¤Ÿ','Daftar Pustakawan','Lista bibliotecaria','å›³æ›¸é¤¨å“¡ãƒªã‚¹ãƒˆ','ì‚¬ì„œ ëª©ë¡','Bibliothecarislijst','Lista de bibliotecÃ¡rios','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸šà¸£à¸£à¸“à¸²à¸£à¸±à¸à¸©à¹Œ','KÃ¼tÃ¼phaneci listesi','Ù„Ø§Ø¦Ø¨Ø±ÛŒØ±ÛŒ Ú©ÛŒ ÙÛØ±Ø³Øª','å›¾ä¹¦é¦†å‘˜åå•'),(336,'class_numeric','Class Numeric','à¦•à§à¦²à¦¾à¦¸ à¦¸à¦¾à¦‚à¦–à§à¦¯à¦¿à¦•','ÙØ¦Ø© Ø±Ù‚Ù…ÙŠØ©','Classe NumÃ©rique','à¤•à¤•à¥à¤·à¤¾ à¤¸à¤‚à¤–à¥à¤¯à¤¾à¤¤à¥à¤®à¤•','Kelas Numerik','Class Numerico','ã‚¯ãƒ©ã‚¹æ•°å€¤','í´ëž˜ìŠ¤ ìˆ«ìž','Class Numeric','Classe NumÃ©rica','Class Numeric','SayÄ±sal SÄ±nÄ±f','Ú©Ù„Ø§Ø³ Ù†Ù…Ø¨Ø±','ç±»æ•°å­—'),(337,'maximum_students','Maximum Students','à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦›à¦¾à¦¤à§à¦°','Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ù‚ØµÙ‰ Ù„Ù„Ø·Ù„Ø§Ø¨','Maximum d\'Ã©tudiants','à¤…à¤§à¤¿à¤•à¤¤à¤® à¤›à¤¾à¤¤à¥à¤°','Siswa Maksimal','Studenti massimi','æœ€å¤§ç”Ÿå¾’æ•°','ìµœëŒ€ í•™ìƒìˆ˜','Maximale Studenten','Alunos mÃ¡ximos','à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™à¸ªà¸¹à¸‡à¸ªà¸¸à¸”','Maksimum Ã–ÄŸrenci','Ø²ÛŒØ§Ø¯Û Ø³Û’ Ø²ÛŒØ§Ø¯Û Ø·Ù„Ø¨Ø§Ø¡','æœ€å¤§å­¦ç”Ÿ'),(338,'class_room','Class Room','à¦•à§à¦²à¦¾à¦¸ à¦°à§à¦®à§‡','Ù‚Ø§Ø¹Ø© Ø§Ù„Ø¯Ø±Ø§Ø³Ø©','Salle de classe','à¤•à¤•à¥à¤·à¤¾ à¤•à¥‡ à¤•à¤®à¤°à¥‡','kelas','aula','ã‚¯ãƒ©ã‚¹ãƒ«ãƒ¼ãƒ ','êµì‹¤','Klaslokaal','Sala de aula','à¸«à¹‰à¸­à¸‡à¹€à¸£à¸µà¸¢à¸™','SÄ±nÄ±f oda','Ú©Ù„Ø§Ø³ Ø±ÙˆÙ…','è¯¾å®¤'),(339,'pass_mark','Pass Mark','à¦ªà¦¾à¦¶ à¦¨à¦®à§à¦¬à¦°','Ø¹Ù„Ø§Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','moyenne','à¤‰à¤¤à¥€à¤°à¥à¤£à¤¾à¤‚à¤•','kelulusan','punteggio minimo','ãƒ‘ã‚¹ãƒžãƒ¼ã‚¯','í†µê³¼ í‘œì‹œ','Pass markeren','Marca de aprovaÃ§Ã£o','à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸œà¹ˆà¸²à¸™','GeÃ§me notu','Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ú©Û’ Ù†Ù…Ø¨Ø±','åˆæ ¼æ ‡å¿—'),(340,'exam_time','Exam Time (Min)','à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦¸à¦®à¦¯à¦¼ (à¦®à¦¿à¦¨à¦¿à¦Ÿ)','ÙˆÙ‚Øª Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†','Temps d\'examen (min)','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤•à¤¾ à¤¸à¤®à¤¯','waktu ujian','Tempo di esame','è©¦é¨“æ™‚é–“','ì‹œí—˜ ì‹œê°„','examentijd','hora da prova','à¹€à¸§à¸¥à¸²à¸ªà¸­à¸š','sÄ±nav zamanÄ±','Ø§Ù…ØªØ­Ø§Ù† Ú©Ø§ ÙˆÙ‚Øª','è€ƒè¯•æ—¶é—´'),(341,'time','Time','à¦¸à¦®à¦¯à¦¼','Ø²Ù…Ù†','temps','à¤ªà¤¹à¤°','waktu','tempo','æ™‚é–“','ì‹œê°','tijd','Tempo','à¹€à¸§à¸¥à¸²','zaman','ÙˆÙ‚Øª','æ—¶é—´'),(342,'subject_code','Subject Code','à¦¬à¦¿à¦·à¦¯à¦¼ à¦•à§‹à¦¡','Ø±Ù…Ø² Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹','Code du sujet','à¤µà¤¿à¤·à¤¯ à¤¸à¤‚à¤¹à¤¿à¤¤à¤¾','Kode subjek','Codice oggetto','ãƒ†ãƒ¼ãƒžã‚³ãƒ¼ãƒ‰','ì œëª© ì½”ë“œ','Vakcode','CÃ³digo do assunto','à¸£à¸«à¸±à¸ªà¸«à¸±à¸§à¹€à¸£à¸·à¹ˆà¸­à¸‡','Konu Kodu','Ù…ÙˆØ¶ÙˆØ¹ Ú©Ø§ Ú©ÙˆÚˆ','ä¸»é¢˜ä»£ç '),(343,'full_mark','Full Mark','à¦ªà§à¦°à§‹ à¦¨à¦®à§à¦¬à¦°','Ø¯Ø±Ø¬Ø© ÙƒØ§Ù…Ù„Ø©','Pleine marque','à¤ªà¥‚à¤°à¥à¤£ à¤…à¤‚à¤•','Tanda penuh','Full Mark','æº€ç‚¹','ë§Œì ','Full Mark','Nota mÃ¡xima','à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¹€à¸•à¹‡à¸¡à¸£à¸¹à¸›à¹à¸šà¸š','Tam not','Ù…Ú©Ù…Ù„ Ù†Ø´Ø§Ù†','æ»¡åˆ†'),(344,'subject_type','Subject Type','à¦¬à¦¿à¦·à¦¯à¦¼ à¦ªà§à¦°à¦•à¦¾à¦°','Ù†ÙˆØ¹ Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹','Type de sujet','à¤µà¤¿à¤·à¤¯ à¤ªà¥à¤°à¤•à¤¾à¤°','Tipe subjek','Tipo di soggetto','ã‚µãƒ–ã‚¸ã‚§ã‚¯ãƒˆã‚¿ã‚¤ãƒ—','ì£¼ì œ ìœ í˜•','Onderwerp type','Tipo de assunto','à¸›à¸£à¸°à¹€à¸ à¸—à¸‚à¸­à¸‡à¹€à¸£à¸·à¹ˆà¸­à¸‡','Konu tÃ¼rÃ¼','Ù…ÙˆØ¶ÙˆØ¹ Ú©ÛŒ Ù‚Ø³Ù…','ä¸»é¢˜ç±»åž‹'),(345,'date_of_publish','Date Of Publish','à¦ªà§à¦°à¦•à¦¾à¦¶à§‡à¦° à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ù†Ø´Ø±','Date de publication','à¤ªà¥à¤°à¤•à¤¾à¤¶à¤¿à¤¤ à¤•à¥€ à¤¤à¤¿à¤¥à¤¿','Tanggal Publikasikan','Data di pubblicazione','å‡ºç‰ˆã®æ—¥ä»˜','ê²Œì‹œ ë‚ ì§œ','Datum van publicatie','Data de publicaÃ§Ã£o','à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸œà¸¢à¹à¸žà¸£à¹ˆ','YayÄ±n Tarihi','Ø´Ø§Ø¦Ø¹ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','å‘å¸ƒæ—¥æœŸ'),(346,'file_name','File Name','à¦«à¦¾à¦‡à¦²à§‡à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…Ù„Ù','Nom de fichier','à¤«à¤¼à¤¾à¤‡à¤² à¤•à¤¾ à¤¨à¤¾à¤®','Nama file','Nome del file','ãƒ•ã‚¡ã‚¤ãƒ«å','íŒŒì¼ ì´ë¦„','Bestandsnaam','Nome do arquivo','à¸Šà¸·à¹ˆà¸­à¹„à¸Ÿà¸¥à¹Œ','Dosya adÄ±','ÙØ§Ø¦Ù„ Ú©Ø§ Ù†Ø§Ù…','æ–‡ä»¶å'),(347,'students_list','Students List','à¦›à¦¾à¦¤à§à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø·Ù„Ø§Ø¨','Liste des Ã©tudiants','à¤›à¤¾à¤¤à¥à¤° à¤¸à¥‚à¤šà¥€','Daftar siswa','Lista degli studenti','å­¦ç”Ÿãƒªã‚¹ãƒˆ','í•™ìƒ ëª©ë¡','Studentenlijst','Lista de Estudantes','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™','Ã–ÄŸrenci Listesi','Ø·Ù„Ø¨Ø§Ø¡ Ú©ÛŒ ÙÛØ±Ø³Øª','å­¦ç”Ÿåå•'),(348,'start_date','Start Date','à¦¶à§à¦°à§à¦° à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¨Ø¯Ø¡','Date de dÃ©but','à¤†à¤°à¤‚à¤­ à¤•à¤°à¤¨à¥‡ à¤•à¥€ à¤¤à¤¿à¤¥à¤¿','Mulai tanggal','Data d\'inizio','é–‹å§‹æ—¥','ì‹œìž‘ ë‚ ì§œ','Begin datum','Data de inÃ­cio','à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™','BaÅŸlangÄ±Ã§ â€‹â€‹tarihi','Ø´Ø±ÙˆØ¹ Ú©Ø±Ù†Û’ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','å¼€å§‹æ—¥æœŸ'),(349,'end_date','End Date','à¦¶à§‡à¦· à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø§Ù†ØªÙ‡Ø§Ø¡','End Date','à¤…à¤‚à¤¤à¤¿à¤® à¤¤à¤¿à¤¥à¤¿','Tanggal akhir','Data di fine','çµ‚äº†æ—¥','ì¢…ë£Œì¼','Einddatum','Data final','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸ªà¸´à¹‰à¸™à¸ªà¸¸à¸”','BitiÅŸ tarihi','Ø¢Ø®Ø±ÛŒ ØªØ§Ø±ÛŒØ®','ç»“æŸæ—¥æœŸ'),(350,'term_name','Term Name','à¦Ÿà¦¾à¦°à§à¦® à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…Ø¯Ù‰','Nom du terme','à¤¶à¤¬à¥à¤¦ à¤•à¤¾ à¤¨à¤¾à¤®','Nama istilah','Termine nome','ç”¨èªžã®åå‰','í•™ê¸°ëª…','Termnaam','Nome do termo','à¸Šà¸·à¹ˆà¸­à¸¢à¹ˆà¸­','DÃ¶nem adÄ±','Ø§ØµØ·Ù„Ø§Ø­ Ù†Ø§Ù…','æœ¯è¯­åç§°'),(351,'grand_total','Grand Total','à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ','Ø§Ù„Ù…Ø¨Ù„Øº Ø§Ù„Ø¥Ø¬Ù…Ø§Ù„ÙŠ','Grand Total','à¤•à¥à¤² à¤¯à¥‹à¤—','Total keseluruhan','Somma totale','ç·è¨ˆ','ì´ í•©ê³„','Eindtotaal','Total geral','à¸œà¸¥à¸£à¸§à¸¡à¸—à¸±à¹‰à¸‡à¸ªà¸´à¹‰à¸™','Genel Toplam','Ù…Ø¬Ù…ÙˆØ¹ÛŒ Ø¹Ø¯Ø¯','ç´¯è®¡'),(352,'result','Result','à¦«à¦²','Ù†ØªÙŠØ¬Ø©','RÃ©sultat','à¤ªà¤°à¤¿à¤£à¤¾à¤®','Hasil','Risultato','çµæžœ','ê²°ê³¼','Resultaat','Resultado','à¸œà¸¥','SonuÃ§','Ù†ØªÛŒØ¬Û','ç»“æžœ'),(353,'books_list','Books List','à¦¬à¦‡ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ÙƒØªØ¨','Liste des livres','à¤ªà¥à¤¸à¥à¤¤à¤•à¥‡à¤‚ à¤¸à¥‚à¤šà¥€','Daftar Buku','Elenco libri','æ›¸ç±ä¸€è¦§','ë„ì„œ ëª©ë¡','Boekenlijst','Lista de livros','à¸£à¸²à¸¢à¸à¸²à¸£à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','Kitap Listesi','Ú©ØªØ¨ Ú©ÛŒ ÙÛØ±Ø³Øª','å›¾ä¹¦åˆ—è¡¨'),(354,'book_isbn_no','Book ISBN No','à¦¬à¦‡ ISBN à¦¨à¦‚','ÙƒØªØ§Ø¨ Ø±Ù‚Ù… Ø¥ÙŠØ³Ø¨Ù† Ø±Ù‚Ù…','Livre numÃ©ro ISBN','à¤ªà¥à¤¸à¥à¤¤à¤• à¤†à¤ˆà¤à¤¸à¤¬à¥€à¤à¤¨ à¤¨à¤‚à¤¬à¤°','Buku ISBN no','Libro ISBN n','æœ¬ISBN no','ISBN no book','Boek ISBN nr','ISBN do livro','à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­ ISBN no','Kitap ISBN no','Ú©ØªØ§Ø¨ ISBN Ù†Ù…Ø¨Ø±','ä¹¦ISBNå·'),(355,'total_stock','Total Stock','à¦®à§‹à¦Ÿ à¦¸à§à¦Ÿà¦•','Ø¥Ø¬Ù…Ø§Ù„ÙŠ Ø§Ù„Ø£Ø³Ù‡Ù…','Total Stock','à¤•à¥à¤² à¤¸à¥à¤Ÿà¥‰à¤•','Jumlah Saham','Totale azioni','ç·åœ¨åº«','ì´ ì£¼ì‹','Totaal voorraad','Total Stock','à¸£à¸§à¸¡à¸ªà¸•à¹‡à¸­à¸„','Toplam Stok','Ú©Ù„ Ø§Ø³Ù¹Ø§Ú©','æ€»åº“å­˜'),(356,'issued_copies','Issued Copies','à¦‡à¦¸à§à¦¯à§ à¦•à¦°à¦¾ à¦•à¦ªà¦¿','ØªÙ… Ø¥ØµØ¯Ø§Ø± Ù†Ø³Ø®','Copies Ã©mises','à¤œà¤¾à¤°à¥€ à¤•à¥€ à¤—à¤ˆ à¤ªà¥à¤°à¤¤à¤¿à¤¯à¤¾à¤‚','Salinan yang Diterbitkan','Copie emesse','ç™ºè¡Œã•ã‚ŒãŸã‚³ãƒ”ãƒ¼','ë°œí–‰ ëœ ì‚¬ë³¸','Uitgegeven kopieÃ«n','CÃ³pias Emitidas','à¸­à¸­à¸à¸ªà¸³à¹€à¸™à¸²','Ã‡Ä±karÄ±lan Kopyalar','ØªØ§Ø±ÛŒØ® Ø§Ø´Ø§Ø¹Øª Ø´Ø¯Û','å‘è¡Œå‰¯æœ¬'),(357,'publisher','Publisher','à¦ªà§à¦°à¦•à¦¾à¦¶à¦•','Ø§Ù„Ù†Ø§Ø´Ø±','Ã©diteur','à¤ªà¥à¤°à¤•à¤¾à¤¶à¤•','penerbit','editore','å‡ºç‰ˆç¤¾','ë°œí–‰ìž','uitgever','editor','à¸ªà¸³à¸™à¸±à¸à¸žà¸´à¸¡à¸žà¹Œ','YayÄ±mcÄ±','Ù¾Ø¨Ù„ÛŒØ´Ø±','å‡ºç‰ˆè€…'),(358,'books_issue','Books Issue','à¦¬à¦‡ à¦‡à¦¸à§à¦¯à§','ÙƒØªØ§Ø¨ Ø§Ù„Ù…Ø³Ø£Ù„Ø©','ProblÃ¨me de livre','à¤ªà¥à¤¸à¥à¤¤à¤• à¤…à¤‚à¤•','Penerbitan buku','Emissione del libro','æ›¸ç±ã®å•é¡Œ','ë„ì„œ ë¬¸ì œ','Boekprobleem','Problema do livro','à¸‰à¸šà¸±à¸šà¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','Kitap NumarasÄ±','Ú©ØªØ§Ø¨ Ú©Ø§ Ù…Ø³Ø¦Ù„Û','å›¾ä¹¦é—®é¢˜'),(359,'user','User','à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€','Ø§Ù„Ù…Ø³ØªØ¹Ù…Ù„','Utilisateur','à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾','Pengguna','Utente','ãƒ¦ãƒ¼ã‚¶ãƒ¼','ì‚¬ìš©ìž','Gebruiker','Do utilizador','à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¸‡à¸²à¸™','kullanÄ±cÄ±','ØµØ§Ø±Ù','ç”¨æˆ·'),(360,'fine','Fine','à¦œà¦°à¦¿à¦®à¦¾à¦¨à¦¾','ØºØ±Ø§Ù…Ø©','Bien','à¤ à¥€à¤•','Baik','Fine','ãƒ•ã‚¡ã‚¤ãƒ³','ë²Œê¸ˆ','denique','Bem','à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”','Ä°nce','Ù¹Ú¾ÛŒÚ©','ç²¾ç»†'),(361,'pending','Pending','à¦…à¦¨à¦¿à¦·à§à¦ªà¦¨à§à¦¨','Ù‚ÙŠØ¯ Ø§Ù„Ø§Ù†ØªØ¸Ø§Ø±','en attendant','à¤…à¤ªà¥‚à¤°à¥à¤£','Tertunda','in attesa di','ä¿ç•™ä¸­','ê³„ë¥˜ì¤‘ì¸','in afwachting','pendente','à¸­à¸¢à¸¹à¹ˆà¸£à¸°à¸«à¸§à¹ˆà¸²à¸‡à¸”à¸³à¹€à¸™à¸´à¸™à¸à¸²à¸£','kadar','Ø²ÛŒØ± Ø§Ù„ØªÙˆØ§Ø¡','æœ‰å¾…'),(362,'return_date','Return Date','à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦¬à¦°à§à¦¤à¦¨ à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¹ÙˆØ¯Ø©','date de retour','à¤µà¤¾à¤ªà¤¸à¥€ à¤•à¥€ à¤¤à¤¿à¤¥à¤¿','tanggal pengembalian','data di ritorno','è¿”å´æ—¥','ë°˜í™˜ ê¸°ì¼','retourdatum','data de retorno','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸à¸¥à¸±à¸š','dÃ¶nÃ¼ÅŸ tarihi','ÙˆØ§Ù¾Ø³ÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','å½’æœŸ'),(363,'accept','Accept','à¦—à§à¦°à¦¹à¦£ à¦•à¦°à¦¾','Ù‚Ø¨ÙˆÙ„','Acceptez','à¤¸à¥à¤µà¥€à¤•à¤¾à¤° à¤•à¤°à¤¨à¤¾','menerima','accettare','å—ã‘å…¥ã‚Œã‚‹','ë°›ì•„ ë“¤ì¸ë‹¤','accepteren','aceitar','à¸¢à¸­à¸¡à¸£à¸±à¸š','kabul etmek','Ù‚Ø¨ÙˆÙ„ Ú©Ø±Ùˆ','æŽ¥å—'),(364,'reject','Reject','à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦–à§à¦¯à¦¾à¦¨','Ø±ÙØ¶','rejeter','à¤…à¤¸à¥à¤µà¥€à¤•à¤¾à¤°','menolak','rifiutare','æ‹’å¦ã™ã‚‹','ë°›ì§€ ì•Šë‹¤','afwijzen','rejeitar','à¸›à¸à¸´à¹€à¸ªà¸˜','reddetmek','Ø±Ø¯ Ú©Ø±Ù†Ø§','æ‹’ç»'),(365,'issued','Issued','à¦‡à¦¸à§à¦¯à§ à¦•à¦°à¦¾','Ù†Ø´Ø±','PubliÃ©','à¤œà¤¾à¤°à¥€ à¤•à¤¿à¤ à¤—à¤','Dikabarkan','Rilasciato','ç™ºè¡Œæ¸ˆã¿','ë°œí–‰ ëœ','Uitgegeven','Emitido','à¸­à¸­à¸','VeriliÅŸ','Ø¬Ø§Ø±ÛŒ Ú©Ø±Ø¯ÛŒØ§ Ú¯ÛŒØ§','å‘è¡Œ'),(366,'return','Return','à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦¬à¦°à§à¦¤à¦¨','Ø¥Ø±Ø¬Ø§Ø¹','Revenir','à¤µà¤¾à¤ªà¤¸à¥€','Kembali','Ritorno','æˆ»ã‚‹','ë°˜í™˜','terugkeer','Retorna','à¸à¸¥à¸±à¸š','DÃ¶nÃ¼ÅŸ','ÙˆØ§Ù¾Ø³ Ù„Ùˆ','è¿”å›ž'),(367,'renewal','Renewal','à¦ªà§à¦¨à¦°à¦¾à¦°à¦®à§à¦­','ØªØ¬Ø¯ÙŠØ¯','renouvellement','à¤¨à¤µà¥€à¤•à¤°à¤£','pembaruan','rinnovo','æ›´æ–°','ê°±ì‹ ','vernieuwing','renovaÃ§Ã£o','à¸à¸²à¸£à¸Ÿà¸·à¹‰à¸™à¸Ÿà¸¹','yenileme','ØªØ¬Ø¯ÛŒØ¯','å¤å…´'),(368,'fine_amount','Fine Amount','à¦œà¦°à¦¿à¦®à¦¾à¦¨à¦¾ à¦ªà¦°à¦¿à¦®à¦¾à¦£','ÙƒÙ…ÙŠØ© ØºØ±Ø§Ù…Ø©','Montant fin','à¤ à¥€à¤• à¤°à¤¾à¤¶à¤¿','Jumlah denda','Ammontare fine','å¾®é‡','ì¢‹ì€ ê¸ˆì•¡','Fijne hoeveelheid','Quantidade fina','à¸ˆà¸³à¸™à¸§à¸™à¹€à¸‡à¸´à¸™à¸—à¸µà¹ˆà¹€à¸«à¸¡à¸²à¸°à¸ªà¸¡','Ince miktar','Ø¬Ø±Ù…Ø§Ù†Û’ Ú©ÛŒ Ø±Ù‚Ù…','ç½šæ¬¾'),(369,'password_mismatch','Password Mismatch','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦®à§‡à¦²à§‡à¦¨à¦¿','Ø¹Ø¯Ù… ØªØ·Ø§Ø¨Ù‚ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','IncompatibilitÃ© de mot de passe','à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤¬à¥‡à¤®à¥‡à¤²','Sandi ketidakcocokan','Mancata corrispondenza delle password','ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã®ä¸ä¸€è‡´','ì•”í˜¸ ë¶ˆì¼ì¹˜','Wachtwoord Mismatch','Incompatibilidade de senha','à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¹„à¸¡à¹ˆà¸•à¸£à¸‡à¸à¸±à¸™','Parola uyuÅŸmazlÄ±ÄŸÄ±','Ù¾Ø§Ø³ ÙˆØ±Úˆ ØºÛŒØ± Ù…Ø´Ø§Ø¨Û','å¯†ç ä¸åŒ¹é…'),(370,'settings_updated','Settings Update','à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à§à¦¨','ØªØ­Ø¯ÙŠØ« Ø§Ù„Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª','Mise Ã  jour de paramÃ¨tres','à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—à¥à¤¸ à¤…à¤¦à¥à¤¯à¤¤à¤¨','Update pengaturan','Aggiornamento delle impostazioni di','è¨­å®šã®æ›´æ–°','ì„¤ì • ì—…ë°ì´íŠ¸','Instellingen Update','AtualizaÃ§Ã£o de configuraÃ§Ãµes','à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²','AyarlarÄ± gÃ¼ncelleÅŸtirme','Ø³ÛŒÙ¹Ù†Ú¯ÛŒÚº ØªØ§Ø²Û Ú©Ø§Ø±ÛŒ Ú©Ø±ÛŒÚº','æ›´æ–°è®¾ç½®'),(371,'pass','Pass','à¦ªà¦¾à¦¸','Ø§Ù„Ø¨Ø´Ø±ÙŠ','passer','à¤‰à¤¤à¥à¤¤à¥€à¤°à¥à¤£ à¤•à¤°à¤¨à¤¾','lulus','passaggio','ãƒ‘ã‚¹','íŒ¨ìŠ¤','slagen voor','slagen voor','à¸œà¹ˆà¸²à¸™à¹„à¸›','pas','Ù¾Ø§Ø³','é€šè¿‡'),(372,'event_to','Event To','à¦‡à¦­à§‡à¦¨à§à¦Ÿà§‡à¦° à¦œà¦¨à§à¦¯','Ø§Ù„Ø­Ø¯Ø« Ù„','Ã‰vÃ©nement Ã ','à¤˜à¤Ÿà¤¨à¤¾ à¤•à¥‡ à¤²à¤¿à¤','Acara ke','Evento a','ã€œã¸ã®ã‚¤ãƒ™ãƒ³ãƒˆ','~ì— ì´ë²¤íŠ¸','Evenement naar','Evento para','à¹€à¸«à¸•à¸¸à¸à¸²à¸£à¸“à¹Œà¹„à¸›','Olaya','ÙˆØ§Ù‚Ø¹Û','äº‹ä»¶åˆ°'),(373,'all_users','All Users','à¦¸à¦•à¦² à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€','Ø¬Ù…ÙŠØ¹ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','tous les utilisateurs','à¤¸à¤­à¥€ à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾à¤“à¤‚','minden felhasznÃ¡lÃ³','tutti gli utenti','ã™ã¹ã¦ã®ãƒ¦ãƒ¼ã‚¶ãƒ¼','ëª¨ë“  ì‚¬ìš©ìžë“¤','alle gebruikers','todos os usuÃ¡rios','à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','tÃ¼m kullanÄ±cÄ±lar','ØªÙ…Ø§Ù… ØµØ§Ø±ÙÛŒÙ†','å…¨éƒ¨ç”¨æˆ·'),(374,'employees_list','Employees List','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù…ÙˆØ¸ÙÙŠÙ†','Liste des employÃ©s','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¤¿à¤¯à¥‹à¤‚ à¤•à¥€ à¤¸à¥‚à¤šà¥€','Daftar karyawan','Elenco dei dipendenti','å¾“æ¥­å“¡ãƒªã‚¹ãƒˆ','ì§ì› ëª©ë¡','Werknemers lijst','Lista de funcionÃ¡rios','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸanlarÄ±n listesi','Ù…Ù„Ø§Ø²Ù…ÛŒÙ† Ú©ÛŒ ÙÛØ±Ø³Øª','å‘˜å·¥åå•'),(375,'on','On','à¦‰à¦ªà¦°','Ø¹Ù„Ù‰','sur','à¤ªà¤°','di','sopra','ã«','...ì—','op','em','à¸šà¸™','Ã¼zerinde','Ù¾Ø±','ä¸Š'),(376,'timezone','Timezone','à¦¸à¦®à¦¯à¦¼ à¦…à¦žà§à¦šà¦²','ÙˆØ­Ø¯Ø© Ø²Ù…Ù†ÙŠØ©','fuseau horaire','à¤¸à¤®à¤¯ à¤•à¥à¤·à¥‡à¤¤à¥à¤°','zona waktu','fuso orario','ã‚¿ã‚¤ãƒ ã‚¾ãƒ¼ãƒ³','ì‹œê°„ëŒ€','tijdzone','fuso horÃ¡rio','à¹€à¸‚à¸•à¹€à¸§à¸¥à¸²','saat dilimi','Ù¹Ø§Ø¦Ù… Ø²ÙˆÙ†','æ—¶åŒº'),(377,'get_result','Get Result','à¦«à¦²à¦¾à¦«à¦² à¦ªà§‡à¦¤à§‡','Ø§Ù„Ø­ØµÙˆÙ„ Ø¹Ù„Ù‰ Ù†ØªÙŠØ¬Ø©','Obtenir un rÃ©sultat','à¤ªà¤°à¤¿à¤£à¤¾à¤® à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤ à¤•à¤°à¥‡à¤‚','Mendapatkan hasil','Ottenere il risultato','çµæžœã‚’å¾—ã‚‹','ê²°ê³¼ë¥¼ ì–»ë‹¤','Resultaat krijgen','Obter resultado','à¹„à¸”à¹‰à¸œà¸¥à¸¥à¸±à¸žà¸˜à¹Œ','SonuÃ§ almak','Ù†ØªØ§Ø¦Ø¬ Ø­Ø§ØµÙ„ Ú©Ø±ÛŒÚº','å¾—åˆ°ç»“æžœ'),(378,'apply','Apply','à¦ªà§à¦°à¦¯à¦¼à§‹à¦— à¦•à¦°à¦¾','ØªØ·Ø¨ÙŠÙ‚','appliquer','à¤²à¤¾à¤—à¥‚ à¤•à¤°à¥‡à¤‚','menerapkan','applicare','é©ç”¨ã™ã‚‹','ëŒ€ë‹¤','van toepassing zijn','Aplique','à¹ƒà¸Šà¹‰','uygulamak','Ù„Ø§Ú¯Ùˆ Ú©Ø±ÛŒÚº','åº”ç”¨'),(379,'hrm','Human Resource','à¦®à¦¾à¦¨à¦¬ à¦¸à¦®à§à¦ªà¦¦','Ø§Ù„Ù…ÙˆØ§Ø±Ø¯ Ø§Ù„Ø¨Ø´Ø±ÙŠØ©','ressource humaine','à¤®à¤¾à¤¨à¤µ à¤¸à¤‚à¤¸à¤¾à¤§à¤¨','sumber daya manusia','risorse umane','äººçš„è³‡æº','ì¸ì  ìžì›','menselijke hulpbronnen','recursos humanos','Hr / payroll','à¸—à¸£à¸±à¸žà¸¢à¸²à¸à¸£à¸šà¸¸à¸„à¸„à¸¥','Ø§Ù†Ø³Ø§Ù†ÛŒ ÙˆØ³Ø§Ø¦Ù„','äººåŠ›èµ„æº'),(380,'payroll','Payroll','à¦¬à§‡à¦¤à¦¨à§‡à¦°','ÙƒØ´Ù Ø±ÙˆØ§ØªØ¨','paie','à¤ªà¥‡à¤°à¥‹à¤²','daftar gaji','libro paga','çµ¦ä¸Žè¨ˆç®—','ê¸‰ì—¬','loonlijst','folha de pagamento','à¸šà¸±à¸à¸Šà¸µà¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','maaÅŸ bordrosu','ØªÙ†Ø®ÙˆØ§Û','å·¥èµ„è¡¨'),(381,'salary_assign','Salary Assign','à¦¬à§‡à¦¤à¦¨ à¦¬à¦°à¦¾à¦¦à§à¦¦','Ù…Ø±Ø§Ù‚Ø¨Ø© Ø§Ù„Ø±ÙˆØ§ØªØ¨','ContrÃ´le des salaires','à¤µà¥‡à¤¤à¤¨ à¤¨à¤¿à¤¯à¤‚à¤¤à¥à¤°à¤£','Kontrol gaji','Controllo dello stipendio','çµ¦ä¸Žç®¡ç†','ê¸‰ì—¬ ê´€ë¦¬','Looncontrole','Controle salarial','à¸à¸²à¸£à¸„à¸§à¸šà¸„à¸¸à¸¡à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ kontrolÃ¼','ØªÙ†Ø®ÙˆØ§Û Ú©Ø§ Ú©Ù†Ù¹Ø±ÙˆÙ„','å·¥èµ„æŽ§åˆ¶'),(382,'employee_salary','Payment Salary','à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¬à§‡à¦¤à¦¨','Ø¯ÙØ¹ Ø§Ù„Ø±Ø§ØªØ¨','Salaire de paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤µà¥‡à¤¤à¤¨','Gaji gaji','Salario del pagamento','çµ¦ä¸Žçµ¦ä¸Ž','ì§€ë¶ˆ ê¸‰ì—¬','Betalingsloon','SalÃ¡rio de pagamento','à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','Ã–deme maaÅŸÄ±','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ ØªÙ†Ø®ÙˆØ§Û','æ”¯ä»˜å·¥èµ„'),(383,'application','Application','à¦†à¦¬à§‡à¦¦à¦¨','Ø§Ù„ÙˆØ¶Ø¹ÙŠØ©','application','à¤†à¤µà¥‡à¤¦à¤¨','aplikasi','applicazione','å¿œç”¨','ì‹ ì²­','toepassing','aplicaÃ§Ã£o','à¹ƒà¸šà¸ªà¸¡à¸±à¸„à¸£','uygulama','Ø¯Ø±Ø®ÙˆØ§Ø³Øª','åº”ç”¨'),(384,'award','Award','à¦ªà§à¦°à¦¸à§à¦•à¦¾à¦°','Ø¬Ø§Ø¦Ø²Ø©','prix','à¤ªà¥à¤°à¤¸à¥à¤•à¤¾à¤°','menghadiahkan','premio','è³ž','ìž¥í•™ê¸ˆ','onderscheiding','PrÃªmio','à¸£à¸²à¸‡à¸§à¸±à¸¥','Ã¶dÃ¼l','Ø§ÛŒÙˆØ§Ø±Úˆ','å¥–'),(385,'basic_salary','Basic Salary','à¦®à§‚à¦² à¦¬à§‡à¦¤à¦¨','Ø±Ø§ØªØ¨ Ø§Ø³Ø§Ø³ÙŠ','salaire de base','à¤®à¥‚à¤² à¤µà¥‡à¤¤à¤¨','gaji pokok','salario di base','åŸºæœ¬çµ¦','ê¸°ë³¸ ê¸‰ì—¬','basis salaris','salÃ¡rio bÃ¡sico','à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸—à¸±à¹ˆà¸§à¹„à¸›','temel maaÅŸ','Ø¨Ù†ÛŒØ§Ø¯ÛŒ ØªÙ†Ø®ÙˆØ§Û','åŸºç¡€å·¥èµ„'),(386,'employee_name','Employee Name','à¦•à¦°à§à¦®à¦•à¦°à§à¦¤à¦¾à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…ÙˆØ¸Ù','Nom de l\'employÃ©','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤•à¤¾ à¤¨à¤¾à¤®','nama karyawan','Nome dipendente','å¾“æ¥­å“¡å','ì§ì› ì´ë¦„','Naam werknemer','nome do empregado','à¸Šà¸·à¹ˆà¸­à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸan AdÄ±','Ù…Ù„Ø§Ø²Ù… Ú©Ø§ Ù†Ø§Ù…','å‘˜å·¥å§“å'),(387,'name_of_allowance','Name Of Allowance','à¦­à¦¾à¦¤à¦¾ à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ø¨Ø¯Ù„','nom de l\'allocation','à¤­à¤¤à¥à¤¤à¤¾ à¤•à¤¾ à¤¨à¤¾à¤®','Nama tunjangan','nome dell\'indennitÃ ','æ‰‹å½“ã®å','ìˆ˜ë‹¹ ëª…','Naam van de toelage','Nome do subsÃ­dio','à¸Šà¸·à¹ˆà¸­à¹€à¸šà¸µà¹‰à¸¢à¹€à¸¥à¸µà¹‰à¸¢à¸‡','Ã–denek adÄ±','Ø§Ù„Ø§Ø¤Ù†Ø³ Ú©Ø§ Ù†Ø§Ù…','æ´¥è´´åç§°'),(388,'name_of_deductions','Name Of Deductions','à¦•à¦°à§à¦¤à¦¨à§‡à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ø§Ø³ØªÙ‚Ø·Ø§Ø¹Ø§Øª','Nom des dÃ©ductions','à¤•à¤Ÿà¥Œà¤¤à¥€ à¤•à¤¾ à¤¨à¤¾à¤®','Nama deduksi','Nome delle deduzioni','æŽ§é™¤å','ê³µì œ ëª…','Naam van aftrek','Nome das deduÃ§Ãµes','à¸Šà¸·à¹ˆà¸­à¸‚à¸­à¸‡à¸à¸²à¸£à¸«à¸±à¸à¹€à¸‡à¸´à¸™','Kesintilerin adÄ±','Ú©Ù¹ÙˆØªÛŒÙˆÚº Ú©Ø§ Ù†Ø§Ù…','æ‰£é™¤åç§°'),(389,'all_employees','All Employees','à¦¸à¦®à¦¸à§à¦¤ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€','ÙƒÙ„ Ø§Ù„Ù…ÙˆØ¸ÙÙŠÙ†','tous les employÃ©s','à¤¸à¤­à¥€ à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€','semua pegawai','tutti gli impiegati','å…¨å¾“æ¥­å“¡','ëª¨ë“  ì§ì›','alle werknemers','todos os empregados','à¸žà¸™à¸±à¸à¸‡à¸²à¸™à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','tÃ¼m Ã§alÄ±ÅŸanlar','ØªÙ…Ø§Ù… Ù…Ù„Ø§Ø²Ù…ÛŒÙ†','æ‰€æœ‰å‘˜å·¥'),(390,'total_allowance','Total Allowance','à¦®à§‹à¦Ÿ à¦­à¦¾à¦¤à¦¾','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„Ù…Ø®ØµØµØ§Øª','Allocation totale','à¤•à¥à¤² à¤­à¤¤à¥à¤¤à¤¾','Total tunjangan','IndennitÃ  totale','åˆè¨ˆæ‰‹å½“','ì´ ìˆ˜ë‹¹','Totale toelage','SubsÃ­dio total','à¹€à¸šà¸µà¹‰à¸¢à¸›à¸£à¸°à¸Šà¸¸à¸¡','Toplam Ã¶denek','Ù…Ø¬Ù…ÙˆØ¹ÛŒ Ø§Ù„Ø§Ø¤Ù†Ø³','æ€»é¢'),(391,'total_deduction','Total Deductions','à¦®à§‹à¦Ÿ à¦•à¦°à§à¦¤à¦¨','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„Ø®ØµÙˆÙ…Ø§Øª','le total des dÃ©ductions','à¤•à¥à¤² à¤•à¤Ÿà¥Œà¤¤à¥€','Total deduksi','deduzione totale','ç·æŽ§é™¤é¡','ì´ ê³µì œì•¡','totale inhoudingen','deduÃ§Ãµes totais','à¸à¸²à¸£à¸«à¸±à¸à¹€à¸‡à¸´à¸™à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','Toplam kesintiler','Ú©Ù„ Ú©Ù¹ÙˆØªÛŒ','æ€»æ‰£é™¤é¢'),(392,'net_salary','Net Salary','à¦®à§‹à¦Ÿ à¦¬à§‡à¦¤à¦¨','ØµØ§ÙÙŠ Ø§Ù„Ø±Ø§ØªØ¨','salaire net','à¤•à¥à¤² à¤µà¥‡à¤¤à¤¨','gaji bersih','Salario netto','ç´”çµ¦ä¸Ž','ìˆœ ê¸‰ì—¬','netto salaris','salÃ¡rio lÃ­quido','à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸ªà¸¸à¸—à¸˜à¸´','net maaÅŸ','Ø®Ø§Ù„Øµ ØªÙ†Ø®ÙˆØ§Û','å‡€è–ªæ°´'),(393,'payslip','Payslip','à¦¸à§à¦²à¦¿à¦ªà§‡','Ù‚Ø³ÙŠÙ…Ø© Ø§Ù„Ø¯ÙØ¹','Payslip','payslip','Payslip','busta paga','ãƒšã‚¤ãƒ—ãƒ«ãƒƒãƒ—','Payslip','loonstrook','Pague basculante','payslip','maaÅŸ bordrosu','Ù¾ÛŒØ±Ø³Ù¾','å·¥èµ„å•'),(394,'days','Days','à¦¦à¦¿à¦¨','Ø£ÙŠØ§Ù…','journÃ©es','à¤¦à¤¿à¤¨','Hari','giorni','æ—¥ã€…','ì¼',' dagen','dias','à¸§à¸±à¸™','gÃ¼nler','Ø¯Ù†','å¤©'),(395,'category_name_already_used','Category Name Already Used','à¦¬à¦¿à¦­à¦¾à¦—à§‡à¦° à¦¨à¦¾à¦® à¦‡à¦¤à¦¿à¦®à¦§à§à¦¯à§‡ à¦¬à§à¦¯à¦¬à¦¹à§ƒà¦¤','Ø§Ø³Ù… Ø§Ù„ÙØ¦Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…Ø© Ù…Ù† Ù‚Ø¨Ù„','Nom de la catÃ©gorie dÃ©jÃ  utilisÃ©','à¤¶à¥à¤°à¥‡à¤£à¥€ à¤•à¤¾ à¤¨à¤¾à¤® à¤ªà¤¹à¤²à¥‡ à¤¸à¥‡ à¤‰à¤ªà¤¯à¥‹à¤— à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾','Nama kategori sudah digunakan','Nome di categoria giÃ  utilizzato','ã™ã§ã«ä½¿ç”¨ã•ã‚Œã¦ã„ã‚‹ã‚«ãƒ†ã‚´ãƒªå','ì´ë¯¸ ì‚¬ìš© ëœ ì¹´í…Œê³ ë¦¬ ì´ë¦„','categorie naam al in gebruik','Nome da categoria jÃ¡ utilizado','à¸Šà¸·à¹ˆà¸­à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆà¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸­à¸¢à¸¹à¹ˆà¹à¸¥à¹‰à¸§','Kategori adÄ± zaten kullanÄ±lmÄ±ÅŸ','Ù‚Ø³Ù… Ú©Ø§ Ù†Ø§Ù… Ù¾ÛÙ„Û’ Ø³Û’ ÛÛŒ Ø§Ø³ØªØ¹Ù…Ø§Ù„ Ú©ÛŒØ§ Ø¬Ø§ØªØ§ ÛÛ’','ç±»åˆ«åç§°å·²è¢«ä½¿ç”¨'),(396,'leave_list','Leave List','à¦¤à¦¾à¦²à¦¿à¦•à¦¾ à¦›à§‡à¦¡à¦¼à§‡','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø¥Ø¬Ø§Ø²Ø§Øª','Laisser liste','à¤›à¥à¤Ÿà¥à¤Ÿà¥€ à¤¸à¥‚à¤šà¥€','lasciare l\'elenco','lasciare l\'elenco','ãƒªã‚¹ãƒˆã‚’æ®‹ã™','íœ´ê°€ ëª©ë¡','Verlof lijst','Sair da lista','à¸­à¸­à¸à¸ˆà¸²à¸à¸£à¸²à¸¢à¸à¸²à¸£','Izin listesi','Ú†Ú¾ÙˆÚ‘ Ø¯Ùˆ','ç¦»å¼€åˆ—è¡¨'),(397,'leave_category','Leave Category','à¦¬à¦¿à¦­à¦¾à¦— à¦›à§‡à¦¡à¦¼à§‡','ØªØ±Ùƒ Ø§Ù„ÙØ¦Ø©','Laisser la catÃ©gorie','à¤¶à¥à¤°à¥‡à¤£à¥€ à¤›à¥‹à¤¡à¤¼à¥‡à¤‚','Meninggalkan kategori','Lasciare la categoria','ã‚«ãƒ†ã‚´ãƒªãƒ¼ã‚’é›¢ã‚Œã‚‹','ì¹´í…Œê³ ë¦¬ë¥¼ ë– ë‚˜ë‹¤','Categorie achterlaten','Sair da categoria','à¸­à¸­à¸à¸ˆà¸²à¸à¸«à¸¡à¸§à¸”','AyrÄ±l kategori','Ø²Ù…Ø±Û’ Ú†Ú¾ÙˆÚ‘ Ø¯Ùˆ','ç¦»å¼€ç±»åˆ«'),(398,'applied_on','Applied On','à¦ªà§à¦°à¦¯à¦¼à§‹à¦— à¦•à¦°à¦¾','ØªØ·Ø¨ÙŠÙ‚ Ø¹Ù„Ù‰','appliquÃ© sur','à¤ªà¤° à¤²à¤¾à¤—à¥‚','Diterapkan pada','Applicato','ã«é©ç”¨ã•ã‚Œã‚‹','ì— ì ìš©ëœ','Toegepast op','Aplicado em','à¸™à¸³à¸¡à¸²à¹ƒà¸Šà¹‰','Ãœzerine uygulanmÄ±ÅŸ','Ù¾Ø± Ù„Ø§Ú¯Ùˆ','åº”ç”¨äºŽ'),(399,'accepted','Accepted','à¦—à§ƒà¦¹à§€à¦¤','Ù‚Ø¨Ù„Øª','acceptÃ©','à¤¸à¥à¤µà¥€à¤•à¤¾à¤° à¤•à¤¿à¤ à¤œà¤¾à¤¤à¥‡ à¤¹à¥ˆà¤‚','Diterima','accettato','å—ã‘å…¥ã‚Œã‚‰ã‚ŒãŸ','ë°›ì•„ ë“¤ì¸','aanvaard','aceitaram','à¹„à¸”à¹‰à¸£à¸±à¸šà¸à¸²à¸£à¸¢à¸­à¸¡à¸£à¸±à¸š','kabul edilmiÅŸ','Ù‚Ø¨ÙˆÙ„','å…¬è®¤'),(400,'leave_statistics','Leave Statistics','à¦›à§à¦Ÿà¦¿ à¦ªà¦°à¦¿à¦¸à¦‚à¦–à§à¦¯à¦¾à¦¨','ÙˆØªØ±Ùƒ Ø§Ù„Ø¥Ø­ØµØ§Ø¡Ø§Øª','Quitter les statistiques','à¤¸à¤¾à¤‚à¤–à¥à¤¯à¤¿à¤•à¥€ à¤›à¥‹à¤¡à¤¼à¥‡à¤‚','Meninggalkan statistik','Lasciare le statistiche','çµ±è¨ˆã‚’æ®‹ã™','í†µê³„ë¥¼ ë‚¨ê²¨ ë‘ë‹¤','Laat statistieken achter','Deixar estatÃ­sticas','à¸­à¸­à¸à¸ˆà¸²à¸à¸ªà¸–à¸´à¸•à¸´','IstatistiÄŸi bÄ±rak','Ø§Ø¹Ø¯Ø§Ø¯ Ùˆ Ø´Ù…Ø§Ø± Ú†Ú¾ÙˆÚ‘ Ø¯Ùˆ','ç¦»å¼€ç»Ÿè®¡'),(401,'leave_type','Leave Type','à¦›à§à¦Ÿà¦¿ à¦Ÿà¦¾à¦‡à¦ª','Ù†ÙˆØ¹ Ø§Ù„Ø¥Ø¬Ø§Ø²Ø©','Type de permission','à¤ªà¥à¤°à¤•à¤¾à¤° à¤›à¥‹à¤¡à¤¼à¥‡à¤‚','Tipe kiri','Lasciare il tipo','é›¢è„±åž‹','íƒˆí‡´ ìœ í˜•','Verlaat type','Deixe o tipo','à¸­à¸­à¸à¸ˆà¸²à¸à¸›à¸£à¸°à¹€à¸ à¸—','Terk tÃ¼rÃ¼','Ù‚Ø³Ù… Ú†Ú¾ÙˆÚ‘ Ø¯Ùˆ','ç¦»å¼€ç±»åž‹'),(402,'reason','Reason','à¦•à¦¾à¦°à¦£','Ø§Ù„Ø³Ø¨Ø¨','raison','à¤•à¤¾à¤°à¤£','alasan','ragionare','ç†ç”±','ì´ìœ ','reden','razÃ£o','à¹€à¸«à¸•à¸¸à¸œà¸¥','neden','ÙˆØ¬Û','åŽŸå› '),(403,'close','Close','à¦¬à¦¨à§à¦§','Ø£ØºÙ„Ù‚','Fermer','à¤¬à¤‚à¤¦ à¤•à¤°à¥‡','dekat','vicino','é–‰ã˜ã‚‹','ë‹«ê¸°','dichtbij','fechar','à¸›à¸´à¸”','kapat','Ø¨Ù†Ø¯','å…³'),(404,'give_award','Give Award','à¦ªà§à¦°à¦¸à§à¦•à¦¾à¦° à¦¦à¦¾à¦“','Ø¥Ø¹Ø·Ø§Ø¡ Ø§Ù„Ø¬Ø§Ø¦Ø²Ø©','Donner un prix','à¤ªà¥à¤°à¤¸à¥à¤•à¤¾à¤° à¤¦à¥‡à¤‚','Berikan penghargaan','Dare un premio','è³žã‚’ä¸Žãˆã‚‹','ìƒì„ ì£¼ë‹¤','Prijs geven','Dar prÃªmio','à¹ƒà¸«à¹‰à¸£à¸²à¸‡à¸§à¸±à¸¥','Ã–dÃ¼l vermek','Ø§ÛŒÙˆØ§Ø±Úˆ Ø¯ÛŒÙ†Ø§','ç»™äºˆå¥–åŠ±'),(405,'list','List','à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø©','liste','à¤¸à¥‚à¤šà¥€','daftar','elenco','ãƒªã‚¹ãƒˆ','ëª…ë¶€','lijst','Lista','à¸£à¸²à¸¢à¸à¸²à¸£','liste','ÙÛØ±Ø³Øª','åå•'),(406,'award_name','Award Name','à¦ªà§à¦°à¦¸à§à¦•à¦¾à¦°à§‡à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ø¬Ø§Ø¦Ø²Ø©','nom de l\'attribution','à¤ªà¥à¤°à¤¸à¥à¤•à¤¾à¤° à¤¨à¤¾à¤®','Nama penghargaan','Nome del premio','è³žå“å','ë³´ë„ˆìŠ¤ ì´ë¦„','Toekenning naam','Nome do prÃªmio','à¸Šà¸·à¹ˆà¸­à¸£à¸²à¸‡à¸§à¸±à¸¥','Ã–dÃ¼l adÄ±','Ø§ÛŒÙˆØ§Ø±Úˆ Ú©Ø§ Ù†Ø§Ù…','å¥–å'),(407,'gift_item','Gift Item','à¦‰à¦ªà¦¹à¦¾à¦° à¦†à¦‡à¦Ÿà§‡à¦®','Ù‡Ø¯ÙŠØ© Ø§Ù„Ø¨Ù†Ø¯','Objet cadeau','à¤‰à¤ªà¤¹à¤¾à¤° à¤†à¤‡à¤Ÿà¤®','Barang hadiah','Elemento regalo','ã‚®ãƒ•ãƒˆã‚¢ã‚¤ãƒ†ãƒ ','ì„ ë¬¼ í’ˆëª©','Geschenkartikel','Item de presente','à¸£à¸²à¸¢à¸à¸²à¸£à¸‚à¸­à¸‡à¸‚à¸§à¸±à¸','Hediye kalemi','ØªØ­ÙÛ Ø´Û’','ç¤¼å“'),(408,'cash_price','Cash Price','à¦¨à¦—à¦¦ à¦®à§‚à¦²à§à¦¯','Ø³Ø¹Ø± Ø§Ù„ØµØ±Ù','Prix â€‹â€‹en espÃ¨ces','à¤¨à¤•à¤¦ à¤®à¥‚à¤²à¥à¤¯','Harga tunai','Prezzo in contanti','ç¾é‡‘ä¾¡æ ¼','í˜„ê¸ˆ ê°€ê²©','Contante prijs','PreÃ§o em dinheiro','à¸£à¸²à¸„à¸²à¹€à¸‡à¸´à¸™à¸ªà¸”','Nakit fiyatÄ±','Ù†Ù‚Ø¯ Ù‚ÛŒÙ…Øª','çŽ°é‡‘ä»·æ ¼'),(409,'award_reason','Award Reason','à¦ªà§à¦°à¦¸à§à¦•à¦¾à¦° à¦•à¦¾à¦°à¦£','Ø¬Ø§Ø¦Ø²Ø© Ø§Ù„Ø³Ø¨Ø¨','Raison de rÃ©compense','à¤ªà¥à¤°à¤¸à¥à¤•à¤¾à¤° à¤•à¤¾à¤°à¤£','Alasan penghargaan','Ragione del premio','æŽˆä¸Žç†ç”±','ìˆ˜ìƒ ì´ìœ ','Prijs reden','Motivo de adjudicaÃ§Ã£o','à¹€à¸«à¸•à¸¸à¸œà¸¥à¸£à¸²à¸‡à¸§à¸±à¸¥','Ã–dÃ¼l sebebi','Ø§ÛŒÙˆØ§Ø±Úˆ Ú©ÛŒ ÙˆØ¬Û','å¥–åŠ±ç†ç”±'),(410,'given_date','Given Date','à¦ªà§à¦°à¦¦à¦¤à§à¦¤ à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ù…Ø¹ÙŠÙ†','Date donnÃ©e','à¤¦à¥€ à¤—à¤ˆ à¤¤à¤¿à¤¥à¤¿','Tanggal tertentu','Data data','ä¸Žãˆã‚‰ã‚ŒãŸæ—¥ä»˜','ì£¼ì–´ì§„ ë‚ ì§œ','Gegeven datum','Data dada','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸£à¸°à¸šà¸¸','Verilen tarih','Ø¯ÛŒ Ú¯Ø¦ÛŒ ØªØ§Ø±ÛŒØ®','ç»™å®šæ—¥æœŸ'),(411,'apply_leave','Apply Leave','à¦›à§à¦Ÿà¦¿ à¦ªà§à¦°à¦¯à¦¼à§‹à¦— à¦•à¦°à§à¦¨','ØªØ·Ø¨ÙŠÙ‚ Ø§Ù„Ø¥Ø¬Ø§Ø²Ø©','Postuler','à¤›à¥à¤Ÿà¥à¤Ÿà¥€ à¤²à¤¾à¤—à¥‚ à¤•à¤°à¥‡à¤‚','Berlaku cuti','Applicare il permesso','ä¼‘æš‡ã‚’å–ã‚‹','íœ´ê°€ë¥¼ ë‚¨ê¸°ë‹¤','Verlof verlenen','Aplicar licenÃ§a','à¸¥à¸²à¸­à¸­à¸','Izin baÅŸvurusu yapmak','Ú†Ú¾ÙˆÚ‘ Ø¯Ùˆ','ç”³è¯·ä¼‘å‡'),(412,'leave_application','Leave Application','à¦›à§à¦Ÿà¦¿ à¦†à¦¬à§‡à¦¦à¦¨','Ø§ØªØ±Ùƒ Ø§Ù„ØªØ·Ø¨ÙŠÙ‚','laisser l\'application','à¤›à¥à¤Ÿà¥à¤Ÿà¥€ à¤•à¥€ à¤…à¤°à¥à¤œà¥€','Meninggalkan aplikasi','Meninggalkan aplikasi','ç”³è«‹ã‚’æ®‹ã™','ì‹ ì²­ì„ ë– ë‚˜ë‹¤','Aanvraag verlaten','Deixar o aplicativo','à¸­à¸­à¸à¸ˆà¸²à¸à¹‚à¸›à¸£à¹à¸à¸£à¸¡','uygulamayÄ± terket','Ú†Ú¾Ù¹ÛŒ Ú©ÛŒ Ø¯Ø±Ø®ÙˆØ§Ø³Øª','ç¦»å¼€åº”ç”¨ç¨‹åº'),(413,'allowances','Allowances','à¦¤à§ƒà¦ªà§à¦¤à¦¿','Ø§Ù„Ø¨Ø¯Ù„Ø§Øª','Allocations','à¤­à¤¤à¥à¤¤à¥‡','Tunjangan','indennitÃ ','æ‰‹å½“','ì°¸ìž‘','toelagen','SubsÃ­dios','à¸„à¹ˆà¸²à¹€à¸šà¸µà¹‰à¸¢à¹€à¸¥à¸µà¹‰à¸¢à¸‡','Ã¶denekleri','Ø§Ù„Ø§Ø¤Ù†Ø³','æ´¥è´´'),(414,'add_more','Add More','à¦†à¦°à§‹ à¦¯à§‹à¦— à¦•à¦°à§‹','Ø£Ø¶Ù Ø§Ù„Ù…Ø²ÙŠØ¯','ajouter plus','à¤…à¤§à¤¿à¤• à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan lagi','aggiungere altro','ã•ã‚‰ã«è¿½åŠ ','ë” ì¶”ê°€','Voeg meer toe','Adicione mais','à¹€à¸žà¸´à¹ˆà¸¡à¸¡à¸²à¸à¸‚à¸¶à¹‰à¸™','daha ekle','Ù…Ø²ÛŒØ¯ Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ æ›´å¤š'),(415,'deductions','Deductions','à¦•à¦°à§à¦¤à¦¨','Ø§Ù„Ø®ØµÙˆÙ…Ø§Øª','DÃ©ductions','à¤•à¤Ÿà¥Œà¤¤à¥€','Deduksi','deduzioni','æŽ§é™¤','ê³µì œ','inhoudingen','DeduÃ§Ãµes','à¸à¸²à¸£à¸«à¸±à¸à¹€à¸‡à¸´à¸™','kesintiler','Ú©Ù¹ÙˆØªÛŒ','æ‰£é™¤'),(416,'salary_details','Salary Details','à¦¬à§‡à¦¤à¦¨ à¦¬à¦¿à¦¬à¦°à¦£','ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ø±Ø§ØªØ¨','DÃ©tails de salaire','à¤µà¥‡à¤¤à¤¨ à¤µà¤¿à¤µà¤°à¤£','Rincian gaji','I dettagli delle retribuzioni','çµ¦æ–™ã®è©³ç´°','ê¸‰ì—¬ ì„¸ë¶€ ì •ë³´','Salaris details','Detalhes salariais','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ ayrÄ±ntÄ±larÄ±','ØªÙ†Ø®ÙˆØ§Û Ú©ÛŒ ØªÙØµÛŒÙ„Ø§Øª','å·¥èµ„ç»†èŠ‚'),(417,'salary_month','Salary Month','à¦¬à§‡à¦¤à¦¨ à¦®à¦¾à¦¸','Ø±Ø§ØªØ¨ Ø´Ù‡Ø±','Mois de salaire','à¤µà¥‡à¤¤à¤¨ à¤®à¤¹à¥€à¤¨à¥‡','Bulan gaji','Mese di salario','çµ¦æ–™æœˆ','ì›”ê¸‰','Salaris maand','MÃªs de salÃ¡rio','à¹€à¸”à¸·à¸­à¸™à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ ayÄ±','ØªÙ†Ø®ÙˆØ§Û Ù…ÛÛŒÙ†Û','å·¥èµ„æœˆ'),(418,'leave_data_update_successfully','Leave Data Updated Successfully','à¦›à§à¦Ÿà¦¿ à¦¡à§‡à¦Ÿà¦¾ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à§‡à¦›à§‡','ØªØ±Ùƒ Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª ØªØ­Ø¯ÙŠØ«Ù‡Ø§ Ø¨Ù†Ø¬Ø§Ø­','Laisser les donnÃ©es mises Ã  jour avec succÃ¨s','à¤›à¥‹à¤¡à¤¼à¥‡à¤‚ à¤¡à¥‡à¤Ÿà¤¾ à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤…à¤ªà¤¡à¥‡à¤Ÿ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾','Biarkan data berhasil diperbarui','Lasciare i dati aggiornati correttamente','ãƒ‡ãƒ¼ã‚¿ã‚’æ­£å¸¸ã«æ›´æ–°ã—ãŸã¾ã¾ã«ã™ã‚‹','ë°ì´í„°ê°€ ì„±ê³µì ìœ¼ë¡œ ì—…ë°ì´íŠ¸ ëœ ìƒíƒœë¡œ ìœ ì§€','Laat de gegevens succesvol doorgeven','Deixe os dados atualizados com sucesso','à¸›à¸¥à¹ˆà¸­à¸¢à¹ƒà¸«à¹‰à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸­à¸±à¸›à¹€à¸”à¸•à¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§','Verileri baÅŸarÄ±yla gÃ¼ncelledi bÄ±rak','Ø§Ø¹Ø¯Ø§Ø¯ Ùˆ Ø´Ù…Ø§Ø± Ú©Ùˆ Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø§Ù¾ ÚˆÛŒÙ¹ Ú©Ø± Ø¯ÛŒÚº','ç¦»å¼€æ•°æ®æ›´æ–°æˆåŠŸ'),(419,'fees_history','Fees History','à¦«à¦¿ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø±Ø³ÙˆÙ…','Historique des frais','à¤¶à¥à¤²à¥à¤• à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸','Sejarah biaya','La storia dei costi','æ‰‹æ•°æ–™å±¥æ­´','ìˆ˜ìˆ˜ë£Œ ë‚´ì—­','Vergoedingen geschiedenis','HistÃ³rico de taxas','à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸›à¸£à¸°à¸§à¸±à¸•à¸´','Ãœcret geÃ§miÅŸi','ÙÛŒØ³ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','æ”¶è´¹åŽ†å²'),(420,'bank_name','Bank Name','à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ø¨Ù†Ùƒ','Nom de banque','à¤¬à¥ˆà¤‚à¤• à¤•à¤¾ à¤¨à¤¾à¤®','nama Bank','nome della banca','éŠ€è¡Œå','ì€í–‰ ì´ë¦„','banknaam','nome do banco','à¸Šà¸·à¹ˆà¸­à¸˜à¸™à¸²à¸„à¸²à¸£','banka adÄ±','Ø¨ÛŒÙ†Ú© Ú©Ø§ Ù†Ø§Ù…','é“¶è¡Œå'),(421,'branch','Branch','à¦¶à¦¾à¦–à¦¾','ÙØ±Ø¹ Ø´Ø¬Ø±Ø©','branche','à¤¡à¤¾à¤²à¥€','cabang','ramo','ãƒ–ãƒ©ãƒ³ãƒ','ë¶„ê¸°','tak','ramo','à¸ªà¸²à¸‚à¸²','ÅŸube','Ø´Ø§Ø®','ç§‘'),(422,'bank_address','Bank Address','à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦ à¦¿à¦•à¦¾à¦¨à¦¾','Ø¹Ù†ÙˆØ§Ù† Ø§Ù„Ø¨Ù†Ùƒ','adresse de la banque','à¤¬à¥ˆà¤‚à¤• à¤•à¤¾ à¤ªà¤¤à¤¾','Alamat bank','indirizzo bancario','éŠ€è¡Œã®ä½æ‰€','ê³„ì¢Œ ë²ˆí˜¸','bank adres','endereÃ§o do banco','à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆà¸˜à¸™à¸²à¸„à¸²à¸£','banka adresi','Ø¨ÛŒÙ†Ú© Ú©Ø§ Ù¾ØªÛ','é“¶è¡Œåœ°å€'),(423,'ifsc_code','IFSC Code','à¦†à¦‡à¦à¦«à¦¸à¦¿à¦¸à¦¿ à¦•à§‹à¦¡','Ø±Ù…Ø² Ø¥ÙØ³Ùƒ','IFSC code','à¤†à¤ˆà¤à¤«à¤à¤¸à¤¸à¥€ à¤•à¥‹à¤¡','Kode IFSC','Codice IFSC','IFSCã‚³ãƒ¼ãƒ‰','IFSC ì½”ë“œ','IFSC-code','CÃ³digo IFSC','à¸£à¸«à¸±à¸ª IFSC','IFSC kodu','IFSC Ú©ÙˆÚˆ','IFSCä»£ç '),(424,'account_no','Account No','à¦¹à¦¿à¦¸à¦¾à¦¬ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°','Ø±Ù‚Ù… Ø§Ù„Ø­Ø³Ø§Ø¨','n Â° de compte','à¤–à¤¾à¤¤à¤¾ à¤•à¥à¤°à¤®à¤¾à¤‚à¤•','No rekening','Conto n','ã‚¢ã‚«ã‚¦ãƒ³ãƒˆãªã—','ê³„ì • ì—†ìŒ','account nummer','Conta nÃ£o','à¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚à¸šà¸±à¸à¸Šà¸µ','Hesap numarasÄ±','Ø§Ú©Ø§Ø¤Ù†Ù¹ Ú©Ø§ Ù†Ù…Ø¨Ø±','æˆ·å£å·ç '),(425,'add_bank','Add Bank','à¦¬à§à¦¯à¦¾à¦‚à¦• à¦œà§à¦¡à¦¼à§à¦¨','Ø¥Ø¶Ø§ÙØ© Ø¨Ù†Ùƒ','Ajouter une banque','à¤¬à¥ˆà¤‚à¤• à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan bank',' Aggiungi la banca','éŠ€è¡Œã‚’è¿½åŠ ã™ã‚‹','ì€í–‰ ì¶”ê°€','Bank toevoegen','Adicionar banco','à¹€à¸žà¸´à¹ˆà¸¡à¸˜à¸™à¸²à¸„à¸²à¸£','Banka ekle','Ø¨ÛŒÙ†Ú© Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','åŠ é“¶è¡Œ'),(426,'account_name','Account Holder','à¦¹à¦¿à¦¸à¦¾à¦¬à§‡à¦° à¦¨à¦¾à¦®','Ø£Ø³Ù… Ø§Ù„Ø­Ø³Ø§Ø¨','nom du compte','à¤–à¤¾à¤¤à¥‡ à¤•à¤¾ à¤¨à¤¾à¤®','nama akun','nome utente','ã‚¢ã‚«ã‚¦ãƒ³ãƒˆå','ê³„ì¢Œ ì´ë¦„','accountnaam','nome da conta','à¸Šà¸·à¹ˆà¸­à¸šà¸±à¸à¸Šà¸µ','hesap adÄ±','Ú©Ú¾Ø§ØªÛ’ Ú©Ø§ Ù†Ø§Ù…','ç”¨æˆ·å'),(427,'database_backup_completed','Database Backup Completed','à¦¡à¦¾à¦Ÿà¦¾à¦¬à§‡à¦¸ à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦¸à¦®à§à¦ªà¦¨à§à¦¨','Ø§ÙƒØªÙ…Ù„ Ù‚Ø§Ø¹Ø¯Ø© Ø¨ÙŠØ§Ù†Ø§Øª Ø§Ù„Ù†Ø³Ø® Ø§Ù„Ø§Ø­ØªÙŠØ§Ø·ÙŠ','Sauvegarde de base de donnÃ©es terminÃ©e','à¤¡à¥‡à¤Ÿà¤¾à¤¬à¥‡à¤¸ à¤¬à¥ˆà¤•à¤…à¤ª à¤ªà¥‚à¤°à¥à¤£','Backup database selesai','Backup del database completato','ãƒ‡ãƒ¼ã‚¿ãƒ™ãƒ¼ã‚¹ã®ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—ãŒå®Œäº†ã—ã¾ã—ãŸ','ë°ì´í„°ë² ì´ìŠ¤ ë°±ì—… ì™„ë£Œ','Database backup voltooid','Backup do banco de dados concluÃ­do','à¸à¸²à¸£à¸ªà¸³à¸£à¸­à¸‡à¸à¸²à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹€à¸ªà¸£à¹‡à¸ˆà¸ªà¸¡à¸šà¸¹à¸£à¸“à¹Œ','VeritabanÄ± yedeklemesi tamamlandÄ±','ÚˆÛŒÙ¹Ø§ Ø¨ÛŒÚ© Ø§Ù¾ Ù…Ú©Ù…Ù„','æ•°æ®åº“å¤‡ä»½å®Œæˆ'),(428,'restore_database','Restore Database','à¦¡à¦¾à¦Ÿà¦¾à¦¬à§‡à¦¸ à¦ªà§à¦¨à¦ƒà¦¸à§à¦¥à¦¾à¦ªà¦¨','Ø§Ø³ØªØ¹Ø§Ø¯Ø© Ù‚Ø§Ø¹Ø¯Ø© Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª','Restaurer la base de donnÃ©es','à¤¡à¥‡à¤Ÿà¤¾à¤¬à¥‡à¤¸ à¤ªà¥à¤¨à¤°à¥à¤¸à¥à¤¥à¤¾à¤ªà¤¿à¤¤ à¤•à¤°à¥‡à¤‚','restore database','Ripristinare il database','ãƒ‡ãƒ¼ã‚¿ãƒ™ãƒ¼ã‚¹ã®å¾©å…ƒ','ë°ì´í„°ë² ì´ìŠ¤ ë³µì›','Database herstellen','Restaurar o banco de dados','à¹€à¸£à¸µà¸¢à¸à¸„à¸·à¸™à¸à¸²à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥','VeritabanÄ± geri yÃ¼kle','ÚˆÛŒÙ¹Ø§ Ø¨ÛŒØ³ Ø¨Ø­Ø§Ù„ Ú©Ø±ÛŒÚº','æ¢å¤æ•°æ®åº“'),(429,'template','Template','à¦Ÿà§‡à¦®à¦ªà§à¦²à§‡à¦Ÿ','Ù‚Ø§Ù„Ø¨','modÃ¨le','à¤Ÿà¥‡à¤®à¥à¤ªà¤²à¥‡à¤Ÿ','template','modello','ãƒ†ãƒ³ãƒ—ãƒ¬ãƒ¼ãƒˆ','ì£¼í˜•','sjabloon','modelo','à¹à¸šà¸š','ÅŸablon','Ø³Ø§Ù†Ú†Û’','æ¨¡æ¿'),(430,'time_and_date','Time And Date','à¦¸à¦®à¦¯à¦¼ à¦à¦¬à¦‚ à¦¤à¦¾à¦°à¦¿à¦–','Ø§Ù„ÙˆÙ‚Øª Ùˆ Ø§Ù„ØªØ§Ø±ÙŠØ®','heure et date','à¤¸à¤®à¤¯ à¤”à¤° à¤¤à¤¾à¤°à¥€à¤–','waktu dan tanggal','ora e data','æ—¥æ™‚','ì‹œê°„ê³¼ ë‚ ì§œ','tijd en datum','hora e data','à¹€à¸§à¸¥à¸²à¹à¸¥à¸°à¸§à¸±à¸™à¸—à¸µà¹ˆ','zaman ve tarih','ÙˆÙ‚Øª Ø§ÙˆØ± ØªØ§Ø±ÛŒØ®','æ—¶é—´å’Œæ—¥æœŸ'),(431,'everyone','Everyone','à¦¸à¦¬à¦¾à¦‡','ÙƒÙ„ ÙˆØ§Ø­Ø¯','toutes les personnes','à¤¹à¤° à¤•à¥‹à¤ˆ','semua orang','tutti','ã¿ã‚“ãª','ê°ìž ëª¨ë‘','iedereen','todos','à¸—à¸¸à¸à¸„à¸™','herkes','Ø³Ø¨','å¤§å®¶'),(432,'invalid_amount','Invalid Amount','à¦…à¦•à¦¾à¦°à§à¦¯à¦•à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£','Ù…Ø¨Ù„Øº ØºÙŠØ± ØµØ­ÙŠØ­','montant invalide','à¤…à¤µà¥ˆà¤§ à¤°à¤¾à¤¶à¤¿','jumlah tidak valid','importo non valido','ç„¡åŠ¹é¡','ë¬´íš¨ ê¸ˆì•¡','ongeldige hoeveelheid','Montante invÃ¡lido','à¸ˆà¸³à¸™à¸§à¸™à¸—à¸µà¹ˆà¹„à¸¡à¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡','geÃ§ersiz miktar','ØºÙ„Ø· Ø±Ù‚Ù…','æ— æ•ˆæ•°é‡'),(433,'leaving_date_is_not_available_for_you','Leaving Date Is Not Available For You','à¦¤à¦¾à¦°à¦¿à¦– à¦°à§‡à¦–à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦œà¦¨à§à¦¯ à¦‰à¦ªà¦²à¦¬à§à¦§ à¦¨à¦¯à¦¼','ØªØ±Ùƒ Ø§Ù„ØªØ§Ø±ÙŠØ® ØºÙŠØ± Ù…ØªØ§Ø­ Ù„Ùƒ','la date de sortie n\'est pas disponible pour vous','à¤›à¥‹à¤¡à¤¼à¤¨à¥‡ à¤•à¥€ à¤¤à¤¿à¤¥à¤¿ à¤†à¤ªà¤•à¥‡ à¤²à¤¿à¤ à¤‰à¤ªà¤²à¤¬à¥à¤§ à¤¨à¤¹à¥€à¤‚ à¤¹à¥ˆ','tanggal berangkat tidak tersedia untuk Anda','la data di partenza non Ã¨ disponibile per te','ã‚ãªãŸã®æ—¥ä»˜ã‚’æ®‹ã™ã“ã¨ã¯ã§ãã¾ã›ã‚“','ì¶œë°œì¼ì„ ì‚¬ìš©í•  ìˆ˜ ì—†ìŠµë‹ˆë‹¤.','vertrekdatum is niet voor u beschikbaar','A data de saÃ­da nÃ£o estÃ¡ disponÃ­vel para vocÃª','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸­à¸­à¸à¹€à¸”à¸´à¸™à¸—à¸²à¸‡à¹„à¸¡à¹ˆà¸ªà¸²à¸¡à¸²à¸£à¸–à¹ƒà¸Šà¹‰à¹„à¸”à¹‰à¸ªà¸³à¸«à¸£à¸±à¸šà¸„à¸¸à¸“','bÄ±rakma tarihi sizin iÃ§in mevcut deÄŸil','Ú†Ú¾ÙˆÚ‘Ù†Û’ Ú©ÛŒ ØªØ§Ø±ÛŒØ® Ø¢Ù¾ Ú©Û’ Ù„Ø¦Û’ Ø¯Ø³ØªÛŒØ§Ø¨ Ù†ÛÛŒÚº ÛÛ’','ç¦»å¼€æ—¥æœŸä¸é€‚åˆæ‚¨'),(434,'animations','Animations','à¦…à§à¦¯à¦¾à¦¨à¦¿à¦®à§‡à¦¶à¦¨','Ø§Ù„Ø±Ø³ÙˆÙ… Ø§Ù„Ù…ØªØ­Ø±ÙƒØ©','animations','à¤à¤¨à¤¿à¤®à¥‡à¤¶à¤¨','animasi','animazioni','ã‚¢ãƒ‹ãƒ¡ãƒ¼ã‚·ãƒ§ãƒ³','ì• ë‹ˆë©”ì´ì…˜','animaties','animaÃ§Ãµes','à¸ à¸²à¸žà¹€à¸„à¸¥à¸·à¹ˆà¸­à¸™à¹„à¸«à¸§','animasyonlar','Ù…ØªØ­Ø±Ú© ØªØµØ§ÙˆÛŒØ±','åŠ¨ç”»'),(435,'email_settings','Email Settings','à¦‡à¦®à§‡à¦² à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','ParamÃ¨tres de messagerie','à¤ˆà¤®à¥‡à¤² à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—à¥à¤¸','pengaturan email','impostazioni di posta elettronica','ãƒ¡ãƒ¼ãƒ«è¨­å®š','ì´ë©”ì¼ ì„¤ì •','Email instellingen','configuraÃ§Ãµes de e-mail','à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸­à¸µà¹€à¸¡à¸¥','e-posta ayarlarÄ±','Ø§ÛŒ Ù…ÛŒÙ„ Ú©ÛŒ ØªØ±ØªÛŒØ¨Ø§Øª','ç”µå­é‚®ä»¶è®¾ç½®'),(436,'deduct_month','Deduct Month','à¦•à§‡à¦Ÿà§‡ à¦®à¦¾à¦¸','Ø®ØµÙ… Ø§Ù„Ø´Ù‡Ø±','dÃ©duire le mois','à¤•à¤Ÿà¥Œà¤¤à¥€ à¤®à¤¹à¥€à¤¨à¥‡','deduksi bulan','detrarre il mese','æŽ§é™¤æœˆ','ë‹¬ì„ ê³µì œí•˜ë‹¤','aftrek maand','deduz o mÃªs','à¸«à¸±à¸à¹€à¸”à¸·à¸­à¸™','ay dÃ¼ÅŸÃ¼lmek','Ú©Ù¹ÙˆØªÛŒ Ù…ÛÛŒÙ†Û’','æ‰£é™¤æœˆ'),(437,'no_employee_available','No Employee Available','à¦•à§‹à¦¨ à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦ªà§à¦°à¦¾à¦ªà§à¦¤à¦¿à¦¸à¦¾à¦§à§à¦¯','Ù„Ø§ ÙŠØªÙˆÙØ± Ù…ÙˆØ¸Ù','Aucun employÃ© disponible','à¤•à¥‹à¤ˆ à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤‰à¤ªà¤²à¤¬à¥à¤§ à¤¨à¤¹à¥€à¤‚ à¤¹à¥ˆ','Tidak ada karyawan yang tersedia','Nessun dipendente disponibile','å¾“æ¥­å“¡ã¯ã„ã¾ã›ã‚“','ì§ì›ì´ ì—†ìŠµë‹ˆë‹¤','Geen medewerker beschikbaar','Nenhum funcionÃ¡rio disponÃ­vel','à¹„à¸¡à¹ˆà¸¡à¸µà¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸan yok','Ú©ÙˆØ¦ÛŒ Ù…Ù„Ø§Ø²Ù… Ø¯Ø³ØªÛŒØ§Ø¨ Ù†ÛÛŒÚº ÛÛ’','æ²¡æœ‰å‘˜å·¥å¯ç”¨'),(438,'advance_salary_application_submitted','Advance Salary Application Submitted','à¦…à¦—à§à¦°à¦¿à¦® à¦¬à§‡à¦¤à¦¨ à¦†à¦¬à§‡à¦¦à¦¨ à¦œà¦®à¦¾','ØªÙ… ØªÙ‚Ø¯ÙŠÙ… Ø·Ù„Ø¨ Ø§Ù„Ø±Ø§ØªØ¨ Ø§Ù„Ù…ØªÙ‚Ø¯Ù…','Demande de salaire anticipÃ© soumise','à¤…à¤—à¥à¤°à¤¿à¤® à¤µà¥‡à¤¤à¤¨ à¤…à¤°à¥à¤œ à¤¸à¤¬à¤®à¤¿à¤Ÿ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾','Aplikasi Gaji Muka Submitted','Applicazione anticipata salariale presentata','ã‚¢ãƒ‰ãƒãƒ³ã‚¹çµ¦ä¸Žç”³è«‹æ›¸ãŒæå‡ºã•ã‚Œã¾ã—ãŸ','ì‚¬ì „ ì—°ë´‰ ì‹ ì²­ì„œê°€ ì œì¶œë˜ì—ˆìŠµë‹ˆë‹¤.','Voorschot Salarisaanvraag ingediend','SolicitaÃ§Ã£o de SalÃ¡rio AvanÃ§ado Enviado','à¸ªà¹ˆà¸‡à¹ƒà¸šà¸ªà¸¡à¸±à¸„à¸£à¸¥à¹ˆà¸§à¸‡à¸«à¸™à¹‰à¸²','MaaÅŸ BaÅŸvurusu GÃ¶nderildi','Ù¾ÛŒØ´Ú¯ÛŒ ØªÙ†Ø®ÙˆØ§Û Ú©ÛŒ Ø¯Ø±Ø®ÙˆØ§Ø³Øª Ù¾ÛŒØ´ Ú©ÛŒ Ú¯Ø¦ÛŒ','æå‰ç”³è¯·å·¥èµ„ç”³è¯·'),(439,'date_format','Date Format','à¦¤à¦¾à¦°à¦¿à¦– à¦¬à¦¿à¦¨à§à¦¯à¦¾à¦¸','ØµÙŠØºØ© Ø§Ù„ØªØ§Ø±ÙŠØ®','date format','à¤¡à¥‡à¤Ÿà¤¾ à¤ªà¥à¤°à¤¾à¤°à¥‚à¤ª','format tanggal','formato data','æ—¥ä»˜å½¢å¼','ë‚ ì§œ í˜•ì‹','datumnotatie','Formato de data','à¸£à¸¹à¸›à¹à¸šà¸šà¸§à¸±à¸™à¸—à¸µà¹ˆ','tarih formatÄ±','ØªØ§Ø±ÛŒØ® Ú©ÛŒ Ø´Ú©Ù„','æ—¥æœŸæ ¼å¼'),(440,'id_card_generate','ID Card Generate','à¦†à¦‡à¦¡à¦¿ à¦•à¦¾à¦°à§à¦¡ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¨Ø·Ø§Ù‚Ø© Ø§Ù„Ù‡ÙˆÙŠØ© ØªÙˆÙ„Ø¯','Carte d\'identitÃ© gÃ©nÃ©rer','à¤†à¤ˆà¤¡à¥€ à¤•à¤¾à¤°à¥à¤¡ à¤‰à¤¤à¥à¤ªà¤¨à¥à¤¨','KTP menghasilkan','La carta d\'identitÃ  genera','IDã‚«ãƒ¼ãƒ‰ç”Ÿæˆ','ID ì¹´ë“œ ìƒì„±','ID-kaart genereert','O cartÃ£o de identificaÃ§Ã£o gera','à¸ªà¸£à¹‰à¸²à¸‡à¸šà¸±à¸•à¸£à¸›à¸£à¸°à¸ˆà¸³à¸•à¸±à¸§','Kimlik kartÄ± Ã¼ret','Ø´Ù†Ø§Ø®ØªÛŒ Ú©Ø§Ø±Úˆ Ù¾ÛŒØ¯Ø§','èº«ä»½è¯ç”Ÿæˆ'),(441,'issue_salary','Issue Salary','à¦¬à§‡à¦¤à¦¨ à¦‡à¦¸à§à¦¯à§','Ø¥ØµØ¯Ø§Ø± Ø§Ù„Ø±Ø§ØªØ¨','question salariale','à¤®à¥à¤¦à¥à¤¦à¤¾ à¤µà¥‡à¤¤à¤¨','mengeluarkan gaji','emettere stipendio','ç™ºè¡Œå ±é…¬','ì´ìŠˆ ê¸‰ì—¬','loon uitgeven','emitir salÃ¡rio','à¸­à¸­à¸à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','maaÅŸ Ã§Ä±karmak','Ù…Ø³Ø¦Ù„Û ØªÙ†Ø®ÙˆØ§Û','å‘æ”¾å·¥èµ„'),(442,'advance_salary','Advance Salary','à¦¬à§‡à¦¤à¦¨ à¦…à¦—à§à¦°à¦¿à¦®','Ø±Ø§ØªØ¨ Ù…Ù‚Ø¯Ù…Ø§','avance sur salaire','à¤ªà¥‚à¤°à¥à¤µ à¤µà¥‡à¤¤à¤¨','uang muka gaji','salario anticipo','å‰çµ¦','ì—°ë´‰','vooruitbetaling','SalÃ¡rio adiantado','à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸¥à¹ˆà¸§à¸‡à¸«à¸™à¹‰à¸²','avans maaÅŸÄ±','Ù¾ÛŒØ´Ú¯ÛŒ ØªÙ†Ø®ÙˆØ§Û','æå‰å·¥èµ„'),(443,'logo','Logo','à¦²à§‹à¦—à§‹','Ø´Ø¹Ø§Ø±','logo','à¤ªà¥à¤°à¤¤à¥€à¤• à¤šà¤¿à¤¨à¥à¤¹','logo','logo','ãƒ­ã‚´','ì‹¬ë²Œ ë§ˆí¬','logo','logo','à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢','logo','Ø¹Ù„Ø§Ù…Øª (Ù„ÙˆÚ¯Ùˆ)','å•†æ ‡'),(444,'book_request','Book Request','à¦¬à¦‡ à¦…à¦¨à§à¦°à§‹à¦§','Ø·Ù„Ø¨ Ø§Ù„ÙƒØªØ§Ø¨','demande de livre','à¤ªà¥à¤¸à¥à¤¤à¤• à¤…à¤¨à¥à¤°à¥‹à¤§','permintaan buku','richiesta di libro','æœ¬ã®ãƒªã‚¯ã‚¨ã‚¹ãƒˆ','ë„ì„œ ìš”ì²­','boekverzoek','pedido de livro','book à¸„à¸³à¸‚à¸­','kitap isteÄŸi','Ú©ØªØ§Ø¨ Ú©ÛŒ Ø¯Ø±Ø®ÙˆØ§Ø³Øª','ä¹¦ç±è¦æ±‚'),(445,'reporting','Reporting','à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨','Ø§Ù„ØªÙ‚Ø§Ø±ÙŠØ±','rapport','à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿà¤¿à¤‚à¤—','pelaporan','segnalazione','å ±å‘Š','ë³´ê³ ','rapportage','relatÃ³rios','à¸à¸²à¸£à¸£à¸²à¸¢à¸‡à¸²à¸™','raporlama','Ø±Ù¾ÙˆØ±Ù¹Ù†Ú¯','æŠ¥å‘Š'),(446,'paid_salary','Paid Salary','à¦¬à§‡à¦¤à¦¨ à¦¦à§‡à¦“à¦¯à¦¼à¦¾','Ø§Ù„Ø±Ø§ØªØ¨ Ø§Ù„Ù…Ø¯ÙÙˆØ¹','salaire payÃ©','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤µà¥‡à¤¤à¤¨','gaji dibayar','stipendio retribuito','çµ¦æ–™','ê¸‰ì—¬','betaald salaris','salÃ¡rio pago','à¸ˆà¹ˆà¸²à¸¢à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','Ã¼cretli maaÅŸ','ØªÙ†Ø®ÙˆØ§Û ØªÙ†Ø®ÙˆØ§Û','æœ‰è–ªå·¥èµ„'),(447,'due_salary','Due Salary','à¦¬à¦¾à¦•à¦¿ à¦¬à§‡à¦¤à¦¨','Ø§Ù„Ø±Ø§ØªØ¨','salaire dÃ»','à¤‰à¤šà¤¿à¤¤ à¤µà¥‡à¤¤à¤¨','karena gaji','salario dovuto','æ”¯æ‰•ã£ãŸçµ¦æ–™','ë§Œê¸° ìž„ê¸ˆ','verschuldigd salaris','salÃ¡rio devedor','à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸—à¸µà¹ˆà¸„à¸£à¸šà¸à¸³à¸«à¸™à¸”','maaÅŸ','ØªÙ†Ø®ÙˆØ§Û','åº”ä»˜å·¥èµ„'),(448,'route','Route','à¦°à§à¦Ÿ','Ø·Ø±ÙŠÙ‚','Route','à¤®à¤¾à¤°à¥à¤—','Rute','Itinerario','ãƒ«ãƒ¼ãƒˆ','ë…¸ì„ ','Route','Rota','à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡','rota','Ø±Ø§Ø³ØªÛ','è·¯çº¿'),(449,'academic_details','Academic Details','à¦à¦•à¦¾à¦¡à§‡à¦®à¦¿à¦• à¦¬à¦¿à¦¬à¦°à¦£','Ø§Ù„ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ø£ÙƒØ§Ø¯ÙŠÙ…ÙŠØ©','dÃ©tails acadÃ©miques','à¤…à¤•à¤¾à¤¦à¤®à¤¿à¤• à¤µà¤¿à¤µà¤°à¤£','rincian akademis','dettagli accademici','å­¦å•ã®è©³ç´°','í•™ì—… ë‚´ìš©','academische details','detalhes acadÃªmicos','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸—à¸²à¸‡à¸§à¸´à¸Šà¸²à¸à¸²à¸£','akademik ayrÄ±ntÄ±lar','ØªØ¹Ù„ÛŒÙ…ÛŒ ØªÙØµÛŒÙ„Ø§Øª','å­¦æœ¯ç»†èŠ‚'),(450,'guardian_details','Guardian Details','à¦…à¦­à¦¿à¦­à¦¾à¦¬à¦• à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤','Ø§Ù„ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ø£ÙƒØ§Ø¯ÙŠÙ…ÙŠØ©','dÃ©tails acadÃ©miques','à¤…à¤•à¤¾à¤¦à¤®à¤¿à¤• à¤µà¤¿à¤µà¤°à¤£','rincian akademis','dettagli accademici','å­¦å•ã®è©³ç´°','í•™ì—… ë‚´ìš©','academische details','detalhes acadÃªmicos','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸—à¸²à¸‡à¸§à¸´à¸Šà¸²à¸à¸²à¸£','akademik ayrÄ±ntÄ±lar','ØªØ¹Ù„ÛŒÙ…ÛŒ ØªÙØµÛŒÙ„Ø§Øª','å­¦æœ¯ç»†èŠ‚'),(451,'due_amount','Due Amount','à¦¬à¦¾à¦•à¦¿ à¦Ÿà¦¾à¦•à¦¾','Ù…Ø¨Ù„Øº Ù…Ø³ØªØ­Ù‚','montant dÃ»','à¤¦à¥‡à¤¯ à¤°à¤¾à¤¶à¤¿','karena jumlah','importo dovuto','é‡‘é¡','ë§Œê¸° ê¸ˆì•¡','debita moles','debita moles','Ð½Ð°Ð´Ð»ÐµÐ¶Ð°Ñ‰ÐµÐ¹ ÑÑƒÐ¼Ð¼Ñ‹','Ã¶denecek meblaÄŸ','Ø¨Ø§Ù‚ÛŒ Ø±Ù‚Ù…','åˆ°æœŸé‡‘é¢'),(452,'fee_due_report','Fee Due Report','à¦«à¦¿ à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨à§‡à¦° à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ','ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ø±Ø³ÙˆÙ… Ø§Ù„Ù…Ø³ØªØ­Ù‚Ø©','rapport dÃ»','à¤¶à¥à¤²à¥à¤• à¤•à¥‡ à¤•à¤¾à¤°à¤£ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','laporan biaya','fee due report','æ‰‹æ•°æ–™å ±å‘Šæ›¸','ìˆ˜ìˆ˜ë£Œ ë‚©ë¶€ ë³´ê³ ì„œ','vergoeding verschuldigd','relatÃ³rio pago','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¹€à¸ªà¸µà¸¢à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','due due due report','ÙÛŒØ³ Ú©ÛŒ Ø§Ø·Ù„Ø§Ø¹ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹','åº”æ”¶è´¹ç”¨æŠ¥å‘Š'),(453,'other_details','Other Details','à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤','ØªÙØ§ØµÙŠÙ„ Ø£Ø®Ø±Ù‰','Autres dÃ©tails','à¤…à¤¨à¥à¤¯ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€','Rincian lainnya','altri dettagli','ãã®ä»–ã®æƒ…å ±','ê¸°íƒ€ ì„¸ë¶€ ì •ë³´','andere details','Outros detalhes','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸­à¸·à¹ˆà¸™ à¹†','diÄŸer detaylar','Ø¯ÛŒÚ¯Ø± ØªÙØµÛŒÙ„Ø§Øª','å…¶ä»–è¯¦æƒ…'),(454,'last_exam_report','Last Exam Report','à¦¶à§‡à¦· à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ','ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ø§Ø®ØªØ¨Ø§Ø± Ø§Ù„Ø£Ø®ÙŠØ±','Dernier rapport d&#39;examen','à¤…à¤‚à¤¤à¤¿à¤® à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','Laporan Ujian Terakhir','Rapporto sull\'ultimo esame','å‰å›žã®è©¦é¨“ãƒ¬ãƒãƒ¼ãƒˆ','ë§ˆì§€ë§‰ ì‹œí—˜ ë³´ê³ ì„œ','Laatste examenrapport','RelatÃ³rio do Ãºltimo exame','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¸ªà¸­à¸šà¸„à¸£à¸±à¹‰à¸‡à¸ªà¸¸à¸”à¸—à¹‰à¸²à¸¢','Son SÄ±nav Raporu','Ø¢Ø®Ø±ÛŒ Ø§Ù…ØªØ­Ø§Ù† Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹','ä¸Šæ¬¡è€ƒè¯•æŠ¥å‘Š'),(455,'book_issued','Book Issued','à¦¬à¦‡ à¦‡à¦¸à§à¦¯à§ à¦•à¦°à¦¾',' ÙƒØªØ§Ø¨ ØµØ¯Ø±','Livre publiÃ©','à¤ªà¥à¤¸à¥à¤¤à¤• à¤œà¤¾à¤°à¥€ à¤•à¥€','Buku Diterbitkan','Libro emesso','ç™ºè¡Œã•ã‚ŒãŸæœ¬','ë„ì„œ ë°œí–‰','Uitgegeven boek','Livro emitido','à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­à¸­à¸­à¸','YayÄ±nlanan Kitap','Ú©ØªØ§Ø¨ Ø¬Ø§Ø±ÛŒ','å‡ºç‰ˆä¹¦ç±'),(456,'interval_month','Interval 30 Days','à¦…à¦¨à§à¦¤à¦° 30 à¦¦à¦¿à¦¨','Ø§Ù„ÙØ§ØµÙ„ Ø§Ù„Ø²Ù…Ù†ÙŠ 30 ÙŠÙˆÙ…Ù‹Ø§','Intervalle 30 jours','à¤…à¤‚à¤¤à¤°à¤¾à¤² 30 à¤¦à¤¿à¤¨','Interval 30 Hari','Intervallo 30 giorni','é–“éš”30æ—¥','ê°„ê²© 30 ì¼','Interval 30 dagen','Intervalo 30 dias','à¸Šà¹ˆà¸§à¸‡à¹€à¸§à¸¥à¸² 30 à¸§à¸±à¸™','AralÄ±k 30 GÃ¼n','Ø§Ù†Ù¹Ø±ÙˆÛŒÙˆ 30 Ø¯Ù†','é—´éš”30å¤©'),(457,'attachments','Attachments','à¦¸à¦‚à¦¯à§à¦•à§à¦¤à¦¿à¦¸à¦®à§‚à¦¹','Ù…Ø±ÙÙ‚Ø§Øª','Les piÃ¨ces jointes','à¤¸à¤‚à¤²à¤—à¥à¤¨à¤•','Lampiran','allegati','æ·»ä»˜ãƒ•ã‚¡ã‚¤ãƒ«','ì²¨ë¶€ íŒŒì¼','Bijlagen','Anexos','à¸ªà¸´à¹ˆà¸‡à¸—à¸µà¹ˆà¹à¸™à¸šà¸¡à¸²','Ekler','Ù…Ù†Ø³Ù„Ú©Ø§Øª','é™„ä»¶'),(458,'fees_payment','Fees Payment','à¦«à¦¿ à¦ªà§à¦°à¦¦à¦¾à¦¨','Ø¯ÙØ¹ Ø§Ù„Ø±Ø³ÙˆÙ…','Paiement des frais','à¤¶à¥à¤²à¥à¤• à¤­à¥à¤—à¤¤à¤¾à¤¨','Pembayaran Biaya','Pagamento','ãŠæ”¯æ‰•ã„','ìˆ˜ìˆ˜ë£Œ ì§€ë¶ˆ','Vergoedingen Betaling','Pagamento de taxas','à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret Ã–deme','ÙÛŒØ³ Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ','è´¹ç”¨ä»˜æ¬¾'),(459,'fees_summary','Fees Summary','à¦«à¦¿ à¦¸à¦‚à¦•à§à¦·à¦¿à¦ªà§à¦¤ à¦¬à¦¿à¦¬à¦°à¦£','Ù…Ù„Ø®Øµ Ø§Ù„Ø±Ø³ÙˆÙ…','RÃ©sumÃ© des frais','à¤«à¥€à¤¸ à¤¸à¤¾à¤°à¤¾à¤‚à¤¶','Ringkasan Biaya','Riepilogo tasse','æ–™é‡‘ã®ã¾ã¨ã‚','ìš”ê¸ˆ ìš”ì•½','Kostenoverzicht','Resumo de taxas','à¸ªà¸£à¸¸à¸›à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret Ã–zeti','ÙÛŒØ³ Ø®Ù„Ø§ØµÛ','è´¹ç”¨æ‘˜è¦'),(460,'total_fees','Total Fees','à¦®à§‹à¦Ÿ à¦«à¦¿','Ø§Ù„Ø±Ø³ÙˆÙ… Ø§Ù„ÙƒÙ„ÙŠØ©','Total des frais','à¤•à¥à¤² à¤«à¥€à¤¸','Total Biaya','Commissioni totali','åˆè¨ˆæ–™é‡‘','ì´ ë¹„ìš©','Totale kosten','Taxas totais','à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','Toplam Ã¼cretler','Ú©Ù„ ÙÛŒØ³','æ€»è´¹ç”¨'),(461,'weekend_attendance_inspection','Weekend Attendance Inspection','à¦¸à¦ªà§à¦¤à¦¾à¦¹à¦¾à¦¨à§à¦¤à§‡ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦ªà¦°à¦¿à¦¦à¦°à§à¦¶à¦¨','ÙØ­Øµ Ø§Ù„Ø­Ø¶ÙˆØ± ÙÙŠ Ø¹Ø·Ù„Ø© Ù†Ù‡Ø§ÙŠØ© Ø§Ù„Ø§Ø³Ø¨ÙˆØ¹','Weekend Attendance Inspection','à¤¸à¤ªà¥à¤¤à¤¾à¤¹à¤¾à¤‚à¤¤ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤¨à¤¿à¤°à¥€à¤•à¥à¤·à¤£','Inspeksi Kehadiran Akhir Pekan','Ispezione presenze weekend','é€±æœ«å‡ºå¸­æ¤œæŸ»','ì£¼ë§ ì¶œì„ ê²€ì‚¬','Weekend-aanwezigheidsinspectie','InspeÃ§Ã£o de PresenÃ§a no Fim de Semana','à¸à¸²à¸£à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸šà¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸§à¸±à¸™à¸«à¸¢à¸¸à¸”à¸ªà¸¸à¸”à¸ªà¸±à¸›à¸”à¸²à¸«à¹Œ','Hafta Sonu KatÄ±lÄ±m Denetimi','Ø§Ø®ØªØªØ§Ù… ÛÙØªÛ Ø­Ø§Ø¶Ø±ÛŒ Ù…Ø¹Ø§Ø¦Ù†Û','å‘¨æœ«å‡ºå‹¤æ£€æŸ¥'),(462,'book_issued_list','Book Issued List','à¦¬à§à¦• à¦‡à¦¸à§à¦¯à§ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','ÙƒØªØ§Ø¨ ØµØ¯Ø± Ù‚Ø§Ø¦Ù…Ø©','Liste des livres publiÃ©s','à¤ªà¥à¤¸à¥à¤¤à¤• à¤•à¥€ à¤¸à¥‚à¤šà¥€ à¤œà¤¾à¤°à¥€ à¤•à¥€','Daftar Buku Terbitan','Elenco pubblicato','æ›¸ç±ç™ºè¡Œãƒªã‚¹ãƒˆ','ë„ì„œ ëª©ë¡','Uitgevoerde lijst van boeken','Lista de livros emitidos','à¸£à¸²à¸¢à¸à¸²à¸£à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­à¸—à¸µà¹ˆà¸­à¸­à¸','Kitap Ã‡Ä±karÄ±lmÄ±ÅŸ Listesi','Ú©ØªØ§Ø¨ Ø¬Ø§Ø±ÛŒ Ú©ÛŒ ÙÛØ±Ø³Øª','å›¾ä¹¦å‘è¡Œæ¸…å•'),(463,'lose_your_password','Lose Your Password?','à¦†à¦ªà¦¨à¦¾à¦° à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦¹à¦¾à¦°à¦¾à¦¨?','?ØªÙÙ‚Ø¯ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ','Perdre votre mot de passe?','à¤…à¤ªà¤¨à¤¾ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤–à¥‹ à¤¦à¥‡à¤‚?','Kalah Kata Sandi Anda?','Perdere la tua password?','ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’å¿˜ã‚Œã¾ã—ãŸ?','íŒ¨ìŠ¤ì›Œë“œ ë¶„ì‹¤?','Verlies uw wachtwoord?','Perca sua senha?','à¸ªà¸¹à¸à¹€à¸ªà¸µà¸¢à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¸‚à¸­à¸‡à¸„à¸¸à¸“?','Åžifrenizi kaybedin?','?Ø§Ù¾Ù†Ø§ Ù¾Ø§Ø³ ÙˆØ±Úˆ Ú©Ú¾Ùˆ','ä¸¢å¤±å¯†ç ?'),(464,'all_branch_dashboard','All Branch Dashboard','à¦¸à¦®à¦¸à§à¦¤ à¦¶à¦¾à¦–à¦¾ à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡','ÙƒÙ„ Ù„ÙˆØ­Ø© ÙØ±Ø¹','Tableau de bord de toutes les branches','à¤¸à¤­à¥€ à¤¶à¤¾à¤–à¤¾ à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡','Semua Dashboard Cabang','All Branch Dashboard','å…¨æ”¯åº—ãƒ€ãƒƒã‚·ãƒ¥ãƒœãƒ¼ãƒ‰','ëª¨ë“  ì§€ì  ëŒ€ì‹œ ë³´ë“œ','Alles Branch Dashboard','All Branch Dashboard','à¹à¸”à¸Šà¸šà¸­à¸£à¹Œà¸”à¸ªà¸²à¸‚à¸²à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','TÃ¼m Åžube Panosu','ØªÙ…Ø§Ù… Ø¨Ø±Ø§Ù†Ú† ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ','æ‰€æœ‰åˆ†æ”¯ä»ªè¡¨æ¿'),(465,'academic_session','Academic Session','à¦à¦•à¦¾à¦¡à§‡à¦®à¦¿à¦• à¦¸à§‡à¦¶à¦¨','Ø§Ù„Ø¯ÙˆØ±Ø© Ø§Ù„Ø£ÙƒØ§Ø¯ÙŠÙ…ÙŠØ©','Session acadÃ©mique','à¤¶à¥ˆà¤•à¥à¤·à¤£à¤¿à¤• à¤¸à¤¤à¥à¤°','Sesi Akademik','Sessione accademica','å­¦è¡“ã‚»ãƒƒã‚·ãƒ§ãƒ³','í•™ìˆ  ì„¸ì…˜','Academische sessie','SessÃ£o AcadÃªmica','à¸§à¸²à¸£à¸°à¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²','Akademik Oturum','ØªØ¹Ù„ÛŒÙ…ÛŒ Ø§Ø¬Ù„Ø§Ø³','å­¦æœ¯ä¼šè®®'),(466,'all_branches','All Branches','à¦¸à¦®à¦¸à§à¦¤ à¦¶à¦¾à¦–à¦¾','ÙƒÙ„ Ø§Ù„ÙØ±ÙˆØ¹','Heures supplÃ©mentaires','à¤¸à¤­à¥€ à¤¶à¤¾à¤–à¤¾à¤“à¤‚','Semua Cabang','Tutte le filiali','ã™ã¹ã¦ã®æž','ëª¨ë“  ì§€ì ','Alle takken','Todas as filiais','à¸—à¸¸à¸à¸ªà¸²à¸‚à¸²','TÃ¼m Åžubeler','ØªÙ…Ø§Ù… Ø´Ø§Ø®ÛŒÚº','æ‰€æœ‰åˆ†æ”¯æœºæž„'),(467,'admission','Admission','à¦­à¦°à§à¦¤à¦¿','Ù‚Ø¨ÙˆÙ„','admission','à¤¦à¤¾à¤–à¤¿à¤²à¤¾','penerimaan','ammissione','å…¥å ´','ìž…ìž¥',' toelating','admissÃ£o','à¸à¸²à¸£à¸£à¸±à¸šà¹€à¸‚à¹‰à¸²','kabul','Ø¯Ø§Ø®Ù„Û','å…¥åœº'),(468,'create_admission','Create Admission','à¦­à¦°à§à¦¤à¦¿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ Ø§Ù„Ù‚Ø¨ÙˆÙ„','CrÃ©er une entrÃ©e','à¤ªà¥à¤°à¤µà¥‡à¤¶ à¤¬à¤¨à¤¾à¤à¤','Buat Penerimaan','Crea l\'ammissione','å…¥å ´è¨±å¯ã‚’ä½œæˆã™ã‚‹','ìž…ìž¥ ì œìž‘','Maak toegang','Criar admissÃ£o','à¸ªà¸£à¹‰à¸²à¸‡à¸à¸²à¸£à¸£à¸±à¸šà¸ªà¸¡à¸±à¸„à¸£','GiriÅŸ OluÅŸtur','Ø¯Ø§Ø®Ù„Û Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºå…¥å­¦'),(469,'multiple_import','Multiple Import','à¦à¦•à¦¾à¦§à¦¿à¦• à¦†à¦®à¦¦à¦¾à¦¨à¦¿','Ø§Ø³ØªÙŠØ±Ø§Ø¯ Ù…ØªØ¹Ø¯Ø¯','Importation multiple','à¤à¤•à¤¾à¤§à¤¿à¤• à¤†à¤¯à¤¾à¤¤','Impor Berganda','Importazione multipla','è¤‡æ•°ã‚¤ãƒ³ãƒãƒ¼ãƒˆ','ë³µìˆ˜ ê°€ì ¸ ì˜¤ê¸°','Meerdere import','MÃºltiplo Import','à¸™à¸³à¹€à¸‚à¹‰à¸²à¸«à¸¥à¸²à¸¢à¸£à¸²à¸¢à¸à¸²à¸£','Birden Ã§ok iÃ§e aktarma','Ø§ÛŒÚ© Ø³Û’ Ø²ÛŒØ§Ø¯Û Ø¯Ø±Ø¢Ù…Ø¯','å¤šæ¬¡å¯¼å…¥'),(470,'student_details','Student Details','à¦›à¦¾à¦¤à§à¦° à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤','ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ø·Ø§Ù„Ø¨','DÃ©tails de l\'Ã©tudiant','à¤›à¤¾à¤¤à¥à¤° à¤•à¤¾ à¤µà¤¿à¤µà¤°à¤£','Detail Siswa','Dettagli dello studente','å­¦ç”Ÿã®è©³ç´°','í•™ìƒ ì„¸ë¶€ ì‚¬í•­','Studentendetails','Detalhes do aluno','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²','Ã–ÄŸrenci DetaylarÄ±','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©ÛŒ ØªÙØµÛŒÙ„Ø§Øª','å­¦ç”Ÿè¯¦æƒ…'),(471,'student_list','Student List','à¦›à¦¾à¦¤à§à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø·Ù„Ø§Ø¨','Liste des Ã©tudiants','à¤›à¤¾à¤¤à¥à¤° à¤¸à¥‚à¤šà¥€','Daftar Siswa','Elenco degli studenti','å­¦ç”Ÿãƒªã‚¹ãƒˆ','í•™ìƒ ëª©ë¡','Studentenlijst','Lista de estudantes','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²','Ã–ÄŸrenci Listesi','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©ÛŒ ÙÛØ±Ø³Øª','å­¦ç”Ÿåå•'),(472,'login_deactivate','Login Deactivate','à¦²à¦—à¦‡à¦¨ à¦¨à¦¿à¦·à§à¦•à§à¦°à¦¿à¦¯à¦¼ à¦•à¦°à§à¦¨','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„','Login DÃ©sactiver','à¤²à¥‰à¤—à¤¿à¤¨ à¤¨à¤¿à¤·à¥à¤•à¥à¤°à¤¿à¤¯ à¤•à¤°à¥‡à¤‚','Login Nonaktifkan','Login Disattiva','ãƒ­ã‚°ã‚¤ãƒ³ç„¡åŠ¹åŒ–','ë¡œê·¸ì¸ ë¹„í™œì„±í™”','Inloggen Deactiveren','Login Desativar','à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸šà¸›à¸´à¸”à¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™','GiriÅŸ Devre DÄ±ÅŸÄ± BÄ±rak','Ù„Ø§Ú¯ Ø§Ù† ØºÛŒØ± ÙØ¹Ø§Ù„','ç™»å½•åœç”¨'),(473,'parents_list','Parents List','à¦ªà¦¿à¦¤à¦¾à¦®à¦¾à¦¤à¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ÙˆØ§Ù„Ø¯ÙŠÙ†','Liste de parents','à¤®à¤¾à¤¤à¤¾-à¤ªà¤¿à¤¤à¤¾ à¤•à¥€ à¤¸à¥‚à¤šà¥€','Daftar Orang Tua','Lista dei genitori','è¦ªãƒªã‚¹ãƒˆ','í•™ë¶€ëª¨ ëª©ë¡','Ouderslijst','Lista de pais','à¸£à¸²à¸¢à¸à¸²à¸£à¸œà¸¹à¹‰à¸›à¸à¸„à¸£à¸­à¸‡','Ebeveyn Listesi','ÙˆØ§Ù„Ø¯ÛŒÙ† Ú©ÛŒ ÙÛØ±Ø³Øª','çˆ¶æ¯åå•'),(474,'add_parent','Add Parent','à¦®à§‚à¦² à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø£Ø¶Ù Ø§Ù„ÙˆØ§Ù„Ø¯','Ajouter un parent','à¤œà¤¨à¤• à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Induk','Aggiungi genitore','è¦ªã‚’è¿½åŠ ','ë¶€ëª¨ ì¶”ê°€','Voeg ouder toe','Adicionar pai','à¹€à¸žà¸´à¹ˆà¸¡à¸œà¸¹à¹‰à¸›à¸à¸„à¸£à¸­à¸‡','Ãœst ekle','ÙˆØ§Ù„Ø¯ÛŒÙ† Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ çˆ¶çº§'),(475,'employee_list','Employee List','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ù…ÙˆØ¸Ù','Liste des employÃ©s','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤¸à¥‚à¤šà¥€','Daftar Karyawan','Elenco dei dipendenti','å¾“æ¥­å“¡ãƒªã‚¹ãƒˆ','ì§ì› ëª©ë¡','Werknemerslijst','Lista de empregados','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ä°ÅŸÃ§i listesi','Ù…Ù„Ø§Ø²Ù… Ú©ÛŒ ÙÛØ±Ø³Øª','å‘˜å·¥åå•'),(476,'add_department','Add Department','à¦¬à¦¿à¦­à¦¾à¦— à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø£Ø¶Ù Ù‚Ø³Ù…','Ajouter un dÃ©partement','à¤µà¤¿à¤­à¤¾à¤— à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Departemen','Aggiungi dipartimento','éƒ¨ç½²ã‚’è¿½åŠ ','ë¶€ì„œ ì¶”ê°€','Afdeling toevoegen','Adicionar Departamento','à¹€à¸žà¸´à¹ˆà¸¡à¹à¸œà¸™à¸','BÃ¶lÃ¼m ekle','Ù…Ø­Ú©Ù…Û Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ éƒ¨é—¨'),(477,'add_employee','Add Employee','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø¥Ø¶Ø§ÙØ© Ù…ÙˆØ¸Ù','Ajouter un employÃ©','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Karyawan','Aggiungi dipendente','å¾“æ¥­å“¡ã‚’è¿½åŠ ','ì§ì› ì¶”ê°€','Voeg werknemer toe','Adicionar funcionÃ¡rio','à¹€à¸žà¸´à¹ˆà¸¡à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸan ekle','Ù…Ù„Ø§Ø²Ù… Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ å‘˜å·¥'),(478,'salary_template','Salary Template','à¦¬à§‡à¦¤à¦¨ à¦Ÿà§‡à¦®à¦ªà§à¦²à§‡à¦Ÿ','Ù‚Ø§Ù„Ø¨ Ø§Ù„Ø±Ø§ØªØ¨','ModÃ¨le de salaire','à¤µà¥‡à¤¤à¤¨ à¤•à¤¾ à¤–à¤¾à¤•à¤¾','Templat Gaji','Modello di stipendio','çµ¦ä¸Žãƒ†ãƒ³ãƒ—ãƒ¬ãƒ¼ãƒˆ','ê¸‰ì—¬ í…œí”Œë¦¿','Salaris sjabloon','Modelo de salÃ¡rio','à¹€à¸—à¸¡à¹€à¸žà¸¥à¸•à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ Åžablonu','ØªÙ†Ø®ÙˆØ§Û Ø³Ø§Ù†Ú†Û','è–ªèµ„æ¨¡æ¿'),(479,'salary_payment','Salary Payment','à¦¬à§‡à¦¤à¦¨ à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ','Ø¯ÙØ¹ Ø§Ù„Ù…Ø±ØªØ¨Ø§Øª','Paiement du salaire','à¤¤à¤¨à¤–à¥à¤µà¤¾à¤¹ à¤•à¤¾ à¤­à¥à¤—à¤¤à¤¾à¤¨','Pembayaran Gaji','Salario','çµ¦ä¸Žæ”¯æ‰•ã„','ê¸‰ì—¬ ì§€ë¶ˆ','Salaris betalingo','Pagamento de SalÃ¡rio','à¸à¸²à¸£à¸ˆà¹ˆà¸²à¸¢à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ Ã¶demesi','ØªÙ†Ø®ÙˆØ§Û Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ','å·¥èµ„æ”¯ä»˜'),(480,'payroll_summary','Payroll Summary','à¦¬à§‡à¦¤à¦¨ à¦¸à¦¾à¦°à¦¸à¦‚à¦•à§à¦·à§‡à¦ª','Ù…Ù„Ø®Øµ Ø§Ù„Ø±ÙˆØ§ØªØ¨','RÃ©sumÃ© de la paie','à¤ªà¥‡à¤°à¥‹à¤² à¤¸à¤¾à¤°à¤¾à¤‚à¤¶','Ringkasan Penggajian','Riepilogo del libro paga','çµ¦ä¸Žã‚µãƒžãƒªãƒ¼','ê¸‰ì—¬ ìš”ì•½','Payroll-samenvatting','Resumo da folha de pagamento','à¸ªà¸£à¸¸à¸›à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','Bordro Ã–zeti','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Ø§ Ø®Ù„Ø§ØµÛ','å·¥èµ„æ€»ç»“'),(481,'academic','Academic','à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à¦¯à¦¼ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤','Ø£ÙƒØ§Ø¯ÙŠÙ…ÙŠ','AcadÃ©mique','à¤…à¤•à¤¾à¤¦à¤®à¤¿à¤•','Akademik','Accademico','å­¦è¡“','í•™ìƒ','Academic','AcadÃªmico','à¸§à¸´à¸Šà¸²à¸à¸²à¸£','Akademik','ØªØ¹Ù„ÛŒÙ…ÛŒ','å­¦æœ¯çš„'),(482,'control_classes','Control Classes','à¦¨à¦¿à¦¯à¦¼à¦¨à§à¦¤à§à¦°à¦£ à¦•à§à¦²à¦¾à¦¸','ÙØ¦Ø§Øª Ø§Ù„ØªØ­ÙƒÙ…','Control Classes','à¤¨à¤¿à¤¯à¤‚à¤¤à¥à¤°à¤£ à¤•à¤•à¥à¤·à¤¾à¤à¤‚','Kelas Kontrol','Classi di controllo','åˆ¶å¾¡ã‚¯ãƒ©ã‚¹','ì»¨íŠ¸ë¡¤ í´ëž˜ìŠ¤','Controleklassen','Classes de Controle','à¸„à¸¥à¸²à¸ªà¸„à¸§à¸šà¸„à¸¸à¸¡','Kontrol SÄ±nÄ±flarÄ±','Ú©Ù†Ù¹Ø±ÙˆÙ„ Ú©Ù„Ø§Ø³','æŽ§åˆ¶ç±»'),(483,'assign_class_teacher','Assign Class Teacher','à¦•à§à¦²à¦¾à¦¸ à¦¶à¦¿à¦•à§à¦·à¦• à¦¨à¦¿à¦¯à¦¼à§‹à¦—\n\n','ØªØ¹ÙŠÙŠÙ† Ù…Ø¹Ù„Ù… Ø§Ù„ØµÙ','Attribuer un enseignant de classe','à¤•à¤•à¥à¤·à¤¾ à¤¶à¤¿à¤•à¥à¤·à¤• à¤•à¤¾ à¤•à¤¾à¤°à¥à¤¯à¤­à¤¾à¤° à¤¸à¥Œà¤‚à¤ªà¥‡à¤‚','Tugaskan Guru Kelas','Assegna un insegnante di classe','ã‚¯ãƒ©ã‚¹ã®å…ˆç”Ÿã‚’å‰²ã‚Šå½“ã¦ã‚‹','í´ëž˜ìŠ¤ êµì‚¬ ì§€ì •','Ken klasleraar toe','Atribuir professor de turma','à¸¡à¸­à¸šà¸«à¸¡à¸²à¸¢à¸„à¸£à¸¹à¸›à¸£à¸°à¸ˆà¸³à¸Šà¸±à¹‰à¸™','SÄ±nÄ±f Ã–ÄŸretmeni Ata','Ú©Ù„Ø§Ø³ Ù¹ÛŒÚ†Ø± Ú©Ùˆ ØªÙÙˆÛŒØ¶ Ú©Ø±ÛŒÚº','åˆ†é…ç­ä¸»ä»»'),(484,'class_assign','Class Assign','à¦•à§à¦²à¦¾à¦¸ à¦¬à¦°à¦¾à¦¦à§à¦¦','ØªØ¹ÙŠÙŠÙ† ÙØ¦Ø©','Affectation de classe','à¤µà¤°à¥à¤— à¤¨à¤¿à¤°à¥à¤ªà¤¿à¤¤','Penugasan Kelas','Assegnazione di classe','ã‚¯ãƒ©ã‚¹å‰²ã‚Šå½“ã¦','í´ëž˜ìŠ¤ ì§€ì •','Klasse toewijzen','AtribuiÃ§Ã£o de classe','à¸à¸³à¸«à¸™à¸”à¸£à¸°à¸”à¸±à¸š','SÄ±nÄ±f AtamasÄ±','Ú©Ù„Ø§Ø³ Ú©Ø§ ØªØ¹ÛŒÙ†','ç­çº§åˆ†é…'),(485,'assign','Assign','à¦¦à¦¾à¦¯à¦¼à¦¿à¦¤à§à¦¬ à¦…à¦°à§à¦ªà¦£ à¦•à¦°à¦¾','ØªØ¹ÙŠÙŠÙ†','Attribuer','à¤¸à¥Œà¤‚à¤ªà¤¨à¤¾','Menetapkan','Assegnare','å‰²ã‚Šå½“ã¦ã¾ã™','ì–‘ìˆ˜ì¸','Toewijzen','Atribuir','à¸à¸³à¸«à¸™à¸”','Atamak','ØªÙÙˆÛŒØ¶','åˆ†é…'),(486,'promotion','Promotion','à¦ªà¦¦à§‹à¦¨à§à¦¨à¦¤à¦¿','ØªØ±Ù‚ÙŠØ© ÙˆØ¸ÙŠÙÙŠØ©','Promotion','à¤ªà¤¦à¥‹à¤¨à¥à¤¨à¤¤à¤¿','Promosi','Promozione','æ˜‡é€²','ìŠ¹ì§„','Bevordering','PromoÃ§Ã£o','à¸à¸²à¸£à¸ªà¹ˆà¸‡à¹€à¸ªà¸£à¸´à¸¡',' tanÄ±tÄ±m','ÙØ±ÙˆØº','æå‡'),(487,'attachments_book','Attachments Book','à¦¸à¦‚à¦¯à§à¦•à§à¦¤à¦¿ à¦¬à¦‡','ÙƒØªØ§Ø¨ Ø§Ù„Ù…Ø±ÙÙ‚Ø§Øª','Livre des piÃ¨ces jointes','à¤…à¤Ÿà¥ˆà¤šà¤®à¥‡à¤‚à¤Ÿ à¤¬à¥à¤•','Buku Lampiran','Libro degli allegati','æ·»ä»˜ãƒ•ã‚¡ã‚¤ãƒ«','ì²¨ë¶€ íŒŒì¼ ë„ì„œ','Bijlagen Boek','Livro de Anexos','à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­à¹à¸™à¸š','Ekler KitabÄ±','Ù…Ù†Ø³Ù„Ú© Ú©ØªØ§Ø¨','é™„ä»¶ä¹¦'),(488,'upload_content','Upload Content','à¦†à¦ªà¦²à§‹à¦¡ à¦•à¦¨à§à¦Ÿà§‡à¦¨à§à¦Ÿ','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø­ØªÙˆÙ‰','TÃ©lÃ©charger le contenu','à¤¸à¤¾à¤®à¤—à¥à¤°à¥€ à¤…à¤ªà¤²à¥‹à¤¡ à¤•à¤°à¥‡à¤‚','Unggah Konten','Carica contenuto','ã‚³ãƒ³ãƒ†ãƒ³ãƒ„ã‚’ã‚¢ãƒƒãƒ—ãƒ­ãƒ¼ãƒ‰ã™ã‚‹','ì½˜í…ì¸  ì—…ë¡œë“œ','Upload inhoud','Upload de conteÃºdo','à¸­à¸±à¸žà¹‚à¸«à¸¥à¸”à¹€à¸™à¸·à¹‰à¸­à¸«à¸²','Ä°Ã§erik YÃ¼kle','Ù…ÙˆØ§Ø¯ Ø§Ù¾ Ù„ÙˆÚˆ Ú©Ø±ÛŒÚº','ä¸Šä¼ å†…å®¹'),(489,'attachment_type','Attachment Type','à¦¸à¦‚à¦¯à§à¦•à§à¦¤à¦¿ à¦ªà§à¦°à¦•à¦¾à¦°','Ù†ÙˆØ¹ Ø§Ù„Ù…Ø±ÙÙ‚','Type de piÃ¨ce jointe','à¤†à¤¸à¤•à¥à¤¤à¤¿ à¤•à¤¾ à¤ªà¥à¤°à¤•à¤¾à¤°','Jenis Lampiran','Tipo di allegato','ã‚¢ã‚¿ãƒƒãƒãƒ¡ãƒ³ãƒˆã‚¿ã‚¤ãƒ—','ã‚¢ã‚¿ãƒƒãƒãƒ¡ãƒ³ãƒˆã‚¿ã‚¤ãƒ—','Aanhangertype','Tipo de Anexo','à¸›à¸£à¸°à¹€à¸ à¸—à¹€à¸­à¸à¸ªà¸²à¸£à¹à¸™à¸š','Ek tipi','Ù…Ù†Ø³Ù„Ú© Ú©ÛŒ Ù‚Ø³Ù…','é™„ä»¶ç±»åž‹'),(490,'exam_master','Exam Master','à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦®à¦¾à¦¸à§à¦Ÿà¦¾à¦°','Ø§Ù„Ø§Ù…ØªØ­Ø§Ù† Ù…Ø§Ø¬Ø³ØªÙŠØ±','MaÃ®tre d\'examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤®à¤¾à¤¸à¥à¤Ÿà¤°','Master ujian','Maestro dell\'esame','è©¦é¨“ãƒžã‚¹ã‚¿ãƒ¼','ì‹œí—˜ ë§ˆìŠ¤í„°','Examenmeester','Mestre do Exame','à¸›à¸£à¸´à¸à¸à¸²à¹‚à¸—à¸à¸²à¸£à¸ªà¸­à¸š','SÄ±nav MasterÄ±','Ø§Ù…ØªØ­Ø§Ù† Ù…Ø§Ø³Ù¹Ø±','è€ƒè¯•å¤§å¸ˆ'),(491,'exam_hall','Exam Hall','à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦¹à¦²','Ù‚Ø§Ø¹Ø© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†','Salle d\'examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤¹à¥‰à¤²','Aula ujian','Exam Hall','è©¦é¨“ä¼šå ´','ì‹œí—˜ í™€','Examenzaal','Sala de exames','à¸«à¹‰à¸­à¸‡à¸ªà¸­à¸š','SÄ±nav salonu','Ø§Ù…ØªØ­Ø§Ù† ÛØ§Ù„','è€ƒè¯•å¤§åŽ…'),(492,'mark_entries','Mark Entries','à¦®à¦¾à¦°à§à¦• à¦à¦¨à§à¦Ÿà§à¦°à¦¿','Ø¥Ø¯Ø®Ø§Ù„Ø§Øª Ù…Ø§Ø±Ùƒ','Marquer les entrÃ©es','à¤®à¤¾à¤°à¥à¤• à¤à¤‚à¤Ÿà¥à¤°à¥€à¤œ','Tandai Entri','Mark Entries','ã‚¨ãƒ³ãƒˆãƒªãƒ¼ã‚’ãƒžãƒ¼ã‚¯','ë§ˆí¬ í•­ëª©','Invoer markeren','Marcar Entradas','à¸—à¸³à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸£à¸²à¸¢à¸à¸²à¸£','Mark Girdileri','Ù…Ø§Ø±Ú© Ø§Ù†Ø¯Ø±Ø§Ø¬','æ ‡è®°æ¡ç›®'),(493,'tabulation_sheet','Tabulation Sheet','à¦Ÿà§à¦¯à¦¾à¦¬à¦²à§‡à¦Ÿ à¦¶à§€à¦Ÿ','ÙˆØ±Ù‚Ø© Ø§Ù„Ø¬Ø¯ÙˆÙ„Ø©','Feuille de tabulation','à¤Ÿà¥‡à¤¬à¥à¤²à¥‡à¤¶à¤¨ à¤¶à¥€à¤Ÿ','Lembar Tabulasi','Foglio di tabulazione','é›†è¨ˆã‚·ãƒ¼ãƒˆ','ë„í‘œí™” ì‹œíŠ¸','Tabuleringsblad','Folha de tabulaÃ§Ã£o','à¹à¸œà¹ˆà¸™à¸•à¸²à¸£à¸²à¸‡','Tablolama SayfasÄ±','Ù¹ÛŒØ¨Ù„ÙˆÙ„ÛŒÙ†Ù¹ Ø´ÛŒÙ¹','åˆ¶è¡¨è¡¨'),(494,'supervision','Supervision','à¦°à¦•à§à¦·à¦£à¦¾à¦¬à§‡à¦•à§à¦·à¦£','Ø¥Ø´Ø±Ø§Ù','Supervision','à¤ªà¤°à¥à¤¯à¤µà¥‡à¤•à¥à¤·à¤£','Pengawasan','supervisione','ç›£ç£','ê°ë…','Toezicht','SupervisÃ£o','à¸à¸²à¸£à¸”à¸¹à¹à¸¥','Nezaret','Ù†Ú¯Ø±Ø§Ù†ÛŒ','ç›‘ç£'),(495,'hostel_master','Hostel Master','à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦®à¦¾à¦¸à§à¦Ÿà¦¾à¦°','Ù†Ø²Ù„ Ù…Ø§Ø³ØªØ±','MaÃ®tre de l&#39;auberge','à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤®à¤¾à¤¸à¥à¤Ÿà¤°','Master Hostel','Ostello Maestro','ãƒ›ã‚¹ãƒ†ãƒ«ãƒžã‚¹ã‚¿ãƒ¼','í˜¸ìŠ¤í…” ë§ˆìŠ¤í„°','Hostel Master','Mestre do Hostel','à¹‚à¸®à¸ªà¹€à¸—à¸¥à¸¡à¸²à¸ªà¹€à¸•à¸­à¸£à¹Œ','Hostel Master','ÛØ§Ø³Ù¹Ù„ Ù…Ø§Ø³Ù¹Ø±','å®¿èˆå¤§å¸ˆ'),(496,'hostel_room','Hostel Room','à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦°à§à¦®','ØºØ±ÙØ© Ù†Ø²Ù„','Chambre d\'auberge','à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤•à¤¾ à¤•à¤®à¤°à¤¾','Kamar Hostel','Camera dell\'ostello','ãƒ›ã‚¹ãƒ†ãƒ«ãƒ«ãƒ¼ãƒ ','í˜¸ìŠ¤í…” ë£¸','Hostelkamer','Quarto Hostel','à¸«à¹‰à¸­à¸‡à¹‚à¸®à¸ªà¹€à¸—à¸¥','Hostel OdasÄ±','ÛØ§Ù„ÛŒÙ†Úˆ Ú©Ø§ Ú©Ù…Ø±Û','å®¿èˆé—´'),(497,'allocation_report','Allocation Report','à¦¬à¦°à¦¾à¦¦à§à¦¦ à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ','ØªÙ‚Ø±ÙŠØ± Ø§Ù„ØªØ®ØµÙŠØµ','Rapport d\'allocation','à¤†à¤µà¤‚à¤Ÿà¤¨ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','Laporan Alokasi','Rapporto di assegnazione','é…åˆ†ãƒ¬ãƒãƒ¼ãƒˆ','ë°°ë‹¹ ë³´ê³ ì„œ','Toewijzingsverslag','RelatÃ³rio de alocaÃ§Ã£o','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¸ˆà¸±à¸”à¸ªà¸£à¸£','Tahsis Raporu','ØªØ®ØµÛŒØµ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹','åˆ†é…æŠ¥å‘Š'),(498,'route_master','Route Master','à¦°à§à¦Ÿ à¦®à¦¾à¦¸à§à¦Ÿà¦¾à¦°','Ø³ÙŠØ¯ Ø§Ù„Ø·Ø±ÙŠÙ‚','Route Master','à¤°à¥‚à¤Ÿ à¤®à¤¾à¤¸à¥à¤Ÿà¤°','Rute Master','Route Master','ãƒ«ãƒ¼ãƒˆãƒžã‚¹ã‚¿ãƒ¼','ë£¨íŠ¸ ë§ˆìŠ¤í„°','Route Master','Mestre da rota','à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡à¸à¸²à¸£à¹€à¸”à¸´à¸™à¸—à¸²à¸‡','Rota ustasÄ±','Ø±Ø§Ø³ØªÛ Ù…Ø§Ø³Ù¹Ø±','è·¯çº¿å¤§å¸ˆ'),(499,'vehicle_master','Vehicle Master','à¦¯à¦¾à¦¨à¦¬à¦¾à¦¹à¦¨ à¦®à¦¾à¦¸à§à¦Ÿà¦¾à¦°','Ø³ÙŠØ¯ Ø§Ù„Ø³ÙŠØ§Ø±Ø©','VÃ©hicule maÃ®tre','à¤µà¤¾à¤¹à¤¨ à¤®à¤¾à¤¸à¥à¤Ÿà¤°','Master Kendaraan','Maestro del veicolo','è»Šä¸¡ãƒžã‚¹ã‚¿ãƒ¼','ì°¨ëŸ‰ ë§ˆìŠ¤í„°','Voertuig Master','Mestre do VeÃ­culo','à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°à¸•à¹‰à¸™à¹à¸šà¸š','AraÃ§ UstasÄ±','Ú¯Ø§Ú‘ÛŒØ§Úº Ù…Ø§Ø³Ù¹Ø±','è½¦è¾†å¤§å¸ˆ'),(500,'stoppage','Stoppage','à¦¬à¦¿à¦°à¦¤à¦¿','Ø¥Ø¶Ø±Ø§Ø¨','ArrÃªt','à¤ à¤¹à¤°à¤¨à¤¾','Penghentian','Arresto','åœæ­¢','ì¤‘ì§€','stopzetting','Parada','à¸à¸²à¸£à¸«à¸¢à¸¸à¸”','peklik','Ø±ÙˆÚ©Ù†Ø§','åœå·¥'),(501,'assign_vehicle','Assign Vehicle','à¦¯à¦¾à¦¨à¦¬à¦¾à¦¹à¦¨ à¦¬à¦°à¦¾à¦¦à§à¦¦ à¦•à¦°à§à¦¨','ØªØ®ØµÙŠØµ Ù…Ø±ÙƒØ¨Ø©','Assigner un vÃ©hicule','à¤µà¤¾à¤¹à¤¨ à¤¸à¥Œà¤‚à¤ª à¤¦à¥‡à¤‚','Tetapkan Kendaraan','Assegna veicolo','è»Šä¸¡ã‚’å‰²ã‚Šå½“ã¦','ì°¨ëŸ‰ ì§€ì •','Voertuig toewijzen','Atribuir VeÃ­culo','à¸¡à¸­à¸šà¸«à¸¡à¸²à¸¢à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°','AraÃ§ Ata','Ú¯Ø§Ú‘ÛŒØ§Úº ØªÙÙˆÛŒØ¶ Ú©Ø±ÛŒÚº','åˆ†é…è½¦è¾†'),(502,'reports','Reports','à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨','ØªÙ‚Ø§Ø±ÙŠØ±','Rapports','à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','Laporan','Rapporti','ãƒ¬ãƒãƒ¼ãƒˆ','ë³´ê³ ì„œ','rapporten','RelatÃ³rios','à¸£à¸²à¸¢à¸‡à¸²à¸™','Raporlar','Ø±Ù¾ÙˆØ±Ù¹ÛŒÚº','æŠ¥å‘Š'),(503,'books_entry','Books Entry','à¦¬à¦‡ à¦à¦¨à§à¦Ÿà§à¦°à¦¿','Ø¯Ø®ÙˆÙ„ Ø§Ù„ÙƒØªØ¨','EntrÃ©e de livres','à¤ªà¥à¤¸à¥à¤¤à¤•à¥‡à¤‚ à¤ªà¥à¤°à¤µà¥‡à¤¶','Entri Buku','Ingresso dei libri','å›³æ›¸ã‚¨ãƒ³ãƒˆãƒªãƒ¼','ë„ì„œ í•­ëª©','Invoer van boeken','Entrada de livros','à¸£à¸²à¸¢à¸à¸²à¸£à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','Kitaplar GiriÅŸi','Ú©ØªØ§Ø¨ÛŒÚº Ø§Ù†Ù¹Ø±ÛŒ','ä¹¦ç±å…¥é—¨'),(504,'event_type','Event Type','à¦‡à¦­à§‡à¦¨à§à¦Ÿà§‡à¦° à¦§à¦°à¦£','Ù†ÙˆØ¹ Ø§Ù„Ø­Ø¯Ø«','Event Type','Event Type','Jenis Peristiwa','Tipo di evento','ã‚¤ãƒ™ãƒ³ãƒˆã‚¿ã‚¤ãƒ—','ì´ë²¤íŠ¸ ìœ í˜•','Type evenement','Tipo de evento','à¸›à¸£à¸°à¹€à¸ à¸—à¸à¸´à¸ˆà¸à¸£à¸£à¸¡','Etkinlik tipi','ÙˆØ§Ù‚Ø¹Û Ú©ÛŒ Ù‚Ø³Ù…','äº‹ä»¶ç±»åž‹'),(505,'add_events','Add Events','à¦‡à¦­à§‡à¦¨à§à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø¥Ø¶Ø§ÙØ© Ø£Ø­Ø¯Ø§Ø«','Ajouter des Ã©vÃ©nements','à¤ˆà¤µà¥‡à¤‚à¤Ÿ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Acara','Aggiungi eventi','ã‚¤ãƒ™ãƒ³ãƒˆã‚’è¿½åŠ ','ì´ë²¤íŠ¸ ì¶”ê°€','Voeg evenementen toe','Adicionar eventos','à¹€à¸žà¸´à¹ˆà¸¡à¸à¸´à¸ˆà¸à¸£à¸£à¸¡','Etkinlik ekle','ÙˆØ§Ù‚Ø¹Ø§Øª Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ æ´»åŠ¨'),(506,'student_accounting','Student Accounting','à¦›à¦¾à¦¤à§à¦° à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿà¦¿à¦‚','Ù…Ø­Ø§Ø³Ø¨Ø© Ø§Ù„Ø·Ù„Ø§Ø¨','ComptabilitÃ© des Ã©tudiants','à¤›à¤¾à¤¤à¥à¤° à¤²à¥‡à¤–à¤¾','Akuntansi Mahasiswa','ContabilitÃ  degli studenti','å­¦ç”Ÿä¼šè¨ˆ','í•™ìƒ íšŒê³„','Accounting discipulus','Contabilidade Estudantil','à¸šà¸±à¸à¸Šà¸µà¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²','Ã–ÄŸrenci Muhasebesi','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ú¯','å­¦ç”Ÿä¼šè®¡'),(507,'create_single_invoice','Create Single Invoice','à¦à¦•à¦• à¦šà¦¾à¦²à¦¾à¦¨ à¦®à§‹à¦Ÿ à¦°à§à¦Ÿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ ÙØ§ØªÙˆØ±Ø© ÙˆØ§Ø­Ø¯Ø©','CrÃ©er une facture unique','à¤à¤•à¤² à¤šà¤¾à¤²à¤¾à¤¨ à¤¬à¤¨à¤¾à¤à¤','Buat Faktur Tunggal','Crea una singola fattura','å˜ä¸€ã®è«‹æ±‚æ›¸ã‚’ä½œæˆã™ã‚‹','ë‹¨ì¼ ì†¡ìž¥ ìƒì„±','Maak een enkele factuur','Criar uma Ãºnica fatura','à¸ªà¸£à¹‰à¸²à¸‡à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰à¹€à¸”à¸µà¸¢à¸§','Tek Fatura YaratÄ±n','Ø³Ù†Ú¯Ù„ Ø§Ù†ÙˆØ§Ø¦Ø³ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºå•ä¸€å‘ç¥¨'),(508,'create_multi_invoice','Create Multi Invoice','à¦®à¦¾à¦²à§à¦Ÿà¦¿ à¦šà¦¾à¦²à¦¾à¦¨ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ Ù…ØªØ¹Ø¯Ø¯ Ø§Ù„ÙØ§ØªÙˆØ±Ø©','CrÃ©er une facture multiple','à¤®à¤²à¥à¤Ÿà¥€ à¤šà¤¾à¤²à¤¾à¤¨ à¤¬à¤¨à¤¾à¤à¤','Buat Multi Faktur','Crea una fattura multipla','ãƒžãƒ«ãƒã‚¤ãƒ³ãƒœã‚¤ã‚¹ã‚’ä½œæˆ','ë‹¤ì¤‘ ì†¡ìž¥ ìƒì„±','CreÃ«er meerdere facturen','Criar fatura mÃºltipla','à¸ªà¸£à¹‰à¸²à¸‡à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰à¸«à¸¥à¸²à¸¢à¹ƒà¸š','Ã‡ok Fatura OluÅŸtur','Ù…Ù„Ù¹ÛŒ Ø§Ù†ÙˆØ§Ø¦Ø³ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºå¤šä¸ªå‘ç¥¨'),(509,'summary_report','Summary Report','à¦¸à¦¾à¦°à¦¸à¦‚à¦•à§à¦·à§‡à¦ª à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨','ØªÙ‚Ø±ÙŠØ± Ù…Ù„Ø®Øµ','Rapport sommaire','à¤¸à¤‚à¤•à¥à¤·à¤¿à¤ªà¥à¤¤ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','Rangkuman laporan','Relazione di sintesi','æ¦‚ç•¥å ±å‘Š','ìš”ì•½ ë³´ê³ ì„œ','Samenvattingsverslag','RelatÃ³rio resumido','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸ªà¸£à¸¸à¸›','Ã–zet raporu','Ø³Ù…Ø±ÛŒ Ø±Ù¾ÙˆØ±Ù¹','æ€»ç»“æŠ¥å‘Š'),(510,'office_accounting','Office Accounting','à¦…à¦«à¦¿à¦¸ à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿà¦¿à¦‚','Ù…Ø­Ø§Ø³Ø¨Ø© Ø§Ù„Ù…ÙƒØªØ¨','ComptabilitÃ© de bureau','à¤•à¤¾à¤°à¥à¤¯à¤¾à¤²à¤¯ à¤²à¥‡à¤–à¤¾','Akuntansi Kantor','officium Accounting','ã‚ªãƒ•ã‚£ã‚¹ä¼šè¨ˆ','íšŒê³„','Office Accounting','Contabilidade de EscritÃ³rios','à¸ªà¸³à¸™à¸±à¸à¸‡à¸²à¸™à¸šà¸±à¸à¸Šà¸µ','Ofis Muhasebesi','Ø¢ÙØ³ Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ú¯','åŠžå…¬å®¤ä¼šè®¡'),(511,'under_group','Under Group','à¦¦à¦²à§‡à¦° à¦…à¦§à§€à¦¨à§‡','ØªØ­Øª Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Sous groupe','Sous groupe','Di bawah Grup','Sotto gruppo','ã‚°ãƒ«ãƒ¼ãƒ—ä¸‹','ê·¸ë£¹','Onder groep','Em grupo','à¸ à¸²à¸¢à¹ƒà¸•à¹‰à¸à¸¥à¸¸à¹ˆà¸¡','Grup altÄ±nda','Ú¯Ø±ÙˆÙ¾ Ú©Û’ ØªØ­Øª','åœ¨é›†å›¢ä¸‹'),(512,'bank_account','Bank Account','à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¹à¦¿à¦¸à¦¾à¦¬','Ø­Ø³Ø§Ø¨ Ø§Ù„Ø¨Ù†Ùƒ','Compte bancaire','à¤¬à¥ˆà¤‚à¤• à¤–à¤¾à¤¤à¤¾','Akun bank','Conto bancario','éŠ€è¡Œå£åº§','ì€í–‰ ê³„ì¢Œ','Bankrekening','Conta bancÃ¡ria','à¸šà¸±à¸à¸Šà¸µà¸˜à¸™à¸²à¸„à¸²à¸£','Banka hesabÄ±','','Ø¨ÛŒÙ†Ú© Ø§Ú©Ø§Ø¤Ù†Ù¹'),(513,'ledger_account','Ledger Account','à¦²à§‡à¦œà¦¾à¦° à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','Ø­Ø³Ø§Ø¨ Ø¯ÙØªØ± Ø§Ù„Ø£Ø³ØªØ§Ø°','Compte gÃ©nÃ©ral','à¤¬à¤¹à¥€ à¤–à¤¾à¤¤à¤¾','Akun Buku Besar','Account di contabilitÃ  generale','å…ƒå¸³ã‚¢ã‚«ã‚¦ãƒ³ãƒˆ','ì›ìž¥ ê³„ì •','Grootboekrekening','Conta contÃ¡bil','à¸šà¸±à¸à¸Šà¸µà¹à¸¢à¸à¸›à¸£à¸°à¹€à¸ à¸—','Muhasebe HesabÄ±','Ù„ÛŒØ¬Ø± Ø§Ú©Ø§Ø¤Ù†Ù¹','åˆ†ç±»å¸'),(514,'create_voucher','Create Voucher','à¦­à¦¾à¦‰à¦šà¦¾à¦° à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ Ù‚Ø³ÙŠÙ…Ø©','CrÃ©er votre bon','à¤µà¤¾à¤‰à¤šà¤° à¤¬à¤¨à¤¾à¤à¤‚','Buat Voucher','Crea un voucher','ãƒã‚¦ãƒãƒ£ãƒ¼ã‚’ä½œæˆ','ë°”ìš°ì²˜ ë§Œë“¤ê¸°','Maak een voucher aan','Criar comprovante','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð²Ð°ÑƒÑ‡ÐµÑ€','','ÙˆØ§Ø¤Ú†Ø± Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºå‡­è¯'),(515,'day_book','Day Book','à¦œà¦¾à¦¬à§‡à¦¦à¦¾','ÙƒØªØ§Ø¨ Ø§Ù„ÙŠÙˆÙ…','Livre de jour','à¤¡à¥‡ à¤¬à¥à¤•','Buku Harian','Libro del giorno','ãƒ‡ã‚¤ãƒ–ãƒƒã‚¯','ë°ì´ ë¶','Dagboek','Livro do dia','à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­à¸£à¸²à¸¢à¸§à¸±à¸™',' GÃ¼n KitabÄ±','Ø¯Ù† Ú©ÛŒ Ú©ØªØ§Ø¨','æ—¥è®°'),(516,'cash_book','Cash Book','à¦¨à¦—à¦¦ à¦¬à¦‡','ÙƒØªØ§Ø¨ Ø§Ù„Ù†Ù‚Ø¯ÙŠØ©','Livre de caisse','à¤¨à¤•à¤¦ à¤–à¤¾à¤¤à¤¾','Buku Tunai','Buku Tunai','Buku Tunai','í˜„ê¸ˆ ë„ì„œ','Buy Books','Livro caixa','à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­à¹€à¸¥à¹ˆà¸¡à¹€à¸‡à¸´à¸™à¸ªà¸”','Kasa defteri','Ù†Ù‚Ø¯ Ú©ØªØ§Ø¨','çŽ°é‡‘ç°¿'),(517,'bank_book','Bank Book','à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¬à¦‡','ÙƒØªØ§Ø¨ Ø§Ù„Ø¨Ù†Ùƒ','Livret de banque','à¤¬à¥ˆà¤‚à¤• à¤•à¥€ à¤•à¤¿à¤¤à¤¾à¤¬','Buku bank','Libro bancario','é é‡‘é€šå¸³','ì€í–‰ í†µìž¥','Bankboek','Caderneta bancÃ¡ria','à¸ªà¸¡à¸¸à¸”à¸šà¸±à¸à¸Šà¸µà¸˜à¸™à¸²à¸„à¸²à¸£','Banka defteri','Ø¨ÛŒÙ†Ú© Ú©ØªØ§Ø¨','å­˜æŠ˜'),(518,'ledger_book','Ledger Book','à¦–à¦¤à¦¿à§Ÿà¦¾à¦¨ à¦¬à¦‡','Ø¯ÙØªØ± Ø§Ù„Ø£Ø³ØªØ§Ø°','Livre de grand livre','à¤²à¥‡à¤œà¤° à¤¬à¥à¤•','Buku Besar','Libro mastro','å…ƒå¸³ãƒ–ãƒƒã‚¯','ë ˆì € ë„ì„œ','Grootboek','Livro contÃ¡bil','à¸ªà¸¡à¸¸à¸”à¸šà¸±à¸à¸Šà¸µà¹à¸¢à¸à¸›à¸£à¸°à¹€à¸ à¸—','Defter Defteri','Ù„ÛŒÚˆØ± Ø¨Ú©','Ledger Book'),(519,'trial_balance','Trial Balance','à¦Ÿà§à¦°à¦¾à¦¯à¦¼à¦¾à¦² à¦¬à§à¦¯à¦¾à¦²à§‡à¦¨à§à¦¸','Ù…ÙŠØ²Ø§Ù† Ø§Ù„Ù…Ø±Ø§Ø¬Ø¹Ø©','Balance d&#39;essai','à¤¸à¤‚à¤¤à¥à¤²à¤¨ à¤ªà¤°à¥€à¤•à¥à¤·à¤£','Neraca saldo','Bilancio di verifica','è©¦ç®—è¡¨','ì‹œì‚°í‘œ','Proefbalans','Balancete','à¸‡à¸šà¸—à¸”à¸¥à¸­à¸‡','Mizan','Ø¢Ø²Ù…Ø§Ø¦Ø´ÛŒ Ø¨ÛŒÙ„Ù†Ø³',' è¯•ç®—å¹³è¡¡'),(520,'settings','Settings','à¦¸à§à¦¥à¦¾à¦ªà¦¨','Ø§Ù„Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª','RÃ©glages','à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—à¥à¤¸','Pengaturan','impostazioni','è¨­å®š','ì„¤ì •','instellingen','DefiniÃ§Ãµes','à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²','Ayarlar','ØªØ±ØªÛŒØ¨Ø§Øª','ØªØ±ØªÛŒØ¨Ø§Øª'),(521,'sms_settings','Sms Settings','à¦à¦¸à¦à¦®à¦à¦¸ à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø©','ParamÃ¨tres Sms','à¤à¤¸à¤à¤®à¤à¤¸ à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—à¥à¤¸','Pengaturan Sms','Sms Settings','SMSè¨­å®š','SMS ì„¤ì •','Sms Settings','ConfiguraÃ§Ãµes de SMS','à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸² Sms','Sms AyarlarÄ±','Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ Ú©ÛŒ ØªØ±ØªÛŒØ¨Ø§Øª','çŸ­ä¿¡è®¾ç½®'),(522,'cash_book_of','Cash Book Of','à¦•à§à¦¯à¦¾à¦¶ à¦¬à§à¦•','ÙƒØªØ§Ø¨ Ø§Ù„Ù†Ù‚Ø¯ÙŠØ© Ù…Ù†','Livre de caisse de','à¤•à¥€ à¤•à¥ˆà¤¶ à¤¬à¥à¤•','Buku Tunai Dari','Libro cassa di','ã‚­ãƒ£ãƒƒã‚·ãƒ¥ãƒ–ãƒƒã‚¯','í˜„ê¸ˆ ë„ì„œ ì¤‘','Kasboek van','Livro De Dinheiro De','à¸šà¸±à¸à¸Šà¸µà¹€à¸‡à¸´à¸™à¸ªà¸”à¸‚à¸­à¸‡','Nakit Ã‡ek Defteri','Ú©ÛŒØ´ Ú©ÛŒ Ú©ØªØ§Ø¨','çŽ°é‡‘ç°¿'),(523,'by_cash','By Cash','à¦¨à¦—à¦¦à§‡','Ù†Ù‚Ø¯Ø§','En espÃ¨ces','à¤¨à¤•à¤¦ à¤¦à¥à¤µà¤¾à¤°à¤¾','Dengan uang tunai','In contanti','ç¾é‡‘ã§','í˜„ê¸ˆìœ¼ë¡œ','Contant','Em dinheiro','à¹‚à¸”à¸¢à¹€à¸‡à¸´à¸™à¸ªà¸”','Nakit','Ù†Ù‚Ø¯ Ú©ÛŒ Ø·Ø±Ù Ø³Û’','ç”¨çŽ°é‡‘'),(524,'by_bank','By Bank','à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¦à§à¦¬à¦¾à¦°à¦¾','Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø¨Ù†Ùƒ','Par banque','à¤¬à¥ˆà¤‚à¤• à¤¦à¥à¤µà¤¾à¤°à¤¾','Oleh Bank','Dalla banca','éŠ€è¡Œã«ã‚ˆã‚‹','ì€í–‰ ë³„','Per bank','Por banco','à¹‚à¸”à¸¢à¸˜à¸™à¸²à¸„à¸²à¸£','Banka TarafÄ±ndan','Ø¨ÛŒÙ†Ú© Ú©ÛŒ Ø·Ø±Ù Ø³Û’','ç”±é“¶è¡Œ'),(525,'total_strength','Total Strength','à¦®à§‹à¦Ÿ à¦¶à¦•à§à¦¤à¦¿','Ø§Ù„Ù‚ÙˆØ© Ø§Ù„ÙƒÙ„ÙŠØ©','Force totale','à¤•à¥à¤² à¤¤à¤¾à¤•à¤¤','Total Kekuatan','Forza totale','ç·å¼·åº¦','ì´ ê°•ë„','Totale sterkte','ForÃ§a total','à¸„à¸§à¸²à¸¡à¹à¸‚à¹‡à¸‡à¹à¸£à¸‡à¹‚à¸”à¸¢à¸£à¸§à¸¡','Toplam gÃ¼cÃ¼','Ú©Ù„ Ø·Ø§Ù‚Øª','æ€»å¼ºåº¦'),(526,'teachers','Teachers','à¦¶à¦¿à¦•à§à¦·à¦•','Ù…Ø¹Ù„Ù…ÙˆÙ†','Enseignants','à¤¶à¤¿à¤•à¥à¤·à¤•à¥‹à¤‚ à¤•à¥€','Guru','Insegnanti','å…ˆç”Ÿ','êµì‚¬ë“¤','leerkrachten','Professores','à¸„à¸£à¸¹à¸œà¸¹à¹‰à¸ªà¸­à¸™','Ã–ÄŸretmenler','Ø§Ø³Ø§ØªØ°Û','è€å¸ˆ'),(527,'student_quantity','Student Quantity','à¦›à¦¾à¦¤à§à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£','ÙƒÙ…ÙŠØ© Ø§Ù„Ø·Ø§Ù„Ø¨','QuantitÃ© d\'Ã©tudiant','à¤›à¤¾à¤¤à¥à¤° à¤®à¤¾à¤¤à¥à¤°à¤¾','Jumlah Mahasiswa','QuantitÃ  di studenti','å­¦ç”Ÿæ•°','í•™ìƒ ìˆ˜','Student Aantal','Quantidade de estudantes','ÐšÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ÑƒÑ‡ÐµÐ½Ð¸ÐºÐ¾Ð²','Ã–ÄŸrenci MiktarÄ±','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©ÛŒ Ù…Ù‚Ø¯Ø§Ø±','å­¦ç”Ÿæ•°é‡'),(528,'voucher','Voucher','à¦°à¦¸à¦¿à¦¦','Ù‚Ø³ÙŠÙ…Ø©','Bon','à¤µà¤¾à¤‰à¤šà¤°','Voucher','Voucher; tagliando','ãƒã‚¦ãƒãƒ£ãƒ¼','ë³´ì¦ì¸','bon','Comprovante','à¸„à¸¹à¸›à¸­à¸‡','fiÅŸ','ÙˆØ§Ø¤Ú†Ø±','ÙˆØ§Ø¤Ú†Ø±'),(529,'total_number','Total Number','à¦®à§‹à¦Ÿ à¦¸à¦‚à¦–à§à¦¯à¦¾','à¦®à§‹à¦Ÿ à¦¸à¦‚à¦–à§à¦¯à¦¾','Nombre total','à¤•à¥à¤² à¤¸à¤‚à¤–à¥à¤¯à¤¾','Jumlah total','Numero totale','ç·æ•°','ç·æ•°','NÃºmero total','NÃºmero total','à¸ˆà¸³à¸™à¸§à¸™à¸£à¸§à¸¡','Toplam sayÄ±sÄ±','Ú©Ù„ ØªØ¹Ø¯Ø§Ø¯','æ€»æ•°'),(530,'total_route','Total Route','à¦®à§‹à¦Ÿ à¦°à§à¦Ÿ','Ø§Ù„Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø¥Ø¬Ù…Ø§Ù„ÙŠ','Total Route','à¤•à¥à¤² à¤°à¥‚à¤Ÿ','Rute Total','Percorso totale','ãƒˆãƒ¼ã‚¿ãƒ«ãƒ«ãƒ¼ãƒˆ','ì´ ê²½ë¡œ','Total Route','Total Route','à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','Toplam GÃ¼zergah','Ú©Ù„ Ø±ÙˆÙ¹','æ€»è·¯çº¿'),(531,'total_room','Total Room','à¦®à§‹à¦Ÿ à¦•à¦•à§à¦·','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„ØºØ±ÙØ©','Chambre totale','à¤•à¥à¤² à¤•à¤®à¤°à¤¾','Total Kamar','Stanza totale','ãƒˆãƒ¼ã‚¿ãƒ«ãƒ«ãƒ¼ãƒ ','ì´ ë°©','Totaal kamer','Quarto total','à¸£à¸§à¸¡à¸«à¹‰à¸­à¸‡à¸žà¸±à¸','Toplam oda','Ú©Ù„ Ú©Ù…Ø±Û','æ€»æˆ¿é—´'),(532,'amount','Amount','à¦ªà¦°à¦¿à¦®à¦¾à¦£','ÙƒÙ…ÙŠØ©','Montant','à¤°à¤•à¤®','Jumlah','Jumlah','é‡','ì–‘','Bedrag','Montante','à¸ˆà¸³à¸™à¸§à¸™','Miktar','Miktar','é‡'),(533,'branch_dashboard','Branch Dashboard','à¦¶à¦¾à¦–à¦¾ à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡','Ù„ÙˆØ­Ø© ØªØ­ÙƒÙ… Ø§Ù„ÙØ±Ø¹','Tableau de bord de branche','à¤¶à¤¾à¤–à¤¾ à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡','Dashboard Cabang','Dashboard del ramo','ãƒ–ãƒ©ãƒ³ãƒãƒ€ãƒƒã‚·ãƒ¥ãƒœãƒ¼ãƒ‰','ì§€ì  ëŒ€ì‹œ ë³´ë“œ','Branch Dashboard','Painel de filiais','à¸ªà¸²à¸‚à¸²à¹à¸”à¸Šà¸šà¸­à¸£à¹Œà¸”','Åžube Panosu','Ø¨Ø±Ø§Ù†Ú† ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ','åˆ†æ”¯ä»ªè¡¨æ¿'),(534,'branch_list','Branch List','à¦¶à¦¾à¦–à¦¾ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ÙØ±Ø¹','Liste de branche','à¤¶à¤¾à¤–à¤¾ à¤¸à¥‚à¤šà¥€','Daftar Cabang','Elenco delle filiali','æ”¯åº—ãƒªã‚¹ãƒˆ','ì§€ì  ëª©ë¡','Branchelijst','Lista de Filial','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸ªà¸²à¸‚à¸²','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸ªà¸²à¸‚à¸²','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸ªà¸²à¸‚à¸²','åˆ†è¡Œåå•'),(535,'create_branch','Create Branch','à¦¶à¦¾à¦–à¦¾ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ ÙØ±Ø¹','CrÃ©er une branche','à¤¶à¤¾à¤–à¤¾ à¤¬à¤¨à¤¾à¤à¤','Buat Cabang','Crea un ramo','ãƒ–ãƒ©ãƒ³ãƒã‚’ä½œæˆ','ì§€ì  ë§Œë“¤ê¸°','Maak filiaal','Criar Filial','à¸ªà¸£à¹‰à¸²à¸‡à¸ªà¸²à¸‚à¸²','Åžube Yarat','Ø¨Ø±Ø§Ù†Ú† Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºåˆ†æ”¯'),(536,'branch_name','Branch Name','à¦¶à¦¾à¦–à¦¾à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„ÙØ±Ø¹','Nom de la filiale','à¤¶à¤¾à¤–à¤¾ à¤•à¤¾ à¤¨à¤¾à¤®','Nama cabang','Nome del ramo','æ”¯åº—å','ì§€ì ëª…','Filiaalnaam','Nome da Filial','à¸Šà¸·à¹ˆà¸­à¸ªà¸²à¸‚à¸²','Åžube AdÄ±','Ø¨Ø±Ø§Ù†Ú† Ú©Ø§ Ù†Ø§Ù…','åˆ†åº—åç§°'),(537,'school_name','School Name','à¦¸à§à¦•à§à¦² à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…Ø¯Ø±Ø³Ø©','Nom de l&#39;Ã©cole','à¤µà¤¿à¤¦à¥à¤¯à¤¾à¤²à¤¯ à¤•à¤¾ à¤¨à¤¾à¤®','Nama sekolah','Nome della scuola','å­¦æ ¡å','í•™êµ ì´ë¦„','Schoolnaam','Nome da escola','à¸Šà¸·à¹ˆà¸­à¹‚à¸£à¸‡à¹€à¸£à¸µà¸¢à¸™','Okul AdÄ±','Ø³Ú©ÙˆÙ„ Ú©Ø§ Ù†Ø§Ù…','å­¦æ ¡åç§°'),(538,'mobile_no','Mobile No','à¦®à§‹à¦¬à¦¾à¦‡à¦² à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°','Ø±Ù‚Ù… Ø§Ù„Ù…ÙˆØ¨Ø§ÙŠÙ„','Mobile No','à¤®à¥‹à¤¬à¤¾à¤‡à¤² à¤¨à¤¹à¥€à¤‚ à¤¹à¥ˆ','Nomor telepon seluler','Cellulare n','æºå¸¯é›»è©±ç•ªå·','ëª¨ë°”ì¼ ì•„ë‹ˆìš”','Mobiel Nee','Mobile No','à¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚à¹‚à¸—à¸£à¸¨à¸±à¸žà¸—à¹Œà¸¡à¸·à¸­à¸–à¸·à¸­','Telefon numarasÄ±','Ù…ÙˆØ¨Ø§Ø¦Ù„ Ù†Ù…Ø¨Ø±','æ‰‹æœºå·ç '),(539,'symbol','Symbol','à¦ªà¦°à¦¿à¦®à¦¾à¦£','Ø±Ù…Ø²','symbole','à¤ªà¥à¤°à¤¤à¥€à¤•','Simbol','Simbolo','ã‚·ãƒ³ãƒœãƒ«','ìƒì§•','Symbool','SÃ­mbolo','à¸ªà¸±à¸à¸¥à¸±à¸à¸©à¸“à¹Œ','sembol','Ø¹Ù„Ø§Ù…Øª','ç¬¦å·'),(540,'city','City','à¦¶à¦¹à¦°','Ù…Ø¯ÙŠÙ†Ø©','Ville','à¤¶à¤¹à¤°','Kota','cittÃ ','å¸‚','ë„ì‹œ','City','Cidade','à¹€à¸¡à¸·à¸­à¸‡','ÅŸehir','Ø´ÛØ±','åŸŽå¸‚'),(541,'academic_year','Academic Year','à¦à¦•à¦¾à¦¡à§‡à¦®à¦¿à¦• à¦¬à¦›à¦°','Ø§Ù„Ø³Ù†Ø© Ø§Ù„Ø£ÙƒØ§Ø¯ÙŠÙ…ÙŠØ©','AnnÃ©e acadÃ©mique','à¤¶à¥ˆà¤•à¥à¤·à¤£à¤¿à¤• à¤µà¤°à¥à¤·','Tahun akademik','Anno accademico','å­¦å¹´','í•™ë…„','Academiejaar','Ano acadÃªmico','à¸›à¸µà¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²','Akademik yÄ±l','ØªØ¹Ù„ÛŒÙ…ÛŒ Ø³Ø§Ù„','å­¦å¹´'),(542,'select_branch_first','First Select The Branch','à¦ªà§à¦°à¦¥à¦®à§‡ à¦¶à¦¾à¦–à¦¾ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø£ÙˆÙ„Ø§ Ø§Ø®ØªØ± Ø§Ù„ÙØ±Ø¹','D\'abord, sÃ©lectionnez la branche','à¤¸à¤¬à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤¶à¤¾à¤–à¤¾ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pertama Pilih Cabang','Prima seleziona il ramo','æœ€åˆã«æ”¯åº—ã‚’é¸æŠž','ë¨¼ì € ì§€ì  ì„ íƒ','Selecteer eerst de vestiging','Primeiro selecione o ramo','à¸à¹ˆà¸­à¸™à¸­à¸·à¹ˆà¸™à¹€à¸¥à¸·à¸­à¸à¸ªà¸²à¸‚à¸²','Ä°lk Åžube SeÃ§','Ø³Ø¨ Ø³Û’ Ù¾ÛÙ„Û’ Ø¨Ø±Ø§Ù†Ú† Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é¦–å…ˆé€‰æ‹©åˆ†æ”¯'),(543,'select_class_first','Select Class First','à¦•à§à¦²à¦¾à¦¸ à¦ªà§à¦°à¦¥à¦® à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø§Ø®ØªØ± Ø§Ù„ÙØ¦Ø© Ø§Ù„Ø£ÙˆÙ„Ù‰','SÃ©lectionnez la classe d&#39;abord','à¤•à¤•à¥à¤·à¤¾ à¤ªà¥à¤°à¤¥à¤® à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih Kelas Pertama','Seleziona prima la classe','æœ€åˆã«ã‚¯ãƒ©ã‚¹ã‚’é¸æŠž','í´ëž˜ìŠ¤ ìš°ì„  ì„ íƒ','Selecteer eerst klasse','Selecione a primeira classe','à¹€à¸¥à¸·à¸­à¸ Class First','Ã–nce sÄ±nÄ±fÄ± seÃ§','Ø³Ø¨ Ø³Û’ Ù¾ÛÙ„Û’ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº Ú©Ù„Ø§Ø³','é€‰æ‹©Class First'),(544,'select_country','Select Country','à¦¦à§‡à¦¶ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ Ø§Ù„Ø¯ÙˆÙ„Ø©','Choisissez le pays','à¤¦à¥‡à¤¶ à¤šà¥à¤¨à¤¿à¤','Pilih negara','Pilih negara','å›½ã‚’é¸æŠž','å›½ã‚’é¸æŠž','å›½ã‚’é¸æŠž','Selecione o pais','à¹€à¸¥à¸·à¸­à¸à¸›à¸£à¸°à¹€à¸—à¸¨','Ãœlke SeÃ§','Ù…Ù„Ú© Ú©Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©ÛŒØ¬Ø¦Û’','é€‰æ‹©å›½å®¶'),(545,'mother_tongue','Mother Tongue','à¦®à¦¾à¦¤à§ƒà¦­à¦¾à¦·à¦¾','Ø§Ù„Ù„ØºØ© Ø§Ù„Ø£Ù…','Langue maternelle','à¤®à¤¾à¤¤à¥ƒ à¤­à¤¾à¤·à¤¾','Bahasa ibu','Madrelingua','æ¯å›½èªž','æ¯å›½èªž','Moedertaal','LÃ­ngua nativa','à¸ à¸²à¸©à¸²à¸«à¸¥à¸±à¸','Ana dil','Ù…Ø§Ø¯Ø±ÛŒ Ø²Ø¨Ø§Ù†','æ¯è¯­'),(546,'caste','Caste','à¦¬à¦°à§à¦£','Ø§Ù„Ø·Ø§Ø¦ÙØ©','Caste','à¤œà¤¾à¤¤à¤¿','Kasta','Casta','ã‚«ãƒ¼ã‚¹ãƒˆ','ì¹´ìŠ¤íŠ¸','Kaste','Casta','à¸§à¸£à¸£à¸“à¸°','Kast','Ø°Ø§Øª','ç§å§“'),(547,'present_address','Present Address','à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦ à¦¿à¦•à¦¾à¦¨à¦¾','Ø§Ù„Ø¹Ù†ÙˆØ§Ù† Ø§Ù„Ø­Ø§Ù„ÙŠ','Adresse actuelle','à¤µà¤°à¥à¤¤à¤®à¤¾à¤¨ à¤ªà¤¤à¤¾','Alamat sekarang','Indirizzo attuale','ç¾ä½æ‰€','í˜„ìž¬ ì£¼ì†Œ','Huidig â€‹â€‹adres','EndereÃ§o presente','à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆà¸›à¸±à¸ˆà¸ˆà¸¸à¸šà¸±à¸™','à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆà¸›à¸±à¸ˆà¸ˆà¸¸à¸šà¸±à¸™','Ù…ÙˆØ¬ÙˆØ¯Û Ù¾ØªÛ','çŽ°åœ¨çš„ä½å€'),(548,'permanent_address','Permanent Address','à¦¸à§à¦¥à¦¾à¦¯à¦¼à§€ à¦ à¦¿à¦•à¦¾à¦¨à¦¾','Ø§Ù„Ø¹Ù†ÙˆØ§Ù† Ø§Ù„Ø«Ø§Ø¨Øª','Permanent Address','à¤¸à¥à¤¥à¤¾à¤ˆ à¤ªà¤¤à¤¾','alamat tetap','Residenza','Residenza','ì˜êµ¬ ì£¼ì†Œ','Oratio permanent','Oratio permanent','ÐŸÐ¾ÑÑ‚Ð¾ÑÐ½Ð½Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ','daimi Adres','Ù…Ø³ØªÙ‚Ù„ Ù¾ØªÛ','æ°¸ä¹…åœ°å€'),(549,'profile_picture','Profile Picture','à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦›à¦¬à¦¿','Ø§Ù„ØµÙˆØ±Ù‡ Ø§Ù„Ø´Ø®ØµÙŠÙ‡','Image de profil','à¤ªà¥à¤°à¥‹à¤«à¤¼à¤¾à¤‡à¤² à¤«à¥‹à¤Ÿà¥‹','Gambar profil','Immagine del profilo','ãƒ—ãƒ­ãƒ•ã‚£ãƒ¼ãƒ«ã®å†™çœŸ','í”„ë¡œí•„ ì‚¬ì§„','Profielfoto','Foto do perfil','à¸£à¸¹à¸›à¸›à¸£à¸°à¸§à¸±à¸•à¸´','Profil fotoÄŸrafÄ±','Ù¾Ø±ÙˆÙØ§Ø¦Ù„ ØªØµÙˆÛŒØ±','ä¸ªäººèµ„æ–™å›¾ç‰‡'),(550,'login_details','Login Details','à¦²à¦— à¦‡à¦¨ à¦¤à¦¥à§à¦¯','ØªÙØ§ØµÙŠÙ„ ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„','dÃ©tails de connexion','à¤²à¥‰à¤—à¤‡à¤¨ à¤µà¤¿à¤µà¤°à¤£','rincian masuk','dettagli del login','ãƒ­ã‚°ã‚¤ãƒ³ã®è©³ç´°','ãƒ­ã‚°ã‚¤ãƒ³ã®è©³ç´°','inloggegevens','detalhes de login','à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸šà¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”','à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸šà¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”','à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸šà¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”','ç™»å½•è¯¦ç»†ä¿¡æ¯'),(551,'retype_password','Retype Password','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦†à¦¬à¦¾à¦° à¦Ÿà¦¾à¦‡à¦ª','Ø£Ø¹Ø¯ Ø¥Ø¯Ø®Ø§Ù„ ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø±','Retaper le mot de passe','Retaper le mot de passe','Ketik ulang kata sandi','Ripeti password','Ripeti password','ì•”í˜¸ ë‹¤ì‹œ ìž…ë ¥','Geef nogmaals het wachtwoord','Redigite a senha','à¸žà¸´à¸¡à¸žà¹Œà¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡','Åžifrenizi yeniden yazÄ±n','Åžifrenizi yeniden yazÄ±n','é‡æ–°è¾“å…¥å¯†ç '),(552,'occupation','Occupation','à¦ªà§‡à¦¶à¦¾','Ø§Ù„Ø§Ø­ØªÙ„Ø§Ù„','OcupaciÃ³n','à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯','Pendudukan','Occupazione','è·æ¥­','ì§ì—…','Bezetting','OcupaÃ§Ã£o','à¸­à¸²à¸Šà¸µà¸ž','Meslek','Meslek','å ç”¨'),(553,'income','Income','à¦†à¦¯à¦¼','Ø§Ù„Ø¥ÙŠØ±Ø§Ø¯Ø§Øª','Ingresos','à¤†à¤¯','Pendapatan','Reddito','æ‰€å¾—','ìˆ˜ìž…','Inkomen','Renda','Ð´Ð¾Ñ…Ð¾Ð´','Gelir','Ø¢Ù…Ø¯Ù†ÛŒ','æ”¶å…¥'),(554,'education','Education','à¦¶à¦¿à¦•à§à¦·à¦¾','Ø§Ù„ØªØ¹Ù„ÙŠÙ…','Ã‰ducation','à¤¶à¤¿à¤•à¥à¤·à¤¾','pendidikan','Formazione scolastica','æ•™è‚²','êµìœ¡','Opleiding','EducaÃ§Ã£o','à¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²','EÄŸitim','ØªØ¹Ù„ÛŒÙ…','ØªØ¹Ù„ÛŒÙ…'),(555,'first_select_the_route','First Select The Route','à¦ªà§à¦°à¦¥à¦® à¦°à§à¦Ÿ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø£ÙˆÙ„Ø§ Ø§Ø®ØªØ± Ø§Ù„Ø·Ø±ÙŠÙ‚','D&#39;abord sÃ©lectionnez l&#39;itinÃ©raire','à¤ªà¤¹à¤²à¥‡ à¤®à¤¾à¤°à¥à¤— à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pertama Pilih Rute','Prima selezionare la rotta','æœ€åˆã«ãƒ«ãƒ¼ãƒˆã‚’é¸æŠž','ë¨¼ì € ê²½ë¡œ ì„ íƒ','Selecteer eerst de route','Primeiro selecione a rota','à¸à¹ˆà¸­à¸™à¸­à¸·à¹ˆà¸™à¹€à¸¥à¸·à¸­à¸à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡','Ä°lk Ã¶nce RotayÄ± SeÃ§in','Ù¾ÛÙ„Ø§ Ø±Ø§Ø³ØªÛ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é¦–å…ˆé€‰æ‹©è·¯çº¿'),(556,'hostel_details','Hostel Details','à¦¹à§‹à¦Ÿà§‡à¦² à¦¬à¦¿à¦¬à¦°à¦£','ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ù†Ø²Ù„','DÃ©tails de l\'hÃ´tel','à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤•à¤¾ à¤µà¤¿à¤µà¤°à¤£','Detail Hostel','Dettagli dell\'hotel','ãƒ›ã‚¹ãƒ†ãƒ«ã®è©³ç´°','í˜¸ìŠ¤í…” ìƒì„¸ ì •ë³´','Hostel details','Detalhes do Hostel','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¹‚à¸®à¸ªà¹€à¸—à¸¥','Hostel DetaylarÄ±','ÛØ§Ø¤Ø³ Ú©ÛŒ ØªÙØµÛŒÙ„Ø§Øª','æ—…èˆè¯¦æƒ…'),(557,'first_select_the_hostel','First Select The Hostel','à¦ªà§à¦°à¦¥à¦® à¦›à¦¾à¦¤à§à¦°à¦¾à¦¬à¦¾à¦¸ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨','à¦ªà§à¦°à¦¥à¦® à¦›à¦¾à¦¤à§à¦°à¦¾à¦¬à¦¾à¦¸ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨','d\'abord sÃ©lectionner l\'hÃ´tel','à¤ªà¤¹à¤²à¥‡ à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','pertama-tama pilih hostel','prima selezionare l&#39;ostello','æœ€åˆã«ãƒ›ã‚¹ãƒ†ãƒ«ã‚’é¸ã¶','ë¨¼ì € í˜¸ìŠ¤í…”ì„ ì„ íƒí•˜ì‹­ì‹œì˜¤.','selecteer eerst het hostel','primeiro selecione o albergue','à¸à¹ˆà¸­à¸™à¸­à¸·à¹ˆà¸™à¹€à¸¥à¸·à¸­à¸à¹‚à¸®à¸ªà¹€à¸—à¸¥','Ã¶nce hosteli seÃ§','Ø³Ø¨ Ø³Û’ Ù¾ÛÙ„Û’ ÛØ§Ø³Ù¹Ù„ Ú©Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ø±ÛŒÚº','é¦–å…ˆé€‰æ‹©å®¿èˆ'),(558,'previous_school_details','Previous School Details','à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€ à¦¸à§à¦•à§à¦² à¦¬à¦¿à¦¬à¦°à¦£','ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ù…Ø¯Ø±Ø³Ø© Ø§Ù„Ø³Ø§Ø¨Ù‚Ø©','Privilege School DÃ©tails','à¤ªà¤¿à¤›à¤²à¤¾ à¤¸à¥à¤•à¥‚à¤² à¤µà¤¿à¤µà¤°à¤£','Detail Sekolah Sebelumnya','Dettagli della scuola precedente','å‰ã®å­¦æ ¡ã®è©³ç´°','ì´ì „ í•™êµ ì„¸ë¶€ ì‚¬í•­','Vorige schoolgegevens','Detalhes da escola anterior','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¹‚à¸£à¸‡à¹€à¸£à¸µà¸¢à¸™à¸à¹ˆà¸­à¸™à¸«à¸™à¹‰à¸²','Ã–nceki Okul DetaylarÄ±','Ã–nceki Okul DetaylarÄ±','ä»¥å‰çš„å­¦æ ¡ç»†èŠ‚'),(559,'book_name','Book Name','à¦¬à¦‡à¦¯à¦¼à§‡à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„ÙƒØªØ§Ø¨','Nom du livre','à¤ªà¥à¤¸à¥à¤¤à¤• à¤•à¤¾ à¤¨à¤¾à¤®','Nama Buku','Nome del libro','æœ¬ã®åå‰','ë„ì„œ ì´ë¦„','Boeknaam','Boeknaam','à¸Šà¸·à¹ˆà¸­à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','à¸Šà¸·à¹ˆà¸­à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','Ú©ØªØ§Ø¨ Ú©Ø§ Ù†Ø§Ù…','ä¹¦å'),(560,'select_ground','Select Ground','à¦—à§à¦°à¦¾à¦‰à¦¨à§à¦¡ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø§Ø®ØªØ± Ø§Ù„Ø£Ø±Ø¶','sÃ©lectionnez Ground','à¤—à¥à¤°à¤¾à¤‰à¤‚à¤¡ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','pilih Ground','seleziona Terra','ã‚°ãƒ©ã‚¦ãƒ³ãƒ‰ã‚’é¸æŠž','ì ‘ì§€ ì„ íƒ','selecteer Ground','selecione Ground','à¹€à¸¥à¸·à¸­à¸à¸à¸£à¸²à¸§à¸”à¹Œ','Zemin seÃ§','Ú¯Ø±Ø§Ø¤Ù†Úˆ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©åœ°é¢'),(561,'import','Import','à¦†à¦®à¦¦à¦¾à¦¨à¦¿','Ø§Ø³ØªÙŠØ±Ø§Ø¯','Importation','à¤†à¤¯à¤¾à¤¤','Impor','Importare','ã‚¤ãƒ³ãƒãƒ¼ãƒˆ','ìˆ˜ìž…','Importeren','Importar','à¸™à¸³à¹€à¸‚à¹‰à¸²','Ä°thalat','Ø¯Ø±Ø¢Ù…Ø¯ Ú©Ø±ÛŒÚº','è¿›å£'),(562,'add_student_category','Add Student Category','à¦›à¦¾à¦¤à§à¦° à¦¬à¦¿à¦­à¦¾à¦— à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø¥Ø¶Ø§ÙØ© ÙØ¦Ø© Ø§Ù„Ø·Ø§Ù„Ø¨','Ajouter une catÃ©gorie d&#39;Ã©tudiant','à¤›à¤¾à¤¤à¥à¤° à¤¶à¥à¤°à¥‡à¤£à¥€ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Kategori Siswa','Aggiungi categoria studente','å­¦ç”Ÿã‚«ãƒ†ã‚´ãƒªã‚’è¿½åŠ ','í•™ìƒ ì¹´í…Œê³ ë¦¬ ì¶”ê°€','Voeg categorie toe','Adicionar categoria de aluno','à¹€à¸žà¸´à¹ˆà¸¡à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆà¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²','Ã–ÄŸrenci Kategorisi Ekle','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©Ø§ Ø²Ù…Ø±Û Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ å­¦ç”Ÿç±»åˆ«'),(563,'id','Id','à¦†à¦‡à¦¡à¦¿','','Id','à¤ˆà¤¦','Id','Id','Id','ì‹ ë¶„ì¦','ID kaart','Identidade','Id','Ä°D','Ø¢Ø¦ÛŒ ÚˆÛŒ','ID'),(564,'edit_category','Edit Category','à¦¬à¦¿à¦­à¦¾à¦— à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦•à¦°à§à¦¨','ØªØ­Ø±ÙŠØ± Ø§Ù„ÙØ¦Ø©','Modifier la catÃ©gorie','à¤¶à¥à¤°à¥‡à¤£à¥€ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','Edit Kategori','Modifica categoria','ã‚«ãƒ†ã‚´ãƒªã‚’ç·¨é›†','ì¹´í…Œê³ ë¦¬ íŽ¸ì§‘','Categorie bewerken','Editar categoria','à¹à¸à¹‰à¹„à¸‚à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆ','Kategoriyi DÃ¼zenle','Ø²Ù…Ø±Û Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘ç±»åˆ«'),(565,'deactivate_account','Deactivate Account','à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦¨à¦¿à¦·à§à¦•à§à¦°à¦¿à¦¯à¦¼ à¦•à¦°à§à¦¨','ØªØ¹Ø·ÙŠÙ„ Ø§Ù„Ø­Ø³Ø§Ø¨','DÃ©sactiver le compte','à¤–à¤¾à¤¤à¤¾ à¤¨à¤¿à¤·à¥à¤•à¥à¤°à¤¿à¤¯ à¤•à¤°à¥‡à¤‚','Nonaktifkan Akun','Disattiva Account','ã‚¢ã‚«ã‚¦ãƒ³ãƒˆã‚’ç„¡åŠ¹åŒ–ã—','ê³„ì • ë¹„í™œì„±í™”','account deactiveren','Desativar conta','à¸›à¸´à¸”à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸šà¸±à¸à¸Šà¸µ','Aktif edilmemiÅŸ hesap','Ø§Ú©Ø§Ø¤Ù†Ù¹ Ú©Ùˆ ØºÛŒØ± ÙØ¹Ø§Ù„ Ú©Ø±ÛŒÚº','å…³é—­æˆ·å£'),(566,'all_sections','All Sections','à¦¸à¦¬ à¦¬à¦¿à¦­à¦¾à¦—','ÙƒÙ„ Ø§Ù„Ø£Ù‚Ø³Ø§Ù…','toutes les sections','à¤¸à¤­à¥€ à¤µà¤°à¥à¤—à¥‹à¤‚','semua bagian','tutte le sezioni','å…¨ã‚»ã‚¯ã‚·ãƒ§ãƒ³','ëª¨ë“  ì„¹ì…˜','alle secties','todas as seÃ§Ãµes','à¸—à¸¸à¸à¸ªà¹ˆà¸§à¸™','tÃ¼m bÃ¶lÃ¼mler','ØªÙ…Ø§Ù… Ø­ØµÙˆÚº','æ‰€æœ‰éƒ¨åˆ†'),(567,'authentication_activate','Authentication Activate','à¦ªà§à¦°à¦®à¦¾à¦£à§€à¦•à¦°à¦£ à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼ à¦•à¦°à§à¦¨','ØªÙØ¹ÙŠÙ„ Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø©','Authentification Activer','à¤ªà¥à¤°à¤®à¤¾à¤£à¥€à¤•à¤°à¤£ à¤¸à¤•à¥à¤°à¤¿à¤¯ à¤•à¤°à¥‡à¤‚','Aktifkan Otentikasi','Autenticazione Attivare','èªè¨¼ã‚’æœ‰åŠ¹ã«ã™ã‚‹','ì¸ì¦ í™œì„±í™”','Authenticatie Activeren','AutenticaÃ§Ã£o Ativar','à¸à¸²à¸£à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸šà¸ªà¸´à¸—à¸˜à¸´à¹Œà¹€à¸›à¸´à¸”à¹ƒà¸Šà¹‰à¸‡à¸²à¸™','Kimlik DoÄŸrulama EtkinleÅŸtir','ØªÙˆØ«ÛŒÙ‚ÛŒ Ú†Ø§Ù„Ùˆ','èº«ä»½éªŒè¯æ¿€æ´»'),(568,'department','Department','à¦¬à¦¿à¦­à¦¾à¦—','Ã˜ Ù‚Ø³Ù…ØŒ Ø£Ù‚Ø³Ø§Ù…','dÃ©partement','à¤µà¤¿à¤­à¤¾à¤—','Departemen','Dipartimento','éƒ¨é–€','í•™ê³¼','afdeling','Departamento','à¹à¸œà¸™à¸','BÃ¶lÃ¼m','Ø´Ø¹Ø¨Û','éƒ¨é—¨'),(569,'salary_grades','Salary Grades','à¦¬à§‡à¦¤à¦¨ à¦—à§à¦°à§‡à¦¡','Ø±Ø§ØªØ¨','Note salariale','à¤µà¥‡à¤¤à¤¨ à¤—à¥à¤°à¥‡à¤¡','Tingkat Gaji','Grado di stipendio','çµ¦ä¸Žã‚°ãƒ¬ãƒ¼ãƒ‰','ê¸‰ì—¬ ë“±ê¸‰','Salarisrang','Grau Salarial','à¸£à¸°à¸”à¸±à¸šà¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ notu','ØªÙ†Ø®ÙˆØ§Û Ú¯Ø±ÛŒÚˆ','è–ªèµ„ç­‰çº§'),(570,'overtime','Overtime Rate (Per Hour)','à¦“à¦­à¦¾à¦°à¦Ÿà¦¾à¦‡à¦® à¦¹à¦¾à¦° (à¦ªà§à¦°à¦¤à¦¿ à¦˜à¦¨à§à¦Ÿà¦¾)','Ù…Ø¹Ø¯Ù„ Ø§Ù„Ø¹Ù…Ù„ Ø§Ù„Ø¥Ø¶Ø§ÙÙŠ (Ù„ÙƒÙ„ Ø³Ø§Ø¹Ø©)','taux des heures supplÃ©mentaires (Ã  l\'heure)','à¤“à¤µà¤°à¤Ÿà¤¾à¤‡à¤® à¤¦à¤° (à¤ªà¥à¤°à¤¤à¤¿ à¤˜à¤‚à¤Ÿà¥‡)','tingkat lembur (Per Jam)','tasso di straordinario (per ora)','è¶…éŽå‹¤å‹™çŽ‡ï¼ˆ1æ™‚é–“ã‚ãŸã‚Šï¼‰','ì´ˆê³¼ ê·¼ë¬´ ìš”ìœ¨ (ì‹œê°„ë‹¹)','overwerk tarief (Per uur)','taxa de horas extras (por hora)','à¸­à¸±à¸•à¸£à¸²à¸à¸²à¸£à¸—à¸³à¸‡à¸²à¸™à¸¥à¹ˆà¸§à¸‡à¹€à¸§à¸¥à¸² (à¸•à¹ˆà¸­à¸Šà¸±à¹ˆà¸§à¹‚à¸¡à¸‡)','fazla mesai Ã¼creti (Saat BaÅŸÄ±)','Ø§Ø¶Ø§ÙÛŒ Ø´Ø±Ø­ (ÙÛŒ Ú¯Ú¾Ù†Ù¹Û)','åŠ ç­è´¹ï¼ˆæ¯å°æ—¶ï¼‰'),(571,'salary_grade','Salary Grade','à¦¬à§‡à¦¤à¦¨ à¦—à§à¦°à§‡à¦¡','Ø±Ø§ØªØ¨','Note salariale','à¤µà¥‡à¤¤à¤¨ à¤—à¥à¤°à¥‡à¤¡','Tingkat Gaji','Grado di stipendio','çµ¦ä¸Žã‚°ãƒ¬ãƒ¼ãƒ‰','ê¸‰ì—¬ ë“±ê¸‰','Salarisrang','Grau Salarial','à¸£à¸°à¸”à¸±à¸šà¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ notu','ØªÙ†Ø®ÙˆØ§Û Ú¯Ø±ÛŒÚˆ','è–ªèµ„ç­‰çº§'),(572,'payable_type','Payable Type','à¦ªà§à¦°à¦¦à§‡à¦¯à¦¼ à¦ªà§à¦°à¦•à¦¾à¦°','Ù†ÙˆØ¹ Ø§Ù„Ø¯ÙØ¹','Payable Type','à¤¦à¥‡à¤¯ à¤ªà¥à¤°à¤•à¤¾à¤°','Jenis Hutang','Tipo pagabile','æ”¯æ‰•ã‚¿ã‚¤ãƒ—','ì§€ë¶ˆ ìœ í˜•','Betaalbaar type','Tipo pagÃ¡vel','à¸›à¸£à¸°à¹€à¸ à¸—à¹€à¸ˆà¹‰à¸²à¸«à¸™à¸µà¹‰','Ã–denecek TÃ¼r','Ù¾Ø§Ø¦ÛŒØ¯Ø§Ø± Ù‚Ø³Ù…','åº”ä»˜æ¬¾å¼'),(573,'edit_type','Edit Type','à¦Ÿà¦¾à¦‡à¦ª à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦•à¦°à§à¦¨','ØªØ­Ø±ÙŠØ± Ø§Ù„Ù†ÙˆØ¹','Î¤ÏÏ€Î¿Ï‚ ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÎ¯Î±Ï‚','à¤ªà¥à¤°à¤•à¤¾à¤° à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚','Edit Jenis','Modifica il tipo','ã‚¿ã‚¤ãƒ—ã‚’ç·¨é›†','ìœ í˜• íŽ¸ì§‘','Bewerk type','Editar tipo','à¹à¸à¹‰à¹„à¸‚à¸›à¸£à¸°à¹€à¸ à¸—','TÃ¼rÃ¼ DÃ¼zenle','Ù‚Ø³Ù… Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº','ç¼–è¾‘ç±»åž‹'),(574,'role','Role','à¦­à§‚à¦®à¦¿à¦•à¦¾','ÙˆØ¸ÙŠÙØ©','RÃ´le','à¤­à¥‚à¤®à¤¿à¤•à¤¾','Peran','Peran','å½¹å‰²','å½¹å‰²','å½¹å‰²','FunÃ§Ã£o','à¸šà¸—à¸šà¸²à¸—','rol','Ú©Ø±Ø¯Ø§Ø±','è§’è‰²'),(575,'remuneration_info_for','Remuneration Info For','à¦¬à§‡à¦¤à¦¨ à¦œà¦¨à§à¦¯ à¦¤à¦¥à§à¦¯','Ø§Ù„Ø£Ø¬ÙˆØ± Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø¹Ù†','Information de rÃ©munÃ©ration pour','à¤ªà¤¾à¤°à¤¿à¤¶à¥à¤°à¤®à¤¿à¤• à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤•à¥‡ à¤²à¤¿à¤','Info Remunerasi Untuk','Informazioni sulla remunerazione per','ã®å ±é…¬æƒ…å ±','ë³´ìˆ˜ ì •ë³´','Remuneratie-info voor','InformaÃ§Ãµes sobre RemuneraÃ§Ã£o Para','Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ Ð²Ð¾Ð·Ð½Ð°Ð³Ñ€Ð°Ð¶Ð´ÐµÐ½Ð¸Ð¸ Ð·Ð°','Ãœcret Bilgisi','ÛŒØ§Ø¯ Ø¯ÛØ§Ù†ÛŒ Ú©Û’ Ù„Ø¦Û’ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª','è–ªé…¬ä¿¡æ¯'),(576,'salary_paid','Salary Paid','à¦¬à§‡à¦¤à¦¨ à¦¦à§‡à¦“à¦¯à¦¼à¦¾','Ø§Ù„Ø±Ø§ØªØ¨ Ø§Ù„Ù…Ø¯ÙÙˆØ¹','Salaire payÃ©','à¤µà¥‡à¤¤à¤¨ à¤­à¥à¤—à¤¤à¤¾à¤¨','Gaji Dibayar','Stipendio pagato','çµ¦ä¸Žã‚’æ”¯æ‰•ã£ãŸ','ìœ ê¸‰ ê¸‰ì—¬','Salaris betaald','SalÃ¡rio Pago','à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸ˆà¹ˆà¸²à¸¢','Ãœcretli','ØªÙ†Ø®ÙˆØ§Û Ø§Ø¯Ø§ Ú©ÛŒ','å·¥èµ„æ”¯ä»˜'),(577,'salary_unpaid','Salary Unpaid','à¦¬à§‡à¦¤à¦¨ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦¨à¦¾','Ø§Ù„Ø±Ø§ØªØ¨ ØºÙŠØ± Ù…Ø¯ÙÙˆØ¹','Salaire impayÃ©','à¤µà¥‡à¤¤à¤¨ à¤…à¤µà¥ˆà¤¤à¤¨à¤¿à¤•','Gaji Tidak Dibayar','Salario non retribuito','çµ¦ä¸Žæœªæ‰•ã„','ë¬´ê¸‰ ê¸‰ì—¬','Salaris onbetaald','SalÃ¡rio nÃ£o remunerado','à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸„à¹‰à¸²à¸‡à¸Šà¸³à¸£à¸°','Ã–denmemiÅŸ MaaÅŸ','ØªÙ†Ø®ÙˆØ§Û ØºÛŒØ± Ø­Ø§Ø¶Ø±','å·¥èµ„æœªä»˜'),(578,'pay_now','Pay Now','à¦à¦–à¦¨ à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦•à¦°à§à¦¨','Ø§Ø¯ÙØ¹ Ø§Ù„Ø¢Ù†','Payez maintenant','à¤…à¤¬ à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¤°à¥‡à¤‚','Bayar sekarang','Paga ora','ä»Šæ‰•ã†','ì§€ê¸ˆ ì§€ë¶ˆí•˜ì„¸ìš”','Nu betalen','Pague agora','à¸ˆà¹ˆà¸²à¸¢à¸•à¸­à¸™à¸™à¸µà¹‰','Åžimdi Ã¶de','Ø§Ø¨ Ø§Ø¯Ø§','çŽ°åœ¨ä»˜æ¬¾'),(579,'employee_role','Employee Role','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦­à§‚à¦®à¦¿à¦•à¦¾','Ø¯ÙˆØ± Ø§Ù„Ù…ÙˆØ¸Ù','RÃ´le de l\'employÃ©','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤•à¥€ à¤­à¥‚à¤®à¤¿à¤•à¤¾','Peran Karyawan','Ruolo dei dipendenti','å¾“æ¥­å“¡ã®å½¹å‰²','ì§ì› ì—­í• ','Medewerkersrol','FunÃ§Ã£o do Empregado','à¸šà¸—à¸šà¸²à¸—à¸‚à¸­à¸‡à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸan RolÃ¼','Ù…Ù„Ø§Ø²Ù… Ú©Ø±Ø¯Ø§Ø±','å‘˜å·¥è§’è‰²'),(580,'create_at','Create At','à¦ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø®Ù„Ù‚ ÙÙŠ','CrÃ©er Ã ','à¤ªà¤° à¤¬à¤¨à¤¾à¤à¤','Buat Di','Crea At','ã§ä½œæˆ','ì—ì„œ ìƒì„±','Maak At','Criar em','à¸ªà¸£à¹‰à¸²à¸‡à¸—à¸µà¹ˆ','At oluÅŸtur','Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºäºŽ'),(581,'select_employee','Select Employee','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø§Ø®ØªØ± Ø§Ù„Ù…ÙˆØ¸Ù','SÃ©lectionnez un employÃ©','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih Karyawan','Pilih Karyawan','å¾“æ¥­å“¡ã‚’é¸æŠž','ì§ì› ì„ íƒ','Aliquam selecta','Selecione Empregado','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ ÑÐ¾Ñ‚Ñ€ÑƒÐ´Ð½Ð¸ÐºÐ°','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ ÑÐ¾Ñ‚Ñ€ÑƒÐ´Ð½Ð¸ÐºÐ°','Ù…Ù„Ø§Ø²Ù… Ú©Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©å‘˜å·¥'),(582,'review','Review','à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾','Ø¥Ø¹Ø§Ø¯Ø© Ø§Ù„Ù†Ø¸Ø±','revisiÃ³n','à¤¸à¤®à¥€à¤•à¥à¤·à¤¾','à¤¸à¤®à¥€à¤•à¥à¤·à¤¾','Revisione','è¦‹ç›´ã—','ë¦¬ë·°','Beoordeling','Reveja','à¸—à¸šà¸—à¸§à¸™','gÃ¶zden geÃ§irmek','Ø¬Ø§Ø¦Ø²Û Ù„ÛŒÚº','è¯„è®º'),(583,'reviewed_by','Reviewed By','à¦¦à§à¦¬à¦¾à¦°à¦¾ à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾','ØªÙ…Øª Ù…Ø±Ø§Ø¬Ø¹ØªÙ‡ Ù…Ù† Ù‚Ø¨Ù„','Revu par','à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤¸à¤®à¥€à¤•à¥à¤·à¤¿à¤¤','Diperiksa oleh','Recensito da','ã«ã‚ˆã£ã¦ãƒ¬ãƒ“ãƒ¥ãƒ¼ã•ã‚ŒãŸ','ê²€í†  ìž','Beoordeeld door','Revisados â€‹â€‹pela','à¸ªà¸­à¸šà¸—à¸²à¸™à¹‚à¸”à¸¢','TarafÄ±ndan gÃ¶zden geÃ§irildi','Ú©ÛŒ Ø·Ø±Ù Ø³Û’ Ø¬Ø§Ø¦Ø²Û Ù„ÛŒØ§ Ú¯ÛŒØ§','è¯„è®ºäºº'),(584,'submitted_by','Submitted By','à¦¦à§à¦¬à¦¾à¦°à¦¾ à¦œà¦®à¦¾ à¦¦à§‡à¦“à¦¯à¦¼à¦¾','Ø§Ù„Ù…Ù‚Ø¯Ù…Ø© Ù…Ù† Ù‚Ø¨Ù„','ProposÃ© par','à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤ªà¥à¤°à¤¸à¥à¤¤à¥à¤¤','Disampaikan oleh','Inviato da','Inviato da','ì— ì˜í•´ ì œì¶œ ëœ','Ingediend door','Enviado por','à¸ªà¹ˆà¸‡à¸¡à¸²à¹‚à¸”à¸¢','TarafÄ±ndan gÃ¶nderilmiÅŸtir','Ú©ÛŒ Ø·Ø±Ù Ø³Û’ Ù¾ÛŒØ´','ç”±...æ‰€æäº¤'),(585,'employee_type','Employee Type','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦Ÿà¦¾à¦‡à¦ª','Ù†ÙˆØ¹ Ù…ÙˆØ¸Ù','Type d\'employÃ©','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤•à¤¾ à¤ªà¥à¤°à¤•à¤¾à¤°','Jenis Karyawan','Tipo di dipendente','å¾“æ¥­å“¡ã®ç¨®é¡ž','ì¢…ì—…ì› ìœ í˜•','Werknemerstype','Tipo de Empregado','à¸›à¸£à¸°à¹€à¸ à¸—à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸan tipi','Ù…Ù„Ø§Ø²Ù… Ú©ÛŒ Ù‚Ø³Ù…','å‘˜å·¥ç±»åž‹'),(586,'approved','Approved','à¦…à¦¨à§à¦®à§‹à¦¦à¦¿à¦¤','ÙˆØ§ÙÙ‚','ApprouvÃ©','à¤®à¤‚à¤œà¥‚à¤° à¤•à¥€','Disetujui','Approvato','æ‰¿èªæ¸ˆã¿','ìŠ¹ì¸ ë¨','aangenomen','Aprovado','à¹„à¸”à¹‰à¸£à¸±à¸šà¸à¸²à¸£à¸­à¸™à¸¸à¸¡à¸±à¸•à¸´','onaylÄ±','Ù…Ù†Ø¸ÙˆØ±Ø´Ø¯Û','Ù…Ù†Ø¸ÙˆØ±Ø´Ø¯Û'),(587,'unreviewed','Unreviewed','à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾ à¦¨à¦¾ à¦•à¦°à¦¾','ØºÙŠØ± Ù…Ø±Ø§Ø¬Ø¹','Non revu','à¤¸à¤®à¥€à¤•à¥à¤·à¤¾ à¤¨à¤¹à¥€à¤‚ à¤•à¥€ à¤—à¤ˆ','Belum ditinjau','unreviewed','æœªå¯©æŸ»','ê²€í† ë˜ì§€ ì•Šì€','Niet-beoordeelde','NÃ£o revisado','à¸à¹ˆà¸­à¸™à¸ªà¸­à¸šà¸—à¸²à¸™','Ä°ncelenmeyenler','Ù†Ø§Ø¸Ø±','æœªç»å®¡æ ¸'),(588,'creation_date','Creation Date','à¦¤à§ˆà¦°à¦¿à¦° à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¥Ù†Ø´Ø§Ø¡','Creation Date','à¤°à¤šà¤¨à¤¾ à¤¤à¤¿à¤¥à¤¿','Tanggal Pembuatan','Data di creazione','ä½œæˆæ—¥','ì œìž‘ ì¼','Aanmaakdatum','Data de criaÃ§Ã£o','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸ªà¸£à¹‰à¸²à¸‡','OluÅŸturulma tarihi','Ø¨Ù†Ø§Ù†Û’ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','Ø¨Ù†Ø§Ù†Û’ Ú©ÛŒ ØªØ§Ø±ÛŒØ®'),(589,'no_information_available','No Information Available','à¦•à§‹à¦¨ à¦¤à¦¥à§à¦¯ à¦¨à§‡à¦‡','Ù„Ø§ ØªÙˆØ¬Ø¯ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ù…ØªØ§Ø­Ø©','Pas d\'information disponible','à¤•à¥‹à¤ˆ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤‰à¤ªà¤²à¤¬à¥à¤§ à¤¨à¤¹à¥€à¤‚','Tidak ada informasi tersedia','Nessuna informazione disponibile','æƒ…å ±ãªã—','ì •ë³´ ì—†ìŒ','Geen informatie beschikbaar','Nenhuma informaÃ§Ã£o disponÃ­vel','à¹„à¸¡à¹ˆà¸¡à¸µà¸‚à¹‰à¸­à¸¡à¸¹à¸¥','Bilgi bulunmamaktadÄ±r','Ú©ÙˆØ¦ÛŒ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø¯Ø³ØªÛŒØ§Ø¨ Ù†ÛÛŒÚº ÛÛ’','æ— èµ„æ–™'),(590,'continue_to_payment','Continue To Payment','à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦…à¦¬à¦¿à¦°à¦¤','Ù…ÙˆØ§ØµÙ„Ø© Ø§Ù„Ø¯ÙØ¹','Continuer au paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤œà¤¾à¤°à¥€ à¤°à¤–à¥‡à¤‚','FizetÃ©s folytatÃ¡sa','Continua a pagamento','æ”¯æ‰•ã„ã‚’ç¶šã‘ã‚‹','ê³„ì† ì§€ë¶ˆí•˜ê¸°','Doorgaan naar betaling','Continuar para pagamento','à¸”à¸³à¹€à¸™à¸´à¸™à¸à¸²à¸£à¸•à¹ˆà¸­à¹€à¸žà¸·à¹ˆà¸­à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã–deme devam','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ù¾Ø± Ø¬Ø§Ø±ÛŒ Ø±Ú©Ú¾ÛŒÚº','ç»§ç»­ä»˜æ¬¾'),(591,'overtime_total_hour','Overtime Total Hour','à¦“à¦­à¦¾à¦°à¦Ÿà¦¾à¦‡à¦® à¦®à§‹à¦Ÿ à¦˜à¦¨à§à¦Ÿà¦¾','Ø§Ù„Ø³Ø§Ø¹Ø© Ø§Ù„Ø§Ø¬Ù…Ø§Ù„ÙŠØ©','Heures totales supplÃ©mentaires','à¤“à¤µà¤°à¤Ÿà¤¾à¤‡à¤® à¤•à¥à¤² à¤˜à¤‚à¤Ÿà¥‡','TÃºlÃ³ra Teljes Ã³ra','Ora totale straordinario','æ®‹æ¥­ç·æ™‚é–“','ì´ˆê³¼ ê·¼ë¬´ ì‹œê°„','Overuren Totaal uur','Horas Totais de Horas Extras','à¸Šà¸±à¹ˆà¸§à¹‚à¸¡à¸‡à¸—à¸³à¸‡à¸²à¸™à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','Fazla Mesai Toplam Saati','Ø¹Ù…ÙˆÙ…Ø§ Ú©Ù„ ÙˆÙ‚Øª','åŠ ç­æ€»æ—¶æ•°'),(592,'overtime_amount','Overtime Amount','à¦“à¦­à¦¾à¦°à¦Ÿà¦¾à¦‡à¦® à¦ªà¦°à¦¿à¦®à¦¾à¦£','Ù…Ø¨Ù„Øº Ø§Ù„Ø¹Ù…Ù„ Ø§Ù„Ø¥Ø¶Ø§ÙÙŠ','Heures supplÃ©mentaires','à¤“à¤µà¤°à¤Ÿà¤¾à¤‡à¤® à¤°à¤¾à¤¶à¤¿','Jumlah Lembur','QuantitÃ  Overtime','æ®‹æ¥­é‡‘é¡','ì´ˆê³¼ ê·¼ë¬´ ì‹œê°„','Overwerkbedrag','Overwerkbedrag','à¸›à¸£à¸´à¸¡à¸²à¸“à¸à¸²à¸£à¸—à¸³à¸‡à¸²à¸™à¸¥à¹ˆà¸§à¸‡à¹€à¸§à¸¥à¸²','Fazla Mesai TutarÄ±','Ø¹Ù…ÙˆÙ…Ø§ Ø±Ù‚Ù…','åŠ ç­é‡‘é¢'),(593,'remarks','Remarks','à¦®à¦¨à§à¦¤à¦¬à§à¦¯','ØªØ¹Ù„ÙŠÙ‚','Remarque','à¤Ÿà¤¿à¤ªà¥à¤ªà¤£à¥€','Ucapan','Ucapan','Ucapan','ë§','Opmerking','Opmerking','Opmerking','Opmerking','ØªØ¨ØµØ±Û','å¤‡æ³¨'),(594,'view','View','à¦¦à§ƒà¦¶à§à¦¯','Ø±Ø£ÙŠ','Vue','à¤°à¤¾à¤¯','Melihat','vista','è¦‹ã‚‹','ì „ë§','Uitzicht','VisÃ£o','à¸”à¸¹','GÃ¶rÃ¼nÃ¼m','Ø¯ÛŒÚ©Ú¾ÛŒÚº','è§†å›¾'),(595,'leave_appeal','Leave Appeal','à¦†à¦¬à§‡à¦¦à¦¨ à¦›à§‡à¦¡à¦¼à§‡','Ø§ØªØ±Ùƒ Ø§Ù„Ø§Ø³ØªØ¦Ù†Ø§Ù','Laisser appel','à¤…à¤ªà¥€à¤² à¤›à¥‹à¤¡à¤¼ à¤¦à¥‹','Tinggalkan Banding','Invia Appello','ã‚¢ãƒ”ãƒ¼ãƒ«ã‚’æ®‹ã™','ìƒì†Œë¥¼ ë– ë‚˜ë‹¤','Verlaat Appeal','Deixar recurso','à¸­à¸­à¸à¸ˆà¸²à¸à¸à¸²à¸£à¸­à¸¸à¸—à¸˜à¸£à¸“à¹Œ','Temyizden AyrÄ±lmak','Ø§Ù¾ÛŒÙ„ Ú†Ú¾ÙˆÚ‘ Ø¯Ùˆ','ç¦»å¼€ä¸Šè¯‰'),(596,'create_leave','Create Leave','à¦›à§à¦Ÿà¦¿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø®Ù„Ù‚ Ø¥Ø¬Ø§Ø²Ø©','CrÃ©er un congÃ©','à¤›à¥à¤Ÿà¥à¤Ÿà¥€ à¤¬à¤¨à¤¾à¤à¤','Buat Cuti','Crea permesso','ä¼‘æš‡ã‚’ä½œæˆ','ë– ë‚˜ê¸° ë§Œë“¤ê¸°','Maak verlof','Criar licenÃ§a','à¸ªà¸£à¹‰à¸²à¸‡à¸à¸²à¸£à¸¥à¸²','Ä°zin OluÅŸtur','Ú†Ú¾ÙˆÚ‘ Ø¯Ùˆ','åˆ›é€ å‡'),(597,'user_role','User Role','à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€ à¦­à§‚à¦®à¦¿à¦•à¦¾','Ø¯ÙˆØ± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','RÃ´le de l\'utilisateur','à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤­à¥‚à¤®à¤¿à¤•à¤¾','Peran pengguna','Ruolo utente','ãƒ¦ãƒ¼ã‚¶ãƒ¼å½¹å‰²','ì‚¬ìš©ìž ì—­í• ','Gebruikersrol','Papel do usuÃ¡rio','à¸šà¸—à¸šà¸²à¸—à¸‚à¸­à¸‡à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰','KullanÄ±cÄ± rolÃ¼','ØµØ§Ø±Ù Ú©Ø±Ø¯Ø§Ø±','ç”¨æˆ·è§’è‰²'),(598,'date_of_start','Date Of Start','à¦¶à§à¦°à§ à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¨Ø¯Ø¡','Date de dÃ©but','à¤ªà¥à¤°à¤¾à¤°à¤‚à¤­ à¤•à¥€ à¤¤à¤¿à¤¥à¤¿','Tanggal Mulai','Data di inizio','é–‹å§‹æ—¥','ì‹œìž‘ ë‚ ì§œ','Startdatum','Data de inÃ­cio','à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸£à¸´à¹ˆà¸¡','BaÅŸlangÄ±Ã§ â€‹â€‹tarihi','Ø¢ØºØ§Ø² Ú©ÛŒ ØªØ§Ø±ÛŒØ®','å¼€å§‹æ—¥æœŸ'),(599,'date_of_end','Date Of End','à¦¶à§‡à¦· à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ù†Ù‡Ø§ÙŠØ©','Date de fin','à¤¸à¤®à¤¾à¤ªà¥à¤¤à¤¿ à¤•à¥€ à¤¤à¤¾à¤°à¥€à¤–','Tanggal Berakhir','Data della fine','çµ‚äº†æ—¥','ë ë‚ ì§œ','Datum van einde','Data do fim','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸ªà¸´à¹‰à¸™à¸ªà¸¸à¸”','BitiÅŸ Tarihi','Ø§Ø®ØªØªØ§Ù… Ú©ÛŒ ØªØ§Ø±ÛŒØ®','ç»“æŸæ—¥æœŸ'),(600,'winner','Winner','à¦¬à¦¿à¦œà¦¯à¦¼à§€','Ø§Ù„ÙØ§Ø¦Ø²','Gagnantà¤µà¤¿à¤œà¥‡à¤¤à¤¾','à¤µà¤¿à¤œà¥‡à¤¤à¤¾','Pemenang','Vincitore','å‹è€…','ìš°ìŠ¹ìž','Winnaar','Vencedora','à¸œà¸¹à¹‰à¸Šà¸™à¸°','kazanan','ÙØ§ØªØ­','ä¼˜èƒœè€…'),(601,'select_user','Select User','à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø§Ø®ØªØ± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','SÃ©lectionner un utilisateur','à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih Pengguna','Seleziona utente','ãƒ¦ãƒ¼ã‚¶ãƒ¼ã‚’é¸æŠž','ì‚¬ìš©ìž ì„ íƒ','selecteer gebruiker','Selecione o usuÃ¡rio','à¹€à¸¥à¸·à¸­à¸à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰','KullanÄ±cÄ± seÃ§','ØµØ§Ø±Ù Ú©Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ø±ÛŒÚº','ØµØ§Ø±Ù Ú©Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ø±ÛŒÚº'),(602,'create_class','Create Class','à¦•à§à¦²à¦¾à¦¸ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø®Ù„Ù‚ Ø§Ù„Ø·Ø¨Ù‚Ø©','CrÃ©er une classe','à¤•à¥à¤²à¤¾à¤¸ à¤¬à¤¨à¤¾à¤à¤‚','Buat Kelas','Crea classe','ã‚¯ãƒ©ã‚¹ã‚’ä½œæˆ','í´ëž˜ìŠ¤ ë§Œë“¤ê¸°','Maak klasse','Criar classe','à¸ªà¸£à¹‰à¸²à¸‡à¸„à¸¥à¸²à¸ª','SÄ±nÄ±f OluÅŸtur','Ú©Ù„Ø§Ø³ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºç±»'),(603,'class_teacher_allocation','Class Teacher Allocation','à¦•à§à¦²à¦¾à¦¸ à¦¶à¦¿à¦•à§à¦·à¦• à¦¬à¦°à¦¾à¦¦à§à¦¦','ØªØ®ØµÙŠØµ Ù…Ø¹Ù„Ù… Ø§Ù„ØµÙ','Allocation d\'enseignant de classe','à¤•à¤•à¥à¤·à¤¾ à¤¶à¤¿à¤•à¥à¤·à¤• à¤†à¤µà¤‚à¤Ÿà¤¨','Alokasi Guru Kelas','Assegnazione degli insegnanti di classe','ã‚¯ãƒ©ã‚¹æ•™å¸«ã®å‰²ã‚Šå½“ã¦','ìˆ˜ì—… êµì‚¬ ë°°ì •','Klasse docent toewijzing','AlocaÃ§Ã£o de professores de turma','à¸à¸²à¸£à¸ˆà¸±à¸”à¸ªà¸£à¸£à¸„à¸£à¸¹à¸›à¸£à¸°à¸ˆà¸³à¸Šà¸±à¹‰à¸™','SÄ±nÄ±f Ã–ÄŸretmeni Tahsisi','Ú©Ù„Ø§Ø³ Ù¹ÛŒÚ†Ø± Ù…Ø®ØªØµ','ç­ä¸»ä»»åˆ†é…'),(604,'class_teacher','Class Teacher','à¦¶à§à¦°à§‡à¦£à§€ à¦¶à¦¿à¦•à§à¦·à¦•','Ù…Ø¹Ù„Ù… Ø§Ù„ØµÙ','Professeur de classe','à¤•à¤•à¥à¤·à¤¾ à¤…à¤§à¥à¤¯à¤¾à¤ªà¤•','Guru kelas','Insegnante','ã‚¯ãƒ©ã‚¹ã®å…ˆç”Ÿ','ì„ ìƒë‹˜','Klassen leraar','Professor da classe','à¸„à¸£à¸¹à¸›à¸£à¸°à¸ˆà¸³à¸Šà¸±à¹‰à¸™','SÄ±nÄ±f Ã¶ÄŸretmeni','Ú©Ù„Ø§Ø³ Ù¹ÛŒÚ†Ø±','ç­ä¸»ä»»'),(605,'create_subject','Create Subject','à¦¬à¦¿à¦·à¦¯à¦¼ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø®Ù„Ù‚ Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹','CrÃ©er un sujet','à¤µà¤¿à¤·à¤¯ à¤¬à¤¨à¤¾à¤à¤','Buat Subjek','Crea soggetto','ä»¶åã‚’ä½œæˆ','ì œëª© ë§Œë“¤ê¸°','Onderwerp maken','Criar assunto','à¸ªà¸£à¹‰à¸²à¸‡à¸«à¸±à¸§à¹€à¸£à¸·à¹ˆà¸­à¸‡','Konu OluÅŸtur','Ù…ÙˆØ¶ÙˆØ¹ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºä¸»é¢˜'),(606,'select_multiple_subject','Select Multiple Subject','à¦à¦•à¦¾à¦§à¦¿à¦• à¦¬à¦¿à¦·à¦¯à¦¼ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø­Ø¯Ø¯ Ù…ÙˆØ¶ÙˆØ¹ Ù…ØªØ¹Ø¯Ø¯','SÃ©lectionnez plusieurs sujets','à¤à¤•à¤¾à¤§à¤¿à¤• à¤µà¤¿à¤·à¤¯ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih Banyak Subjek','Seleziona piÃ¹ soggetti','è¤‡æ•°ã®ä»¶åã‚’é¸æŠž','ì—¬ëŸ¬ ì œëª© ì„ íƒ','Selecteer meerdere onderwerpen','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð½ÐµÑÐºÐ¾Ð»ÑŒÐºÐ¾ Ð¾Ð±ÑŠÐµÐºÑ‚Ð¾Ð²','à¹€à¸¥à¸·à¸­à¸à¸«à¸¥à¸²à¸¢à¸§à¸´à¸Šà¸²','Birden Ã‡ok Konu SeÃ§in','Ø§ÛŒÚ© Ø³Û’ Ø²ÛŒØ§Ø¯Û Ù…ÙˆØ¶ÙˆØ¹ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº',''),(607,'teacher_assign','Teacher Assign','à¦¶à¦¿à¦•à§à¦·à¦• à¦¨à¦¿à¦¯à¦¼à§‹à¦—','ØªØ¹ÙŠÙŠÙ† Ø§Ù„Ù…Ø¹Ù„Ù…','Affectation de l&#39;enseignant','à¤¶à¤¿à¤•à¥à¤·à¤• à¤•à¤¾ à¤ªà¤¦à¤­à¤¾à¤°','Tugas Guru','Insegnante','æ•™å¸«ã‚¢ã‚µã‚¤ãƒ³','êµì‚¬ ì§€ì •','Leraar toewijzen','AtribuiÃ§Ã£o de professor','à¸„à¸£à¸¹à¸¡à¸­à¸šà¸«à¸¡à¸²à¸¢','Ã–ÄŸretmen AtamasÄ±','Ù¹ÛŒÚ†Ø± Ú©Ùˆ ØªÙÙˆÛŒØ¶','è€å¸ˆåˆ†é…'),(608,'teacher_assign_list','Teacher Assign List','à¦¶à¦¿à¦•à§à¦·à¦• à¦¨à¦¿à¦¯à¦¼à§‹à¦— à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© ØªØ¹ÙŠÙŠÙ† Ø§Ù„Ù…Ø¹Ù„Ù…','Liste d\'affectation des enseignants','à¤¶à¤¿à¤•à¥à¤·à¤• à¤…à¤¸à¤¾à¤‡à¤¨à¤®à¥‡à¤‚à¤Ÿ à¤¸à¥‚à¤šà¥€','Daftar Tugas Guru','Lista degli insegnanti','æ•™å¸«å‰²ã‚Šå½“ã¦ãƒªã‚¹ãƒˆ','êµì‚¬ ì§€ì • ëª©ë¡','Teacher Assign List','Lista de AtribuiÃ§Ãµes do Professor','Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð½Ð°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð½Ñ‹Ñ… ÑƒÑ‡Ð¸Ñ‚ÐµÐ»ÐµÐ¹','Ã–ÄŸretmen Atama Listesi','Ù¹ÛŒÚ†Ø± Ú©ÛŒ ÙÛØ±Ø³Øª Ú©ÛŒ ÙÛØ±Ø³Øª','æ•™å¸ˆåˆ†é…æ¸…å•'),(609,'select_department_first','Select Department First','à¦¬à¦¿à¦­à¦¾à¦— à¦ªà§à¦°à¦¥à¦® à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø§Ø®ØªØ± Ø§Ù„Ù‚Ø³Ù… Ø£ÙˆÙ„Ø§','SÃ©lectionnez d\'abord le dÃ©partement','à¤ªà¤¹à¤²à¥‡ à¤µà¤¿à¤­à¤¾à¤— à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih Departemen Pertama','Seleziona prima il dipartimento','æœ€åˆã«éƒ¨ç½²ã‚’é¸æŠž','ë¶€ì„œ ìš°ì„  ì„ íƒ','Selecteer eerst Afdeling','Selecione o departamento primeiro','à¹€à¸¥à¸·à¸­à¸à¹à¸œà¸™à¸à¸à¹ˆà¸­à¸™','Ã–nce BÃ¶lÃ¼mÃ¼ SeÃ§','Ù¾ÛÙ„Û’ Ù…Ø­Ú©Ù…Û Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©éƒ¨é—¨ä¼˜å…ˆ'),(610,'create_book','Create Book','à¦¬à¦‡ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø§Ù†Ø´Ø§Ø¡ ÙƒØªØ§Ø¨','CrÃ©er un livre','à¤ªà¥à¤¸à¥à¤¤à¤• à¤¬à¤¨à¤¾à¤à¤','Buat Buku','Crea libro','æœ¬ã‚’ä½œæˆ','ë„ì„œ ë§Œë“¤ê¸°','Maak een boek','Criar livro','à¸ªà¸£à¹‰à¸²à¸‡à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','Kitap OluÅŸtur','Ú©ØªØ§Ø¨ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºä¹¦'),(611,'book_title','Book Title','à¦¬à¦‡à¦¯à¦¼à§‡à¦° à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®','Ø¹Ù†ÙˆØ§Ù† ÙƒØªØ§Ø¨','Titre de livre','à¤ªà¥à¤¸à¥à¤¤à¤• à¤•à¤¾ à¤¶à¥€à¤°à¥à¤·à¤•','KÃ¶nyvcÃ­m','Titolo del libro','æœ¬ã®ã‚¿ã‚¤ãƒˆãƒ«','ì±… ì œëª©','Boek titel','TÃ­tulo do livro','à¸Šà¸·à¹ˆà¸­à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','Kitap baÅŸlÄ±ÄŸÄ±','Ú©ØªØ§Ø¨ Ú©Ø§ Ø¹Ù†ÙˆØ§Ù†','ä¹¦å'),(612,'cover','Cover','à¦†à¦¬à¦°à¦£','Ø§Ù„ØªØºØ·ÙŠØ©','couverture','couverture','penutup','copertina','copertina','ë®ê°œ','deksel','tampa','à¸›à¸','kapak','Ú©ÙˆØ±','è¦†ç›–'),(613,'edition','Edition','à¦¸à¦‚à¦¸à§à¦•à¦°à¦£','Ø§Ù„Ø¥ØµØ¯Ø§Ø±','Ã‰dition','à¤¸à¤‚à¤¸à¥à¤•à¤°à¤£','Edisi','Edizione','ç‰ˆ','íŒ','Editie','EdiÃ§Ã£o','à¸‰à¸šà¸±à¸š','BaskÄ±','Ø§ÛŒÚˆÛŒØ´Ù†','ç‰ˆ'),(614,'isbn_no','ISBN No','ISBN à¦¨à¦‚','Ø±Ù‚Ù… Isbn','Isbn No','à¤‡à¤¸à¤¬à¥ˆà¤¨ à¤¨à¤‚','Isbn No','Isbn No','Isbn No','Isbn No','Isbn No','Isbn No','à¹€à¸¥à¸‚à¸—à¸µà¹ˆ','Isbn HayÄ±r','Ø§Ø³Ø¨ÛŒÙ† Ù†Ù…Ø¨Ø±','Isbn No'),(615,'purchase_date','Purchase Date','à¦•à§à¦°à¦¯à¦¼ à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø´Ø±Ø§Ø¡','date d\'achat','à¤–à¤°à¥€à¤¦ à¤•à¥€ à¤¤à¤¾à¤°à¥€à¤–','Tanggal Pembelian','Data di acquisto','è³¼å…¥æ—¥','êµ¬ìž… ë‚ ì§œ','aankoopdatum','data de compra','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸‹à¸·à¹‰à¸­','SatÄ±nalma tarihi','Ø®Ø±ÛŒØ¯Ø§Ø±ÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','Ø®Ø±ÛŒØ¯Ø§Ø±ÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®'),(616,'cover_image','Cover Image','à¦•à¦­à¦¾à¦° à¦šà¦¿à¦¤à§à¦°','ØµÙˆØ±Ø© Ø§Ù„ØºÙ„Ø§Ù','Cover Image','Cover Image','Gambar sampul','Immagine di copertina','è¡¨ç´™ç”»åƒ','í‘œì§€ ì´ë¯¸ì§€','Omslagfoto','Imagem de capa','à¸£à¸¹à¸›à¸ à¸²à¸žà¸«à¸™à¹‰à¸²à¸›à¸','Kapak resmi','Ú©ÙˆØ± ØªØµÙˆÛŒØ±','å°é¢å›¾ç‰‡'),(617,'book_issue','Book Issue','à¦¬à¦‡ à¦‡à¦¸à§à¦¯à§','ÙƒØªØ§Ø¨ Ø§Ù„Ù‚Ø¶ÙŠØ©','NumÃ©ro de livre','à¤ªà¥à¤¸à¥à¤¤à¤• à¤•à¤¾ à¤…à¤‚à¤•','Masalah Buku','Numero del libro','æœ¬ã®å•é¡Œ','ë„ì„œ ë¬¸ì œ','Boek kwestie','EdiÃ§Ã£o do livro','à¸›à¸±à¸à¸«à¸²à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­','Kitap sayÄ±sÄ±','Ú©ØªØ§Ø¨ Ú©Ø§ Ù…Ø³Ø¦Ù„Û','ä¹¦ç±é—®é¢˜'),(618,'date_of_issue','Date Of Issue','à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦à¦° à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ù…Ø³Ø£Ù„Ø©','Date d\'Emission','à¤œà¤¾à¤°à¥€ à¤•à¤°à¤¨à¥‡ à¤•à¥€ à¤¤à¤¾à¤°à¤¿à¤–','Tanggal pengeluaran','Data di emissione','ç™ºè¡Œæ—¥','ë°œí–‰ì¼','Uitgavedatum','Data de emissÃ£o','à¸§à¸±à¸™à¸—à¸µà¹ˆà¸­à¸­à¸','VeriliÅŸ tarihi','ØªØ§Ø±ÛŒØ® Ø§Ø¬Ø±Ø§Ø¡','å‘è¡Œæ—¥æœŸ'),(619,'date_of_expiry','Date Of Expiry','à¦®à§‡à¦¯à¦¼à¦¾à¦¦ à¦¶à§‡à¦· à¦¹à¦“à¦¯à¦¼à¦¾à¦° à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù†ØªÙ‡Ø§Ø¡ Ø§Ù„ØµÙ„Ø§Ø­ÙŠØ©','Date d&#39;expiration','à¤¸à¤®à¤¾à¤ªà¥à¤¤à¤¿ à¤¤à¤¿à¤¥à¤¿','Tanggal Kadaluarsa','Data di scadenza','æœ‰åŠ¹æœŸé™','ë§Œë£Œì¼','Vervaldatum','Data de validade','à¸§à¸±à¸™à¸«à¸¡à¸”à¸­à¸²à¸¢à¸¸','Son kullanma tarihi','Ø®Ø§ØªÙ…Û’ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','åˆ°æœŸæ—¥æœŸ'),(620,'select_category_first','Select Category First','à¦ªà§à¦°à¦¥à¦® à¦¬à¦¿à¦­à¦¾à¦— à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨','Ø§Ø®ØªØ± Ø§Ù„ÙØ¦Ø© Ø§Ù„Ø£ÙˆÙ„Ù‰','SÃ©lectionnez la catÃ©gorie d&#39;abord','à¤¶à¥à¤°à¥‡à¤£à¥€ à¤ªà¤¹à¤²à¥‡ à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚','Pilih Kategori Pertama','Seleziona prima la categoria','æœ€åˆã«ã‚«ãƒ†ã‚´ãƒªãƒ¼ã‚’é¸æŠž','ì¹´í…Œê³ ë¦¬ ìš°ì„  ì„ íƒ','Selecteer eerst categorie','Selecione a categoria primeiro','à¹€à¸¥à¸·à¸­à¸à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆà¸à¹ˆà¸­à¸™','Ã–nce Kategori SeÃ§in','Ø²Ù…Ø±Û Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº','é€‰æ‹©ç±»åˆ«ç¬¬ä¸€'),(621,'type_name','Type Name','à¦¨à¦¾à¦® à¦Ÿà¦¾à¦‡à¦ª à¦•à¦°à§à¦¨','Ø£ÙƒØªØ¨ Ø§Ø³Ù…','Nom du type','à¤¨à¤¾à¤® à¤²à¤¿à¤–à¥‹','Ketik nama','Digita il nome','ã‚¿ã‚¤ãƒ—å','ìœ í˜• ì´ë¦„','Type Naam','Digite o nome','à¸žà¸´à¸¡à¸žà¹Œà¸Šà¸·à¹ˆà¸­','Tip adÄ±','Ù†Ø§Ù… Ú©ÛŒ Ù‚Ø³Ù…','è¾“å…¥åç§°'),(622,'type_list','Type List','à¦Ÿà¦¾à¦‡à¦ª à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ø§ÙƒØªØ¨ Ù‚Ø§Ø¦Ù…Ø©','Liste de types','à¤¸à¥‚à¤šà¥€ à¤Ÿà¤¾à¤‡à¤ª à¤•à¤°à¥‡à¤‚','Daftar Jenis','Elenco dei tipi','ã‚¿ã‚¤ãƒ—ãƒªã‚¹ãƒˆ','ìœ í˜• ëª©ë¡','Type lijst','Lista de tipos','à¸£à¸²à¸¢à¸à¸²à¸£à¸›à¸£à¸°à¹€à¸ à¸—','TÃ¼rÃ¼ Listesi','Ù‚Ø³Ù… Ú©ÛŒ ÙÛØ±Ø³Øª','ç±»åž‹åˆ—è¡¨'),(623,'icon','Icon','à¦†à¦‡à¦•à¦¨','Ø£ÙŠÙ‚ÙˆÙ†Ø©','IcÃ´ne','à¤šà¤¿à¤¹à¥à¤¨','Ikon','Icona',' ã‚¢ã‚¤ã‚³ãƒ³','ìƒ','Icoon','Ãcone','à¹„à¸­à¸„à¸­à¸™','Icon','Ø¢Ø¦Ú©Ù†','å›¾æ ‡'),(624,'event_list','Event List','à¦˜à¦Ÿà¦¨à¦¾ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø£Ø­Ø¯Ø§Ø«','Liste des Ã©vÃ©nements','à¤˜à¤Ÿà¤¨à¤¾ à¤¸à¥‚à¤šà¥€','Daftar Acara','Elenco degli eventi','ã‚¤ãƒ™ãƒ³ãƒˆä¸€è¦§','ì´ë²¤íŠ¸ ëª©ë¡','Evenementenlijst','Lista de evento','à¸£à¸²à¸¢à¸à¸²à¸£à¸à¸´à¸ˆà¸à¸£à¸£à¸¡','Etkinlik Listesi','ÙˆØ§Ù‚Ø¹Û Ú©ÛŒ ÙÛØ±Ø³Øª','æ´»åŠ¨åˆ—è¡¨'),(625,'create_event','Create Event','à¦‡à¦­à§‡à¦¨à§à¦Ÿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à¦¾','Ø§Ù†Ø´Ø§Ø¡ Ø­Ø¯Ø«','CrÃ©er un Ã©vÃ¨nement','à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤¬à¤¨à¤¾à¤à¤','Membuat acara','Crea Evento','ã‚¤ãƒ™ãƒ³ãƒˆã‚’ä½œæˆ','ì´ë²¤íŠ¸ ë§Œë“¤ê¸°','CreÃ«er evenement','Criar Evento','à¸ªà¸£à¹‰à¸²à¸‡à¸à¸´à¸ˆà¸à¸£à¸£à¸¡','Etkinlik oluÅŸturmak','ÙˆØ§Ù‚Ø¹Û Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºæ´»åŠ¨'),(626,'type','Type','à¦§à¦°à¦£','Ù†ÙˆØ¹','Type','à¤ªà¥à¤°à¤•à¤¾à¤°','Mengetik','genere','ã‚¿ã‚¤ãƒ—','ìœ í˜•','Type','Tipo','à¸Šà¸™à¸´à¸”','tip','Ù¹Ø§Ø¦Ù¾ Ú©Ø±ÛŒÚº','ç±»åž‹'),(627,'audience','Audience','à¦¶à§à¦°à§‹à¦¤à¦¾à¦¬à§ƒà¦¨à§à¦¦','','Audience','à¤¦à¤°à¥à¤¶à¤•','Hadirin','Pubblico','è¦³å®¢','ì²­ì¤‘','Publiek','PÃºblico','à¸œà¸¹à¹‰à¸Šà¸¡','seyirci','Ù†Ø§Ø¸Ø±ÛŒÙ†','å¬ä¼—'),(628,'created_by','Created By','à¦¦à§à¦¬à¦¾à¦°à¦¾ à¦¸à§ƒà¦·à§à¦Ÿà¦¿','ØµÙ†Ø¹ Ù…Ù† Ù‚Ø¨Ù„','CrÃ©Ã© par','à¤•à¥‡ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤¬à¤¨à¤¾à¤ˆ à¤—à¤ˆ','Dibuat oleh','Creato da','ã«ã‚ˆã£ã¦ä½œæˆã•ã‚ŒãŸ','ìž‘ì„±ìž','Gemaakt door','Criado por','à¸ªà¸£à¹‰à¸²à¸‡à¹‚à¸”à¸¢','TarafÄ±ndan yaratÄ±ldÄ±','Ø¨Ù†Ø§Ø¦ÛŒ Ú¯Ø¦ÛŒ','ç”±...åˆ¶ä½œ'),(629,'publish','Publish','à¦ªà§à¦°à¦•à¦¾à¦¶ à¦•à¦°à¦¾','Ù†Ø´Ø±','Publier','à¤ªà¥à¤°à¤•à¤¾à¤¶à¤¿à¤¤ à¤•à¤°à¤¨à¤¾','Menerbitkan','Pubblicare','å…¬é–‹ã™ã‚‹','ê²Œì‹œ','Publiceren','Publicar','à¸›à¸£à¸°à¸à¸²à¸¨','YayÄ±nla','Ø´Ø§Ø¦Ø¹ Ú©Ø±ÛŒÚº','å‘å¸ƒ'),(630,'everybody','Everybody','à¦¸à¦¬à¦¾à¦‡','Ø§Ù„Ø¬Ù…ÙŠØ¹','Tout le monde','à¤¹à¤°','Semua orang','Tutti','ã¿ã‚“ãª','ã¿ã‚“ãª','iedereen','Todo o mundo','à¸—à¸¸à¸à¸„à¸™','herkes','Ø³Ø¨','æ¯ä¸ªäºº'),(631,'selected_class','Selected Class','à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¿à¦¤ à¦•à§à¦²à¦¾à¦¸','ÙØ¦Ø© Ù…Ø®ØªØ§Ø±Ø©','Classe sÃ©lectionnÃ©e','à¤šà¤¯à¤¨à¤¿à¤¤ à¤µà¤°à¥à¤—','Kelas yang Dipilih','Classe selezionata','é¸æŠžã—ãŸã‚¯ãƒ©ã‚¹','ì„ íƒëœ í´ëž˜ìŠ¤','Geselecteerde klasse','Classe Selecionada','à¸„à¸¥à¸²à¸ªà¸—à¸µà¹ˆà¹€à¸¥à¸·à¸­à¸','SeÃ§ilmiÅŸ SÄ±nÄ±f','Ù…Ù†ØªØ®Ø¨ Ú©Ù„Ø§Ø³','ç²¾é€‰ç­çº§'),(632,'selected_section','Selected Section','à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¿à¦¤ à¦¬à¦¿à¦­à¦¾à¦—','Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ù…Ø®ØªØ§Ø±','SecciÃ³n seleccionada','à¤šà¤¯à¤¨à¤¿à¤¤ à¤…à¤¨à¥à¤­à¤¾à¤—','Bagian yang Dipilih','Sezione selezionata','é¸æŠžã—ãŸã‚»ã‚¯ã‚·ãƒ§ãƒ³','ì„ íƒëœ ì„¹ì…˜','Geselecteerde sectie','SeÃ§Ã£o Selecionada','à¸ªà¹ˆà¸§à¸™à¸—à¸µà¹ˆà¹€à¸¥à¸·à¸­à¸','SeÃ§ilmiÅŸ BÃ¶lÃ¼m','Ù…Ù†ØªØ®Ø¨ Ú©Ø±Ø¯Û Ø³ÛŒÚ©Ø´Ù†','é€‰å®šéƒ¨åˆ†'),(633,'information_has_been_updated_successfully','Information Has Been Updated Successfully','à¦¤à¦¥à§à¦¯ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à§‡à¦›à§‡','ØªÙ… ØªØ­Ø¯ÙŠØ« Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø¨Ù†Ø¬Ø§Ø­','L\'information a Ã©tÃ© mise Ã  jour avec succÃ¨s','à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤…à¤¦à¥à¤¯à¤¤à¤¨ à¤•à¥€ à¤—à¤ˆ à¤¹à¥ˆ','Informasi Telah Diperbarui Berhasil','Le informazioni sono state aggiornate con successo','æƒ…å ±ã¯æ­£å¸¸ã«æ›´æ–°ã•ã‚Œã¾ã—ãŸ','ì •ë³´ê°€ ì„±ê³µì ìœ¼ë¡œ ì—…ë°ì´íŠ¸ë˜ì—ˆìŠµë‹ˆë‹¤.','Informatie is succesvol bijgewerkt','InformaÃ§Ãµes foram atualizadas com sucesso','à¸­à¸±à¸›à¹€à¸”à¸•à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§','Bilgi baÅŸarÄ±yla gÃ¼ncellendi','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø§Ù¾ ÚˆÛŒÙ¹ Ú©ÛŒ Ú¯Ø¦ÛŒ ÛÛ’','ä¿¡æ¯å·²æˆåŠŸæ›´æ–°'),(634,'create_invoice','Create Invoice','à¦šà¦¾à¦²à¦¾à¦¨ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ ÙØ§ØªÙˆØ±Ø©','CrÃ©er une facture','à¤‡à¤¨à¤µà¥‰à¤¯à¤¸ à¤¬à¤¨à¤¾à¤à¤','Buat Faktur','Crea fattura','è«‹æ±‚æ›¸ã‚’ä½œæˆã™ã‚‹','ì†¡ìž¥ ìƒì„±','Factuur maken','Criar recibo','à¸ªà¸£à¹‰à¸²à¸‡à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰','Fatura oluÅŸturmak','Ø§Ù†ÙˆØ§Ø¦Ø³ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºå‘ç¥¨'),(635,'invoice_entry','Invoice Entry','à¦šà¦¾à¦²à¦¾à¦¨ à¦à¦¨à§à¦Ÿà§à¦°à¦¿','Ø¥Ø¯Ø®Ø§Ù„ Ø§Ù„ÙØ§ØªÙˆØ±Ø©','EntrÃ©e de facture','à¤šà¤¾à¤²à¤¾à¤¨ à¤ªà¥à¤°à¤µà¤¿à¤·à¥à¤Ÿà¤¿','Entri Faktur','Entrata della fattura','è«‹æ±‚æ›¸å…¥åŠ›','ì†¡ìž¥ ìž…ë ¥','Invoice Entry','Entrada de fatura','Entrada de fatura','Fatura GiriÅŸi','Fatura GiriÅŸi','å‘ç¥¨è¾“å…¥'),(636,'quick_payment','Quick Payment','à¦¦à§à¦°à§à¦¤ à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ','Ø§Ù„Ø¯ÙØ¹ Ø§Ù„Ø³Ø±ÙŠØ¹','Paiement rapide','à¤¤à¥à¤µà¤°à¤¿à¤¤ à¤­à¥à¤—à¤¤à¤¾à¤¨','Pembayaran cepat','Pagamento rapido','è¿…é€Ÿãªæ”¯æ‰•ã„','ë¹ ë¥¸ ì§€ë¶ˆ','Snelle betaling','Pagamento RÃ¡pido','à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™à¸”à¹ˆà¸§à¸™','HÄ±zlÄ± Ã¶deme','ÙÙˆØ±ÛŒ Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ','å¿«é€Ÿä»˜æ¬¾'),(637,'write_your_remarks','Write Your Remarks','à¦†à¦ªà¦¨à¦¾à¦° à¦®à¦¨à§à¦¤à¦¬à§à¦¯ à¦²à¦¿à¦–à§à¦¨','Ø§ÙƒØªØ¨ Ù…Ù„Ø§Ø­Ø¸Ø§ØªÙƒ','Ã‰crivez vos remarques','à¤…à¤ªà¤¨à¥€ à¤Ÿà¤¿à¤ªà¥à¤ªà¤£à¥€ à¤²à¤¿à¤–à¥‡à¤‚','Tulis Komentar Anda','Scrivi le tue osservazioni','å‚™è€ƒã‚’æ›¸ã','ë¹„ê³ ë¬¸ ìž‘ì„±','Schrijf uw opmerkingen','Escreva suas observaÃ§Ãµes','à¹€à¸‚à¸µà¸¢à¸™à¸‚à¹‰à¸­à¸ªà¸±à¸‡à¹€à¸à¸•à¸‚à¸­à¸‡à¸„à¸¸à¸“','DÃ¼ÅŸÃ¼ncelerinizi YazÄ±n','Ø§Ù¾Ù†Û’ Ø±ÛŒÙ…Ø§Ø±Ú©Ø³ Ù„Ú©Ú¾ÛŒÚº','å†™ä¸‹ä½ çš„è¯„è®º'),(638,'reset','Reset','à¦ªà§à¦¨:à¦¸à§à¦¥à¦¾à¦ªà¦¨ à¦•à¦°à¦¾','Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ†','RÃ©initialiser','à¤°à¥€à¤¸à¥‡à¤Ÿ','VisszaÃ¡llÃ­tÃ¡s','Reset','ãƒªã‚»ãƒƒãƒˆ','ë‹¤ì‹œ ë†“ê¸°','Reset','Restabelecer','à¸£à¸µà¹€à¸‹à¹‡à¸•','Reset','Ø±ÛŒ Ø³ÛŒÙ¹ Ú©Ø±ÛŒÚº','é‡å¯'),(639,'fees_payment_history','Fees Payment History','à¦«à¦¿ à¦ªà§à¦°à¦¦à¦¾à¦¨à§‡à¦° à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¯ÙØ¹ Ø§Ù„Ø±Ø³ÙˆÙ…','Historial de pago de tasas','à¤¶à¥à¤²à¥à¤• à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸','Riwayat Pembayaran Biaya','Storia pagamenti pagamento','Storia pagamenti pagamento','ìˆ˜ìˆ˜ë£Œ ì§€ë¶ˆ ë‚´ì—­','Vergoeding betalingsgeschiedenis','HistÃ³rico de pagamento de taxas','à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret Ã–deme GeÃ§miÅŸi','ÙÛŒØ³ Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®','ÙÛŒØ³ Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®'),(640,'fees_summary_report','Fees Summary Report','à¦«à¦¿ à¦¸à¦‚à¦•à§à¦·à¦¿à¦ªà§à¦¤ à¦¬à¦¿à¦¬à¦°à¦£','ØªÙ‚Ø±ÙŠØ± Ù…Ù„Ø®Øµ Ø§Ù„Ø±Ø³ÙˆÙ…','Rapport sommaire des frais','à¤«à¥€à¤¸ à¤¸à¤¾à¤°à¤¾à¤‚à¤¶ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ','Laporan Ringkasan Biaya','Rapporto riepilogativo','æ–™é‡‘æ¦‚è¦ãƒ¬ãƒãƒ¼ãƒˆ','ìˆ˜ìˆ˜ë£Œ ìš”ì•½ ë³´ê³ ì„œ','Kostenoverzicht','RelatÃ³rio resumido de taxas','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸ªà¸£à¸¸à¸›à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡','Ãœcret Ã–zeti Raporu','Ãœcret Ã–zeti Raporu','è´¹ç”¨æ‘˜è¦æŠ¥å‘Š'),(641,'add_account_group','Add Account Group','à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦—à§à¦°à§à¦ª à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø¥Ø¶Ø§ÙØ© Ù…Ø¬Ù…ÙˆØ¹Ø© Ø­Ø³Ø§Ø¨','Ajouter un groupe de compte','à¤–à¤¾à¤¤à¤¾ à¤¸à¤®à¥‚à¤¹ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Grup Akun','Aggiungi gruppo di conti','ã‚¢ã‚«ã‚¦ãƒ³ãƒˆã‚°ãƒ«ãƒ¼ãƒ—ã‚’è¿½åŠ ','ê³„ì • ê·¸ë£¹ ì¶”ê°€','Accountgroep toevoegen','Adicionar grupo de contas','à¹€à¸žà¸´à¹ˆà¸¡à¸à¸¥à¸¸à¹ˆà¸¡à¸šà¸±à¸à¸Šà¸µ','Hesap Grubu Ekle','Ø§Ú©Ø§Ø¤Ù†Ù¹ Ú¯Ø±ÙˆÙ¾ Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ å¸æˆ·ç»„'),(642,'account_group','Account Group','à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦—à§à¦°à§à¦ª','Ø¬Ù…Ø§Ø¹Ø© Ø­Ø³Ø§Ø¨','Compte de groupe','à¤–à¤¾à¤¤à¤¾ à¤¸à¤®à¥‚à¤¹','FiÃ³kcsoport','FiÃ³kcsoport','ã‚¢ã‚«ã‚¦ãƒ³ãƒˆã‚°ãƒ«ãƒ¼ãƒ—','ê³„ì • ê·¸ë£¹','Accountgroep','Accountgroep','à¸à¸¥à¸¸à¹ˆà¸¡à¸šà¸±à¸à¸Šà¸µ','à¸à¸¥à¸¸à¹ˆà¸¡à¸šà¸±à¸à¸Šà¸µ','Ø§Ú©Ø§Ø¤Ù†Ù¹ Ú¯Ø±ÙˆÙ¾','å¸æˆ·ç»„'),(643,'account_group_list','Account Group List','à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦—à§à¦°à§à¦ª à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ù…Ø¬Ù…ÙˆØ¹Ø© Ø§Ù„Ø­Ø³Ø§Ø¨','Liste des groupes de comptes','à¤–à¤¾à¤¤à¤¾ à¤¸à¤®à¥‚à¤¹ à¤¸à¥‚à¤šà¥€','Daftar Grup Akun','Elenco gruppi di account','ã‚¢ã‚«ã‚¦ãƒ³ãƒˆã‚°ãƒ«ãƒ¼ãƒ—ä¸€è¦§','ê³„ì • ê·¸ë£¹ ëª©ë¡','Ratio Group List','Lista de grupos de contas','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸à¸¥à¸¸à¹ˆà¸¡à¸šà¸±à¸à¸Šà¸µ','Hesap Grubu Listesi','Ø§Ú©Ø§Ø¤Ù†Ù¹ Ú¯Ø±ÙˆÙ¾ Ú©ÛŒ ÙÛØ±Ø³Øª','å¸æˆ·ç»„åˆ—è¡¨'),(644,'mailbox','Mailbox','à¦¡à¦¾à¦•à¦¬à¦¾à¦•à§à¦¸','ØµÙ†Ø¯ÙˆÙ‚ Ø¨Ø±ÙŠØ¯','Boites aux lettres','à¤®à¥‡à¤²à¤¬à¥‰à¤•à¥à¤¸','Kotak surat','Cassetta postale','ãƒ¡ãƒ¼ãƒ«ãƒœãƒƒã‚¯ã‚¹','ì‚¬ì„œí•¨','Mailbox','Caixa de correio','à¸•à¸¹à¹‰à¸ˆà¸”à¸«à¸¡à¸²à¸¢','Posta kutusu','Ù…ÛŒÙ„ Ø¨Ø§Ú©Ø³','é‚®ç®±'),(645,'refresh_mail','Refresh Mail','à¦®à§‡à¦‡à¦² à¦°à¦¿à¦«à§à¦°à§‡à¦¶ à¦•à¦°à§à¦¨','ØªØ­Ø¯ÙŠØ« Ø§Ù„Ø¨Ø±ÙŠØ¯','Refresh Mail','Refresh Mail','Segarkan Surat','Refresh Mail','ãƒ¡ãƒ¼ãƒ«ã‚’æ›´æ–°','ë©”ì¼ ìƒˆë¡œ ê³ ì¹¨','Refresh Mail','Refresh Mail','à¸£à¸µà¹€à¸Ÿà¸£à¸Šà¹€à¸¡à¸¥','à¸£à¸µà¹€à¸Ÿà¸£à¸Šà¹€à¸¡à¸¥','à¸£à¸µà¹€à¸Ÿà¸£à¸Šà¹€à¸¡à¸¥','à¸£à¸µà¹€à¸Ÿà¸£à¸Šà¹€à¸¡à¸¥'),(646,'sender','Sender','à¦ªà§à¦°à§‡à¦°à¦£à¦•à¦°à§à¦¤à¦¾','Ù…Ø±Ø³Ù„','expÃ©diteur','à¤ªà¥à¤°à¥‡à¤·à¤•','pengirim','mittente','é€ä¿¡è€…','ë³´ë‚´ëŠ” ì‚¬ëžŒ','verzender','remetente','à¸œà¸¹à¹‰à¸ªà¹ˆà¸‡','gÃ¶nderen','Ù…Ø±Ø³Ù„','å¯„ä»¶äºº'),(647,'general_settings','General Settings','à¦¸à¦¾à¦§à¦¾à¦°à¦£ à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸','Ø§Ù„Ø§Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø¹Ø§Ù…Ø©',' rÃ©glages gÃ©nÃ©raux','à¤¸à¤¾à¤®à¤¾à¤¨à¥à¤¯ à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—à¥à¤¸','Pengaturan Umum','impostazioni generali','ä¸€èˆ¬è¨­å®š','ì¼ë°˜ ì„¤ì •','Algemene instellingen','ConfiguraÃ§Ãµes Gerais','à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸—à¸±à¹ˆà¸§à¹„à¸›','Genel Ayarlar','Ø¹Ø§Ù… ØªØ±ØªÛŒØ¨Ø§Øª','å¸¸è§„è®¾ç½®'),(648,'institute_name','Institute Name','à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…Ø¹Ù‡Ø¯','Nom de l\'Institut','à¤¸à¤‚à¤¸à¥à¤¥à¤¾à¤¨ à¤•à¤¾ à¤¨à¤¾à¤®','nama institusi','Nome Istituto','ç ”ç©¶æ‰€å','ì—°êµ¬ì†Œ ì´ë¦„','naam van het instituut','Nome do Instituto','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð¸Ð½ÑÑ‚Ð¸Ñ‚ÑƒÑ‚Ð°','Kurum Ä°smi','Kurum Ä°smi','å­¦é™¢åç§°'),(649,'institution_code','Institution Code','à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦•à§‹à¦¡','Ø±Ù…Ø² Ø§Ù„Ù…Ø¤Ø³Ø³Ø©','CÃ³digo Institucional','CÃ³digo Institucional','Kode Institusi','Codice istituto','æ©Ÿé–¢ã‚³ãƒ¼ãƒ‰','ê¸°ê´€ ì½”ë“œ','Instellingscode','CÃ³digo da InstituiÃ§Ã£o','à¸£à¸«à¸±à¸ªà¸ªà¸–à¸²à¸šà¸±à¸™','Kurum Kodu','Ø§Ù†Ø³Ù¹ÛŒ Ù¹ÛŒÙˆÙ¹ Ú©ÙˆÚˆ','æœºæž„ä»£ç '),(650,'sms_service_provider','Sms Service Provider','à¦à¦¸à¦à¦®à¦à¦¸ à¦¸à§‡à¦¬à¦¾ à¦ªà§à¦°à¦¦à¦¾à¦¨à¦•à¦¾à¦°à§€','Ù…Ø²ÙˆØ¯ Ø®Ø¯Ù…Ø© Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø©','Fournisseur de service SMS','Fournisseur de service SMS','Penyedia Layanan SMS','Provider di servizi SMS','SMSã‚µãƒ¼ãƒ“ã‚¹ãƒ—ãƒ­ãƒã‚¤ãƒ€ãƒ¼','SMS ì„œë¹„ìŠ¤ ê³µê¸‰ìž','SMS-serviceprovider','Provedor de serviÃ§os de SMS','à¸œà¸¹à¹‰à¹ƒà¸«à¹‰à¸šà¸£à¸´à¸à¸²à¸£ SMS','SMS Servis SaÄŸlayÄ±cÄ±sÄ±','SMS Ø³Ø±ÙˆØ³ ÙØ±Ø§ÛÙ… Ú©Ù†Ù†Ø¯Û','çŸ­ä¿¡æœåŠ¡æä¾›å•†'),(651,'footer_text','Footer Text','à¦ªà¦¾à¦¦à¦šà¦°à¦£','Ù†Øµ Ø§Ù„ØªØ°ÙŠÙŠÙ„','Pied de page texte','à¤«à¥‚à¤Ÿà¤° à¤Ÿà¥‡à¤•à¥à¤¸à¥à¤Ÿ','Catatan kaki','Testo di piÃ¨ di pagina','ãƒ•ãƒƒã‚¿ãƒ¼ãƒ†ã‚­ã‚¹ãƒˆ','ê¼¬ë¦¬ë§ í…ìŠ¤íŠ¸','Voettekst','Texto de rodapÃ©','à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¸ªà¹ˆà¸§à¸™à¸—à¹‰à¸²à¸¢','Altbilgi metni','ÙÙˆÙ¹Ø± Ù…ØªÙ†','é¡µè„šæ–‡æœ¬'),(652,'payment_control','Payment Control','à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦•à¦¨à§à¦Ÿà§à¦°à§‹à¦²','Ù†Øµ Ø§Ù„ØªØ°ÙŠÙŠÙ„','Pied de page texte','à¤«à¥‚à¤Ÿà¤° à¤Ÿà¥‡à¤•à¥à¤¸à¥à¤Ÿ','Catatan kaki','Testo di piÃ¨ di pagina','ãƒ•ãƒƒã‚¿ãƒ¼ãƒ†ã‚­ã‚¹ãƒˆ','ê¼¬ë¦¬ë§ í…ìŠ¤íŠ¸','Voettekst','Texto de rodapÃ©','à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¸ªà¹ˆà¸§à¸™à¸—à¹‰à¸²à¸¢','Altbilgi metni','ÙÙˆÙ¹Ø± Ù…ØªÙ†','é¡µè„šæ–‡æœ¬'),(653,'sms_config','Sms Config','à¦à¦¸à¦à¦®à¦à¦¸ à¦•à¦¨à¦«à¦¿à¦—','ØªÙƒÙˆÙŠÙ† Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø©','Sms Config','à¤à¤¸à¤à¤®à¤à¤¸ à¤•à¥‰à¤¨à¥à¤«à¤¼à¤¿à¤—à¤° à¤•à¤°à¥‡à¤‚','Konfigurasi Sms','Config. Sms','SMSæ§‹æˆ','Sms Config','Sms Config','Sms Config','Sms Config','Sms yapÄ±landÄ±rma','Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ ØªØ±ØªÛŒØ¨','çŸ­ä¿¡é…ç½®'),(654,'sms_triggers','Sms Triggers','à¦à¦¸à¦à¦®à¦à¦¸ à¦Ÿà§à¦°à¦¿à¦—à¦¾à¦°','Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø© Ø§Ù„Ù…Ø´ØºÙ„Ø§Øª','DÃ©clencheurs de sms','à¤à¤¸à¤à¤®à¤à¤¸ à¤Ÿà¥à¤°à¤¿à¤—à¤°','Pemicu Sms','Sms Triggers','SMSãƒˆãƒªã‚¬ãƒ¼','SMS íŠ¸ë¦¬ê±°','Sms Triggers','Sms Triggers','Sms Triggers','Sms Tetikleyicileri','Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ Ù¹Ø±Ú¯Ø±','çŸ­ä¿¡è§¦å‘å™¨'),(655,'authentication_token','Authentication Token','à¦ªà§à¦°à¦®à¦¾à¦£à§€à¦•à¦°à¦£ à¦Ÿà§‹à¦•à§‡à¦¨','Ø±Ù…Ø² Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø©','Jeton d\'authentification','à¤ªà¥à¤°à¤®à¤¾à¤£à¥€à¤•à¤°à¤£ à¤Ÿà¥‹à¤•à¤¨','Token Otentikasi','Token di autenticazione','èªè¨¼ãƒˆãƒ¼ã‚¯ãƒ³','ì¸ì¦ í† í°','ì¸ì¦ í† í°','Token de AutenticaÃ§Ã£o','à¹‚à¸—à¹€à¸„à¹‡à¸™à¸à¸²à¸£à¸£à¸±à¸šà¸£à¸­à¸‡à¸„à¸§à¸²à¸¡à¸–à¸¹à¸à¸•à¹‰à¸­à¸‡','Kimlik DoÄŸrulama Simgesi','Kimlik DoÄŸrulama Simgesi','èº«ä»½éªŒè¯ä»¤ç‰Œ'),(656,'sender_number','Sender Number','à¦ªà§à¦°à§‡à¦°à¦• à¦¸à¦‚à¦–à§à¦¯à¦¾','Ø±Ù‚Ù… Ø§Ù„Ù…Ø±Ø³Ù„','NumÃ©ro d\'expÃ©diteur','à¤­à¥‡à¤œà¤¨à¥‡ à¤µà¤¾à¤²à¤¾ à¤¨à¤‚à¤¬à¤°','FeladÃ³ szÃ¡ma','Numero mittente','é€ä¿¡è€…ç•ªå·','ë°œì‹ ìž ë²ˆí˜¸','Afzender nummer','NÃºmero do remetente','à¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚à¸œà¸¹à¹‰à¸ªà¹ˆà¸‡','GÃ¶nderenin NumarasÄ±','GÃ¶nderenin NumarasÄ±','å‘ä»¶äººç¼–å·'),(657,'username','Username','à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦° à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Nom d\'utilisateur','à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤¨à¤¾à¤®','Nama pengguna','Nome utente','ãƒ¦ãƒ¼ã‚¶ãƒ¼å','ì‚¬ìš©ìž ì´ë¦„','Gebruikersnaam','Nome de usuÃ¡rio','Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','KullanÄ±cÄ± adÄ±','ØµØ§Ø±Ù Ú©Ø§ Ù†Ø§Ù…','ØµØ§Ø±Ù Ú©Ø§ Ù†Ø§Ù…'),(658,'api_key','Api Key','Ù…ÙØªØ§Ø­ API','API-SchlÃ¼ssel','ClÃ© API','à¤à¤ªà¥€à¤†à¤ˆ à¤•à¥à¤‚à¤œà¥€','Api kulcs','Api kulcs','Api kulcs','API í‚¤','Chave API','Chave API','à¸„à¸µà¸¢à¹Œ Api','Api AnahtarÄ±','Ø§Û’Ù¾ÛŒ Ú©ÛŒ Ú©Ù„ÛŒ','Api Key'),(659,'authkey','Authkey','à¦ªà§à¦°à¦®à¦¾à¦£à§€à¦•à¦°à¦£ à¦•à§€','Ù…ÙØªØ§Ø­ Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø©','ClÃ© d\'authentification','à¤ªà¥à¤°à¤®à¤¾à¤£à¤¨ à¤•à¥à¤‚à¤œà¥€','Authkey','Chiave d\'autenticazione','èªè¨¼ã‚­ãƒ¼','Authkey','Inlogcode','Chave de autenticaÃ§Ã£o','Authkey','authkey','authkey','æŽˆæƒé”®'),(660,'sender_id','Sender Id','à¦ªà§à¦°à§‡à¦°à¦•à§‡à¦° à¦†à¦‡à¦¡à¦¿','Ø¥Ø±Ø³Ø§Ù„ Ù…Ø¹Ø±Ù','Identifiant de l\'expÃ©diteur','à¤ˆà¤¦ à¤­à¥‡à¤œà¤¨à¤¾','Mengirim Id','Invio Id','é€ä¿¡ID','ë°œì‹ ìž ID','ID verzenden','ID de envio','à¸ªà¹ˆà¸‡à¸£à¸«à¸±à¸ª','à¸ªà¹ˆà¸‡à¸£à¸«à¸±à¸ª','Ø´Ù†Ø§Ø®Øª Ø¨Ú¾ÛŒØ¬ Ø±ÛØ§ ÛÛ’','å‘é€ID'),(661,'sender_name','Sender Name','à¦ªà§à¦°à§‡à¦°à¦• à¦¨à¦¾à¦®','Ø§Ø³Ù… Ø§Ù„Ù…Ø±Ø³Ù„','Nom de l\'expÃ©diteur','à¤­à¥‡à¤œà¤¨à¥‡ à¤µà¤¾à¤²à¥‡ à¤•à¤¾ à¤¨à¤¾à¤®','KÃ¼ldÅ‘ neve','KÃ¼ldÅ‘ neve','é€ä¿¡è€…å','ë°œì‹ ìž ì´ë¦„','Naam afzender','Nome do remetente','à¸Šà¸·à¹ˆà¸­à¸œà¸¹à¹‰à¸ªà¹ˆà¸‡','GÃ¶nderenin adÄ±','GÃ¶nderenin adÄ±','GÃ¶nderenin adÄ±'),(662,'hash_key','Hash Key','à¦¹à§à¦¯à¦¾à¦¶ à¦•à§€','Ù…ÙØªØ§Ø­ Ø§Ù„ØªØ¬Ø²Ø¦Ø©','Touche diÃ¨se','à¤¹à¥ˆà¤¶ à¤•à¥à¤‚à¤œà¥€','Kunci Hash','Tasto cancelletto','Tasto cancelletto','Tasto cancelletto','Hash sleutel','Chave de hash','à¸£à¸«à¸±à¸ªà¹à¸®à¸Š','à¸£à¸«à¸±à¸ªà¹à¸®à¸Š','à¸£à¸«à¸±à¸ªà¹à¸®à¸Š','à¸£à¸«à¸±à¸ªà¹à¸®à¸Š'),(663,'notify_enable','Notify Enable','à¦…à¦¬à¦¹à¦¿à¦¤ à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼ à¦•à¦°à§à¦¨','Ø£Ø¨Ù„Øº Ø¹Ù† ØªÙ…ÙƒÙŠÙ†','Notifier Activer','à¤¸à¤•à¥à¤·à¤® à¤•à¤°à¥‡à¤‚ à¤¸à¥‚à¤šà¤¿à¤¤ à¤•à¤°à¥‡à¤‚','Beritahu Mengaktifkan','Notifica Abilita','æœ‰åŠ¹ã«ã™ã‚‹','ì•Œë¦¼ ì‚¬ìš©','Melding inschakelen','Notificar Ativar','à¹à¸ˆà¹‰à¸‡à¹€à¸•à¸·à¸­à¸™à¸à¸²à¸£à¹€à¸›à¸´à¸”à¹ƒà¸Šà¹‰à¸‡à¸²à¸™','EtkinleÅŸtir bildir','Ù…Ø·Ù„Ø¹ Ú©Ø±ÛŒÚº ÙØ¹Ø§Ù„ Ú©Ø±ÛŒÚº','é€šçŸ¥å¯ç”¨'),(664,'exam_attendance','Exam Attendance','à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿','Ø­Ø¶ÙˆØ± Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†','PrÃ©sence Ã  l\'examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤®à¥‡à¤‚ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿','Kehadiran ujian','Partecipazione agli esami','è©¦é¨“å—è¬›','ì‹œí—˜ ì¶œì„','Examen Aanwezigheid','ParticipaÃ§Ã£o no exame','SÄ±nava Devam','SÄ±nava Devam','Ø§Ù…ØªØ­Ø§Ù† Ø­Ø§Ø¶Ø±ÛŒ','Ø§Ù…ØªØ­Ø§Ù† Ø­Ø§Ø¶Ø±ÛŒ'),(665,'exam_results','Exam Results','à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦«à¦²à¦¾à¦«à¦²','Ù†ØªØ§Ø¦Ø¬ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†Ø§Øª','RÃ©sultats d\'examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤•à¥‡ à¤ªà¤°à¤¿à¤£à¤¾à¤®','Hasil ujian','Risultati degli esami','è©¦é¨“çµæžœ','ì‹œí—˜ ê²°ê³¼','Examenresultaten','Resultados dos exames','à¸œà¸¥à¸ªà¸­à¸š','SÄ±nav sonuÃ§larÄ±','Ø§Ù…ØªØ­Ø§Ù†ÛŒ Ù†ØªØ§Ø¦Ø¬','è€ƒè¯•æˆç»©'),(666,'email_config','Email Config','à¦‡à¦®à§‡à¦‡à¦² à¦•à¦¨à¦«à¦¿à¦—','ØªÙƒÙˆÙŠÙ† Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Config email','à¤ˆà¤®à¥‡à¤² à¤•à¥‰à¤¨à¥à¤«à¤¼à¤¿à¤—à¤°à¥‡à¤¶à¤¨','Konfigurasi email','Email config','ãƒ¡ãƒ¼ãƒ«è¨­å®š','ì´ë©”ì¼ êµ¬ì„±','ConfiguraÃ§Ã£o de email','ÐšÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ñ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹','à¸à¸³à¸«à¸™à¸”à¸„à¹ˆà¸²à¸­à¸µà¹€à¸¡à¸¥','E-posta yapÄ±landÄ±rmasÄ±','Ø§ÛŒ Ù…ÛŒÙ„ ØªØ±ØªÛŒØ¨','ç”µå­é‚®ä»¶é…ç½®'),(667,'email_triggers','Email Triggers','à¦‡à¦®à§‡à¦² à¦Ÿà§à¦°à¦¿à¦—à¦¾à¦°','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø§Ù„Ù…Ø´ØºÙ„Ø§Øª','DÃ©clencheurs de courrier Ã©lectronique','à¤ˆà¤®à¥‡à¤² à¤Ÿà¥à¤°à¤¿à¤—à¤°','Pemicu Email','Email Trigger','é›»å­ãƒ¡ãƒ¼ãƒ«ãƒˆãƒªã‚¬','ì´ë©”ì¼ íŠ¸ë¦¬ê±°','E-mail Triggers','Gatilhos de email','à¸—à¸£à¸´à¸à¹€à¸à¸­à¸£à¹Œà¸­à¸µà¹€à¸¡à¸¥','E-posta Tetikleyicileri','Ø§ÛŒ Ù…ÛŒÙ„ Ù¹Ø±Ú¯Ø±','ç”µå­é‚®ä»¶è§¦å‘å™¨'),(668,'account_registered','Account Registered','à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦¨à¦¿à¦¬à¦¨à§à¦§à¦¿à¦¤','Ø­Ø³Ø§Ø¨ Ù…Ø³Ø¬Ù„','Compte enregistrÃ©','à¤–à¤¾à¤¤à¤¾ à¤ªà¤‚à¤œà¥€à¤•à¥ƒà¤¤','Akun Terdaftar','Account registrato','ã‚¢ã‚«ã‚¦ãƒ³ãƒˆç™»éŒ²','ê³„ì • ë“±ë¡','Account geregistreerd','Conta registrada','à¸¥à¸‡à¸—à¸°à¹€à¸šà¸µà¸¢à¸™à¸šà¸±à¸à¸Šà¸µ','Hesap KayÄ±tlÄ±','Ø§Ú©Ø§Ø¤Ù†Ù¹ Ø±Ø¬Ø³Ù¹Ø±Úˆ','å¸æˆ·å·²æ³¨å†Œ'),(669,'forgot_password','Forgot Password','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦­à§à¦²à§‡ à¦—à§‡à¦›à§‡à¦¨','Ù‡Ù„ Ù†Ø³ÙŠØª ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','Mot de passe oubliÃ©','à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤­à¥‚à¤² à¤—à¤','Lupa kata sandi','Ha dimenticato la password','ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’ãŠå¿˜ã‚Œã§ã™ã‹','ë¹„ë°€ë²ˆí˜¸ë¥¼ ìžŠìœ¼ ì…¨ë‚˜ìš”','Wachtwoord vergeten','Esqueceu a senha','à¸¥à¸·à¸¡à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™','ParolanÄ±zÄ± mÄ± unuttunuz','Ù¾Ø§Ø³ÙˆØ±Úˆ Ø¨Ú¾ÙˆÙ„ Ú¯Û’','å¿˜è®°å¯†ç '),(670,'new_message_received','New Message Received','à¦¨à¦¤à§à¦¨ à¦¬à¦¾à¦°à§à¦¤à¦¾ à¦ªà§à¦°à¦¾à¦ªà§à¦¤','Ø±Ø³Ø§Ù„Ø© Ø¬Ø¯ÙŠØ¯Ø© Ù…Ø³ØªÙ„Ù…Ø©','Nouveau message reÃ§u','à¤¨à¤¯à¤¾ à¤¸à¤‚à¤¦à¥‡à¤¶ à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤ à¤¹à¥à¤†','Pesan Baru Diterima','Nuovo messaggio ricevuto','å—ä¿¡ã—ãŸæ–°ã—ã„ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸','ë°›ì€ ìƒˆ ë©”ì‹œì§€','Nieuw bericht ontvangen','Nova mensagem recebida','à¹„à¸”à¹‰à¸£à¸±à¸šà¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¹ƒà¸«à¸¡à¹ˆ','Yeni Mesaj AlÄ±ndÄ±','Ù†ÛŒØ§ Ù¾ÛŒØºØ§Ù… Ù…ÙˆØµÙˆÙ„ ÛÙˆØ§','æ”¶åˆ°æ–°æ¶ˆæ¯'),(671,'payslip_generated','Payslip Generated','à¦¬à§‡à¦¤à¦¨ à¦¸à§à¦²à¦¿à¦ª à¦¤à§ˆà¦°à¦¿','Ø¯ÙØ¹ Ø§Ù„Ø§Ù†Ø²Ù„Ø§Ù‚ ÙˆÙ„Ø¯Øª','Bulletin de paie gÃ©nÃ©rÃ©','à¤œà¥‡à¤¨à¤°à¥‡à¤Ÿ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾','Payslip Dihasilkan','Busta paga generata','ãƒšã‚¤ã‚¹ãƒªãƒƒãƒ—ç”Ÿæˆ','ìƒì„± ëœ Payslip','Loonstaten gegenereerd','Folha de pagamento gerada','à¸ªà¸£à¹‰à¸²à¸‡à¸ªà¸¥à¸´à¸›à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ bordrosu','Ù¾ÛŒØ³Ù„ÛŒÙ¾ Ù¾ÛŒØ¯Ø§','å·¥è³‡å–®ç”Ÿæˆ'),(672,'leave_approve','Leave Approve','à¦…à¦¨à§à¦®à§‹à¦¦à¦¨ à¦›à§‡à¦¡à¦¼à§‡ à¦¦à¦¿à¦¨','Ø§ØªØ±Ùƒ Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø©','Laisser approuver','à¤®à¤‚à¤œà¥‚à¤° à¤›à¥‹à¤¡à¤¼à¥‹','Tinggalkan Menyetujui','Lasciare approvare','æ‰¿èªã™ã‚‹','ìŠ¹ì¸ì„ ë‚¨ê²¨ì£¼ì„¸ìš”.','Laat goedkeuren','Deixar de aprovar','à¸­à¸­à¸à¸ˆà¸²à¸à¸­à¸™à¸¸à¸¡à¸±à¸•à¸´','Onaylamadan AyrÄ±l','Ø§Ø¬Ø§Ø²Øª Ø¯ÛŒÚº Ú†Ú¾ÙˆÚ‘ Ø¯Ùˆ','ç¦»å¼€æ‰¹å‡†'),(673,'leave_reject','Leave Reject','à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦–à§à¦¯à¦¾à¦¨ à¦›à§‡à¦¡à¦¼à§‡ à¦¦à¦¿à¦¨','Ø§ØªØ±Ùƒ Ø§Ù„Ø±ÙØ¶','Laisser rejeter','à¤°à¤¿à¤œà¥‡à¤•à¥à¤Ÿ à¤›à¥‹à¤¡à¤¼ à¤¦à¥‡à¤‚','Tinggalkan Tolak','Lasciare rifiutare','æ‹’å¦ã‚’æ®‹ã™','ê±°ì ˆí•˜ê¸°','Laat afwijzen','Deixe Rejeitar','à¸›à¸¥à¹ˆà¸­à¸¢à¹ƒà¸«à¹‰à¸›à¸à¸´à¹€à¸ªà¸˜','Reddetmeyi BÄ±rak','Ø±Ø¯Ø¹Ù…Ù„ Ú†Ú¾ÙˆÚ‘ Ø¯Ùˆ','è¯·æ‹’ç»'),(674,'advance_salary_approve','Advance Salary Approve','à¦…à¦—à§à¦°à¦¿à¦® à¦¬à§‡à¦¤à¦¨ à¦…à¦¨à§à¦®à§‹à¦¦à¦¨','Ø±Ø§ØªØ¨ Ù…Ù‚Ø¯Ù…Ø§','Avance Salaire Approuver','à¤…à¤—à¥à¤°à¤¿à¤® à¤µà¥‡à¤¤à¤¨ à¤¸à¥à¤µà¥€à¤•à¥ƒà¤¤','Setujui Gaji Lanjutan','Advance Salary Approve','å‰æ‰•ã„æ‰¿èª','ì„ ìž„ ê¸‰ì—¬ ìŠ¹ì¸','Voorschot Salaris Goedkeuren','SalÃ¡rio Adiantado Aprovar','à¸­à¸™à¸¸à¸¡à¸±à¸•à¸´à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸¥à¹ˆà¸§à¸‡à¸«à¸™à¹‰à¸²','PeÅŸin MaaÅŸ OnayÄ±','Ø§ÛŒÚˆÙˆØ§Ù†Ø³ ØªÙ†Ø®ÙˆØ§Û Ù…Ù†Ø¸ÙˆØ±','æå‰è–ªèµ„å®¡æ‰¹'),(675,'advance_salary_reject','Advance Salary Reject','à¦…à¦—à§à¦°à¦¿à¦® à¦¬à§‡à¦¤à¦¨ à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦–à§à¦¯à¦¾à¦¨','Ø§Ù„Ø±ÙØ¹ Ø§Ù„Ù…Ø³Ø¨Ù‚ Ø§Ù„Ø±ÙØ¶','Avance salaire rejeter','à¤…à¤—à¥à¤°à¤¿à¤® à¤µà¥‡à¤¤à¤¨ à¤…à¤¸à¥à¤µà¥€à¤•à¤¾à¤°','Tolak Gaji Muka','Advance Salary Reject','å‰æ‰•ã„æ‹’å¦','ì„ ê³  ê±°ë¶€','Voorschot Salaris Weigeren','AvanÃ§o Salarial Rejeitar','à¸à¸²à¸£à¸›à¸à¸´à¹€à¸ªà¸˜à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸¥à¹ˆà¸§à¸‡à¸«à¸™à¹‰à¸²','PeÅŸin MaaÅŸ Reddi','Ø§ÛŒÚˆÙˆØ§Ù†Ø³ ØªÙ†Ø®ÙˆØ§Û Ø±Ø¯','æå‰é€€ä¼‘é‡‘'),(676,'add_session','Add Session','à¦¸à§‡à¦¶à¦¨ à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø¥Ø¶Ø§ÙØ© Ø¬Ù„Ø³Ø©','Ajouter une session','à¤¸à¤¤à¥à¤° à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Sesi','Aggiungi sessione','ã‚»ãƒƒã‚·ãƒ§ãƒ³ã‚’è¿½åŠ ','ì„¸ì…˜ ì¶”ê°€','Voeg sessie toe','Adicionar SessÃ£o','à¹€à¸žà¸´à¹ˆà¸¡à¹€à¸‹à¸ªà¸Šà¸±à¸™','Oturum ekle','Ø³ÛŒØ´Ù† Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ ä¼šè¯'),(677,'session','Session','à¦¸à§‡à¦¶à¦¨','Ø¬Ù„Ø³Ø©','Session','à¤…à¤§à¤¿à¤µà¥‡à¤¶à¤¨','Sidang','Sessione','ã‚»ãƒƒã‚·ãƒ§ãƒ³','ì„¸ì…˜','Sessie','SessÃ£o','à¹€à¸‹à¸ªà¸Šà¸±à¹ˆà¸™','Oturum, toplantÄ±, celse','Ø§Ø¬Ù„Ø§Ø³','ä¼šè®®'),(678,'created_at','Created At','à¦ à¦¨à¦¿à¦°à§à¦®à¦¿à¦¤','Hergestellt inØ£Ù†Ø´Ø¦Øª ÙÙŠ','CrÃ©Ã© Ã ','à¤ªà¤° à¤¬à¤¨à¤¾à¤¯à¤¾ à¤—à¤¯à¤¾','Dibuat di','Creato a','ä½œæˆæ—¥','ìž‘ì„± ì‹œê°„','Gemaakt bij','Criado em','à¸ªà¸£à¹‰à¸²à¸‡à¹€à¸¡à¸·à¹ˆà¸­','At oluÅŸturuldu','Ù…ÛŒÚº Ù¾ÛŒØ¯Ø§','åˆ›å»ºäºŽ'),(679,'sessions','Sessions','à¦¸à§‡à¦¶à¦¨','Ø¬Ù„Ø³Ø§Øª','Sessions','à¤¸à¤¤à¥à¤°','Sesi','sessioni','ã‚»ãƒƒã‚·ãƒ§ãƒ³','ì„¸ì…˜ ìˆ˜','Sessions','SessÃµes','à¸à¸²à¸£à¸›à¸£à¸°à¸Šà¸¸à¸¡','Oturumlar','Ø³ÛŒØ´Ù†','ä¼šè®®'),(680,'flag','Flag','à¦ªà¦¤à¦¾à¦•à¦¾','Ø¹Ù„Ù…','Drapeau','à¤à¤‚à¤¡à¤¾','Bendera','Bandiera','æ——','ê¹ƒë°œ','Vlag','Bandeira','à¸˜à¸‡','bayrak','Ù¾Ø±Ú†Ù…','æ——'),(681,'stats','Stats','à¦ªà¦°à¦¿à¦¸à¦‚à¦–à§à¦¯à¦¾à¦¨','Ø§Ø­ØµØ§Ø¦ÙŠØ§Øª','Statistiques','à¤†à¤à¤•à¤¡à¤¼à¥‡','Statistik','Statistiche','çµ±è¨ˆ','í†µê³„','Stats','EstatÃ­sticas','à¸ªà¸–à¸´à¸•à¸´','Ä°statistikleri','Ø§Ø¹Ø¯Ø§Ø¯ Ùˆ Ø´Ù…Ø§Ø±ç»Ÿè®¡','ç»Ÿè®¡'),(682,'updated_at','Updated At','à¦ à¦†à¦ªà¦¡à§‡à¦Ÿ','ØªÙ… Ø§Ù„ØªØ­Ø¯ÙŠØ« ÙÙŠ','Mis Ã  jour Ã ','à¤…à¤ªà¤¡à¥‡à¤Ÿ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾','Diperbarui pada','Aggiornato a','ã§æ›´æ–°','ì—ì„œ ì—…ë°ì´íŠ¸ ë¨','Bijgewerkt op','Atualizado em','à¸­à¸±à¸›à¹€à¸”à¸•à¹€à¸¡à¸·à¹ˆà¸­','GÃ¼ncelleme Tarihi','Ø§Ù¾ ÚˆÛŒÙ¹','æ›´æ–°æ—¶é—´'),(683,'flag_icon','Flag Icon','à¦ªà¦¤à¦¾à¦•à¦¾ à¦†à¦‡à¦•à¦¨','Ø£ÙŠÙ‚ÙˆÙ†Ø© Ø§Ù„Ø¹Ù„Ù…','IcÃ´ne de drapeau','à¤§à¥à¤µà¤œ à¤šà¤¿à¤¹à¥à¤¨','Ikon Tandai','Icona della bandiera','æ——ã®ã‚¢ã‚¤ã‚³ãƒ³','êµ­ê¸° ì•„ì´ì½˜','Vlagpictogram','Ãcone de bandeira','à¹„à¸­à¸„à¸­à¸™à¸˜à¸‡','Bayrak Simgesi','Ù¾Ø±Ú†Ù… Ø¢Ø¦Ú©Ù†','å›½æ——å›¾æ ‡'),(684,'password_restoration','Password Restoration','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦ªà§à¦¨à¦°à§à¦¦à§à¦§à¦¾à¦°','Ø§Ø³ØªØ¹Ø§Ø¯Ø© ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','Restauration du mot de passe','à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤¬à¤¹à¤¾à¤²à¥€','Pemulihan Kata Sandi','Ripristino della password','ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰å¾©å…ƒ','ë¹„ë°€ë²ˆí˜¸ ë³µì›','Wachtwoordherstel','RestauraÃ§Ã£o de Senha','à¸à¸¹à¹‰à¸„à¸·à¸™à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™','Åžifre Yenileme','Ù¾Ø§Ø³ ÙˆØ±Úˆ Ú©ÛŒ Ø¨Ø­Ø§Ù„ÛŒ','å¯†ç æ¢å¤'),(685,'forgot','Forgot','à¦­à§à¦²à§‡ à¦—à§‡à¦›à§‡à¦¨','Ù†Ø³ÙŠØª','OubliÃ©','à¤­à¥‚à¤² à¤—à¤¯à¤¾','Lupa','dimenticato','å¿˜ã‚ŒãŸ','ë¶„ì‹¤','vergeten','Esqueci','à¸¥à¸·à¸¡','Unuttun','Ø¨Ú¾ÙˆÙ„','å¿˜è®°'),(686,'back_to_login','Back To Login','à¦ªà§à¦°à¦¬à§‡à¦¶ à¦•à¦°à¦¤à§‡ à¦ªà§‡à¦›à¦¾à¦¨','Ø§Ù„Ø¹ÙˆØ¯Ø© Ø¥Ù„Ù‰ ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„','Retour connexion','à¤²à¥‰à¤—à¤¿à¤¨ à¤ªà¤° à¤µà¤¾à¤ªà¤¸ à¤œà¤¾à¤à¤‚','Kembali untuk masuk','Torna al login','ãƒ­ã‚°ã‚¤ãƒ³ã«æˆ»ã‚‹','ë¡œê·¸ì¸ìœ¼ë¡œ ëŒì•„ ê°€ê¸°','Terug naar Inloggen','Volte ao login','à¸à¸¥à¸±à¸šà¹„à¸›à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸š','GiriÅŸe Geri DÃ¶n','Ù„Ø§Ú¯ Ø§Ù† Ú©Ø±Ù†Û’ Ú©Û’ Ù„Ø¦Û’ ÙˆØ§Ù¾Ø³','å›žåˆ°ç™»å…¥'),(687,'database_list','Database List','à¦¡à¦¾à¦Ÿà¦¾à¦¬à§‡à¦¸ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ù‚Ø§Ø¹Ø¯Ø© Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª','Liste de base de donnÃ©es','à¤¡à¥‡à¤Ÿà¤¾à¤¬à¥‡à¤¸ à¤¸à¥‚à¤šà¥€','Daftar Basis Data','Elenco Database','ãƒ‡ãƒ¼ã‚¿ãƒ™ãƒ¼ã‚¹ä¸€è¦§','ë°ì´í„°ë² ì´ìŠ¤ ëª©ë¡','Database lijst','Lista de bancos de dados','à¸£à¸²à¸¢à¸à¸²à¸£à¸à¸²à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥','VeritabanÄ± Listesi','ÚˆÛŒÙ¹Ø§ Ø¨ÛŒØ³ Ú©ÛŒ ÙÛØ±Ø³Øª','æ•°æ®åº“åˆ—è¡¨'),(688,'create_backup','Create Backup','à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦¤à§ˆà¦°à¦¿','Ø§Ù†Ø´Ø¦ Ù†Ø³Ø®Ø© Ø§Ø­ØªÙŠØ§Ø·ÙŠØ©','CrÃ©er une sauvegarde','à¤¬à¥ˆà¤•à¤…à¤ª à¤¬à¤¨à¤¾à¤¨à¤¾','Membuat backup','Creare il backup','ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—ã‚’ä½œæˆã™ã‚‹','ë°±ì—… ìƒì„±','Een backup maken','Criar backup','à¸ªà¸£à¹‰à¸²à¸‡à¸à¸²à¸£à¸ªà¸³à¸£à¸­à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥','Yedekleme OluÅŸtur','Ø¨ÛŒÚ© Ø§Ù¾ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºå¤‡ä»½'),(689,'backup','Backup','à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª','Ø¯Ø¹Ù…','Sauvegarde','à¤¬à¥ˆà¤•à¤…à¤ª','Cadangkan','Backup','ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—','ì§€ì›','backup','CÃ³pia de seguranÃ§a','à¸à¸²à¸£à¸ªà¸³à¸£à¸­à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥','yedek','Ø¨ÛŒÚ© Ø§Ù¾','å¤‡ç”¨'),(690,'backup_size','Backup Size','à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦†à¦•à¦¾à¦°','Ø­Ø¬Ù… Ø§Ù„Ù†Ø³Ø® Ø§Ù„Ø§Ø­ØªÙŠØ§Ø·ÙŠ','Taille de la sauvegarde','à¤¬à¥ˆà¤•à¤…à¤ª à¤†à¤•à¤¾à¤°','Ukuran Cadangan','Dimensione di backup','ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—ã‚µã‚¤ã‚º','ë°±ì—… í¬ê¸°','Back-upgrootte','Tamanho do backup','à¸‚à¸™à¸²à¸”à¸ªà¸³à¸£à¸­à¸‡','Yedek boyutu','Ø¨ÛŒÚ© Ø§Ù¾ Ø³Ø§Ø¦Ø²','å¤‡ä»½å¤§å°'),(691,'file_upload','File Upload','à¦«à¦¾à¦‡à¦² à¦†à¦ªà¦²à§‹à¦¡ à¦•à¦°à§à¦¨','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ù„Ù','TÃ©lÃ©chargement de fichiers','à¤«à¤¾à¤‡à¤² à¤…à¤ªà¤²à¥‹à¤¡','File Upload','File Upload','ãƒ•ã‚¡ã‚¤ãƒ«ã‚¢ãƒƒãƒ—ãƒ­ãƒ¼ãƒ‰','íŒŒì¼ ì—…ë¡œë“œ','Bestand upload','Upload de arquivo','à¸­à¸±à¸›à¹‚à¸«à¸¥à¸”à¹„à¸Ÿà¸¥à¹Œ','Dosya yÃ¼kleme','ÙØ§Ø¦Ù„ Ø§Ù¾ Ù„ÙˆÚˆ Ú©Ø±ÛŒÚº','ä¸Šä¼ æ–‡ä»¶'),(692,'parents_details','Parents Details','à¦ªà¦¿à¦¤à¦¾à¦®à¦¾à¦¤à¦¾à¦° à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤','ØªÙØ§ØµÙŠÙ„ Ø§Ù„ÙˆØ§Ù„Ø¯ÙŠÙ†','DÃ©tails parents','à¤®à¤¾à¤¤à¤¾-à¤ªà¤¿à¤¤à¤¾ à¤•à¤¾ à¤µà¤¿à¤µà¤°à¤£','Rincian Orang Tua','Dettagli dei genitori','ä¸¡è¦ªã®è©³ç´°','í•™ë¶€ëª¨ ì„¸ë¶€ ì •ë³´','Ouders details','Detalhes dos pais','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸œà¸¹à¹‰à¸›à¸à¸„à¸£à¸­à¸‡','Ebeveyn DetaylarÄ±','ÙˆØ§Ù„Ø¯ÛŒÙ† Ú©ÛŒ ØªÙØµÛŒÙ„Ø§Øª','çˆ¶æ¯è¯¦æƒ…'),(693,'social_links','Social Links','à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦²à¦¿à¦™à§à¦•','Ø±ÙˆØ§Ø¨Ø· Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠØ©','Liens sociaux','à¤¸à¤¾à¤®à¤¾à¤œà¤¿à¤• à¤²à¤¿à¤‚à¤•','Tautan Sosial','Collegamenti sociali','ã‚½ãƒ¼ã‚·ãƒ£ãƒ«ãƒªãƒ³ã‚¯','ì†Œì…œ ë§í¬','Social Links','Social Links','à¸¥à¸´à¸‡à¸„à¹Œà¹‚à¸‹à¹€à¸Šà¸µà¸¢à¸¥','Sosyal link','Ø³Ù…Ø§Ø¬ÛŒ Ø±ÙˆØ§Ø¨Ø·','ç¤¾äº¤é“¾æŽ¥'),(694,'create_hostel','Create Hostel','à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ Ù†Ø²Ù„','CrÃ©er une auberge','à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤¬à¤¨à¤¾à¤à¤‚','Buat Hostel','Creare un ostello','ãƒ›ã‚¹ãƒ†ãƒ«ã‚’ä½œæˆã™ã‚‹','í˜¸ìŠ¤í…” ë§Œë“¤ê¸°','Maak een hostel','Criar Hostel','à¸ªà¸£à¹‰à¸²à¸‡à¹‚à¸®à¸ªà¹€à¸—à¸¥','Hostel Yarat','ÛØ§Ù„Ø³Ù¹ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºæ—…é¦†'),(695,'allocation_list','Allocation List','à¦¬à¦°à¦¾à¦¦à§à¦¦ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ØªØ®ØµÙŠØµ','Allocation List','à¤†à¤µà¤‚à¤Ÿà¤¨ à¤¸à¥‚à¤šà¥€','Daftar Alokasi','Elenco di assegnazioni','é…åˆ†ãƒªã‚¹ãƒˆ','í• ë‹¹ ëª©ë¡','Toewijzingslijst','Lista de alocaÃ§Ã£o','à¸£à¸²à¸¢à¸à¸²à¸£à¸à¸²à¸£à¸ˆà¸±à¸”à¸ªà¸£à¸£','Tahsis Listesi','Ø§Ù„Ø§Ø¤Ù†Ø³ Ú©ÛŒ ÙÛØ±Ø³Øª','åˆ†é…æ¸…å•'),(696,'payslip_history','Payslip History','à¦¬à§‡à¦¤à¦¨ à¦¸à§à¦²à¦¿à¦ª à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸','Ø¯ÙØ¹ Ø³Ø¬Ù„ Ø§Ù„Ø§Ù†Ø²Ù„Ø§Ù‚','Histoire du bulletin de salaire','Payslip History','Sejarah Payslip','Storia di busta paga','çµ¦ä¸Žæ˜Žç´°ã®æ­´å²','íŽ˜ì´ ìŠ¬ë¦½ ì—­ì‚¬','Salaris geschiedenis','HistÃ³rico de holerite','à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸ªà¸¥à¸´à¸›à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ GeÃ§miÅŸi','Ù¾ÛŒØ³Ù„ÙˆÙ¾ ØªØ§Ø±ÛŒØ®','æ”¯ä»˜æ­·å²'),(697,'my_attendance_overview','My Attendance Overview','à¦†à¦®à¦¾à¦° à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦¸à¦‚à¦•à§à¦·à¦¿à¦ªà§à¦¤ à¦¬à¦¿à¦¬à¦°à¦£','Ø¨Ù„Ø¯ÙŠ Ù†Ø¸Ø±Ø© Ø¹Ø§Ù…Ø© Ø¹Ù„Ù‰ Ø§Ù„Ø­Ø¶ÙˆØ±','Mon assiduitÃ©','à¤®à¥‡à¤°à¥€ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤…à¤µà¤²à¥‹à¤•à¤¨','Ikhtisar Kehadiran Saya','Panoramica sulla mia presenze','ç§ã®å‡ºå¸­æ¦‚è¦','ë‚´ ì¶œì„ ê°œìš”','Mijn aanwezigheidsoverzicht','Minha visÃ£o geral de participaÃ§Ã£o','à¸ à¸²à¸žà¸£à¸§à¸¡à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸‚à¸­à¸‡à¸‰à¸±à¸™','KatÄ±lÄ±ma Genel BakÄ±ÅŸ','Ù…ÛŒØ±Ø§ Ø­Ø§Ø¶Ø±ÛŒ Ø¬Ø§Ø¦Ø²Û','æˆ‘çš„å‡ºå‹¤æ¦‚å†µ'),(698,'total_present','Total Present','à¦®à§‹à¦Ÿ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤','Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„Ø­Ø§Ù„ÙŠ','Total prÃ©sent','à¤•à¥à¤² à¤µà¤°à¥à¤¤à¤®à¤¾à¤¨','Total Hadir','Presente totale','åˆè¨ˆãƒ—ãƒ¬ã‚¼ãƒ³ãƒˆ','ì´ í˜„ìž¬','Totaal aanwezig','Total Present','à¸£à¸§à¸¡à¸›à¸±à¸ˆà¸ˆà¸¸à¸šà¸±à¸™','Toplam hediye','Ú©Ù„ Ù…ÙˆØ¬ÙˆØ¯Û','æ€»çŽ°åœ¨'),(699,'total_absent','Total Absent','à¦®à§‹à¦Ÿ à¦…à¦¨à§à¦ªà¦¸à§à¦¥à¦¿à¦¤','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„ØºØ§Ø¦Ø¨ÙŠÙ†','Total Absent','à¤•à¥à¤² à¤…à¤¨à¥à¤ªà¤¸à¥à¤¥à¤¿à¤¤','Total Absen','Total Absen','å…¨æ¬ å¸­','ì´ ë¶€ìž¬ìˆ˜','Totaal afwezig','Total ausente','à¸‚à¸²à¸”à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”','Toplam Yok','Ú©Ù„ Ù…Ø·Ù„Ù‚','å®Œå…¨ç¼ºå¸­'),(700,'total_late','Total Late','à¦®à§‹à¦Ÿ à¦¦à§‡à¦°à§€','Ù…Ø¬Ù…ÙˆØ¹ ÙÙŠ ÙˆÙ‚Øª Ù…ØªØ£Ø®Ø±','Total en retard','à¤•à¥à¤² à¤¦à¥‡à¤°','Total Terlambat','Totale ritardo','åˆè¨ˆé…ã‚Œ','ì´ ì§€ì—°','Totaal te laat','Total Late','à¸£à¸§à¸¡à¸¥à¹ˆà¸²à¸Šà¹‰à¸²','Toplam GeÃ§','Ú©Ù„ Ø¯ÛŒØ±','æ€»æ™šäº†'),(701,'class_teacher_list','Class Teacher List','à¦•à§à¦²à¦¾à¦¸ à¦¶à¦¿à¦•à§à¦·à¦• à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ù…Ø¹Ù„Ù… Ø§Ù„ØµÙ','Liste des professeurs de classe','à¤•à¤•à¥à¤·à¤¾ à¤¶à¤¿à¤•à¥à¤·à¤• à¤¸à¥‚à¤šà¥€','Daftar Guru Kelas','Elenco degli insegnanti di classe','ã‚¯ãƒ©ã‚¹æ•™å¸«ãƒªã‚¹ãƒˆ','ìˆ˜ì—… êµì‚¬ ëª©ë¡','Klasse Docentenlijst','Lista de professores de turma','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸„à¸£à¸¹à¸›à¸£à¸°à¸ˆà¸³à¸Šà¸±à¹‰à¸™','SÄ±nÄ±f Ã–ÄŸretmeni Listesi','Ú©Ù„Ø§Ø³ Ù¹ÛŒÚ†Ø± Ú©ÛŒ ÙÛØ±Ø³Øª','ç­çº§è€å¸ˆåå•'),(702,'section_control','Section Control','à¦¬à¦¿à¦­à¦¾à¦— à¦¨à¦¿à¦¯à¦¼à¦¨à§à¦¤à§à¦°à¦£','Ø§Ù„Ø³ÙŠØ·Ø±Ø© Ø¹Ù„Ù‰ Ø§Ù„Ù‚Ø³Ù…','Section Control','à¤…à¤¨à¥à¤­à¤¾à¤— à¤¨à¤¿à¤¯à¤‚à¤¤à¥à¤°à¤£','Kontrol Bagian','Controllo di sezione','ã‚»ã‚¯ã‚·ãƒ§ãƒ³ç®¡ç†','ì„¹ì…˜ ì»¨íŠ¸ë¡¤','Section Control','Controle de SeÃ§Ã£o','à¸à¸²à¸£à¸„à¸§à¸šà¸„à¸¸à¸¡à¸ªà¹ˆà¸§à¸™','BÃ¶lÃ¼m KontrolÃ¼','Ø³ÛŒÚ©Ø´Ù† Ú©Ù†Ù¹Ø±ÙˆÙ„','éƒ¨åˆ†æŽ§åˆ¶'),(703,'capacity ','Capacity ','à¦§à¦¾à¦°à¦£à¦•à§à¦·à¦®à¦¤à¦¾','Ø³Ø¹Ø©','CapacitÃ©','à¤•à¥à¤·à¤®à¤¤à¤¾','Kapasitas','CapacitÃ ','å®¹é‡','ìƒì‚° ëŠ¥ë ¥','Capaciteit','Capacidade','à¸„à¸§à¸²à¸¡à¸ˆà¸¸','Kapasite','ØµÙ„Ø§Ø­ÛŒØª','å®¹é‡'),(704,'request','Request','à¦…à¦¨à§à¦°à§‹à¦§','Ø·Ù„Ø¨','demande','à¤¨à¤¿à¤µà¥‡à¤¦à¤¨','permintaan','richiesta','è¦æ±‚','ì˜ë¢°','verzoek','pedido','à¸‚à¸­à¸£à¹‰à¸­à¸‡','istek','Ø¯Ø±Ø®ÙˆØ§Ø³Øª','è¯·æ±‚'),(705,'salary_year','Salary Year','à¦¬à§‡à¦¤à¦¨ à¦¬à¦›à¦°','Ø³Ù†Ø© Ø§Ù„Ø±Ø§ØªØ¨','AnnÃ©e de salaire','à¤µà¥‡à¤¤à¤¨ à¤µà¤°à¥à¤·','Tahun Gaji','Stipendio','çµ¦ä¸Žå¹´','ì—°ë´‰ ì—°ë„','Salarisjaar','Ano Salarial','à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸›à¸µ','MaaÅŸ YÄ±lÄ±','ØªÙ†Ø®ÙˆØ§Û Ø³Ø§Ù„','è–ªèµ„å¹´'),(706,'create_attachments','Create Attachments','à¦¸à¦‚à¦¯à§à¦•à§à¦¤à¦¿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ Ø§Ù„Ù…Ø±ÙÙ‚Ø§Øª','CrÃ©er des piÃ¨ces jointes','à¤…à¤¨à¥à¤²à¤—à¥à¤¨à¤• à¤¬à¤¨à¤¾à¤à¤','Buat Lampiran','Crea allegati','æ·»ä»˜ãƒ•ã‚¡ã‚¤ãƒ«ã‚’ä½œæˆã™ã‚‹','ì²¨ë¶€ íŒŒì¼ ë§Œë“¤ê¸°','Bijlagen creÃ«ren','Criar anexos','à¸ªà¸£à¹‰à¸²à¸‡à¹„à¸Ÿà¸¥à¹Œà¹à¸™à¸š','Ekler OluÅŸtur','Ù…Ù†Ø³Ù„Ú©Ø§Øª ØªØ®Ù„ÛŒÙ‚ Ú©Ø±ÛŒÚº','åˆ›å»ºé™„ä»¶'),(707,'publish_date','Publish Date','à¦ªà§à¦°à¦•à¦¾à¦¶à§‡à¦° à¦¤à¦¾à¦°à¦¿à¦–','ØªØ§Ø±ÙŠØ® Ø§Ù„Ù†Ø´Ø±','Publish Date','à¤ªà¥à¤°à¤•à¤¾à¤¶à¤¿à¤¤ à¤¤à¤¿à¤¥à¤¿','Tanggal Terbit','Data di pubblicazione','å…¬é–‹æ—¥','ê²Œì‹œ ë‚ ì§œ','Publiceer datum','Data de publicaÃ§Ã£o','à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸œà¸¢à¹à¸žà¸£à¹ˆ','YayÄ±n tarihi','ØªØ§Ø±ÛŒØ® Ø´Ø§Ø¦Ø¹ Ú©Ø±ÛŒÚº','å‘å¸ƒæ—¥æœŸ'),(708,'attachment_file','Attachment File','à¦¸à¦‚à¦¯à§à¦•à§à¦¤à¦¿ à¦«à¦¾à¦‡à¦²','Ù…Ù„Ù Ù…Ø±ÙÙ‚','Fichier joint','à¤…à¤¨à¥à¤²à¤—à¥à¤¨à¤• à¤«à¤¼à¤¾à¤‡à¤²','File Lampiran','Attachment File','æ·»ä»˜ãƒ•ã‚¡ã‚¤ãƒ«','ì²¨ë¶€ íŒŒì¼','Bijlage','Ficheiro em anexo','à¹„à¸Ÿà¸¥à¹Œà¹à¸™à¸š','Ek dosya','Ù…Ù†Ø³Ù„Ú© ÙØ§Ø¦Ù„','é™„ä»¶æ–‡ä»¶'),(709,'age','Age','à¦¬à¦¯à¦¼à¦¸','Ø¹Ù…Ø±','Ã‚ge','à¤†à¤¯à¥','Usia','EtÃ ','Age','ë‚˜ì´','Leeftijd','Era','à¸­à¸²à¸¢à¸¸','YaÅŸ','Ø¹Ù…Ø±','å¹´é¾„'),(710,'student_profile','Student Profile','à¦›à¦¾à¦¤à§à¦° à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦²','Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ Ù„Ù„Ø·Ø§Ù„Ø¨','Profil Ã©tudiant','à¤›à¤¾à¤¤à¥à¤° à¤ªà¥à¤°à¥‹à¤«à¤¾à¤‡à¤²','Profil Siswa','Profilo dello studente','å­¦ç”Ÿãƒ—ãƒ­ãƒ•ã‚£ãƒ¼ãƒ«','í•™ìƒ í”„ë¡œí•„','Studentenprofiel','Perfil do Aluno','à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²','Ã–ÄŸrenci profili','Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©ÛŒ Ù¾Ø±ÙˆÙØ§Ø¦Ù„','å­¦ç”Ÿæ¡£æ¡ˆ'),(711,'authentication','Authentication','à¦ªà§à¦°à¦®à¦¾à¦£à§€à¦•à¦°à¦£','Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø©','authentification','à¤ªà¥à¤°à¤®à¤¾à¤£à¥€à¤•à¤°à¤£','otentikasi','autenticazione','èªè¨¼','ìž…ì¦','authenticatie','autenticaÃ§Ã£o','à¸à¸²à¸£à¸£à¸±à¸šà¸£à¸­à¸‡','kimlik doÄŸrulama','ØªØµØ¯ÛŒÙ‚','è®¤è¯'),(712,'parent_information','Parent Information','à¦ªà¦¿à¦¤à¦¾à¦®à¦¾à¦¤à¦¾à¦° à¦¤à¦¥à§à¦¯','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„ÙˆØ§Ù„Ø¯ÙŠÙ†','Parent Information','à¤œà¤¨à¤• à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€','Informasi Induk','Informazioni sui genitori','è¦ªæƒ…å ±','í•™ë¶€ëª¨ ì •ë³´','í•™ë¶€ëª¨ ì •ë³´','í•™ë¶€ëª¨ ì •ë³´','à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸œà¸¹à¹‰à¸›à¸à¸„à¸£à¸­à¸‡','Ebeveyn Bilgisi','ÙˆØ§Ù„Ø¯ÛŒÙ† Ú©ÛŒ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª','å®¶é•¿ä¿¡æ¯'),(713,'full_marks','Full Marks','à¦ªà§‚à¦°à§à¦£ à¦¨à¦®à§à¦¬à¦°','Ø¹Ù„Ø§Ù…Ø§Øª ÙƒØ§Ù…Ù„Ø©','La totalitÃ© des points','à¤ªà¥‚à¤°à¥‡ à¤…à¤‚à¤•','Penuh dengan tanda','Pieni voti','ãƒ•ãƒ«ãƒžãƒ¼ã‚¯','ë§Œì ','Volle cijfers','Marcas Completas','à¸„à¸°à¹à¸™à¸™à¹€à¸•à¹‡à¸¡','Tam iÅŸaretleri','Ù¾ÙˆØ±Û’ Ù†Ù…Ø¨Ø±','æ»¡åˆ†'),(714,'passing_marks','Passing Marks','à¦ªà¦¾à¦¶ à¦¨à¦®à§à¦¬à¦°','Ø¹Ù„Ø§Ù…Ø§Øª Ø§Ù„Ù†Ø¬Ø§Ø­','Marques de passage','à¤ªà¤¾à¤¸à¤¿à¤‚à¤— à¤®à¤¾à¤°à¥à¤•à¥à¤¸','Passing Marks','Passando Marks','åˆæ ¼ãƒžãƒ¼ã‚¯','í†µê³¼ í‘œì‹œ','Markeringen doorgeven','Marcas de passagem','à¸œà¹ˆà¸²à¸™à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢','GeÃ§en iÅŸaretleri','Ù¾Ø§Ø³Ù†Ú¯ Ù…Ø§Ø±Ú©Ø³','ä¼ é€’æ ‡è®°'),(715,'highest_marks','Highest Marks','à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦®à¦¾à¦°à§à¦•','Ø£Ø¹Ù„Ù‰ Ø§Ù„Ø¹Ù„Ø§Ù…Ø§Øª','Plus hautes marques','à¤¸à¤¬à¤¸à¥‡ à¤Šà¤à¤šà¥‡ à¤¨à¤¿à¤¶à¤¾à¤¨','Nilai Tertinggi','I voti piÃ¹ alti','æœ€é«˜ç‚¹','ìµœê³  ì ìˆ˜','Hoogste cijfers','Marcas mais altas','à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸ªà¸¹à¸‡à¸ªà¸¸à¸”','En YÃ¼ksek Ä°ÅŸaretler','Ø³Ø¨ Ø³Û’ Ø²ÛŒØ§Ø¯Û Ù†Ø´Ø§Ù†ÛŒØ§Úº','æœ€é«˜åˆ†'),(716,'unknown','Unknown','à¦…à¦œà¦¾à¦¨à¦¾','ØºÙŠØ± Ù…Ø¹Ø±ÙˆÙ','Inconnu','à¤…à¤¨à¤œà¤¾à¤¨','Tidak dikenal','Sconosciuto','é“ã®','ì•Œ ìˆ˜ ì—†ëŠ”','Onbekend','Desconhecido','à¹„à¸¡à¹ˆà¸—à¸£à¸²à¸š','Bilinmeyen','Ù†Ø§Ù…Ø¹Ù„ÙˆÙ…','æœªçŸ¥'),(717,'unpublish','Unpublish','à¦…à¦ªà§à¦°à¦•à¦¾à¦¶à¦¿à¦¤','Ø¥Ù„ØºØ§Ø¡ Ø§Ù„Ù†Ø´Ø±','Annuler la publication','à¤…à¤ªà¥à¤°à¤•à¤¾à¤¶à¤¿à¤¤','Batalkan publikasi','Non pubblicato','æœªå…¬é–‹','ê²Œì‹œ ì·¨ì†Œ','Publicatie ongedaan maken','Cancelar publicaÃ§Ã£o','à¸¢à¸à¹€à¸¥à¸´à¸à¸à¸²à¸£à¹€à¸œà¸¢à¹à¸žà¸£à¹ˆ','YayÄ±ndan KaldÄ±r','ØºÛŒØ± Ø§Ø´Ø§Ø¹Øª Ø´Ø¯Û','å–æ¶ˆå‘å¸ƒ'),(718,'login_authentication_deactivate','Login Authentication Deactivate','à¦²à¦—à¦‡à¦¨ à¦…à¦¨à§à¦®à§‹à¦¦à¦¨ à¦¨à¦¿à¦·à§à¦•à§à¦°à¦¿à¦¯à¦¼ à¦•à¦°à§à¦¨','Ø¯Ø®ÙˆÙ„ Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø© Ø¥Ù„ØºØ§Ø¡ ØªÙ†Ø´ÙŠØ·','DÃ©sactiver l\'authentification de connexion','à¤²à¥‰à¤—à¤¿à¤¨ à¤ªà¥à¤°à¤®à¤¾à¤£à¥€à¤•à¤°à¤£ à¤¨à¤¿à¤·à¥à¤•à¥à¤°à¤¿à¤¯ à¤•à¤°à¥‡à¤‚','Otentikasi Login Nonaktifkan','Autenticazione di accesso Disattiva','ãƒ­ã‚°ã‚¤ãƒ³èªè¨¼ã‚’ç„¡åŠ¹ã«ã™ã‚‹','ë¡œê·¸ì¸ ì¸ì¦ ë¹„í™œì„±í™”','Aanmelding Authenticatie Deactiveren','AutenticaÃ§Ã£o de login Desativar','à¸à¸²à¸£à¸£à¸±à¸šà¸£à¸­à¸‡à¸„à¸§à¸²à¸¡à¸–à¸¹à¸à¸•à¹‰à¸­à¸‡à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸šà¸›à¸´à¸”à¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™','GiriÅŸ DoÄŸrulama Devre DÄ±ÅŸÄ± BÄ±rak','Ù„Ø§Ú¯ Ø§Ù† Ú©ÛŒ ØªØµØ¯ÛŒÙ‚ ØºÛŒØ± ÙØ¹Ø§Ù„','ç™»å½•éªŒè¯å–æ¶ˆæ¿€æ´»'),(719,'employee_profile','Employee Profile','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦²','Ù…Ù„Ù ØªØ¹Ø±ÙŠÙ Ø§Ù„Ù…ÙˆØ¸Ù','profil de l\'employÃ©','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤ªà¥à¤°à¥‹à¤«à¤¼à¤¾à¤‡à¤²','Profil Karyawan','Profilo del dipendente','å¾“æ¥­å“¡ãƒ—ãƒ­ãƒ•ã‚£ãƒ¼ãƒ«','ì§ì› í”„ë¡œí•„','Werknemersprofiel','Perfil do funcionÃ¡rio','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ä°ÅŸÃ§i profili','Ù…Ù„Ø§Ø²Ù… Ú©ÛŒ Ù¾Ø±ÙˆÙØ§Ø¦Ù„','å‘˜å·¥æ¡£æ¡ˆ'),(720,'employee_details','Employee Details','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¬à¦¿à¦¬à¦°à¦£','ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ù…ÙˆØ¸Ù','DÃ©tails de l\'employÃ©','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤µà¤¿à¤µà¤°à¤£','Detail Karyawan','Dettagli del dipendente','å¾“æ¥­å“¡ã®è©³ç´°','ì§ì› ì„¸ë¶€ ì •ë³´','Werknemersdetails','Detalhes do funcionÃ¡rio','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸan bilgileri','Ù…Ù„Ø§Ø²Ù… Ú©ÛŒ ØªÙØµÛŒÙ„Ø§Øª','å‘˜å·¥è¯¦ç»†ä¿¡æ¯'),(721,'salary_transaction','Salary Transaction','à¦¬à§‡à¦¤à¦¨ à¦²à§‡à¦¨à¦¦à§‡à¦¨','Ù…Ø¹Ø§Ù…Ù„Ø© Ø§Ù„Ø±Ø§ØªØ¨','Transaction salariale','à¤µà¥‡à¤¤à¤¨ à¤•à¤¾ à¤²à¥‡à¤¨-à¤¦à¥‡à¤¨','Transaksi Gaji','Transazione di stipendio','çµ¦ä¸Žå–å¼•','ê¸‰ì—¬ ê±°ëž˜','Salaristransactie','TransaÃ§Ã£o Salarial','à¸à¸²à¸£à¸—à¸³à¸˜à¸¸à¸£à¸à¸£à¸£à¸¡à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™','MaaÅŸ Ä°ÅŸlemi','ØªÙ†Ø®ÙˆØ§Û Ù¹Ø±Ø§Ù†Ø²ÛŒÚ©Ø´Ù†','è–ªé…¬äº¤æ˜“'),(722,'documents','Documents','à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦°','Ù…Ø³ØªÙ†Ø¯Ø§Øª','Documents','à¤¦à¤¸à¥à¤¤à¤¾à¤µà¥‡à¤œà¤¼','Dokumen','Documenti','æ›¸é¡ž','ì„œë¥˜','documenten','Documentos','à¹€à¸­à¸à¸ªà¸²à¸£','evraklar','Ø¯Ø³ØªØ§ÙˆÛŒØ²Ø§Øª','æ–‡ä»¶'),(723,'actions','Actions','à¦•à§à¦°à¦¿à¦¯à¦¼à¦¾à¦•à¦²à¦¾à¦ª','Ø£ÙØ¹Ø§Ù„','actes','à¤•à¥à¤°à¤¿à¤¯à¤¾','Tindakan','Azioni','è¡Œå‹•','í–‰ìœ„','acties','AÃ§Ãµes','à¸à¸²à¸£à¸›à¸à¸´à¸šà¸±à¸•à¸´','Eylemler','Ø§ÛŒÚ©Ø´Ù†Ø²','æ“ä½œ'),(724,'activity','Activity','à¦•à¦¾à¦°à§à¦¯à¦•à¦²à¦¾à¦ª','Ù†Ø´Ø§Ø·','ActivitÃ©','à¤—à¤¤à¤¿à¤µà¤¿à¤§à¤¿','Aktivitas','AttivitÃ ','ã‚¢ã‚¯ãƒ†ã‚£ãƒ“ãƒ†ã‚£','í™œë™','Activiteit','Atividade','à¸à¸´à¸ˆà¸à¸£à¸£à¸¡','Aktivite','Ø³Ø±Ú¯Ø±Ù…ÛŒ','æ´»åŠ¨'),(725,'department_list','Department List','à¦¬à¦¿à¦­à¦¾à¦— à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø¥Ø¯Ø§Ø±Ø§Øª','Liste des dÃ©partements','à¤µà¤¿à¤­à¤¾à¤— à¤•à¥€ à¤¸à¥‚à¤šà¥€','Daftar Departemen','Lista del dipartimento','å­¦éƒ¨ãƒªã‚¹ãƒˆ','ë¶€ì„œ ëª©ë¡','Afdelingslijst','Lista de Departamentos','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸à¸£à¸¡','BÃ¶lÃ¼m Listesi','ÚˆÙ¾Ø§Ø±Ù¹Ù…Ù†Ù¹ Ú©ÛŒ ÙÛØ±Ø³Øª','éƒ¨é—¨åå•'),(726,'manage_employee_salary','Manage Employee Salary','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦¬à§‡à¦¤à¦¨ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨','Ø¥Ø¯Ø§Ø±Ø© Ø±Ø§ØªØ¨ Ø§Ù„Ù…ÙˆØ¸Ù','GÃ©rer le salaire des employÃ©s','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤µà¥‡à¤¤à¤¨ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚','Kelola Gaji Karyawan','Gestire lo stipendio dei dipendenti','å¾“æ¥­å“¡çµ¦ä¸Žã®ç®¡ç†','ì§ì› ê¸‰ì—¬ ê´€ë¦¬','Beheer salarissen van werknemers','Gerenciar SalÃ¡rio de FuncionÃ¡rio','à¸ˆà¸±à¸”à¸à¸²à¸£à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸žà¸™à¸±à¸à¸‡à¸²à¸™','Ã‡alÄ±ÅŸan MaaÅŸÄ±nÄ± YÃ¶net','Ù…Ù„Ø§Ø²Ù… ØªÙ†Ø®ÙˆØ§Û Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº','ç®¡ç†å‘˜å·¥è–ªé…¬'),(727,'the_configuration_has_been_updated','The Configuration Has Been Updated','à¦•à¦¨à¦«à¦¿à¦—à¦¾à¦°à§‡à¦¶à¦¨ à¦†à¦ªà¦¡à§‡à¦Ÿ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à§‡à¦›à§‡','ØªÙ… ØªØ­Ø¯ÙŠØ« Ø§Ù„ØªÙƒÙˆÙŠÙ†','La configuration a Ã©tÃ© mise Ã  jour','à¤•à¥‰à¤¨à¥à¤«à¤¼à¤¿à¤—à¤°à¥‡à¤¶à¤¨ à¤…à¤¦à¥à¤¯à¤¤à¤¨ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾ à¤¹à¥ˆ','Konfigurasi Telah Diperbarui','La configurazione Ã¨ stata aggiornata','è¨­å®šãŒæ›´æ–°ã•ã‚Œã¾ã—ãŸ','êµ¬ì„±ì´ ì—…ë°ì´íŠ¸ë˜ì—ˆìŠµë‹ˆë‹¤.','De configuratie is bijgewerkt','A configuraÃ§Ã£o foi atualizada','à¸­à¸±à¸›à¹€à¸”à¸•à¸à¸²à¸£à¸à¸³à¸«à¸™à¸”à¸„à¹ˆà¸²à¹à¸¥à¹‰à¸§','YapÄ±landÄ±rma GÃ¼ncellenmiÅŸtir','ØªØ±ØªÛŒØ¨ ØªØ§Ø²Û Ú©Ø§Ø±ÛŒ Ú©ÛŒ Ú¯Ø¦ÛŒ ÛÛ’','é…ç½®å·²æ›´æ–°'),(728,'add','Add','à¦¯à§‹à¦—','Ø¥Ø¶Ø§ÙØ©','Ajouter','à¤œà¥‹à¤¡à¤¼à¤¨à¤¾','Menambahkan','Inserisci','è¿½åŠ ã™ã‚‹','ë”í•˜ë‹¤','Toevoegen','Adicionar','à¹€à¸žà¸´à¹ˆà¸¡','Eklemek','Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','åŠ '),(729,'create_exam','Create Exam','à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ Ø§Ø®ØªØ¨Ø§Ø±','CrÃ©er un examen','à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤¬à¤¨à¤¾à¤à¤','Buat Ujian','Crea un esame','è©¦é¨“ã‚’ä½œæˆ','ì‹œí—˜ ë§Œë“¤ê¸°','Maak examen','Criar um exame','à¸ªà¸£à¹‰à¸²à¸‡à¸à¸²à¸£à¸ªà¸­à¸š','SÄ±nav OluÅŸtur','Ø§Ù…ØªØ­Ø§Ù† Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºè€ƒè¯•'),(730,'term','Term','à¦®à§‡à¦¯à¦¼à¦¾à¦¦','Ù…ØµØ·Ù„Ø­','terme','à¤…à¤µà¤§à¤¿','istilah','termine','æœŸé–“','ê¸°ê°„','termijn','prazo','à¸§à¸²à¸£à¸°','terim','Ø§ØµØ·Ù„Ø§Ø­','æœ¯è¯­'),(731,'add_term','Add Term','à¦Ÿà¦¾à¦°à§à¦® à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø¥Ø¶Ø§ÙØ© Ù…ØµØ·Ù„Ø­','Ajouter un terme','à¤¶à¤¬à¥à¤¦ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','Tambahkan Istilah','Aggiungi termine','ç”¨èªžã‚’è¿½åŠ ','ìš©ì–´ ì¶”ê°€','Term toevoegen','Adicionar termo','à¹€à¸žà¸´à¹ˆà¸¡à¸„à¸³','Terim ekle','Ù¹Ø±Ù… Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ æœ¯è¯­'),(732,'create_grade','Create Grade','à¦—à§à¦°à§‡à¦¡ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø®Ù„Ù‚ Ø§Ù„ØµÙ','CrÃ©er une note','à¤—à¥à¤°à¥‡à¤¡ à¤¬à¤¨à¤¾à¤à¤','Buat Grade','Crea un voto','æˆç¸¾ã‚’ä½œæˆ','í•™ë…„ ë§Œë“¤ê¸°','Maak cijfer','Criar nota','à¸ªà¸£à¹‰à¸²à¸‡à¹€à¸à¸£à¸”','Not Yarat','Ú¯Ø±ÛŒÚˆ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºæˆç»©'),(733,'mark_starting','Mark Starting','à¦šà¦¿à¦¹à§à¦¨à¦¿à¦¤ à¦¶à§à¦°à§','Ø¹Ù„Ø§Ù…Ø© Ø§Ù„Ø¨Ø¯Ø§ÙŠØ©','Marquer Ã  partir','à¤®à¤¾à¤°à¥à¤• à¤¸à¥à¤Ÿà¤¾à¤°à¥à¤Ÿà¤¿à¤‚à¤—','Tandai Mulai','Mark Starting','é–‹å§‹ãƒžãƒ¼ã‚¯','ë§ˆí¬ ì‹œìž‘','Begin markeren','Mark Starting','à¸—à¸³à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™','Mark BaÅŸlangÄ±Ã§','Ù…Ø§Ø±Ú© Ø´Ø±ÙˆØ¹ Ú©Ø±Ù†Ø§','æ ‡è®°å¼€å§‹'),(734,'mark_until','Mark Until','à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦šà¦¿à¦¹à§à¦¨à¦¿à¦¤ à¦•à¦°à§à¦¨','Ù…Ø§Ø±Ùƒ Ø­ØªÙ‰','Merkitse kunnes','à¤¤à¤• à¤®à¤¾à¤°à¥à¤• à¤•à¤°à¥‡à¤‚','Tandai Sampai','Mark Until','ã¾ã§ãƒžãƒ¼ã‚¯ã™ã‚‹','ë§ˆí¬ê¹Œì§€','Markeren tot','Marcar atÃ©','à¸—à¸³à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸ˆà¸™à¸–à¸¶à¸‡','Kadar Ä°ÅŸaretle','ØªÚ© Ù†Ø´Ø§Ù† Ø²Ø¯ Ú©Ø±ÛŒÚº','é©¬å…‹ç›´åˆ°'),(735,'room_list','Room List','à¦•à¦•à§à¦· à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© ØºØ±ÙØ©','Liste des chambres','à¤•à¤•à¥à¤· à¤¸à¥‚à¤šà¥€','Daftar Kamar','Elenco delle stanze','éƒ¨å±‹ãƒªã‚¹ãƒˆ','ë°© ëª©ë¡','Kamerlijst','Room List','à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸«à¹‰à¸­à¸‡','Oda listesi','Ú©Ù…Ø±Û Ú©ÛŒ ÙÛØ±Ø³Øª','æˆ¿é—´æ¸…å•'),(736,'room','Room','à¦•à¦•à§à¦·','Ù…Ø¬Ø§Ù„','piÃ¨ce','à¤•à¤•à¥à¤·','kamar','camera','ãƒ«ãƒ¼ãƒ ','ë°©','kamer','sala','à¸«à¹‰à¸­à¸‡','oda','Ú©Ù…Ø±Û’','æˆ¿é—´'),(737,'route_list','Route List','à¦°à§à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø·Ø±ÙŠÙ‚','Liste des itinÃ©raires','à¤®à¤¾à¤°à¥à¤— à¤¸à¥‚à¤šà¥€','Daftar Rute','Elenco dei percorsi','ãƒ«ãƒ¼ãƒˆãƒªã‚¹ãƒˆ','ë…¸ì„  ëª©ë¡','Routelijst','Lista de rotas','à¸£à¸²à¸¢à¸à¸²à¸£à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡','Rota Listesi','Ø±Ø§Ø³ØªÛ’ Ú©ÛŒ ÙÛØ±Ø³Øª','è·¯çº¿æ¸…å•'),(738,'create_route','Create Route','à¦°à§à¦Ÿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø§Ù†Ø´Ø§Ø¡ Ø§Ù„Ø·Ø±ÙŠÙ‚','CrÃ©er un itinÃ©raire','à¤°à¥‚à¤Ÿ à¤¬à¤¨à¤¾à¤à¤‚','Buat Rute','Crea rotta','ãƒ«ãƒ¼ãƒˆã‚’ä½œæˆ','ê²½ë¡œ ë§Œë“¤ê¸°','Maak route','Criar rota','à¸ªà¸£à¹‰à¸²à¸‡à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡','Rota OluÅŸtur','Ø±ÙˆÙ¹ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºè·¯çº¿'),(739,'vehicle_list','Vehicle List','à¦¯à¦¾à¦¨à¦¬à¦¾à¦¹à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª','Liste de vÃ©hicules','à¤µà¤¾à¤¹à¤¨ à¤¸à¥‚à¤šà¥€','Daftar Kendaraan','Lista dei veicoli','è»Šä¸¡ãƒªã‚¹ãƒˆ','ì°¨ëŸ‰ ëª©ë¡','Voertuig lijst','Lista de veÃ­culos','à¸£à¸²à¸¢à¸à¸²à¸£à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°','AraÃ§ listesi','Ú¯Ø§Ú‘ÛŒ Ú©ÛŒ ÙÛØ±Ø³Øª','è½¦è¾†æ¸…å•'),(740,'create_vehicle','Create Vehicle','à¦¯à¦¾à¦¨à¦¬à¦¾à¦¹à¦¨ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø¥Ù†Ø´Ø§Ø¡ Ù…Ø±ÙƒØ¨Ø©','CrÃ©er un vÃ©hicule','à¤µà¤¾à¤¹à¤¨ à¤¬à¤¨à¤¾à¤à¤','Buat Kendaraan','Crea veicolo','è»Šä¸¡ã‚’ä½œæˆã™ã‚‹','ì°¨ëŸ‰ ë§Œë“¤ê¸°','Maak een voertuig','Criar veÃ­culo','à¸ªà¸£à¹‰à¸²à¸‡à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°','AraÃ§ OluÅŸtur','Ú¯Ø§Ú‘ÛŒØ§Úº Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºè½¦è¾†'),(741,'stoppage_list','Stoppage List','à¦¸à§à¦Ÿà¦ª à¦ªà§‡à¦œ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Stoppage','Liste d\'arrÃªt','à¤ à¤¹à¤°à¤¾à¤µ à¤¸à¥‚à¤šà¥€','Daftar Penghentian','Lista di arresto','åœæ­¢ãƒªã‚¹ãƒˆ','ì •ì§€ ëª©ë¡','Stoplijst','Lista de Paradas','à¸£à¸²à¸¢à¸à¸²à¸£à¸«à¸¢à¸¸à¸”','Durdurma Listesi','Ø³Ù¹Ø§Ù¾ ÙÛØ±Ø³Øª','åœå·¥æ¸…å•'),(742,'create_stoppage','Create Stoppage','à¦¬à¦¿à¦°à¦¤à¦¿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨','Ø§Ù†Ø´Ø§Ø¡ stoppage','CrÃ©er un arrÃªt','à¤ à¤¹à¤°à¤¾à¤µ à¤ªà¥ˆà¤¦à¤¾ à¤•à¤°à¥‹','Buat penghentian','Crea arresto','åœæ­¢ã‚’ä½œæˆã™ã‚‹','íŒŒì—… ìƒì„±','Maak een stoppagina','Criar parada','à¸ªà¸£à¹‰à¸²à¸‡à¸à¸²à¸£à¸«à¸¢à¸¸à¸”','Durdurma oluÅŸtur','Ø³Ù¹Ø§Ù¾ Ø¨Ù†Ø§Ø¦ÛŒÚº','åˆ›å»ºåœå·¥'),(743,'stop_time','Stop Time','à¦¬à¦¨à§à¦§ à¦¸à¦®à¦¯à¦¼','ÙˆÙ‚Ù Ø§Ù„ÙˆÙ‚Øª','temps d\'arrÃªt','à¤°à¥à¤•à¤¨à¥‡ à¤•à¤¾ à¤¸à¤®à¤¯','Hentikan waktu','tempo di stop','åœæ­¢æ™‚é–“','ì •ì§€ ì‹œê°„','stoptijd','pare o tempo','à¸«à¸¢à¸¸à¸”à¹€à¸§à¸¥à¸²','durma zamanÄ±','ÙˆÙ‚Øª Ø¨Ù†Ø¯ Ú©Ø±Ùˆ','åœæ­¢æ—¶é—´'),(744,'employee_attendance','Employee Attendance','à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿','Ø­Ø¶ÙˆØ± Ø§Ù„Ù…ÙˆØ¸Ù','PrÃ©sence des employÃ©s','à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤•à¥€ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿','Kehadiran Karyawan','Partecipazione dei dipendenti','å¾“æ¥­å“¡ã®å‡ºå¸­','ì§ì› ì¶œì„','Aanwezigheid van werknemers','Atendimento ao Empregado','à¸žà¸™à¸±à¸à¸‡à¸²à¸™à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡','Ã‡alÄ±ÅŸan Seyirci','Ù…Ù„Ø§Ø²Ù…Øª Ú©ÛŒ Ø­Ø§Ø¶Ø±ÛŒ','å‘˜å·¥å‡ºå‹¤'),(745,'attendance_report','Attendance Report','à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ','ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ø­Ø¶ÙˆØ±','Rapport de prÃ©sence','à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤µà¤¿à¤µà¤°à¤£','Laporan kehadiran','Rapporto di partecipazione','å‡ºå¸­ãƒ¬ãƒãƒ¼ãƒˆ','ì¶œì„ ë³´ê³ ì„œ','Aanwezigheidsrapport','RelatÃ³rio de presenÃ§as','à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸›à¸£à¸°à¸Šà¸¸à¸¡','Seyirci Raporu','Ø­Ø§Ø¶Ø±ÛŒ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹','å‡ºå‹¤æŠ¥å‘Š'),(746,'opening_balance','Opening Balance','à¦¬à§à¦¯à¦¾à¦²à§‡à¦¨à§à¦¸ à¦–à§‹à¦²à¦¾','Ø§Ù„Ø±ØµÙŠØ¯ Ø§Ù„Ø§ÙØªØªØ§Ø­ÙŠ','Solde d\'ouverture','à¤ªà¥à¤°à¤¾à¤°à¤‚à¤­à¤¿à¤• à¤¶à¥‡à¤·','Saldo awal','Saldo di apertura','æœŸé¦–æ®‹é«˜','ê¸°ì´ˆ ìž”ì•¡','Beginsaldo','Saldo inicial','à¸¢à¸­à¸”à¸„à¸‡à¹€à¸«à¸¥à¸·à¸­à¸•à¹‰à¸™à¸‡à¸§à¸”','AÃ§Ä±lÄ±ÅŸ bilanÃ§osu','Ú©Ú¾ÙˆÙ„Ù†Û’ Ú©Û’ Ø¨ÛŒÙ„Ù†Ø³','æœŸåˆä½™é¢'),(747,'add_opening_balance','Add Opening Balance','à¦‰à¦¦à§à¦¬à§‹à¦§à¦¨ à¦¬à§à¦¯à¦¾à¦²à§‡à¦¨à§à¦¸ à¦¯à§‹à¦— à¦•à¦°à§à¦¨','Ø¥Ø¶Ø§ÙØ© Ø±ØµÙŠØ¯ Ø§Ù„Ø§ÙØªØªØ§Ø­','ajouter un solde d\'ouverture','à¤“à¤ªà¤¨à¤¿à¤‚à¤— à¤¬à¥ˆà¤²à¥‡à¤‚à¤¸ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚','tambahkan Saldo pembukaan','aggiungi saldo di apertura','æœŸé¦–æ®‹é«˜ã‚’è¿½åŠ ','ê°œì‹œ ìž”ì•¡ì„ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.','voeg openingssaldo toe','adicionar equilÃ­brio de abertura','à¹€à¸žà¸´à¹ˆà¸¡à¸¢à¸­à¸”à¸„à¸‡à¹€à¸«à¸¥à¸·à¸­à¹€à¸›à¸´à¸”','aÃ§Ä±lÄ±ÅŸ bakiyesi ekle','Ú©Ú¾ÙˆÙ„Ù†Û’ ÙˆØ§Ù„ÛŒ Ø¨ÛŒÙ„Ù†Ø³ Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº','æ·»åŠ æœŸåˆä½™é¢'),(748,'credit','Credit','à¦§à¦¾à¦°','Ø§Ø¦ØªÙ…Ø§Ù†','crÃ©dit','à¤¶à¥à¤°à¥‡à¤¯','kredit','credito','ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆ','ì‹ ìš©','credit','crÃ©dito','à¹€à¸„à¸£à¸”à¸´à¸•','kredi','Ú©Ø±ÛŒÚˆÙ¹','ä¿¡ç”¨'),(749,'debit','Debit','à¦–à¦°à¦š','Ù…Ø¯ÙŠÙ†','dÃ©bit','à¤¨à¤¾à¤®à¥‡','debit','addebito','å€Ÿæ–¹','ì°¨ë³€','debiteren','dÃ©bito','à¸«à¸±à¸à¸šà¸±à¸à¸Šà¸µ','borÃ§','ÚˆÛŒØ¨Ù¹','å€Ÿæ–¹'),(750,'opening_balance_list','Opening Balance List','à¦–à§‹à¦²à¦¾à¦° à¦­à¦¾à¦°à¦¸à¦¾à¦®à§à¦¯ à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø±ØµÙŠØ¯ Ø§Ù„Ø§ÙØªØªØ§Ø­ÙŠ','liste des soldes d\'ouverture','à¤¸à¤‚à¤¤à¥à¤²à¤¨ à¤¸à¥‚à¤šà¥€ à¤–à¥‹à¤²à¤¨à¤¾','membuka daftar saldo','elenco di bilancio di apertura','æœŸé¦–æ®‹é«˜ãƒªã‚¹ãƒˆ','ê¸°ì´ˆ ìž”ì•¡ë¦¬ìŠ¤íŠ¸','openingsbalanslijst','lista de balanÃ§os de abertura','à¸£à¸²à¸¢à¸à¸²à¸£à¸ªà¸¡à¸”à¸¸à¸¥à¸à¸²à¸£à¹€à¸›à¸´à¸”','bakiye listesini aÃ§ma','Ø§ÙØªØªØ§Ø­ÛŒ ØªÙˆØ§Ø²Ù† Ú©ÛŒ ÙÛØ±Ø³Øª','æœŸåˆä½™é¢æ¸…å•'),(751,'voucher_list','Voucher List','à¦­à¦¾à¦‰à¦šà¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù‚Ø³Ø§Ø¦Ù…','Liste des bons','à¤µà¤¾à¤‰à¤šà¤° à¤¸à¥‚à¤šà¥€','Daftar Voucher','Lista dei buoni','ãƒã‚¦ãƒãƒ£ãƒ¼ãƒªã‚¹ãƒˆ','ë°”ìš°ì²˜ ëª©ë¡','Voucher lijst','Lista de Vouchers','à¸£à¸²à¸¢à¸à¸²à¸£à¸šà¸±à¸•à¸£à¸à¸³à¸™à¸±à¸¥','Kupon Listesi','ÙˆØ§Ø¤Ú†Ø± Ú©ÛŒ ÙÛØ±Ø³Øª','ä¼˜æƒ åˆ¸æ¸…å•'),(752,'voucher_head','Voucher Head','à¦­à¦¾à¦‰à¦šà¦¾à¦° à¦¹à§‡à¦¡','Ø±Ø¦ÙŠØ³ Ù‚Ø³ÙŠÙ…Ø©','Chef de bon','à¤µà¤¾à¤‰à¤šà¤° à¤ªà¥à¤°à¤®à¥à¤–','Kepala Voucher','Voucher Testa','ãƒã‚¦ãƒãƒ£ãƒ¼ãƒ˜ãƒƒãƒ‰','ë°”ìš°ì²˜ í—¤ë“œ','Bonhoofd','CabeÃ§a de comprovante','à¸«à¸±à¸§à¸«à¸™à¹‰à¸²à¸šà¸±à¸•à¸£à¸à¸³à¸™à¸±à¸¥','Kupon BaÅŸkanÄ±','ÙˆØ§Ø¤Ú†Ø± ÛÛŒÚˆ','å‡­è¯å¤´'),(753,'payment_method','Payment Method','à¦®à§‚à¦²à§à¦¯à¦ªà¦°à¦¿à¦¶à§‹à¦§ à¦ªà¦¦à§à¦§à¦¤à¦¿','Ø·Ø±ÙŠÙ‚Ø© Ø§Ù„Ø¯ÙØ¹ Ø§Ùˆ Ø§Ù„Ø³Ø¯Ø§Ø¯','Mode de paiement','à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¤¾ à¤¤à¤°à¥€à¤•à¤¾','Metode pembayaran','Metodo di pagamento','æ”¯æ‰•æ–¹æ³•','ì§€ë¶ˆ ë°©ë²•','Betalingsmiddel','MÃ©todo de pagamento','à¸§à¸´à¸˜à¸µà¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™','Ã–deme ÅŸekli','Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Ø§ Ø·Ø±ÛŒÙ‚Û','ä»˜æ¬¾æ–¹æ³•'),(754,'credit_ledger_account','Credit Ledger Account','à¦•à§à¦°à§‡à¦¡à¦¿à¦Ÿ à¦²à§‡à¦œà¦¾à¦° à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','Ø­Ø³Ø§Ø¨ Ø¯ÙØªØ± Ø§Ù„Ø£Ø³ØªØ§Ø°','Compte de crÃ©dit','à¤•à¥à¤°à¥‡à¤¡à¤¿à¤Ÿ à¤²à¥‡à¤œà¤° à¤–à¤¾à¤¤à¤¾','Akun Buku Besar Kredit','Conto del conto di credito','ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆå…ƒå¸³ã‚¢ã‚«ã‚¦ãƒ³ãƒˆ','í¬ë ˆë”§ ì›ìž¥ ê³„ì •','Credit Ledger-account','Conta contÃ¡bil de crÃ©dito','à¸šà¸±à¸à¸Šà¸µà¹à¸¢à¸à¸›à¸£à¸°à¹€à¸ à¸—à¹€à¸„à¸£à¸”à¸´à¸•','Kredi Muhasebe HesabÄ±','Ú©Ø±ÛŒÚˆÙ¹ Ù„ÛŒÚˆØ± Ø§Ú©Ø§Ø¤Ù†Ù¹','ä¿¡ç”¨åˆ†ç±»å¸'),(755,'debit_ledger_account','Debit Ledger Account','à¦¡à§‡à¦¬à¦¿à¦Ÿ à¦²à§‡à¦œà¦¾à¦° à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ','Ø­Ø³Ø§Ø¨ Ø¯ÙØªØ± Ø§Ù„Ø£Ø³ØªØ§Ø° Ø§Ù„Ù…Ø¯ÙŠÙ†','Compte gÃ©nÃ©ral dÃ©biteur','à¤¡à¥‡à¤¬à¤¿à¤Ÿ à¤²à¥‡à¤œà¤° à¤–à¤¾à¤¤à¤¾','Debit Ledger Account','Conto del conto di addebito','å€Ÿæ–¹å…ƒå¸³ã‚¢ã‚«ã‚¦ãƒ³ãƒˆ','ì°¨ë³€ì› ì›ìž¥ ê³„ì •','Debet Grootboekrekening','Conta do razÃ£o de dÃ©bito','à¹€à¸”à¸šà¸´à¸•à¸šà¸±à¸à¸Šà¸µà¹à¸¢à¸à¸›à¸£à¸°à¹€à¸ à¸—','BorÃ§ Muhasebe HesabÄ±','ÚˆÛŒØ¨Ù¹ Ù„ÛŒÚˆØ± Ø§Ú©Ø§Ø¤Ù†Ù¹','å€Ÿè®°å¸æˆ·'),(756,'voucher_no','Voucher No','à¦­à¦¾à¦‰à¦šà¦¾à¦° à¦¨à¦‚','Ø±Ù‚Ù… Ø§Ù„Ù‚Ø³ÙŠÙ…Ø©','N Â° de bon','à¤µà¤¾à¤‰à¤šà¤° à¤¸à¤‚à¤–à¥à¤¯à¤¾','Voucher No.','Voucher n','ãƒã‚¦ãƒãƒ£ãƒ¼ç•ªå·','ë°”ìš°ì²˜ ë²ˆí˜¸','Coupon nr','Voucher No','à¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚à¸„à¸¹à¸›à¸­à¸‡','FiÅŸ numarasÄ±','ÙˆØ§Ø¤Ú†Ø± Ù†Ù…Ø¨Ø±','å‡­è¯å·ç '),(757,'balance','Balance','à¦­à¦¾à¦°à¦¸à¦¾à¦®à§à¦¯','ØªÙˆØ§Ø²Ù†','Ã©quilibre','à¤¸à¤‚à¤¤à¥à¤²à¤¨','keseimbangan','equilibrio','ãƒãƒ©ãƒ³ã‚¹','ê· í˜•','balans','equilibrar','à¸ªà¸¡à¸”à¸¸à¸¥','denge','Ø¨Ù‚ÛŒÛ','å¹³è¡¡'),(758,'event_details','Event Details','à¦˜à¦Ÿà¦¨à¦¾à¦° à¦¬à¦¿à¦¬à¦°à¦¨','ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ø­Ø¯Ø«','DÃ©tails de l\'Ã©vÃ¨nement','à¤˜à¤Ÿà¤¨à¤¾ à¤•à¥€ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€','detail acara','dettagli dell\'evento','ã‚¤ãƒ™ãƒ³ãƒˆã®è©³ç´°','ì¼ì • ì„¸ë¶€ ì •ë³´','Evenementdetails','detalhes do evento','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸à¸´à¸ˆà¸à¸£à¸£à¸¡','à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”à¸à¸´à¸ˆà¸à¸£à¸£à¸¡','ÙˆØ§Ù‚Ø¹Û Ú©ÛŒ ØªÙØµÛŒÙ„Ø§Øª','æ´»åŠ¨è¯¦æƒ…'),(759,'welcome_to','Welcome To','à¦¸à§à¦¬à¦¾à¦—à¦¤à¦®','Ù…Ø±Ø­Ø¨Ø§ Ø¨Ùƒ ÙÙŠ','Bienvenue Ã ','à¤®à¥‡à¤‚ à¤¸à¥à¤µà¤¾à¤—à¤¤','Selamat Datang di','Benvenuto a','ã¸ã‚ˆã†ã“ã','ì— ì˜¤ì‹  ê²ƒì„ í™˜ì˜í•©ë‹ˆë‹¤','Welkom bij','Bem-vindo ao','à¸¢à¸´à¸™à¸”à¸µà¸•à¹‰à¸­à¸™à¸£à¸±à¸šà¸ªà¸¹à¹ˆ','HoÅŸgeldiniz','Ø®ÙˆØ´ Ø¢Ù…Ø¯ÛŒØ¯','æ¬¢è¿Žæ¥åˆ°'),(760,'report_card','Report Card','à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ à¦•à¦¾à¦°à§à¦¡','Ø¨Ø·Ø§Ù‚Ø© ØªÙ‚Ø±ÙŠØ±','Bulletin scolaire','à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ à¤•à¤¾à¤°à¥à¤¡','Kartu Laporan','Report Card','å ±å‘Šã‚«ãƒ¼ãƒ‰','ì„±ì í‘œ','Rapport','Boletim','à¸šà¸±à¸•à¸£à¸£à¸²à¸¢à¸‡à¸²à¸™','Karne','Ø±Ù¾ÙˆØ±Ù¹ Ú©Ø§Ø±Úˆ','æŠ¥å‘Šå¡'),(761,'online_pay','Online Pay','à¦…à¦¨à¦²à¦¾à¦‡à¦¨ à¦¦à¦¿à¦¤à§‡','Ù‚Ø¯Ù… Ø¹Ø¨Ø± Ø§Ù„Ø¥Ù†ØªØ±Ù†Øª','Donner en ligne','à¤‘à¤¨à¤²à¤¾à¤‡à¤¨ à¤¦à¥‡à¤‚','Adjon online','Dare online','ã‚ªãƒ³ãƒ©ã‚¤ãƒ³ã§è´ˆã‚‹','ì˜¨ë¼ì¸ ì œê³µ','Geef online','Dar online','à¹ƒà¸«à¹‰à¸­à¸­à¸™à¹„à¸¥à¸™à¹Œ','Ã‡evrimiÃ§i ver','Ø¢Ù† Ù„Ø§Ø¦Ù† Ø¯Û’ Ø¯Ùˆ','åœ¨çº¿æä¾›'),(762,'annual_fees_summary','Annual Fees Summary','à¦¬à¦¾à¦°à§à¦·à¦¿à¦• à¦«à¦¿ à¦¸à¦‚à¦•à§à¦·à¦¿à¦ªà§à¦¤ à¦¬à¦¿à¦¬à¦°à¦£','Ù…Ù„Ø®Øµ Ø§Ù„Ø±Ø³ÙˆÙ… Ø§Ù„Ø³Ù†ÙˆÙŠØ©','RÃ©sumÃ© des frais annuels','à¤µà¤¾à¤°à¥à¤·à¤¿à¤• à¤¶à¥à¤²à¥à¤• à¤¸à¤¾à¤°à¤¾à¤‚à¤¶','Ringkasan Biaya Tahunan','Riepilogo tariffe annuali','å¹´ä¼šè²»ã‚µãƒžãƒªãƒ¼','ì—°íšŒë¹„ ìš”ì•½','Jaarlijks kostenoverzicht','Resumo das Taxas Anuais','à¸ªà¸£à¸¸à¸›à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸£à¸²à¸¢à¸›à¸µ','YÄ±llÄ±k Ãœcret Ã–zeti','Ø³Ø§Ù„Ø§Ù†Û ÙÛŒØ³ Ø®Ù„Ø§ØµÛ','å¹´åº¦è´¹ç”¨æ‘˜è¦'),(763,'my_children','My Children','à¦†à¦®à¦¾à¦° à¦¶à¦¿à¦¶à§','Ø£Ø·ÙØ§Ù„ÙŠ','Mes enfants','à¤®à¥‡à¤°à¥‡ à¤¬à¤šà¥à¤šà¥‡','Anak-anak saya','I miei figli','ç§ã®å­ä¾›ãŸã¡','ì•„ì´ë“¤','Mijn kinderen','Minhas crianÃ§as','à¸¥à¸¹à¸ à¹† à¸‚à¸­à¸‡à¸‰à¸±à¸™','Benim Ã§ocuklarÄ±m','Ù…ÛŒØ±ÛŒ Ø§ÙˆÙ„Ø§Ø¯','æˆ‘çš„å­©å­ä»¬'),(764,'assigned','Assigned','à¦¬à¦°à¦¾à¦¦à§à¦¦','ØªØ¹ÙŠÙŠÙ†','AttribuÃ©','à¤¨à¤¿à¤°à¥à¤ªà¤¿à¤¤','Ditugaskan','Assegnato','å‰²ã‚Šå½“ã¦æ¸ˆã¿','ë°°ì • ëœ','toegewezen','AtribuÃ­do','à¸—à¸µà¹ˆà¹„à¸”à¹‰à¸£à¸±à¸šà¸¡à¸­à¸šà¸«à¸¡à¸²à¸¢','atanan','ØªÙÙˆÛŒØ¶','åˆ†é…'),(765,'confirm_password','Confirm Password','à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§à¦¨','ØªØ£ÙƒÙŠØ¯ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','Confirmez le mot de passe','à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤•à¥€ à¤ªà¥à¤·à¥à¤Ÿà¤¿ à¤•à¥€à¤œà¤¿à¤¯à¥‡','konfirmasi sandi','conferma password','ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’èªè¨¼ã™ã‚‹','ë¹„ë°€ë²ˆí˜¸ í™•ì¸','bevestig wachtwoord','Confirme a Senha','à¸¢à¸·à¸™à¸¢à¸±à¸™à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™','Åžifreyi Onayla','Ù¾Ø§Ø³ ÙˆØ±Úˆ Ú©ÛŒ ØªÙˆØ«ÛŒÙ‚ Ú©Ø±ÛŒÚº','ç¡®è®¤å¯†ç '),(766,'searching_results','Searching Results','à¦…à¦¨à§à¦¸à¦¨à§à¦§à¦¾à¦¨ à¦«à¦²à¦¾à¦«à¦²','Ù†ØªØ§Ø¦Ø¬ Ø§Ù„Ø¨Ø­Ø«','RÃ©sultats de recherche','à¤–à¥‹à¤œ à¤ªà¤°à¤¿à¤£à¤¾à¤®','Hasil Pencarian','Ricerca dei risultati','æ¤œç´¢çµæžœ','ê²€ìƒ‰ ê²°ê³¼','Resultaten zoeken','Pesquisando Resultados','à¸œà¸¥à¸à¸²à¸£à¸„à¹‰à¸™à¸«à¸²','Arama sonuÃ§larÄ±','ØªÙ„Ø§Ø´ Ú©Û’ Ù†ØªØ§Ø¦Ø¬','æœç´¢ç»“æžœ'),(767,'information_has_been_saved_successfully','Information Has Been Saved Successfully','à¦¤à¦¥à§à¦¯ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦¸à¦‚à¦°à¦•à§à¦·à¦¿à¦¤ à¦¹à¦¯à¦¼à§‡à¦›à§‡','ØªÙ… Ø­ÙØ¸ Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø¨Ù†Ø¬Ø§Ø­','L\'information a Ã©tÃ© sauvegardÃ©e avec succÃ¨s','à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤¬à¤š à¤—à¤ˆ à¤¹à¥ˆ','Informasi Telah Berhasil Disimpan','Le informazioni sono state salvate con successo','æƒ…å ±ã¯æ­£å¸¸ã«ä¿å­˜ã•ã‚Œã¾ã—ãŸ','ì •ë³´ê°€ ì„±ê³µì ìœ¼ë¡œ ì €ìž¥ë˜ì—ˆìŠµë‹ˆë‹¤.','Informatie is succesvol opgeslagen','InformaÃ§Ãµes foram salvas com sucesso','à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸–à¸¹à¸à¸šà¸±à¸™à¸—à¸¶à¸à¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§','Bilgi baÅŸarÄ±yla kaydedildi','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ù…Ø­ÙÙˆØ¸ ÛÙˆÚ¯Ø¦ÛŒ ÛÛ’','ä¿¡æ¯å·²æˆåŠŸä¿å­˜'),(768,'information_deleted','The information has been successfully deleted','à¦¤à¦¥à§à¦¯ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¾ à¦¹à¦¯à¦¼à§‡à¦›à§‡','ØªÙ… Ø­Ø°Ù Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø¨Ù†Ø¬Ø§Ø­','L\'information a Ã©tÃ© supprimÃ©e avec succÃ¨s','à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤¹à¤Ÿà¤¾ à¤¦à¥€ à¤—à¤ˆ à¤¹à¥ˆ','Informasi telah berhasil dihapus','Le informazioni sono state cancellate con successo','æƒ…å ±ã¯æ­£å¸¸ã«å‰Šé™¤ã•ã‚Œã¾ã—ãŸ','ì •ë³´ê°€ ì„±ê³µì ìœ¼ë¡œ ì‚­ì œë˜ì—ˆìŠµë‹ˆë‹¤.','De informatie is succesvol verwijderd','A informaÃ§Ã£o foi apagada com sucesso','à¸¥à¸šà¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸ªà¸³à¹€à¸£à¹‡à¸ˆà¹à¸¥à¹‰à¸§','Bilgi baÅŸarÄ±yla silindi','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø®ØªÙ… ÛÙˆÚ¯Ø¦ÛŒ ÛÛ’','è¯¥ä¿¡æ¯å·²æˆåŠŸåˆ é™¤'),(769,'deleted_note','*Note : This data will be permanently deleted','* à¦¦à§à¦°à¦·à§à¦Ÿà¦¬à§à¦¯: à¦à¦‡ à¦¤à¦¥à§à¦¯ à¦¸à§à¦¥à¦¾à¦¯à¦¼à§€à¦­à¦¾à¦¬à§‡ à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¾ à¦¹à¦¬à§‡','* Ù…Ù„Ø§Ø­Ø¸Ø©: Ø³ÙŠØªÙ… Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª Ù†Ù‡Ø§Ø¦ÙŠÙ‹Ø§','* Remarque: ces donnÃ©es seront dÃ©finitivement supprimÃ©es.','* à¤¨à¥‹à¤Ÿ: à¤¯à¤¹ à¤¡à¥‡à¤Ÿà¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤°à¥‚à¤ª à¤¸à¥‡ à¤¹à¤Ÿà¤¾ à¤¦à¤¿à¤¯à¤¾ à¤œà¤¾à¤à¤—à¤¾','* Catatan: Data ini akan dihapus secara permanen','* Nota: questi dati saranno eliminati in modo permanente','*æ³¨ï¼šã“ã®ãƒ‡ãƒ¼ã‚¿ã¯å®Œå…¨ã«å‰Šé™¤ã•ã‚Œã¾ã™','* ì°¸ê³  :ì´ ë°ì´í„°ëŠ” ì˜êµ¬ì ìœ¼ë¡œ ì‚­ì œë©ë‹ˆë‹¤.','* Opmerking: deze gegevens worden permanent verwijderd','* Nota: Estes dados serÃ£o permanentemente excluÃ­dos','* à¸«à¸¡à¸²à¸¢à¹€à¸«à¸•à¸¸: à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸™à¸µà¹‰à¸ˆà¸°à¸–à¸¹à¸à¸¥à¸šà¸­à¸¢à¹ˆà¸²à¸‡à¸–à¸²à¸§à¸£','* Not: Bu veri kalÄ±cÄ± olarak silinecek','* Ù†ÙˆÙ¹: ÛŒÛ ÚˆÛŒÙ¹Ø§ Ù…Ø³ØªÙ‚Ù„ Ø·ÙˆØ± Ù¾Ø± Ø®ØªÙ… ÛÙˆØ¬Ø§Ø¦Û’ Ú¯Ø§','*æ³¨æ„ï¼šæ­¤æ•°æ®å°†è¢«æ°¸ä¹…åˆ é™¤'),(770,'are_you_sure','Are You Sure?','à¦¤à§à¦®à¦¿ à¦•à¦¿ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤?','Ù‡Ù„ Ø£Ù†Øª ÙˆØ§Ø«Ù‚ØŸ','ÃŠtes-vous sÃ»r?','à¤•à¥à¤¯à¤¾ à¤†à¤ªà¤•à¥‹ à¤¯à¤•à¥€à¤¨ à¤¹à¥ˆ?','Apakah Anda Yakin?','Sei sicuro?','æœ¬æ°—ã§ã™ã‹ï¼Ÿ','í™•ì‹¤í•´?','Weet je het zeker?','VocÃª tem certeza?','à¸„à¸¸à¸“à¹à¸™à¹ˆà¹ƒà¸ˆà¹„à¸«à¸¡?','Emin misiniz?','Ú©ÛŒØ§ ØªÙ…ÛÛŒÚº ÛŒÙ‚ÛŒÙ† ÛÛ’ØŸ','ä½ ç¡®å®šå—ï¼Ÿ'),(771,'delete_this_information','Do You Want To Delete This Information?','à¦†à¦ªà¦¨à¦¿ à¦à¦‡ à¦¤à¦¥à§à¦¯ à¦®à§à¦›à§‡ à¦«à§‡à¦²à¦¤à§‡ à¦šà¦¾à¦¨?','Ù‡Ù„ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§ØªØŸ','Voulez-vous supprimer cette information?','à¤•à¥à¤¯à¤¾ à¤†à¤ª à¤‡à¤¸ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤•à¥‹ à¤¹à¤Ÿà¤¾à¤¨à¤¾ à¤šà¤¾à¤¹à¤¤à¥‡ à¤¹à¥ˆà¤‚?','Apakah Anda Ingin Menghapus Informasi Ini?','Vuoi eliminare queste informazioni?','ã“ã®æƒ…å ±ã‚’å‰Šé™¤ã—ã¾ã™ã‹ï¼Ÿ','ì´ ì •ë³´ë¥¼ ì‚­ì œ í•˜ì‹œê² ìŠµë‹ˆê¹Œ?','Wilt u deze informatie verwijderen?','VocÃª deseja excluir esta informaÃ§Ã£o?','à¸„à¸¸à¸“à¸•à¹‰à¸­à¸‡à¸à¸²à¸£à¸¥à¸šà¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸™à¸µà¹‰à¸«à¸£à¸·à¸­à¹„à¸¡à¹ˆ?','Bu Bilgiyi Silmek Ä°stiyor musunuz?','Ú©ÛŒØ§ Ø¢Ù¾ Ø§Ø³ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ú©Ùˆ Ø­Ø°Ù Ú©Ø±Ù†Ø§ Ú†Ø§ÛØªÛ’ ÛÛŒÚºØŸ','ä½ æƒ³åˆ é™¤è¿™äº›ä¿¡æ¯å—ï¼Ÿ'),(772,'yes_continue','Yes, Continue','à¦¹à§à¦¯à¦¾à¦, à¦šà¦¾à¦²à¦¿à¦¯à¦¼à§‡ à¦¯à¦¾à¦¨','Ù†Ø¹Ù… ØŒ ØªØ§Ø¨Ø¹','Oui, continue','à¤¹à¤¾à¤‚, à¤œà¤¾à¤°à¥€ à¤°à¤–à¥‡à¤‚','Ya, Lanjutkan','SÃ¬, continua','ã¯ã„ã€ç¶šã‘ã¾ã™','ì˜ˆ, ê³„ì†í•˜ì‹­ì‹œì˜¤.','Ja, doorgaan','Sim, continuar','à¹ƒà¸Šà¹ˆà¸”à¸³à¹€à¸™à¸´à¸™à¸à¸²à¸£à¸•à¹ˆà¸­','Evet devam et','Ø¬ÛŒ ÛØ§ÚºØŒ Ø¬Ø§Ø±ÛŒ Ø±Ú©Ú¾ÛŒÚº','æ˜¯çš„ï¼Œç»§ç»­'),(773,'deleted','Deleted','à¦®à§‹à¦›à¦¾','ØªÙ… Ø§Ù„Ø­Ø°Ù','supprimÃ©','à¤¹à¤Ÿà¤¾à¤ à¤—à¤','dihapus','cancellato','å‰Šé™¤ã—ã¾ã—ãŸ','ì‚­ì œ ëœ','verwijderde','deletado','à¸¥à¸š','silindi','Ø­Ø°Ù Ú©Ø± Ø¯ÛŒØ§ Ú¯ÛŒØ§','åˆ é™¤'),(774,'collect','Collect','à¦¸à¦‚à¦—à§à¦°à¦¹ à¦•à¦°à¦¾','ØªØ¬Ù…ÙŠØ¹','Collecte','à¤à¤•à¤¤à¥à¤°','Mengumpulkan','Raccogliere','é›†ã‚ã‚‹','ìˆ˜ì§‘','Verzamelen','Recolher','à¹€à¸à¹‡à¸š','Toplamak','Ø¬Ù…Ø¹','æœé›†'),(775,'school_setting','School Setting','à¦¸à§à¦•à§à¦² à¦¸à§‡à¦Ÿà¦¿à¦‚','Ø¥Ø¹Ø¯Ø§Ø¯ Ø§Ù„Ù…Ø¯Ø±Ø³Ø©','Milieu scolaire','à¤¸à¥à¤•à¥‚à¤² à¤•à¥€ à¤¸à¥à¤¥à¤¾à¤ªà¤¨à¤¾','Pengaturan sekolah','Impostazione della scuola','å­¦æ ¡ã®è¨­å®š','í•™êµ í™˜ê²½ ì„¤ì •','School instelling','Escola, armando','à¸ªà¸ à¸²à¸žà¹à¸§à¸”à¸¥à¹‰à¸­à¸¡à¸‚à¸­à¸‡à¹‚à¸£à¸‡à¹€à¸£à¸µà¸¢à¸™','Okul ayarÄ±','Ø³Ú©ÙˆÙ„ Ú©ÛŒ ØªØ±ØªÛŒØ¨','å­¦æ ¡çŽ¯å¢ƒ'),(776,'set','Set','à¦¸à§à¦¥à¦¾à¦ªà¦¨ à¦•à¦°à¦¾','Ø¬Ù„Ø³','ensemble','à¤¸à¥‡à¤Ÿ','set','impostato','ã‚»ãƒƒãƒˆ','ì„¸íŠ¸','reeks','conjunto','à¸Šà¸¸à¸”','set','Ø³ÛŒÙ¹ Ú©Ø±ÛŒÚº','ç»„'),(777,'quick_view','Quick View','à¦¤à¦¾à¦°à¦¾à¦¤à¦¾à¦°à¦¿ à¦¦à§‡à¦–à¦¾','Ù†Ø¸Ø±Ø© Ø³Ø±ÙŠØ¹Ø©','AperÃ§u rapide','à¤œà¤²à¥à¤¦à¥€ à¤¦à¥‡à¤–à¥‹','Lihat sekilas','Un\'occhiata','ã‚¯ã‚¤ãƒƒã‚¯ãƒ“ãƒ¥ãƒ¼','í€µë·°','Snelle kijk','Olhada rÃ¡pida','à¸¡à¸¸à¸¡à¸¡à¸­à¸‡à¸”à¹ˆà¸§à¸™','HÄ±zlÄ± GÃ¶rÃ¼nÃ¼m','ÙÙˆØ±ÛŒ Ù…Ù„Ø§Ø­Ø¸Û Ú©Ø±ÛŒÚº','å¿«é€Ÿæµè§ˆ'),(778,'due_fees_invoice','Due Fees Invoice','','','','','','','','','','','','','',''),(779,'my_application','My Application','','','','','','','','','','','','','',''),(780,'manage_application','Manage Application','','','','','','','','','','','','','',''),(781,'leave','Leave','','','','','','','','','','','','','',''),(782,'live_class_rooms','Live Class Rooms','','','','','','','','','','','','','',''),(783,'homework','Homework','','','','','','','','','','','','','',''),(784,'evaluation_report','Evaluation Report','','','','','','','','','','','','','',''),(785,'exam_term','Exam Term','','','','','','','','','','','','','',''),(786,'distribution','Distribution','','','','','','','','','','','','','',''),(787,'exam_setup','Exam Setup','','','','','','','','','','','','','',''),(788,'sms','Sms','','','','','','','','','','','','','',''),(789,'fees_type','Fees Type','','','','','','','','','','','','','',''),(790,'fees_group','Fees Group','','','','','','','','','','','','','',''),(791,'fine_setup','Fine Setup','','','','','','','','','','','','','',''),(792,'fees_reminder','Fees Reminder','','','','','','','','','','','','','',''),(793,'new_deposit','New Deposit','','','','','','','','','','','','','',''),(794,'new_expense','New Expense','','','','','','','','','','','','','',''),(795,'all_transactions','All Transactions','','','','','','','','','','','','','',''),(796,'head','Head','','','','','','','','','','','','','',''),(797,'fees_reports','Fees Reports','','','','','','','','','','','','','',''),(798,'fees_report','Fees Report','','','','','','','','','','','','','',''),(799,'receipts_report','Receipts Report','','','','','','','','','','','','','',''),(800,'due_fees_report','Due Fees Report','','','','','','','','','','','','','',''),(801,'fine_report','Fine Report','','','','','','','','','','','','','',''),(802,'financial_reports','Financial Reports','','','','','','','','','','','','','',''),(803,'statement','Statement','','','','','','','','','','','','','',''),(804,'repots','Repots','','','','','','','','','','','','','',''),(805,'expense','Expense','','','','','','','','','','','','','',''),(806,'transitions','Transitions','','','','','','','','','','','','','',''),(807,'sheet','Sheet','','','','','','','','','','','','','',''),(808,'income_vs_expense','Income Vs Expense','','','','','','','','','','','','','',''),(809,'attendance_reports','Attendance Reports','','','','','','','','','','','','','',''),(810,'examination','Examination','','','','','','','','','','','','','',''),(811,'school_settings','School Settings','','','','','','','','','','','','','',''),(812,'role_permission','Role Permission','','','','','','','','','','','','','',''),(813,'cron_job','Cron Job','','','','','','','','','','','','','',''),(814,'custom_field','Custom Field','','','','','','','','','','','','','',''),(815,'enter_valid_email','Enter Valid Email','','','','','','','','','','','','','',''),(816,'lessons','Lessons','','','','','','','','','','','','','',''),(817,'live_class','Live Class','','','','','','','','','','','','','',''),(818,'sl','Sl','','','','','','','','','','','','','',''),(819,'meeting_id','Meeting Id','','','','','','','','','','','','','',''),(820,'start_time','Start Time','','','','','','','','','','','','','',''),(821,'end_time','End Time','','','','','','','','','','','','','',''),(822,'zoom_meeting_id','Zoom Meeting Id','','','','','','','','','','','','','',''),(823,'zoom_meeting_password','Zoom Meeting Password','','','','','','','','','','','','','',''),(824,'time_slot','Time Slot','','','','','','','','','','','','','',''),(825,'send_notification_sms','Send Notification Sms','','','','','','','','','','','','','',''),(826,'host','Host','','','','','','','','','','','','','',''),(827,'school','School','','','','','','','','','','','','','',''),(828,'accounting_links','Accounting Links','','','','','','','','','','','','','',''),(829,'applicant','Applicant','','','','','','','','','','','','','',''),(830,'apply_date','Apply Date','','','','','','','','','','','','','',''),(831,'add_leave','Add Leave','','','','','','','','','','','','','',''),(832,'leave_date','Leave Date','','','','','','','','','','','','','',''),(833,'attachment','Attachment','','','','','','','','','','','','','',''),(834,'comments','Comments','','','','','','','','','','','','','',''),(835,'staff_id','Staff Id','','','','','','','','','','','','','',''),(836,'income_vs_expense_of','Income Vs Expense Of','','','','','','','','','','','','','',''),(837,'designation_name','Designation Name','','','','','','','','','','','','','',''),(838,'already_taken','This %s already exists.','','','','','','','','','','','','','',''),(839,'department_name','Department Name','','','','','','','','','','','','','',''),(840,'date_of_birth','Date Of Birth','','','','','','','','','','','','','',''),(841,'bulk_delete','Bulk Delete','','','','','','','','','','','','','',''),(842,'guardian_name','Guardian Name','','','','','','','','','','','','','',''),(843,'fees_progress','Fees Progress','','','','','','','','','','','','','',''),(844,'evaluate','Evaluate','','','','','','','','','','','','','',''),(845,'date_of_homework','Date Of Homework','','','','','','','','','','','','','',''),(846,'date_of_submission','Date Of Submission','','','','','','','','','','','','','',''),(847,'student_fees_report','Student Fees Report','','','','','','','','','','','','','',''),(848,'student_fees_reports','Student Fees Reports','','','','','','','','','','','','','',''),(849,'due_date','Due Date','','','','','','','','','','','','','',''),(850,'payment_date','Payment Date','','','','','','','','','','','','','',''),(851,'payment_via','Payment Via','','','','','','','','','','','','','',''),(852,'generate','Generate','','','','','','','','','','','','','',''),(853,'print_date','Print Date','','','','','','','','','','','','','',''),(854,'bulk_sms_and_email','Bulk Sms And Email','','','','','','','','','','','','','',''),(855,'campaign_type','Campaign Type','','','','','','','','','','','','','',''),(856,'both','Both','','','','','','','','','','','','','',''),(857,'regular','Regular','','','','','','','','','','','','','',''),(858,'Scheduled','Scheduled','','','','','','','','','','','','','',''),(859,'campaign','Campaign','','','','','','','','','','','','','',''),(860,'campaign_name','Campaign Name','','','','','','','','','','','','','',''),(861,'sms_gateway','Sms Gateway','','','','','','','','','','','','','',''),(862,'recipients_type','Recipients Type','','','','','','','','','','','','','',''),(863,'recipients_count','Recipients Count','','','','','','','','','','','','','',''),(864,'body','Body','','','','','','','','','','','','','',''),(865,'guardian_already_exist','Guardian Already Exist','','','','','','','','','','','','','',''),(866,'guardian','Guardian','','','','','','','','','','','','','',''),(867,'mother_name','Mother Name','','','','','','','','','','','','','',''),(868,'bank_details','Bank Details','','','','','','','','','','','','','',''),(869,'skipped_bank_details','Skipped Bank Details','','','','','','','','','','','','','',''),(870,'bank','Bank','','','','','','','','','','','','','',''),(871,'holder_name','Holder Name','','','','','','','','','','','','','',''),(872,'bank_branch','Bank Branch','','','','','','','','','','','','','',''),(873,'custom_field_for','Custom Field For','','','','','','','','','','','','','',''),(874,'label','Label','','','','','','','','','','','','','',''),(875,'order','Order','','','','','','','','','','','','','',''),(876,'online_admission','Online Admission','','','','','','','','','','','','','',''),(877,'field_label','Field Label','','','','','','','','','','','','','',''),(878,'field_type','Field Type','','','','','','','','','','','','','',''),(879,'default_value','Default Value','','','','','','','','','','','','','',''),(880,'checked','Checked','','','','','','','','','','','','','',''),(881,'unchecked','Unchecked','','','','','','','','','','','','','',''),(882,'roll_number','Roll Number','','','','','','','','','','','','','',''),(883,'add_rows','Add Rows','','','','','','','','','','','','','',''),(884,'salary','Salary','','','','','','','','','','','','','',''),(885,'basic','Basic','','','','','','','','','','','','','',''),(886,'allowance','Allowance','','','','','','','','','','','','','',''),(887,'deduction','Deduction','','','','','','','','','','','','','',''),(888,'net','Net','','','','','','','','','','','','','',''),(889,'activated_sms_gateway','Activated Sms Gateway','','','','','','','','','','','','','',''),(890,'account_sid','Account Sid','','','','','','','','','','','','','',''),(891,'roles','Roles','','','','','','','','','','','','','',''),(892,'system_role','System Role','','','','','','','','','','','','','',''),(893,'permission','Permission','','','','','','','','','','','','','',''),(894,'edit_session','Edit Session','','','','','','','','','','','','','',''),(895,'transactions','Transactions','','','','','','','','','','','','','',''),(896,'default_account','Default Account','','','','','','','','','','','','','',''),(897,'deposit','Deposit','','','','','','','','','','','','','',''),(898,'acccount','Acccount','','','','','','','','','','','','','',''),(899,'role_permission_for','Role Permission For','','','','','','','','','','','','','',''),(900,'feature','Feature','','','','','','','','','','','','','',''),(901,'access_denied','Access Denied','','','','','','','','','','','','','',''),(902,'time_start','Time Start','','','','','','','','','','','','','',''),(903,'time_end','Time End','','','','','','','','','','','','','',''),(904,'month_of_salary','Month Of Salary','','','','','','','','','','','','','',''),(905,'add_documents','Add Documents','','','','','','','','','','','','','',''),(906,'document_type','Document Type','','','','','','','','','','','','','',''),(907,'document','Document','','','','','','','','','','','','','',''),(908,'document_title','Document Title','','','','','','','','','','','','','',''),(909,'document_category','Document Category','','','','','','','','','','','','','',''),(910,'exam_result','Exam Result','','','','','','','','','','','','','',''),(911,'my_annual_fee_summary','My Annual Fee Summary','','','','','','','','','','','','','',''),(912,'book_manage','Book Manage','','','','','','','','','','','','','',''),(913,'add_leave_category','Add Leave Category','','','','','','','','','','','','','',''),(914,'edit_leave_category','Edit Leave Category','','','','','','','','','','','','','',''),(915,'staff_role','Staff Role','','','','','','','','','','','','','',''),(916,'edit_assign','Edit Assign','','','','','','','','','','','','','',''),(917,'view_report','View Report','','','','','','','','','','','','','',''),(918,'rank_out_of_5','Rank Out Of 5','','','','','','','','','','','','','',''),(919,'hall_no','Hall No','','','','','','','','','','','','','',''),(920,'no_of_seats','No Of Seats','','','','','','','','','','','','','',''),(921,'mark_distribution','Mark Distribution','','','','','','','','','','','','','',''),(922,'exam_type','Exam Type','','','','','','','','','','','','','',''),(923,'marks_and_grade','Marks And Grade','','','','','','','','','','','','','',''),(924,'min_percentage','Min Percentage','','','','','','','','','','','','','',''),(925,'max_percentage','Max Percentage','','','','','','','','','','','','','',''),(926,'cost_per_bed','Cost Per Bed','','','','','','','','','','','','','',''),(927,'add_category','Add Category','','','','','','','','','','','','','',''),(928,'category_for','Category For','','','','','','','','','','','','','',''),(929,'start_place','Start Place','','','','','','','','','','','','','',''),(930,'stop_place','Stop Place','','','','','','','','','','','','','',''),(931,'vehicle','Vehicle','','','','','','','','','','','','','',''),(932,'select_multiple_vehicle','Select Multiple Vehicle','','','','','','','','','','','','','',''),(933,'book_details','Book Details','','','','','','','','','','','','','',''),(934,'issued_by','Issued By','','','','','','','','','','','','','',''),(935,'return_by','Return By','','','','','','','','','','','','','',''),(936,'group','Group','','','','','','','','','','','','','',''),(937,'individual','Individual','','','','','','','','','','','','','',''),(938,'recipients','Recipients','','','','','','','','','','','','','',''),(939,'group_name','Group Name','','','','','','','','','','','','','',''),(940,'fee_code','Fee Code','','','','','','','','','','','','','',''),(941,'fine_type','Fine Type','','','','','','','','','','','','','',''),(942,'fine_value','Fine Value','','','','','','','','','','','','','',''),(943,'late_fee_frequency','Late Fee Frequency','','','','','','','','','','','','','',''),(944,'fixed_amount','Fixed Amount','','','','','','','','','','','','','',''),(945,'fixed','Fixed','','','','','','','','','','','','','',''),(946,'daily','Daily','','','','','','','','','','','','','',''),(947,'weekly','Weekly','','','','','','','','','','','','','',''),(948,'monthly','Monthly','','','','','','','','','','','','','',''),(949,'annually','Annually','','','','','','','','','','','','','',''),(950,'first_select_the_group','First Select The Group','','','','','','','','','','','','','',''),(951,'percentage','Percentage','','','','','','','','','','','','','',''),(952,'value','Value','','','','','','','','','','','','','',''),(953,'fee_group','Fee Group','','','','','','','','','','','','','',''),(954,'due_invoice','Due Invoice','','','','','','','','','','','','','',''),(955,'reminder','Reminder','','','','','','','','','','','','','',''),(956,'frequency','Frequency','','','','','','','','','','','','','',''),(957,'notify','Notify','','','','','','','','','','','','','',''),(958,'before','Before','','','','','','','','','','','','','',''),(959,'after','After','','','','','','','','','','','','','',''),(960,'number','Number','','','','','','','','','','','','','',''),(961,'ref_no','Ref No','','','','','','','','','','','','','',''),(962,'pay_via','Pay Via','','','','','','','','','','','','','',''),(963,'ref','Ref','','','','','','','','','','','','','',''),(964,'dr','Dr','','','','','','','','','','','','','',''),(965,'cr','Cr','','','','','','','','','','','','','',''),(966,'edit_book','Edit Book','','','','','','','','','','','','','',''),(967,'leaves','Leaves','','','','','','','','','','','','','',''),(968,'leave_request','Leave Request','','','','','','','','','','','','','',''),(969,'this_file_type_is_not_allowed','This File Type Is Not Allowed','','','','','','','','','','','','','',''),(970,'error_reading_the_file','Error Reading The File','','','','','','','','','','','','','',''),(971,'staff','Staff','','','','','','','','','','','','','',''),(972,'waiting','Waiting','','','','','','','','','','','','','',''),(973,'live','Live','','','','','','','','','','','','','',''),(974,'by','By','','','','','','','','','','','','','',''),(975,'host_live_class','Host Live Class','','','','','','','','','','','','','',''),(976,'join_live_class','Join Live Class','','','','','','','','','','','','','',''),(977,'system_logo','System Logo','','','','','','','','','','','','','',''),(978,'text_logo','Text Logo','','','','','','','','','','','','','',''),(979,'printing_logo','Printing Logo','','','','','','','','','','','','','',''),(980,'expired','Expired','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_application`
--

DROP TABLE IF EXISTS `leave_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `category_id` int(2) NOT NULL,
  `reason` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `leave_days` varchar(20) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1=pending,2=accepted 3=rejected',
  `apply_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved_by` int(11) NOT NULL,
  `orig_file_name` varchar(255) NOT NULL,
  `enc_file_name` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_application`
--

LOCK TABLES `leave_application` WRITE;
/*!40000 ALTER TABLE `leave_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_category`
--

DROP TABLE IF EXISTS `leave_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_category` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  `days` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_category`
--

LOCK TABLES `leave_category` WRITE;
/*!40000 ALTER TABLE `leave_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_class`
--

DROP TABLE IF EXISTS `live_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `meeting_id` varchar(255) NOT NULL,
  `meeting_password` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` varchar(11) NOT NULL,
  `remarks` text NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_class`
--

LOCK TABLES `live_class` WRITE;
/*!40000 ALTER TABLE `live_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_class_config`
--

DROP TABLE IF EXISTS `live_class_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live_class_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoom_api_key` varchar(255) DEFAULT NULL,
  `zoom_api_secret` varchar(255) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_class_config`
--

LOCK TABLES `live_class_config` WRITE;
/*!40000 ALTER TABLE `live_class_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_class_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_credential`
--

DROP TABLE IF EXISTS `login_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_credential` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` tinyint(2) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1(active) 0(deactivate)',
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_credential`
--

LOCK TABLES `login_credential` WRITE;
/*!40000 ALTER TABLE `login_credential` DISABLE KEYS */;
INSERT INTO `login_credential` VALUES (1,1,'admin@admin.com','$2y$10$A2Q8iSy0IXmkzayG31JXpu4D1b3mKy3tHQ.VOAf2mGrtESV8GI.mK',1,1,NULL,'2020-05-31 13:06:26','2020-05-31 13:06:26');
/*!40000 ALTER TABLE `login_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark` text,
  `absent` varchar(4) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `subject` varchar(255) NOT NULL,
  `file_name` text,
  `enc_name` text,
  `trash_sent` tinyint(1) NOT NULL,
  `trash_inbox` int(11) NOT NULL,
  `fav_inbox` tinyint(1) NOT NULL,
  `fav_sent` tinyint(1) NOT NULL,
  `reciever` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 unread 1 read',
  `reply_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 unread 1 read',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_reply`
--

DROP TABLE IF EXISTS `message_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `file_name` text NOT NULL,
  `enc_name` text NOT NULL,
  `identity` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_reply`
--

LOCK TABLES `message_reply` WRITE;
/*!40000 ALTER TABLE `message_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `occupation` varchar(100) NOT NULL,
  `income` varchar(100) NOT NULL,
  `education` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileno` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0(active) 1(deactivate)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_config`
--

DROP TABLE IF EXISTS `payment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_username` varchar(255) DEFAULT NULL,
  `paypal_password` varchar(255) DEFAULT NULL,
  `paypal_signature` varchar(255) DEFAULT NULL,
  `paypal_email` varchar(255) DEFAULT NULL,
  `paypal_sandbox` tinyint(4) DEFAULT NULL,
  `paypal_status` tinyint(4) DEFAULT NULL,
  `stripe_secret` varchar(255) DEFAULT NULL,
  `stripe_demo` varchar(255) DEFAULT NULL,
  `stripe_status` tinyint(4) DEFAULT NULL,
  `payumoney_key` varchar(255) DEFAULT NULL,
  `payumoney_salt` varchar(255) DEFAULT NULL,
  `payumoney_demo` tinyint(4) DEFAULT NULL,
  `payumoney_status` tinyint(4) DEFAULT NULL,
  `paystack_secret_key` varchar(255) NOT NULL,
  `paystack_status` tinyint(4) NOT NULL,
  `razorpay_key_id` varchar(255) NOT NULL,
  `razorpay_key_secret` varchar(255) NOT NULL,
  `razorpay_demo` tinyint(4) NOT NULL,
  `razorpay_status` tinyint(4) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_config`
--

LOCK TABLES `payment_config` WRITE;
/*!40000 ALTER TABLE `payment_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_salary_stipend`
--

DROP TABLE IF EXISTS `payment_salary_stipend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_salary_stipend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_salary_stipend`
--

LOCK TABLES `payment_salary_stipend` WRITE;
/*!40000 ALTER TABLE `payment_salary_stipend` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_salary_stipend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_types`
--

DROP TABLE IF EXISTS `payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT '0',
  `timestamp` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_types`
--

LOCK TABLES `payment_types` WRITE;
/*!40000 ALTER TABLE `payment_types` DISABLE KEYS */;
INSERT INTO `payment_types` VALUES (1,'Cash',0,'2019-07-27 18:12:21'),(2,'Card',0,'2019-07-27 18:12:31'),(3,'Cheque',0,'2019-12-21 10:07:59'),(4,'Bank Transfer',0,'2019-12-21 10:08:36'),(5,'Other',0,'2019-12-21 10:08:45'),(6,'Paypal',0,'2019-12-21 10:08:45'),(7,'Stripe',0,'2019-12-21 10:08:45'),(8,'PayUmoney',0,'2019-12-21 10:08:45'),(9,'Paystack',0,'2019-12-21 10:08:45'),(10,'Razorpay',0,'2019-12-21 10:08:45');
/*!40000 ALTER TABLE `payment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payslip`
--

DROP TABLE IF EXISTS `payslip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payslip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `month` varchar(200) DEFAULT NULL,
  `year` varchar(20) NOT NULL,
  `basic_salary` decimal(18,2) NOT NULL,
  `total_allowance` decimal(18,2) NOT NULL,
  `total_deduction` decimal(18,2) NOT NULL,
  `net_salary` decimal(18,2) NOT NULL,
  `bill_no` varchar(25) NOT NULL,
  `remarks` text NOT NULL,
  `pay_via` tinyint(1) NOT NULL,
  `hash` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paid_by` varchar(200) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payslip`
--

LOCK TABLES `payslip` WRITE;
/*!40000 ALTER TABLE `payslip` DISABLE KEYS */;
/*!40000 ALTER TABLE `payslip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payslip_details`
--

DROP TABLE IF EXISTS `payslip_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payslip_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payslip_details`
--

LOCK TABLES `payslip_details` WRITE;
/*!40000 ALTER TABLE `payslip_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `payslip_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `prefix` varchar(100) NOT NULL,
  `show_view` tinyint(1) DEFAULT '1',
  `show_add` tinyint(1) DEFAULT '1',
  `show_edit` tinyint(1) DEFAULT '1',
  `show_delete` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,2,'Student','student',1,1,1,1,'2020-01-22 17:45:47'),(2,2,'Multiple Import','multiple_import',0,1,0,0,'2020-01-22 17:45:47'),(3,2,'Student Category','student_category',1,1,1,1,'2020-01-22 17:45:47'),(4,2,'Student Id Card','student_id_card',1,0,0,0,'2020-01-22 17:45:47'),(5,2,'Disable Authentication','student_disable_authentication',1,1,0,0,'2020-01-22 17:45:47'),(6,4,'Employee','employee',1,1,1,1,'2020-01-22 17:55:19'),(7,3,'Parent','parent',1,1,1,1,'2020-01-22 19:24:05'),(8,3,'Disable Authentication','parent_disable_authentication',1,1,0,0,'2020-01-22 20:22:21'),(9,4,'Department','department',1,1,1,1,'2020-01-22 23:41:39'),(10,4,'Designation','designation',1,1,1,1,'2020-01-22 23:41:39'),(11,4,'Disable Authentication','employee_disable_authentication',1,1,0,0,'2020-01-22 23:41:39'),(12,5,'Salary Template','salary_template',1,1,1,1,'2020-01-23 11:13:57'),(13,5,'Salary Assign','salary_assign',1,1,0,0,'2020-01-23 11:14:05'),(14,5,'Salary Payment','salary_payment',1,1,0,0,'2020-01-24 12:45:40'),(15,5,'Salary Summary Report','salary_summary_report',1,0,0,0,'2020-03-14 23:09:17'),(16,5,'Advance Salary','advance_salary',1,1,1,1,'2020-01-29 00:23:39'),(17,5,'Advance Salary Manage','advance_salary_manage',1,1,1,1,'2020-01-25 10:57:12'),(18,5,'Advance Salary Request','advance_salary_request',1,1,0,1,'2020-01-28 23:49:58'),(19,5,'Leave Category','leave_category',1,1,1,1,'2020-01-29 08:46:23'),(20,5,'Leave Request','leave_request',1,1,1,1,'2020-01-30 18:06:33'),(21,5,'Leave Manage','leave_manage',1,1,1,1,'2020-01-29 13:27:15'),(22,5,'Award','award',1,1,1,1,'2020-02-01 00:49:11'),(23,6,'Classes','classes',1,1,1,1,'2020-02-02 00:10:00'),(24,6,'Section','section',1,1,1,1,'2020-02-02 03:06:44'),(25,6,'Assign Class Teacher','assign_class_teacher',1,1,1,1,'2020-02-02 13:09:22'),(26,6,'Subject','subject',1,1,1,1,'2020-02-03 10:32:39'),(27,6,'Subject Class Assign ','subject_class_assign',1,1,1,1,'2020-02-03 23:43:19'),(28,6,'Subject Teacher Assign','subject_teacher_assign',1,1,0,1,'2020-02-04 01:05:11'),(29,6,'Class Timetable','class_timetable',1,1,1,1,'2020-02-04 11:50:37'),(30,2,'Student Promotion','student_promotion',1,1,0,0,'2020-02-06 00:20:30'),(31,8,'Attachments','attachments',1,1,1,1,'2020-02-06 23:59:43'),(32,7,'Homework','homework',1,1,1,1,'2020-02-07 11:40:08'),(33,8,'Attachment Type','attachment_type',1,1,1,1,'2020-02-07 13:16:28'),(34,9,'Exam','exam',1,1,1,1,'2020-02-07 15:59:29'),(35,9,'Exam Term','exam_term',1,1,1,1,'2020-02-07 18:09:28'),(36,9,'Exam Hall','exam_hall',1,1,1,1,'2020-02-07 20:31:04'),(37,9,'Exam Timetable','exam_timetable',1,1,0,1,'2020-02-08 23:04:31'),(38,9,'Exam Mark','exam_mark',1,1,1,1,'2020-02-10 18:53:41'),(39,9,'Exam Grade','exam_grade',1,1,1,1,'2020-02-10 23:29:16'),(40,10,'Hostel','hostel',1,1,1,1,'2020-02-11 10:41:36'),(41,10,'Hostel Category','hostel_category',1,1,1,1,'2020-02-11 13:52:31'),(42,10,'Hostel Room','hostel_room',1,1,1,1,'2020-02-11 17:50:09'),(43,10,'Hostel Allocation','hostel_allocation',1,0,0,1,'2020-02-11 19:06:15'),(44,11,'Transport Route','transport_route',1,1,1,1,'2020-02-12 11:26:19'),(45,11,'Transport Vehicle','transport_vehicle',1,1,1,1,'2020-02-12 11:57:30'),(46,11,'Transport Stoppage','transport_stoppage',1,1,1,1,'2020-02-12 12:49:20'),(47,11,'Transport Assign','transport_assign',1,1,1,1,'2020-02-12 15:55:21'),(48,11,'Transport Allocation','transport_allocation',1,0,0,1,'2020-02-13 01:33:05'),(49,12,'Student Attendance','student_attendance',0,1,0,0,'2020-02-13 11:25:53'),(50,12,'Employee Attendance','employee_attendance',0,1,0,0,'2020-02-13 16:04:16'),(51,12,'Exam Attendance','exam_attendance',0,1,0,0,'2020-02-13 17:08:14'),(52,12,'Student Attendance Report','student_attendance_report',1,0,0,0,'2020-02-14 01:20:56'),(53,12,'Employee Attendance Report','employee_attendance_report',1,0,0,0,'2020-02-14 12:08:53'),(54,12,'Exam Attendance Report','exam_attendance_report',1,0,0,0,'2020-02-14 12:21:40'),(55,13,'Book','book',1,1,1,1,'2020-02-14 12:40:42'),(56,13,'Book Category','book_category',1,1,1,1,'2020-02-15 10:11:41'),(57,13,'Book Manage','book_manage',1,1,0,1,'2020-02-15 17:13:24'),(58,13,'Book Request','book_request',1,1,0,1,'2020-02-17 12:45:19'),(59,14,'Event','event',1,1,1,1,'2020-02-18 00:02:15'),(60,14,'Event Type','event_type',1,1,1,1,'2020-02-18 10:40:33'),(61,15,'Sendsmsmail','sendsmsmail',1,1,0,1,'2020-02-22 13:19:57'),(62,15,'Sendsmsmail Template','sendsmsmail_template',1,1,1,1,'2020-02-22 16:14:57'),(63,17,'Account','account',1,1,1,1,'2020-02-25 15:34:43'),(64,17,'Deposit','deposit',1,1,1,1,'2020-02-25 18:56:11'),(65,17,'Expense','expense',1,1,1,1,'2020-02-26 12:35:57'),(66,17,'All Transactions','all_transactions',1,0,0,0,'2020-02-26 19:35:05'),(67,17,'Voucher Head','voucher_head',1,1,1,1,'2020-02-25 16:50:56'),(68,17,'Accounting Reports','accounting_reports',1,1,1,1,'2020-02-25 19:36:24'),(69,16,'Fees Type','fees_type',1,1,1,1,'2020-02-27 16:11:03'),(70,16,'Fees Group','fees_group',1,1,1,1,'2020-02-26 11:49:09'),(71,16,'Fees Fine Setup','fees_fine_setup',1,1,1,1,'2020-03-05 08:59:27'),(72,16,'Fees Allocation','fees_allocation',1,1,1,1,'2020-03-01 19:47:43'),(73,16,'Collect Fees','collect_fees',0,1,0,0,'2020-03-15 10:23:58'),(74,16,'Fees Reminder','fees_reminder',1,1,1,1,'2020-03-15 10:29:58'),(75,16,'Due Invoice','due_invoice',1,0,0,0,'2020-03-15 10:33:36'),(76,16,'Invoice','invoice',1,0,0,1,'2020-03-15 10:38:06'),(77,9,'Mark Distribution','mark_distribution',1,1,1,1,'2020-03-19 19:02:54'),(78,9,'Report Card','report_card',1,0,0,0,'2020-03-20 18:20:28'),(79,9,'Tabulation Sheet','tabulation_sheet',1,0,0,0,'2020-03-21 13:12:38'),(80,15,'Sendsmsmail Reports','sendsmsmail_reports',1,0,0,0,'2020-03-21 23:02:02'),(81,18,'Global Settings','global_settings',1,0,1,0,'2020-03-22 11:05:41'),(82,18,'Payment Settings','payment_settings',1,1,0,0,'2020-03-22 11:08:57'),(83,18,'Sms Settings','sms_settings',1,1,1,1,'2020-03-22 11:08:57'),(84,18,'Email Settings','email_settings',1,1,1,1,'2020-03-22 11:10:39'),(85,18,'Translations','translations',1,1,1,1,'2020-03-22 11:18:33'),(86,18,'Backup','backup',1,1,1,1,'2020-03-22 13:09:33'),(87,18,'Backup Restore','backup_restore',0,1,0,0,'2020-03-22 13:09:34'),(88,7,'Homework Evaluate','homework_evaluate',1,1,0,0,'2020-03-28 10:20:29'),(89,7,'Evaluation Report','evaluation_report',1,0,0,0,'2020-03-28 15:56:04'),(90,18,'School Settings','school_settings',1,0,1,0,'2020-03-30 23:36:37'),(91,1,'Monthly Income Vs Expense Pie Chart','monthly_income_vs_expense_chart',1,0,0,0,'2020-03-31 12:15:31'),(92,1,'Annual Student Fees Summary Chart','annual_student_fees_summary_chart',1,0,0,0,'2020-03-31 12:15:31'),(93,1,'Employee Count Widget','employee_count_widget',1,0,0,0,'2020-03-31 12:31:56'),(94,1,'Student Count Widget','student_count_widget',1,0,0,0,'2020-03-31 12:31:56'),(95,1,'Parent Count Widget','parent_count_widget',1,0,0,0,'2020-03-31 12:31:56'),(96,1,'Teacher Count Widget','teacher_count_widget',1,0,0,0,'2020-03-31 12:31:56'),(97,1,'Student Quantity Pie Chart','student_quantity_pie_chart',1,0,0,0,'2020-03-31 13:14:07'),(98,1,'Weekend Attendance Inspection Chart','weekend_attendance_inspection_chart',1,0,0,0,'2020-03-31 13:14:07'),(99,1,'Admission Count Widget','admission_count_widget',1,0,0,0,'2020-03-31 13:22:05'),(100,1,'Voucher Count Widget','voucher_count_widget',1,0,0,0,'2020-03-31 13:22:05'),(101,1,'Transport Count Widget','transport_count_widget',1,0,0,0,'2020-03-31 13:22:05'),(102,1,'Hostel Count Widget','hostel_count_widget',1,0,0,0,'2020-03-31 13:22:05'),(103,18,'Accounting Links','accounting_links',1,0,1,0,'2020-03-31 15:46:30'),(104,16,'Fees Reports','fees_reports',1,0,0,0,'2020-04-01 21:52:19'),(105,18,'Cron Job','cron_job',1,0,1,0,'2020-03-31 15:46:30'),(106,18,'Custom Field','custom_field',1,1,1,1,'2020-03-31 15:46:30'),(107,5,'Leave Reports','leave_reports',1,0,0,0,'2020-03-31 15:46:30'),(108,18,'Live Class Config','live_class_config',1,0,1,0,'2020-03-31 15:46:30'),(109,19,'Live Class','live_class',1,1,1,1,'2020-03-31 15:46:30');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_modules`
--

DROP TABLE IF EXISTS `permission_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `prefix` varchar(50) NOT NULL,
  `system` tinyint(1) NOT NULL,
  `sorted` tinyint(10) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_modules`
--

LOCK TABLES `permission_modules` WRITE;
/*!40000 ALTER TABLE `permission_modules` DISABLE KEYS */;
INSERT INTO `permission_modules` VALUES (1,'Dashboard','dashboard',1,1,'2019-05-27 04:23:00'),(2,'Student','student',1,1,'2019-05-27 04:23:00'),(3,'Parents','parents',1,2,'2019-05-27 04:23:00'),(4,'Employee','employee',1,3,'2019-05-27 04:23:00'),(5,'Human Resource','human_resource',1,4,'2019-05-27 04:23:00'),(6,'Academic','academic',1,5,'2019-05-27 04:23:00'),(7,'Homework','homework',1,7,'2019-05-27 04:23:00'),(8,'Attachments Book','attachments_book',1,8,'2019-05-27 04:23:00'),(9,'Exam Master','exam_master',1,9,'2019-05-27 04:23:00'),(10,'Hostel','hostel',1,10,'2019-05-27 04:23:00'),(11,'Transport','transport',1,11,'2019-05-27 04:23:00'),(12,'Attendance','attendance',1,12,'2019-05-27 04:23:00'),(13,'Library','library',1,13,'2019-05-27 04:23:00'),(14,'Events','events',1,14,'2019-05-27 04:23:00'),(15,'Bulk Sms And Email','bulk_sms_and_email',1,15,'2019-05-27 04:23:00'),(16,'Student Accounting','student_accounting',1,16,'2019-05-27 04:23:00'),(17,'Office Accounting','office_accounting',1,17,'2019-05-27 04:23:00'),(18,'Settings','settings',1,18,'2019-05-27 04:23:00'),(19,'Live Class','live_class',1,6,'2019-05-27 04:23:00');
/*!40000 ALTER TABLE `permission_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reset_password`
--

DROP TABLE IF EXISTS `reset_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reset_password` (
  `key` longtext NOT NULL,
  `username` varchar(100) NOT NULL,
  `login_credential_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reset_password`
--

LOCK TABLES `reset_password` WRITE;
/*!40000 ALTER TABLE `reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `reset_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rm_sessions`
--

DROP TABLE IF EXISTS `rm_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rm_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rm_sessions`
--

LOCK TABLES `rm_sessions` WRITE;
/*!40000 ALTER TABLE `rm_sessions` DISABLE KEYS */;
INSERT INTO `rm_sessions` VALUES ('el3ibj2rga989smvnfhmrtj4t2pm6av8','127.0.0.1',1590930667,_binary '__ci_last_regenerate|i:1590930381;');
/*!40000 ALTER TABLE `rm_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `is_system` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin','superadmin','1'),(2,'Admin','admin','1'),(3,'Teacher','teacher','1'),(4,'Accountant','accountant','1'),(5,'Librarian','librarian','1'),(6,'Parent','parent','1'),(7,'Student','student','1');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_template`
--

DROP TABLE IF EXISTS `salary_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `basic_salary` decimal(18,2) NOT NULL,
  `overtime_salary` varchar(100) NOT NULL DEFAULT '0',
  `branch_id` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_template`
--

LOCK TABLES `salary_template` WRITE;
/*!40000 ALTER TABLE `salary_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_template_details`
--

DROP TABLE IF EXISTS `salary_template_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_template_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_template_id` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_template_details`
--

LOCK TABLES `salary_template_details` WRITE;
/*!40000 ALTER TABLE `salary_template_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_template_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schoolyear`
--

DROP TABLE IF EXISTS `schoolyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schoolyear` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_year` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schoolyear`
--

LOCK TABLES `schoolyear` WRITE;
/*!40000 ALTER TABLE `schoolyear` DISABLE KEYS */;
INSERT INTO `schoolyear` VALUES (1,'2019-2020',1,'2020-02-26 01:35:41','2020-02-26 16:54:49'),(3,'2020-2021',1,'2020-02-26 01:35:41','2020-02-26 01:35:41'),(4,'2021-2022',1,'2020-02-26 01:35:41','2020-02-26 01:35:41'),(5,'2022-2023',1,'2020-02-26 01:35:41','2020-02-26 01:35:41'),(6,'2023-2024',1,'2020-02-26 01:35:41','2020-02-26 01:35:41'),(7,'2024-2025',1,'2020-02-26 01:35:41','2020-02-26 01:20:04'),(9,'2025-2026',1,'2020-02-26 13:00:10','2020-02-26 13:00:24');
/*!40000 ALTER TABLE `schoolyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `capacity` varchar(20) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_allocation`
--

DROP TABLE IF EXISTS `sections_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_allocation`
--

LOCK TABLES `sections_allocation` WRITE;
/*!40000 ALTER TABLE `sections_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_api`
--

DROP TABLE IF EXISTS `sms_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_api`
--

LOCK TABLES `sms_api` WRITE;
/*!40000 ALTER TABLE `sms_api` DISABLE KEYS */;
INSERT INTO `sms_api` VALUES (1,'twilio'),(2,'clickatell'),(3,'msg91'),(4,'bulksms'),(5,'textlocal');
/*!40000 ALTER TABLE `sms_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_credential`
--

DROP TABLE IF EXISTS `sms_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_credential` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sms_api_id` int(11) NOT NULL,
  `field_one` varchar(300) NOT NULL,
  `field_two` varchar(300) NOT NULL,
  `field_three` varchar(300) NOT NULL,
  `field_four` varchar(300) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_credential`
--

LOCK TABLES `sms_credential` WRITE;
/*!40000 ALTER TABLE `sms_credential` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_template`
--

DROP TABLE IF EXISTS `sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tags` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_template`
--

LOCK TABLES `sms_template` WRITE;
/*!40000 ALTER TABLE `sms_template` DISABLE KEYS */;
INSERT INTO `sms_template` VALUES (1,'admission','{name}, {class}, {section}, {admission_date}, {roll}, {register_no}'),(2,'fee_collection','{name}, {class}, {section}, {admission_date}, {roll}, {register_no}, {paid_amount}, {paid_date} '),(3,'attendance','{name}, {class}, {section}, {admission_date}, {roll}, {register_no}'),(4,'exam_attendance','{name}, {class}, {section}, {admission_date}, {roll}, {register_no}, {exam_name}, {term_name}, {subject}'),(5,'exam_results','{name}, {class}, {section}, {admission_date}, {roll}, {register_no}, {exam_name}, {term_name}, {subject}, {marks}'),(6,'homework','{name}, {class}, {section}, {admission_date}, {roll}, {register_no}, {subject}, {date_of_homework}, {date_of_submission}'),(7,'live_class','{name}, {class}, {section}, {admission_date}, {roll}, {register_no}, {date_of_live_class}, {start_time}, {end_time}, {host_by}');
/*!40000 ALTER TABLE `sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_template_details`
--

DROP TABLE IF EXISTS `sms_template_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_template_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `notify_student` tinyint(3) NOT NULL DEFAULT '1',
  `notify_parent` tinyint(3) NOT NULL DEFAULT '1',
  `template_body` longtext NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_template_details`
--

LOCK TABLES `sms_template_details` WRITE;
/*!40000 ALTER TABLE `sms_template_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_template_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` int(11) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `designation` int(11) NOT NULL,
  `joining_date` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `mobileno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `salary_template_id` int(11) DEFAULT '0',
  `branch_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'3597c7f','admin',0,'',0,'2020-05-31','','','','','','','','admin@admin.com',0,NULL,NULL,NULL,NULL,NULL,'2020-05-31 13:06:26','2020-05-31 13:06:26','');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_attendance`
--

DROP TABLE IF EXISTS `staff_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `status` varchar(11) DEFAULT NULL COMMENT 'P=Present, A=Absent, H=Holiday, L=Late',
  `remark` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_attendance`
--

LOCK TABLES `staff_attendance` WRITE;
/*!40000 ALTER TABLE `staff_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_bank_account`
--

DROP TABLE IF EXISTS `staff_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_bank_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `holder_name` varchar(255) NOT NULL,
  `bank_branch` varchar(255) NOT NULL,
  `bank_address` varchar(255) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_bank_account`
--

LOCK TABLES `staff_bank_account` WRITE;
/*!40000 ALTER TABLE `staff_bank_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_department`
--

DROP TABLE IF EXISTS `staff_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_department`
--

LOCK TABLES `staff_department` WRITE;
/*!40000 ALTER TABLE `staff_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_designation`
--

DROP TABLE IF EXISTS `staff_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_designation`
--

LOCK TABLES `staff_designation` WRITE;
/*!40000 ALTER TABLE `staff_designation` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_documents`
--

DROP TABLE IF EXISTS `staff_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` varchar(20) NOT NULL,
  `remarks` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `enc_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_documents`
--

LOCK TABLES `staff_documents` WRITE;
/*!40000 ALTER TABLE `staff_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_privileges`
--

DROP TABLE IF EXISTS `staff_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `is_add` tinyint(1) NOT NULL,
  `is_edit` tinyint(1) NOT NULL,
  `is_view` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=534 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_privileges`
--

LOCK TABLES `staff_privileges` WRITE;
/*!40000 ALTER TABLE `staff_privileges` DISABLE KEYS */;
INSERT INTO `staff_privileges` VALUES (1,3,1,1,1,1,1),(2,3,2,0,0,0,0),(3,3,3,1,1,1,1),(4,3,4,0,0,1,0),(5,3,5,0,0,0,0),(6,3,30,0,0,0,0),(7,3,7,0,0,0,0),(8,3,8,0,0,0,0),(9,3,6,0,0,1,0),(10,3,9,0,0,0,0),(11,3,10,0,0,0,0),(12,3,11,0,0,0,0),(13,3,12,0,0,0,0),(14,3,13,0,0,0,0),(15,3,14,0,0,1,0),(16,3,15,0,0,1,0),(17,3,16,0,0,0,0),(18,3,17,0,0,0,0),(20,3,19,0,0,0,0),(21,3,20,1,1,1,1),(22,3,21,0,0,0,0),(23,3,22,0,0,1,0),(24,3,23,0,0,1,0),(25,3,24,0,0,1,0),(26,3,25,0,0,1,0),(27,3,26,0,0,1,0),(28,3,27,0,0,1,0),(29,3,28,0,0,1,0),(30,3,29,0,0,1,0),(31,3,32,1,1,1,1),(32,3,31,1,1,1,1),(33,3,33,1,1,1,1),(34,3,34,1,1,1,1),(35,3,35,1,1,1,1),(36,3,36,1,1,1,1),(37,3,37,0,0,0,0),(38,3,38,1,1,1,1),(39,3,39,1,1,1,1),(40,3,77,1,1,1,1),(41,3,78,0,0,1,0),(42,3,79,0,0,0,0),(43,3,40,0,0,0,0),(44,3,41,0,0,0,0),(45,3,42,0,0,0,0),(46,3,43,0,0,0,0),(47,3,44,0,0,0,0),(48,3,45,0,0,0,0),(49,3,46,0,0,0,0),(50,3,47,0,0,0,0),(51,3,48,0,0,0,0),(52,3,49,1,0,0,0),(53,3,50,0,0,0,0),(54,3,51,0,0,0,0),(55,3,52,0,0,0,0),(56,3,53,0,0,0,0),(57,3,54,0,0,0,0),(58,3,55,0,0,1,0),(59,3,56,0,0,0,0),(60,3,57,0,0,0,0),(61,3,58,1,0,1,1),(62,3,59,0,0,1,0),(63,3,60,0,0,0,0),(64,3,61,0,0,0,0),(65,3,62,0,0,0,0),(66,3,80,0,0,0,0),(67,3,69,0,0,0,0),(68,3,70,0,0,0,0),(69,3,71,0,0,0,0),(70,3,72,0,0,0,0),(71,3,73,0,0,0,0),(72,3,74,0,0,0,0),(73,3,75,0,0,0,0),(74,3,76,0,0,0,0),(75,3,63,0,0,0,0),(76,3,64,0,0,0,0),(77,3,65,0,0,0,0),(78,3,66,0,0,0,0),(79,3,67,0,0,0,0),(80,3,68,0,0,0,0),(81,3,81,0,0,0,0),(82,3,82,0,0,0,0),(83,3,83,0,0,0,0),(84,3,84,0,0,0,0),(85,3,85,0,0,0,0),(86,3,86,0,0,0,0),(87,3,87,0,0,0,0),(88,2,1,1,1,1,1),(89,2,2,1,0,0,0),(90,2,3,1,1,1,1),(91,2,4,0,0,1,0),(92,2,5,1,0,1,0),(93,2,30,1,0,1,0),(94,2,7,1,1,1,1),(95,2,8,1,0,1,0),(96,2,6,1,1,1,1),(97,2,9,1,1,1,1),(98,2,10,1,1,1,1),(99,2,11,1,0,1,0),(100,2,12,1,1,1,1),(101,2,13,1,0,1,0),(102,2,14,1,0,1,0),(103,2,15,0,0,1,0),(104,2,16,1,1,1,1),(105,2,17,1,1,1,1),(107,2,19,1,1,1,1),(108,2,20,1,1,1,1),(109,2,21,1,1,1,1),(110,2,22,1,1,1,1),(111,2,23,1,1,1,1),(112,2,24,1,1,1,1),(113,2,25,1,1,1,1),(114,2,26,1,1,1,1),(115,2,27,1,1,1,1),(116,2,28,1,0,1,1),(117,2,29,1,1,1,1),(118,2,32,1,1,1,1),(119,2,31,1,1,1,1),(120,2,33,1,1,1,1),(121,2,34,1,1,1,1),(122,2,35,1,1,1,1),(123,2,36,1,1,1,1),(124,2,37,1,0,1,1),(125,2,38,1,1,1,1),(126,2,39,1,1,1,1),(127,2,77,1,1,1,1),(128,2,78,0,0,1,0),(129,2,79,0,0,1,0),(130,2,40,1,1,1,1),(131,2,41,1,1,1,1),(132,2,42,1,1,1,1),(133,2,43,0,0,1,1),(134,2,44,1,1,1,1),(135,2,45,1,1,1,1),(136,2,46,1,1,1,1),(137,2,47,1,1,1,1),(138,2,48,0,0,1,1),(139,2,49,1,0,0,0),(140,2,50,1,0,0,0),(141,2,51,1,0,0,0),(142,2,52,0,0,1,0),(143,2,53,0,0,1,0),(144,2,54,0,0,1,0),(145,2,55,1,1,1,1),(146,2,56,1,1,1,1),(147,2,57,1,0,1,1),(148,2,58,1,0,1,1),(149,2,59,1,1,1,1),(150,2,60,1,1,1,1),(151,2,61,1,0,1,1),(152,2,62,1,1,1,1),(153,2,80,0,0,1,0),(154,2,69,1,1,1,1),(155,2,70,1,1,1,1),(156,2,71,1,1,1,1),(157,2,72,1,1,1,1),(158,2,73,1,0,0,0),(159,2,74,1,1,1,1),(160,2,75,0,0,1,0),(161,2,76,0,0,1,1),(162,2,63,1,1,1,1),(163,2,64,1,1,1,1),(164,2,65,1,1,1,1),(165,2,66,0,0,1,0),(166,2,67,1,1,1,1),(167,2,68,1,1,1,1),(168,2,81,0,0,0,0),(169,2,82,1,0,1,0),(170,2,83,1,1,1,1),(171,2,84,1,1,1,1),(172,2,85,1,1,1,1),(173,2,86,0,0,0,0),(174,2,87,0,0,0,0),(175,7,1,0,0,0,0),(176,7,2,0,0,0,0),(177,7,3,0,0,0,0),(178,7,4,0,0,0,0),(179,7,5,0,0,0,0),(180,7,30,0,0,0,0),(181,7,7,0,0,0,0),(182,7,8,0,0,0,0),(183,7,6,0,0,0,0),(184,7,9,0,0,0,0),(185,7,10,0,0,0,0),(186,7,11,0,0,0,0),(187,7,12,0,0,0,0),(188,7,13,0,0,0,0),(189,7,14,0,0,0,0),(190,7,15,0,0,0,0),(191,7,16,0,0,0,0),(192,7,17,0,0,0,0),(194,7,19,0,0,0,0),(195,7,20,0,0,0,0),(196,7,21,0,0,0,0),(197,7,22,0,0,0,0),(198,7,23,0,0,0,0),(199,7,24,0,0,0,0),(200,7,25,0,0,0,0),(201,7,26,0,0,1,0),(202,7,27,0,0,0,0),(203,7,28,0,0,0,0),(204,7,29,0,0,1,0),(205,7,32,0,0,0,0),(206,7,31,0,0,0,0),(207,7,33,0,0,0,0),(208,7,34,0,0,0,0),(209,7,35,0,0,0,0),(210,7,36,0,0,0,0),(211,7,37,0,0,0,0),(212,7,38,0,0,0,0),(213,7,39,0,0,0,0),(214,7,77,0,0,0,0),(215,7,78,0,0,0,0),(216,7,79,0,0,0,0),(217,7,40,0,0,0,0),(218,7,41,0,0,0,0),(219,7,42,0,0,0,0),(220,7,43,0,0,0,0),(221,7,44,0,0,0,0),(222,7,45,0,0,0,0),(223,7,46,0,0,0,0),(224,7,47,0,0,0,0),(225,7,48,0,0,0,0),(226,7,49,0,0,0,0),(227,7,50,0,0,0,0),(228,7,51,0,0,0,0),(229,7,52,0,0,0,0),(230,7,53,0,0,0,0),(231,7,54,0,0,0,0),(232,7,55,0,0,0,0),(233,7,56,0,0,0,0),(234,7,57,0,0,0,0),(235,7,58,0,0,0,0),(236,7,59,0,0,0,0),(237,7,60,0,0,0,0),(238,7,61,0,0,0,0),(239,7,62,0,0,0,0),(240,7,80,0,0,0,0),(241,7,69,0,0,0,0),(242,7,70,0,0,0,0),(243,7,71,0,0,0,0),(244,7,72,0,0,0,0),(245,7,73,0,0,0,0),(246,7,74,0,0,0,0),(247,7,75,0,0,0,0),(248,7,76,0,0,0,0),(249,7,63,0,0,0,0),(250,7,64,0,0,0,0),(251,7,65,0,0,0,0),(252,7,66,0,0,0,0),(253,7,67,0,0,0,0),(254,7,68,0,0,0,0),(255,7,81,0,0,0,0),(256,7,82,0,0,0,0),(257,7,83,0,0,0,0),(258,7,84,0,0,0,0),(259,7,85,0,0,0,0),(260,7,86,0,0,0,0),(261,7,87,0,0,0,0),(262,88,88,1,1,1,1),(263,88,88,1,1,1,1),(264,89,89,1,1,1,1),(265,90,90,1,1,1,1),(266,2,88,1,0,1,0),(267,2,89,0,0,1,0),(268,90,90,1,1,1,1),(269,2,90,0,0,1,0),(270,91,91,1,1,1,1),(271,92,92,1,1,1,1),(272,2,91,0,0,1,0),(273,2,92,0,0,1,0),(274,93,93,1,1,1,1),(275,94,94,1,1,1,1),(276,95,95,1,1,1,1),(277,96,96,1,1,1,1),(278,2,93,0,0,1,0),(279,2,94,0,0,1,0),(280,2,95,0,0,1,0),(281,2,96,0,0,1,0),(282,97,97,1,1,1,1),(283,98,98,1,1,1,1),(284,2,97,0,0,1,0),(285,2,98,0,0,1,0),(286,99,99,1,1,1,1),(287,100,100,1,1,1,1),(288,101,101,1,1,1,1),(289,102,102,1,1,1,1),(290,2,99,0,0,1,0),(291,2,100,0,0,1,0),(292,2,101,0,0,1,0),(293,2,102,0,0,1,0),(294,103,103,1,1,1,1),(295,2,103,0,1,1,0),(296,3,91,0,0,0,0),(297,3,92,0,0,0,0),(298,3,93,0,0,1,0),(299,3,94,0,0,1,0),(300,3,95,0,0,1,0),(301,3,96,0,0,1,0),(302,3,97,0,0,1,0),(303,3,98,0,0,1,0),(304,3,99,0,0,0,0),(305,3,100,0,0,0,0),(306,3,101,0,0,0,0),(307,3,102,0,0,0,0),(308,3,88,0,0,0,0),(309,3,89,0,0,0,0),(310,3,90,0,0,0,0),(311,3,103,0,0,0,0),(312,4,91,0,0,1,0),(313,4,92,0,0,1,0),(314,4,93,0,0,0,0),(315,4,94,0,0,0,0),(316,4,95,0,0,0,0),(317,4,96,0,0,0,0),(318,4,97,0,0,0,0),(319,4,98,0,0,0,0),(320,4,99,0,0,0,0),(321,4,100,0,0,0,0),(322,4,101,0,0,0,0),(323,4,102,0,0,0,0),(324,4,1,0,0,0,0),(325,4,2,0,0,0,0),(326,4,3,0,0,0,0),(327,4,4,0,0,0,0),(328,4,5,0,0,0,0),(329,4,30,0,0,0,0),(330,4,7,0,0,0,0),(331,4,8,0,0,0,0),(332,4,6,0,0,0,0),(333,4,9,0,0,0,0),(334,4,10,0,0,0,0),(335,4,11,0,0,0,0),(336,4,12,1,1,1,1),(337,4,13,1,0,1,0),(338,4,14,1,0,1,0),(339,4,15,0,0,1,0),(340,4,16,1,1,1,1),(341,4,17,1,1,1,1),(343,4,19,1,1,1,1),(344,4,20,1,1,1,1),(345,4,21,1,1,1,1),(346,4,22,1,1,1,1),(347,4,23,0,0,0,0),(348,4,24,0,0,0,0),(349,4,25,0,0,0,0),(350,4,26,0,0,0,0),(351,4,27,0,0,0,0),(352,4,28,0,0,0,0),(353,4,29,0,0,0,0),(354,4,32,0,0,0,0),(355,4,88,0,0,0,0),(356,4,89,0,0,0,0),(357,4,31,0,0,0,0),(358,4,33,0,0,0,0),(359,4,34,0,0,0,0),(360,4,35,0,0,0,0),(361,4,36,0,0,0,0),(362,4,37,0,0,0,0),(363,4,38,0,0,0,0),(364,4,39,0,0,0,0),(365,4,77,0,0,0,0),(366,4,78,0,0,0,0),(367,4,79,0,0,0,0),(368,4,40,0,0,0,0),(369,4,41,0,0,0,0),(370,4,42,0,0,0,0),(371,4,43,0,0,0,0),(372,4,44,0,0,0,0),(373,4,45,0,0,0,0),(374,4,46,0,0,0,0),(375,4,47,0,0,0,0),(376,4,48,0,0,0,0),(377,4,49,0,0,0,0),(378,4,50,0,0,0,0),(379,4,51,0,0,0,0),(380,4,52,0,0,0,0),(381,4,53,0,0,0,0),(382,4,54,0,0,0,0),(383,4,55,0,0,1,0),(384,4,56,0,0,0,0),(385,4,57,0,0,0,0),(386,4,58,1,0,1,0),(387,4,59,0,0,0,0),(388,4,60,0,0,0,0),(389,4,61,0,0,0,0),(390,4,62,0,0,0,0),(391,4,80,0,0,0,0),(392,4,69,1,1,1,1),(393,4,70,1,1,1,1),(394,4,71,1,1,1,1),(395,4,72,1,1,1,1),(396,4,73,1,0,0,0),(397,4,74,1,1,1,1),(398,4,75,0,0,1,0),(399,4,76,0,0,1,0),(400,4,63,1,1,1,1),(401,4,64,1,1,1,1),(402,4,65,1,1,1,1),(403,4,66,0,0,1,0),(404,4,67,1,1,1,1),(405,4,68,1,1,1,1),(406,4,81,0,0,0,0),(407,4,82,0,0,0,0),(408,4,83,0,0,0,0),(409,4,84,0,0,0,0),(410,4,85,0,0,0,0),(411,4,86,0,0,0,0),(412,4,87,0,0,0,0),(413,4,90,0,0,0,0),(414,4,103,0,0,0,0),(415,5,91,0,0,0,0),(416,5,92,0,0,0,0),(417,5,93,0,0,1,0),(418,5,94,0,0,1,0),(419,5,95,0,0,0,0),(420,5,96,0,0,0,0),(421,5,97,0,0,0,0),(422,5,98,0,0,0,0),(423,5,99,0,0,0,0),(424,5,100,0,0,0,0),(425,5,101,0,0,0,0),(426,5,102,0,0,0,0),(427,5,1,0,0,1,0),(428,5,2,0,0,0,0),(429,5,3,0,0,0,0),(430,5,4,0,0,0,0),(431,5,5,0,0,0,0),(432,5,30,0,0,0,0),(433,5,7,0,0,0,0),(434,5,8,0,0,0,0),(435,5,6,0,0,1,0),(436,5,9,0,0,0,0),(437,5,10,0,0,0,0),(438,5,11,0,0,0,0),(439,5,12,0,0,0,0),(440,5,13,0,0,0,0),(441,5,14,0,0,0,0),(442,5,15,0,0,0,0),(443,5,16,0,0,0,0),(444,5,17,0,0,0,0),(446,5,19,0,0,0,0),(447,5,20,1,1,1,1),(448,5,21,0,0,0,0),(449,5,22,0,0,0,0),(450,5,23,0,0,0,0),(451,5,24,0,0,0,0),(452,5,25,0,0,0,0),(453,5,26,0,0,0,0),(454,5,27,0,0,0,0),(455,5,28,0,0,0,0),(456,5,29,0,0,0,0),(457,5,32,0,0,0,0),(458,5,88,0,0,0,0),(459,5,89,0,0,0,0),(460,5,31,0,0,0,0),(461,5,33,0,0,0,0),(462,5,34,0,0,0,0),(463,5,35,0,0,0,0),(464,5,36,0,0,0,0),(465,5,37,0,0,0,0),(466,5,38,0,0,0,0),(467,5,39,0,0,0,0),(468,5,77,0,0,0,0),(469,5,78,0,0,0,0),(470,5,79,0,0,0,0),(471,5,40,0,0,0,0),(472,5,41,0,0,0,0),(473,5,42,0,0,0,0),(474,5,43,0,0,0,0),(475,5,44,0,0,0,0),(476,5,45,0,0,0,0),(477,5,46,0,0,0,0),(478,5,47,0,0,0,0),(479,5,48,0,0,0,0),(480,5,49,0,0,0,0),(481,5,50,0,0,0,0),(482,5,51,0,0,0,0),(483,5,52,0,0,0,0),(484,5,53,0,0,0,0),(485,5,54,0,0,0,0),(486,5,55,1,1,1,1),(487,5,56,1,1,1,1),(488,5,57,1,0,1,1),(489,5,58,1,0,1,1),(490,5,59,0,0,0,0),(491,5,60,0,0,0,0),(492,5,61,0,0,0,0),(493,5,62,0,0,0,0),(494,5,80,0,0,0,0),(495,5,69,0,0,0,0),(496,5,70,0,0,0,0),(497,5,71,0,0,0,0),(498,5,72,0,0,0,0),(499,5,73,0,0,0,0),(500,5,74,0,0,0,0),(501,5,75,0,0,0,0),(502,5,76,0,0,0,0),(503,5,63,0,0,0,0),(504,5,64,0,0,0,0),(505,5,65,0,0,0,0),(506,5,66,0,0,0,0),(507,5,67,0,0,0,0),(508,5,68,0,0,0,0),(509,5,81,0,0,0,0),(510,5,82,0,0,0,0),(511,5,83,0,0,0,0),(512,5,84,0,0,0,0),(513,5,85,0,0,0,0),(514,5,86,0,0,0,0),(515,5,87,0,0,0,0),(516,5,90,0,0,0,0),(517,5,103,0,0,0,0),(518,104,104,1,1,1,1),(519,2,104,0,0,1,0),(520,4,104,0,0,1,0),(521,2,18,0,0,0,0),(522,2,105,0,1,1,0),(523,2,106,1,1,1,1),(524,2,107,0,0,0,0),(525,2,109,1,1,1,1),(526,2,108,0,1,1,0),(527,3,18,0,0,0,0),(528,3,107,0,0,0,0),(529,3,109,1,1,1,1),(530,3,104,0,0,0,0),(531,3,105,0,0,0,0),(532,3,106,0,0,0,0),(533,3,108,0,0,0,0);
/*!40000 ALTER TABLE `staff_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `register_no` varchar(100) NOT NULL,
  `admission_date` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `birthday` varchar(100) DEFAULT NULL,
  `religion` varchar(100) NOT NULL,
  `caste` varchar(100) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `mother_tongue` varchar(100) DEFAULT NULL,
  `current_address` text,
  `permanent_address` text,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `mobileno` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL DEFAULT '0',
  `vehicle_id` int(11) NOT NULL DEFAULT '0',
  `hostel_id` int(11) NOT NULL DEFAULT '0',
  `room_id` int(11) NOT NULL DEFAULT '0',
  `previous_details` text NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_attendance`
--

DROP TABLE IF EXISTS `student_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(4) DEFAULT NULL COMMENT 'P=Present, A=Absent, H=Holiday, L=Late',
  `remark` text,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_attendance`
--

LOCK TABLES `student_attendance` WRITE;
/*!40000 ALTER TABLE `student_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_category`
--

DROP TABLE IF EXISTS `student_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_category`
--

LOCK TABLES `student_category` WRITE;
/*!40000 ALTER TABLE `student_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_documents`
--

DROP TABLE IF EXISTS `student_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `remarks` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `enc_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_documents`
--

LOCK TABLES `student_documents` WRITE;
/*!40000 ALTER TABLE `student_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `subject_code` varchar(200) NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `subject_author` varchar(255) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_assign`
--

DROP TABLE IF EXISTS `subject_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` longtext NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_assign`
--

LOCK TABLES `subject_assign` WRITE;
/*!40000 ALTER TABLE `subject_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_allocation`
--

DROP TABLE IF EXISTS `teacher_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_allocation`
--

LOCK TABLES `teacher_allocation` WRITE;
/*!40000 ALTER TABLE `teacher_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_note`
--

DROP TABLE IF EXISTS `teacher_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `file_name` longtext NOT NULL,
  `enc_name` longtext NOT NULL,
  `type_id` int(11) NOT NULL,
  `class_id` longtext NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_note`
--

LOCK TABLES `teacher_note` WRITE;
/*!40000 ALTER TABLE `teacher_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_settings`
--

DROP TABLE IF EXISTS `theme_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `border_mode` varchar(200) NOT NULL,
  `dark_skin` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_settings`
--

LOCK TABLES `theme_settings` WRITE;
/*!40000 ALTER TABLE `theme_settings` DISABLE KEYS */;
INSERT INTO `theme_settings` VALUES (1,'true','false','2018-10-23 22:59:38','2020-05-02 14:18:35');
/*!40000 ALTER TABLE `theme_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_class`
--

DROP TABLE IF EXISTS `timetable_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `break` varchar(11) DEFAULT 'false',
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_room` varchar(100) DEFAULT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `day` varchar(20) NOT NULL,
  `session_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_class`
--

LOCK TABLES `timetable_class` WRITE;
/*!40000 ALTER TABLE `timetable_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_exam`
--

DROP TABLE IF EXISTS `timetable_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` varchar(20) NOT NULL,
  `time_end` varchar(20) NOT NULL,
  `mark_distribution` text NOT NULL,
  `hall_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_exam`
--

LOCK TABLES `timetable_exam` WRITE;
/*!40000 ALTER TABLE `timetable_exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(20) NOT NULL,
  `voucher_head_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `cr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `pay_via` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `attachments` varchar(255) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions_links`
--

DROP TABLE IF EXISTS `transactions_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) DEFAULT NULL,
  `deposit` tinyint(3) DEFAULT NULL,
  `expense` tinyint(3) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions_links`
--

LOCK TABLES `transactions_links` WRITE;
/*!40000 ALTER TABLE `transactions_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_assign`
--

DROP TABLE IF EXISTS `transport_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) NOT NULL,
  `stoppage_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_assign`
--

LOCK TABLES `transport_assign` WRITE;
/*!40000 ALTER TABLE `transport_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_route`
--

DROP TABLE IF EXISTS `transport_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `start_place` longtext NOT NULL,
  `remarks` longtext NOT NULL,
  `stop_place` longtext NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_route`
--

LOCK TABLES `transport_route` WRITE;
/*!40000 ALTER TABLE `transport_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_stoppage`
--

DROP TABLE IF EXISTS `transport_stoppage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_stoppage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stop_position` varchar(255) NOT NULL,
  `stop_time` time NOT NULL,
  `route_fare` decimal(18,2) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_stoppage`
--

LOCK TABLES `transport_stoppage` WRITE;
/*!40000 ALTER TABLE `transport_stoppage` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport_stoppage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_vehicle`
--

DROP TABLE IF EXISTS `transport_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_no` longtext NOT NULL,
  `capacity` longtext NOT NULL,
  `insurance_renewal` longtext NOT NULL,
  `driver_name` longtext NOT NULL,
  `driver_phone` longtext NOT NULL,
  `driver_license` longtext NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_vehicle`
--

LOCK TABLES `transport_vehicle` WRITE;
/*!40000 ALTER TABLE `transport_vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher_head`
--

DROP TABLE IF EXISTS `voucher_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `system` tinyint(1) DEFAULT '0',
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_head`
--

LOCK TABLES `voucher_head` WRITE;
/*!40000 ALTER TABLE `voucher_head` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher_head` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:13:38
