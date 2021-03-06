-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinevotingdb
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `adminid` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` text NOT NULL,
  `imagelocation` text NOT NULL,
  `tokencode` text NOT NULL,
  `joined` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (4,'267615426107','admin','$2y$10$J7yfhSkaxNU5aPAbqZHV1u1Ebq9WInTi8rggeUSH4.1GmkVygWeoi','Admin','admin@voting.com','uploads/default.png','','2019-10-16 10:38:59');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `languageid` varchar(300) NOT NULL,
  `language` varchar(300) NOT NULL,
  `languages` varchar(300) NOT NULL,
  `language_lang` varchar(300) NOT NULL,
  `header` varchar(300) NOT NULL,
  `login` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `remember_me` varchar(300) NOT NULL,
  `register` varchar(300) NOT NULL,
  `forgot` varchar(300) NOT NULL,
  `home` varchar(300) NOT NULL,
  `page` varchar(300) NOT NULL,
  `settings` varchar(300) NOT NULL,
  `profile` varchar(300) NOT NULL,
  `logout` varchar(300) NOT NULL,
  `online` varchar(300) NOT NULL,
  `dashboard` varchar(300) NOT NULL,
  `voters` varchar(300) NOT NULL,
  `voter` varchar(300) NOT NULL,
  `add_add` varchar(300) NOT NULL,
  `list` varchar(300) NOT NULL,
  `organizations` varchar(300) NOT NULL,
  `organization` varchar(300) NOT NULL,
  `positions` varchar(300) NOT NULL,
  `position` varchar(300) NOT NULL,
  `nominees` varchar(300) NOT NULL,
  `nominee` varchar(300) NOT NULL,
  `control` varchar(300) NOT NULL,
  `panel` varchar(300) NOT NULL,
  `section` varchar(300) NOT NULL,
  `full` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `confirm` varchar(300) NOT NULL,
  `choose` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL,
  `submit` varchar(300) NOT NULL,
  `active` varchar(300) NOT NULL,
  `action` varchar(300) NOT NULL,
  `in_active` varchar(300) NOT NULL,
  `activate` varchar(300) NOT NULL,
  `deactivate` varchar(300) NOT NULL,
  `edit` varchar(300) NOT NULL,
  `delete_delete` varchar(300) NOT NULL,
  `details_details` varchar(300) NOT NULL,
  `change_change` varchar(300) NOT NULL,
  `picture` varchar(300) NOT NULL,
  `current` varchar(300) NOT NULL,
  `new` varchar(300) NOT NULL,
  `nominated` varchar(300) NOT NULL,
  `for_for` varchar(300) NOT NULL,
  `word` varchar(300) NOT NULL,
  `phrases` varchar(300) NOT NULL,
  `of` varchar(300) NOT NULL,
  `site` varchar(300) NOT NULL,
  `background` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `keywords` varchar(300) NOT NULL,
  `mail` varchar(300) NOT NULL,
  `select_select` varchar(300) NOT NULL,
  `default_default` varchar(300) NOT NULL,
  `admin` varchar(300) NOT NULL,
  `reset` varchar(300) NOT NULL,
  `votes` varchar(300) NOT NULL,
  `you` varchar(300) NOT NULL,
  `got` varchar(300) NOT NULL,
  `other` varchar(300) NOT NULL,
  `running` varchar(300) NOT NULL,
  `against` varchar(300) NOT NULL,
  `no` varchar(300) NOT NULL,
  `to_to` varchar(300) NOT NULL,
  `be` varchar(300) NOT NULL,
  `how` varchar(300) NOT NULL,
  `it` varchar(300) NOT NULL,
  `works` varchar(300) NOT NULL,
  `your` varchar(300) NOT NULL,
  `describe_describe` varchar(300) NOT NULL,
  `yourself` varchar(300) NOT NULL,
  `manifesto` varchar(300) NOT NULL,
  `please` varchar(300) NOT NULL,
  `vote` varchar(300) NOT NULL,
  `these` varchar(300) NOT NULL,
  `guys` varchar(300) NOT NULL,
  `search` varchar(300) NOT NULL,
  `and_and` varchar(300) NOT NULL,
  `view` varchar(300) NOT NULL,
  `error` varchar(300) NOT NULL,
  `success` varchar(300) NOT NULL,
  `have` varchar(300) NOT NULL,
  `changed` varchar(300) NOT NULL,
  `something` varchar(300) NOT NULL,
  `went` varchar(300) NOT NULL,
  `wrong` varchar(300) NOT NULL,
  `voted` varchar(300) NOT NULL,
  `successfully` varchar(300) NOT NULL,
  `personal` varchar(300) NOT NULL,
  `share` varchar(300) NOT NULL,
  `this` varchar(300) NOT NULL,
  `as_as` varchar(300) NOT NULL,
  `a` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'456316203361','English','Languages','Language','Header','Login','Email','Password','Remember Me','Register','Forgot','Home','Page','Settings','Profile','Logout','Online','Dashboard','Voters','Voter','Add','List','Organizations','Organization','Positions','Position','Nominees','Nominee','Control','Panel','Section','Full','Name','Username','Confirm','Choose','Image','Submit','Active','Action','In Active','Activate','Deactivate','Edit','Delete','Details','Change','Picture','Current','New','Nominated','For','Word','Phrases','of','Site','Background','Title','Description','Keywords','Mail','Select','Default','Admin','Reset','Votes','You','Got','Other','Running','Against','No','to','Be','How','it','works','Your','Describe','Yourself','Manifesto','Please','vote','these','guys','Search','and','View','Error','Success','have','changed','Something','Went','Wrong','voted','successfully','Personal','Share','this','as','a'),(2,'492663265157','Spanish','Idiomas','Idioma','Encabezamiento','Iniciar sesiÃƒÂ³n','Email','ContraseÃƒÂ±a','RecuÃƒÂ©rdame','Registro','OlvidÃƒÂ³','Casa','PÃƒÂ¡gina','Configuraciones','Perfil','Cerrar sesiÃƒÂ³n','En lÃƒÂ­nea','Tablero','Votantes','Votante','AÃƒÂ±adir','Lista','Organizaciones','OrganizaciÃƒÂ³n','Posiciones','PosiciÃƒÂ³n','Nominados','Candidato','Controlar','Panel','SecciÃƒÂ³n','Completo','Nombre','Nombre de usuario','Confirmar','Escoger','Imagen','Enviar','Activo','AcciÃƒÂ³n','En activo','Activar','Desactivar','Editar','Borrar','Detalles','Cambio','Imagen','Corriente','Nuevo','Nominado','por','Palabra','Frases','de','Sitio','Fondo','TÃƒÂ­tulo','DescripciÃƒÂ³n','Palabras clave','Correo','Seleccionar','Defecto','AdministraciÃƒÂ³n','Reiniciar','Votos','TÃƒÂº','Tiene','Otro','Corriendo','En contra','No','A','Ser','CÃƒÂ³mo','Eso','Trabajos','Tu','Describir','TÃƒÂº mismo','Manifiesto','Por favor','votar','estas','muchachos','Buscar','y','Ver','Error','Ãƒâ€°xito','tener','cambiado','Alguna cosa','Fuimos',' Incorrecto','votado',' exitosamente','Personal',' Compartir','esta','como','un');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `organizationid` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `imagelocation` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'214407771051','The Masha Brand Company','uploads/15172161218080-png.png'),(2,'148404653372','Harvard Campus Election','uploads/1517253664rd.png'),(3,'191158759771','Republican National Committee','uploads/1517253431.png'),(4,'398673516259','Democratic National Committee','uploads/1517253449.png'),(5,'357540792223','Women\'s March','uploads/1517253521.jpg'),(6,'340866181644','Grammy Awards','uploads/1517253546ys.jpg'),(7,'162452339739','Oscars Awards','uploads/1517253570s.jpg'),(8,'283787111660','Book Club','uploads/1517253591lub.png'),(9,'171039999680','Women\'s Club','uploads/1517253612sclub.jpg');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `positionid` varchar(300) NOT NULL,
  `organizationid` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'238770789328','214407771051','President','2018-01-26 13:02:46'),(2,'251972032522','214407771051','Vice President','2018-01-26 19:06:01'),(3,'560276340920','148404653372','President','2018-01-28 10:10:28'),(4,'412962962113','148404653372','Vice President','2018-01-28 10:10:47'),(5,'745669717915','148404653372','Student Affairs','2018-01-28 10:10:57'),(6,'347430924766','214407771051','Chief Technology Officer','2018-01-29 14:17:46'),(7,'103340182199','191158759771','Chairperson','2018-01-29 20:29:40'),(8,'241668248976','191158759771','Finance Chairperson','2018-01-29 20:30:00'),(9,'241076521744','398673516259','Chairperson','2018-01-29 20:30:12'),(10,'293103170219','398673516259','Finance Chairperson','2018-01-29 20:30:20'),(11,'269813323988','357540792223','President','2018-01-29 20:30:54'),(12,'228801942709','357540792223','Vice President','2018-01-29 20:31:02'),(13,'400615859433','340866181644','Album of the Year','2018-01-29 20:33:49'),(14,'720544137830','340866181644','Song of the Year','2018-01-29 20:34:09'),(15,'476114483752','162452339739','Best Picture','2018-01-29 20:36:09'),(16,'167960082338','162452339739','Best Actor','2018-01-29 20:36:23'),(17,'316802760480','162452339739','Best Actress','2018-01-29 20:36:40'),(18,'896697567888','283787111660','Chairperson','2018-01-29 20:39:28'),(19,'240272469336','283787111660','Vice Chairperson','2018-01-29 20:39:55'),(20,'578529258290','171039999680','Chairperson','2018-01-29 20:40:08'),(21,'301903363884','171039999680','Vice Chairperson','2018-01-29 20:40:19');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `sitename` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `smail` varchar(300) NOT NULL,
  `smailpass` varchar(300) NOT NULL,
  `languageid` varchar(300) NOT NULL,
  `bgimage` varchar(300) NOT NULL,
  `google_analytics` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Online Voting Platform','Online Voting Platform','Online Voting Platform, voting ','Voting','http://localhost/projects/tests/updates/v3/','test@gmail.com','test123','456316203361','uploads/157121554052709.jpg','<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-79656468-5\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-79656468-5\');\r\n</script>\r\n');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` text NOT NULL,
  `imagelocation` text NOT NULL,
  `bgimage` text NOT NULL,
  `tokencode` text NOT NULL,
  `joined` datetime NOT NULL,
  `active` int(11) NOT NULL,
  `delete_remove` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `organizationid` varchar(300) NOT NULL,
  `positionid` varchar(300) NOT NULL,
  `describe_yourself` longtext NOT NULL,
  `manifesto` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'454243422562','AvatarOne','$2y$10$VwwUdFcR845CIuQ3TD8imu4CXN7M1.SycbfuyIwylPWlklkmA6K12','Avatar One','avatar1@gmail.com','uploads/1515501792.jpg','uploads/bg/1475741847.jpg','','2016-09-27 18:50:04',1,0,1,'','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br></p>',''),(3,'461111766379','AvatarTwo','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Two','avatar2@gmail.com','uploads/1515501847.jpg','uploads/bg/1481364849-1.jpg','','2016-10-23 11:42:10',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(4,'691501275360','AvatarThree','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Three','avatar3@gmail.com','uploads/1515502047.jpg','uploads/bg/1481365287.jpg','','2016-12-10 13:20:00',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(5,'471506861293','AvatarFour','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Four','avatar4@gmail.com','uploads/1515502269.jpg','','','2017-01-05 13:33:34',1,0,1,'','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br></p>',''),(6,'270814326257','AvatarFive','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Five','avatar5@gmail.com','uploads/1515502747.jpg','','','2017-02-04 10:45:05',1,0,1,'','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br></p>',''),(7,'1512380752','AvatarSix','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Six','avatar6@gmail.com','uploads/1515502801.jpg','','','2017-12-04 10:45:52',1,0,1,'','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque aliquet\r\n ipsum sapien, sed iaculis neque egestas in. Sed dignissim velit non dui\r\n vulputate finibus. In a pharetra ante. Phasellus tempus nibh sapien. \r\nPhasellus nisl dolor, ultrices nec congue nec, eleifend a velit. Aenean \r\npretium tortor eget odio tincidunt, sed ultrices justo finibus. \r\nVestibulum ac tortor et eros mollis eleifend sed at dui.\r\n</p><p>\r\nMauris ut ipsum vitae mauris tempor pulvinar at vel erat. Donec ultrices\r\n eros vel dictum scelerisque. Suspendisse potenti. Phasellus sagittis, \r\nelit nec maximus sagittis, ipsum velit viverra turpis, a feugiat urna \r\nsapien sit amet nulla. Fusce et elementum odio. Vestibulum ac imperdiet \r\nipsum. Aenean luctus neque at auctor tempor. Pellentesque ac lorem \r\nconsectetur, imperdiet dui vitae, fermentum nibh. Aliquam a augue odio. \r\nDonec magna libero, egestas efficitur felis in, gravida iaculis dolor. \r\nMaecenas ultrices blandit porta. Nunc est felis, ultrices quis massa \r\nvitae, venenatis faucibus lectus.\r\n</p>',''),(8,'1512497685','AvatarSeven','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Seven','avatar7@gmail.com','uploads/1515502852.jpg','','','2017-12-05 19:14:45',1,0,1,'','','<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut sapien\r\n a dui condimentum dapibus. Curabitur vehicula, nisi a efficitur \r\nblandit, nunc velit sodales ligula, nec ornare urna lectus vel est. \r\nNulla malesuada lorem ac nisi laoreet, sit amet dignissim tortor \r\npharetra. Mauris et arcu orci. In suscipit nulla augue, eu tristique \r\nmassa luctus sed. Nunc risus ipsum, cursus ac ornare ut, hendrerit \r\nrutrum magna. Sed ac orci sed nisi placerat pulvinar. Donec convallis, \r\nmagna quis auctor lobortis, odio leo feugiat odio, ut dapibus massa nisi\r\n in diam.\r\n</p><p>\r\n<br></p><p>\r\nMaecenas in bibendum justo. In hac habitasse platea dictumst. Quisque \r\nmollis convallis lacinia. Nunc ac facilisis dolor, eget luctus purus. \r\nDuis vitae sem eu eros ornare vehicula non at dui. Curabitur vestibulum \r\nat felis non viverra. Pellentesque hendrerit, erat id dictum facilisis, \r\nlectus elit venenatis mi, commodo rutrum elit ipsum eget quam.\r\n</p>',''),(9,'406470927698','AvatarEight','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Eight','avatar8@gmail.com','uploads/1515502949.jpg','','840e98c258ebdf0db98d6808e0709643','2017-12-07 04:53:34',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(10,'242819232275','AvatarNine','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Nine','avatar9@gmail.com','uploads/1515502997.jpg','','','2017-12-08 04:31:54',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(11,'467426610337','AvatarTen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Ten','avatar10@gmail.com','uploads/1515503065.jpg','','','2018-01-09 14:04:25',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(12,'460106748446','AvatarEleven','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Eleven','avatar11@gmail.com','uploads/1515503124.jpg','','','2018-01-09 14:05:24',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(13,'492493061580','AvatarTwelve','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Twelve','avatar12@gmail.com','uploads/1515503159.jpg','','','2018-01-09 14:05:59',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(14,'166190079925','AvatarThirteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Thirteen','avatar13@gmail.com','uploads/1515503191.png','','','2018-01-09 14:06:31',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(15,'381058138688','AvatarFourteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Fourteen','avatar14@gmail.com','uploads/1515503256.png','','','2018-01-09 14:07:36',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(16,'700920271162','AvatarFifteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Fifteen','avatar15@gmail.com','uploads/1515503289.png','','','2018-01-09 14:08:09',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(17,'599836216035','AvatarSixteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Sixteen','avatar16@gmail.com','uploads/1515503325.png','','','2018-01-09 14:08:45',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(18,'222945698995','AvatarSeventeen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Seventeen','avatar17@gmail.com','uploads/1515503358.png','','','2018-01-09 14:09:18',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(19,'410822666009','AvatarEighteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Eighteen','avatar18@gmail.com','uploads/1515503416.png','','','2018-01-09 14:10:16',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(20,'241707645559','AvatarNineteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Nineteen','avatar19@gmail.com','uploads/1515503452.png','','','2018-01-09 14:10:52',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(21,'174616311656','AvatarTwenty','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Avatar Twenty','avatar20@gmail.com','uploads/1515503485.jpg','','','2018-01-09 14:11:26',1,0,1,'','','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>',''),(22,'474877446628','NomineeOne','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee One','nominee1@gmail.com','uploads/151713187001792.jpg','','','2018-01-28 10:31:10',1,0,2,'214407771051','238770789328','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">Hi I\'m Johnathn Deo,has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</span><br></p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br></p>'),(23,'270324952048','NomineeTwo','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Two','nominee2@gmail.com','uploads/151714531401847.jpg','','','2018-01-28 14:15:14',1,0,2,'214407771051','238770789328','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">Hi I\'m Johnathn Deo,has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</span><br></p>','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>'),(24,'303823529393','NomineeThree','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Three','nominee3@gmail.com','uploads/151714535802047.jpg','','','2018-01-28 14:15:58',1,0,2,'214407771051','238770789328','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">Hi I\'m Johnathn Deo,has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</span><br></p>','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>'),(25,'166688767734','NomineeFour','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Four','nominee4@gmail.com','uploads/151714542402269.jpg','','','2018-01-28 14:17:04',1,0,2,'214407771051','251972032522','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">Hi I\'m Johnathn Deo,has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type</span><br></p>','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>'),(26,'632346227728','NomineeFive','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Five','nominee5@gmail.com','uploads/151714546002747.jpg','','','2018-01-28 14:17:40',1,0,2,'214407771051','251972032522','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">Hi I\'m Johnathn Deo,has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</span><br></p>','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>'),(27,'577880727425','NomineeSix','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Six','nominee6@gmail.com','uploads/151714551702801.jpg','','','2018-01-28 14:18:37',1,0,2,'214407771051','251972032522','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; text-align: center;\">Hi I\'m Johnathn Deo,has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</span><br></p>','<p><span style=\"font-family: &quot;Abhaya Libre&quot;, serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>'),(28,'311457383112','NomineeSeven','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Seven','nominee7@gmail.com','uploads/151723199002852.jpg','','','2018-01-29 14:19:51',1,0,2,'214407771051','347430924766','',''),(29,'453121345460','NomineeEight','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Eight','nominee8@gmail.com','uploads/151723202902949.jpg','','','2018-01-29 14:20:29',1,0,2,'214407771051','347430924766','',''),(30,'350268194064','NomineeNine','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Nine','nominee9@gmail.com','uploads/151723206302997.jpg','','','2018-01-29 14:21:03',1,0,2,'214407771051','347430924766','',''),(31,'458484136448','NomineeTen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Ten','nominee10@gmail.com','uploads/151725506803065.jpg','','','2018-01-29 20:44:28',1,0,2,'148404653372','560276340920','',''),(32,'491272034333','NomineeEleven','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Eleven','nominee11@gmail.com','uploads/151725511703124.jpg','','','2018-01-29 20:45:17',1,0,2,'148404653372','560276340920','',''),(33,'178429218340','NomineeThirteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Thirteen','nominee13@gmail.com','uploads/151725525803191.png','','','2018-01-29 20:47:38',1,0,2,'148404653372','412962962113','',''),(34,'452187627756','NomineeTwelve','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Twelve','nominee12@gmail.com','uploads/151725540303256.png','','','2018-01-29 20:50:03',1,0,2,'148404653372','412962962113','',''),(35,'389358122577','NomineeFourteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Fourteen','nominee14@gmail.com','uploads/151725556303256.png','','','2018-01-29 20:52:43',1,0,2,'191158759771','103340182199','',''),(36,'289507545043','NomineeFifteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Fifteen','nominee15@gmail.com','uploads/151725562103289.png','','','2018-01-29 20:53:41',1,0,2,'191158759771','103340182199','',''),(37,'258767957588','NomineeSixteen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Sixteen','nominee16@gmail.com','uploads/151725568803325.png','','','2018-01-29 20:54:48',1,0,2,'191158759771','241668248976','',''),(38,'496870910062','NomineeSeventeen','$2y$10$xDXridS2Z5NDyF3W0fYpae7j2JLgiwomMgD5An1Ge1T1h1azFRSeu','Nominee Seventeen','nominee17@gmail.com','uploads/151725574103358.png','','','2018-01-29 20:55:41',1,0,2,'191158759771','241668248976','','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_session`
--

DROP TABLE IF EXISTS `users_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_session`
--

LOCK TABLES `users_session` WRITE;
/*!40000 ALTER TABLE `users_session` DISABLE KEYS */;
INSERT INTO `users_session` VALUES (1,2147483647,'9699a538636acff30e43e7be6dccb8744204ae9a82ee3b1f0a3aa18381c1ef17');
/*!40000 ALTER TABLE `users_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votes` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `voterid` varchar(300) NOT NULL,
  `nomineeid` varchar(300) NOT NULL,
  `organizationid` varchar(300) NOT NULL,
  `positionid` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (1,'174616311656','270324952048','214407771051','238770789328'),(2,'174616311656','577880727425','214407771051','251972032522'),(3,'454243422562','474877446628','214407771051','238770789328'),(4,'454243422562','632346227728','214407771051','251972032522'),(5,'454243422562','453121345460','214407771051','347430924766'),(6,'461111766379','270324952048','214407771051','238770789328'),(7,'461111766379','577880727425','214407771051','251972032522'),(8,'461111766379','453121345460','214407771051','347430924766'),(9,'461111766379','389358122577','191158759771','103340182199'),(10,'461111766379','258767957588','191158759771','241668248976'),(11,'454243422562','389358122577','191158759771','103340182199'),(12,'454243422562','258767957588','191158759771','241668248976'),(13,'691501275360','270324952048','214407771051','238770789328'),(14,'691501275360','577880727425','214407771051','251972032522'),(15,'691501275360','453121345460','214407771051','347430924766'),(16,'471506861293','270324952048','214407771051','238770789328'),(17,'471506861293','577880727425','214407771051','251972032522'),(18,'471506861293','453121345460','214407771051','347430924766'),(19,'471506861293','389358122577','191158759771','103340182199'),(20,'471506861293','258767957588','191158759771','241668248976'),(21,'691501275360','389358122577','191158759771','103340182199'),(22,'691501275360','258767957588','191158759771','241668248976'),(23,'270814326257','270324952048','214407771051','238770789328'),(24,'270814326257','577880727425','214407771051','251972032522'),(25,'270814326257','453121345460','214407771051','347430924766'),(26,'270814326257','389358122577','191158759771','103340182199'),(27,'270814326257','258767957588','191158759771','241668248976'),(28,'1512380752','270324952048','214407771051','238770789328'),(29,'1512380752','577880727425','214407771051','251972032522'),(30,'1512380752','453121345460','214407771051','347430924766'),(31,'1512380752','389358122577','191158759771','103340182199'),(32,'1512380752','258767957588','191158759771','241668248976'),(33,'1512497685','270324952048','214407771051','238770789328'),(34,'1512497685','577880727425','214407771051','251972032522'),(35,'1512497685','453121345460','214407771051','347430924766'),(36,'1512497685','389358122577','191158759771','103340182199'),(37,'1512497685','258767957588','191158759771','241668248976'),(38,'406470927698','474877446628','214407771051','238770789328'),(39,'406470927698','632346227728','214407771051','251972032522'),(40,'406470927698','350268194064','214407771051','347430924766'),(41,'406470927698','289507545043','191158759771','103340182199'),(42,'406470927698','496870910062','191158759771','241668248976'),(43,'242819232275','289507545043','191158759771','103340182199'),(44,'242819232275','496870910062','191158759771','241668248976'),(45,'242819232275','474877446628','214407771051','238770789328'),(46,'242819232275','632346227728','214407771051','251972032522'),(47,'242819232275','311457383112','214407771051','347430924766'),(48,'467426610337','303823529393','214407771051','238770789328'),(49,'467426610337','166688767734','214407771051','251972032522'),(50,'467426610337','350268194064','214407771051','347430924766'),(51,'467426610337','289507545043','191158759771','103340182199'),(52,'467426610337','496870910062','191158759771','241668248976'),(53,'460106748446','458484136448','148404653372','560276340920'),(54,'460106748446','178429218340','148404653372','412962962113'),(55,'492493061580','458484136448','148404653372','560276340920'),(56,'492493061580','178429218340','148404653372','412962962113'),(57,'166190079925','458484136448','148404653372','560276340920'),(58,'166190079925','178429218340','148404653372','412962962113'),(59,'381058138688','458484136448','148404653372','560276340920'),(60,'381058138688','178429218340','148404653372','412962962113'),(61,'700920271162','458484136448','148404653372','560276340920'),(62,'700920271162','178429218340','148404653372','412962962113'),(63,'599836216035','491272034333','148404653372','560276340920'),(64,'599836216035','452187627756','148404653372','412962962113'),(65,'222945698995','491272034333','148404653372','560276340920'),(66,'222945698995','452187627756','148404653372','412962962113'),(67,'410822666009','491272034333','148404653372','560276340920'),(68,'410822666009','452187627756','148404653372','412962962113'),(69,'241707645559','491272034333','148404653372','560276340920'),(70,'241707645559','452187627756','148404653372','412962962113'),(71,'174616311656','458484136448','148404653372','560276340920'),(72,'174616311656','178429218340','148404653372','412962962113');
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:11:08
