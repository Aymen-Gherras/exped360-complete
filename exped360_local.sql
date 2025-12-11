-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: exped360_local
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `agences`
--

DROP TABLE IF EXISTS `agences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agences` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wilaya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daira` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specializations` text COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `coverImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experienceYears` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_c6f59fd7a10d61ee76f638cd46` (`slug`),
  KEY `IDX_da2d7b537e907ff39b8913dfc5` (`wilaya`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agences`
--

LOCK TABLES `agences` WRITE;
/*!40000 ALTER TABLE `agences` DISABLE KEYS */;
INSERT INTO `agences` VALUES ('ae994b8f-46ae-472d-98f0-1be3fa3d1bb9','BAHIA','bahia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-11-27 16:29:09.000000','2025-11-27 16:29:09.000000',NULL,0),('e23ff8b8-c734-486d-babd-720b282b6e1e','wala3','wala3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-11-27 16:29:09.000000','2025-11-27 16:29:09.000000',NULL,0);
/*!40000 ALTER TABLE `agences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_posts`
--

DROP TABLE IF EXISTS `blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_posts` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Équipe Exped360',
  `tags` text COLLATE utf8mb4_unicode_ci,
  `featuredImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featuredImagePublicId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','published','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `publishedAt` date NOT NULL,
  `seoTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seoDescription` text COLLATE utf8mb4_unicode_ci,
  `seoKeywords` text COLLATE utf8mb4_unicode_ci,
  `canonicalUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewCount` int NOT NULL DEFAULT '0',
  `likeCount` int NOT NULL DEFAULT '0',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_5b2818a2c45c3edb9991b1c7a5` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_posts`
--

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
INSERT INTO `blog_posts` VALUES ('8a056eb9-262b-442f-b455-b8dead6a26da','test','TEST','😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊','😊😊😊😊😊😊😊😊😊😅😅😅😅😅','Équipe VisiteHub','','https://res.cloudinary.com/dtc62k4x4/image/upload/v1763042607/blog-featured/uiwxz2uxu4ylm6yig7lx.jpg','blog-featured/uiwxz2uxu4ylm6yig7lx','published','2025-11-13','dgfd','dgfdfg','dfg','',0,0,'2025-11-13 15:03:30.765342','2025-11-13 15:08:32.000000'),('cdb9bf6b-011f-46e0-9a1a-02461717b6c5','ter','rtety','😟😟😟😟😟😟😟😟😟','😟😟😟😟😟😟😟😟😟😟😟😟😟😟😟','Équipe VisiteHub','','https://res.cloudinary.com/dtc62k4x4/image/upload/v1763044167/blog-featured/awxtxl0syxvmim0aezxh.jpg','blog-featured/awxtxl0syxvmim0aezxh','published','2025-11-13','😟😟','😟','😟','',0,0,'2025-11-13 15:29:31.048006','2025-11-13 15:29:34.000000');
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandes`
--

DROP TABLE IF EXISTS `demandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demandes` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `propertyType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `propertyLocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `propertyIntention` enum('sell','rent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `whatsappContact` tinyint DEFAULT NULL,
  `emailContact` tinyint DEFAULT NULL,
  `status` enum('pending','processed','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandes`
--

LOCK TABLES `demandes` WRITE;
/*!40000 ALTER TABLE `demandes` DISABLE KEYS */;
/*!40000 ALTER TABLE `demandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_properties`
--

DROP TABLE IF EXISTS `favorite_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_properties` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `userId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `propertyId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_a2e3b36eef30c90929af3be31f7` (`userId`),
  KEY `FK_1cb1a5a847171963e956bb829dc` (`propertyId`),
  CONSTRAINT `FK_1cb1a5a847171963e956bb829dc` FOREIGN KEY (`propertyId`) REFERENCES `properties` (`id`),
  CONSTRAINT `FK_a2e3b36eef30c90929af3be31f7` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_properties`
--

LOCK TABLES `favorite_properties` WRITE;
/*!40000 ALTER TABLE `favorite_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured_properties`
--

DROP TABLE IF EXISTS `featured_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `featured_properties` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `propertyId` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL DEFAULT '0',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_89902f635d63bc032e4d96ac7f` (`propertyId`),
  KEY `IDX_ffa9b6aa179e1077e02d4a4176` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured_properties`
--

LOCK TABLES `featured_properties` WRITE;
/*!40000 ALTER TABLE `featured_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `featured_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_carousel_images`
--

DROP TABLE IF EXISTS `homepage_carousel_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepage_carousel_images` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `altText` text COLLATE utf8mb4_unicode_ci,
  `linkUrl` text COLLATE utf8mb4_unicode_ci,
  `mediaType` enum('image','video') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `order` int NOT NULL DEFAULT '0',
  `isActive` tinyint NOT NULL DEFAULT '0',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `idx_homepage_carousel_order` (`order`),
  KEY `idx_homepage_carousel_is_active` (`isActive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_carousel_images`
--

LOCK TABLES `homepage_carousel_images` WRITE;
/*!40000 ALTER TABLE `homepage_carousel_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_carousel_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_settings`
--

DROP TABLE IF EXISTS `homepage_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepage_settings` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maxSlides` int NOT NULL DEFAULT '3',
  `maxFeatured` int NOT NULL DEFAULT '6',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_settings`
--

LOCK TABLES `homepage_settings` WRITE;
/*!40000 ALTER TABLE `homepage_settings` DISABLE KEYS */;
INSERT INTO `homepage_settings` VALUES ('a7fed8c8-c075-482e-8455-6f64d7ab867f',3,6,'2025-11-13 12:02:08.047072','2025-11-13 12:02:08.047072');
/*!40000 ALTER TABLE `homepage_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nearby_places`
--

DROP TABLE IF EXISTS `nearby_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nearby_places` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` int NOT NULL DEFAULT '0',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `property_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 0xF09F938D,
  PRIMARY KEY (`id`),
  KEY `idx_nearby_places_display_order` (`property_id`,`display_order`),
  CONSTRAINT `FK_3594c485ff8d128949a0d448fc3` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nearby_places`
--

LOCK TABLES `nearby_places` WRITE;
/*!40000 ALTER TABLE `nearby_places` DISABLE KEYS */;
INSERT INTO `nearby_places` VALUES ('3e426a66-c090-11f0-966e-60cf847e4983','waka','50 m',0,'2025-11-13 13:57:00.086171','2025-11-13 13:57:00.086171','6a867da3-9670-4180-8f2b-abeedad3c87d','📍'),('bad9b473-c082-11f0-966e-60cf847e4983','fqds','900 m',0,'2025-11-13 12:20:16.161390','2025-11-13 12:20:16.161390','1b6cfda8-dfb6-4ff6-86e8-5e3947db4dcf','📍'),('e2f64592-c094-11f0-966e-60cf847e4983','ert','400 m',0,'2025-11-13 14:30:14.397700','2025-11-13 14:30:14.397700','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1','📍');
/*!40000 ALTER TABLE `nearby_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papers`
--

DROP TABLE IF EXISTS `papers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `papers` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_de96795adbf4a34f3913160100` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papers`
--

LOCK TABLES `papers` WRITE;
/*!40000 ALTER TABLE `papers` DISABLE KEYS */;
INSERT INTO `papers` VALUES ('452ea1b8-6ab4-45c2-a99c-a402f62cd1d3','Livret foncier','2025-11-13 12:01:57.767583','2025-11-13 12:01:57.767583'),('61c20d08-c1fd-4e86-bcc3-9cde89ce7ead','Acte dans l\'indivision','2025-11-13 12:01:57.759213','2025-11-13 12:01:57.759213'),('6d6e43b8-f14b-4901-b4d2-b6efea09f411','Papier timbré','2025-11-13 12:01:57.763709','2025-11-13 12:01:57.763709'),('809e9552-933c-41bf-974a-71efcdfae9c1','Acte notarié','2025-11-13 12:01:57.755484','2025-11-13 12:01:57.755484'),('a048a0a5-9fbc-411d-9048-53dbbcb95b3b','Promotion immobilière','2025-11-13 12:01:57.751292','2025-11-13 12:01:57.751292'),('abdd21a5-3ae5-440e-b005-1eaff69bc005','Permis de construire','2025-11-13 12:01:57.772384','2025-11-13 12:01:57.772384'),('ca2e729b-c810-46db-bc6b-f4e8a5768523','Décision','2025-11-13 12:01:57.743964','2025-11-13 12:01:57.743964');
/*!40000 ALTER TABLE `papers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_clicks`
--

DROP TABLE IF EXISTS `phone_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_clicks` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wilaya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daira` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deviceType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `propertyId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_phone_click_property` (`propertyId`),
  KEY `idx_phone_click_session` (`sessionId`),
  KEY `idx_phone_click_created` (`createdAt`),
  CONSTRAINT `FK_f56fbf241e7757964411c646248` FOREIGN KEY (`propertyId`) REFERENCES `properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_clicks`
--

LOCK TABLES `phone_clicks` WRITE;
/*!40000 ALTER TABLE `phone_clicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_clicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coverImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `wilaya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daira` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `expectedCompletionDate` date DEFAULT NULL,
  `status` enum('planning','construction','completed','suspended') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'planning',
  `amenities` text COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completionPercentage` int NOT NULL DEFAULT '0',
  `promoteurId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_2187088ab5ef2a918473cb9900` (`name`),
  UNIQUE KEY `IDX_96e045ab8b0271e5f5a91eae1e` (`slug`),
  KEY `IDX_0126e5d325022af9144229be3c` (`wilaya`),
  KEY `IDX_a27865a7be17886e3088f4a650` (`status`),
  KEY `IDX_4725a60b2df003ffc915226386` (`daira`),
  KEY `FK_7ba826c4fd4881fa81c1ef83762` (`promoteurId`),
  CONSTRAINT `FK_7ba826c4fd4881fa81c1ef83762` FOREIGN KEY (`promoteurId`) REFERENCES `promoteurs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promoteurs`
--

DROP TABLE IF EXISTS `promoteurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promoteurs` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wilaya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daira` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `coverImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_13d6160435aabfded67127a01f` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promoteurs`
--

LOCK TABLES `promoteurs` WRITE;
/*!40000 ALTER TABLE `promoteurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `promoteurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `surface` float NOT NULL,
  `type` enum('apartment','villa','house','studio','terrain','commercial') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'apartment',
  `transactionType` enum('vendre','location') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vendre',
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewCount` int NOT NULL DEFAULT '0',
  `bedrooms` int DEFAULT NULL,
  `bathrooms` int DEFAULT NULL,
  `apartmentType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etage` int DEFAULT NULL,
  `wilaya` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Algeria',
  `daira` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `iframe360Link` text COLLATE utf8mb4_unicode_ci,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isFeatured` tinyint NOT NULL DEFAULT '0',
  `rentPeriod` enum('month','day') COLLATE utf8mb4_unicode_ci DEFAULT 'month' COMMENT 'Rent period for rental properties (month or day)',
  `propertyOwnerType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Particulier',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `amenitiesId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `propertyOwnerName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_089e10e6f1282e7b4bd0c58263` (`slug`),
  UNIQUE KEY `REL_26ef3c0b3235eda05a1bb0125d` (`amenitiesId`),
  UNIQUE KEY `idx_properties_slug` (`slug`),
  KEY `IDX_9dbad469241c6af1508d1dae0a` (`isFeatured`),
  KEY `IDX_43ea3aa0848332841c89a6da9d` (`createdAt`),
  KEY `IDX_2fd1bae8559fceb2dc9eea7bd6` (`price`),
  KEY `IDX_4960ebde3c85fa68d93e56e7a7` (`type`),
  KEY `IDX_d3d510ec8b7b4833a8d80eef33` (`transactionType`),
  KEY `IDX_33281726ddb65cf1ed50e38228` (`daira`),
  KEY `IDX_e00d585fa22cf9212dc4997b9d` (`wilaya`),
  KEY `idx_properties_is_featured` (`isFeatured`),
  KEY `idx_properties_rent_period` (`rentPeriod`),
  KEY `idx_properties_owner_type` (`propertyOwnerType`),
  CONSTRAINT `FK_26ef3c0b3235eda05a1bb0125d0` FOREIGN KEY (`amenitiesId`) REFERENCES `property_amenities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES ('1b6cfda8-dfb6-4ff6-86e8-5e3947db4dcf','testsdtsdrtf','jkl',40,'house','location','6000 miles',0,4,NULL,NULL,NULL,'Aïn Defla','Algeria','Djendel','fsdf',NULL,NULL,'','0776536038','testsdtsdrtf',0,'day','Particulier','2025-11-13 12:20:16.072926','2025-11-13 12:20:16.000000','3c87fa1b-2948-4d4c-9a8e-97d158dac064',NULL),('1cd4ac7f-fe4f-4436-ac76-0fce1de417e1','yeyyyyy','fgdhgf',400,'house','vendre','9000 دج',20,1,NULL,NULL,NULL,'Alger','Algeria','Bir Mourad Rais','gtgr',NULL,NULL,'','01152','yeyyyyy',0,'month','Agence immobilière','2025-11-13 14:30:14.339191','2025-11-27 16:41:22.000000','1660040d-3d35-427c-abeb-a3d4153119c9','wala3'),('2512b0ae-aabf-4f13-ae29-9d4b4a35262c','Appartement moderne F3 à Alger','Magnifique appartement F3 avec vue sur la mer, entièrement rénové avec des matériaux de qualité.',85,'apartment','vendre','25000000',0,3,2,NULL,NULL,'Alger','Algeria','Sidi Mhamed','Rue Didouche Mourad, Alger',NULL,NULL,NULL,NULL,'appartement-moderne-f3-alger',0,'month','Particulier','2025-11-13 12:01:57.826143','2025-11-13 12:01:57.000000','e6e836ed-baee-4486-843a-6bc53daeec84',NULL),('5cfcff3f-1d14-4e54-b91a-be9085c82395','Villa de luxe à Oran','Superbe villa de 200m² avec jardin privé, piscine et garage pour 2 voitures.',200,'villa','vendre','45000000',0,4,3,NULL,NULL,'Oran','Algeria','Es Senia','Route de la Corniche, Oran',NULL,NULL,NULL,NULL,'villa-de-luxe-oran',0,'month','Agence immobilière','2025-11-13 12:01:57.854049','2025-11-13 12:01:57.000000','a5f670b2-ba1f-4c69-b5e4-54f3ea6a7df3',NULL),('6a867da3-9670-4180-8f2b-abeedad3c87d','testing','sdfsdfs',90,'studio','location','4000',21,3,NULL,NULL,NULL,'Bordj Badji Mokhtar','Algeria','Bordj Badji Mokhtar','sfdfsd',NULL,NULL,'','0776536038','testing',0,'day','Agence immobilière','2025-11-13 13:57:00.003539','2025-11-27 16:41:46.000000','ed5d9dbc-63dc-433a-88d9-e0354714d9a0','BAHIA'),('722b5935-4dce-40c0-ab4f-8790f4523aaf','Terrain constructible à Tlemcen','Terrain de 500m² dans une zone résidentielle calme, viabilisé et prêt à construire.',500,'terrain','vendre','15000000',0,0,0,NULL,NULL,'Tlemcen','Algeria','Maghnia','Zone résidentielle, Tlemcen',NULL,NULL,NULL,NULL,'terrain-constructible-tlemcen',0,'month','Promotion immobilière','2025-11-13 12:01:57.919722','2025-11-13 12:01:57.000000','b2b4c755-9c61-4edb-837c-82ec16f1d616',NULL),('7f8397bf-974d-4e65-b641-f7090e8617b2','Maison traditionnelle à Annaba','Charmante maison traditionnelle avec patio intérieur et terrasse panoramique.',120,'house','vendre','30000000',0,3,2,NULL,NULL,'Annaba','Algeria','El Hadjar','Quartier El Bouni, Annaba',NULL,NULL,NULL,NULL,'maison-traditionnelle-annaba',0,'month','Particulier','2025-11-13 12:01:57.900960','2025-11-13 12:01:57.000000','95b2daf5-4d6e-4ab9-820c-a9987607a536',NULL),('a4b801ee-e4f3-4b62-b71b-9eaa58beccde','Studio meublé à Constantine','Studio moderne et fonctionnel, idéal pour étudiant ou jeune professionnel.',35,'studio','location','25000',0,1,1,NULL,NULL,'Constantine','Algeria','El Khroub','Centre-ville, Constantine',NULL,NULL,NULL,NULL,'studio-meubl-constantine',0,'month','Particulier','2025-11-13 12:01:57.878235','2025-11-13 12:01:57.000000','15b9198a-d454-40b5-90b1-cc5e8958418b',NULL);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_amenities`
--

DROP TABLE IF EXISTS `property_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_amenities` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `educationMaternal` tinyint NOT NULL DEFAULT '0',
  `educationPrimere` tinyint NOT NULL DEFAULT '0',
  `educationCollege` tinyint NOT NULL DEFAULT '0',
  `educationLycee` tinyint NOT NULL DEFAULT '0',
  `educationUniversite` tinyint NOT NULL DEFAULT '0',
  `educationEspaceDeLoisir` tinyint NOT NULL DEFAULT '0',
  `medicalsHopital` tinyint NOT NULL DEFAULT '0',
  `medicalsPharmacie` tinyint NOT NULL DEFAULT '0',
  `medicalsClinique` tinyint NOT NULL DEFAULT '0',
  `medicalsLaboratoire` tinyint NOT NULL DEFAULT '0',
  `loisirParc` tinyint NOT NULL DEFAULT '0',
  `loisirGym` tinyint NOT NULL DEFAULT '0',
  `loisirBibliotheque` tinyint NOT NULL DEFAULT '0',
  `loisirTheatre` tinyint NOT NULL DEFAULT '0',
  `loisirTerrains` tinyint NOT NULL DEFAULT '0',
  `loisirMall` tinyint NOT NULL DEFAULT '0',
  `transportBus` tinyint NOT NULL DEFAULT '0',
  `transportTrameway` tinyint NOT NULL DEFAULT '0',
  `transportMetro` tinyint NOT NULL DEFAULT '0',
  `transportTrain` tinyint NOT NULL DEFAULT '0',
  `internParking` tinyint NOT NULL DEFAULT '0',
  `internGarageIndividuel` tinyint NOT NULL DEFAULT '0',
  `internParkingCollectif` tinyint NOT NULL DEFAULT '0',
  `internJardin` tinyint NOT NULL DEFAULT '0',
  `internPiscine` tinyint NOT NULL DEFAULT '0',
  `internLoisir` tinyint NOT NULL DEFAULT '0',
  `internSafe` tinyint NOT NULL DEFAULT '0',
  `internCamera` tinyint NOT NULL DEFAULT '0',
  `internPolice` tinyint NOT NULL DEFAULT '0',
  `internInfirmerie` tinyint NOT NULL DEFAULT '0',
  `internAscenseurs` tinyint NOT NULL DEFAULT '0',
  `internGym` tinyint NOT NULL DEFAULT '0',
  `descriptionAccomodité` text COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_amenities`
--

LOCK TABLES `property_amenities` WRITE;
/*!40000 ALTER TABLE `property_amenities` DISABLE KEYS */;
INSERT INTO `property_amenities` VALUES ('15b9198a-d454-40b5-90b1-cc5e8958418b',1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,0,1,1,0,1,1,0,0,1,1,NULL,'2025-11-13 12:01:57.885884','2025-11-13 12:01:57.885884'),('1660040d-3d35-427c-abeb-a3d4153119c9',1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,0,1,1,0,1,1,0,0,1,1,NULL,'2025-11-13 14:30:14.360783','2025-11-13 14:30:14.360783'),('3c87fa1b-2948-4d4c-9a8e-97d158dac064',1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,0,1,1,0,1,1,0,0,1,1,NULL,'2025-11-13 12:20:16.103395','2025-11-13 12:20:16.103395'),('95b2daf5-4d6e-4ab9-820c-a9987607a536',1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,0,1,1,0,1,1,0,0,1,1,NULL,'2025-11-13 12:01:57.907202','2025-11-13 12:01:57.907202'),('a5f670b2-ba1f-4c69-b5e4-54f3ea6a7df3',1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,0,1,1,0,1,1,0,0,1,1,NULL,'2025-11-13 12:01:57.860363','2025-11-13 12:01:57.860363'),('b2b4c755-9c61-4edb-837c-82ec16f1d616',1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,0,1,1,0,1,1,0,0,1,1,NULL,'2025-11-13 12:01:57.925778','2025-11-13 12:01:57.925778'),('e6e836ed-baee-4486-843a-6bc53daeec84',1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,0,1,1,0,1,1,0,0,1,1,NULL,'2025-11-13 12:01:57.834758','2025-11-13 12:01:57.834758'),('ed5d9dbc-63dc-433a-88d9-e0354714d9a0',1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,1,1,1,1,0,1,1,0,1,1,0,1,1,0,0,1,1,NULL,'2025-11-13 13:57:00.035400','2025-11-13 13:57:00.035400');
/*!40000 ALTER TABLE `property_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_images`
--

DROP TABLE IF EXISTS `property_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_images` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iframeLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `propertyId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7a07b6b7f9418bf1d5160106694` (`propertyId`),
  CONSTRAINT `FK_7a07b6b7f9418bf1d5160106694` FOREIGN KEY (`propertyId`) REFERENCES `properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_images`
--

LOCK TABLES `property_images` WRITE;
/*!40000 ALTER TABLE `property_images` DISABLE KEYS */;
INSERT INTO `property_images` VALUES ('03e3f97b-935b-4bf5-b0ff-a722c41680b3',NULL,'https://res.cloudinary.com/dtc62k4x4/image/upload/v1763040607/exped360-properties/tled2e31tcksyrnjdbfd.jpg','2025-11-13 14:30:14.368586','2025-11-13 14:30:14.368586','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('c67aba5b-a483-4b29-a0a4-e96f1384eb81',NULL,'https://res.cloudinary.com/dtc62k4x4/image/upload/v1763032808/exped360-properties/nmwwpielv1ri7qnvu2mr.jpg','2025-11-13 12:20:16.114416','2025-11-13 12:20:16.114416','1b6cfda8-dfb6-4ff6-86e8-5e3947db4dcf'),('e365dce3-3083-4fba-8051-99e95b609470',NULL,'https://res.cloudinary.com/dtc62k4x4/image/upload/v1763038609/exped360-properties/v0h5lregsjvqlgnj5lxg.jpg','2025-11-13 13:57:00.045924','2025-11-13 13:57:00.045924','6a867da3-9670-4180-8f2b-abeedad3c87d');
/*!40000 ALTER TABLE `property_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_papers`
--

DROP TABLE IF EXISTS `property_papers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_papers` (
  `propertiesId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `papersId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`propertiesId`,`papersId`),
  KEY `IDX_9d4a2f9a45eecfd64992708654` (`propertiesId`),
  KEY `IDX_97e256ee0b7499fcc9c3ef8d8a` (`papersId`),
  CONSTRAINT `FK_97e256ee0b7499fcc9c3ef8d8ab` FOREIGN KEY (`papersId`) REFERENCES `papers` (`id`),
  CONSTRAINT `FK_9d4a2f9a45eecfd649927086548` FOREIGN KEY (`propertiesId`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_papers`
--

LOCK TABLES `property_papers` WRITE;
/*!40000 ALTER TABLE `property_papers` DISABLE KEYS */;
INSERT INTO `property_papers` VALUES ('1b6cfda8-dfb6-4ff6-86e8-5e3947db4dcf','452ea1b8-6ab4-45c2-a99c-a402f62cd1d3'),('1b6cfda8-dfb6-4ff6-86e8-5e3947db4dcf','61c20d08-c1fd-4e86-bcc3-9cde89ce7ead'),('1b6cfda8-dfb6-4ff6-86e8-5e3947db4dcf','6d6e43b8-f14b-4901-b4d2-b6efea09f411'),('1b6cfda8-dfb6-4ff6-86e8-5e3947db4dcf','809e9552-933c-41bf-974a-71efcdfae9c1'),('1b6cfda8-dfb6-4ff6-86e8-5e3947db4dcf','a048a0a5-9fbc-411d-9048-53dbbcb95b3b'),('1b6cfda8-dfb6-4ff6-86e8-5e3947db4dcf','abdd21a5-3ae5-440e-b005-1eaff69bc005'),('1cd4ac7f-fe4f-4436-ac76-0fce1de417e1','452ea1b8-6ab4-45c2-a99c-a402f62cd1d3'),('1cd4ac7f-fe4f-4436-ac76-0fce1de417e1','6d6e43b8-f14b-4901-b4d2-b6efea09f411'),('6a867da3-9670-4180-8f2b-abeedad3c87d','452ea1b8-6ab4-45c2-a99c-a402f62cd1d3'),('6a867da3-9670-4180-8f2b-abeedad3c87d','61c20d08-c1fd-4e86-bcc3-9cde89ce7ead'),('6a867da3-9670-4180-8f2b-abeedad3c87d','6d6e43b8-f14b-4901-b4d2-b6efea09f411'),('6a867da3-9670-4180-8f2b-abeedad3c87d','809e9552-933c-41bf-974a-71efcdfae9c1'),('6a867da3-9670-4180-8f2b-abeedad3c87d','a048a0a5-9fbc-411d-9048-53dbbcb95b3b'),('6a867da3-9670-4180-8f2b-abeedad3c87d','abdd21a5-3ae5-440e-b005-1eaff69bc005'),('6a867da3-9670-4180-8f2b-abeedad3c87d','ca2e729b-c810-46db-bc6b-f4e8a5768523');
/*!40000 ALTER TABLE `property_papers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('admin','user','agent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_97672ac88f789774dd47f7c8be` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('be3e02de-f0ad-4459-b00a-ea145b0089c2','Admin','User','admin@exped360.com','$2b$10$UIBmpUSig5Q.CnWKhr92rul2QuCbCz9IxQj0kbW//Bx5s1P9NdH4y','+213123456789','admin','2025-11-13 12:01:57.818331','2025-11-13 12:01:57.818331');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_events`
--

DROP TABLE IF EXISTS `visit_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_events` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wilaya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daira` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durationSeconds` int DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `propertyId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_visit_property` (`propertyId`),
  CONSTRAINT `FK_ff012aba464a60a73b81672b8ef` FOREIGN KEY (`propertyId`) REFERENCES `properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_events`
--

LOCK TABLES `visit_events` WRITE;
/*!40000 ALTER TABLE `visit_events` DISABLE KEYS */;
INSERT INTO `visit_events` VALUES ('03b027d7-fc89-4b62-84d3-4ab01ab9cb84','93458c9a-af20-4b91-aeb3-b9ac001b0ac4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',30,'2025-11-13 15:36:23.545749','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('03eace69-d130-4cd5-b168-1c7be6d147af','58863079-b83e-4e8a-90ef-79c3a28c11ce','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',223,'2025-11-13 15:42:13.699366','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('0a34dd55-0e69-4e7e-a122-fbfc9d33e72b','d9807a76-3c24-48fb-812e-9f343352ee75','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',120,'2025-11-13 15:03:35.409456','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('0a7c0077-684c-4286-82fd-aa58667b7946','642f65d0-f530-412c-9b62-1f87a09da587','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',14,'2025-11-13 14:28:24.399740','6a867da3-9670-4180-8f2b-abeedad3c87d'),('0bc3c597-f62d-47ba-ae7d-13e00962a797','37722376-ccf9-4f61-a6c8-bb2eefa96663','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',2,'2025-11-13 16:08:06.504257','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('0c129d16-8825-4e4e-b8e4-749e699927bc','484398b7-f904-4ac2-b0c6-7f3ccf5ab073','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',1,'2025-11-13 14:28:10.118700','6a867da3-9670-4180-8f2b-abeedad3c87d'),('0cacbec8-4604-47fe-aa82-d5da871f251b','3db5fae7-feab-4dde-8d05-fa89ae8e3f22','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',1,'2025-11-27 11:14:29.304938','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('131a4977-bbd7-4eec-8eb1-da908ca29b32','7a80ed5b-33b1-4319-85f1-afa8e17745ad','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',2,'2025-11-27 16:41:48.982600','6a867da3-9670-4180-8f2b-abeedad3c87d'),('1d24abd9-3334-4cd0-a609-9520d42e8daf','c5f8fae7-cd84-4505-85ce-dfbcd86d83e2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',9,'2025-11-13 15:01:35.833220','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('1e09e943-8fd3-46a7-976f-6142c4d62d1f','c4477597-16e2-4bc0-b177-558278af6015','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',13,'2025-11-13 15:35:51.293067','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('22637650-dbe0-4857-a373-b44148b1e184','1c7e1057-6761-42f1-89c5-525966d72445','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',12,'2025-11-13 15:01:26.624958','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('23af32f6-bf53-414c-a334-74c0c3fdcb0b','45b382e6-3998-4061-878d-d133a3cee0be','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',5,'2025-11-13 14:27:49.957548','6a867da3-9670-4180-8f2b-abeedad3c87d'),('270cb83d-cfa5-4bf0-88f9-60a8c28450f2','93458c9a-af20-4b91-aeb3-b9ac001b0ac4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',50,'2025-11-13 15:36:42.889194','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('285c5deb-78d6-489c-b35b-07ff6555b0f5','9ce6eab0-7f7e-4620-9720-d9e04521b68d','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',1364,'2025-11-13 14:27:44.624749','6a867da3-9670-4180-8f2b-abeedad3c87d'),('290deb76-7f6f-44e1-8d43-1fc7339e9c51','7a369856-08f6-41cc-b26a-3f00f75db472','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',3,'2025-11-13 14:01:44.991562','6a867da3-9670-4180-8f2b-abeedad3c87d'),('30c87c6b-484e-4e8d-855e-85ba5b382673','6ab7db69-03de-48b1-b7e7-8e67b2bc6d0d','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',1,'2025-11-13 14:28:09.188132','6a867da3-9670-4180-8f2b-abeedad3c87d'),('3189fa8b-2f70-4de4-a5f4-a4bcbb2e4c5c','e7ab2a78-b36f-40d6-8531-e38a6ca86aaf','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',1,'2025-11-13 14:28:07.983689','6a867da3-9670-4180-8f2b-abeedad3c87d'),('335d3713-7a54-4a62-a602-203eeec12a01','7a369856-08f6-41cc-b26a-3f00f75db472','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',5,'2025-11-13 14:01:47.600162','6a867da3-9670-4180-8f2b-abeedad3c87d'),('359f0fc9-1f0a-4ea9-9d60-94799f66eec3','ce74e33b-f9d9-4000-a5a1-53114e336e8f','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',101,'2025-11-13 15:35:24.285994','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('3dbfb4e5-1d96-471b-8b0a-60ad40afda2e','7a80ed5b-33b1-4319-85f1-afa8e17745ad','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',46,'2025-11-27 16:42:33.850186','6a867da3-9670-4180-8f2b-abeedad3c87d'),('3dcb17e8-a88b-4be1-99fa-be490dbb6ed8','c31226e0-c33c-45cf-9816-8d90f6eec7b0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',29,'2025-11-13 14:00:26.798041','6a867da3-9670-4180-8f2b-abeedad3c87d'),('3f800865-354d-4803-a19c-6c38ce7e47e7','7a80ed5b-33b1-4319-85f1-afa8e17745ad','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',49,'2025-11-27 16:42:35.794384','6a867da3-9670-4180-8f2b-abeedad3c87d'),('437099f1-c141-433b-b54b-ea34f76b7df5','93458c9a-af20-4b91-aeb3-b9ac001b0ac4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',44,'2025-11-13 15:36:37.368531','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('440bfe63-f515-47c6-9d26-321db2c6c2f8','951ecce0-e3fe-4146-9f2a-b5ba3ee0dafa','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',16,'2025-11-13 14:29:00.228386','6a867da3-9670-4180-8f2b-abeedad3c87d'),('4421cb56-ec55-49ad-bc0f-853f6b90a357','c31226e0-c33c-45cf-9816-8d90f6eec7b0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',105,'2025-11-13 14:01:42.320288','6a867da3-9670-4180-8f2b-abeedad3c87d'),('46debd33-9a02-4166-943a-ec9d00e2a859','db9e945d-e8cc-4671-8091-26cd0eda5b08','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',1,'2025-11-13 13:57:11.273810','6a867da3-9670-4180-8f2b-abeedad3c87d'),('46fd6722-7967-48c2-9b0c-04dfaa5995f4','ce74e33b-f9d9-4000-a5a1-53114e336e8f','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',13,'2025-11-13 15:33:56.466558','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('49301fe8-5799-4aba-afb6-ebfbb4f32029','2b746e56-4b56-422e-8323-ab746bcd68a7','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',19,'2025-11-13 14:29:19.065904','6a867da3-9670-4180-8f2b-abeedad3c87d'),('4c051e63-97e8-4f5d-80b7-0a9a628151f3','1aea56a5-9b46-4e22-aa12-dbade32a0c10','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',55,'2025-11-13 14:04:56.571484','6a867da3-9670-4180-8f2b-abeedad3c87d'),('4e344b96-a29d-4001-9cfa-8805693a5428','58863079-b83e-4e8a-90ef-79c3a28c11ce','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',1761,'2025-11-13 16:07:51.255354','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('51b920ab-32f6-46de-9941-795e0aa079fb','58863079-b83e-4e8a-90ef-79c3a28c11ce','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',1414,'2025-11-13 16:02:04.017934','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('5302dbc6-c450-44df-8bf4-e6e967544778','e54dbda7-16b7-4c1a-a2ad-478ae5c255b7','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',12,'2025-11-13 15:35:35.883381','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('55bc00c8-2db1-4593-8098-f92f5c702d7f','7a80ed5b-33b1-4319-85f1-afa8e17745ad','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',114,'2025-11-27 16:43:40.925035','6a867da3-9670-4180-8f2b-abeedad3c87d'),('56691924-f38d-43f0-b068-add52cdb9e39','c4477597-16e2-4bc0-b177-558278af6015','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',15,'2025-11-13 15:35:53.338818','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('56a7fadb-cc64-4839-919b-037b34648e99','de2e7658-1d62-4ce5-a038-365325ae0448','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',3,'2025-11-13 15:35:38.791188','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('5dee74ca-fbe5-4ad3-9128-350346540801','d025b7a9-d170-4e2e-9b37-8ce6b41f4f71','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',1,'2025-11-27 16:41:46.778625','6a867da3-9670-4180-8f2b-abeedad3c87d'),('64da12c2-d5bf-464d-a18e-dfdb860339b1','9ce6eab0-7f7e-4620-9720-d9e04521b68d','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',30,'2025-11-13 14:05:30.084475','6a867da3-9670-4180-8f2b-abeedad3c87d'),('662fd203-a926-457e-9ab4-4721f8756ec5','c4477597-16e2-4bc0-b177-558278af6015','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',7,'2025-11-13 15:35:46.385084','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('67d5abe8-6255-4dad-b5a2-55266d807eed','3c6c9858-c415-4079-b868-c1836d652414','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',3,'2025-11-13 14:04:59.717776','6a867da3-9670-4180-8f2b-abeedad3c87d'),('7c4d5d98-1797-435b-a607-f2dfa1d138c5','c31226e0-c33c-45cf-9816-8d90f6eec7b0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',58,'2025-11-13 14:00:56.265725','6a867da3-9670-4180-8f2b-abeedad3c87d'),('7d7f9e89-9c81-4f13-a611-a7ec3ae484b0','86d03659-94c9-425c-a734-0a980c43708b','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',3,'2025-11-13 16:08:09.122102','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('87bf36fa-1e45-4d43-ad83-3f256a5ce6d6','7a80ed5b-33b1-4319-85f1-afa8e17745ad','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',13,'2025-11-27 16:42:00.475682','6a867da3-9670-4180-8f2b-abeedad3c87d'),('8a18fbd2-9cbf-4d80-863a-8f7f2d6dd6f8','3c6c9858-c415-4079-b868-c1836d652414','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',3,'2025-11-13 14:04:59.554033','6a867da3-9670-4180-8f2b-abeedad3c87d'),('8bd2586f-1d4c-4ae6-bde2-f6dc830a3c55','2d8e6497-ce8f-4586-8885-46daa242e598','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',4,'2025-11-13 14:28:06.749830','6a867da3-9670-4180-8f2b-abeedad3c87d'),('8dab4919-0b2c-4599-b62c-cf89629da5aa','e094b4ba-77ac-454c-ae90-8ef64f048e17','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',5,'2025-11-13 14:28:02.896348','6a867da3-9670-4180-8f2b-abeedad3c87d'),('8def2f62-ac01-46c3-90d0-7a25fdd9d875','58863079-b83e-4e8a-90ef-79c3a28c11ce','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',932,'2025-11-13 15:54:02.593739','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('93458a81-803d-4452-80b0-a4097da51bf9','1aea56a5-9b46-4e22-aa12-dbade32a0c10','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',20,'2025-11-13 14:04:21.130501','6a867da3-9670-4180-8f2b-abeedad3c87d'),('986de05d-d643-41e2-9a66-4ac90e67a9e4','58863079-b83e-4e8a-90ef-79c3a28c11ce','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',1763,'2025-11-13 16:07:52.931400','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('9b482cad-ce7a-4362-843f-0dd8c8c20ba0','93458c9a-af20-4b91-aeb3-b9ac001b0ac4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',29,'2025-11-13 15:36:22.957306','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('9f220588-e829-44d3-8846-0131fdf3ea36','cd04a191-e2ee-45c3-9fbd-95d986943cac','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',2,'2025-11-13 14:58:46.976812','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('a0a10b4a-6896-42d3-bd52-8da26225c42a','bf5e42c8-f5f1-444b-96b0-0ee7f11983c3','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',9,'2025-11-27 16:41:31.850905','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('a24efc7b-54b2-4d66-8442-aa61b087ed51','3c6d2391-7254-4ad7-be7d-aef0dfe4a282','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',2,'2025-11-13 14:28:39.612042','6a867da3-9670-4180-8f2b-abeedad3c87d'),('aa06f579-c3dc-4415-b796-72424013aca6','9ce6eab0-7f7e-4620-9720-d9e04521b68d','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',62,'2025-11-13 14:06:03.282774','6a867da3-9670-4180-8f2b-abeedad3c87d'),('aa5fe1e1-933f-492a-9b5b-c045ebbff770','93458c9a-af20-4b91-aeb3-b9ac001b0ac4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',34,'2025-11-13 15:36:27.116219','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('aa966c39-dfff-49fa-8a06-bf5581ccc0d8','bf5e42c8-f5f1-444b-96b0-0ee7f11983c3','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',2,'2025-11-27 16:41:25.253691','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('b1b30509-e5de-4b8d-b1de-003c417ec86b','1aea56a5-9b46-4e22-aa12-dbade32a0c10','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',8,'2025-11-13 14:04:09.262876','6a867da3-9670-4180-8f2b-abeedad3c87d'),('b29e33b4-ed79-4e12-bb47-ead62be1c922','124fbe2b-2db1-4417-a8e5-ab7257f7bc07','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',1,'2025-11-27 16:41:22.906151','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('bdc51ba3-dcb2-48f2-9068-b1172f3e8174','2b746e56-4b56-422e-8323-ab746bcd68a7','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',79,'2025-11-13 14:30:18.741742','6a867da3-9670-4180-8f2b-abeedad3c87d'),('c52adba3-32d8-489e-97df-74f149e57229','ce74e33b-f9d9-4000-a5a1-53114e336e8f','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',36,'2025-11-13 15:34:19.411332','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('c5646845-dbcc-46ce-b503-6dd8b1153ddc','c856e5c5-e752-4644-a54e-522156351ae3','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',25,'2025-11-13 15:38:29.705370','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('c9d7a978-41d9-45e7-bf5b-af495edb71ed','7c799bb8-ac6a-4b48-891e-9073c60e7705','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',8,'2025-11-13 14:27:57.791627','6a867da3-9670-4180-8f2b-abeedad3c87d'),('ca94d68c-8cba-432f-a211-1109b92fb307','bf5e42c8-f5f1-444b-96b0-0ee7f11983c3','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',22,'2025-11-27 16:41:44.875496','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('cca05385-fe28-45b0-8a3b-a38625e2156d','4b3826db-9e90-48bd-a11e-776c617015cf','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',5,'2025-11-13 14:28:44.497983','6a867da3-9670-4180-8f2b-abeedad3c87d'),('d6912477-44f2-41e7-a180-b9699513934f','93458c9a-af20-4b91-aeb3-b9ac001b0ac4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',7,'2025-11-13 15:36:00.115224','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('dc6bc13c-c216-4001-b26b-1e874882a1e5','2ec8e166-38a5-413d-b723-7a8394e83bdc','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',13,'2025-11-13 14:59:00.966815','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('e074a49f-afa6-47fa-aee8-2c3a7beaad2b','9056281e-7edc-4fd9-8f21-fea7ace797a1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',13,'2025-11-13 14:28:37.321510','6a867da3-9670-4180-8f2b-abeedad3c87d'),('efacbb34-5bbb-4199-911f-cebe55bd4b52','58863079-b83e-4e8a-90ef-79c3a28c11ce','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',1763,'2025-11-13 16:07:52.428634','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('f0eb628a-2300-4845-a277-c65d6d4c1ba8','93458c9a-af20-4b91-aeb3-b9ac001b0ac4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',54,'2025-11-13 15:36:47.114955','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('f11eb5ef-e170-43ad-99bf-28b328b1e256','1a944a63-5412-4755-b87b-5af27d72c258','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',1,'2025-11-27 16:36:39.231440','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('f1324955-0f1c-4296-90e6-20ecb1f4ea73','6d8bd25c-fb02-42a8-b3ff-2992420c3e8c','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',11,'2025-11-27 16:36:50.361135','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('f90d918a-0fe2-425c-b73b-37d3e4eff9ed','c31226e0-c33c-45cf-9816-8d90f6eec7b0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Bordj Badji Mokhtar','Bordj Badji Mokhtar',72,'2025-11-13 14:01:09.753325','6a867da3-9670-4180-8f2b-abeedad3c87d'),('fadbaccb-baf8-46cf-94e5-16512f39a1df','2ec8e166-38a5-413d-b723-7a8394e83bdc','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',148,'2025-11-13 15:01:14.799975','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('fce695fd-dfb5-4ab7-acb2-739f5251a3df','13dfcb19-e89a-41be-b3d2-7147031f7002','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',93,'2025-11-27 11:16:02.408164','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1'),('fee1675e-c4c2-446a-b796-2ed3fb2af353','fd2f5669-273d-43dc-a0be-a2700ec471bf','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36',NULL,'Alger','Bir Mourad Rais',1,'2025-11-13 15:33:43.256339','1cd4ac7f-fe4f-4436-ac76-0fce1de417e1');
/*!40000 ALTER TABLE `visit_events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-11  7:45:55
