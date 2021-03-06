-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: exblockchaindb
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
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block` (
  `BlockId` bigint(20) NOT NULL,
  `PrevBlockId` bigint(20) NOT NULL,
  `TransactionCount` int(11) NOT NULL,
  `MerkleRoot` binary(40) NOT NULL,
  `Nonce` int(11) NOT NULL,
  `Difficulty` binary(40) NOT NULL,
  `BlockSignature` binary(40) NOT NULL,
  `PrevBlockSignature` binary(40) NOT NULL,
  `CreatedDateTime` datetime NOT NULL,
  PRIMARY KEY (`BlockId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block`
--

LOCK TABLES `block` WRITE;
/*!40000 ALTER TABLE `block` DISABLE KEYS */;
/*!40000 ALTER TABLE `block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merkletreeintermediatenode`
--

DROP TABLE IF EXISTS `merkletreeintermediatenode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merkletreeintermediatenode` (
  `MerkleTreeIntermediateNodeid` bigint(20) NOT NULL,
  `TransactionId1` bigint(20) NOT NULL,
  `TransactionId2` bigint(20) NOT NULL,
  `MerkleTreeIntermediateNodeId1` bigint(20) NOT NULL,
  `MerkleTreeIntermediateNodeId2` bigint(20) NOT NULL,
  `Depth` smallint(6) DEFAULT NULL,
  `NodeHash` binary(40) DEFAULT NULL,
  `BlockId` bigint(20) NOT NULL,
  `TransactionId` bigint(20) NOT NULL,
  `TransactionTypeId` smallint(6) NOT NULL,
  PRIMARY KEY (`MerkleTreeIntermediateNodeid`,`TransactionId1`,`TransactionId2`,`MerkleTreeIntermediateNodeId1`,`MerkleTreeIntermediateNodeId2`,`BlockId`,`TransactionId`,`TransactionTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merkletreeintermediatenode`
--

LOCK TABLES `merkletreeintermediatenode` WRITE;
/*!40000 ALTER TABLE `merkletreeintermediatenode` DISABLE KEYS */;
/*!40000 ALTER TABLE `merkletreeintermediatenode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `MessageId` bigint(20) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Body` varchar(2000) NOT NULL,
  `ReadDateTime` datetime NOT NULL,
  `CreatedDateTime` datetime NOT NULL,
  `FromUserId` bigint(20) NOT NULL,
  `ToUserId` varchar(40) NOT NULL,
  PRIMARY KEY (`MessageId`,`FromUserId`,`ToUserId`),
  KEY `User_Message` (`FromUserId`),
  CONSTRAINT `User_Message` FOREIGN KEY (`FromUserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `TransactionId` bigint(20) NOT NULL,
  `TransactionTypeId` smallint(6) NOT NULL,
  `TransactionHash` binary(40) NOT NULL,
  `HashVersion` bigint(20) NOT NULL,
  `TransactionDateTime` datetime NOT NULL,
  `BlockId` bigint(20) NOT NULL,
  PRIMARY KEY (`TransactionId`,`TransactionTypeId`,`BlockId`),
  KEY `TransactionType_Transaction` (`TransactionTypeId`),
  KEY `Block_Transaction` (`BlockId`),
  CONSTRAINT `Block_Transaction` FOREIGN KEY (`BlockId`) REFERENCES `block` (`BlockId`),
  CONSTRAINT `TransactionType_Transaction` FOREIGN KEY (`TransactionTypeId`) REFERENCES `transactiontype` (`TransactionTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactiontype`
--

DROP TABLE IF EXISTS `transactiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactiontype` (
  `TransactionTypeId` smallint(6) NOT NULL,
  `TransactionTypeDesc` varchar(100) NOT NULL,
  PRIMARY KEY (`TransactionTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactiontype`
--

LOCK TABLES `transactiontype` WRITE;
/*!40000 ALTER TABLE `transactiontype` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserId` bigint(20) NOT NULL,
  `UserFirstName` varchar(200) NOT NULL,
  `UserLastName` varchar(100) NOT NULL,
  `UserDOB` date NOT NULL,
  `UserEmail` varchar(200) NOT NULL,
  `UserPhone` varchar(40) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2020-10-06 22:06:00
