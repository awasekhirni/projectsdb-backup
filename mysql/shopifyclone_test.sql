-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: shopifyclone_test
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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_admin_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operate` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_clients`
--

DROP TABLE IF EXISTS `api_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_clients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `api_key` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `shared_secret` varchar(32) DEFAULT NULL,
  `title` varchar(36) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_clients`
--

LOCK TABLES `api_clients` WRITE;
/*!40000 ALTER TABLE `api_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','test','2020-06-23 21:48:57.375543','2020-06-23 21:48:57.561268'),('schema_sha1','655ab024999bbcee709060ecd23b763527009d2b','2020-06-23 21:48:58.007690','2020-06-23 21:48:58.007690');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body_html` text,
  `published` tinyint(1) DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_articles_on_blog_id` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_tags`
--

DROP TABLE IF EXISTS `articles_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles_tags` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `index_articles_tags_on_article_id` (`article_id`),
  KEY `index_articles_tags_on_tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_tags`
--

LOCK TABLES `articles_tags` WRITE;
/*!40000 ALTER TABLE `articles_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `commentable` varchar(255) DEFAULT NULL,
  `handle` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blogs_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancel_reasons`
--

DROP TABLE IF EXISTS `cancel_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancel_reasons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `selection` varchar(255) DEFAULT NULL,
  `detailed` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancel_reasons`
--

LOCK TABLES `cancel_reasons` WRITE;
/*!40000 ALTER TABLE `cancel_reasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancel_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `cart_hash` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_carts_on_token` (`token`),
  KEY `index_carts_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumptions`
--

DROP TABLE IF EXISTS `consumptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumptions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `plan_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumptions`
--

LOCK TABLES `consumptions` WRITE;
/*!40000 ALTER TABLE `consumptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_collection_products`
--

DROP TABLE IF EXISTS `custom_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_collection_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `custom_collection_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_collection_products_on_custom_collection_id` (`custom_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_collection_products`
--

LOCK TABLES `custom_collection_products` WRITE;
/*!40000 ALTER TABLE `custom_collection_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_collections`
--

DROP TABLE IF EXISTS `custom_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `handle` varchar(255) NOT NULL,
  `body_html` text,
  `products_order` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_collections_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_collections`
--

LOCK TABLES `custom_collections` WRITE;
/*!40000 ALTER TABLE `custom_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_addresses`
--

DROP TABLE IF EXISTS `customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_addresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `district` varchar(64) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `zip` varchar(12) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `default_address` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_customer_addresses_on_customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_addresses`
--

LOCK TABLES `customer_addresses` WRITE;
/*!40000 ALTER TABLE `customer_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `term` varchar(32) DEFAULT NULL,
  `query` varchar(512) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_customer_groups_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_groups`
--

LOCK TABLES `customer_groups` WRITE;
/*!40000 ALTER TABLE `customer_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_tags`
--

DROP TABLE IF EXISTS `customer_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_customer_tags_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_tags`
--

LOCK TABLES `customer_tags` WRITE;
/*!40000 ALTER TABLE `customer_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_tags_customers`
--

DROP TABLE IF EXISTS `customer_tags_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_tags_customers` (
  `customer_id` int(11) NOT NULL,
  `customer_tag_id` int(11) NOT NULL,
  KEY `index_customer_tags_customers_on_customer_id` (`customer_id`),
  KEY `index_customer_tags_customers_on_customer_tag_id` (`customer_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_tags_customers`
--

LOCK TABLES `customer_tags_customers` WRITE;
/*!40000 ALTER TABLE `customer_tags_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_tags_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `status` varchar(8) NOT NULL,
  `name` varchar(16) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `total_spent` float DEFAULT '0',
  `orders_count` int(11) DEFAULT '0',
  `accepts_marketing` tinyint(1) DEFAULT '1',
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_customers_on_shop_id_and_email` (`shop_id`,`email`),
  KEY `index_customers_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `discount_type` varchar(16) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `used_times` int(11) DEFAULT '0',
  `usage_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `mail_type` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `include_html` tinyint(1) DEFAULT '0',
  `body_html` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kindeditors`
--

DROP TABLE IF EXISTS `kindeditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kindeditors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `kindeditor_image_uid` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kindeditors`
--

LOCK TABLES `kindeditors` WRITE;
/*!40000 ALTER TABLE `kindeditors` DISABLE KEYS */;
/*!40000 ALTER TABLE `kindeditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_lists`
--

DROP TABLE IF EXISTS `link_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `system_default` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_link_lists_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_lists`
--

LOCK TABLES `link_lists` WRITE;
/*!40000 ALTER TABLE `link_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `link_list_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link_type` varchar(255) DEFAULT NULL,
  `subject_handle` varchar(255) DEFAULT NULL,
  `subject_params` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_links_on_link_list_id` (`link_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_grants`
--

DROP TABLE IF EXISTS `oauth_access_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_grants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resource_owner_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_in` int(11) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `revoked_at` datetime DEFAULT NULL,
  `scopes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_oauth_access_grants_on_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_grants`
--

LOCK TABLES `oauth_access_grants` WRITE;
/*!40000 ALTER TABLE `oauth_access_grants` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resource_owner_id` int(11) DEFAULT NULL,
  `application_id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `refresh_token` varchar(64) DEFAULT NULL,
  `expires_in` int(11) DEFAULT NULL,
  `revoked_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `scopes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_oauth_access_tokens_on_token` (`token`),
  UNIQUE KEY `index_oauth_access_tokens_on_refresh_token` (`refresh_token`),
  KEY `index_oauth_access_tokens_on_resource_owner_id` (`resource_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_applications`
--

DROP TABLE IF EXISTS `oauth_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_applications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uid` varchar(64) NOT NULL,
  `secret` varchar(64) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_oauth_applications_on_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_applications`
--

LOCK TABLES `oauth_applications` WRITE;
/*!40000 ALTER TABLE `oauth_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_discounts`
--

DROP TABLE IF EXISTS `order_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_discounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_discounts`
--

LOCK TABLES `order_discounts` WRITE;
/*!40000 ALTER TABLE `order_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_fulfillments`
--

DROP TABLE IF EXISTS `order_fulfillments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_fulfillments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `tracking_company` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_fulfillments_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_fulfillments`
--

LOCK TABLES `order_fulfillments` WRITE;
/*!40000 ALTER TABLE `order_fulfillments` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_fulfillments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_fulfillments_order_line_items`
--

DROP TABLE IF EXISTS `order_fulfillments_order_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_fulfillments_order_line_items` (
  `order_fulfillment_id` int(11) NOT NULL,
  `order_line_item_id` int(11) NOT NULL,
  KEY `index_order_fulfillments_items` (`order_fulfillment_id`,`order_line_item_id`),
  KEY `index_order_fulfillments_items_id` (`order_fulfillment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_fulfillments_order_line_items`
--

LOCK TABLES `order_fulfillments_order_line_items` WRITE;
/*!40000 ALTER TABLE `order_fulfillments_order_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_fulfillments_order_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_histories`
--

DROP TABLE IF EXISTS `order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `body` varchar(255) NOT NULL,
  `url` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_histories_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_histories`
--

LOCK TABLES `order_histories` WRITE;
/*!40000 ALTER TABLE `order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line_items`
--

DROP TABLE IF EXISTS `order_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_line_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `fulfilled` tinyint(1) DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `variant_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `requires_shipping` tinyint(1) DEFAULT NULL,
  `grams` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_line_items_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line_items`
--

LOCK TABLES `order_line_items` WRITE;
/*!40000 ALTER TABLE `order_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_shipping_addresses`
--

DROP TABLE IF EXISTS `order_shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_shipping_addresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `district` varchar(64) DEFAULT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `zip` varchar(12) DEFAULT NULL,
  `phone` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_shipping_addresses_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_shipping_addresses`
--

LOCK TABLES `order_shipping_addresses` WRITE;
/*!40000 ALTER TABLE `order_shipping_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_transactions`
--

DROP TABLE IF EXISTS `order_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `kind` varchar(16) NOT NULL,
  `amount` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `status` varchar(16) DEFAULT NULL,
  `batch_no` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_transactions_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_transactions`
--

LOCK TABLES `order_transactions` WRITE;
/*!40000 ALTER TABLE `order_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `token` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `number` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `status` varchar(16) NOT NULL,
  `financial_status` varchar(16) NOT NULL,
  `fulfillment_status` varchar(16) NOT NULL,
  `email` varchar(32) NOT NULL,
  `shipping_rate` varchar(32) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `total_line_items_price` float NOT NULL,
  `total_price` float NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `cancel_reason` varchar(16) DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subtotal_price` float DEFAULT NULL,
  `trade_no` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_orders_on_token` (`token`),
  KEY `index_orders_on_customer_id` (`customer_id`),
  KEY `index_orders_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `handle` varchar(255) NOT NULL,
  `body_html` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payment_type_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `message` text,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `service` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_permissions_on_user_id_and_resource_id` (`user_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_image_uid` varchar(255) DEFAULT NULL,
  `product_image_format` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_photos_on_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_based_shipping_rates`
--

DROP TABLE IF EXISTS `price_based_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_based_shipping_rates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `min_order_subtotal` float DEFAULT NULL,
  `max_order_subtotal` float DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `shipping_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_price_based_shipping_rates_on_shipping_id` (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_based_shipping_rates`
--

LOCK TABLES `price_based_shipping_rates` WRITE;
/*!40000 ALTER TABLE `price_based_shipping_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `price_based_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_options_on_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_options`
--

LOCK TABLES `product_options` WRITE;
/*!40000 ALTER TABLE `product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `weight` float NOT NULL DEFAULT '0',
  `compare_at_price` float DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `requires_shipping` tinyint(1) DEFAULT '1',
  `inventory_quantity` int(11) DEFAULT NULL,
  `inventory_management` varchar(255) DEFAULT NULL,
  `inventory_policy` varchar(255) DEFAULT 'deny',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_variants_on_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants`
--

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `published` tinyint(1) DEFAULT '1',
  `body_html` text,
  `price` float DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_tags`
--

DROP TABLE IF EXISTS `products_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_tags` (
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `index_products_tags_on_product_id` (`product_id`),
  KEY `index_products_tags_on_tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_tags`
--

LOCK TABLES `products_tags` WRITE;
/*!40000 ALTER TABLE `products_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20121016152948');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `code` varchar(8) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shippings_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_domains`
--

DROP TABLE IF EXISTS `shop_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_domains` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `subdomain` varchar(32) DEFAULT NULL,
  `domain` varchar(32) DEFAULT NULL,
  `host` varchar(64) DEFAULT NULL,
  `primary` tinyint(1) DEFAULT '1',
  `force_domain` tinyint(1) DEFAULT '0',
  `record` varchar(32) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_shop_domains_on_host` (`host`),
  KEY `index_shop_domains_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_domains`
--

LOCK TABLES `shop_domains` WRITE;
/*!40000 ALTER TABLE `shop_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_policies`
--

DROP TABLE IF EXISTS `shop_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_policies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `shop_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shop_policies_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_policies`
--

LOCK TABLES `shop_policies` WRITE;
/*!40000 ALTER TABLE `shop_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_types`
--

DROP TABLE IF EXISTS `shop_product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_product_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shop_product_types_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_types`
--

LOCK TABLES `shop_product_types` WRITE;
/*!40000 ALTER TABLE `shop_product_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_vendors`
--

DROP TABLE IF EXISTS `shop_product_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_product_vendors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shop_product_vendors_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_vendors`
--

LOCK TABLES `shop_product_vendors` WRITE;
/*!40000 ALTER TABLE `shop_product_vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_tasks`
--

DROP TABLE IF EXISTS `shop_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_tasks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shop_tasks_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_tasks`
--

LOCK TABLES `shop_tasks` WRITE;
/*!40000 ALTER TABLE `shop_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_theme_settings`
--

DROP TABLE IF EXISTS `shop_theme_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_theme_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_theme_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shop_theme_settings_on_shop_theme_id` (`shop_theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_theme_settings`
--

LOCK TABLES `shop_theme_settings` WRITE;
/*!40000 ALTER TABLE `shop_theme_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_theme_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_themes`
--

DROP TABLE IF EXISTS `shop_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_themes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `role` varchar(16) NOT NULL,
  `load_preset` varchar(16) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shop_themes_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_themes`
--

LOCK TABLES `shop_themes` WRITE;
/*!40000 ALTER TABLE `shop_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `plan` varchar(255) DEFAULT 'free',
  `deadline` date DEFAULT NULL,
  `province` varchar(8) DEFAULT NULL,
  `city` varchar(8) DEFAULT NULL,
  `district` varchar(8) DEFAULT NULL,
  `zip_code` varchar(16) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `password_enabled` tinyint(1) DEFAULT '0',
  `password_message` varchar(255) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `money_with_currency_format` varchar(32) DEFAULT NULL,
  `money_format` varchar(32) DEFAULT NULL,
  `money_with_currency_in_emails_format` varchar(32) DEFAULT NULL,
  `money_in_emails_format` varchar(32) DEFAULT NULL,
  `orders_count` int(11) DEFAULT '0',
  `order_number_format` varchar(32) DEFAULT '#{{number}}',
  `customer_accounts` varchar(255) DEFAULT 'optional',
  `signup_source` varchar(16) DEFAULT NULL,
  `guided` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `access_enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_collection_products`
--

DROP TABLE IF EXISTS `smart_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smart_collection_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `smart_collection_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_smart_collection_products_on_smart_collection_id` (`smart_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_collection_products`
--

LOCK TABLES `smart_collection_products` WRITE;
/*!40000 ALTER TABLE `smart_collection_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_collection_rules`
--

DROP TABLE IF EXISTS `smart_collection_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smart_collection_rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `smart_collection_id` int(11) NOT NULL,
  `column` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_smart_collection_rules_on_smart_collection_id` (`smart_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_collection_rules`
--

LOCK TABLES `smart_collection_rules` WRITE;
/*!40000 ALTER TABLE `smart_collection_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_collection_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smart_collections`
--

DROP TABLE IF EXISTS `smart_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smart_collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `handle` varchar(255) NOT NULL,
  `body_html` text,
  `products_order` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_smart_collections_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smart_collections`
--

LOCK TABLES `smart_collections` WRITE;
/*!40000 ALTER TABLE `smart_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `smart_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tags_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `themes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `handle` varchar(16) DEFAULT NULL,
  `style` varchar(16) NOT NULL,
  `style_handle` varchar(16) DEFAULT NULL,
  `role` varchar(16) DEFAULT NULL,
  `price` float DEFAULT '0',
  `color` varchar(8) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `shop` varchar(32) DEFAULT NULL,
  `site` varchar(64) DEFAULT NULL,
  `author` varchar(16) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `file` varchar(64) DEFAULT NULL,
  `main` varchar(64) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `product` varchar(64) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `bio` text,
  `receive_announcements` tinyint(1) DEFAULT '1',
  `shop_id` int(11) NOT NULL,
  `avatar_image_uid` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '1',
  `authentication_token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_shop_id_and_email` (`shop_id`,`email`),
  UNIQUE KEY `index_users_on_authentication_token` (`authentication_token`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhooks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `event` varchar(32) NOT NULL,
  `callback_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_based_shipping_rates`
--

DROP TABLE IF EXISTS `weight_based_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weight_based_shipping_rates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `weight_low` float DEFAULT NULL,
  `weight_high` float DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `shipping_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_weight_based_shipping_rates_on_shipping_id` (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_based_shipping_rates`
--

LOCK TABLES `weight_based_shipping_rates` WRITE;
/*!40000 ALTER TABLE `weight_based_shipping_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `weight_based_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:14:06
