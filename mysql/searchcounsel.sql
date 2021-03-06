-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: searchcounsel
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
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `home_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `home_city` varchar(255) NOT NULL,
  `home_state` varchar(255) NOT NULL,
  `home_country` varchar(255) NOT NULL,
  `home_zip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','http://gocourt.in/admin/uploads/Ankita5.jpg','','CEO','ankita','shunmugavel','6/111,Nalupulikottai','raj.yaffy@live.com','9994108109','dindigul','','',''),(2,'ragu','423abcc373f1ad82211b71e10d5253c9','http://192.168.1.31/Rajkumar/GoJudiciary/uploads/siruthai-siva-to-team-up-with-ajith-kumar-yet-again-for-thala-57-photos-pictures-stills2.jpg','','','nathan','ragu','chinnalapatty','ragu@gmail.com','9787256314','dindigul','','','');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultation`
--

DROP TABLE IF EXISTS `consultation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultation` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `practice_id` int(255) NOT NULL,
  `lawyer_id` int(255) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_email` varchar(255) NOT NULL,
  `client_phone` varchar(255) NOT NULL,
  `appointment_date` varchar(255) NOT NULL,
  `client_query` varchar(2000) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `client_consult` varchar(255) NOT NULL,
  `consult_type` varchar(255) NOT NULL,
  `appointment_status` varchar(255) NOT NULL,
  `lawyer_answer` varchar(3000) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultation`
--

LOCK TABLES `consultation` WRITE;
/*!40000 ALTER TABLE `consultation` DISABLE KEYS */;
INSERT INTO `consultation` VALUES (9,4,8,7,'immanuel','immanu@gmail.com','9578251463','2016-07-14','Me & my wife have agreed to get a mutual divorce through sec 13 b of hindu marriage law, on terms if I return the gifted items or money. How to give the money back legally so she don\'t deny that later? And I also want to know is there a legal way (law/rule) to get rid of alimony and maintenance after divorce as we are getting divorced mutually. As far as I know we can enter into an agreement. But I have read a case on wordpress.com, where court said U can\'t stop someone from filing a case under sec 25/125 of hindu marriage act for alimony & maintainence. I beg you to suggest me the best.','Unpaid','1500','Meeting','Pending','','',0.00,'','0000-00-00'),(10,4,8,7,'arun','arun@yahoo.co.in','9578451263','2016-07-07','A little history on Wrestlerâ€™s Court â€“ it was created by Dutch Mantell (Zeb Colter for the younger folk) years ago after the murder of Bruiser Brody.  Mantell was at the stadium the night it happened.  The murder came from a disagreement he had with wrestler Jose Gonzalez.  For Mantell, Wrestlerâ€™s Court was good way for talent to hash things out with one another so it doesnâ€™t get to that point.  The downside to that was usually it wasnâ€™t just the quarreling parties and a middle person to sort it out.  Usually the entire locker room was there for the sessions.  Talk about awkward and embarrassing, though it was a light way of squashing beef, if you will.  Many times the punishment was light; the guilty party usually bought free alcohol and food.  Others didnâ€™t get so lucky in their sentence, so to speak.','Unpaid','750','Email','Approved','','',0.00,'','0000-00-00'),(12,21,9,2,'jashir','jass@live.com','9578254565','07/08/2016','Can arbitration property be transferd by gift deed? And do I have any right in my uncles property which he has received from my grandfather?','Unpaid','3000','Video','Pending','See when it comes to Arbitration, the Code of Civil Procedure is not applicable to the same. So even if the pleadings are completed, there is no express bar with respect to amendment of the pleadings. ','',0.00,'','0000-00-00'),(13,18,9,2,'kane','kane@live.com','6785412365287','07/14/2016','A little history on Wrestlerâ€™s Court â€“ it was created by Dutch Mantell (Zeb Colter for the younger folk) years ago after the murder of Bruiser Brody.  Mantell was at the stadium the night it happened.  The murder came from a disagreement he had with wrestler Jose Gonzalez.  For Mantell, Wrestlerâ€™s Court was good way for talent to hash things out with one another so it doesnâ€™t get to that point.  The downside to that was usually it wasnâ€™t just the quarreling parties and a middle person to sort it out.  Usually the entire locker room was there for the sessions.  Talk about awkward and embarrassing, though it was a light way of squashing beef, if you will.  Many times the punishment was light; the guilty party usually bought free alcohol and food.  Others didnâ€™t get so lucky in their sentence, so to speak.','Unpaid','2000','Email','Approve','See when it comes to Arbitration, the Code of Civil Procedure is not applicable to the same. So even if the pleadings are completed, there is no express bar with respect to amendment of the pleadings. ','',0.00,'','0000-00-00'),(14,3,12,13,'ashik','ashik@yahoo.com','9578652143','07/22/2016','How can i get stay order from the court? What do you mean by Stay Order in Indian Law? How can you get Stay order on a Property? How can i get Stay order on construction? What is the Procedure to get stay order from court on property?','Unpaid','20000','Meeting','Pending','','',0.00,'','0000-00-00'),(34,2,13,2,'immanuel','raj.yaffy@gmail.com','9578251463','2016-07-01','Contact details of the Expert will be shared with you once the Booking is complete at your GoCourt.com profile, via SMS and E-Mail at your respective registered mobile number and e-mail address. ','Completed','','phone','Approve','','9J2180810B690613E',2000.00,'USD','0000-00-00'),(35,3,14,2,'arun','arun.kumar@gmail.com','9578251463','2016-07-01','Contact details of the Expert will be shared with you once the Booking is complete at your GoCourt.com profile, via SMS and E-Mail at your respective registered mobile number and e-mail address. ','Completed','','video','Unapproved','','3GU25302Y52136059',2000.00,'USD','0000-00-00'),(36,4,28,7,'vijay','vijayk@gmail.com','9578253641','2016-07-01','Contact details of the Expert will be shared with you once the Booking is complete at your GoCourt.com profile, via SMS and E-Mail at your respective registered mobile number and e-mail address. ','Paid','','None','Approved','','',0.00,'','0000-00-00'),(38,4,27,2,'sam','sam@gmail.com','34343434','08/26/2016','hii','Paid','','None','Pending','','',0.00,'','0000-00-00'),(48,2,13,2,'boopathi','boopathi@techware.co.in','9994108109','08/02/2016','Booking this Service implies that you agree to the detailed Terms of Use as laid out by GoCourt.com. All payments made to Book the Service are governed by our Payment, Refund & Cancellation Policy.','Paid','','None','Pending','','4S162785C14982903',7000.00,'USD','0000-00-00'),(49,6,29,2,'dfgdfg','oliviajohn11@gmail.com','54656456456','09/09/2016','ghjghjghjghjgh','Completed','','email','','','4UX213085N128210B',100.00,'USD','0000-00-00'),(52,3,35,17,'arathy','oliviajohn11@gmail.com','23232323232','08/25/2016','sfdf','Completed','','email','','','7M708088KW9721246',100.00,'USD','0000-00-00'),(53,3,35,17,'arathy','oliviajohn11@gmail.com','3232322','08/31/2016','dfdf','Completed','','meeting','','','6YK35477RX029435P',300.00,'USD','0000-00-00'),(54,3,35,17,'arathy','oliviajohn11@gmail.com','23232323233','08/25/2016','sadasd','Completed','','video','','','7Y281073HP766792B',3000.00,'USD','0000-00-00'),(55,3,35,2,'raju','oliviajohn11@gmail.com','54656456456','08/31/2016','Contact details of the Expert will be shared with you once the Booking is complete at your GoCourt.com profile, via SMS and E-Mail at your respective registered mobile number and e-mail address. ','Completed','','phone','','','20F77191M1595534X',100.00,'USD','0000-00-00'),(56,3,35,2,'immanuel','raj.yaffy@gmail.com','9578656943','09/03/2016','Contact details of the Expert will be shared with you once the Booking is complete at your GoCourt.com profile, via SMS and E-Mail at your respective registered mobile number and e-mail address. ','Completed','','phone','','','9VG3850367819372K',100.00,'USD','0000-00-00'),(57,3,14,2,'immanuel','raj.yaffy@gmail.com','9578251463','09/03/2016','Booking this Service implies that you agree to the detailed Terms of Use as laid out by GoCourt.com. All payments made to Book the Service are governed by our Payment, Refund & Cancellation Policy. ','Completed','','phone','','','39H253369C5365107',2000.00,'USD','0000-00-00'),(58,3,14,2,'ewsfswdf','raj.yaffy@gmail.com','9578253641','09/03/2016','Contact details of the Expert will be shared with you once the Booking is complete at your GoCourt.com profile, via SMS and E-Mail at your respective registered mobile number and e-mail address. ','Completed','','email','','','59679929B5986053Y',2000.00,'USD','0000-00-00'),(60,5,33,2,'rajkumar','raj.yaffy@gmail.com','9578253641','09/03/2016','Contact details of the Expert will be shared with you once the Booking is complete at your GoCourt.com profile, via SMS and E-Mail at your respective registered mobile number and e-mail address. ','Completed','','email','','','8CT93313NC019305H',2000.00,'USD','2016-09-03 12:51:23'),(65,5,32,2,'rajkumar','raj.yaffy@gmail.com','9994108109','09/07/2016','wewefd','Completed','','email','','','9HE84634DA896302N',2000.00,'USD','2016-09-06 08:53:18'),(67,4,27,2,'rajkumar','raj.yaffy@gmail.com','9994108109','09/06/2016','qwdwed','Completed','','phone','','','68W968977Y929754E',1000.00,'USD','2016-09-06 09:33:29'),(68,2,13,22,'ramesh','oliviajohn11@gmail.com','2323232323','09/06/2016','fdfdf','Unpaid','','phone','','','4DV09884K9727514S',2000.00,'USD','2016-09-06 09:48:04'),(69,4,27,22,'ramesh','oliviajohn11@gmail.com','545454545','09/14/2016','hiii','Completed','','video','','','28W89010CS264435D',2000.00,'USD','2016-09-06 10:19:56'),(74,3,14,0,'raju','raj.yaffy@gmail.com','9787790173','09/10/2016','Nothing ','','','email','','','',0.00,'',''),(75,2,13,0,'Jatin','abc@gmail.com','9889898898','09/14/2016','Testing','','','phone','','','',0.00,'',''),(76,4,27,0,'sfdfd','dfd@kj.com','809999080989','09/17/2016','sdlsm slksl','','','phone','','','',0.00,'',''),(77,4,6,0,'ases','a@a.com','664526545','09/15/2016','df','','','phone','','','',0.00,'',''),(78,24,17,0,'ros','ros@ros.com','656255255','09/16/2016','test paty','','','meeting','Approved','','',0.00,'',''),(79,4,27,2,'rafa','mark_htunyov_fergieson@tfbnw.net','13132132121','09/14/2016','123131321231','Completed','','phone','','','6U418794VV796874X',1000.00,'USD','2016-09-13 14:25:18'),(80,2,13,0,'asdasda','asdasdasda@gmail.com','2342342','09/21/2016','sdfsdfsd ','','','video','','','',0.00,'',''),(81,4,27,0,'abc','adssad@gmail.com','3213213122','09/14/2016','dasdfasdf asdfasdfasdf','','','phone','','','',0.00,'',''),(82,4,27,0,'nn reat','nn@gmail.com','134455','09/14/2016','why is a dof','','','phone','','','',0.00,'',''),(83,3,26,0,'nmn','nnm@vbb.j','66767677667','09/15/2016','jjjjjk','','','meeting','','','',0.00,'','');
/*!40000 ALTER TABLE `consultation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `court_categories`
--

DROP TABLE IF EXISTS `court_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `court_categories` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `court_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `court_categories`
--

LOCK TABLES `court_categories` WRITE;
/*!40000 ALTER TABLE `court_categories` DISABLE KEYS */;
INSERT INTO `court_categories` VALUES (2,'Village Court'),(3,'District Court'),(4,'Supreme Court'),(5,'High Court'),(6,'Executive Court');
/*!40000 ALTER TABLE `court_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronjob`
--

DROP TABLE IF EXISTS `cronjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cronjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronjob`
--

LOCK TABLES `cronjob` WRITE;
/*!40000 ALTER TABLE `cronjob` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_firstname` varchar(255) NOT NULL,
  `customer_lastname` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_display_image` varchar(255) NOT NULL,
  `customer_status` varchar(255) NOT NULL,
  `customer_type` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_gender` varchar(255) NOT NULL,
  `customer_dob` varchar(255) NOT NULL,
  `customer_personal_address` varchar(255) NOT NULL,
  `customer_personal_city` varchar(255) NOT NULL,
  `customer_personal_state` varchar(255) NOT NULL,
  `customer_personal_country` varchar(255) NOT NULL,
  `customer_personal_zip` varchar(255) NOT NULL,
  `customer_billing_address` varchar(255) NOT NULL,
  `customer_billing_city` varchar(255) NOT NULL,
  `customer_billing_state` varchar(255) NOT NULL,
  `customer_billing_country` varchar(255) NOT NULL,
  `customer_billing_zip` varchar(255) NOT NULL,
  `customer_billing_phone` varchar(255) NOT NULL,
  `customer_billing_email` varchar(255) NOT NULL,
  `customer_billing_name` varchar(255) NOT NULL,
  `customer_language` varchar(255) NOT NULL,
  `customer_username` varchar(255) NOT NULL,
  `active_code` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'jerin','baby','panikulams@yahoo.com','ee11cbb19052e40b07aac0ca060c23ee','uploads/1044750-FAWAD-1455170009-405-640x480.jpg','enable','none','9578451225','Female','1996-09-10','4/111,panikulam','palakad','kerala','india','700045','4/111,panikulam','palakad','kerala','india','700047','9578656525','baby@gmail.com','baby alph','english,malayalam','user',''),(13,'vikram','shunmugavel','vikram.lova@gmail.com','c74f3080de6c3c0f1ddf8d7d38e2bcef','uploads/Hrithik_Rado.jpg','enable','none','9578656943','male','11/17/1993','7/111,kennady nagar 2nd streeet','salem','tamilnadu','India','636004','7/111,kennady nagar 2nd streeet','salem','tamilnadu','India','636004','9994108109','raj.yaffy@gmail.com','rajkumar','english,tamil,malayalam,telugu','vikram',''),(14,'ameer','musthapa','musthapa.ameer@gmail.com','4fd871a3338408a1fa1641c518c9d909','uploads/1044750-FAWAD-1455170009-405-640x480.jpg','enable','none','9994108109','male','08/22/2016','nalupulikottai','dindigul','tamilnadu','India','624619','nalupulikottai','dindigul','tamilnadu','India','624619','9994108109','raj.yaffy@gmail.com','rajkumar','english,tamil,malayalam,telugu','ameer',''),(17,'arathy','sivan','siva.arathi@gmail.com','e10adc3949ba59abbe56e057f20f883e','uploads/bordenbl_ch.jpg','disable','none','8425369874','male','08/10/2016','8/111,kondalampatty','salem','tamilnadu','india','700045','4/111,panikulam','thrissur','tamilnadu','india','624158','5656565','fg@gmail.com','baby alph','english,malayalam','arathy',''),(27,'','','raj.yaffy@gmail.com','82544166df09a9e4491b97038532c590','','','','','','','','','','','','','','','','','','','','','raju',''),(28,'demo','demo','demo@gmail.com','e10adc3949ba59abbe56e057f20f883e','uploads/imag444.png','disable','none','32232322232','male','08/31/2016','ghfgh','kochi','kerala','India','23232','ewerttw','kochi','kerala','india','123456','123456789','demo@gmail.com','demo','english hindi','demouser',''),(29,'','','jatinsahani@icloud.com','07d5cf1edcc25b423aabeb71cf17220a','','enable','','','','','','','','','','','','','','','','','','','jsahani',''),(30,'','','videosreporter2014@gmail.com','d22cfa565464344b37a26ca6cbbf3796','','','','','','','','','','','','','','','','','','','','','videosreporter2014',''),(31,'','','sakuhutan@saklawph.com','61e24943877cd050a376f1845ed9c62f','','','','','','','','','','','','','','','','','','','','','Salma Angkaya-Kuhutan','');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lawyer`
--

DROP TABLE IF EXISTS `lawyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lawyer` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `lawyer_firstname` varchar(255) NOT NULL,
  `lawyer_lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `home_city` varchar(255) NOT NULL,
  `home_state` varchar(255) NOT NULL,
  `home_country` varchar(255) NOT NULL,
  `display_image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `firmname` varchar(255) NOT NULL,
  `office_address` varchar(255) NOT NULL,
  `office_city` varchar(255) NOT NULL,
  `office_state` varchar(255) NOT NULL,
  `office_country` varchar(255) NOT NULL,
  `office_zip` int(255) NOT NULL,
  `office_workingtimedays` varchar(255) NOT NULL,
  `court` varchar(255) NOT NULL,
  `languages` varchar(255) NOT NULL,
  `statebar` varchar(255) NOT NULL,
  `barcouncil_number` varchar(255) NOT NULL,
  `home_address` varchar(255) NOT NULL,
  `home_zip` int(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `practice` varchar(255) NOT NULL,
  `bar_association` varchar(255) NOT NULL,
  `resume` varchar(2500) NOT NULL,
  `c_vitae` varchar(255) NOT NULL,
  `council_idphoto` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `referring_lawyer` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_consultation` varchar(255) NOT NULL,
  `phone_consultation` varchar(255) NOT NULL,
  `meeting_consultation` varchar(255) NOT NULL,
  `video_consultation` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lawyer`
--

LOCK TABLES `lawyer` WRITE;
/*!40000 ALTER TABLE `lawyer` DISABLE KEYS */;
INSERT INTO `lawyer` VALUES (6,'Diva','Arora Menon','diva@live.com','10 years','9787656923','delhi','new delhi','india','http://gocourt.in/admin/uploads/thirteen.jpg','enable','delegated','diva advocate council','2 A G C R ,Panicker palace','DELHI','new delhi','INDIA',110002,'Mon -Fri ,7AM-5PM','4,6','English, Hindi','New Delhi','D/2782/2006','2/111,nehru street',110002,'BA BL','4,9','New Delhi Bar Council ','Diva has done her LLB from ILS, Pune and hold diplomas in Intellectual Property Rights, Cyber Law and Corporate Law. Diva had worked in the number one ranked intellectual property law firm in India, Anand and Anand as a litigator for over 6 years managing trademark, copyright, patent, design, confidentiality and trade secret cases before various courts and tribunals across India.She also has also been engaged in translation and contractual work. Over the last 3 years she has diversified to handling a wide portfolio of civil litigation which include consumer, competition, cheque bouncing and arbitration matters. She also has been engaged in filing and prosecuting trademark, copyright, design and patent applications before the relevant authorities and tribunals including but not limited to the Registrar of Trademarks, Copyrights, Patent & Designs and Intellectual Property Appellate Board.She has assisted both individual and corporate clients engaged in the Automobile, Entertainment, FMCG, Garments, Pharmaceutical, Healthcare and Technology Sector.She has has successfully litigated infringement and passing off actions and devising litigation strategies on behalf of her clients. She has represented various multinational and Indian companies and associations before the Supreme Court of India, High Courts,District Courts and various forums and tribunals in India.She authored numerous articles on Intellectual Property Laws that have been published in various journals.Advocate Diva enrolled with the New Delhi Bar Council in 2006. She is also member of the New Delhi Bar Association. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/thirteen.jpg','Nil','Arjun vinod','diva','aa62f8527389d3b9531faad76d772b9f','1500','1000','3000','2000','Female','10.314789','10.314789'),(8,'Vasavi Sridevi','Sivanandham','vasvi@gmail.com','8 years','9994106622','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/editor9.JPG','enable','special','Ankita Law services','3rd room,2nd building High court','RISSOZOU','moscow','RUSSIA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,6','English,Tamil','tamilnadu','D/2782/2013','6/22,vinayaga street,Nungampakam',600001,'BA BL','7,8,10,19,23','chennai,tamilnadu','Advocate Ankita Singh has an experience of advising on domestic as well as international clients on matters regarding litigation and dispute resolution. She specializes in the fields of intellectual property rights, sports, media & entertainment law. \r\n\r\nAdditionally, she has been extensively engaged in restructuring and M&A advisory, civil litigation at various forums across different jurisdictions. Furthermore, she has delved in environmental matters and competition laws and has represented clients in the National Green Tribunal and Competition Commission. She has widely represented clients internationally for litigation and dispute resolution at the various forums for e.g. the Singapore Arbitration Centre etc.\r\n\r\nAdvocate Ankita enrolled with the Bar Council of Tamilnadu in 2013. She is a member of the Bar Association of Tamilnadu','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/editor9.JPG','nil','Vijay parikar','vasavi','acfbbfae42cc9c60e1c89dce0a1e898a','750','500','1500','1000','Female','55.574381','42.020181'),(9,'Kayal','kandasamy','kaya@hotmail.com','3 years','9994106611','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/nine.jpg','enable','normal','Vijay law services','3rd room,2nd building High court','YAAZH','columbu','SRILANKA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,3','tamil,hindi,english','tamilnadu','D/2782/2012','7/22,kandan street,Thambaram',600001,'BA BL','3,4,5','chennai,tamilnadu','Advocate  kayal has been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired many years of professional experience in providing legal consultancy and advisory services.\r\n\r\nAdvocate kayal practices law based at Vellore at District courts in Vellore and surroundings, Family court, civil court and high court at Chennai, Family, civil courts at Bangalore. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/nine.jpg','nil','ajith kuppusamy','kayal','48e03055b573dba3a6a7bb06178a9242','2000','2000','3000','3000','Female','10.314789','10.314789'),(12,'dhruv','banerji','dhruv@live.com','7years','9858653241','kochi','kerala','india','http://gocourt.in/admin/uploads/seven.jpg','enable','none','Prophet Law Consulting Service','greater kailash','DELHI','DELHI','INDIA',700015,'Mon - Fri - 10AM-5PM','2,3','Malayalam,English','Kerala State','B31/6852','7/111, allah house ,Town road',700012,'B.A B.L','3,4,5,6','kerala bar association','Advocate Bilal is an Advocate and Military Law Consultant, Specialist in Military Law, Courts Martial & Military Service litigation. As a Military Advocate dealing with Army Law, Navy Law and Air Force Law, he had taken Premature Retirement from Air Force and his last appointment was Joint Judge Advocate General (Air).Advocate Bilal deals in Army, Air Force, and Navy court cases Legal Advisor in BSF, CRPF, and CISF matters. He takes up litigation matters related to Service Pension, Disability pension, Court Martial, Promotion, Discharge, Extension of Service etc. As a Military Lawyer at the Armed Forces Tribunal, he is dealing with Army Law, Navy Law, and Air Force Law.Advocate Bilal has also specialised in International Trade laws after obtaining one year Diploma from ILI New Delhi. He has been handling matrimonial issues while in service and continued taking up matters in civil courts as well on matrimonial issues.','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/seven.jpg','Nil','Diva','dhruv','1eba9614763773df08dd49049663c3e3','10000','7000','20000','15000','Male','10.314789','10.314789'),(13,'rajat','joseph','rajat@gmail.com','14 years','9994106622','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/twelve.jpg','enable','none','Joby law services','Nizamuddin East','DELHI','DELHI','INDIA',700015,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','5','English,Malayalam','Kerala State','D/2782/2013','6/22,vinayaga street,Nungampakam',600001,'BA BL','2,5','kerala bar association','Advocate Bilal is an Advocate and Military Law Consultant, Specialist in Military Law, Courts Martial & Military Service litigation. As a Military Advocate dealing with Army Law, Navy Law and Air Force Law, he had taken Premature Retirement from Air Force and his last appointment was Joint Judge Advocate General (Air).Advocate Bilal deals in Army, Air Force, and Navy court cases Legal Advisor in BSF, CRPF, and CISF matters. He takes up litigation matters related to Service Pension, Disability pension, Court Martial, Promotion, Discharge, Extension of Service etc. As a Military Lawyer at the Armed Forces Tribunal, he is dealing with Army Law, Navy Law, and Air Force Law.Advocate Bilal has also specialised in International Trade laws after obtaining one year Diploma from ILI New Delhi. He has been handling matrimonial issues while in service and continued taking up matters in civil courts as well on matrimonial issues.','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/twelve.jpg','nil','Vijay parikar','rajat','d2ff3b88d34705e01d150c21fa7bde07','2000','2000','20000','7000','Female','28.608604','77.235486'),(14,'siji','malayil','siji@hotmail.com','16 years','9994106611','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/fifteen.jpg','enable','normal','Vijay law services','Murphy Road','BANGALORE','Karnataka','INDIA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,3,6','tamil,english,malayalam,telugu','tamilnadu','D/2782/2012','7/22,kandan street,Thambaram',600001,'BA BL','3,4,5,6','chennai,tamilnadu','Advocate  kayal has been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired many years of professional experience in providing legal consultancy and advisory services.\r\n\r\nAdvocate kayal practices law based at Vellore at District courts in Vellore and surroundings, Family court, civil court and high court at Chennai, Family, civil courts at Bangalore. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/fifteen.jpg','nil','ajith kuppusamy','siji','8dd059bfe1aa4735e1e0be6d7c2f37b6','2000','2000','3000','3000','Male','10.314789','10.314789'),(15,'Nitin','Bhandari','Nitin@hotmail.com','8 years','9994106611','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/sixteen.jpg','enable','normal','Vijay law services','tonk road','JAIPUR','Maharastra','INDIA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,3,6','tamil,english,malayalam,telugu','tamilnadu','D/2782/2012','7/22,kandan street,Thambaram',600001,'BA BL','3,4,5,6','chennai,tamilnadu','Advocate  kayal has been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired many years of professional experience in providing legal consultancy and advisory services.\r\n\r\nAdvocate kayal practices law based at Vellore at District courts in Vellore and surroundings, Family court, civil court and high court at Chennai, Family, civil courts at Bangalore. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/sixteen.jpg','nil','ajith kuppusamy','nitin','b585c4415b1fe50f2c31fa1698b271b7','2000','2000','3000','3000','Male','24.7391','77.235486'),(16,'sunil','dalal','sunil@hotmail.com','19 years','9994106611','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/Fawad_Khan_12.jpg','enable','normal','Vijay law services','3rd room,2nd building High court','CHENNAI','tamilnadu','INDIA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,3,6','tamil,english,malayalam,telugu','tamilnadu','D/2782/2012','7/22,kandan street,Thambaram',600001,'BA BL','3,4,5,6','chennai,tamilnadu','Advocate  kayal has been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired many years of professional experience in providing legal consultancy and advisory services.\r\n\r\nAdvocate kayal practices law based at Vellore at District courts in Vellore and surroundings, Family court, civil court and high court at Chennai, Family, civil courts at Bangalore. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/Fawad_Khan_12.jpg','nil','ajith kuppusamy','sunil','b0b86080c976aa7651bffe0801644d74','2000','2000','3000','3000','Male','10.0122128','77.235486'),(17,'The Law ','Club','vijaya@hotmail.com','English','9994106611','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/editor4.png','enable','normal','Vijay law services','3rd room,2nd building High court','CONNECTICUT','newyork','USA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,3,6','English','tamilnadu','D/2782/2012','7/22,kandan street,Thambaram',600001,'BA BL','24,25,27','chennai,tamilnadu','Advocate  kayal has been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired many years of professional experience in providing legal consultancy and advisory services.\r\n\r\nAdvocate kayal practices law based at Vellore at District courts in Vellore and surroundings, Family court, civil court and high court at Chennai, Family, civil courts at Bangalore. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/editor4.png','nil','ajith kuppusamy','vijay','4f9fecabbd77fba02d2497f880f44e6f','2000','2000','3000','3000','Male','10.0122128','77.235486'),(18,'gnanasekar','Dsouza','gnana@hotmail.com','3 years','9994106611','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/six.jpg','enable','normal','Vijay law services','3rd room,2nd building High court','CONNECTICUT','newyork','USA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,3,6','tamil,english,malayalam,telugu','tamilnadu','D/2782/2012','7/22,kandan street,Thambaram',600001,'BA BL','3,4,5,6','chennai,tamilnadu','Advocate  kayal has been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired many years of professional experience in providing legal consultancy and advisory services.\r\n\r\nAdvocate kayal practices law based at Vellore at District courts in Vellore and surroundings, Family court, civil court and high court at Chennai, Family, civil courts at Bangalore. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/six.jpg','nil','ajith kuppusamy','gnana','d24d6e9de999b231280cef3e01987289','2000','2000','3000','3000','Male','28.608604','77.235486'),(19,'pooja agarwal','gupta','pooja@live.com','10 years','9787656923','delhi','new delhi','india','http://gocourt.in/admin/uploads/one.jpg','enable','delegated','diva advocate council','Nerul East','MUMBAI','Maharastra','INDIA',110002,'Mon -Fri ,7AM-5PM','4,6','English, Hindi','New Delhi','D/2782/2006','2/111,nehru street',110002,'BA BL','4,9','New Delhi Bar Council ','Diva has done her LLB from ILS, Pune and hold diplomas in Intellectual Property Rights, Cyber Law and Corporate Law. Diva had worked in the number one ranked intellectual property law firm in India, Anand and Anand as a litigator for over 6 years managing trademark, copyright, patent, design, confidentiality and trade secret cases before various courts and tribunals across India.She also has also been engaged in translation and contractual work. Over the last 3 years she has diversified to handling a wide portfolio of civil litigation which include consumer, competition, cheque bouncing and arbitration matters. She also has been engaged in filing and prosecuting trademark, copyright, design and patent applications before the relevant authorities and tribunals including but not limited to the Registrar of Trademarks, Copyrights, Patent & Designs and Intellectual Property Appellate Board.She has assisted both individual and corporate clients engaged in the Automobile, Entertainment, FMCG, Garments, Pharmaceutical, Healthcare and Technology Sector.She has has successfully litigated infringement and passing off actions and devising litigation strategies on behalf of her clients. She has represented various multinational and Indian companies and associations before the Supreme Court of India, High Courts,District Courts and various forums and tribunals in India.She authored numerous articles on Intellectual Property Laws that have been published in various journals.Advocate Diva enrolled with the New Delhi Bar Council in 2006. She is also member of the New Delhi Bar Association. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/one.jpg','Nil','Arjun vinod','pooja','9cbb6aebcf5ae14a9248b4c08165212e','1500','1000','3000','2000','Female','10.314789','10.314789'),(20,'shenba','kandasamy','shenba@hotmail.com','3 years','9994106611','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/four.jpg','enable','normal','Vijay law services','3rd room,2nd building High court','YAAZH','columbu','SRILANKA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,3','tamil,hindi,english','tamilnadu','D/2782/2012','7/22,kandan street,Thambaram',600001,'BA BL','3,4,5','chennai,tamilnadu','Advocate  kayal has been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired many years of professional experience in providing legal consultancy and advisory services.\r\n\r\nAdvocate kayal practices law based at Vellore at District courts in Vellore and surroundings, Family court, civil court and high court at Chennai, Family, civil courts at Bangalore. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/four.jpg','nil','ajith kuppusamy','shenba','48bfebc4b321791d85cc577b366e8164','2000','2000','3000','3000','Female','10.314789','10.314789'),(21,'Madhur','Sapra','Madhur@gmail.com','13 years','9994106622','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/seven.jpg','enable','none','Joby law services','Tis Hazari Court','DELHI','DELHI','INDIA',700015,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','5','English,Malayalam','Kerala State','D/2782/2013','6/22,vinayaga street,Nungampakam',600001,'BA BL','2,5','kerala bar association','Advocate Bilal is an Advocate and Military Law Consultant, Specialist in Military Law, Courts Martial & Military Service litigation. As a Military Advocate dealing with Army Law, Navy Law and Air Force Law, he had taken Premature Retirement from Air Force and his last appointment was Joint Judge Advocate General (Air).Advocate Bilal deals in Army, Air Force, and Navy court cases Legal Advisor in BSF, CRPF, and CISF matters. He takes up litigation matters related to Service Pension, Disability pension, Court Martial, Promotion, Discharge, Extension of Service etc. As a Military Lawyer at the Armed Forces Tribunal, he is dealing with Army Law, Navy Law, and Air Force Law.Advocate Bilal has also specialised in International Trade laws after obtaining one year Diploma from ILI New Delhi. He has been handling matrimonial issues while in service and continued taking up matters in civil courts as well on matrimonial issues.','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/seven.jpg','nil','Vijay parikar','madhur','e8f950ef52843218b8e39c9241500443','2000','2000','20000','7000','Female','10.314789','10.314789'),(23,'Brunda','Lavu','Lavu@gmail.com','6 years','9994106622','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/Women-Barbra-Arnold.jpg','enable','special','Ankita Law services','3rd room,2nd building High court','CHITTAGONG','Shangai','CHINA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,6','English,Tamil','tamilnadu','D/2782/2013','6/22,vinayaga street,Nungampakam',600001,'BA BL','7,8,10,19,23','chennai,tamilnadu','Advocate Ankita Singh has an experience of advising on domestic as well as international clients on matters regarding litigation and dispute resolution. She specializes in the fields of intellectual property rights, sports, media & entertainment law. \r\n\r\nAdditionally, she has been extensively engaged in restructuring and M&A advisory, civil litigation at various forums across different jurisdictions. Furthermore, she has delved in environmental matters and competition laws and has represented clients in the National Green Tribunal and Competition Commission. She has widely represented clients internationally for litigation and dispute resolution at the various forums for e.g. the Singapore Arbitration Centre etc.\r\n\r\nAdvocate Ankita enrolled with the Bar Council of Tamilnadu in 2013. She is a member of the Bar Association of Tamilnadu','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/Women-Barbra-Arnold.jpg','nil','Vijay parikar','brunda','57b659e1e9f6d373608832b183450405','750','500','1500','1000','Female','10.314789','10.314789'),(24,'Bhavana ','Alexander','Bhavana@live.com','8 years','9787656923','delhi','new delhi','india','http://gocourt.in/admin/uploads/three.jpg','enable','delegated','diva advocate council','Mylapore','CHENNAI','Tamilnadu','INDIA',110002,'Mon -Fri ,7AM-5PM','4,6','English, Hindi','New Delhi','D/2782/2006','2/111,nehru street',110002,'BA BL','4,9','New Delhi Bar Council ','Diva has done her LLB from ILS, Pune and hold diplomas in Intellectual Property Rights, Cyber Law and Corporate Law. Diva had worked in the number one ranked intellectual property law firm in India, Anand and Anand as a litigator for over 6 years managing trademark, copyright, patent, design, confidentiality and trade secret cases before various courts and tribunals across India.She also has also been engaged in translation and contractual work. Over the last 3 years she has diversified to handling a wide portfolio of civil litigation which include consumer, competition, cheque bouncing and arbitration matters. She also has been engaged in filing and prosecuting trademark, copyright, design and patent applications before the relevant authorities and tribunals including but not limited to the Registrar of Trademarks, Copyrights, Patent & Designs and Intellectual Property Appellate Board.She has assisted both individual and corporate clients engaged in the Automobile, Entertainment, FMCG, Garments, Pharmaceutical, Healthcare and Technology Sector.She has has successfully litigated infringement and passing off actions and devising litigation strategies on behalf of her clients. She has represented various multinational and Indian companies and associations before the Supreme Court of India, High Courts,District Courts and various forums and tribunals in India.She authored numerous articles on Intellectual Property Laws that have been published in various journals.Advocate Diva enrolled with the New Delhi Bar Council in 2006. She is also member of the New Delhi Bar Association. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/three.jpg','Nil','Arjun vinod','bhavana','046fc462f4fb1e51fc14993cf126fabc','1500','1000','3000','2000','Female','10.314789','10.314789'),(25,'Pratap','Kumar','Pratap@hotmail.com','12 years','9994106611','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/1044750-FAWAD-1455170009-405-640x480.jpg','enable','normal','Vijay law services','Madiwala','BANGALORE','Karnataka','INDIA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,3,6','tamil,english,malayalam,telugu','tamilnadu','D/2782/2012','7/22,kandan street,Thambaram',600001,'BA BL','3,4,5,6','chennai,tamilnadu','Advocate  kayal has been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired many years of professional experience in providing legal consultancy and advisory services.\r\n\r\nAdvocate kayal practices law based at Vellore at District courts in Vellore and surroundings, Family court, civil court and high court at Chennai, Family, civil courts at Bangalore. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/nine.jpg','nil','ajith kuppusamy','pratap','0997f9a1f7b4df85cc08f18f89c35b51','2000','2000','3000','3000','Male','10.0122128','77.235486'),(26,'nivash','subramani','nivash@hotmail.com','3 years','9994106611','chennai','tamilnadu','india','http://gocourt.in/admin/uploads/fourteen.jpg','enable','normal','Vijay law services','3rd room,2nd building High court','CONNECTICUT','newyork','USA',600001,'Mon - Wed  10 AM - 4PM ,SAT 7AM to 5PM','2,3,6','tamil,english,malayalam,telugu','tamilnadu','D/2782/2012','7/22,kandan street,Thambaram',600001,'BA BL','3,4,5,6','chennai,tamilnadu','Advocate  kayal has been practicing and handling cases independently with a result oriented approach, both professionally and ethically and has now acquired many years of professional experience in providing legal consultancy and advisory services.\r\n\r\nAdvocate kayal practices law based at Vellore at District courts in Vellore and surroundings, Family court, civil court and high court at Chennai, Family, civil courts at Bangalore. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/fourteen.jpg','nil','ajith kuppusamy','nivash','d5f77e1cde2993f01122c27f42496919','2000','2000','3000','3000','Male','28.608604','77.235486'),(27,'sudershani','ray','ray@live.com','13 years','9787656923','delhi','new delhi','india','http://gocourt.in/admin/uploads/ten.jpg','enable','delegated','diva advocate council','Kailash Hills','DELHI','new delhi','INDIA',110002,'Mon -Fri ,7AM-5PM','4,6','English, Hindi','New Delhi','D/2782/2006','2/111,nehru street',110002,'BA BL','4,9','New Delhi Bar Council ','Diva has done her LLB from ILS, Pune and hold diplomas in Intellectual Property Rights, Cyber Law and Corporate Law. Diva had worked in the number one ranked intellectual property law firm in India, Anand and Anand as a litigator for over 6 years managing trademark, copyright, patent, design, confidentiality and trade secret cases before various courts and tribunals across India.She also has also been engaged in translation and contractual work. Over the last 3 years she has diversified to handling a wide portfolio of civil litigation which include consumer, competition, cheque bouncing and arbitration matters. She also has been engaged in filing and prosecuting trademark, copyright, design and patent applications before the relevant authorities and tribunals including but not limited to the Registrar of Trademarks, Copyrights, Patent & Designs and Intellectual Property Appellate Board.She has assisted both individual and corporate clients engaged in the Automobile, Entertainment, FMCG, Garments, Pharmaceutical, Healthcare and Technology Sector.She has has successfully litigated infringement and passing off actions and devising litigation strategies on behalf of her clients. She has represented various multinational and Indian companies and associations before the Supreme Court of India, High Courts,District Courts and various forums and tribunals in India.She authored numerous articles on Intellectual Property Laws that have been published in various journals.Advocate Diva enrolled with the New Delhi Bar Council in 2006. She is also member of the New Delhi Bar Association. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/ten.jpg','Nil','Arjun vinod','sudershani','86c7d4c6f7e5506ea5c5b225cdf333a5','1500','1000','3000','2000','Female','10.314789','10.314789'),(28,'Shikha','Sapra','Sapra@live.com','13 years','9787656923','delhi','new delhi','india','http://gocourt.in/admin/uploads/five.jpg','enable','delegated','diva advocate council','Greater Kailash 1','DELHI','new delhi','INDIA',110002,'Mon -Fri ,7AM-5PM','4,6','English, Hindi','New Delhi','D/2782/2006','2/111,nehru street',110002,'BA BL','4,9','New Delhi Bar Council ','Diva has done her LLB from ILS, Pune and hold diplomas in Intellectual Property Rights, Cyber Law and Corporate Law. Diva had worked in the number one ranked intellectual property law firm in India, Anand and Anand as a litigator for over 6 years managing trademark, copyright, patent, design, confidentiality and trade secret cases before various courts and tribunals across India.She also has also been engaged in translation and contractual work. Over the last 3 years she has diversified to handling a wide portfolio of civil litigation which include consumer, competition, cheque bouncing and arbitration matters. She also has been engaged in filing and prosecuting trademark, copyright, design and patent applications before the relevant authorities and tribunals including but not limited to the Registrar of Trademarks, Copyrights, Patent & Designs and Intellectual Property Appellate Board.She has assisted both individual and corporate clients engaged in the Automobile, Entertainment, FMCG, Garments, Pharmaceutical, Healthcare and Technology Sector.She has has successfully litigated infringement and passing off actions and devising litigation strategies on behalf of her clients. She has represented various multinational and Indian companies and associations before the Supreme Court of India, High Courts,District Courts and various forums and tribunals in India.She authored numerous articles on Intellectual Property Laws that have been published in various journals.Advocate Diva enrolled with the New Delhi Bar Council in 2006. She is also member of the New Delhi Bar Association. ','http://192.168.138.31/Rajkumar/GoCourt/uploads/CV-Templates-Curriculum-Vitae.doc','http://gocourt.in/admin/uploads/five.jpg','Nil','Arjun vinod','shikha','e5ad7ae0fe48a230165d6b15f5be4e5f','1500','1000','3000','2000','Female','10.314789','10.314789'),(37,'pradeek','pradeek','pradeek@gmail.com','11 years','2424242424','kochi','kerala','india','http://gocourt.in/admin/uploads/western-european-travel-novels2.jpg','disable','none','pradeek private ltd','gfdgdfg fgdgdfg','kochi','kerala','india',43434,'mon-fri ','6','english hindi','fgdfg','6564','kochi hghgh',564646,'LLB','3','7868','Write Up of Experience/CV/Resume','http://gocourt.in/admin/uploads/western-european-travel-novels1.jpg','http://gocourt.in/admin/uploads/western-european-travel-novels.jpg','ghfghu','adv.varma ','pradeek','e10adc3949ba59abbe56e057f20f883e','200','100','500','400','Male','556','565');
/*!40000 ALTER TABLE `lawyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_guide`
--

DROP TABLE IF EXISTS `legal_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legal_guide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `practice_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_guide`
--

LOCK TABLES `legal_guide` WRITE;
/*!40000 ALTER TABLE `legal_guide` DISABLE KEYS */;
INSERT INTO `legal_guide` VALUES (1,4,'HOW MUCH DOES A DIVORCE COST ?','Even though it is impossible to answer the complex question of how much will a divorce actually cost, here are some deciding factors which will affect the total cost of divorce.\r\n\r\n    Divorce under mutual consent will cost lesser than a contested divorce.\r\n    Relationship of the estranged couple is a major factor; the more the couple disagrees on key issues, the more expensive the divorce will be\r\n    Divorce involving minor children will be more expensive as compared to a divorce with no children or adult children\r\n    Disagreement of division of community property will increase the cost of the divorce\r\n    Divorces involving alimony are more expensive\r\n     \r\n\r\nEstimating the Legal Costs of Divorce\r\n\r\n    Lawyerâ€™s fee:\r\n        A lawyer may charge by the hour or by charging a flat fee for legal work that is performed\r\n        For divorce, the usual trend is to charge per hour because of the complexity of the nature of the case and the unpredictable nature\r\n    Kind of Divorce:\r\n        Mutual divorce costs lesser than an uncontested divorce\r\n        Child support issues make the divorce more expensive\r\n        If the divorce is a simple mutual procedure with no child support issue, it is easier to get a lawyer at a flat rate\r\n    Payment options:\r\n        Almost every lawyer will take an advance retainership fee\r\n        This amount is usually not refundable\r\n    Filing fee and other expenses\r\n        This will include the out of pocket expenses of xerox and preparing sets for filing\r\n        Cost of mediator and accountant, if required\r\n        Cost of travel\r\n        Other misc. expenses\r\n    Tips to cut cost\r\n        Let your lawyer know if money is tight; s/he may be able to suggest you more viable alternatives\r\n        Think twice before making a call or sending an email, especially in cases where the lawyer is charging you hourly\r\n        Keep a list of non-urgent questions to ask and get them answered in one meeting\r\n        If your spouse is in a better position financially, you coul','Even though it is impossible to answer the complex...'),(3,4,'GUIDE TO CONSULT A DIVORCE LAWYER','Getting the right lawyer for your divorce can make the traumatic process of divorce relatively easier. It not only saves you a lot of emotional trauma but also reduce the stress of dealing with the situation alone. Here are certain questions you must ask your potential divorce lawyer in order to make a well-informed choice.\r\n \r\n How experienced are you in this field?\r\n\r\nIn the legal field, age doesnâ€™t account for experience, but neither does experience in general litigation. A complicated area like divorce deserves to be handled by someone who has both experience and expertise in the field of family law and understands the nuances involved in a divorce case very clearly.It is perfectly alright to ask your potential lawyer beforehand if they are specialised in dealing with divorce cases and if they have handled such cases previously.\r\n \r\nHow will you charge me?\r\n\r\nA divorce lawyer, depending on her/his experience and degree of complexity of the situation, will charge accordingly. It is advisable to get a lawyer in the city where the proceedings are taking place to reduce cost of travel, as well as to bank upon the goodwill that lawyer may have in that city, and particularly in the court where the case would be filed. At the initial stage only, it is advisable to go over the payment pro cess and decide how the same would be done. Here are some handy pointers that will help you decide the payment structure:\r\n\r\nRetainer fee or hourly fee?\r\nHow often will the billing be done?\r\nPayment options: cheque or credit card?\r\nAdditional charges for additional drafting work?\r\nPayment for time spent by other staff at office?\r\nWhat are the likely extra charges, over and above the fee?\r\n \r\nWhat are the various steps in the divorce process? \r\n\r\nThe foremost job of a lawyer is to make sure that you are well-versed with the procedure to be followed for a divorce. A good lawyer will not only educate you but will also be your guide through the entire process of divorce and protect your interests. It is advi','Getting the right lawyer for your divorce can make the traumatic process of divorce relatively easier. '),(4,4,'HOW TO DIVORCE MY HUSBAND / WIFE','Filing for divorce can be an overwhelming process, especially since it involves the future of many lives. It\'s important to conduct research to make sure the procedure happens smoothly and you\'re satisfied with the outcome. \r\n\r\nThe article has been written for Hindu marriages covered by Hindu Marriage Act 1955.\r\n\r\nIn case things are not too good between you and your spouse, and you or both of you have decided to part ways legally, we list down the options you have to file for a Divorce under the Hindu Marriage Act 1955.\r\n\r\nIf both you and your spouse are willing for a Divorce:\r\n\r\nMutual Consent Divorce between Hindu Couple is governed by The Hindu Marriage Act, 1955, under Section 13B.\r\n\r\nWhich states that.- A petition for dissolution of marriage by a decree of divorce may be presented to the District Court by both the parties to a marriage together, on the ground that they have been living separately for a period of one year or more, that they have not been able to live together and that they have mutually agreed that the marriage should be dissolved.\r\n\r\nSecondly, on the motion of both the parties made not earlier than six months after the date of the presentation of the petition referred to in sub-section (1) and not later than 18 months after the said date, if the petition is not withdrawn in the meantime, the court shall on being satisfied, after hearing the parties and after making such inquiry as it thinks fit, that a marriage has been solemnized and that the averments in the petition are true, pass a decree of divorce declaring the marriage to be dissolved with effect from the date of decree.\r\n\r\n \r\nIf you or your spouse are willing for a Divorce but the other person does not want a Divorce:\r\n\r\nIf you are married under the Hindu Marriage Act, 1955, you have several grounds for divorce provided by the law itself. Here we are discussing all the grounds mentioned in Section 13 of the Act that you can base your case for divorcing your partner.\r\n\r\nYou can file for divorce:\r\n\r\na) If he ','Filing for divorce can be an overwhelming process, especially since it involves the future of many lives. It\'s important to conduct research to make sure the procedure happens smoothly and you\'re satisfied with the outcome. '),(5,3,'Important considerations in a Lease and Rental Agreement','Everybody once in their life time will come across a lease and rental agreement either to negotiate or sign it for personal or business use. There are certain comprehensive conditions that are involved in negotiating and understanding legal agreements dealing with leasing, renting or leave arrangements for residential and commercial properties.\r\n \r\nWhat is a Lease and Rental Agreement?\r\nA rental agreement provides for tenancy of a short duration that is automatically renewed at the end of the period unless the tenant or landlord ends it by giving written notice. For these month-to-month rentals, the landlord can change the terms of the agreement with proper written notice. \r\n\r\nA lease agreement, on the other hand, gives an occupant the right to occupy a rental unit for a set period of time - most often for six months or a year but sometimes longer -- as long as the tenant pays the rent and complies with other lease provisions. The landlord cannot raise the rent or change other terms of the tenancy during the lease, unless the tenant agrees.\r\n\r\nWhen a lease expires it does not usually automatically renew itself. A tenant who stays on with the landlord\'s consent after a lease ends becomes a month-to-month tenant, subject to the rental terms that were in the lease.\r\n \r\nImportant points to ensure an effective lease agreement\r\n\r\n    The rent amount should be decided beforehand only and the amount that the occupant will pay for the leased or rented property must be clearly established. It should also contain about the quantum of increase in rent due to changing environment.\r\n    The payment date must be decided in advance for any delay in the payment can be fined.\r\n    The duration of the lease and it must be clearly stated in the agreement to prevent future conflicts between the tenant and the owner.\r\n    The agreement should mention about the maintenance costs of the leased or rented property to and who will be the bearer of the same in order to prevent any confusion in the future.\r\n ','Everybody once in their life time will come across...'),(6,3,'Laws related to co-ownership of a joint property','What does Co -ownership of property mean?\r\nCo-ownership, or joint ownership means when two or more persons hold title to the same property.\r\n \r\nWhat are the types of co-ownership?\r\nTenants in Common: When two or more people buy a property but do not specifically mention the share that each has in the property, a \'tenancy-in-common\' is said to exist. All the co-owners can use the entire property and every co-owner is deemed to be having an equal share in the property.\r\n\r\nJoint tenancy: Joint tenancy is a form of co-ownership where property is owned by two or more persons at the same time in equal shares. This type of tenancy provides rights to ownership of the property for the co-owners who outlive other co-owners.\r\n\r\nTenancy by entirety: This is a special form of joint tenancy when the joint tenants are namely the husband and wife -- with each owning one-half.','What does Co -ownership of property mean? Co-owne...'),(7,18,'How to get a restraining order','Restraining Orders commonly go by the term â€˜Injunctionâ€™ in India.\r\n\r\nAn injunction is a Judicial Remedy prohibiting persons from doing a specified act called a restrictive injunction or commanding them to undo some wrong or injury called a mandatory injunction and may be either temporary, interim or interlocutory or permanent. A relief of injunction cannot be taken as a right, it is based on discretion.\r\n\r\nIndian courts regulate the granting of a temporary injunction in accordance with the procedure laid down under Sections 94, 95 and Order XXXIX of the Civil Procedure Code, whereas, temporary and perpetual injunctions are prescribed by Sections 36 to 42 of the Specific Relief Act.\r\n\r\nInjunction can be further classified into two types:\r\n \r\n1. Temporary Injunction\r\nA temporary or interim injunction may be granted on an interlocutory (during the course of a suit) application at any stage of a suit. It is a provisional remedy that is invoked to preserve the subject matter in its existing condition. Its purpose is to prevent dissolution of the plaintiffâ€™s rights. This type will be used when there is a need for immediate relief.\r\n\r\nSection 94 (c) and (e) of Code of Civil Procedure contain provisions under which the Court may grant injunction and  Section 95 of Civil Procedure Code further provides for reasonable compensation when such injunction is proved to be of unnecessary nature.\r\n\r\nAs per Rule 3 of Order XXXIX of the Code of Civil Procedure, the power to grant an ex-parte interim injunction in exceptional circumstances also rests with the court.\r\n \r\n2. Perpetual Injunction \r\nA party against whom a perpetual Injunction is granted is thereby restrained forever from doing the act complained of. It can only be granted by a final decree made at the hearing and upon merits of the suit.\r\n \r\nSub-section (3) of Section 38 of Specific Relief Act in clauses (a), (b), (c) and (d) further illustrates the circumstances wherein perpetual injunction may be granted by the Court.\r\n \r\nSection 41 of the ','Restraining Orders commonly go by the term â€˜Injunc...'),(8,7,'Are you working overtime? Know these Laws','Overtime working is a very common thing in a corporate sector. Whether it is to meet the deadline or because of a demanding work or you simply wish to influence your management team that you are working hard, you agree to work for fifteen hours a day or so and forgo anything resembling a normal life. Working overtime refers to time in excess of oneâ€™s regular working hours. In India, a normal working hour constitute 8-9 hours per day and 48 hours per week. Generally, if someone is working more than the normal working hours, one is eligible to get compensated for the same.\r\n\r\nIn many Employment Agreement it is normally stated that an employee must work for extra hours as required by the company. Working overtime must be on the discretion of an employee, not forced down by an agreement.','Overtime working is a very common thing in a corpo...'),(9,7,'Laws on sexual harassment at workplace in India','Sexual Harassment: Myths and Verity\r\n\r\nSexual harassment is a type of prejudice based on sex primly attacking the modesty, dignity, obeisance of an individual. When someone is sexually harassed at the workplace it can affect the persona in many ways; it undermines the potential of a person to work and perform well at the workplace. Employers who do not take steps for prevention of sexual harassment at workplace can suffer major loss in the productivity of organization and suffer legal expenses if they are unable to fulfil the regulations prescribed under Sexual Harassment of Women at Workplace (Prevention, Prohibition and Redressal) Act, 2013 (hereinafter referred to as â€œSH Actâ€).\r\n\r\nWe have divided this article into various sections in order to provide ease of understanding to the reader about various complexities embargoed under SH Act. The article is divided under following categories-:\r\nA. Sexual Harassment\r\nB. Compliance under SH Act\r\n \r\nSexual Harrasment\r\n\r\nSexual Harassment results in the violations of fundamental rights of women of equality under section 14 and 15 of the constitution of India and right to life and live with dignity under article 21 of the constitution of India and right to practice any profession, trade, business which includes a right to have a safe working environment.\r\n\r\nSexual harassment includes any unwelcome behavior or act of conduct of sexual in nature.','Sexual Harassment: Myths and Verity  Sexual hara...');
/*!40000 ALTER TABLE `legal_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legalanswer`
--

DROP TABLE IF EXISTS `legalanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legalanswer` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `legalquestion_id` int(255) NOT NULL,
  `lawyer_id` int(255) NOT NULL,
  `answer` varchar(3000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legalanswer`
--

LOCK TABLES `legalanswer` WRITE;
/*!40000 ALTER TABLE `legalanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `legalanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legalquestion`
--

DROP TABLE IF EXISTS `legalquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legalquestion` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `practice_id` varchar(255) NOT NULL,
  `lawyer_id` varchar(255) NOT NULL,
  `question_city` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `question` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legalquestion`
--

LOCK TABLES `legalquestion` WRITE;
/*!40000 ALTER TABLE `legalquestion` DISABLE KEYS */;
INSERT INTO `legalquestion` VALUES (1,'8','8','dindigul','Can ancestral property be transferred by gift deed?','Can ancestral property be transferd by gift deed? And do I have any right in my uncles property which he has received from my grandfather?','If you are parents have expired the house belongs 50%  each of you two.\r\n\r\nSince your house is ancestral, your brother cannot sell or construct the house without your permission. If he is trying to sell or construct you can send him legal notice, thereafter file a suit for declaration and permanent injunction for stopping him from construction.\r\n\r\nThe interim injunction will be granted in your favor thereby restraining him from constructing any portion of the house.'),(3,'3','12','kochi','How to get stay order from court?','How can i get stay order from the court? What do you mean by Stay Order in Indian Law? How can you get Stay order on a Property? How can i get Stay order on construction? What is the Procedure to get stay order from court on property?',''),(4,'4','9','new york','Child custody issue','Hi, I am a Hindu. Myself and my husband are seeking for divorce which was initiated by him. But my son who will be 5 yrs old by this october is with them. They have mentioned in their counter petition that they are willing to let me visit my child but will not give custody to me. My clarification is that, can I deny my visitation rights now completely and file a case for custody after 2 1-2 yrs? Will the family court consider this.I am planning this way, bcoz I want to take custody of him when I get settlement from him.Only if he makes settlement, I will sign the paper.','What is this 2 1-2 years denoting?You can very well reuse their offer for visitation rights and can file a child custody case even now.If the child is in their custody you can file an application for visitation rights as an interim relief till the disposal of the main petition for custody.Also what is this settlement you are talking about?Is it a settlement to you on divorce or to the child?Your incomplete details cannot fetch you a proper opinion and correct suggestions.You may revert with details. '),(5,'4','12','salem','What is divorce by mutual consent?','What is divorce by mutual consent?','Divorce by Mutual Consent, as the name suggests, means when both Husband and wife agree amicably amongst themselves that they cannot live together anymore and that the best solution is to Divorce, without putting forth any allegations against each other, in the court of law, than such a Divorce petition presented jointly before the honourably court, is known as mutual consent Divorce.\r\n\r\nIt is the quickest form of divorce in India.\r\n\r\nRequirements to be complied with for a Mutual Divorce are:\r\n\r\n(a) The parties have been living separately for a period not less than one year. It is doubtful whether it was intended by the legislators that the parties have lived separately by mutual consent or by force of circumstances or situation.\r\n\r\nBut it does not seem necessary for the court to go into that matter provided the condition of separate living under the same roof of matrimonial home or in separate residence by the parties is satisfied. Unless the consent of any of the parties to such petition is vitiated by coercion, fraud or undue influence, the court ought not travel beyond the statutory condition of its jurisdiction.\r\n\r\n(b) The parties have failed for any reason whatsoever to live together. In other\' words, no reconciliation or adjustment is possible between them.\r\n\r\n(c) The parties have freely consented to the agreement of dissolution of marriage.\r\n\r\n(d) The parties are at liberty to withdraw the petition. It seems that the petition may be withdrawn even at the instance of one party in course of six months from the date of presentation of the petition. But when a joint motion is taken by the parties after the lapse of six months but before the expiry of eighteen months from the date of presentation of the petition for making inquiry, the unilateral right of a party to withdraw the petition appears to be barred.\r\n\r\nProcess of Mutual Divorce:\r\n\r\nIn all there are two court appearances in a mutual divorce:\r\n\r\nFirst A joint petition signed by both parties is filed in th'),(6,'2','6,9,12,14','kochi','Mutual consent divorce in case of court marriage','We had a court marriage. Now we want a mutual divorce. How should we go about it?','Mutual Consent Divorce in case of Court marriage is governed by The Special Marriage Act, 1954 under Section 28.\r\nWhich states that.-\r\n\r\nA petition for divorce may be presented to the District Court by both the parties together on the ground that they have been living separately for a period of one year or more, that they have not been able to live together and that they have mutually agreed that the marriage should be dissolved.\r\n\r\nSecondly on the motion of both the parties made not earlier than six months after the date of the presentation of the petition referred to it in sub-section (1) and not later than 18 months after the said date, if the petition is not withdrawn in the meantime, the District Court shall, on being satisfied, after hearing the parties and after making such inquiry as it thinks fit, that a marriage has been solemnised under this Act, and that the averments in the petition are true, pass a decree declaring the marriage to be dissolved with effect from the date of the decree.');
/*!40000 ALTER TABLE `legalquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `needhelp`
--

DROP TABLE IF EXISTS `needhelp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `needhelp` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `help_name` varchar(255) NOT NULL,
  `help_phone` varchar(255) NOT NULL,
  `help_city` varchar(255) NOT NULL,
  `help_email` varchar(255) NOT NULL,
  `lawyer_id` varchar(255) NOT NULL,
  `legal_issues` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `needhelp`
--

LOCK TABLES `needhelp` WRITE;
/*!40000 ALTER TABLE `needhelp` DISABLE KEYS */;
INSERT INTO `needhelp` VALUES (4,'varuthu','9525368794','chennai','var@gmail.com','12','How can i get stay order from the court? What do you mean by Stay Order in Indian Law? How can you get Stay order on a Property? How can i get Stay order on construction? What is the Procedure to get stay order from court on property?'),(29,'vinea','9578656943','dindigul','vine@live.com','12','testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting'),(30,'raju','9578656943','dindigul','dsvdfv@dsmsssc.com','6','sdsdfsd'),(31,'sam','7654324554','kochi','test@gmail.com','27','ddrsrd'),(33,'ramesh','233232222','kochi','ramesh@gmail.com','24','hi'),(34,'ramesh','233232222','kochi','ramesh@gmail.com','24','hi'),(35,'ramesh','233232222','kochi','ramesh@gmail.com','24','hi'),(36,'ramesh','23232323223','kochi','ramesh@gmail.com','13','jj'),(38,'user','6868548758','Karachi','ros@ros.com','17','ok test'),(39,'MOHAN PRABAKARAN','08300190006','NAMAKKAL','ipuretechnology@gmail.com','16','ascaccc');
/*!40000 ALTER TABLE `needhelp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practice_categories`
--

DROP TABLE IF EXISTS `practice_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practice_categories` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `practice_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice_categories`
--

LOCK TABLES `practice_categories` WRITE;
/*!40000 ALTER TABLE `practice_categories` DISABLE KEYS */;
INSERT INTO `practice_categories` VALUES (2,'recovery'),(3,'property'),(4,'divorce'),(5,'consumer'),(6,'civil'),(7,'labour'),(8,'corporate'),(9,'immigration'),(10,'banking'),(12,'children'),(18,'criminal'),(19,'family'),(21,'arbitration'),(22,'documentation'),(23,'startup'),(24,'insurance'),(25,'medical'),(26,'wills'),(27,'vehicle');
/*!40000 ALTER TABLE `practice_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_username` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_password` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'no-reply@techware.in','mail.techware.in','Golden@reply','no-reply@techware.in','http://gocourt.in/admin/uploads/logo-v1.png','http://gocourt.in/admin/uploads/fav_icon.png','gocourt');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reviews`
--

DROP TABLE IF EXISTS `user_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reviews` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `review` varchar(2000) NOT NULL,
  `date` varchar(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `lawyer_id` int(255) NOT NULL,
  `rating_lawyer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reviews`
--

LOCK TABLES `user_reviews` WRITE;
/*!40000 ALTER TABLE `user_reviews` DISABLE KEYS */;
INSERT INTO `user_reviews` VALUES (1,'It was good all my queries were solved next year will consult him back for our property case','2016-08-10',1,9,'2'),(2,'It was good all my queries were solved next year will consult him back for our property case','2016-08-10',2,23,'3'),(3,'It was good all my queries were solved next year will consult him back for our property case','2016-08-10',3,13,'4'),(4,'It was good all my queries were solved next year will consult him back for our property case','2016-08-10',2,6,'3'),(5,'It was good all my queries were solved next year will consult him back for our property case','2016-08-10',3,14,'4'),(6,'It was good all my queries were solved next year will consult him back for our property case','2016-08-10',1,27,'4'),(7,'It was good all my queries were solved next year will consult him back for our property case','2016-08-10',2,15,'3'),(8,'Worst','2016-08-15',2,13,'2'),(11,'ok','2016-09-03',2,13,'3'),(12,'good','2016-09-06',2,9,'3'),(13,'sasas','2016-09-06',22,13,'4'),(14,'Good','2016-09-07',2,9,'3'),(15,'Wow','2016-09-10',2,9,'3'),(16,'wr','2016-09-12',2,9,'3');
/*!40000 ALTER TABLE `user_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:13:46
