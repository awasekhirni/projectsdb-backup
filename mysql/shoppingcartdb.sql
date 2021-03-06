-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: shoppingcartdb
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2018-05-25 13:09:23','2018-05-25 13:09:23'),(2,NULL,1,'Category 2','category-2','2018-05-25 13:09:23','2018-05-25 13:09:23'),(3,NULL,1,'Shirt','shirt','2018-05-28 06:53:41','2018-05-28 06:53:41'),(4,NULL,1,'Sportwear','sportwear','2018-05-28 06:54:49','2018-09-25 03:30:16'),(6,NULL,1,'Outwear','outwear','2018-09-25 03:29:08','2018-09-25 03:29:08');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'name','text','Name',1,1,1,1,1,1,'',2),(3,1,'email','text','Email',1,1,1,1,1,1,'',3),(4,1,'password','password','Password',1,0,0,1,1,0,'',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'',5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'',8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'locale','text','Locale',0,1,1,1,1,0,'',12),(12,1,'settings','hidden','Settings',0,0,0,0,0,0,'',12),(13,2,'id','number','ID',1,0,0,0,0,0,'',1),(14,2,'name','text','Name',1,1,1,1,1,1,'',2),(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(17,3,'id','number','ID',1,0,0,0,0,0,'',1),(18,3,'name','text','Name',1,1,1,1,1,1,'',2),(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(21,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(22,1,'role_id','text','Role',1,1,1,1,1,1,'',9),(23,4,'id','number','ID',1,0,0,0,0,0,'',1),(24,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(25,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(26,4,'name','text','Name',1,1,1,1,1,1,'',4),(27,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(28,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'',6),(29,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(30,5,'id','number','ID',1,0,0,0,0,0,'',1),(31,5,'author_id','text','Author',1,0,1,1,0,1,'',2),(32,5,'category_id','text','Category',1,0,1,1,1,0,'',3),(33,5,'title','text','Title',1,1,1,1,1,1,'',4),(34,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',5),(35,5,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(36,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(37,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(38,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,'',9),(39,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,'',10),(40,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(41,5,'created_at','timestamp','Created At',0,1,1,0,0,0,'',12),(42,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',13),(43,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'',14),(44,5,'featured','checkbox','Featured',1,1,1,1,1,1,'',15),(45,6,'id','number','ID',1,0,0,0,0,0,'',1),(46,6,'author_id','text','Author',1,0,0,0,0,0,'',2),(47,6,'title','text','Title',1,1,1,1,1,1,'',3),(48,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',4),(49,6,'body','rich_text_box','Body',1,0,1,1,1,1,'',5),(50,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(51,6,'meta_description','text','Meta Description',1,0,1,1,1,1,'',7),(52,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,'',8),(53,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(54,6,'created_at','timestamp','Created At',1,1,1,0,0,0,'',10),(55,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,'',11),(56,6,'image','image','Page Image',0,1,1,1,1,1,'',12),(57,7,'id','text','Id',1,0,0,0,0,0,NULL,1),(58,7,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(59,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(60,7,'description','text','Description',0,1,1,1,1,1,NULL,4),(61,7,'thumbnailurl','text','Thumbnailurl',0,1,1,1,1,1,NULL,5),(62,7,'thumbnail','hidden','Thumbnail',0,1,1,1,1,1,NULL,6),(63,7,'title','text','Title',0,1,1,1,1,1,NULL,7),(64,7,'price','text','Price',0,1,1,1,1,1,NULL,8),(65,7,'categorie_id','hidden','Categorie Id',0,1,1,1,1,1,NULL,9),(66,7,'product_belongsto_category_relationship','relationship','Category',0,1,1,1,1,1,'{\"model\":\"App\\\\Categorie\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"categorie_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),(73,9,'id','text','Id',1,1,1,0,0,0,NULL,1),(74,9,'user_id','text','User Id',1,1,1,1,1,1,NULL,3),(75,9,'json_data','text','Json Data',0,0,1,0,0,0,NULL,4),(76,9,'is_paid','text','Is Paid',0,1,1,1,1,1,NULL,5),(77,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,6),(78,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(79,9,'invoice_belongsto_user_relationship','relationship','users',0,1,1,0,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',2);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-05-25 13:09:21','2018-05-25 13:09:21'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-05-25 13:09:21','2018-05-25 13:09:21'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-05-25 13:09:21','2018-05-25 13:09:21'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2018-05-25 13:09:23','2018-05-25 13:09:23'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2018-05-25 13:09:24','2018-05-25 13:09:24'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2018-05-25 13:09:24','2018-05-25 13:09:24'),(7,'products','products','Product','Products','voyager-bag','App\\Product',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null}','2018-05-28 07:40:35','2018-11-28 13:03:15'),(9,'invoices','invoices','Invoice','Invoices','voyager-text-file','App\\Invoice',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null}','2018-07-03 15:20:45','2018-11-28 12:12:36');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `json_data` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `is_paid` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (26,1,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":2,\"description\":null}],\"invoice_id\":26,\"invoice_description\":\"Order with Invoice 26\",\"total\":438,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-03 15:43:17','2018-07-03 15:43:39'),(27,1,NULL,0,'2018-07-05 03:08:28','2018-07-05 03:08:28'),(28,16,NULL,0,'2018-07-05 10:50:01','2018-07-05 10:50:01'),(29,16,NULL,0,'2018-07-05 10:50:32','2018-07-05 10:50:32'),(30,17,NULL,0,'2018-07-06 09:34:23','2018-07-06 09:34:23'),(31,4,NULL,0,'2018-07-06 19:56:16','2018-07-06 19:56:16'),(32,4,NULL,0,'2018-07-06 20:27:09','2018-07-06 20:27:09'),(33,17,NULL,0,'2018-07-08 14:12:21','2018-07-08 14:12:21'),(34,17,NULL,0,'2018-07-08 16:28:16','2018-07-08 16:28:16'),(35,17,NULL,0,'2018-07-08 16:30:22','2018-07-08 16:30:22'),(36,17,NULL,0,'2018-07-09 21:40:53','2018-07-09 21:40:53'),(37,17,NULL,0,'2018-07-10 03:17:36','2018-07-10 03:17:36'),(38,17,NULL,0,'2018-07-10 20:07:37','2018-07-10 20:07:37'),(39,17,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":39,\"invoice_description\":\"Order with Invoice 39\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-13 12:47:05','2018-07-13 12:48:51'),(40,17,'{\"items\":[{\"name\":\"Sweatshirt\",\"price\":139,\"qty\":\"1\",\"description\":null}],\"invoice_id\":40,\"invoice_description\":\"Order with Invoice 40\",\"total\":139,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-15 01:15:10','2018-07-15 01:15:40'),(41,1,NULL,0,'2018-07-15 12:50:50','2018-07-15 12:50:50'),(42,19,'{\"items\":[],\"invoice_id\":42,\"invoice_description\":\"Order with Invoice 42\",\"total\":0,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-15 14:11:20','2018-07-15 14:12:11'),(43,17,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":2,\"description\":null}],\"invoice_id\":43,\"invoice_description\":\"Order with Invoice 43\",\"total\":438,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-16 19:12:04','2018-07-16 19:12:51'),(44,17,NULL,0,'2018-07-16 19:13:11','2018-07-16 19:13:11'),(45,1,NULL,0,'2018-07-18 16:11:28','2018-07-18 16:11:28'),(46,20,NULL,0,'2018-07-21 04:25:33','2018-07-21 04:25:33'),(47,21,NULL,0,'2018-07-21 09:14:45','2018-07-21 09:14:45'),(48,17,NULL,0,'2018-07-21 22:00:37','2018-07-21 22:00:37'),(49,17,'{\"items\":[{\"name\":\"Sweatshirt\",\"price\":139,\"qty\":2,\"description\":null}],\"invoice_id\":49,\"invoice_description\":\"Order with Invoice 49\",\"total\":278,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-22 20:29:55','2018-07-22 20:30:57'),(50,22,NULL,0,'2018-07-23 17:40:56','2018-07-23 17:40:56'),(51,17,NULL,0,'2018-07-24 17:18:52','2018-07-24 17:18:52'),(52,17,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":52,\"invoice_description\":\"Order with Invoice 52\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-24 17:25:09','2018-07-24 17:25:28'),(53,17,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":53,\"invoice_description\":\"Order with Invoice 53\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-24 17:29:05','2018-07-24 17:29:19'),(54,17,NULL,0,'2018-07-27 03:02:54','2018-07-27 03:02:54'),(55,17,'{\"items\":[{\"name\":\"Sweatshirt\",\"price\":139,\"qty\":\"1\",\"description\":null}],\"invoice_id\":55,\"invoice_description\":\"Order with Invoice 55\",\"total\":139,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-27 13:50:50','2018-07-27 13:51:40'),(56,23,NULL,0,'2018-07-27 14:39:12','2018-07-27 14:39:12'),(57,17,NULL,0,'2018-07-29 13:34:18','2018-07-29 13:34:18'),(58,1,'{\"items\":[{\"name\":\"Denim shirt\",\"price\":120,\"qty\":2,\"description\":null}],\"invoice_id\":58,\"invoice_description\":\"Order with Invoice 58\",\"total\":240,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-31 04:06:13','2018-07-31 04:07:11'),(59,1,'{\"items\":[{\"name\":\"Denim shirt\",\"price\":120,\"qty\":2,\"description\":null}],\"invoice_id\":59,\"invoice_description\":\"Order with Invoice 59\",\"total\":240,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-07-31 04:07:46','2018-07-31 04:08:33'),(60,17,NULL,0,'2018-08-02 21:03:45','2018-08-02 21:03:45'),(61,17,'{\"items\":[{\"name\":\"Sweatshirt\",\"price\":139,\"qty\":\"1\",\"description\":null}],\"invoice_id\":61,\"invoice_description\":\"Order with Invoice 61\",\"total\":139,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-02 23:00:43','2018-08-02 23:01:38'),(62,17,NULL,0,'2018-08-03 19:32:43','2018-08-03 19:32:43'),(63,17,'{\"items\":[{\"name\":\"Denim shirt\",\"price\":120,\"qty\":\"10\",\"description\":null}],\"invoice_id\":63,\"invoice_description\":\"Order with Invoice 63\",\"total\":1200,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-03 19:34:46','2018-08-03 19:35:07'),(64,17,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":64,\"invoice_description\":\"Order with Invoice 64\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-05 18:56:48','2018-08-05 18:57:30'),(65,17,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":65,\"invoice_description\":\"Order with Invoice 65\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-05 19:36:25','2018-08-05 19:37:17'),(66,25,NULL,0,'2018-08-06 07:39:33','2018-08-06 07:39:33'),(67,25,NULL,0,'2018-08-06 07:41:50','2018-08-06 07:41:50'),(68,25,'{\"items\":[{\"name\":\"Sweatshirt\",\"price\":139,\"qty\":3,\"description\":null}],\"invoice_id\":68,\"invoice_description\":\"Order with Invoice 68\",\"total\":417,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-06 07:43:42','2018-08-06 07:45:07'),(69,25,NULL,0,'2018-08-06 08:22:25','2018-08-06 08:22:25'),(70,17,'{\"items\":[{\"name\":\"Sweatshirt\",\"price\":139,\"qty\":\"1\",\"description\":null}],\"invoice_id\":70,\"invoice_description\":\"Order with Invoice 70\",\"total\":139,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-06 21:15:45','2018-08-06 21:16:11'),(71,26,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":71,\"invoice_description\":\"Order with Invoice 71\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-07 12:06:14','2018-08-07 12:50:06'),(72,27,NULL,0,'2018-08-07 16:51:45','2018-08-07 16:51:45'),(73,17,'{\"items\":[{\"name\":\"Sweatshirt\",\"price\":139,\"qty\":\"1\",\"description\":null}],\"invoice_id\":73,\"invoice_description\":\"Order with Invoice 73\",\"total\":139,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-07 23:32:48','2018-08-07 23:33:15'),(74,17,'{\"items\":[{\"name\":\"Denim shirt\",\"price\":120,\"qty\":\"1\",\"description\":null}],\"invoice_id\":74,\"invoice_description\":\"Order with Invoice 74\",\"total\":120,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-08 10:59:16','2018-08-08 10:59:31'),(75,28,'{\"items\":[{\"name\":\"Sweatshirt\",\"price\":139,\"qty\":\"1\",\"description\":null}],\"invoice_id\":75,\"invoice_description\":\"Order with Invoice 75\",\"total\":139,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-08 23:35:15','2018-08-08 23:35:46'),(76,1,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":76,\"invoice_description\":\"Order with Invoice 76\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-09 00:02:15','2018-08-09 00:03:00'),(77,1,NULL,0,'2018-08-10 00:01:39','2018-08-10 00:01:39'),(78,17,'{\"items\":[{\"name\":\"Denim shirt\",\"price\":120,\"qty\":\"1\",\"description\":null}],\"invoice_id\":78,\"invoice_description\":\"Order with Invoice 78\",\"total\":120,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-10 06:33:41','2018-08-10 06:34:30'),(79,1,NULL,0,'2018-08-10 16:11:20','2018-08-10 16:11:20'),(80,1,'{\"items\":[{\"name\":\"Grey blouse\",\"price\":99,\"qty\":\"3\",\"description\":null}],\"invoice_id\":80,\"invoice_description\":\"Order with Invoice 80\",\"total\":297,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-10 17:12:30','2018-08-10 17:13:11'),(81,1,'{\"items\":[{\"name\":\"Grey blouse\",\"price\":99,\"qty\":\"3\",\"description\":null}],\"invoice_id\":81,\"invoice_description\":\"Order with Invoice 81\",\"total\":297,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-10 17:13:43','2018-08-10 17:14:03'),(82,1,'{\"items\":[{\"name\":\"Grey blouse\",\"price\":99,\"qty\":\"3\",\"description\":null}],\"invoice_id\":82,\"invoice_description\":\"Order with Invoice 82\",\"total\":297,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-10 17:14:41','2018-08-10 17:15:15'),(83,1,NULL,0,'2018-08-10 17:45:31','2018-08-10 17:45:31'),(84,10,NULL,0,'2018-08-11 14:39:01','2018-08-11 14:39:01'),(85,10,NULL,0,'2018-08-11 14:55:52','2018-08-11 14:55:52'),(86,17,NULL,0,'2018-08-11 17:24:20','2018-08-11 17:24:20'),(87,1,NULL,0,'2018-08-16 13:40:16','2018-08-16 13:40:16'),(88,1,NULL,0,'2018-08-16 14:08:18','2018-08-16 14:08:18'),(89,1,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null},{\"name\":\"Grey blouse\",\"price\":99,\"qty\":\"1\",\"description\":null}],\"invoice_id\":89,\"invoice_description\":\"Order with Invoice 89\",\"total\":318,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-16 14:36:51','2018-08-16 14:38:14'),(90,29,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":90,\"invoice_description\":\"Order with Invoice 90\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-29 10:44:59','2018-08-29 10:50:10'),(91,29,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":91,\"invoice_description\":\"Order with Invoice 91\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-08-29 10:54:54','2018-08-29 10:55:16'),(92,30,NULL,0,'2018-08-31 01:56:52','2018-08-31 01:56:52'),(93,17,'{\"items\":[{\"name\":\"Grey blouse\",\"price\":99,\"qty\":\"1\",\"description\":null}],\"invoice_id\":93,\"invoice_description\":\"Order with Invoice 93\",\"total\":99,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-09-02 13:33:47','2018-09-02 13:34:07'),(94,31,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":94,\"invoice_description\":\"Order with Invoice 94\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-09-03 23:07:52','2018-09-03 23:09:54'),(95,17,NULL,0,'2018-09-04 11:14:45','2018-09-04 11:14:45'),(96,17,NULL,0,'2018-09-04 15:11:18','2018-09-04 15:11:18'),(97,17,NULL,0,'2018-09-04 15:11:22','2018-09-04 15:11:22'),(98,17,'{\"items\":[{\"name\":\"Sweatshirt\",\"price\":139,\"qty\":\"1\",\"description\":null}],\"invoice_id\":98,\"invoice_description\":\"Order with Invoice 98\",\"total\":139,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-09-04 21:10:01','2018-09-04 21:11:05'),(99,17,NULL,0,'2018-09-06 19:29:12','2018-09-06 19:29:12'),(100,32,NULL,0,'2018-09-07 01:09:15','2018-09-07 01:09:15'),(101,17,NULL,0,'2018-09-10 21:00:15','2018-09-10 21:00:15'),(102,17,NULL,0,'2018-09-10 21:22:44','2018-09-10 21:22:44'),(103,33,'{\"items\":[{\"name\":\"Black jacket\",\"price\":219,\"qty\":\"1\",\"description\":null}],\"invoice_id\":103,\"invoice_description\":\"Order with Invoice 103\",\"total\":219,\"return_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/success?\",\"cancel_url\":\"http:\\/\\/shoppingcart.scriptdemo.website\\/public\\/pay\\/cancel\"}',1,'2018-09-13 10:45:08','2018-09-13 10:46:24'),(104,34,NULL,0,'2018-09-14 21:09:25','2018-09-14 21:09:25'),(105,1,NULL,0,'2018-09-16 17:22:08','2018-09-16 17:22:08'),(106,35,NULL,0,'2018-09-17 09:30:17','2018-09-17 09:30:17'),(107,35,NULL,0,'2018-09-17 09:31:58','2018-09-17 09:31:58'),(108,36,NULL,0,'2018-09-18 05:00:12','2018-09-18 05:00:12'),(109,17,NULL,0,'2018-09-18 10:41:28','2018-09-18 10:41:28'),(110,1,NULL,0,'2018-09-18 22:30:01','2018-09-18 22:30:01'),(111,17,NULL,0,'2018-09-22 13:56:26','2018-09-22 13:56:26'),(112,17,NULL,0,'2018-09-22 14:32:20','2018-09-22 14:32:20'),(113,17,NULL,0,'2018-09-22 23:08:27','2018-09-22 23:08:27'),(114,1,NULL,0,'2018-09-23 13:49:09','2018-09-23 13:49:09'),(115,1,NULL,0,'2018-09-23 13:49:58','2018-09-23 13:49:58'),(116,1,NULL,0,'2018-09-23 15:13:21','2018-09-23 15:13:21'),(117,37,NULL,0,'2018-09-23 15:49:46','2018-09-23 15:49:46'),(118,37,NULL,0,'2018-09-23 16:56:27','2018-09-23 16:56:27'),(119,37,NULL,0,'2018-09-23 16:58:06','2018-09-23 16:58:06'),(120,37,NULL,0,'2018-09-23 17:02:55','2018-09-23 17:02:55'),(121,37,NULL,0,'2018-09-24 17:16:31','2018-09-24 17:16:31'),(122,37,NULL,0,'2018-09-24 19:49:46','2018-09-24 19:49:46'),(123,37,NULL,0,'2018-09-24 20:40:23','2018-09-24 20:40:23'),(124,17,NULL,0,'2018-09-30 21:34:00','2018-09-30 21:34:00'),(125,38,NULL,0,'2018-10-05 23:01:48','2018-10-05 23:01:48'),(126,17,NULL,0,'2018-10-13 00:44:26','2018-10-13 00:44:26'),(127,39,NULL,0,'2018-10-15 09:46:24','2018-10-15 09:46:24'),(128,40,NULL,0,'2018-10-23 15:36:44','2018-10-23 15:36:44'),(129,42,NULL,0,'2018-10-30 19:26:11','2018-10-30 19:26:11'),(130,17,NULL,0,'2018-11-03 01:37:07','2018-11-03 01:37:07'),(131,1,NULL,0,'2018-11-06 19:54:55','2018-11-06 19:54:55'),(132,17,NULL,0,'2018-11-06 20:37:07','2018-11-06 20:37:07'),(133,44,NULL,0,'2018-11-07 02:11:06','2018-11-07 02:11:06'),(134,45,NULL,0,'2018-11-07 13:52:25','2018-11-07 13:52:25'),(135,17,NULL,0,'2018-11-08 04:04:38','2018-11-08 04:04:38'),(136,17,NULL,0,'2018-11-10 01:49:39','2018-11-10 01:49:39'),(137,46,NULL,0,'2018-11-12 00:41:12','2018-11-12 00:41:12'),(138,17,NULL,0,'2018-11-15 12:48:19','2018-11-15 12:48:19'),(139,17,NULL,0,'2018-11-15 13:05:10','2018-11-15 13:05:10'),(140,47,NULL,0,'2018-11-18 19:17:57','2018-11-18 19:17:57'),(141,1,NULL,0,'2018-11-20 15:43:47','2018-11-20 15:43:47'),(142,1,NULL,0,'2018-11-20 15:59:52','2018-11-20 15:59:52'),(143,17,NULL,0,'2018-11-23 02:59:44','2018-11-23 02:59:44'),(144,49,NULL,0,'2018-11-23 12:48:21','2018-11-23 12:48:21'),(145,50,NULL,0,'2018-11-24 20:08:30','2018-11-24 20:08:30'),(146,17,NULL,0,'2018-11-25 11:28:08','2018-11-25 11:28:08'),(147,51,NULL,0,'2018-11-27 01:38:04','2018-11-27 01:38:04'),(148,51,NULL,0,'2018-11-27 01:47:21','2018-11-27 01:47:21');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-05-25 13:09:21','2018-05-25 13:09:21','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2018-05-25 13:09:21','2018-09-25 03:31:10','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2018-05-25 13:09:21','2018-05-25 13:09:21','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2018-05-25 13:09:21','2018-05-25 13:09:21','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,8,'2018-05-25 13:09:21','2018-09-25 03:31:10',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2018-05-25 13:09:21','2018-09-25 03:31:10','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2018-05-25 13:09:21','2018-09-25 03:31:10','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2018-05-25 13:09:21','2018-09-25 03:31:10','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2018-05-25 13:09:21','2018-09-25 03:31:10','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,9,'2018-05-25 13:09:21','2018-09-25 03:31:10','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2018-05-25 13:09:23','2018-09-25 03:31:10','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,NULL,5,'2018-05-25 13:09:24','2018-09-25 03:31:10','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,6,'2018-05-25 13:09:24','2018-09-25 03:31:10','voyager.pages.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2018-05-25 13:09:24','2018-09-25 03:31:10','voyager.hooks',NULL),(15,1,'Products','','_self','voyager-bag',NULL,NULL,10,'2018-05-28 07:40:35','2018-09-25 03:31:10','voyager.products.index',NULL),(17,1,'Invoices','','_self','voyager-receipt','#000000',NULL,11,'2018-07-03 15:20:45','2018-09-25 03:31:10','voyager.invoices.index','null');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-05-25 13:09:21','2018-05-25 13:09:21');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2016_01_01_000000_create_pages_table',2),(24,'2016_01_01_000000_create_posts_table',2),(25,'2016_02_15_204651_create_categories_table',2),(26,'2017_04_11_000000_alter_post_nullable_fields_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2018-05-25 13:09:24','2018-05-25 13:09:24');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(42,1),(43,1),(44,1),(45,1),(46,1),(52,1),(53,1),(54,1),(55,1),(56,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-05-25 13:09:21','2018-05-25 13:09:21'),(2,'browse_bread',NULL,'2018-05-25 13:09:21','2018-05-25 13:09:21'),(3,'browse_database',NULL,'2018-05-25 13:09:21','2018-05-25 13:09:21'),(4,'browse_media',NULL,'2018-05-25 13:09:21','2018-05-25 13:09:21'),(5,'browse_compass',NULL,'2018-05-25 13:09:21','2018-05-25 13:09:21'),(6,'browse_menus','menus','2018-05-25 13:09:21','2018-05-25 13:09:21'),(7,'read_menus','menus','2018-05-25 13:09:21','2018-05-25 13:09:21'),(8,'edit_menus','menus','2018-05-25 13:09:21','2018-05-25 13:09:21'),(9,'add_menus','menus','2018-05-25 13:09:21','2018-05-25 13:09:21'),(10,'delete_menus','menus','2018-05-25 13:09:21','2018-05-25 13:09:21'),(11,'browse_roles','roles','2018-05-25 13:09:21','2018-05-25 13:09:21'),(12,'read_roles','roles','2018-05-25 13:09:21','2018-05-25 13:09:21'),(13,'edit_roles','roles','2018-05-25 13:09:21','2018-05-25 13:09:21'),(14,'add_roles','roles','2018-05-25 13:09:21','2018-05-25 13:09:21'),(15,'delete_roles','roles','2018-05-25 13:09:21','2018-05-25 13:09:21'),(16,'browse_users','users','2018-05-25 13:09:21','2018-05-25 13:09:21'),(17,'read_users','users','2018-05-25 13:09:21','2018-05-25 13:09:21'),(18,'edit_users','users','2018-05-25 13:09:21','2018-05-25 13:09:21'),(19,'add_users','users','2018-05-25 13:09:21','2018-05-25 13:09:21'),(20,'delete_users','users','2018-05-25 13:09:21','2018-05-25 13:09:21'),(21,'browse_settings','settings','2018-05-25 13:09:21','2018-05-25 13:09:21'),(22,'read_settings','settings','2018-05-25 13:09:21','2018-05-25 13:09:21'),(23,'edit_settings','settings','2018-05-25 13:09:21','2018-05-25 13:09:21'),(24,'add_settings','settings','2018-05-25 13:09:21','2018-05-25 13:09:21'),(25,'delete_settings','settings','2018-05-25 13:09:21','2018-05-25 13:09:21'),(26,'browse_categories','categories','2018-05-25 13:09:23','2018-05-25 13:09:23'),(27,'read_categories','categories','2018-05-25 13:09:23','2018-05-25 13:09:23'),(28,'edit_categories','categories','2018-05-25 13:09:23','2018-05-25 13:09:23'),(29,'add_categories','categories','2018-05-25 13:09:23','2018-05-25 13:09:23'),(30,'delete_categories','categories','2018-05-25 13:09:23','2018-05-25 13:09:23'),(31,'browse_posts','posts','2018-05-25 13:09:24','2018-05-25 13:09:24'),(32,'read_posts','posts','2018-05-25 13:09:24','2018-05-25 13:09:24'),(33,'edit_posts','posts','2018-05-25 13:09:24','2018-05-25 13:09:24'),(34,'add_posts','posts','2018-05-25 13:09:24','2018-05-25 13:09:24'),(35,'delete_posts','posts','2018-05-25 13:09:24','2018-05-25 13:09:24'),(36,'browse_pages','pages','2018-05-25 13:09:24','2018-05-25 13:09:24'),(37,'read_pages','pages','2018-05-25 13:09:24','2018-05-25 13:09:24'),(38,'edit_pages','pages','2018-05-25 13:09:24','2018-05-25 13:09:24'),(39,'add_pages','pages','2018-05-25 13:09:24','2018-05-25 13:09:24'),(40,'delete_pages','pages','2018-05-25 13:09:24','2018-05-25 13:09:24'),(41,'browse_hooks',NULL,'2018-05-25 13:09:24','2018-05-25 13:09:24'),(42,'browse_products','products','2018-05-28 07:40:35','2018-05-28 07:40:35'),(43,'read_products','products','2018-05-28 07:40:35','2018-05-28 07:40:35'),(44,'edit_products','products','2018-05-28 07:40:35','2018-05-28 07:40:35'),(45,'add_products','products','2018-05-28 07:40:35','2018-05-28 07:40:35'),(46,'delete_products','products','2018-05-28 07:40:35','2018-05-28 07:40:35'),(52,'browse_invoices','invoices','2018-07-03 15:20:45','2018-07-03 15:20:45'),(53,'read_invoices','invoices','2018-07-03 15:20:45','2018-07-03 15:20:45'),(54,'edit_invoices','invoices','2018-07-03 15:20:45','2018-07-03 15:20:45'),(55,'add_invoices','invoices','2018-07-03 15:20:45','2018-07-03 15:20:45'),(56,'delete_invoices','invoices','2018-07-03 15:20:45','2018-07-03 15:20:45');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-05-25 13:09:24','2018-05-25 13:09:24'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-05-25 13:09:24','2018-05-25 13:09:24'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-05-25 13:09:24','2018-05-25 13:09:24'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-05-25 13:09:24','2018-05-25 13:09:24');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `thumbnailurl` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6,'2018-09-27 00:40:00','2018-11-26 19:20:34','test item','http://shoppingcart.scriptdemo.website/public//storage/product_thumbnails/3KIhCFH064tQVzUE1uenrh34xxiSV8SdpufYbdAP.jpeg','14.jpg','Sportswear',10,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-05-25 13:09:21','2018-05-25 13:09:21'),(2,'user','Normal User','2018-05-25 13:09:21','2018-05-25 13:09:21');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','ShoppingCart','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo',NULL,'','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image',NULL,'','image',5,'Admin'),(6,'admin.title','Admin Title','ShoppingCart','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader',NULL,'','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image',NULL,'','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),(11,'phpwallet.merchant_key','Merchant Key','$2y$10$ZpqJHz9zxdgnkjyDVj0P4O765wzJVDUGrt9v75JVhKMs2S7JLtFaS',NULL,'text',6,'phpWallet'),(12,'phpwallet.merchant_id','Merchant ID','2',NULL,'text',7,'phpWallet'),(17,'phpwallet.merchant_currency','Merchant Currency Code','USD',NULL,'text',8,'phpWallet'),(18,'phpwallet.merchant_currency_symbol','Merchant Currency Symbol','$',NULL,'text',9,'phpWallet'),(23,'phpwallet.merchant_request_status_url','Merchant Transaction Status URL','https://pagador.scriptdemo.website/public/request/status',NULL,'text',11,'phpWallet'),(24,'phpwallet.merchant_request_url','Merchant Request URL','https://pagador.scriptdemo.website/public/purchase/link',NULL,'text',10,'phpWallet');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2018-05-25 13:09:24','2018-05-25 13:09:24'),(2,'data_types','display_name_singular',6,'pt','PÃ¡gina','2018-05-25 13:09:24','2018-05-25 13:09:24'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2018-05-25 13:09:24','2018-05-25 13:09:24'),(4,'data_types','display_name_singular',4,'pt','Categoria','2018-05-25 13:09:24','2018-05-25 13:09:24'),(5,'data_types','display_name_singular',2,'pt','Menu','2018-05-25 13:09:24','2018-05-25 13:09:24'),(6,'data_types','display_name_singular',3,'pt','FunÃ§Ã£o','2018-05-25 13:09:24','2018-05-25 13:09:24'),(7,'data_types','display_name_plural',5,'pt','Posts','2018-05-25 13:09:24','2018-05-25 13:09:24'),(8,'data_types','display_name_plural',6,'pt','PÃ¡ginas','2018-05-25 13:09:24','2018-05-25 13:09:24'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2018-05-25 13:09:24','2018-05-25 13:09:24'),(10,'data_types','display_name_plural',4,'pt','Categorias','2018-05-25 13:09:24','2018-05-25 13:09:24'),(11,'data_types','display_name_plural',2,'pt','Menus','2018-05-25 13:09:24','2018-05-25 13:09:24'),(12,'data_types','display_name_plural',3,'pt','FunÃ§Ãµes','2018-05-25 13:09:24','2018-05-25 13:09:24'),(13,'categories','slug',1,'pt','categoria-1','2018-05-25 13:09:24','2018-05-25 13:09:24'),(14,'categories','name',1,'pt','Categoria 1','2018-05-25 13:09:24','2018-05-25 13:09:24'),(15,'categories','slug',2,'pt','categoria-2','2018-05-25 13:09:24','2018-05-25 13:09:24'),(16,'categories','name',2,'pt','Categoria 2','2018-05-25 13:09:24','2018-05-25 13:09:24'),(17,'pages','title',1,'pt','OlÃ¡ Mundo','2018-05-25 13:09:24','2018-05-25 13:09:24'),(18,'pages','slug',1,'pt','ola-mundo','2018-05-25 13:09:24','2018-05-25 13:09:24'),(19,'pages','body',1,'pt','<p>OlÃ¡ Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2018-05-25 13:09:24','2018-05-25 13:09:24'),(20,'menu_items','title',1,'pt','Painel de Controle','2018-05-25 13:09:24','2018-05-25 13:09:24'),(21,'menu_items','title',2,'pt','Media','2018-05-25 13:09:24','2018-05-25 13:09:24'),(22,'menu_items','title',12,'pt','PublicaÃ§Ãµes','2018-05-25 13:09:24','2018-05-25 13:09:24'),(23,'menu_items','title',3,'pt','Utilizadores','2018-05-25 13:09:24','2018-05-25 13:09:24'),(24,'menu_items','title',11,'pt','Categorias','2018-05-25 13:09:24','2018-05-25 13:09:24'),(25,'menu_items','title',13,'pt','PÃ¡ginas','2018-05-25 13:09:24','2018-05-25 13:09:24'),(26,'menu_items','title',4,'pt','FunÃ§Ãµes','2018-05-25 13:09:24','2018-05-25 13:09:24'),(27,'menu_items','title',5,'pt','Ferramentas','2018-05-25 13:09:24','2018-05-25 13:09:24'),(28,'menu_items','title',6,'pt','Menus','2018-05-25 13:09:24','2018-05-25 13:09:24'),(29,'menu_items','title',7,'pt','Base de dados','2018-05-25 13:09:24','2018-05-25 13:09:24'),(30,'menu_items','title',10,'pt','ConfiguraÃ§Ãµes','2018-05-25 13:09:24','2018-05-25 13:09:24');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png','$2y$10$/T5jZSeOLXoGLu2FX1wwr.YZsdkcaJlLW36hLIooRK3C625NZVm3y','0TBAfgr2ogehUMPhr6vIAzqZjg4tq4YvP1eNWpJBy1885jsUxXVRZTb68Sjr',NULL,'2018-05-25 13:09:24','2018-05-25 13:09:24'),(2,2,'mrtmrt','mertsuslu@gmail.com','users/default.png','$2y$10$.nY9BwQvR5si/4SrL.SxJOv/rVKWY5v7fzJuq/z0Y5n4XgoTejHGq',NULL,NULL,'2018-06-07 14:16:57','2018-06-07 14:16:57'),(3,2,'teste','a@a.com','users/default.png','$2y$10$dtmD29ZpM3HpjKCogKGGG.D/KtByW3QxIYakbmVz/cL9TaBwCOa/u',NULL,NULL,'2018-06-15 21:37:42','2018-06-15 21:37:42'),(4,2,'artem','tcpr.ru@yandex.ru','users/default.png','$2y$10$taRwrF16Yvs2ZBeou86R1OkBE0Hu/PypN8XNy5eXNK3UY73MgyRvu',NULL,NULL,'2018-06-16 02:57:56','2018-06-16 02:57:56'),(5,2,'zied','ziedmoney@gmail.com','users/default.png','$2y$10$Ejk6vXC4cq5yXJ5TY3XZwun0L/TM6/ms0gMnpjAg2CPQ4LwiMhj3K',NULL,NULL,'2018-06-18 07:42:45','2018-06-18 07:42:45'),(6,2,'123456','123456@abcdefg.com','users/default.png','$2y$10$yVnapNbxqmYzXoEeU5I6m.gvCMdFZ4w20zEj/7MDOT4xxPLg9VutC',NULL,NULL,'2018-06-18 19:16:20','2018-06-18 19:16:20'),(7,2,'ykk','ykk@theykk.net','users/default.png','$2y$10$OPjVy1rC05q6DRW9jtEZdO1tIGOHi7F4oN7uAX5fgQa9dqcq146JW',NULL,NULL,'2018-06-19 13:43:50','2018-06-19 13:43:50'),(8,2,'Full Name','Fullmail@hotmail.com','users/default.png','$2y$10$kkwAa4r1yAXbdG5F9Wyi0ebeJAzoJbuKmevy5CcY0Xm1dQ2MkdMUG',NULL,NULL,'2018-06-19 18:56:49','2018-06-19 18:56:49'),(9,2,'Md Abu bokor siddick','bestsocialdiary.help@gmail.com','users/default.png','$2y$10$RhjJn3YiR5Uwx.4l0jPu3OgdJ8ZZocY6GVljbZqiW/1L6R8lepW6S',NULL,NULL,'2018-06-20 00:16:56','2018-06-20 00:16:56'),(10,2,'Micheal','tcetackles@gmail.com','users/default.png','$2y$10$82xi4/3OS0PeLYEtU0VezuQ.OzC1W7dSftXJBgP5/9DKCTkhmZcmW',NULL,NULL,'2018-06-22 11:25:16','2018-06-22 11:25:16'),(11,2,'Jamil','jamilfernandez@gmail.com','users/default.png','$2y$10$VHazKXJ3lq5S9PJ9uOkIcuOc.HsqzjqZ66HxP5Ji1yKCdBT8wrxJG','z6xyHaO342KMcBK553BEwiruhWJqRabgdbEwHjpQVgLj2PChrPIdoh303DeT',NULL,'2018-06-27 08:23:40','2018-06-27 08:23:40'),(12,2,'asdadas','gembel@gmail.com','users/default.png','$2y$10$cyWR5YYjE51RS04IoulTCOEt9oC0biOLYTMAcJtaKeaICeY9a29Cy',NULL,NULL,'2018-06-29 04:15:38','2018-06-29 04:15:38'),(13,2,'san','sanayar2008@gamil.com','users/default.png','$2y$10$1SSieVrxg1Y9yUAgnX6eM.vX0Omf4uu/IZULmztZ26fCX/VHRUBpi',NULL,NULL,'2018-06-29 19:41:35','2018-06-29 19:41:35'),(14,2,'nosaint','nosaint@gmail.com','users/default.png','$2y$10$yFcgfP8r77hpXfyz9VZq/.ylxlxg1dZOgbiJfmVrqaWIRfRcLAybW',NULL,NULL,'2018-07-01 05:33:34','2018-07-01 05:33:34'),(15,2,'san','sanayar2008@gmail.com','users/default.png','$2y$10$1aV8W7CaUMO1XJi0HbqLqeP1HUiBonG7H9f9m/6zLYdBwo5h5AC2e',NULL,NULL,'2018-07-01 18:36:57','2018-07-01 18:36:57'),(16,2,'Maria Luziene Souza','ninahoppus182@gmail.com','users/default.png','$2y$10$GTFjvzk1lhikiLVxG/w7Y.MaFheVKFXSRCyIZLtvCazBg1uTzj8Ne',NULL,NULL,'2018-07-05 10:49:16','2018-07-05 10:49:16'),(17,2,'demouser@demouser.com','demouser@demouser.com','users/default.png','$2y$10$KseSmODd0ZyJSPRf8d0HFu1OH7dMj4dOR0sw/1kk.chaZYvzZUwXq','LOUimKU0zOgpIGfDDS5dO0lhT7HvAc6NEelPlvHJWVlZodyXpQ9XltSXFkkG',NULL,'2018-07-06 09:33:56','2018-07-06 09:33:56'),(18,2,'elsner','elsnertechnologies@demo.com','users/default.png','$2y$10$hMnsne0wncVnflzNSu/bCeFHq6TqMpWGnKeD00r9/5Q6Iv9c77.0G',NULL,NULL,'2018-07-13 09:34:03','2018-07-13 09:34:03'),(19,2,'Asif','masifp91@gmail.com','users/default.png','$2y$10$uXtH0KABS6LEUcfS9MKguuCUkgfAl8gy0RRF/SUa3ScYRHW6ahv7e',NULL,NULL,'2018-07-15 14:10:56','2018-07-15 14:10:56'),(20,2,'fordemoonly','fordemoonly@gmail.com','users/default.png','$2y$10$K7UL11M.Z2bi4Zl4LkevkuH0TjvyHK51G.KgBpGxsiUHzft3KIZGu',NULL,NULL,'2018-07-21 04:24:44','2018-07-21 04:24:44'),(21,2,'nakryt','nakrytik@Mail.ru','users/default.png','$2y$10$TlPjOSK9bjl37dq6bV1G0OV52ppNvB/q4h04lemDLXAqLJE84yVHO',NULL,NULL,'2018-07-21 09:14:15','2018-07-21 09:14:16'),(22,2,'markson ell','marksonel74@gmail.com','users/default.png','$2y$10$.9Z/2XMbwIuMuXwknq.Cquoo31lU0qeL6w2rXbG63vaiV55FcFJiC',NULL,NULL,'2018-07-23 17:39:33','2018-07-23 17:39:33'),(23,2,'Gaurav Kale','gavgaurav@gmail.com','users/default.png','$2y$10$dHMCg49/tCmiwUxGi9yk3eZfuEiz0HRoXcteqs0gw5H6HirrDqSWC',NULL,NULL,'2018-07-27 14:38:48','2018-07-27 14:38:48'),(24,2,'Shop Borges','estoquesquidfacil@gmail.com','users/default.png','$2y$10$AEGXGtavogSgGL/pUM9EvelULh6WNbcoVGtkX8sHGVSc.5ZdaUHR6','X3AHLAmQR1oY9tpIMvHzv12H5czvUgMVwGIdAjl1oBHhkvdqA6x5QUZA1bdI',NULL,'2018-08-03 03:13:02','2018-08-03 03:13:02'),(25,2,'Syafiq Affandi','syafiq.affandiy@gmail.com','users/default.png','$2y$10$joFV4XmdnuseM7mGm7uI5O12RZD.Nf3clrdSPdkSTHwrtcH6DR4rO','d9H0LfXhFHnTO3fO2cSyQ7HerTJsb6uTKkcfQptkUMQeUiyx6w8FiYnhrlQx',NULL,'2018-08-06 07:27:12','2018-08-06 07:27:12'),(26,2,'demo','demo@demo.com','users/default.png','$2y$10$zhWShwHM25INLozk7BUJKu2UwNVmWh2t0I1h1lFPE3BFi7InT1nyG','Y3b2E1FurZoNjOs6eXp7WJKOCSJBZGtUysrRxF635G7EmAANUR3zjn6fPxK5',NULL,'2018-08-07 11:33:03','2018-08-07 11:33:03'),(27,2,'hbsag','hhhh@yahoo.com','users/default.png','$2y$10$JpKDOoBzmRvOyDa0xa.h8Ojhsxpqtbi28VsJUoVKlRHYwrcEd0Pea',NULL,NULL,'2018-08-07 16:50:40','2018-08-07 16:50:40'),(28,2,'a','a@mail.com','users/default.png','$2y$10$pF/NLNLL1fO5Onk8Q3pefO/lYU7T/imBd9fria6nblhwvYuE9whQy',NULL,NULL,'2018-08-08 23:34:53','2018-08-08 23:34:53'),(29,2,'sandu','bitrakertrailers@gmail.com','users/default.png','$2y$10$6QJdoG7s09xnO/fMdMeI2uZgz5oZ1J7Ge1AagbZN4u1jKGHmdvoa2',NULL,NULL,'2018-08-29 10:44:11','2018-08-29 10:44:11'),(30,2,'Emirhan','emirhn507@gmail.com','users/default.png','$2y$10$MlPjrQhL5z35AHnAwDKeWucBhsEUMTgUpAskA5T6aMoWNdT8ziqXm',NULL,NULL,'2018-08-31 01:56:02','2018-08-31 01:56:02'),(31,2,'robert','wimopac@hurify1.com','users/default.png','$2y$10$heSrVcRFJyWgjY96dZTMC.D4e3SD7DhI.P0wZAtXwiG0Am3/yI0sy',NULL,NULL,'2018-09-03 23:07:15','2018-09-03 23:07:15'),(32,2,'nak','nakrytik1@mail.ru','users/default.png','$2y$10$SFRBnNV42nlm8dgUK6tKLu7RNl/1smfZfuFX.LIX.Xl1UhqlgATea',NULL,NULL,'2018-09-07 01:08:44','2018-09-07 01:08:44'),(33,2,'Engineer Vincent','simmshade@gmail.com','users/default.png','$2y$10$9fGqbqAZX8KZGfqNA2uUz.iksfkCYEJpPuS4mgNCJ8R5LQdgQWcWW',NULL,NULL,'2018-09-13 10:44:45','2018-09-13 10:44:45'),(34,2,'Septyaman','im@septyaman.com','users/default.png','$2y$10$8uWUGmwDzzCTeWAblVMBAedlKRoTun89fC1oRvY8IQDulz.Txnr8q',NULL,NULL,'2018-09-14 21:08:47','2018-09-14 21:08:47'),(35,2,'SURESH','suresh@jargonhandlers.com','users/default.png','$2y$10$opip6pTj7u.CiVpeNrOFze0KscfktgziMw6D78MVowe1OOc3yyjG.',NULL,NULL,'2018-09-17 09:30:01','2018-09-17 09:30:01'),(36,2,'Constance J. Bassett','ConstanceJBassett@teleworm.us','users/default.png','$2y$10$FjGqZnAQkMYhAKgqLqyt9eDqUMG0kIgUEab2XX/FUdzrlKCHg3MdS',NULL,NULL,'2018-09-18 04:45:43','2018-09-18 04:45:43'),(37,2,'xzfva','sales@gorillacontact.in','users/default.png','$2y$10$b1eXQmgoS2IWSwAAr8PuaOH.MN83/qEHcNVk90p5d/bK6XuOdgmkG','M70D8p7tRfIRujSwVDRWJqjj7yHfVvVMmQfQFNsEfHkrfsSg0tfHOiy6a5YI',NULL,'2018-09-23 15:47:49','2018-09-23 15:47:49'),(38,2,'nfally','nfally05@gmail.com','users/default.png','$2y$10$5anEn/ILzBOFcK6opXngtOfa7Vz.qnFAziutpzOJeftSM21CDoGKK',NULL,NULL,'2018-10-05 22:59:22','2018-10-05 22:59:22'),(39,2,'test','pong0969@gmail.com','users/default.png','$2y$10$l5A8GLg00dN1SnWceWdKKezs7vZcTAcptIehcfsuWarfmUTVT31KG',NULL,NULL,'2018-10-15 09:45:48','2018-10-15 09:45:48'),(40,2,'Prince Charles Ejikeme','expressexpand@gmail.com','users/default.png','$2y$10$PZ/GNR16lJ.d4txctRPC/en7W5/4a8R3lV5.//zmX2Yh.PAiGNSBq','LIxvH0hZAOEX6AzRZ2RoOQSJFK6QhU87W8f0cQk7z1Flm6gfUJPelklg0Oe3',NULL,'2018-10-23 15:35:34','2018-10-23 15:35:34'),(41,2,'Evgenii Antonenko','senior.an2014@yandex.ru','users/default.png','$2y$10$7SRKveSeF0c5TD1h.SxuBOonTkXBL0jhzQTlsGisSnb3XeiUD9qbm',NULL,NULL,'2018-10-28 14:54:21','2018-10-28 14:54:21'),(42,2,'test123','test@gmail.com','users/default.png','$2y$10$6UKkaS0JzI8Ow9M9RitdPO/oz6dpHxWynhzZgHks9PSmRmjG06I76',NULL,NULL,'2018-10-30 19:25:57','2018-10-30 19:25:57'),(43,2,'demo','demo123456@demo.com','users/default.png','$2y$10$hDh0G/huXcsEku2.1iF9KOqOoYEuJnIv7GZ41R9/0yuEcQSzO8nxa',NULL,NULL,'2018-11-03 20:25:50','2018-11-03 20:25:50'),(44,2,'Test','richimwill@gmail.com','users/default.png','$2y$10$eKGRZYZ5kcI9LKPas20MneBw1dXyRzcn2LzfhWPfEXj4vKof8L7HW','FfCXyuO0YsoEMwdmlaSoQhX87b8hAgL0Gl3HX6aA9Mw0RiNkHFuu6MxGB6D2',NULL,'2018-11-06 19:43:43','2018-11-06 19:43:43'),(45,2,'Ahmed Rageh','ahmedrageh@hotmail.com','users/default.png','$2y$10$bNbbkTXEZz3SXceuNWOzruYWDEuaPS6N2GH2dJoZ0beUHqW3IT3Ai',NULL,NULL,'2018-11-07 13:50:59','2018-11-07 13:50:59'),(46,2,'Jose Melena','jose@dotsik.com','users/default.png','$2y$10$ZOKVUSEJeLktGH5lLGwSoOZkxt1IN0c8sRuZQj8m./8ZjLIqKKXfa','uejSl3VNwldUwd7Lk7PdI0jtE8xeI0XCrbX7mamLf2w0UkJXtRztB4SnV6nt',NULL,'2018-11-12 00:40:36','2018-11-12 00:40:36'),(47,2,'asdjad asdfjasdflk','shajka@ashjkasc.com','users/default.png','$2y$10$B28LD7fHNP5L42plnj07iun5YxWOwwIhfpG.TfYM1vGo9IzFDAIYO',NULL,NULL,'2018-11-18 19:17:19','2018-11-18 19:17:19'),(48,2,'Mizanur Rahman','sylpe2017@gmail.com','users/default.png','$2y$10$RdTI5efC8a3wV0WY.zDRMeYZRKPsMJ4nXPWL1ySd2Vm0LqupA7QGq',NULL,NULL,'2018-11-20 06:30:59','2018-11-20 06:30:59'),(49,2,'nakrytik','nakrytt@gmail.com','users/default.png','$2y$10$T9kBOwgjjLGwbzAOkKR0oOfXb03SxQjoZckwMU9/yTLWgnEpv/EJu',NULL,NULL,'2018-11-23 12:47:33','2018-11-23 12:47:33'),(50,2,'satyam','satyam.luvit@gmail.com','users/default.png','$2y$10$7t8q890k9yJZ2.o/0dRUFOhb7EUECpxDbpXICnxtw82EWMA7EWJMO',NULL,NULL,'2018-11-24 20:07:44','2018-11-24 20:07:44'),(51,2,'Thabani Njoko','zumgeu@gobzii.ml','users/default.png','$2y$10$IsBcObNMWCgV7ACbMDXCwOcQpX/rB2BdSmebTllR0skx0GYfBR.DO',NULL,NULL,'2018-11-27 01:37:05','2018-11-27 01:37:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:14:09
