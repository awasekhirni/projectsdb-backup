-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: bitcoinmarketplace
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
-- Table structure for table `adminuser`
--

DROP TABLE IF EXISTS `adminuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `ppicture` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `btc_address` varchar(200) NOT NULL,
  `api_key` varchar(200) NOT NULL,
  `secret_pin` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminuser`
--

LOCK TABLES `adminuser` WRITE;
/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` VALUES (1,'Faucon','1000020181309030857imageWD2.jpg','admin@test.fr','3Hn6Wz7nmz4xZUVWpFwgecARxRQ33XgkKn','af49-c68f-c6e1-67a2','jesuisunchampidepuistoujours','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','2018-09-13 13:19:34');
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `ppicture` varchar(200) NOT NULL,
  `category` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (22,1,'Mr Robot','1000020181121032103yHIqSp6.png',6,'<hr />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porta, urna vel luctus congue, augue metus ullamcorper arcu, at rhoncus ex nunc a nibh. Donec dictum rutrum mauris, ut aliquet arcu pulvinar sed. Praesent ultrices felis vel pharetra venenatis. Nulla et auctor libero. Praesent efficitur, dui vel efficitur sodales, neque libero venenatis nibh, non vulputate neque ligula quis sem. Praesent volutpat mollis ligula id interdum. Integer ornare dolor id tellus dapibus, nec tincidunt velit pharetra.</p>\r\n\r\n<p>Nunc sed urna vel felis pellentesque sodales. Phasellus vehicula vestibulum massa, vel sagittis mauris pharetra quis. Vestibulum ultricies tincidunt scelerisque. Sed vehicula turpis rhoncus, tristique arcu sit amet, commodo dolor. Duis ac accumsan lorem. Maecenas rutrum diam eget lacus gravida, sit amet tristique leo cursus. Quisque vitae finibus mi. Vivamus in feugiat elit, a varius justo. Aenean lobortis blandit elit, eu dapibus ligula aliquam sed. Nam et turpis feugiat, facilisis nibh et, ullamcorper turpis. Maecenas pulvinar, purus a feugiat euismod, metus tellus consequat turpis, et interdum ipsum orci non neque. Vestibulum ut magna id nulla aliquam laoreet et non lectus. Pellentesque fringilla, ex a hendrerit venenatis, massa elit dapibus nisl, eget consequat sem leo a nunc. Nulla vitae placerat arcu, vitae commodo mi. Suspendisse rhoncus ullamcorper augue, ut imperdiet felis.</p>\r\n',20,'2018-11-13 15:35:05'),(23,3,'3x fornite keys','999920181121013826il_570xN.1489576612_dn36.jpg',4,'<hr />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut maximus ante. Suspendisse orci quam, vehicula rhoncus lectus ornare, lacinia convallis nisi. Vestibulum nunc libero, dapibus ac commodo in, interdum sed libero. Phasellus faucibus non ipsum ut dignissim. Nam sit amet ipsum justo. Fusce ipsum enim, tempus eget pulvinar ac, lacinia eget mi. Donec bibendum rhoncus tortor. Duis pretium mauris et tortor commodo accumsan. Praesent quis porttitor tellus. Vestibulum blandit justo eget nulla tristique consectetur. Aliquam erat volutpat. Donec venenatis turpis at aliquet sodales</p>\r\n',10,'2018-11-13 19:39:36'),(25,1,'2x Origins Keys','1000020181121013705origin-logo.jpg',4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pretium dui nibh, sed interdum nibh sollicitudin et. Mauris massa massa, efficitur in vestibulum vitae, bibendum vitae ipsum. Curabitur sit amet diam id ex placerat vulputate. In sed eros tortor. Praesent sodales auctor mi at tempus. Integer eu auctor ex, sed lobortis leo. Curabitur blandit lorem arcu, at laoreet tortor sodales nec. Donec volutpat vel turpis ac condimentum. Phasellus nec sapien felis. Etiam scelerisque nec leo eu facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean suscipit tempor nisi id finibus.</p>\r\n',10,'2018-11-13 19:43:20'),(26,1,'5x GOG keys','1000020181121013628GOG-891752.jpg',4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium rutrum ex et congue. Sed id sodales neque. Mauris euismod lectus mi, vel tincidunt tellus hendrerit ac. Fusce ac varius massa, quis varius dolor. Duis auctor molestie urna, at volutpat quam ullamcorper placerat. Suspendisse finibus egestas lectus sed lobortis. Cras eu quam condimentum, tempor orci eget, mollis diam. Pellentesque porttitor quis nunc a lobortis. Suspendisse potenti. Vestibulum hendrerit sapien eu sapien interdum, ut commodo urna sodales. Nam egestas tellus dui, nec volutpat dolor mattis non. Integer in mauris fermentum nisl sodales interdum. Cras eu sapien tempus diam pellentesque egestas id vel mi.</p>\r\n\r\n<p>Etiam vel elit in libero pharetra malesuada in a tortor. Phasellus efficitur varius turpis vitae iaculis. Fusce sollicitudin vel turpis sit amet egestas. Praesent ut bibendum dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dignissim ultrices neque, non congue elit vulputate iaculis. Nulla interdum, sapien nec fermentum vulputate, odio tellus cursus dolor, vel ornare tortor quam in dolor. Praesent orci arcu, rhoncus vel ornare sed, consequat aliquet ligula. Vestibulum commodo, magna at rhoncus volutpat, odio orci tempus urna, in ullamcorper velit neque vel erat. Proin aliquam iaculis euismod. Aenean ut consectetur nulla, non posuere odio. Duis non lacinia enim. Nulla mauris enim, finibus sed est a, gravida mattis neque. Etiam ut magna vel nulla tempus interdum non eget libero. Phasellus ac nunc vitae sapien pellentesque laoreet. Quisque fermentum tempus dictum.</p>\r\n',20,'2018-11-13 19:47:06'),(28,1,'SPOTIFY','1000020181121013519spotify-1.jpg',8,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis tellus erat. Phasellus vitae commodo nisl. Morbi sit amet lorem porttitor, convallis mauris nec, vulputate tellus. Quisque pellentesque nisl neque, sed mattis ante viverra sodales. Nunc nec nulla rutrum, porta purus sed, fermentum sem. Donec sit amet risus nisl. Suspendisse semper scelerisque enim, eget viverra felis hendrerit et. Nunc suscipit eu ipsum et malesuada.</p>\r\n\r\n<p>Praesent interdum mauris sed enim porttitor tristique id at enim. Vivamus vel magna tellus. Fusce ut libero dignissim, convallis ligula ut, aliquet velit. Ut augue mauris, congue ac semper eget, semper at lacus. Pellentesque elementum tellus mollis, rutrum mauris quis, semper ipsum. Nunc aliquet elementum consequat. Duis maximus tristique tincidunt. Vestibulum efficitur, urna vitae rutrum faucibus, lectus arcu condimentum est, quis cursus nisi tortor in sem. Aenean nulla mauris, suscipit sit amet arcu et, laoreet mattis dui. Nullam iaculis tincidunt egestas. Donec feugiat ex ex, sit amet lobortis arcu ultricies id. Pellentesque mattis et sem at pretium. Nulla facilisi.</p>\r\n\r\n<p>Praesent suscipit, elit a feugiat condimentum, risus magna tincidunt odio, sit amet laoreet arcu felis id est. Nunc eu rhoncus purus, et scelerisque augue. Suspendisse felis lacus, tincidunt a leo et, congue venenatis risus. Suspendisse et lobortis est. Proin porttitor diam ut ex lacinia faucibus. Curabitur mattis, ex vel tincidunt malesuada, ligula nulla hendrerit enim, id lacinia sem metus et odio. Duis laoreet, libero eu scelerisque elementum, lorem mi viverra nisi, posuere consequat eros erat ac velit. Vestibulum et cursus turpis. Proin finibus orci nulla, vitae ultricies lorem venenatis ac. Nunc tincidunt tempor arcu at faucibus. Maecenas velit nibh, pellentesque in lacus a, volutpat volutpat neque. Donec nec rhoncus turpis, ut porttitor lorem. Aliquam laoreet ipsum eu augue sagittis mollis. Mauris dignissim, odio accumsan blandit iaculis, tellus lorem porta nulla, id iaculis nulla risus quis eros. Curabitur hendrerit nulla ipsum. Integer ac ligula a tellus hendrerit imperdiet.</p>\r\n',10,'2018-11-18 08:06:00'),(30,3,'Netflix','1000020181121013902logo-netflix-696x465.gif',4,'<hr />\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam laoreet interdum nulla et aliquet. Donec sagittis sed justo id eleifend. Donec consequat velit at sapien pharetra rhoncus. Pellentesque nec velit quis urna accumsan auctor quis at lectus. Aliquam vehicula gravida nisi, a pretium purus sollicitudin sit amet. Sed commodo tincidunt lacus, vehicula commodo diam egestas ut. Nam id neque ac tortor dapibus iaculis ut sed enim. Mauris sit amet turpis ut metus consequat suscipit. Phasellus a diam diam. Integer blandit metus ut felis feugiat, eget tincidunt mauris consequat. Integer mattis, purus sagittis tincidunt aliquet, ante massa mattis augue, ac tempus odio massa eu lectus. Sed a enim nisi. Phasellus vel lorem lobortis, dapibus lacus eu, cursus orci. Quisque vel congue risus. Aenean ultricies aliquet nunc sed hendrerit. Pellentesque porttitor justo ac accumsan consequat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam laoreet interdum nulla et aliquet. Donec sagittis sed justo id eleifend. Donec consequat velit at sapien pharetra rhoncus. Pellentesque nec velit quis urna accumsan auctor quis at lectus. Aliquam vehicula gravida nisi, a pretium purus sollicitudin sit amet. Sed commodo tincidunt lacus, vehicula commodo diam egestas ut. Nam id neque ac tortor dapibus iaculis ut sed enim. Mauris sit amet turpis ut metus consequat suscipit. Phasellus a diam diam. Integer blandit metus ut felis feugiat, eget tincidunt mauris consequat. Integer mattis, purus sagittis tincidunt aliquet, ante massa mattis augue, ac tempus odio massa eu lectus. Sed a enim nisi. Phasellus vel lorem lobortis, dapibus lacus eu, cursus orci. Quisque vel congue risus. Aenean ultricies aliquet nunc sed hendrerit. Pellentesque porttitor justo ac accumsan consequat.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam laoreet interdum nulla et aliquet. Donec sagittis sed justo id eleifend. Donec consequat velit at sapien pharetra rhoncus. Pellentesque nec velit quis urna accumsan auctor quis at lectus. Aliquam vehicula gravida nisi, a pretium purus sollicitudin sit amet. Sed commodo tincidunt lacus, vehicula commodo diam egestas ut. Nam id neque ac tortor dapibus iaculis ut sed enim. Mauris sit amet turpis ut metus consequat suscipit. Phasellus a diam diam. Integer blandit metus ut felis feugiat, eget tincidunt mauris consequat. Integer mattis, purus sagittis tincidunt aliquet, ante massa mattis augue, ac tempus odio massa eu lectus. Sed a enim nisi. Phasellus vel lorem lobortis, dapibus lacus eu, cursus orci. Quisque vel congue risus. Aenean ultricies aliquet nunc sed hendrerit. Pellentesque porttitor justo ac accumsan consequat.</p>\r\n\r\n<p>&nbsp;</p>\r\n',50,'2018-11-18 21:08:28'),(31,1,'Watch Dogs 2','1000020181121012753watch-dogs-2-jaquette-ps4_0280028000848917.jpg',4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis tellus erat. Phasellus vitae commodo nisl. Morbi sit amet lorem porttitor, convallis mauris nec, vulputate tellus. Quisque pellentesque nisl neque, sed mattis ante viverra sodales. Nunc nec nulla rutrum, porta purus sed, fermentum sem. Donec sit amet risus nisl. Suspendisse semper scelerisque enim, eget viverra felis hendrerit et. Nunc suscipit eu ipsum et malesuada.</p>\r\n\r\n<p>Praesent interdum mauris sed enim porttitor tristique id at enim. Vivamus vel magna tellus. Fusce ut libero dignissim, convallis ligula ut, aliquet velit. Ut augue mauris, congue ac semper eget, semper at lacus. Pellentesque elementum tellus mollis, rutrum mauris quis, semper ipsum. Nunc aliquet elementum consequat. Duis maximus tristique tincidunt. Vestibulum efficitur, urna vitae rutrum faucibus, lectus arcu condimentum est, quis cursus nisi tortor in sem. Aenean nulla mauris, suscipit sit amet arcu et, laoreet mattis dui. Nullam iaculis tincidunt egestas. Donec feugiat ex ex, sit amet lobortis arcu ultricies id. Pellentesque mattis et sem at pretium. Nulla facilisi.</p>\r\n\r\n<p>Praesent suscipit, elit a feugiat condimentum, risus magna tincidunt odio, sit amet laoreet arcu felis id est. Nunc eu rhoncus purus, et scelerisque augue. Suspendisse felis lacus, tincidunt a leo et, congue venenatis risus. Suspendisse et lobortis est. Proin porttitor diam ut ex lacinia faucibus. Curabitur mattis, ex vel tincidunt malesuada, ligula nulla hendrerit enim, id lacinia sem metus et odio. Duis laoreet, libero eu scelerisque elementum, lorem mi viverra nisi, posuere consequat eros erat ac velit. Vestibulum et cursus turpis. Proin finibus orci nulla, vitae ultricies lorem venenatis ac. Nunc tincidunt tempor arcu at faucibus. Maecenas velit nibh, pellentesque in lacus a, volutpat volutpat neque. Donec nec rhoncus turpis, ut porttitor lorem. Aliquam laoreet ipsum eu augue sagittis mollis. Mauris dignissim, odio accumsan blandit iaculis, tellus lorem porta nulla, id iaculis nulla risus quis eros. Curabitur hendrerit nulla ipsum. Integer ac ligula a tellus hendrerit imperdiet.</p>\r\n',20,'2018-11-19 08:45:41'),(33,1,'Dishonored','999920182911051551861.jpg',4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultricies elit a mauris aliquam finibus. Aliquam faucibus rhoncus odio sit amet aliquet. Suspendisse vel eleifend urna, sed gravida ex. Etiam in sapien ornare, hendrerit magna non, sagittis sem. Phasellus tempor consectetur pretium. Etiam aliquet tristique tellus vel aliquam. Morbi commodo diam orci, eu vehicula ante blandit in. Phasellus efficitur orci eu nibh finibus accumsan. Etiam sit amet consectetur leo.</p>\r\n\r\n<p>Quisque eu facilisis est, vitae congue sem. Morbi sed eros iaculis, aliquam risus sit amet, aliquet felis. Proin vulputate leo justo, nec pellentesque dui porttitor vel. Maecenas id risus magna. Ut justo dui, lacinia vitae hendrerit et, volutpat at nibh. Aenean libero ipsum, euismod auctor turpis sed, accumsan sollicitudin sem. Donec accumsan accumsan purus ut gravida. Nunc iaculis augue velit, ut porta leo elementum sit amet. Curabitur fermentum ante nec orci interdum dignissim. Praesent elementum sapien non convallis tristique.</p>\r\n',10,'2018-11-29 17:15:51'),(35,1,'Hansel & Gretel','10000201829110520543d-hansel_et_gretel_chasseurs_de_sorcieres_br.0.jpg',6,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultricies elit a mauris aliquam finibus. Aliquam faucibus rhoncus odio sit amet aliquet. Suspendisse vel eleifend urna, sed gravida ex. Etiam in sapien ornare, hendrerit magna non, sagittis sem. Phasellus tempor consectetur pretium. Etiam aliquet tristique tellus vel aliquam. Morbi commodo diam orci, eu vehicula ante blandit in. Phasellus efficitur orci eu nibh finibus accumsan. Etiam sit amet consectetur leo.</p>\r\n\r\n<p>Quisque eu facilisis est, vitae congue sem. Morbi sed eros iaculis, aliquam risus sit amet, aliquet felis. Proin vulputate leo justo, nec pellentesque dui porttitor vel. Maecenas id risus magna. Ut justo dui, lacinia vitae hendrerit et, volutpat at nibh. Aenean libero ipsum, euismod auctor turpis sed, accumsan sollicitudin sem. Donec accumsan accumsan purus ut gravida. Nunc iaculis augue velit, ut porta leo elementum sit amet. Curabitur fermentum ante nec orci interdum dignissim. Praesent elementum sapien non convallis tristique.</p>\r\n',5,'2018-11-29 17:20:54');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `become_seller`
--

DROP TABLE IF EXISTS `become_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `become_seller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` smallint(6) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `become_seller`
--

LOCK TABLES `become_seller` WRITE;
/*!40000 ALTER TABLE `become_seller` DISABLE KEYS */;
INSERT INTO `become_seller` VALUES (3,1,'Seller #1','<p>&nbsp;</p>\r\n\r\n<p>- lorem ipsumm</p>\r\n\r\n<p>- ipsum zefezdz</p>\r\n\r\n<p>- zpoiiieurrrazas</p>\r\n',30,'2018-11-15 17:45:57');
/*!40000 ALTER TABLE `become_seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'Video Game','2018-09-13 15:09:03'),(5,'Mobile Phone','2018-09-13 16:05:33'),(6,'Movies','2018-09-13 09:21:22'),(7,'Script PHP','2018-09-21 23:11:39'),(8,'free games','2018-11-19 19:39:28');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `for_id` int(11) NOT NULL,
  `good` enum('0','a','b','c') NOT NULL,
  `text_feedback` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (127,3,31,1,'a','Product very good !','2018-11-21 14:49:58');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox_user`
--

DROP TABLE IF EXISTS `inbox_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbox_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox_user`
--

LOCK TABLES `inbox_user` WRITE;
/*!40000 ALTER TABLE `inbox_user` DISABLE KEYS */;
INSERT INTO `inbox_user` VALUES (3,1,3,'2018-11-18 13:46:46'),(4,9,3,'2018-11-18 19:09:48'),(5,13,1,'2018-11-25 13:00:33'),(6,14,3,'2018-11-25 15:09:32'),(7,16,1,'2018-11-26 15:32:51');
/*!40000 ALTER TABLE `inbox_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_lock` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `ppicture` varchar(200) NOT NULL,
  `status` text NOT NULL,
  `sales` bigint(20) NOT NULL,
  `btc_address` varchar(200) NOT NULL,
  `earnings` int(11) NOT NULL,
  `vendor` enum('0','1','2','3') NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'ToTo2020','toto2020@test.fr','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','1000020181409011648photo.jpg','<p><strong>Hey ! and welcome in my market !</strong></p>',1,'3Hn6Wz7nmz4xZUVWpFwgecARxRQ33XgkKn',20,'1','2018-09-13 13:43:02'),(2,'Mako','mako@test.fr','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','1000020181211061747myAvatar.png','Lorem ips... Et puis merde je marque en franÃƒÂ§ais comme un grand !',0,'3GvrxhKz4kSqBvnd52CL4gfzehpLSecDsy',0,'1','2018-09-15 18:10:02'),(3,'PoPo18','popo18@test.fr','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','1000020181809050002imageWD2.jpg','',0,'3Hn6Wz7nmz4xZUVWpFwgecARxRQ33XgkKn',0,'1','2018-09-18 16:57:05'),(7,'Falcon','test@test.fr','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','1000020181211035040gentleman_icon-icons.com_55044.png','',0,'',0,'1','2018-11-12 15:48:58'),(8,'Fauchon','test123@test.fr','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','999920181211035131modo.png','',0,'',0,'1','2018-11-12 15:51:09'),(9,'britannyslevinson78','test321@test.fr','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','','On test pour voir !',0,'',0,'0','2018-11-15 14:20:35'),(10,'terst','terst@niepodam.pl','64810c3dc0880ea934515c13bf0662a206c9d7f07643faa466b53d0209e0f7c0','','',0,'',0,'0','2018-11-21 23:58:45'),(11,'macdawne','macdawne@gmail.com','e6bc0e913d1fe1d19efab35e2dbfd184aa373a13071522da719b10769f58fac0','','',0,'',0,'0','2018-11-22 16:55:33'),(12,'jeffmusic','avilezdownloads@gmail.com','34da961863adee580c9419d66d18456272478af691441bef437b3c359e7eff81','','',0,'',0,'0','2018-11-23 00:38:01'),(13,'tester45','test@test.com','fe3e4a737b133f4fa677441f3214608b8466a02042dbb5d60a7d2a17c9d12bd2','','',0,'',0,'0','2018-11-25 12:49:32'),(14,'nikila55','nikila55@gmail.com','dc6005d7d163dc61c677090aa69952346373ee7e2c4ae121c2a67def2748b5b1','','',0,'',0,'0','2018-11-25 15:08:25'),(15,'bitcoin4passive','mdownloadhub@gmail.com','08603b8375de8124de50689c6879b8300aeda7192f695e2ee60677e85b418407','','',0,'',0,'0','2018-11-25 19:36:25'),(16,'peixoto','junior.bco@gmail.com','0785b21ae38015519bc4d7189558047d3d46d1ef302f39e688c04f4cf53f34ac','','',0,'',0,'0','2018-11-26 15:31:37'),(17,'geshcheto','shop@mail.bg','28edad1764175a531ea517ccd6a2672facff4e432ca353e7acb73d315ca40899','9999201827110429418048f120c4e2fc03b7c52c93f49a0754fb06d8f0.png','',0,'',0,'0','2018-11-27 04:29:00');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sendingfrom` int(11) NOT NULL,
  `sendingto` int(11) NOT NULL,
  `message` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (15,1,3,'Hi PoPo','2018-11-18 16:28:18'),(16,3,1,'Hey !','2018-11-18 16:29:45'),(17,9,3,'Hello !','2018-11-18 19:09:48'),(18,3,9,'Hey !!','2018-11-18 19:10:22'),(20,1,3,'How are you ?','2018-11-19 08:44:45'),(21,1,3,'Haiiii..','2018-11-24 04:44:56'),(22,13,1,'This market place is amazingly simple and really cool! perfectly I was expecting for on like this','2018-11-25 13:00:33'),(23,13,1,'This market place is amazingly simple and really cool! perfectly I was expecting for on like this','2018-11-25 13:00:34'),(24,13,1,'Hey so are you an nun?','2018-11-25 13:14:51'),(25,14,3,'fdgadfsA','2018-11-25 15:09:32'),(26,16,1,'hello','2018-11-26 15:32:51'),(27,1,13,'Heyy !','2018-11-28 18:20:01');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_from` int(11) NOT NULL,
  `for_id` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `article_id` int(11) NOT NULL,
  `order_article` varchar(200) NOT NULL,
  `send` enum('0','1','2','3') NOT NULL,
  `done` enum('0','1','2') NOT NULL,
  `sent` enum('0','1','2') NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ppicture`
--

DROP TABLE IF EXISTS `ppicture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ppicture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ppicture` varchar(200) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ppicture`
--

LOCK TABLES `ppicture` WRITE;
/*!40000 ALTER TABLE `ppicture` DISABLE KEYS */;
/*!40000 ALTER TABLE `ppicture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy`
--

DROP TABLE IF EXISTS `privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text_privacy` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy`
--

LOCK TABLES `privacy` WRITE;
/*!40000 ALTER TABLE `privacy` DISABLE KEYS */;
INSERT INTO `privacy` VALUES (1,'Terms and conditions','<?php phpinfo(); ?>              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.</p>\r\n\r\n<p>Ã‚Â </p>\r\n\r\n<h2>eleifend quis leo</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.</p>\r\n\r\n<p>Ã‚Â </p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.</p>\r\n\r\n<h2>eleifend quis leo</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt tortor orci, quis ornare urna sodales fringilla. Pellentesque sed lacus varius, scelerisque mi eu, euismod mi. Nulla eu ullamcorper sem, vitae euismod justo. Nunc sit amet lectus posuere, consectetur magna ut, tristique nibh. Sed posuere magna ac quam dictum ullamcorper. Integer varius interdum enim nec auctor. Sed lobortis quis arcu vitae blandit. Nam ut nibh ac quam bibendum consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam orci elit, tempor eu ornare ac, eleifend quis leo.</p>\r\n            ','2018-11-19 21:11:05');
/*!40000 ALTER TABLE `privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_from` int(11) NOT NULL,
  `user_to` varchar(200) NOT NULL,
  `report_txt` text NOT NULL,
  `reason` varchar(200) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_to` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `catego` varchar(200) NOT NULL,
  `text_ticket` text NOT NULL,
  `reply` text NOT NULL,
  `status` enum('0','1') NOT NULL,
  `date_added` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:02:22
