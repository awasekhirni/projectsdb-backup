-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: redbusclone
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
-- Table structure for table `acc_account_name`
--

DROP TABLE IF EXISTS `acc_account_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_account_name` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_account_name`
--

LOCK TABLES `acc_account_name` WRITE;
/*!40000 ALTER TABLE `acc_account_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_account_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acn_account_transaction`
--

DROP TABLE IF EXISTS `acn_account_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acn_account_transaction` (
  `account_tran_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `document_pic` text,
  `create_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acn_account_transaction`
--

LOCK TABLES `acn_account_transaction` WRITE;
/*!40000 ALTER TABLE `acn_account_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `acn_account_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_info`
--

DROP TABLE IF EXISTS `agent_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent_info` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_first_name` varchar(30) DEFAULT NULL,
  `agent_second_name` varchar(150) DEFAULT NULL,
  `agent_company_name` varchar(150) DEFAULT NULL,
  `agent_document_id` varchar(150) DEFAULT NULL,
  `agent_pic_document` varchar(255) DEFAULT NULL,
  `agent_picture` varchar(255) DEFAULT NULL,
  `agent_phone` varchar(150) DEFAULT NULL,
  `agent_mobile` varchar(150) DEFAULT NULL,
  `agent_email` varchar(150) DEFAULT NULL,
  `agent_address_line_1` varchar(150) DEFAULT NULL,
  `agent_address_line_2` varchar(150) DEFAULT NULL,
  `agent_address_city` varchar(150) DEFAULT NULL,
  `agent_address_zip_code` varchar(150) DEFAULT NULL,
  `agent_country` varchar(150) DEFAULT NULL,
  `agent_commission` float NOT NULL,
  `status` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_info`
--

LOCK TABLES `agent_info` WRITE;
/*!40000 ALTER TABLE `agent_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_ledger`
--

DROP TABLE IF EXISTS `agent_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `booking_id` varchar(30) NOT NULL,
  `debit` float NOT NULL DEFAULT '0',
  `credit` float NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `commission_rate` float NOT NULL DEFAULT '0',
  `total_price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_ledger`
--

LOCK TABLES `agent_ledger` WRITE;
/*!40000 ALTER TABLE `agent_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_info`
--

DROP TABLE IF EXISTS `bank_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(200) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_info`
--

LOCK TABLES `bank_info` WRITE;
/*!40000 ALTER TABLE `bank_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_transaction`
--

DROP TABLE IF EXISTS `bank_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payer_name` varchar(200) DEFAULT NULL,
  `booking_id` varchar(50) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `refund` varchar(50) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `b_account_no` varchar(50) DEFAULT NULL,
  `transaction_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transaction`
--

LOCK TABLES `bank_transaction` WRITE;
/*!40000 ALTER TABLE `bank_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_downtime`
--

DROP TABLE IF EXISTS `booking_downtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_downtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) NOT NULL,
  `downtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_downtime`
--

LOCK TABLES `booking_downtime` WRITE;
/*!40000 ALTER TABLE `booking_downtime` DISABLE KEYS */;
INSERT INTO `booking_downtime` VALUES (1,'','3');
/*!40000 ALTER TABLE `booking_downtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_config`
--

LOCK TABLES `email_config` WRITE;
/*!40000 ALTER TABLE `email_config` DISABLE KEYS */;
INSERT INTO `email_config` VALUES (1,'smtp','mail.google.com','465','hmisahaq01@gmail.com','hmisahaq01730164623','html');
/*!40000 ALTER TABLE `email_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_history`
--

DROP TABLE IF EXISTS `employee_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `second_name` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `email_no` varchar(30) DEFAULT NULL,
  `document_id` varchar(30) DEFAULT NULL,
  `document_pic` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `blood_group` varchar(6) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `is_assign` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_history`
--

LOCK TABLES `employee_history` WRITE;
/*!40000 ALTER TABLE `employee_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_type`
--

DROP TABLE IF EXISTS `employee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_type`
--

LOCK TABLES `employee_type` WRITE;
/*!40000 ALTER TABLE `employee_type` DISABLE KEYS */;
INSERT INTO `employee_type` VALUES (1,'Driver','Expert in Driving',NULL),(8,'Office Staff','regular staff',NULL),(6,'Assistant','',NULL),(9,'Hostess','Bus Hostess for assistance',NULL);
/*!40000 ALTER TABLE `employee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enquiry` text,
  `checked` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fit_fitness`
--

DROP TABLE IF EXISTS `fit_fitness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fit_fitness` (
  `fitness_id` int(11) NOT NULL AUTO_INCREMENT,
  `fitness_name` varchar(50) DEFAULT NULL,
  `fitness_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fitness_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fit_fitness`
--

LOCK TABLES `fit_fitness` WRITE;
/*!40000 ALTER TABLE `fit_fitness` DISABLE KEYS */;
/*!40000 ALTER TABLE `fit_fitness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fleet_facilities`
--

DROP TABLE IF EXISTS `fleet_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fleet_facilities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fleet_facilities`
--

LOCK TABLES `fleet_facilities` WRITE;
/*!40000 ALTER TABLE `fleet_facilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `fleet_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fleet_registration`
--

DROP TABLE IF EXISTS `fleet_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fleet_registration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(255) DEFAULT NULL,
  `fleet_type_id` int(11) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `chasis_no` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `owner_phone` varchar(30) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `ac_available` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fleet_registration`
--

LOCK TABLES `fleet_registration` WRITE;
/*!40000 ALTER TABLE `fleet_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `fleet_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fleet_type`
--

DROP TABLE IF EXISTS `fleet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fleet_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `layout` varchar(50) NOT NULL,
  `lastseat` varchar(30) NOT NULL,
  `total_seat` int(11) NOT NULL,
  `seat_numbers` varchar(255) NOT NULL,
  `fleet_facilities` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fleet_type`
--

LOCK TABLES `fleet_type` WRITE;
/*!40000 ALTER TABLE `fleet_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `fleet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ftn_fitness_period`
--

DROP TABLE IF EXISTS `ftn_fitness_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ftn_fitness_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fitness_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_milage` float DEFAULT NULL,
  `end_milage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ftn_fitness_period`
--

LOCK TABLES `ftn_fitness_period` WRITE;
/*!40000 ALTER TABLE `ftn_fitness_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `ftn_fitness_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `how_to_use`
--

DROP TABLE IF EXISTS `how_to_use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `how_to_use` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `how_to_use`
--

LOCK TABLES `how_to_use` WRITE;
/*!40000 ALTER TABLE `how_to_use` DISABLE KEYS */;
INSERT INTO `how_to_use` VALUES (1,'<p>There is&nbsp; no information UUUU<img src=\"../../assets/tinymce/plugins/emoticons/img/smiley-cool.gif\" alt=\"cool\" /></p>');
/*!40000 ALTER TABLE `how_to_use` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  `french` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=703 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'login','Login','Se connecter'),(2,'email','Email','Email '),(3,'password','Password','Mot de passe'),(4,'reset','Reset','Reinitialiser'),(5,'dashboard','Dashboard','Tableau de bord'),(6,'home','HOME','Acceuil '),(7,'profile','Profile','Profil'),(8,'profile_setting','Profile Setting','Reglage du profil'),(9,'firstname','First Name','Nom'),(10,'lastname','Last Name','PrÃ©nom'),(11,'about','About','A propos'),(12,'preview','Preview','Visualiser'),(13,'image','Image','Image'),(14,'save','Save','Sauvegarder'),(15,'upload_successfully','Upload Successfully!','Mise Ã  jour reussi'),(16,'user_added_successfully','User Added Successfully!','Utilisateur ajoutÃ© avec succÃ¨s'),(17,'please_try_again','Please Try Again...','SVP Essayez encore'),(18,'inbox_message','Inbox Messages','Boite de reception message'),(19,'sent_message','Sent Message','Envoyer un message'),(20,'message_details','Message Details','DÃ©tails du message'),(21,'new_message','New Message','Nouveau message'),(22,'receiver_name','Receiver Name','Nom du recepteur'),(23,'sender_name','Sender Name','Nom de l\'expediteur'),(24,'subject','Subject','Sujet'),(25,'message','Message','Message'),(26,'message_sent','Message Sent!','Message envoyÃ©'),(27,'ip_address','IP Address','Adresse IP'),(28,'last_login','Last Login','DerniÃ¨re connexion'),(29,'last_logout','Last Logout','DerniÃ¨re dÃ©connexion'),(30,'status','Status','Status'),(31,'delete_successfully','Delete Successfully!','Suppression rÃ©ussi'),(32,'send','Send','Envoyer'),(33,'date','Date','Date'),(34,'action','Action','Action'),(35,'sl_no','SL No.','NÂ° SL'),(36,'are_you_sure','Are You Sure ? ','Etes-vous sure ?'),(37,'application_setting','Application Setting','Reglages d\'application'),(38,'application_title','Application Title','Titre d\'application'),(39,'address','Address','Adresse'),(40,'phone','Phone','Phone'),(41,'favicon','Favicon','Favicon'),(42,'logo','Logo','Logo'),(43,'language','Language','Langue'),(44,'left_to_right','Left To Right','Gauche vers droite'),(45,'right_to_left','Right To Left','Droite vers la gauche'),(46,'footer_text','Footer Text','Texte du footer'),(47,'site_align','Application Alignment','Aligner le site'),(48,'welcome_back','Welcome Back!','Bienvenue Ã  nouveau'),(49,'please_contact_with_admin','Please Contact With Admin','Veuillez contacter l\'administrateur'),(50,'incorrect_email_or_password','Incorrect Email/Password','Mot de passe ou Email incorrect'),(51,'select_option','Select Option','Option de selection'),(52,'ftp_setting','Data Synchronize [FTP Setting]','Reglage FTP'),(53,'hostname','Host Name','Hostname'),(54,'username','User Name','Nom d\'utilisateur'),(55,'ftp_port','FTP Port','Port FTP'),(56,'ftp_debug','FTP Debug','Debogage FTP '),(57,'project_root','Project Root','Racine du projet'),(58,'update_successfully','Update Successfully','Mise Ã  jour reussi'),(59,'save_successfully','Save Successfully!','Sauvegarde rÃ©ussie'),(61,'internet_connection','Internet Connection','Connexion internet'),(62,'ok','Ok','Ok'),(63,'not_available','Not Available','Indisponible'),(64,'available','Available','Disponible'),(65,'outgoing_file','Outgoing File','Fichier sortant'),(66,'incoming_file','Incoming File','Fichier entrant '),(67,'data_synchronize','Data Synchronize','Synchroniser les donnÃ©es'),(68,'unable_to_upload_file_please_check_configuration','Unable to upload file! please check configuration','Impossible de charger les donnÃ©es veuillez vÃ©rifier les configurations'),(69,'please_configure_synchronizer_settings','Please configure synchronizer settings','Veuillez configurer les paramÃ¨tres de synchronisation'),(70,'download_successfully','Download Successfully','TÃ©lÃ©chargement rÃ©ussi'),(71,'unable_to_download_file_please_check_configuration','Unable to download file! please check configuration','TÃ©lÃ©chargement impossible, veuillez vÃ©rifier votre connexion internet'),(72,'data_import_first','Data Import First','Importer d\'abord les donnÃ©es'),(73,'data_import_successfully','Data Import Successfully!','Import de donnÃ©es rÃ©ussi'),(74,'unable_to_import_data_please_check_config_or_sql_file','Unable to import data! please check configuration / SQL file.','Impossible d\'importer les donnÃ©es, veuillez vÃ©rifier les configurations'),(75,'download_data_from_server','Download Data from Server','TÃ©lÃ©charger les donnÃ©es du serveur'),(76,'data_import_to_database','Data Import To Database','Import de donnÃ©es dans la base de donnÃ©es'),(77,'data_upload_to_server','Data Upload to Server','Charger les donnÃ©es dans le seveur'),(78,'please_wait','Please Wait...','Veuillez patienter'),(79,'ooops_something_went_wrong',' Ooops something went wrong...','Oops, quelque chose a mal fonctionnÃ©'),(80,'module_permission_list','Module Permission List','Liste de permission du module'),(81,'user_permission','User Permission','Permission utilisateur'),(82,'add_module_permission','Add Module Permission','Ajouter module de permission'),(83,'module_permission_added_successfully','Module Permission Added Successfully!','Permission du module ajoutÃ©e avec succÃ¨s'),(84,'update_module_permission','Update Module Permission','Mettre Ã  jour le module de permission'),(85,'download','Download','TÃ©lÃ©charger'),(86,'module_name','Module Name','Nom du module'),(87,'create','Create','CrÃ©er'),(88,'read','Read','Lu'),(89,'update','Update','Mettre Ã  jour'),(90,'delete','Delete','Supprimer '),(91,'module_list','Module List','Liste de module'),(92,'add_module','Add Module','Ajouter module'),(93,'directory','Module Direcotory','Repertoire'),(94,'description','Description','Description'),(95,'image_upload_successfully','Image Upload Successfully!','Image mis Ã  jour avec succÃ¨s'),(96,'module_added_successfully','Module Added Successfully','Module ajoutÃ© avec succÃ¨s'),(97,'inactive','Inactive','Inactif'),(98,'active','Active','Actif'),(99,'user_list','User List','Liste d\'utilisateur'),(100,'see_all_message','See All Messages','Voir tous les messages'),(101,'setting','Setting','Reglages'),(102,'logout','LOGOUT','DÃ©connexion'),(103,'admin','Admin','Administrateur'),(104,'add_user','Add User','Ajouter un utilisateur'),(105,'user','User','Utilisateur'),(106,'module','Module','Module'),(107,'new','New','Nouveau'),(108,'inbox','Inbox','Boite de reception'),(109,'sent','Sent','EnvoyÃ©'),(110,'synchronize','Synchronize','Synchroniser'),(111,'data_synchronizer','Data Synchronizer','Synchronisation de donnÃ©es'),(112,'module_permission','Module Permission','Permission du module'),(113,'backup_now','Backup Now!','Sauvegarder maintenant'),(114,'restore_now','Restore Now!','Restaurer maintenant'),(115,'backup_and_restore','Data Backup','Suavegarde et restauration'),(116,'captcha','Captcha Word','Captcha'),(117,'database_backup','Database Backup','Sauvegarde base de donnÃ©e'),(118,'restore_successfully','Restore Successfully','Restauration rÃ©ussi'),(119,'backup_successfully','Backup Successfully','Sauvegarde rÃ©ussi'),(120,'filename','File Name',' Nom du fichier'),(121,'file_information','File Information','Info du fichier'),(122,'size','Size','Taille'),(123,'backup_date','Backup Date','Date de sauvegarde'),(124,'overwrite','Overwrite','Ecraser'),(125,'invalid_file','Invalid File!','Fichier invalide'),(126,'invalid_module','Invalid Module','Module invalide'),(127,'remove_successfully','Remove Successfully!','RetirÃ© avec succÃ¨s'),(128,'install','Install','Installer'),(129,'uninstall','Uninstall','DÃ©sinstaller'),(130,'tables_are_not_available_in_database','Tables are not available in database.sql','Tables indisponibles dans les bases de donnÃ©es'),(131,'no_tables_are_registered_in_config','No tables are registerd in config.php','Pas de tickets enregistrÃ©s dans les configurations'),(132,'enquiry','Enquiry','Requetes'),(133,'read_unread','Read/Unread','Lu et non lu'),(134,'enquiry_information','Enquiry Information','info de requete'),(135,'user_agent','User Agent','Utilisateur agent'),(136,'checked_by','Checked By','VerifiÃ© par'),(137,'new_enquiry','New Enquiry','Nouvelle requÃªte'),(138,'fleet','Fleet Management','Flotte'),(139,'fleet_type','Fleet Type','Type de vehicule'),(140,'add','Add','Ajouter'),(141,'list','List','Liste'),(142,'fleet_facilities','Fleet Facilities','FacilitÃ©s du vÃ©hicule'),(143,'fleet_registration','Vehicles','Enregistrement du vÃ©hicule'),(144,'reg_no','Registration No.','NÂ° de reg'),(145,'model_no','Model No.','NÂ° du modÃ¨le '),(146,'engine_no','Engine No.','NÂ° du moteur'),(147,'chasis_no','Chasis No.','NÂ° de chassis'),(148,'total_seat','Total Seat','SiÃ¨ges total'),(149,'seat_numbers','Seat Number','NumÃ©ro des siÃ¨ges'),(150,'owner','Owner','Auteur'),(151,'company','Company Name','SocietÃ©'),(152,'trip','Trip Management','Voyage'),(153,'location','Destination','Localication'),(154,'route','Route','Ligne'),(155,'assign','Assign','Assigner'),(156,'close','Close Trip','Fermer'),(157,'location_name','Destination Name','Nom de la localisation'),(158,'google_map','Google Map','Google maps'),(159,'start_point','Start Point','Point de dÃ©part'),(160,'end_point','End Point','Point d\'arrivÃ©'),(161,'route_name','Route Name','Nom de la ligne'),(162,'distance','Distance','Distance'),(163,'approximate_time','Approximate Time','Temps approximatif'),(164,'stoppage_points','Stoppage Points','Points d\'arrets'),(165,'fleet_registration_no','Fleet Registration No.','NÂ° d\'enregistrement du vÃ©hicule'),(166,'start_date','Start Date','Date de dÃ©but'),(167,'end_date','End Date','Date de fin'),(168,'driver_name','Driver Name','Nom du chauffeur'),(169,'assistants_ids','Assistants','ID d\'assignations'),(170,'sold_ticket','Sold Ticket','Tickets vendus'),(171,'total_income','Total Income','Revenu total'),(172,'total_expense','Total Expense','Total dÃ©penses'),(173,'total_fuel','Total Fuel','Total Fuel'),(174,'trip_comment','Trip Comment','Commentaire du voyage'),(175,'closed_by','Closed by','FermÃ© par '),(176,'ticket','Ticket Management','Ticket'),(177,'passenger','Passenger','Passager'),(178,'middle_name','Middle Name','Autre nom'),(179,'date_of_birth','Date of Birth','Date de naissance'),(180,'passenger_id','Passenger ID.','ID du passager'),(181,'address_line_1','Address Line 1','Adresse 1'),(182,'address_line_2','Address Line 2','Adresse 1'),(184,'zip_code','Zip Code','Code zip'),(186,'name','Name','Nom'),(187,'ac_available','AC available','Clim disponible'),(188,'trip_id','Trip ID.','ID du voyage'),(189,'book','Book','Reserver'),(190,'booking_id','Booking ID.','ID de reservation'),(191,'available_seats','Available Seats','SiÃ¨ges disponibles'),(192,'select_seats','Select Seats','Selectionner les siÃ¨ges'),(193,'time','Time','Temps'),(194,'offer_code','Offer Code','Code de l\'offre'),(195,'price','Price','Prix'),(196,'discount','Discount','Remise'),(197,'request_facilities','Request Facilities','RequÃªtes de facilitÃ©s'),(198,'pickup_location','Pickup Location','Localisation de depart'),(199,'drop_location','Drop Location','Destination'),(200,'amount','Amount','Montant'),(201,'invalid_passenger_id','Invalid Passenger ID','ID du passager invalide'),(202,'invalid_input','Invalid Input','EntrÃ©e invalide'),(203,'booking_date','Booking Date','Date de reservation'),(204,'cancelation_fees','Cancelation Fees','Frais d\'annulation'),(205,'causes','Causes','Causes'),(206,'comment','Comment','Commentaires'),(207,'refund','Refund','Remboursement'),(208,'refund_by','Refund by','RemboursÃ© par'),(209,'feedback','Feedback','Feedback'),(210,'rating','Rating','Notes'),(211,'blood_group','Blood Group','Groupe sanguin'),(212,'religion','Religion','Religion'),(219,'details','Details','Details'),(220,'type_name','Type Name','Nom du type'),(221,'view_details','View Details','Visualiser les dÃ©tails'),(222,'document_pic','Document Picture','Image du document'),(223,'fitness_list','Fitness List','Liste fitness'),(226,'fitness_name','Fitness Name','Nom fitness'),(227,'fitness_description','Description','Description fitness'),(228,'successfully_updated','Your Data Successfully Updated','Mise Ã  jour reussi'),(229,'fitness_period','Fitness Period List','PÃ©riode fitness'),(230,'fitness_id','Fitness Name','ID fitness'),(231,'vehicle_id','Vehicles No','ID vehicule'),(234,'start_milage','Start Milage','CommenÃ§er le kilometrage'),(235,'end_milage','End Milage','Fin du KM'),(236,'agent','Agent','Agent'),(237,'agent_first_name','First Name','Nom Agent'),(238,'agent_second_name','LastName','Autre Nom de l\'agent'),(239,'agent_company_name','Company Name','Non SociÃ©tÃ© d\'agent '),(240,'agent_document_id','Document ID','ID Document agent'),(241,'agent_pic_document','Document File','Doc photo agent'),(242,'agent_phone','Phone','TÃ©lÃ©phone agent'),(243,'agent_mobile','Mobile No','Mobile Agent'),(244,'agent_email','Email','Email Agent'),(245,'agent_address_line_1','Address Line 1','Adresse d\'agent 1'),(246,'agent_address_line_2','Address Line 2','Adresse d\'agent 2'),(247,'agent_address_city','City','Adresse ville d\'agent'),(248,'agent_address_zip_code','ZIP','Code zip agent'),(249,'agent_country','Country','Pays d\'agent'),(252,'sl','SL','sl'),(253,'route_id','Route Name','ID de ligne'),(254,'vehicle_type_id','Vehicle Type','ID type de vÃ©hicule'),(255,'group_price_per_person','Group Price Per Person','Groupe de prix par personne'),(256,'group_size','Group Members','Taille du groupe'),(257,'successfully_saved','Your Data Successfully Saved','SauvegardÃ© avec succÃ¨s'),(258,'account','Account','Compte'),(259,'account_name','Account Name','Nom du compte'),(260,'account_type','Account Type','Type de compte'),(261,'account_transaction','Account Transaction','Transaction du compte'),(262,'account_id','Account Name','ID du compte'),(263,'transaction_description','Transaction Details','Description de la transaction'),(265,'pass_book_id','Passenger ID','ID pass de reservation'),(267,'payment_id','Payment ID','ID de paiement '),(268,'create_by_id','Created By','CrÃ©er l\'ID par'),(269,'offer','Offer','Offres'),(270,'offer_name','Offer Name','Nom de l\'offre'),(271,'offer_start_date','Offer Start Date','Date de debut de l\'offre'),(272,'offer_end_date','Offer Last Date','Datae de fin de l\'offre'),(274,'offer_discount','Discount','Remise de l\'offre '),(275,'offer_terms','Offer Terms','Termes de l\'offre'),(276,'offer_route_id','Route Name','ID offre de voyage'),(277,'offer_number','Offer Number','NÂ° de l\'offre'),(280,'seat_number','Seat No','NÂ° du siÃ¨ge '),(281,'available_seat','Available Seat','SiÃ¨ge disponible'),(282,'owner_name','Owner Name','Nom de l\'auteur'),(283,'agent_picture','Picture','Photo Agent'),(284,'account_add','Add Account','Ajouter un compte'),(285,'add_agent','Add Agent','Ajouter agent'),(286,'hr','Human Resource','Ressource Humaine'),(287,'create_hr','Add Employee','CrÃ©er l\'heure'),(288,'serial','Sl','Serial'),(289,'position','Position','Position'),(290,'phone_no','Phone No','NÂ° de tÃ©lÃ©phone'),(291,'email_no','Email','NÂ° Email'),(292,'picture','Picture','Photo'),(293,'first_name','First Name','Nom'),(294,'second_name','Last Name','DeuxiÃ¨me nom'),(295,'document_id','Documet Id','ID document'),(298,'country','Country','Pays'),(299,'city','City','Ville '),(300,'zip','Zip ','Zip '),(393,'add_passenger','Add Passenger','Ajouter un passager'),(394,'search_tiket','Search Ticket','Rechercher le ticket'),(395,'slogan','Slogan','Slogan'),(396,'website','Website','Site web'),(397,'submit','Submit','Envoyer'),(398,'customer_service','Customer Service','Service client'),(399,'submit_successfully','Submit Successfully!','Envoi reussi'),(400,'add_to_website','Add to Website','Ajouter au site'),(401,'our_customers_say','Our Customers Say','Ce que disent nos clients'),(402,'website_status','Website Status','Status site web'),(403,'title','Title','Titre'),(405,'total_fleet','Total Fleet','Total flotte vÃ©hicules'),(406,'total_passenger','Total Passenger','Total passagers'),(407,'todays_trip','Today\'s Trip','Voyage d\'aujourd\'hui'),(408,'seats_available','Seats Available','SiÃ¨ges disponibles'),(409,'no_trip_avaiable','No trip avaiable','Aucun voyage disponible'),(410,'booking','Booking','Reservations'),(411,'something_went_worng','Something went worng!','Quelque chose a mal fonctionnÃ©'),(412,'paypal_email','Paypal Email','Email Paypal'),(413,'currency','Currency','DÃ©vise'),(414,'reports','Reports','Rapports'),(415,'search','Search','Rechercher'),(417,'go','Go','Lancer'),(418,'all','All','Tout'),(419,'filter','Filter','Filter'),(420,'last_year_progress','Last Year Progress','ProgrÃ¨s l\'an dernier'),(421,'download_document','Download Document','TÃ©lÃ©charger le document'),(422,'mobile','Mobile No.','Mobile '),(424,'account_list','Account List','Liste de comptes'),(425,'add_income','Add Income','Ajouter une entrÃ©e'),(426,'add_expense','Add Expense','Ajouter une dÃ©pense'),(427,'agent_list','Agent List','Liste d\'agent'),(428,'add_fitness','Add Fitness','Ajouter fitness'),(429,'fitness','Fitness','Fitness'),(430,'add_fitness_period','Add Fitness Period','Ajouter PÃ©riode fitness'),(431,'employee_type','Employee Type','Type d\'employÃ©'),(432,'employee_list','Employee List','Liste d\'employÃ©'),(433,'add_offer','Add Offer','Ajouter une offre'),(434,'offer_list','Offer List','Liste d\'offre'),(435,'add_price','Add Price','Ajouter un prix'),(436,'price_list','Price List','Liste de prix'),(437,'layout','Layout','AperÃ§u'),(438,'last_seat_availabe','Last Seat Available','Dernier siÃ¨ge disponible'),(439,'paypal_transaction','Paypal Transaction','Transaction paypal'),(440,'enable','Enable','Activer'),(441,'disable','Disable','Desactiver'),(442,'payment_gateway','Payment Gateway','Passerelle de paiement'),(443,'payment_type','Payment Type','Type de paiement'),(444,'payment_status','Payment Status','Status de paiement'),(445,'downtime','Down Time','Temps hors service'),(446,'select_bus','Select Bus','Selectionner le bus'),(447,'user_info','Passenger Information','Informations d\'utilisateur'),(448,'personal_info','Personal Information','Informations personnelles'),(449,'booking_info','Booking Information','Info de reservation'),(450,'update_your_profile','Edit your Profile','Mettre Ã  jour votre profil'),(451,'email_configue','Email Configuration','Reglage Email'),(452,'protocol','Protocol','Protocol'),(453,'smtp_host','SMTP Host','host smtp'),(454,'smtp_port','SMTP Port','port smtp'),(455,'smtp_pass','SMTP Password','pass smtp'),(456,'mailtype','Mail Type','Type de mail'),(457,'smtp_user','SMTP User','utilisateur smtp'),(458,'html','Html','HTML'),(459,'text','Text','Texte '),(460,'email_send_to_passenger',' Email Sent Sucessfully','Mail envoyÃ© au passager'),(461,'bank','Bank Information','Banque'),(462,'instruction','Instruction','Instruction'),(463,'account_details','Account Details','Details du compte'),(464,'bank_logo','Bank Logo','Logo banque'),(465,'bank_name','Bank Name','Nom de banque'),(466,'bank_trans','Bank','Transation banque'),(467,'transaction_successfully_send','Your Information successfully Send','Transaction envoyÃ© avec succÃ¨s'),(468,'confirmation','Confirmation','Confirmation'),(469,'account_no','Account No','NÂ° du compte'),(470,'transaction_no','Transaction No','NÂ° de la transaction'),(471,'paypal','Paypal','Paypal'),(472,'cash','Cash','Cash'),(473,'paypal_checkout','Paypal Checkout','Checkout Paypal'),(474,'confirm_banking','Confirm Banking','Confirmation bancaire'),(475,'payment_information','Payment Information','Informaition de paiement '),(476,'email_gritting','Congratulation Mr.','Email personalisÃ©'),(477,'email_ticket_idinfo','Your Purchase Ticket No-','ID info email'),(478,'ticket_confirmation','Unpaid Bank Booking List','Confirmation ticket'),(479,'deny','Deny','Rejeter'),(480,'confirm','CONFIRM','Confirmer'),(481,'note','Note','Note'),(482,'accournt_no','Account Number','NÂ° Compte'),(483,'payer_name','Payer Name','Nom du payeur'),(484,'accournt_non','Account Number','NÂ° Compte'),(485,'confirm_booking','Confirm Booking','Confirmer la rÃ©servation'),(486,'account_num','Account Number','NumÃ©ro du compte'),(487,'invalid_logo','Invalid Logo, Please upload gif|jpg|png|jpeg|ico type image','Logo invalide'),(488,'invalid_favicon','Invalid Favicon, Please upload gif|jpg|png|jpeg|ico type image','Favicon invalide'),(489,'print_ticket','Print Ticket','Imprimmer le ticket'),(490,'cancel_ticket','Cancel Ticket','Annuler le ticket'),(491,'email_not_send','Email Not Send','Email non envoyÃ©'),(492,'timezone','Time Zone','Fuseau horaire'),(493,'menu_permission_form','Menu Permission Form','Position du formulaire de menu'),(494,'permission_setup','Permission setup','Reglage de permission'),(495,'menu_permission_list','Menu Permission List','Liste de permission menu'),(496,'add_fleet_type','Add Fleet Type','Ajouter type de flotte'),(497,'fleet_type_list','Fleet Type List','LIste type de vÃ©hicule'),(498,'add_facilities','Add Facilities','Ajouter les facilitÃ©s'),(499,'facilities_list','Facilities List','Liste de facilitÃ©s'),(500,'add_registration','Add Vehicle','Ajouter une souscription'),(501,'registration_list','Vehicle List','Liste d\'enregistrement'),(502,'refund_list','Refund List','Liste de remboursement'),(503,'add_refund','Add Refund','Ajouter un remboursement'),(504,'booking_list','Booking List','Liste de reservation'),(505,'add_booking','Add Booking','Ajouter une rÃ©servation'),(506,'passenger_list','Passenger List','Liste des passagers'),(507,'assign_list','Assignment List','Liste d\'assignation'),(508,'close_list','Close List','Liste fermÃ©'),(509,'add_assign','Assign Vehicle To Trip','Ajouter une assignation'),(510,'route_list','Route List','Liste de ligne'),(511,'add_route','Add Route','Ajouter une ligne'),(512,'location_list','Destination List','Liste de localisation'),(513,'add_location','Add Destination','Ajouter localisation'),(514,'add_role','Add Role','Ajouter un role'),(515,'add_bank','Add Bank','Ajouter une banque'),(516,'bank_list','Bank List','Liste de banque'),(517,'role_name','Role Name','Nom du role'),(518,'role_description','Role Description','Description du role'),(519,'role_list','Role List','Liste de role'),(520,'user_access_role','User Access Role','Role d\'utilisateur'),(521,'role','Role','Role'),(522,'role_permission','Role Permission','Permission du role'),(523,'web_setting','Web Setting','Reglages web'),(524,'ticket_offer','Ticket Offer','Offre de tickets'),(525,'shedules','Shedules','Horaires'),(526,'add_shedule','Add Shedule','Ajouter un planning'),(527,'shedule_list','Shedule LIst','Liste d\'horaires'),(528,'shedule_time','Shedule Time','Temps de planning'),(529,'travel_slogan','On the placess you\'ll go','Slogan du voyage'),(530,'travel_sub_slogan','It is not down in any map; true place naver are.','Sous slogan du voyage'),(531,'search_tour','Search Tours','Rechercher un voyage'),(532,'find_dream','Find your dream tour today!','Rechercher reve'),(533,'find_now','Find now!','Rechercher maintenant'),(534,'start','Start','Demarrer '),(535,'end','End','Fin'),(536,'paypal_payment_paynow','PAYPAL PAY NOW','Paiement paypal Payer maintenant'),(537,'passenger_name','Passenger Name','Nom du passager'),(538,'facilities','Facilities','FacilitÃ©s'),(539,'seat_name','Seat Name','Nom du siÃ¨ge'),(540,'adult','Adult','Adulte'),(541,'child','Child','Enfant'),(542,'special','Special','Special'),(543,'grand_total','Grand Total','Grand Total'),(544,'book_for_one_hour','Book For One Hour','Reserver pour une heure'),(545,'unpaid_cash_booking_list','Unpaid Cash Booking List','Liste des rÃ©servations non payÃ©s'),(546,'bank_transaction','Bank Transaction','Transaction de banque'),(547,'payment_term_andcondition','Payment Terms & Conditions','Terms & conditions de paiement'),(548,'add_terms','Add Terms','Ajouter les termes'),(549,'terms_list','Terms & Condition','Liste de termes'),(550,'how_to_pay','How to Pay','Comment Payer'),(551,'terms_and_condition','Terms And Conditions','Termes et conditions'),(552,'nid','National ID','NÂ° ID'),(553,'add_trip','Create Trip','Ajouter un voyage'),(554,'trips','Trips','Voyages'),(555,'trip_list','Trip LIst','Liste de voyage'),(556,'trip_title','Trip Title','Titre du voyage'),(557,'types','Types','Types'),(558,'assigns','Assign','Assignation'),(559,'see_all','See All','Voir tout'),(560,'no_o_ticket','NO of Tickts','NÂ° du ticket'),(561,'seats','Seat(s)','SiÃ¨ges'),(562,'prices','Price(s)','Prix'),(563,'group_price','Group Price','Groupe de prix'),(564,'total','Total','Total'),(565,'passenger_details','Passenger Details','Details du passager'),(566,'journey_details','Journey Details','Details du voyage'),(567,'term_n_condition','Term & Condition','Termes & Conditions'),(568,'enter_login_info','Enter Your Login Info','Entrer les infos de connexion'),(569,'select_bank_name','Select Bank Name','Selectionner le nom de la banque'),(570,'enter_transaction_id','Enter Transaction Id','Entrer ID de la transaction'),(571,'booked_seat','Booked Seat','SiÃ¨ge reservÃ©'),(572,'selected_seat','Selected Seat','SiÃ¨ges selectionnÃ©s'),(573,'operator','Operator','Operateur'),(574,'fare','Fare','Flotte '),(575,'arrival','Arrival','ArrivÃ©e'),(576,'departure','Departure','DÃ©part'),(577,'duration','Duration','DurÃ©e'),(578,'no_of_ticket','No Of tickets','NÂ° du ticket'),(579,'special_fare','Special Price','Tarif special'),(580,'child_fare','Children Fare','Flotte pour enfant'),(581,'adult_fare','Adult Fare','Tarif Adulte'),(582,'ticket_information','Ticket Information','Information du ticket'),(583,'brand_name','Brand Name','Nom de la marque'),(584,'children_seat','Children Seat','SiÃ¨ges pour enfant'),(585,'special_seat','Special Seat','SiÃ¨ge spÃ©cial'),(586,'menu_item_list','Menu Item List','Liste d\'Ã©lÃ©ment du menu'),(587,'parent_menu','Parent Menu','Menu parent'),(588,'page_url','Page Url','URL de la page'),(589,'menu_title','Menu title','Titre du menu'),(590,'ins_menu_for_application','Insert Menu for the application','Menu instruction pour application'),(591,'yearly_progressbar','Yearly Progress Bar','Bar annuelle de progesssion'),(592,'child_price','Child Price','Prix pour enfant'),(593,'adult_price','Adult Price','Prix adulte'),(594,'special_price','Special Price','Prix spÃ©cial'),(595,'how_to_use','HOW TO USE','Comment utiliser'),(596,'bank_commission','Bank Commission','Commission de la banque'),(597,'bank_charge','Bank Charge','Facturation de banque'),(598,'type','Type','Type'),(599,'amount_paid','Amount Paid','Montant payÃ©'),(600,'txn_id','TXN ID','ID tax'),(601,'item_number','Item Number','NumÃ©ro de l\'Ã©lÃ©ment'),(602,'paument_success_message','Your Payment Successfully Paid','Message de paiement avec succÃ¨s'),(603,'unpaid','Unpaid','Non payÃ©'),(604,'paid','Paid','PayÃ©'),(605,'trip_name','Trip Name','Nom du voyage'),(606,'account_number','Account Number','NumÃ©ro de compte'),(607,'owner_phone','Owner Phone No','NumÃ©ro de l\'auteur'),(608,'passenger_email','Passenger Email','Email du passager'),(609,'child_no','Child','NÂ° de l\'enfant'),(610,'close_trip','Close Trip','Fermer le voyage'),(611,'agent_commission','Agent Commission','Commission agent'),(612,'credit','Credit','CrÃ©dit'),(613,'debit','Debit','DÃ©biter'),(614,'balance','Balance','Solde'),(615,'agent_log','Agent Log','Blog agent'),(616,'total_ticket','Total Ticket','Ticket total'),(617,'total_amount','Total Amount','Montant total'),(618,'total_commission','Total Commission','Commission total'),(619,'select_agent_name','Select Agent Name','Selectionner le nom de l\'agent'),(620,'commission_amount','Commission Amout','Montant commission'),(621,'total_price','Total Price','Prix total'),(622,'commission_rate','Commission Rate','Taux de commission'),(623,'ticket_sales','Ticket Sale','Ventes de tickets'),(624,'vehicle','Vehicle','Vehicule'),(625,'ticket_sales_report_for','Ticket Sales Report For','Rapport de vente de tickets pour'),(626,'agent_report','Agent Report','Rapport agent'),(627,'agent_ledger','Agent Ledger','Registre d\'agent'),(628,'booking_details','Journey Details','Details de reservation'),(630,'websites','Go to Frontend','Sites web'),(631,'backup_and_download','Backup && Download','Sauvegarde et tÃ©lÃ©chargement'),(632,'distance_kmmile','1 Km/Mile','Distance kilometrique'),(633,'children','Children','Enfants'),(634,'login_info','Login Information','Login Information'),(635,'please_configure_your_mail','Please configure your mail.','Please configure your mail.'),(636,'error','Error','Erreur'),(637,'settings_not_found','No Setting Here','Aucun paramÃ¨tre ici'),(638,'location_not_found','Location Not Found',' emplacement non trouvÃ©'),(639,'fleets_not_found','Fleets Not Found','flotte non trouvÃ©e'),(640,'image_not_found','Image Not Found','image non trouvÃ©e'),(641,'no_trip_available','No Trip Available','Aucun voyage disponible'),(642,'required_field','Fields Are Required ','Les champs sont obligatoires'),(643,'successfully_login','Successfully Loged In','connectÃ© avec succÃ¨s'),(644,'no_data_found','No Data Found','Aucune donnÃ©e disponible'),(645,'registrantion','Registration','enregistrement'),(646,'forgot_password','Forgot Password','mot de passe oubliÃ©'),(647,'register','Register',' registre'),(648,'location_details','Location Details','DÃ©tails de l\'emplacement'),(649,'journey_date','Journey Date',' Date de voyage'),(650,'select_start_point','Select Start Point','SÃ©lectionnez le point de dÃ©part'),(651,'select_end_point','Select End Point',' SÃ©lectionnez le point final'),(652,'select_fleet_type','Select Fleet Type',' SÃ©lectionnez le type de flotte'),(653,'total_seats','Total Seats','Nombre total de places'),(654,'pickup_and_drop','Pickup and Drop','Pickup and Drop'),(655,'select_pickup_location','Select Pickup Location','SÃ©lectionnez l\'emplacement de ramassage'),(656,'select_drop_location','Select Drop Location','SÃ©lectionnez un lieu de dÃ©pÃ´t'),(657,'tap_to_select_seat','Tap To Select Seat',' Appuyez sur pour sÃ©lectionner un siÃ¨ge'),(658,'seat_layout','Seat Layout','Disposition du siÃ¨ge'),(659,'continue','Continue','continuer'),(660,'full_name','Full Name','Nom complet'),(661,'email_address','Email Address',' Adresse Ã©lectronique'),(662,'journery_details','Journey Details','DÃ©tails du voyage'),(663,'select_your_payment_method','Select Your Payment Method','SÃ©lectionnez le mode de paiement'),(664,'bank_transfer','Bank Transfer','Virement bancaire'),(665,'cash_payment','Cash Payment','Paiement en espÃ¨ces'),(666,'select_your_bank_first','Select Bank Name First','SÃ©lectionnez le nom de la banque en premier'),(667,'transaction_id','Transaction Id','Identifiant de transaction'),(668,'select_journey_date','Select Journey Date','SÃ©lectionnez la date du voyage'),(669,'seat_details','Seat Details ','DÃ©tails du siÃ¨ge'),(670,'seat_n','Seat Number','NumÃ©ro de siÃ¨ge'),(671,'last_name','Last Name','Nom de famille'),(672,'confirm_password','Confirm Password','Confirmez le mot de passe'),(673,'no_facilities_available','No facilities Available','Aucun Ã©quipement disponible'),(674,'must_put_email_pass','Must Put Email and Password',' Doit mettre l\'email et le mot de passe'),(675,'havn_nt_acc','Have n\'t Account','Je n\'ai pas de compte'),(676,'email_and_password_d_match','Email And Password doesn\'t Match',' Email ou mot de passe ne correspond pas'),(677,'must_put_email','Must Put Your Email','Doit mettre un email'),(678,'select_pickup_and_drop_location','Select Pickup and Drop Location',' SÃ©lectionnez le lieu de ramassage et de dÃ©pose'),(679,'select_your_seat_properly','Select Your','Choisissez votre siÃ¨ge correctement'),(680,'check_term_and_condition','Check Terms and Condition','VÃ©rifier les termes et conditions'),(681,'check_your_mail','Please Check Your Mail','VÃ©rifier votre courrier'),(682,'plz_check_your_seat','Please Check Your Seat','S\'il vous plaÃ®t vÃ©rifier votre siÃ¨ge'),(683,'no_rout_available','No rout Available','Pas de dÃ©route disponible'),(684,'your_booking_complete','Your Booking Successfully Completed','Votre rÃ©servation effectuÃ©e avec succÃ¨s'),(685,'bank_booking_message','Check Bank Name,Transaction ID','SÃ©lectionnez le nom de la banque, l\'identifiant de la transaction'),(686,'seat_properly','Seat Properly','Bien assis'),(687,'must_put_atlest_seat_num','You Must put Atleast 1 seat on adult/child/Special','Vous devez mettre au moins 1 siÃ¨ge sur adulte / enfant / spÃ©cial'),(688,'paypal_payment','Paypal Payment','Paiement PayPal'),(689,'bank_information','Bank Information',' Information bancaire'),(690,'change_select_end_point','& Change select end point','& Modifier le point d\'arrivÃ©e sÃ©lectionnÃ©'),(691,'must_put_your_mail','You must put your email','Vous devez mettre votre email'),(692,'invalid_email_address','Invalid Email Address','Adresse e-mail invalide'),(693,'plz_check_your_mail_to_reset_passw','Please Check Your email to reset Password','Please Check Your email to reset Password'),(694,'edit_profile','EDIT PROFILE','EDITER LE PROFIL'),(695,'select_profile_image','Select Profile Image','Enregistrer l\'image de profil'),(696,'save_profile','Save Profile','Enregistrer le profil'),(697,'view_profile','View Profile','Voir le profil'),(698,'developed_by_bdtask','Developed By BDTASK',' DÃ©veloppÃ© par BDTASK'),(699,'use_new_password_to_update_password','Use New Password to Update Password','Utiliser un nouveau mot de passe pour mettre Ã  jour le mot de passe'),(700,'pass_username_cant_be_empty','Password, First Name, Last Name can\'t empty. Use New password to update password , otherwise type old password','Le mot de passe, le prÃ©nom et le nom de famille ne peuvent pas Ãªtre vides. Utilisez Nouveau mot de passe pour mettre Ã  jour le mot de passe, sinon tapez ancien mot de passe'),(701,'no','NO','NON'),(702,'login_again','Data Save Successfully. Please Login Again','Sauvegarde des donnÃ©es avec succÃ¨s. Veuillez vous reconnecter');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
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
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'Human Resource','Human Resource information module','application/modules/hr/assets/images/thumbnail.jpg','hr',1);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_permission`
--

DROP TABLE IF EXISTS `module_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_permission`
--

LOCK TABLES `module_permission` WRITE;
/*!40000 ALTER TABLE `module_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofr_offer`
--

DROP TABLE IF EXISTS `ofr_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofr_offer` (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_name` varchar(100) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `offer_code` varchar(50) DEFAULT NULL,
  `offer_discount` float DEFAULT NULL,
  `offer_terms` varchar(30) DEFAULT NULL,
  `offer_route_id` varchar(50) DEFAULT NULL,
  `offer_number` int(15) DEFAULT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofr_offer`
--

LOCK TABLES `ofr_offer` WRITE;
/*!40000 ALTER TABLE `ofr_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofr_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_informations`
--

DROP TABLE IF EXISTS `payment_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `how_to_pay` text NOT NULL,
  `terms_and_condition` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_informations`
--

LOCK TABLES `payment_informations` WRITE;
/*!40000 ALTER TABLE `payment_informations` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pri_price`
--

DROP TABLE IF EXISTS `pri_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pri_price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` varchar(50) DEFAULT NULL,
  `vehicle_type_id` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `children_price` float NOT NULL,
  `special_price` float NOT NULL,
  `group_price_per_person` float DEFAULT '0',
  `group_size` int(15) DEFAULT '0',
  PRIMARY KEY (`price_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pri_price`
--

LOCK TABLES `pri_price` WRITE;
/*!40000 ALTER TABLE `pri_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `pri_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_menu_item`
--

DROP TABLE IF EXISTS `sec_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_menu_item`
--

LOCK TABLES `sec_menu_item` WRITE;
/*!40000 ALTER TABLE `sec_menu_item` DISABLE KEYS */;
INSERT INTO `sec_menu_item` VALUES (69,'account_list','account_form','account',NULL,0,2,'2018-07-16 00:00:00'),(70,'Enquiry','enquiry/view','enquiry',0,0,2,'2018-07-16 00:00:00'),(71,'setting','enquiry/setting','enquiry',NULL,0,2,'2018-07-16 00:00:00'),(72,'agent_list','agent/agent_form','agent',NULL,0,2,'2018-07-16 00:00:00'),(73,'fitness_list','fitness/fit_form','fitness',NULL,0,2,'2018-07-16 00:00:00'),(74,'fitness_period','fitness/fit_period_form','fitness',NULL,0,2,'2018-07-16 00:00:00'),(75,'fleet_type','','fleet',NULL,0,2,'2018-07-16 00:00:00'),(76,'add_fleet_type','fleet/type/form','fleet',75,0,2,'2018-07-16 00:00:00'),(77,'fleet_type_list','fleet/type/list','fleet',75,0,2,'2018-07-16 00:00:00'),(78,'fleet_facilities','','fleet',NULL,0,2,'2018-07-16 00:00:00'),(79,'add_facilities','fleet/facilities/form','fleet',78,0,2,'2018-07-16 00:00:00'),(80,'facilities_list','fleet/facilities/list','fleet',78,0,2,'2018-07-16 00:00:00'),(81,'account_transaction','transaction_form','account',0,0,2,'2018-07-16 00:00:00'),(82,'bank','','account',0,0,2,'2018-07-16 00:00:00'),(83,'bank_list','account/bank/list','account',82,0,2,'2018-07-16 00:00:00'),(84,'add_bank','account/bank/form','account',82,0,2,'2018-07-16 00:00:00'),(85,'offer_list','offer/offer_form','offer',0,0,2,'2018-07-17 00:00:00'),(86,'price_list','price/price_form','price',0,0,2,'2018-07-17 00:00:00'),(87,'booking','reports/booking/list','reports',130,0,2,'2018-07-17 00:00:00'),(88,'assign','reports/assign/list','reports',130,0,2,'2018-07-17 00:00:00'),(89,'passenger','','ticket',0,0,2,'2018-07-17 00:00:00'),(90,'add_passenger','ticket/passenger/form','ticket',89,0,2,'2018-07-17 00:00:00'),(91,'passenger_list','ticket/passenger/list','ticket',89,0,2,'2018-07-17 00:00:00'),(92,'booking_info','','ticket',0,0,2,'2018-07-17 00:00:00'),(93,'add_booking','ticket/booking/form','ticket',92,0,2,'2018-07-17 00:00:00'),(94,'booking_list','ticket/booking/list','ticket',92,0,2,'2018-07-17 00:00:00'),(95,'location','','trip',0,0,2,'2018-07-17 00:00:00'),(96,'add_location','trip/location/form','trip',95,0,2,'2018-07-17 00:00:00'),(97,'location_list','trip/location/list','trip',95,0,2,'2018-07-17 00:00:00'),(98,'route','','trip',0,0,2,'2018-07-17 00:00:00'),(99,'add_route','trip/route/form','trip',98,0,2,'2018-07-17 00:00:00'),(100,'route_list','trip/route/list','trip',98,0,2,'2018-07-17 00:00:00'),(101,'websites','','website',NULL,0,2,'2018-07-18 00:00:00'),(102,'web_setting','','website',0,0,2,'2018-07-18 00:00:00'),(103,'email_configue','','website',0,0,2,'2018-07-18 00:00:00'),(104,'ticket_offer','','website',0,0,2,'2018-07-18 00:00:00'),(105,'payment_term_andcondition','','ticket',0,0,2,'2018-07-30 00:00:00'),(108,'unpaid_cash_booking_list','booking/unpaid_cashbooking','ticket',0,0,2,'2018-07-30 00:00:00'),(109,'employee_type','type_view','hr',0,0,2,'2018-07-30 00:00:00'),(110,'employee_list','viewhr','hr',0,0,2,'2018-07-30 00:00:00'),(111,'fleet_registration','registration/form','fleet',0,0,2,'2018-08-14 00:00:00'),(112,'add_registration','registration/form','fleet',111,0,2,'2018-08-14 00:00:00'),(113,'registration_list','registration/list','fleet',111,0,2,'2018-08-14 00:00:00'),(114,'ticket_confirmation','','ticket',0,0,2,'2018-08-14 00:00:00'),(115,'refund','','ticket',0,0,2,'2018-08-14 00:00:00'),(116,'add_refund','refund/form','ticket',115,0,2,'2018-08-14 00:00:00'),(117,'refund_list','refund/list','ticket',115,0,2,'2018-08-14 00:00:00'),(118,'shedules','','trip',0,0,2,'2018-08-14 00:00:00'),(119,'add_shedule','shedule/shedule_form','trip',118,0,2,'2018-08-14 00:00:00'),(120,'shedule_list','shedule/list','trip',118,0,2,'2018-08-14 00:00:00'),(121,'trips','','trip',0,0,2,'2018-08-14 00:00:00'),(122,'add_trip','trip/form','trip',121,0,2,'2018-08-14 00:00:00'),(123,'trip_list','trip/list','trip',121,0,2,'2018-08-14 00:00:00'),(124,'assigns','','trip',0,0,2,'2018-08-14 00:00:00'),(125,'add_assign','assign/form','trip',124,0,2,'2018-08-14 00:00:00'),(126,'assign_list','assign/list','trip',124,0,2,'2018-08-14 00:00:00'),(127,'close','','trip',0,0,2,'2018-08-14 00:00:00'),(128,'close_list','close/list','trip',127,0,2,'2018-08-14 00:00:00'),(129,'account','','account',0,0,2,'2018-08-14 00:00:00'),(130,'reports','','reports',0,0,2,'2018-09-11 00:00:00'),(131,'agent_log','agent/agent_details','reports',130,0,2,'2018-09-11 00:00:00');
/*!40000 ALTER TABLE `sec_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role_permission`
--

DROP TABLE IF EXISTS `sec_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1165 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role_permission`
--

LOCK TABLES `sec_role_permission` WRITE;
/*!40000 ALTER TABLE `sec_role_permission` DISABLE KEYS */;
INSERT INTO `sec_role_permission` VALUES (624,1,69,1,0,0,0,2,'2018-09-06 11:03:51'),(625,1,81,0,0,0,0,2,'2018-09-06 11:03:51'),(626,1,82,0,0,0,0,2,'2018-09-06 11:03:51'),(627,1,83,0,0,0,0,2,'2018-09-06 11:03:51'),(628,1,84,0,0,0,0,2,'2018-09-06 11:03:51'),(629,1,129,0,0,0,0,2,'2018-09-06 11:03:51'),(630,1,72,0,0,0,0,2,'2018-09-06 11:03:51'),(631,1,70,0,0,0,0,2,'2018-09-06 11:03:51'),(632,1,71,0,0,0,0,2,'2018-09-06 11:03:51'),(633,1,73,0,0,0,0,2,'2018-09-06 11:03:51'),(634,1,74,0,0,0,0,2,'2018-09-06 11:03:51'),(635,1,75,0,0,0,0,2,'2018-09-06 11:03:51'),(636,1,76,0,0,0,0,2,'2018-09-06 11:03:51'),(637,1,77,0,0,0,0,2,'2018-09-06 11:03:51'),(638,1,78,0,0,0,0,2,'2018-09-06 11:03:51'),(639,1,79,0,0,0,0,2,'2018-09-06 11:03:51'),(640,1,80,0,0,0,0,2,'2018-09-06 11:03:51'),(641,1,111,0,0,0,0,2,'2018-09-06 11:03:51'),(642,1,112,0,0,0,0,2,'2018-09-06 11:03:51'),(643,1,113,0,0,0,0,2,'2018-09-06 11:03:51'),(644,1,109,0,0,0,0,2,'2018-09-06 11:03:51'),(645,1,110,0,0,0,0,2,'2018-09-06 11:03:51'),(646,1,85,0,0,0,0,2,'2018-09-06 11:03:51'),(647,1,86,0,0,0,0,2,'2018-09-06 11:03:51'),(648,1,87,0,0,0,0,2,'2018-09-06 11:03:51'),(649,1,88,0,0,0,0,2,'2018-09-06 11:03:51'),(650,1,89,1,1,1,1,2,'2018-09-06 11:03:51'),(651,1,90,1,1,1,1,2,'2018-09-06 11:03:51'),(652,1,91,1,1,1,1,2,'2018-09-06 11:03:51'),(653,1,92,1,1,1,1,2,'2018-09-06 11:03:51'),(654,1,93,1,1,0,0,2,'2018-09-06 11:03:51'),(655,1,94,1,1,1,0,2,'2018-09-06 11:03:51'),(656,1,105,0,0,0,0,2,'2018-09-06 11:03:51'),(657,1,106,0,0,0,0,2,'2018-09-06 11:03:51'),(658,1,107,0,0,0,0,2,'2018-09-06 11:03:51'),(659,1,108,0,0,0,0,2,'2018-09-06 11:03:51'),(660,1,114,0,0,0,0,2,'2018-09-06 11:03:51'),(661,1,115,0,0,0,0,2,'2018-09-06 11:03:51'),(662,1,116,0,0,0,0,2,'2018-09-06 11:03:51'),(663,1,117,0,0,0,0,2,'2018-09-06 11:03:51'),(664,1,95,0,0,0,0,2,'2018-09-06 11:03:51'),(665,1,96,0,0,0,0,2,'2018-09-06 11:03:51'),(666,1,97,0,0,0,0,2,'2018-09-06 11:03:51'),(667,1,98,0,0,0,0,2,'2018-09-06 11:03:51'),(668,1,99,0,0,0,0,2,'2018-09-06 11:03:51'),(669,1,100,0,0,0,0,2,'2018-09-06 11:03:51'),(670,1,118,0,0,0,0,2,'2018-09-06 11:03:51'),(671,1,119,0,0,0,0,2,'2018-09-06 11:03:51'),(672,1,120,0,0,0,0,2,'2018-09-06 11:03:51'),(673,1,121,0,0,0,0,2,'2018-09-06 11:03:51'),(674,1,122,0,0,0,0,2,'2018-09-06 11:03:51'),(675,1,123,0,0,0,0,2,'2018-09-06 11:03:51'),(676,1,124,0,0,0,0,2,'2018-09-06 11:03:51'),(677,1,125,0,0,0,0,2,'2018-09-06 11:03:51'),(678,1,126,0,0,0,0,2,'2018-09-06 11:03:51'),(679,1,127,0,0,0,0,2,'2018-09-06 11:03:51'),(680,1,128,0,0,0,0,2,'2018-09-06 11:03:51'),(681,1,101,0,0,0,0,2,'2018-09-06 11:03:51'),(682,1,102,0,0,0,0,2,'2018-09-06 11:03:51'),(683,1,103,0,0,0,0,2,'2018-09-06 11:03:51'),(684,1,104,0,0,0,0,2,'2018-09-06 11:03:51'),(1104,2,69,1,0,0,0,2,'2018-11-15 01:11:30'),(1105,2,81,1,1,1,0,2,'2018-11-15 01:11:30'),(1106,2,82,1,1,1,0,2,'2018-11-15 01:11:30'),(1107,2,83,1,1,0,0,2,'2018-11-15 01:11:30'),(1108,2,84,1,1,0,0,2,'2018-11-15 01:11:30'),(1109,2,129,1,0,0,0,2,'2018-11-15 01:11:30'),(1110,2,72,1,0,0,0,2,'2018-11-15 01:11:30'),(1111,2,70,1,1,1,0,2,'2018-11-15 01:11:30'),(1112,2,71,0,1,0,0,2,'2018-11-15 01:11:30'),(1113,2,73,1,0,0,0,2,'2018-11-15 01:11:30'),(1114,2,74,1,0,0,0,2,'2018-11-15 01:11:30'),(1115,2,75,1,1,0,0,2,'2018-11-15 01:11:30'),(1116,2,76,1,1,0,0,2,'2018-11-15 01:11:30'),(1117,2,77,1,1,0,0,2,'2018-11-15 01:11:30'),(1118,2,78,1,1,0,0,2,'2018-11-15 01:11:30'),(1119,2,79,1,1,0,0,2,'2018-11-15 01:11:30'),(1120,2,80,1,1,0,0,2,'2018-11-15 01:11:30'),(1121,2,111,1,1,0,0,2,'2018-11-15 01:11:30'),(1122,2,112,1,1,0,0,2,'2018-11-15 01:11:30'),(1123,2,113,1,1,0,0,2,'2018-11-15 01:11:30'),(1124,2,109,1,1,0,0,2,'2018-11-15 01:11:30'),(1125,2,110,1,1,0,0,2,'2018-11-15 01:11:30'),(1126,2,85,1,0,0,0,2,'2018-11-15 01:11:30'),(1127,2,86,1,1,1,0,2,'2018-11-15 01:11:30'),(1128,2,87,1,0,0,0,2,'2018-11-15 01:11:30'),(1129,2,88,1,0,0,0,2,'2018-11-15 01:11:30'),(1130,2,130,1,1,1,1,2,'2018-11-15 01:11:30'),(1131,2,131,1,0,1,0,2,'2018-11-15 01:11:30'),(1132,2,89,1,1,0,0,2,'2018-11-15 01:11:30'),(1133,2,90,1,1,0,0,2,'2018-11-15 01:11:30'),(1134,2,91,1,1,0,0,2,'2018-11-15 01:11:30'),(1135,2,92,1,1,0,0,2,'2018-11-15 01:11:30'),(1136,2,93,1,1,1,1,2,'2018-11-15 01:11:30'),(1137,2,94,1,1,1,1,2,'2018-11-15 01:11:30'),(1138,2,105,1,1,1,0,2,'2018-11-15 01:11:30'),(1139,2,108,1,1,1,0,2,'2018-11-15 01:11:30'),(1140,2,114,1,1,1,0,2,'2018-11-15 01:11:30'),(1141,2,115,1,1,1,0,2,'2018-11-15 01:11:30'),(1142,2,116,1,1,1,0,2,'2018-11-15 01:11:30'),(1143,2,117,1,1,1,0,2,'2018-11-15 01:11:30'),(1144,2,95,1,1,0,0,2,'2018-11-15 01:11:30'),(1145,2,96,1,1,0,0,2,'2018-11-15 01:11:30'),(1146,2,97,1,1,0,0,2,'2018-11-15 01:11:30'),(1147,2,98,1,1,0,0,2,'2018-11-15 01:11:30'),(1148,2,99,1,1,0,0,2,'2018-11-15 01:11:30'),(1149,2,100,1,1,0,0,2,'2018-11-15 01:11:30'),(1150,2,118,1,1,0,0,2,'2018-11-15 01:11:30'),(1151,2,119,1,1,0,0,2,'2018-11-15 01:11:30'),(1152,2,120,1,1,0,0,2,'2018-11-15 01:11:30'),(1153,2,121,1,1,0,0,2,'2018-11-15 01:11:30'),(1154,2,122,1,1,0,0,2,'2018-11-15 01:11:30'),(1155,2,123,1,1,0,0,2,'2018-11-15 01:11:30'),(1156,2,124,1,1,0,0,2,'2018-11-15 01:11:30'),(1157,2,125,1,1,0,0,2,'2018-11-15 01:11:30'),(1158,2,126,1,1,0,0,2,'2018-11-15 01:11:30'),(1159,2,127,1,1,0,0,2,'2018-11-15 01:11:30'),(1160,2,128,1,1,0,0,2,'2018-11-15 01:11:30'),(1161,2,101,1,1,0,0,2,'2018-11-15 01:11:30'),(1162,2,102,1,1,0,0,2,'2018-11-15 01:11:30'),(1163,2,103,1,1,0,0,2,'2018-11-15 01:11:30'),(1164,2,104,1,1,0,0,2,'2018-11-15 01:11:30');
/*!40000 ALTER TABLE `sec_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role_tbl`
--

DROP TABLE IF EXISTS `sec_role_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role_tbl`
--

LOCK TABLES `sec_role_tbl` WRITE;
/*!40000 ALTER TABLE `sec_role_tbl` DISABLE KEYS */;
INSERT INTO `sec_role_tbl` VALUES (1,'Test Role','This is test role',2,'2018-07-16 02:49:29',1),(2,'Agent Role','sjdf',2,'2018-08-18 11:48:57',1);
/*!40000 ALTER TABLE `sec_role_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_access_tbl`
--

DROP TABLE IF EXISTS `sec_user_access_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_access_tbl`
--

LOCK TABLES `sec_user_access_tbl` WRITE;
/*!40000 ALTER TABLE `sec_user_access_tbl` DISABLE KEYS */;
INSERT INTO `sec_user_access_tbl` VALUES (1,1,3),(2,1,1),(3,2,4),(4,2,5),(5,2,8),(6,2,9);
/*!40000 ALTER TABLE `sec_user_access_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'Fleet Ticketing System','98 Green Road, Farmgate, Dhaka-1215.','cta.pri.inn@gmail.com','0123456789','assets/img/icons/faaeb1b5b873ede8817439fd25022719.png','','french','LTR','Â©2018 bdtask');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shedule`
--

DROP TABLE IF EXISTS `shedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shedule` (
  `shedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `duration` float NOT NULL,
  PRIMARY KEY (`shedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shedule`
--

LOCK TABLES `shedule` WRITE;
/*!40000 ALTER TABLE `shedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `shedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synchronizer_setting`
--

DROP TABLE IF EXISTS `synchronizer_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synchronizer_setting`
--

LOCK TABLES `synchronizer_setting` WRITE;
/*!40000 ALTER TABLE `synchronizer_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `synchronizer_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_notification`
--

DROP TABLE IF EXISTS `ticket_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_idno` varchar(30) NOT NULL,
  `passenger_id` varchar(30) NOT NULL,
  `no_tkts` int(11) NOT NULL,
  `amount` float NOT NULL,
  `route_id` varchar(30) NOT NULL,
  `trip_id` varchar(20) NOT NULL,
  `booking_time` datetime NOT NULL,
  `is_seen` int(11) NOT NULL DEFAULT '0',
  `admin_seen` int(11) NOT NULL DEFAULT '0',
  `booked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_notification`
--

LOCK TABLES `ticket_notification` WRITE;
/*!40000 ALTER TABLE `ticket_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkt_booking`
--

DROP TABLE IF EXISTS `tkt_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tkt_booking` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `adult` int(11) NOT NULL DEFAULT '0',
  `child` int(11) NOT NULL DEFAULT '0',
  `special` int(11) NOT NULL DEFAULT '0',
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `booking_type` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `booked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkt_booking`
--

LOCK TABLES `tkt_booking` WRITE;
/*!40000 ALTER TABLE `tkt_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tkt_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkt_feedback`
--

DROP TABLE IF EXISTS `tkt_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tkt_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` text,
  `rating` tinyint(1) DEFAULT '1',
  `add_to_website` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkt_feedback`
--

LOCK TABLES `tkt_feedback` WRITE;
/*!40000 ALTER TABLE `tkt_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tkt_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkt_passenger`
--

DROP TABLE IF EXISTS `tkt_passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tkt_passenger` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkt_passenger`
--

LOCK TABLES `tkt_passenger` WRITE;
/*!40000 ALTER TABLE `tkt_passenger` DISABLE KEYS */;
/*!40000 ALTER TABLE `tkt_passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkt_referal`
--

DROP TABLE IF EXISTS `tkt_referal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tkt_referal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tkt_passenger_id_no` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkt_referal`
--

LOCK TABLES `tkt_referal` WRITE;
/*!40000 ALTER TABLE `tkt_referal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tkt_referal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkt_refund`
--

DROP TABLE IF EXISTS `tkt_refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tkt_refund` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `cancelation_fees` float DEFAULT NULL,
  `causes` text,
  `comment` text,
  `refund_by_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tkt_refund_tkt_booking` (`tkt_booking_id_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkt_refund`
--

LOCK TABLES `tkt_refund` WRITE;
/*!40000 ALTER TABLE `tkt_refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `tkt_refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_title` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `shedule_id` int(11) NOT NULL,
  `weekend` varchar(50) DEFAULT '0',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`trip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_assign`
--

DROP TABLE IF EXISTS `trip_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip_assign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `fleet_registration_id` int(11) DEFAULT NULL,
  `trip` varchar(30) NOT NULL,
  `assign_time` datetime NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `assistant_1` varchar(30) DEFAULT NULL,
  `assistant_2` varchar(30) DEFAULT NULL,
  `assistant_3` varchar(30) DEFAULT NULL,
  `sold_ticket` float NOT NULL DEFAULT '0',
  `total_income` float DEFAULT '0',
  `total_expense` float DEFAULT '0',
  `total_fuel` float DEFAULT '0',
  `trip_comment` text,
  `closed_by_id` int(11) DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_assign`
--

LOCK TABLES `trip_assign` WRITE;
/*!40000 ALTER TABLE `trip_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `trip_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_location`
--

DROP TABLE IF EXISTS `trip_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `google_map` text,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_location`
--

LOCK TABLES `trip_location` WRITE;
/*!40000 ALTER TABLE `trip_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `trip_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_route`
--

DROP TABLE IF EXISTS `trip_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip_route` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `start_point` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `stoppage_points` varchar(355) DEFAULT NULL COMMENT 'Location ids',
  `distance` varchar(30) DEFAULT NULL,
  `approximate_time` varchar(100) DEFAULT NULL,
  `children_seat` int(11) NOT NULL DEFAULT '0',
  `special_seat` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_route`
--

LOCK TABLES `trip_route` WRITE;
/*!40000 ALTER TABLE `trip_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `trip_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_booking_history`
--

DROP TABLE IF EXISTS `ws_booking_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_booking_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `special` int(11) NOT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_booking_history`
--

LOCK TABLES `ws_booking_history` WRITE;
/*!40000 ALTER TABLE `ws_booking_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_booking_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_offer`
--

DROP TABLE IF EXISTS `ws_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_offer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_offer`
--

LOCK TABLES `ws_offer` WRITE;
/*!40000 ALTER TABLE `ws_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_payments`
--

DROP TABLE IF EXISTS `ws_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_payments`
--

LOCK TABLES `ws_payments` WRITE;
/*!40000 ALTER TABLE `ws_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_setting`
--

DROP TABLE IF EXISTS `ws_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `timezone` varchar(200) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `description` text,
  `payment_type` varchar(30) DEFAULT NULL,
  `paypal_email` varchar(100) DEFAULT NULL,
  `bank_commission` float NOT NULL DEFAULT '0',
  `currency` varchar(50) DEFAULT NULL,
  `google_map` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_setting`
--

LOCK TABLES `ws_setting` WRITE;
/*!40000 ALTER TABLE `ws_setting` DISABLE KEYS */;
INSERT INTO `ws_setting` VALUES (1,'Bus 365','Bus 365','123, demo street, demo-city, 0000','business@test.com','0123456789','application/modules/website/assets/images/icons/e5a567074086228d72ee40cf50163276.png','application/modules/website/assets/images/icons/4b2915e727770499a6811a7b4f193ce5.png',1,'Asia/Dhaka','','','disable','business@test.com',3,'USD','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.7724407117266!2d90.38595131408418!3d23.75549289450067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8a4136c4b61%3A0x19549f5462616f04!2sBDTASK!5e0!3m2!1sen!2sbd!4v1531724548584\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');
/*!40000 ALTER TABLE `ws_setting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:13:04
