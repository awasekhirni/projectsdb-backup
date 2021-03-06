-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: workorderdb
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
-- Table structure for table `wo_audit`
--

DROP TABLE IF EXISTS `wo_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_audit` (
  `IdAudit` int(21) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  `AuditContent` text NOT NULL,
  PRIMARY KEY (`IdAudit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_audit`
--

LOCK TABLES `wo_audit` WRITE;
/*!40000 ALTER TABLE `wo_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_phase`
--

DROP TABLE IF EXISTS `wo_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_phase` (
  `PhaseId` int(3) NOT NULL AUTO_INCREMENT,
  `PhaseName` varchar(100) NOT NULL,
  `PhaseColor` varchar(255) NOT NULL,
  `PhaseOrder` int(11) NOT NULL,
  `IsActive` int(1) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  PRIMARY KEY (`PhaseId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_phase`
--

LOCK TABLES `wo_phase` WRITE;
/*!40000 ALTER TABLE `wo_phase` DISABLE KEYS */;
INSERT INTO `wo_phase` VALUES (1,'Planned','#ffb700',1,1,'2014-08-09 03:00:00',1,'2014-09-04 22:46:04','Comestoarra Labs');
/*!40000 ALTER TABLE `wo_phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tclients`
--

DROP TABLE IF EXISTS `wo_tclients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tclients` (
  `IdClient` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(255) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `MailingAddress` longtext NOT NULL,
  `Phone` varchar(200) NOT NULL,
  `CellPhone` varchar(200) NOT NULL,
  `Notes` text NOT NULL,
  `ProfilePicture` varchar(255) NOT NULL,
  `IsActive` int(1) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `LastLoginDate` datetime NOT NULL,
  `LastLoginIp` varchar(100) NOT NULL,
  `IsLogin` int(3) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  `isArchived` int(3) NOT NULL,
  `archiveDate` date NOT NULL,
  PRIMARY KEY (`IdClient`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tclients`
--

LOCK TABLES `wo_tclients` WRITE;
/*!40000 ALTER TABLE `wo_tclients` DISABLE KEYS */;
INSERT INTO `wo_tclients` VALUES (1,'Client','client','$2y$12$2g8s2gVGhcJoz1jKY6SZy.8NUNKT7j4ORkBOQ6ELqeN.szlcThcnq','client@mail.com','Bandung','087824280960','08562233262','Notes','rizkiwisnuaji.jpg',1,'2014-09-11 19:45:02','Comestoarra Labs','2014-09-11 19:45:19','127.0.0.1',0,'2014-08-06 02:00:00',1,0,'0000-00-00');
/*!40000 ALTER TABLE `wo_tclients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tcurrency`
--

DROP TABLE IF EXISTS `wo_tcurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tcurrency` (
  `CurrencyId` int(3) NOT NULL AUTO_INCREMENT,
  `CurrencyName` varchar(100) NOT NULL,
  `CurrencySymbol` varchar(255) NOT NULL,
  `IsActive` int(1) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  PRIMARY KEY (`CurrencyId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tcurrency`
--

LOCK TABLES `wo_tcurrency` WRITE;
/*!40000 ALTER TABLE `wo_tcurrency` DISABLE KEYS */;
INSERT INTO `wo_tcurrency` VALUES (1,'Indonesian Rupiah','IDR',1,'2014-08-01 04:00:00',1,'2014-09-09 00:05:13','Comestoarra Labs'),(2,'US Dollar','$',1,'2014-08-14 10:37:04',1,'0000-00-00 00:00:00','0');
/*!40000 ALTER TABLE `wo_tcurrency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tinvoiceitems`
--

DROP TABLE IF EXISTS `wo_tinvoiceitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tinvoiceitems` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `IdClient` int(11) NOT NULL,
  `IdProject` int(11) NOT NULL,
  `invoiceId` int(11) NOT NULL,
  `ItemTitle` varchar(255) NOT NULL,
  `ItemDesc` varchar(255) NOT NULL,
  `ItemQty` double NOT NULL,
  `ItemAmount` double NOT NULL,
  `ItemTotalAmount` double NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tinvoiceitems`
--

LOCK TABLES `wo_tinvoiceitems` WRITE;
/*!40000 ALTER TABLE `wo_tinvoiceitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_tinvoiceitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tmailbox`
--

DROP TABLE IF EXISTS `wo_tmailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tmailbox` (
  `IdMail` int(5) NOT NULL AUTO_INCREMENT,
  `SenderId` int(5) NOT NULL DEFAULT '0',
  `ReceiverId` int(5) NOT NULL DEFAULT '0',
  `MailTitle` varchar(255) NOT NULL,
  `MailContent` text CHARACTER SET utf8 COLLATE utf8_bin,
  `sentDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isRead` int(1) NOT NULL DEFAULT '0',
  `isArchived` int(1) NOT NULL DEFAULT '0',
  `isDeleted` int(1) NOT NULL DEFAULT '0',
  `DeletedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LastUpdatedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`IdMail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tmailbox`
--

LOCK TABLES `wo_tmailbox` WRITE;
/*!40000 ALTER TABLE `wo_tmailbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_tmailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tprojectattachment`
--

DROP TABLE IF EXISTS `wo_tprojectattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tprojectattachment` (
  `IdAttachment` int(11) NOT NULL AUTO_INCREMENT,
  `IdProject` int(11) NOT NULL,
  `IdClient` int(11) NOT NULL,
  `AttachmentTitle` varchar(255) NOT NULL,
  `AttachmentNotes` text NOT NULL,
  `AttachmentType` varchar(255) NOT NULL,
  `AttachmentSize` varchar(255) NOT NULL,
  `AttachmentUrl` varchar(255) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  PRIMARY KEY (`IdAttachment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tprojectattachment`
--

LOCK TABLES `wo_tprojectattachment` WRITE;
/*!40000 ALTER TABLE `wo_tprojectattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_tprojectattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tprojectfinances`
--

DROP TABLE IF EXISTS `wo_tprojectfinances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tprojectfinances` (
  `IdFinance` int(11) NOT NULL AUTO_INCREMENT,
  `IdProject` int(11) NOT NULL,
  `FinanceTitle` varchar(255) NOT NULL,
  `FinanceDesc` varchar(255) NOT NULL,
  `FinanceType` varchar(100) NOT NULL,
  `FinanceAmount` varchar(50) NOT NULL,
  `FinanceDate` date NOT NULL,
  `FinanceNotes` text NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  PRIMARY KEY (`IdFinance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tprojectfinances`
--

LOCK TABLES `wo_tprojectfinances` WRITE;
/*!40000 ALTER TABLE `wo_tprojectfinances` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_tprojectfinances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tprojectinvoices`
--

DROP TABLE IF EXISTS `wo_tprojectinvoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tprojectinvoices` (
  `invoiceId` int(21) NOT NULL AUTO_INCREMENT,
  `IdClient` int(11) NOT NULL,
  `IdProject` int(11) NOT NULL,
  `invoiceNumber` varchar(155) NOT NULL,
  `invoiceClientReference` varchar(255) NOT NULL,
  `invoiceCompanyReference` varchar(255) NOT NULL,
  `invoiceDate` date NOT NULL,
  `invoiceDueDate` date NOT NULL,
  `invoiceCurrency` int(3) NOT NULL,
  `invoiceSubtotal` double NOT NULL,
  `invoiceTax` double NOT NULL,
  `invoiceTotalPaid` double NOT NULL,
  `invoiceTotalDue` double NOT NULL,
  `invoiceNote` text NOT NULL,
  `invoiceTaxRate` double NOT NULL,
  `invoiceClientAddress` text NOT NULL,
  `invoiceAddress` text NOT NULL,
  `invoiceStatus` int(1) NOT NULL DEFAULT '0',
  `isSync` int(1) NOT NULL,
  `isGenerated` int(1) NOT NULL,
  `IsCompleted` int(3) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  PRIMARY KEY (`invoiceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tprojectinvoices`
--

LOCK TABLES `wo_tprojectinvoices` WRITE;
/*!40000 ALTER TABLE `wo_tprojectinvoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_tprojectinvoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tprojectmember`
--

DROP TABLE IF EXISTS `wo_tprojectmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tprojectmember` (
  `IdMember` int(11) NOT NULL AUTO_INCREMENT,
  `IdProject` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `RoleId` int(3) NOT NULL,
  `IdClient` int(11) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  PRIMARY KEY (`IdMember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tprojectmember`
--

LOCK TABLES `wo_tprojectmember` WRITE;
/*!40000 ALTER TABLE `wo_tprojectmember` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_tprojectmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tprojectpayments`
--

DROP TABLE IF EXISTS `wo_tprojectpayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tprojectpayments` (
  `IdPayment` int(11) NOT NULL AUTO_INCREMENT,
  `IdClient` int(11) NOT NULL,
  `IdProject` int(11) NOT NULL,
  `invoiceId` int(21) NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  `paymentDate` date NOT NULL,
  `paymentType` varchar(255) NOT NULL,
  `paymentAmount` varchar(50) NOT NULL,
  `paymentNotes` text NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  PRIMARY KEY (`IdPayment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tprojectpayments`
--

LOCK TABLES `wo_tprojectpayments` WRITE;
/*!40000 ALTER TABLE `wo_tprojectpayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_tprojectpayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tprojects`
--

DROP TABLE IF EXISTS `wo_tprojects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tprojects` (
  `IdProject` int(11) NOT NULL AUTO_INCREMENT,
  `IdClient` int(11) NOT NULL,
  `TypeId` int(5) NOT NULL,
  `ProjectProgress` int(3) NOT NULL,
  `ProjectStatus` int(3) NOT NULL,
  `ProjectCurrency` int(3) NOT NULL,
  `ProjectNotes` longtext NOT NULL,
  `ProjectStart` date NOT NULL,
  `ProjectDeadline` date NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  `isArchived` int(3) NOT NULL,
  `archiveDate` date NOT NULL,
  `IsComplete` int(3) NOT NULL,
  PRIMARY KEY (`IdProject`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tprojects`
--

LOCK TABLES `wo_tprojects` WRITE;
/*!40000 ALTER TABLE `wo_tprojects` DISABLE KEYS */;
INSERT INTO `wo_tprojects` VALUES (1,1,1,0,1,1,'Notes','2014-09-10','2014-09-19','0000-00-00 00:00:00','','2014-09-10 20:22:21',1,0,'0000-00-00',0);
/*!40000 ALTER TABLE `wo_tprojects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tprojectschedule`
--

DROP TABLE IF EXISTS `wo_tprojectschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tprojectschedule` (
  `IdSchedule` int(11) NOT NULL AUTO_INCREMENT,
  `IdProject` int(11) NOT NULL,
  `IdClient` int(11) NOT NULL,
  `ScheduleDesc` varchar(255) NOT NULL,
  `ScheduleTimeStart` varchar(10) NOT NULL,
  `ScheduleTimeEnd` varchar(10) NOT NULL,
  `ScheduleDueDate` date NOT NULL,
  `ScheduleNotes` text NOT NULL,
  `IsFinish` int(3) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  PRIMARY KEY (`IdSchedule`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tprojectschedule`
--

LOCK TABLES `wo_tprojectschedule` WRITE;
/*!40000 ALTER TABLE `wo_tprojectschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_tprojectschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tprojecttask`
--

DROP TABLE IF EXISTS `wo_tprojecttask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tprojecttask` (
  `IdTask` int(11) NOT NULL AUTO_INCREMENT,
  `IdProject` int(11) NOT NULL,
  `IdClient` int(11) NOT NULL,
  `TaskDesc` varchar(255) NOT NULL,
  `TaskDate` date NOT NULL,
  `TaskDueDate` date NOT NULL,
  `TaskNotes` text NOT NULL,
  `TaskProgress` int(3) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  PRIMARY KEY (`IdTask`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tprojecttask`
--

LOCK TABLES `wo_tprojecttask` WRITE;
/*!40000 ALTER TABLE `wo_tprojecttask` DISABLE KEYS */;
INSERT INTO `wo_tprojecttask` VALUES (1,1,1,'Contract','2014-09-10','2014-09-30','Contract',0,'0000-00-00 00:00:00','','2014-09-10 20:22:45',1);
/*!40000 ALTER TABLE `wo_tprojecttask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_trequests`
--

DROP TABLE IF EXISTS `wo_trequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_trequests` (
  `IdRequest` int(11) NOT NULL AUTO_INCREMENT,
  `IdClient` int(11) NOT NULL,
  `TypeId` int(5) NOT NULL,
  `ProjectCurrency` int(3) NOT NULL,
  `ProjectNotes` longtext NOT NULL,
  `ProjectStart` date NOT NULL,
  `ProjectDeadline` date NOT NULL,
  `RequestStatus` int(1) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  PRIMARY KEY (`IdRequest`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_trequests`
--

LOCK TABLES `wo_trequests` WRITE;
/*!40000 ALTER TABLE `wo_trequests` DISABLE KEYS */;
INSERT INTO `wo_trequests` VALUES (1,1,1,1,'Notes','2014-09-10','2014-09-30',0,'0000-00-00 00:00:00','','2014-09-10 21:37:51',1);
/*!40000 ALTER TABLE `wo_trequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_trole`
--

DROP TABLE IF EXISTS `wo_trole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_trole` (
  `RoleId` int(3) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(100) NOT NULL,
  `RoleDesc` varchar(255) NOT NULL,
  `IsActive` int(1) NOT NULL,
  `GeneralEdit` int(10) DEFAULT NULL,
  `TaskView` int(10) DEFAULT NULL,
  `TaskCreate` int(10) DEFAULT NULL,
  `TaskEdit` int(10) DEFAULT NULL,
  `TaskDelete` int(10) DEFAULT NULL,
  `ScheduleView` int(10) DEFAULT NULL,
  `ScheduleCreate` int(10) DEFAULT NULL,
  `ScheduleEdit` int(10) DEFAULT NULL,
  `ScheduleDelete` int(10) DEFAULT NULL,
  `MemberView` int(10) NOT NULL,
  `MemberCreate` int(10) NOT NULL,
  `MemberEdit` int(10) NOT NULL,
  `MemberDelete` int(10) NOT NULL,
  `FinanceView` int(10) NOT NULL,
  `FinanceCreate` int(10) NOT NULL,
  `FinanceEdit` int(10) NOT NULL,
  `FinanceDelete` int(10) NOT NULL,
  `AttachmentView` int(10) NOT NULL,
  `AttachmentCreate` int(10) NOT NULL,
  `AttachmentEdit` int(10) NOT NULL,
  `AttachmentDelete` int(10) NOT NULL,
  `InvoiceView` int(10) NOT NULL,
  `InvoiceCreate` int(10) NOT NULL,
  `InvoiceEdit` int(10) NOT NULL,
  `InvoiceDelete` int(10) NOT NULL,
  `InvoiceGenerate` int(10) NOT NULL,
  `InvoiceSendMail` int(10) NOT NULL,
  `PaymentCreate` int(10) NOT NULL,
  `PaymentEdit` int(10) NOT NULL,
  `PaymentDelete` int(10) NOT NULL,
  `ItemCreate` int(10) NOT NULL,
  `ItemEdit` int(10) NOT NULL,
  `ItemDelete` int(10) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_trole`
--

LOCK TABLES `wo_trole` WRITE;
/*!40000 ALTER TABLE `wo_trole` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_trole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tsettings`
--

DROP TABLE IF EXISTS `wo_tsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tsettings` (
  `settingsId` int(3) NOT NULL AUTO_INCREMENT,
  `appUrl` varchar(100) NOT NULL,
  `appName` varchar(255) NOT NULL,
  `ownerName` varchar(255) NOT NULL,
  `ownerAddress` longtext NOT NULL,
  `ownerEmail` varchar(255) NOT NULL,
  `ownerPhone` varchar(255) NOT NULL,
  `uploadPath` varchar(255) NOT NULL,
  `filesAllowed` varchar(255) NOT NULL,
  `AppLogo` varchar(255) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  PRIMARY KEY (`settingsId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tsettings`
--

LOCK TABLES `wo_tsettings` WRITE;
/*!40000 ALTER TABLE `wo_tsettings` DISABLE KEYS */;
INSERT INTO `wo_tsettings` VALUES (1,'http://localhost/awots/','Advanced Work Order Tracking System  V.1.1','Comestoarra Labs, Inc.','Jalan Titimplik No.25, Bandung, West Java, Indonesia, 40133','labs@comestoarra.com','087824280960','uploads/workorders/','jpg,pdf,doc,xls,psd,ppt','Comestoarra.jpg','2014-09-10 20:44:25','Comestoarra Labs');
/*!40000 ALTER TABLE `wo_tsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tuser`
--

DROP TABLE IF EXISTS `wo_tuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tuser` (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `MailingAddress` text NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `CellPhone` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `IsActive` char(1) NOT NULL,
  `Level` char(1) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ProfilePicture` varchar(255) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `LastLoginIP` varchar(100) NOT NULL,
  `IsLogin` int(3) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  PRIMARY KEY (`IdUser`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tuser`
--

LOCK TABLES `wo_tuser` WRITE;
/*!40000 ALTER TABLE `wo_tuser` DISABLE KEYS */;
INSERT INTO `wo_tuser` VALUES (1,'Comestoarra Labs','Jl. Titimplik No.25, bandung, West Java, Indonesia, 40133','0222506902','087824280960','labs@comestoarra.com','1','1','admin','$2y$12$HHLTORAMkkUQ4zRxXG4obOMNXmyPqMjXBAvJp4rQODV5f6uCNgvGO','admin.jpg','2014-09-11 19:44:03','127.0.0.1',0,'2014-09-10 21:23:42','Comestoarra Labs','2014-08-01 05:00:00',1);
/*!40000 ALTER TABLE `wo_tuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_twotype`
--

DROP TABLE IF EXISTS `wo_twotype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_twotype` (
  `TypeId` int(5) NOT NULL AUTO_INCREMENT,
  `TypeTitle` varchar(255) NOT NULL,
  `TypeCode` varchar(100) NOT NULL,
  `TypeDesc` longtext NOT NULL,
  `IsActive` int(1) NOT NULL,
  `LastUpdateDate` datetime NOT NULL,
  `LastUpdateUser` varchar(255) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedUser` int(11) NOT NULL,
  PRIMARY KEY (`TypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_twotype`
--

LOCK TABLES `wo_twotype` WRITE;
/*!40000 ALTER TABLE `wo_twotype` DISABLE KEYS */;
INSERT INTO `wo_twotype` VALUES (1,'Web Development','1001','Web Development',1,'0000-00-00 00:00:00','','2014-09-10 20:22:01',1);
/*!40000 ALTER TABLE `wo_twotype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:16:57
