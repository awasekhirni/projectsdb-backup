-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: webtraffic
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
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban_domains`
--

DROP TABLE IF EXISTS `ban_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ban_domains` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_domains`
--

LOCK TABLES `ban_domains` WRITE;
/*!40000 ALTER TABLE `ban_domains` DISABLE KEYS */;
INSERT INTO `ban_domains` VALUES (9,'adblue.us'),(14,'addm.cc'),(3,'adf.ly'),(7,'adfa.st'),(5,'adfoc.us'),(13,'admf.co'),(10,'adshorty.com'),(21,'bee4.biz'),(11,'cashfly.com'),(6,'ity.im'),(4,'linkbucks.com'),(20,'reducelnk.com'),(16,'refban.com'),(15,'shorthit.com'),(12,'skylnk.co'),(17,'snip.ps'),(18,'ssl.gs'),(19,'wwy.me');
/*!40000 ALTER TABLE `ban_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban_emails`
--

DROP TABLE IF EXISTS `ban_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ban_emails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=787 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_emails`
--

LOCK TABLES `ban_emails` WRITE;
/*!40000 ALTER TABLE `ban_emails` DISABLE KEYS */;
INSERT INTO `ban_emails` VALUES (6,'@0-mail.com'),(33,'@0815.ru'),(34,'@0815.ru0clickemail.com'),(7,'@0sg.net'),(8,'@0wnd.net'),(9,'@0wnd.org'),(20,'@10minutemail'),(21,'@10minutemail.com'),(22,'@12hourmail.com'),(10,'@1chuan.com'),(11,'@1zhuan.com'),(23,'@20minutemail.com'),(24,'@21cn.com'),(25,'@24hourmail.com'),(12,'@2prong.com'),(35,'@3126.com'),(13,'@3d-painting.com'),(14,'@3g.ua'),(15,'@4warding.com'),(16,'@4warding.net'),(17,'@4warding.org'),(26,'@50e.info'),(30,'@675hosting.com'),(31,'@675hosting.net'),(32,'@675hosting.org'),(18,'@6url.com'),(27,'@75hosting.com'),(28,'@75hosting.net'),(29,'@75hosting.org'),(19,'@9ox.net'),(39,'@a-bc.net'),(40,'@abwesend.de'),(41,'@addcom.de'),(42,'@afrobacon.com'),(43,'@ag.us.to'),(44,'@agnitumhost.net'),(45,'@ajaxapp.net'),(46,'@akapost.com'),(47,'@alpenjodel.de'),(48,'@alphafrau.de'),(49,'@amilegit.com'),(50,'@amiri.net'),(51,'@amiriindustries.com'),(52,'@amorki.pl'),(53,'@anonbox.net'),(54,'@anonymail.dk'),(55,'@anonymbox'),(56,'@anonymbox.com'),(57,'@anonymousmail.org'),(58,'@anonymousspeech.com'),(59,'@antichef.com'),(60,'@antichef.net'),(61,'@antispam.de'),(62,'@antispam24.de'),(63,'@autosfromus.com'),(64,'@baldmama.de'),(65,'@baldpapa.de'),(66,'@ballyfinance.com'),(67,'@baxomale.ht.cx'),(68,'@beefmilk.com'),(69,'@beep.com'),(70,'@beerolympics'),(71,'@betriebsdirektor.de'),(72,'@bigmir.net'),(73,'@bigstring.com'),(74,'@bin-wieder-da.de'),(75,'@binkmail.com'),(76,'@bio-muesli.info'),(77,'@bio-muesli.net'),(78,'@bleib-bei-mir.de'),(79,'@blockfilter.com'),(80,'@blogmyway.org'),(81,'@bluebottle.com'),(82,'@bobmail.info'),(83,'@bodhi.lawlita.com'),(84,'@bofthew.com'),(85,'@bonbon.net'),(86,'@brefmail.com'),(87,'@briefemail.com'),(88,'@brokenvalve.com'),(89,'@brokenvalve.org'),(90,'@bsnow.net'),(91,'@bspamfree.org'),(92,'@buerotiger.de'),(93,'@bugmenot.com'),(94,'@bumpymail.com'),(95,'@buy-24h.net.ru'),(96,'@buyusedlibrarybooks.org'),(97,'@cashette.com'),(98,'@casualdx.com'),(99,'@center-mail.de'),(100,'@centermail.at'),(101,'@centermail.ch'),(102,'@centermail.com'),(103,'@centermail.de'),(104,'@centermail.info'),(105,'@centermail.net'),(106,'@cghost.s-a-d.de'),(107,'@chammy.info'),(108,'@chogmail.com'),(109,'@choicemail1.com'),(110,'@chongsoft.org'),(111,'@cool.fr.nf'),(112,'@coole-files.de'),(113,'@correo.blogos.net'),(114,'@cosmorph.com'),(115,'@courriel.fr.nf'),(116,'@courrieltemporaire'),(117,'@courrieltemporaire.com'),(118,'@curryworld.de'),(119,'@cust.in'),(120,'@cyber-matrix.com'),(36,'@dacoolest.com'),(121,'@dacoolest.com'),(122,'@dandikmail.com'),(123,'@dating4best.net'),(124,'@deadaddress'),(125,'@deadaddress.com'),(126,'@deadspam.com'),(127,'@despam.it'),(128,'@despammed.com'),(129,'@devnullmail.com'),(130,'@dfgh.net'),(131,'@die-besten-bilder.de'),(132,'@die-genossen.de'),(133,'@die-optimisten.de'),(134,'@die-optimisten.net'),(135,'@diemailbox.de'),(136,'@digital-filestore.de'),(137,'@digitalsanctuary.com'),(138,'@directbox.com'),(139,'@discardmail.com'),(140,'@discardmail.de'),(141,'@discartmail.com'),(142,'@disposableaddress.com'),(143,'@disposeamail.com'),(144,'@disposemail.com'),(145,'@dispostable'),(146,'@dispostable.com'),(147,'@dm.w3internet.co.uk'),(148,'@dm.w3internet.co.uk example.com'),(149,'@docmail.cz'),(150,'@dodgeit.com'),(151,'@dodgit.com'),(152,'@dodgit.org'),(153,'@dogit.com'),(154,'@dontreg.com'),(155,'@dontsendmespam.de'),(156,'@dontsentmespam.de'),(157,'@dotmsg.com'),(158,'@download-privat.de'),(159,'@droplister.com'),(160,'@dudmail.com'),(161,'@dump-email.info'),(162,'@dumpandjunk.com'),(163,'@dumpmail.com'),(164,'@dumpmail.de'),(165,'@dumpyemail.com'),(166,'@dyndns.org'),(167,'@e-mail.com'),(168,'@e-mail.org'),(169,'@e4ward'),(170,'@e4ward.com'),(171,'@eintagsmail.de'),(172,'@email.org'),(173,'@email4u.info'),(174,'@email60.com'),(175,'@emaildienst.de'),(176,'@emailias.com'),(177,'@emailinfive.com'),(178,'@emaillime.com'),(179,'@emailmiser.com'),(180,'@emailtaxi.de'),(181,'@emailtemporario.com.br'),(182,'@emailto.de'),(183,'@emailwarden.com'),(184,'@emailxfer.com'),(185,'@empinbox.com'),(186,'@emz.net'),(187,'@enterto.com'),(188,'@ephemail.net'),(189,'@etranquil.com'),(190,'@etranquil.net'),(191,'@etranquil.org'),(192,'@example.com'),(193,'@explodemail.com'),(194,'@fahr-zur-hoelle.org'),(195,'@fakeinbox.com'),(196,'@fakeinformation.com'),(197,'@fakemailgenerator.com'),(198,'@fakemailz.com'),(199,'@falseaddress.com'),(200,'@fansworldwide.de'),(201,'@fantasymail.de'),(202,'@farifluset.mailexpire.com'),(203,'@fastacura.com'),(204,'@fastchevy.com'),(205,'@fastchrysler.com'),(206,'@fastermail.com'),(207,'@fastkawasaki.com'),(208,'@fastmazda.com'),(209,'@fastmitsubishi.com'),(210,'@fastnissan.com'),(211,'@fastsubaru.com'),(212,'@fastsuzuki.com'),(213,'@fasttoyota.com'),(214,'@fastyamaha.com'),(215,'@feinripptraeger.de'),(216,'@fettabernett.de'),(217,'@filzmail'),(218,'@filzmail.com'),(219,'@fishfuse.com'),(220,'@fixmail.tk'),(221,'@fizmail.com'),(222,'@footard.com'),(223,'@forgetmail.com'),(224,'@frapmail.com'),(225,'@freemeilaadressforall.net'),(226,'@freudenkinder.de'),(227,'@fromru.com'),(228,'@front14.org'),(229,'@fux0ringduh.com'),(230,'@garliclife.com'),(231,'@gelitik.in'),(232,'@gentlemansclub.de'),(233,'@get1mail.com'),(234,'@get2mail'),(235,'@getairmail.com'),(236,'@getmails.eu'),(237,'@getonemail.com'),(238,'@getonemail.net'),(239,'@ghosttexter.de'),(240,'@girlsundertheinfluence.com'),(241,'@gishpuppy'),(242,'@gishpuppy.com'),(243,'@goemailgo.com'),(244,'@gold-profits.info'),(245,'@goldtoolbox.com'),(246,'@golfilla.info'),(247,'@gorillaswithdirtyarmpits.com'),(248,'@gowikibooks.com'),(249,'@gowikicampus.com'),(250,'@gowikicars.com'),(251,'@gowikifilms.com'),(252,'@gowikigames.com'),(253,'@gowikimusic.com'),(254,'@gowikinetwork.com'),(255,'@gowikitravel.com'),(256,'@gowikitv.com'),(257,'@great-host.in'),(258,'@greensloth.com'),(259,'@gsrv.co.uk'),(260,'@guerillamail.biz'),(261,'@guerillamail.com'),(262,'@guerillamail.net'),(263,'@guerillamail.org'),(264,'@guerrillamail.biz'),(265,'@guerrillamail.com'),(266,'@guerrillamail.de'),(267,'@guerrillamail.info'),(268,'@guerrillamail.net'),(269,'@guerrillamail.org'),(270,'@guerrillamailblock.com'),(271,'@h8s.org'),(272,'@hab-verschlafen.de'),(273,'@habmalnefrage.de'),(274,'@haltospam.com'),(275,'@hatespam.org'),(276,'@herr-der-mails.de'),(277,'@hidemail.de'),(278,'@hidzz.com'),(279,'@hmamail.com'),(280,'@home.de'),(281,'@hooohush.ai'),(282,'@hotpop.com'),(283,'@huajiachem.cn'),(284,'@hulapla.de'),(285,'@hush.com'),(286,'@hushmail.com'),(287,'@i.ua'),(288,'@i2pmail.org'),(289,'@ich-bin-verrueckt-nach-dir.de'),(290,'@ich-will-net.de'),(291,'@ieatspam.eu'),(292,'@ieatspam.info'),(293,'@ihateyoualot.info'),(294,'@iheartspam.org'),(295,'@imails.info'),(296,'@imstations.com'),(297,'@inbox.ru'),(298,'@inbox2.info'),(299,'@inboxclean.com'),(300,'@inboxclean.org'),(301,'@incognitomail'),(302,'@incognitomail.com'),(303,'@incognitomail.net'),(304,'@inerted.com'),(305,'@inet.ua'),(306,'@inmail24.com'),(307,'@instant-mail.de'),(308,'@ipoo.org'),(309,'@irish2me.com'),(310,'@ist-allein.info'),(311,'@ist-einmalig.de'),(312,'@ist-ganz-allein.de'),(313,'@ist-willig.de'),(314,'@iwi.net'),(315,'@izmail.net'),(316,'@jetable'),(317,'@jetable.com'),(318,'@jetable.de'),(319,'@jetable.fr.nf'),(320,'@jetable.net'),(321,'@jetable.org'),(322,'@jetfix.ee'),(323,'@jetzt-bin-ich-dran.com'),(324,'@jn-club.de'),(325,'@jnxjn.com'),(326,'@joliekemulder'),(327,'@junk.'),(328,'@junk1e.com'),(329,'@junkmail.com'),(330,'@k2-herbal-incenses.com'),(331,'@kaffeeschluerfer.com'),(332,'@kaffeeschluerfer.de'),(333,'@kasmail.com'),(334,'@kaspop.com'),(335,'@killmail.com'),(336,'@killmail.net'),(337,'@kinglibrary.net'),(338,'@klassmaster.com'),(339,'@klassmaster.net'),(340,'@klzlk.com'),(341,'@kommespaeter.de'),(342,'@krim.ws'),(343,'@kuh.mu'),(344,'@kulturbetrieb.info'),(345,'@kurzepost.de'),(346,'@lass-es-geschehen.de'),(347,'@liebt-dich.info'),(348,'@lifebeginsatconception'),(349,'@lifebyfood.com'),(350,'@link2mail'),(351,'@link2mail.net'),(352,'@listomail.com'),(353,'@litedrop.com'),(354,'@lookugly.com'),(355,'@lopl.co.cc'),(356,'@lortemail.dk'),(357,'@lovemeleaveme.com'),(358,'@loveyouforever.de'),(359,'@lr78.com'),(360,'@lroid.com'),(361,'@maboard.com'),(362,'@maennerversteherin.com'),(363,'@maennerversteherin.de'),(364,'@mail-temporaire'),(365,'@mail.by'),(366,'@mail.com'),(367,'@mail.htl22.at'),(368,'@mail.mezimages.net'),(369,'@mail.misterpinball.de'),(370,'@mail.ru'),(371,'@mail.svenz.eu'),(376,'@mail15.com'),(372,'@mail2rss.org'),(377,'@mail333.com'),(373,'@mail4days.com'),(374,'@mail4trash.com'),(375,'@mail4u.info'),(378,'@mailbidon.com'),(379,'@mailblocks.com'),(380,'@mailbucket.org'),(381,'@mailcatch.com'),(37,'@maileater.com'),(382,'@maileater.com'),(383,'@mailexpire.com'),(384,'@mailfreeonline.com'),(385,'@mailin8r.com'),(386,'@mailinater.com'),(387,'@mailinator'),(1,'@mailinator.com'),(388,'@mailinator.com'),(389,'@mailinator.net'),(390,'@mailinator2.com'),(391,'@mailinblack.com'),(392,'@mailincubator.com'),(393,'@mailme.lv'),(394,'@mailmetrash.com'),(395,'@mailmoat.com'),(396,'@mailnator.com'),(397,'@mailnesia.com'),(398,'@mailnull'),(399,'@mailnull.com'),(400,'@mailquack.com'),(401,'@mailshell.com'),(402,'@mailsiphon.com'),(403,'@mailslapping.com'),(404,'@mailtrash.net'),(405,'@mailueberfall.de'),(406,'@mailzilla.com'),(407,'@mailzilla.org'),(408,'@makemetheking.com'),(409,'@mamber.net'),(410,'@mbx.cc'),(411,'@mega.zik.dj'),(412,'@meine-dateien.info'),(413,'@meine-diashow.de'),(414,'@meine-fotos.info'),(415,'@meine-urlaubsfotos.de'),(416,'@meinspamschutz.de'),(417,'@meltmail'),(418,'@meltmail.com'),(419,'@messagebeamer.de'),(420,'@metaping.com'),(421,'@mierdamail.com'),(422,'@mintemail'),(423,'@mintemail.com'),(424,'@mjukglass.nu'),(425,'@mmmmail.com'),(426,'@mns.ru'),(427,'@mobi.web.id'),(428,'@moburl.com'),(429,'@moncourrier.fr.nf'),(430,'@monemail.fr.nf'),(431,'@monmail.fr.nf'),(432,'@ms9.mailslite.com'),(433,'@msg.mailslite.com'),(434,'@mt2009.com'),(435,'@mufmail.com'),(436,'@muskelshirt.de'),(437,'@mx0.wwwnew.eu'),(438,'@my-mail.ch'),(439,'@myadult.info'),(440,'@mycleaninbox.net'),(441,'@mymail-in.net'),(442,'@mypacks.net'),(443,'@myspaceinc.com'),(444,'@myspaceinc.net'),(445,'@myspaceinc.org'),(446,'@myspacepimpedup.com'),(447,'@myspamless.com'),(448,'@mytempemail'),(449,'@mytempemail.com'),(450,'@mythrashmail.net'),(451,'@mytop-in.net'),(452,'@mytrashmail.com'),(453,'@mytrashmail.compookmail.com'),(454,'@neomailbox.com'),(455,'@nepwk.com'),(456,'@nervmich.net'),(457,'@nervtmich.net'),(458,'@netmails.com'),(459,'@netmails.net'),(460,'@netterchef.de'),(461,'@netzidiot.de'),(462,'@neue-dateien.de'),(463,'@neverbox.com'),(464,'@nm.ru'),(465,'@no-spam.ws'),(466,'@nobulk.com'),(467,'@noclickemail.com'),(468,'@nogmailspam.info'),(469,'@nomail.xl.cx'),(470,'@nomail2me.com'),(471,'@nospam.ze.tc'),(472,'@nospam4.us'),(473,'@nospamfor.us'),(474,'@nospamforus'),(475,'@nospammail.net'),(476,'@notsharingmy.info'),(477,'@nowmymail.com'),(478,'@nullbox.info'),(479,'@nur-fuer-spam.de'),(480,'@nurfuerspam.de'),(481,'@nwldx.com'),(482,'@nybella.com'),(483,'@objectmail.com'),(484,'@obobbo.com'),(485,'@odaymail.com'),(486,'@office-dateien.de'),(487,'@oikrach.com'),(488,'@oneoffemail.com'),(489,'@oneoffmail.com'),(490,'@onewaymail.com'),(491,'@oopi.org'),(492,'@opayq.com'),(493,'@open.by'),(494,'@orangatango.com'),(495,'@ordinaryamerican.net'),(496,'@ourklips.com'),(497,'@outlawspam.com'),(498,'@owlpic.com'),(499,'@pancakemail.com'),(500,'@partybombe.de'),(501,'@partyheld.de'),(502,'@phreaker.net'),(503,'@pimpedupmyspace.com'),(504,'@pisem.net'),(505,'@pleasedontsendmespam.de'),(506,'@polizisten-duzer.de'),(507,'@poofy.org'),(508,'@pookmail.com'),(509,'@pornobilder-mal-gratis.com'),(510,'@portsaid.cc'),(511,'@postfach.cc'),(512,'@privacy.net'),(513,'@privymail.de'),(514,'@proxymail.eu'),(515,'@prydirect.info'),(516,'@pryworld.info'),(517,'@public-files.de'),(518,'@punkass.com'),(519,'@put2.net'),(520,'@putthisinyourspamdatabase.com'),(521,'@q00.'),(522,'@quantentunnel.de'),(523,'@quickinbox.com'),(524,'@qv7.info'),(525,'@ralib.com'),(526,'@raubtierbaendiger.de'),(527,'@rcpt.at'),(528,'@receiveee.com'),(529,'@recode.me'),(530,'@record.me'),(531,'@recursor.net'),(532,'@recyclemail.dk'),(533,'@regbypass.comsafe-mail.net'),(534,'@rejectmail.com'),(535,'@rklips.com'),(536,'@rmqkr.net'),(537,'@rootprompt.org'),(2,'@rppkn.com'),(538,'@saeuferleber.de'),(539,'@safe-mail.net'),(540,'@safersignup.de'),(541,'@safetymail.info'),(542,'@sags-per-mail.de'),(543,'@sandelf.de'),(544,'@satka.net'),(545,'@saynotospams.com'),(546,'@schmusemail.de'),(547,'@schreib-doch-mal-wieder.de'),(548,'@secure-mail.biz'),(549,'@selfdestructingmail.com'),(550,'@sendspamhere.com'),(551,'@senseless-entertainment.com'),(552,'@shared-files.de'),(553,'@sharklasers.com'),(554,'@shieldedmail.com'),(555,'@shiftmail.com'),(556,'@shinedyoureyes.com'),(557,'@shortmail.net'),(558,'@sibmail.com'),(559,'@siria.cc'),(560,'@skeefmail.com'),(561,'@skeefmail.net'),(562,'@slaskpost.se'),(563,'@slopsbox.com'),(564,'@slushmail.com'),(565,'@smaakt.naar.gravel'),(566,'@smellfear.com'),(567,'@sms.at'),(568,'@snakemail.com'),(569,'@sneakemail.com'),(570,'@sofimail'),(571,'@sofort-mail.de'),(572,'@sofortmail.de'),(573,'@sogetthis.com'),(574,'@sonnenkinder.org'),(575,'@soodo'),(576,'@soodonims.com'),(577,'@spam'),(578,'@spam.la'),(579,'@spamavert'),(580,'@spamavert.com'),(581,'@spambob.com'),(582,'@spambob.net'),(583,'@spambob.org'),(584,'@spambog'),(585,'@spambog.com'),(586,'@spambog.de'),(587,'@spambog.ru'),(588,'@spambox.info'),(589,'@spambox.us'),(590,'@spamcannon.com'),(591,'@spamcannon.net'),(592,'@spamcero.com'),(593,'@spamcon.org'),(594,'@spamcorptastic.com'),(595,'@spamcowboy.com'),(596,'@spamcowboy.net'),(597,'@spamcowboy.org'),(598,'@spamday.com'),(599,'@spameater.com'),(600,'@spameater.org'),(601,'@spamevader'),(602,'@spamex.com'),(603,'@spamfree.eu'),(604,'@spamfree24'),(605,'@spamfree24.com'),(606,'@spamfree24.de'),(607,'@spamfree24.eu'),(608,'@spamfree24.info'),(609,'@spamfree24.net'),(610,'@spamfree24.org'),(611,'@spamgourmet'),(612,'@spamgourmet.com'),(613,'@spamgourmet.net'),(614,'@spamgourmet.org'),(615,'@spamgrube.net'),(616,'@spamherelots.com'),(617,'@spamhereplease.com'),(618,'@spamhole.com'),(619,'@spamify.com'),(620,'@spaminator.de'),(621,'@spamkill.info'),(622,'@spaml.com'),(623,'@spaml.de'),(624,'@spammote.com'),(625,'@spammotel'),(626,'@spammotel.com'),(627,'@spammuffel.de'),(628,'@spamobox'),(629,'@spamobox.com'),(630,'@spamoff.de'),(631,'@spamreturn.com'),(632,'@spamslicer.com'),(633,'@spamspot.com'),(634,'@spamthis.co.uk'),(635,'@spamthisplease.com'),(636,'@spamtrail.com'),(637,'@speed.1s.fr'),(638,'@sperke.net'),(639,'@sriaus.com'),(640,'@streber24.de'),(641,'@super-auswahl.de'),(642,'@supergreatmail.com'),(643,'@suremail.info'),(644,'@sweetville.net'),(645,'@tagesmail.eu'),(646,'@teewars.org'),(647,'@teleworm.us'),(648,'@temp-mail.com'),(649,'@temp-mail.org'),(650,'@tempalias.com'),(651,'@tempe-mail.com'),(652,'@tempemail'),(653,'@tempemail.biz'),(654,'@tempemail.com'),(38,'@tempemail.net'),(655,'@tempemail.net'),(656,'@tempinbox.co.uk'),(657,'@tempinbox.com'),(658,'@tempmail'),(659,'@tempomail.fr'),(660,'@temporarily.de'),(661,'@temporaryemail.net'),(662,'@temporaryforwarding.com'),(663,'@temporaryinbox.com'),(664,'@tempymail.com'),(665,'@terminverpennt.de'),(666,'@test.com'),(667,'@test.de'),(668,'@thankyou2010.com'),(669,'@thepryam.info'),(670,'@thisisnotmyrealemail.com'),(671,'@throwawayemailaddress.com'),(672,'@tilien.com'),(673,'@tmailinator.com'),(674,'@topmail-files.de'),(675,'@tormail.net'),(676,'@tormail.org'),(677,'@tortenboxer.de'),(678,'@totalmail.de'),(679,'@tradermail.info'),(680,'@trash-amil.com'),(681,'@trash-mail.at'),(682,'@trash-mail.com'),(683,'@trash-mail.de'),(684,'@trash2009.com'),(685,'@trashbox.eu'),(686,'@trashdevil.com'),(687,'@trashdevil.de'),(688,'@trashmail.at'),(3,'@trashmail.com'),(689,'@trashmail.com'),(690,'@trashmail.de'),(691,'@trashmail.me'),(692,'@trashmail.net'),(693,'@trashmail.org'),(694,'@trashmailer.com'),(695,'@trashymail.com'),(696,'@trashymail.net'),(697,'@trillianpro.com'),(698,'@trimix.cn'),(699,'@turboprinz.de'),(700,'@turboprinzessin.de'),(701,'@turual.com'),(702,'@tut.by'),(703,'@twinmail.de'),(704,'@tyldd.com'),(705,'@ua.fm'),(706,'@uggsrock.com'),(707,'@uk2.net'),(708,'@ukr.net'),(709,'@unterderbruecke.de'),(710,'@upliftnow.com'),(711,'@uplipht.com'),(712,'@uroid'),(713,'@venompen.com'),(714,'@verlass-mich-nicht.de'),(715,'@veryrealemail.com'),(716,'@viditag.com'),(717,'@viewcastmedia.com'),(718,'@viewcastmedia.net'),(719,'@viewcastmedia.org'),(720,'@vinbazar.com'),(721,'@vistomail.com'),(722,'@vollbio.de'),(723,'@volloeko.de'),(724,'@vorsicht-bissig.de'),(725,'@vorsicht-scharf.de'),(726,'@walala.org'),(727,'@war-im-urlaub.de'),(728,'@wbb3.de'),(729,'@webmail4u.eu'),(730,'@wegwerfadresse.de'),(731,'@wegwerfemail.com'),(732,'@wegwerfemail.de'),(733,'@wegwerfmail.de'),(734,'@wegwerfmail.net'),(735,'@wegwerfmail.org'),(736,'@weibsvolk.de'),(737,'@weibsvolk.org'),(738,'@weinenvorglueck.de'),(739,'@wetrainbayarea.com'),(740,'@wetrainbayarea.org'),(741,'@wh4f.org'),(742,'@whopy.com'),(743,'@whyspam.me'),(744,'@wilemail.com'),(745,'@will-hier-weg.de'),(746,'@willhackforfood.biz'),(747,'@willselfdestruct.com'),(748,'@winemaven.info'),(749,'@wir-haben-nachwuchs.de'),(750,'@wir-sind-cool.org'),(751,'@wirsindcool.de'),(752,'@wolke7.net'),(753,'@women-at-work.org'),(754,'@wormseo.cn'),(755,'@wp.pl'),(756,'@wronghead.com'),(757,'@wuzup.net'),(758,'@wuzupmail.net'),(759,'@wwwnew.eu'),(760,'@xagloo.com'),(761,'@xemaps.com'),(762,'@xents.com'),(763,'@xmail.com'),(764,'@xmaily.com'),(765,'@xoxy.net'),(766,'@xsecurity.org'),(767,'@xxtreamcam.com'),(768,'@yep.it'),(769,'@yesey.net'),(770,'@yogamaven.com'),(771,'@yopmail'),(772,'@yopmail.com'),(773,'@yopmail.fr'),(774,'@yopmail.net'),(775,'@yopweb.com'),(776,'@youmailr.com'),(777,'@ystea.org'),(778,'@yuurok.com'),(779,'@yzbid.com'),(780,'@z1p.biz'),(781,'@zehnminutenmail.de'),(782,'@zippymail.info'),(783,'@zoemail.com'),(784,'@zoemail.net'),(785,'@zoemail.org'),(786,'@zweb.in');
/*!40000 ALTER TABLE `ban_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus_log`
--

DROP TABLE IF EXISTS `bonus_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bonus_id` int(11) DEFAULT NULL,
  `bonus_points` int(11) NOT NULL DEFAULT '0',
  `minutes` decimal(12,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus_log`
--

LOCK TABLES `bonus_log` WRITE;
/*!40000 ALTER TABLE `bonus_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon` (
  `code` char(6) NOT NULL,
  `description` text,
  `expiration` date NOT NULL DEFAULT '9999-12-31',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `minutes` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_user`
--

DROP TABLE IF EXISTS `coupon_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_user` (
  `code` char(6) NOT NULL,
  `user_id` int(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`code`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_user`
--

LOCK TABLES `coupon_user` WRITE;
/*!40000 ALTER TABLE `coupon_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_bonus`
--

DROP TABLE IF EXISTS `daily_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_bonus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `views` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of required views to get bonus',
  `minutes` decimal(12,2) NOT NULL DEFAULT '0.00',
  `points` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_bonus`
--

LOCK TABLES `daily_bonus` WRITE;
/*!40000 ALTER TABLE `daily_bonus` DISABLE KEYS */;
INSERT INTO `daily_bonus` VALUES (1,100,30.00,0),(2,250,60.00,0),(3,500,90.00,0),(4,750,120.00,0),(5,1000,150.00,0),(6,2000,300.00,0);
/*!40000 ALTER TABLE `daily_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgot_password`
--

DROP TABLE IF EXISTS `forgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forgot_password` (
  `user_id` int(255) NOT NULL,
  `confirmation_key` char(32) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `ip_address` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgot_password`
--

LOCK TABLES `forgot_password` WRITE;
/*!40000 ALTER TABLE `forgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minute_packs`
--

DROP TABLE IF EXISTS `minute_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minute_packs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `minutes` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minute_packs`
--

LOCK TABLES `minute_packs` WRITE;
/*!40000 ALTER TABLE `minute_packs` DISABLE KEYS */;
INSERT INTO `minute_packs` VALUES (7,'10,000 Minutes',6000,8),(10,'25,000 Minutes',15000,17),(11,'50,000 Minutes',30000,30),(12,'100,000 Minutes',60000,50),(13,'250,000 Minutes',150000,80);
/*!40000 ALTER TABLE `minute_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payouts`
--

DROP TABLE IF EXISTS `payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `paypal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `money` decimal(5,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payouts`
--

LOCK TABLES `payouts` WRITE;
/*!40000 ALTER TABLE `payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premium_packs`
--

DROP TABLE IF EXISTS `premium_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_packs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `months` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premium_packs`
--

LOCK TABLES `premium_packs` WRITE;
/*!40000 ALTER TABLE `premium_packs` DISABLE KEYS */;
INSERT INTO `premium_packs` VALUES (1,'1 Month',1,15),(2,'6 Months',6,60),(3,'12 Months',12,100);
/*!40000 ALTER TABLE `premium_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_history`
--

DROP TABLE IF EXISTS `reward_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `point_cost` int(11) NOT NULL DEFAULT '0',
  `minutes` decimal(12,2) NOT NULL DEFAULT '0.00',
  `premium_hours` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_history`
--

LOCK TABLES `reward_history` WRITE;
/*!40000 ALTER TABLE `reward_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_packs`
--

DROP TABLE IF EXISTS `reward_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_packs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `point_cost` int(11) NOT NULL DEFAULT '0',
  `minutes` decimal(12,2) NOT NULL DEFAULT '0.00',
  `premium_hours` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_packs`
--

LOCK TABLES `reward_packs` WRITE;
/*!40000 ALTER TABLE `reward_packs` DISABLE KEYS */;
INSERT INTO `reward_packs` VALUES (3,10,36.00,1),(4,50,150.00,2),(5,100,210.00,4),(6,200,300.00,6),(7,400,600.00,8),(8,800,3000.00,24),(9,1000,6000.00,168),(11,20000,1200.00,720);
/*!40000 ALTER TABLE `reward_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `paypal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `index-title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `low_minute_emails` tinyint(1) NOT NULL DEFAULT '0',
  `min_payout` decimal(12,2) NOT NULL DEFAULT '5.00',
  `site_accounts_perip` tinyint(1) NOT NULL DEFAULT '1',
  `minutes_ratio_regular` int(3) NOT NULL DEFAULT '50',
  `minutes_ratio_premium` int(3) NOT NULL DEFAULT '80',
  `affiliate_minutes_regular` int(3) NOT NULL DEFAULT '20',
  `affiliate_minutes_premium` int(3) NOT NULL DEFAULT '30',
  `affiliate_purchases_regular` int(3) NOT NULL DEFAULT '25',
  `affiliate_purchases_premium` int(3) NOT NULL DEFAULT '50',
  `cronpass_hourly` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cronpass_daily` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_activate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'http://trafix.ga','Trafix','','','info@trafix.ga','info@trafix.ga','Trafix - Free Traffix Exchange',1,5.00,50,70,95,25,50,25,50,'KGiaZCI21RzHMdE8m4Pv','zZsKNMpkIH81579ud6Xm',0);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat_tracking`
--

DROP TABLE IF EXISTS `stat_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stat_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_activity` int(11) NOT NULL DEFAULT '0',
  `user_new_signups` int(11) NOT NULL DEFAULT '0',
  `user_total_logins` int(11) NOT NULL DEFAULT '0',
  `user_banned_by_script` int(11) NOT NULL DEFAULT '0',
  `sales_activity` decimal(12,2) NOT NULL DEFAULT '0.00',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat_tracking`
--

LOCK TABLES `stat_tracking` WRITE;
/*!40000 ALTER TABLE `stat_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `stat_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `today_stats`
--

DROP TABLE IF EXISTS `today_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `today_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_activity` int(11) NOT NULL DEFAULT '0',
  `user_new_signups` int(11) NOT NULL DEFAULT '0',
  `user_total_logins` int(11) NOT NULL DEFAULT '0',
  `user_banned_by_script` int(11) NOT NULL DEFAULT '0',
  `sales_activity` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `today_stats`
--

LOCK TABLES `today_stats` WRITE;
/*!40000 ALTER TABLE `today_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `today_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `pack` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `money` decimal(5,2) NOT NULL DEFAULT '0.00',
  `affiliate` int(15) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `minutes` decimal(12,2) NOT NULL DEFAULT '6.00',
  `bonus_points` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` int(255) DEFAULT NULL,
  `signup` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activate` int(255) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `cash` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `max_sites` tinyint(3) NOT NULL DEFAULT '3',
  `premium` tinyint(1) NOT NULL DEFAULT '0',
  `premiumtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `toplevel` tinyint(1) NOT NULL DEFAULT '0',
  `user_hourly` int(11) NOT NULL DEFAULT '0',
  `user_activity0` float NOT NULL DEFAULT '0',
  `user_activity1` float NOT NULL DEFAULT '0',
  `user_activity2` float NOT NULL DEFAULT '0',
  `user_activity3` float NOT NULL DEFAULT '0',
  `user_activity4` float NOT NULL DEFAULT '0',
  `user_activity5` float NOT NULL DEFAULT '0',
  `user_activity6` float NOT NULL DEFAULT '0',
  `site_activity0` int(11) NOT NULL DEFAULT '0',
  `site_activity1` int(11) NOT NULL DEFAULT '0',
  `site_activity2` int(11) NOT NULL DEFAULT '0',
  `site_activity3` int(11) NOT NULL DEFAULT '0',
  `site_activity4` int(11) NOT NULL DEFAULT '0',
  `site_activity5` int(11) NOT NULL DEFAULT '0',
  `site_activity6` int(11) NOT NULL DEFAULT '0',
  `lifetime_activity` int(11) NOT NULL DEFAULT '0',
  `lifetime_minutes` decimal(12,2) NOT NULL DEFAULT '0.00',
  `lifetime_cash` decimal(12,2) NOT NULL DEFAULT '0.00',
  `premium_reset` tinyint(1) NOT NULL DEFAULT '0',
  `session` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `httpref` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `optin` tinyint(1) NOT NULL DEFAULT '0',
  `last_emailed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `minutes` (`minutes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_report`
--

DROP TABLE IF EXISTS `website_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_report` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `ignore` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_report`
--

LOCK TABLES `website_report` WRITE;
/*!40000 ALTER TABLE `website_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `website_reports_view`
--

DROP TABLE IF EXISTS `website_reports_view`;
/*!50001 DROP VIEW IF EXISTS `website_reports_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `website_reports_view` AS SELECT 
 1 AS `id`,
 1 AS `url`,
 1 AS `user_id`,
 1 AS `email`,
 1 AS `timestamp`,
 1 AS `report_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `website_traffic`
--

DROP TABLE IF EXISTS `website_traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_traffic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(255) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `duration` float NOT NULL DEFAULT '0.2',
  `min_sec` int(11) NOT NULL DEFAULT '0',
  `max_sec` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `max_hits` int(11) NOT NULL DEFAULT '999999999',
  `hits_this_hour` int(11) NOT NULL DEFAULT '0',
  `max_hits_hour` int(11) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `reports` int(3) NOT NULL DEFAULT '0',
  `checked` int(15) NOT NULL DEFAULT '1',
  `referer` tinyint(1) NOT NULL DEFAULT '0',
  `activity0` int(11) NOT NULL DEFAULT '0',
  `activity1` int(11) NOT NULL DEFAULT '0',
  `activity2` int(11) NOT NULL DEFAULT '0',
  `activity3` int(11) NOT NULL DEFAULT '0',
  `activity4` int(11) NOT NULL DEFAULT '0',
  `activity5` int(11) NOT NULL DEFAULT '0',
  `activity6` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_traffic`
--

LOCK TABLES `website_traffic` WRITE;
/*!40000 ALTER TABLE `website_traffic` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_traffic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_trafficed`
--

DROP TABLE IF EXISTS `website_trafficed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_trafficed` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `site_id` int(255) NOT NULL,
  `reported` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_trafficed`
--

LOCK TABLES `website_trafficed` WRITE;
/*!40000 ALTER TABLE `website_trafficed` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_trafficed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `website_trafficed_view`
--

DROP TABLE IF EXISTS `website_trafficed_view`;
/*!50001 DROP VIEW IF EXISTS `website_trafficed_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `website_trafficed_view` AS SELECT 
 1 AS `id`,
 1 AS `url`,
 1 AS `user_id`,
 1 AS `timestamp`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `website_reports_view`
--

/*!50001 DROP VIEW IF EXISTS `website_reports_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `website_reports_view` AS select `r`.`id` AS `id`,`w`.`url` AS `url`,`r`.`user_id` AS `user_id`,`u`.`email` AS `email`,`r`.`timestamp` AS `timestamp`,count(0) AS `report_count` from ((`website_report` `r` join `users` `u` on((`r`.`user_id` = `u`.`id`))) join `website_traffic` `w` on((`w`.`id` = `r`.`id`))) where (`r`.`ignore` = 0) group by `w`.`id` order by `r`.`timestamp` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `website_trafficed_view`
--

/*!50001 DROP VIEW IF EXISTS `website_trafficed_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `website_trafficed_view` AS select `w`.`id` AS `id`,`w`.`url` AS `url`,`t`.`user_id` AS `user_id`,`t`.`timestamp` AS `timestamp` from (`website_trafficed` `t` join `website_traffic` `w` on((`t`.`site_id` = `w`.`id`))) order by `t`.`timestamp` desc */;
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

-- Dump completed on 2020-10-06 22:16:40
