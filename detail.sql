-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: admage_detail
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_logs`
--

DROP TABLE IF EXISTS `access_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `account_id` int NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ua` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_logs`
--

LOCK TABLES `access_logs` WRITE;
/*!40000 ALTER TABLE `access_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint NOT NULL,
  `party_id` int unsigned NOT NULL,
  `admin_id` int DEFAULT NULL,
  `contact_type` int NOT NULL,
  `log_server` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_server` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_schema` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_usable_locations` tinyint(1) DEFAULT NULL,
  `is_submittable_pure_ads` tinyint(1) DEFAULT NULL,
  `is_accessible_analytics` tinyint(1) DEFAULT NULL,
  `is_visible_amount` tinyint(1) DEFAULT NULL,
  `is_reviewable_media` tinyint(1) DEFAULT NULL,
  `is_accessible_media_info` tinyint(1) DEFAULT NULL,
  `is_deliverable_house_ads` tinyint(1) DEFAULT NULL,
  `is_downloadable_ads` tinyint(1) DEFAULT NULL,
  `xuid_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xad_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval_status` tinyint NOT NULL DEFAULT '1',
  `closed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `margin` decimal(11,1) DEFAULT '0.0',
  `measure_allow_ip` text COLLATE utf8_unicode_ci,
  `measure_deny_ip` text COLLATE utf8_unicode_ci,
  `report_allow_ip` text COLLATE utf8_unicode_ci,
  `margin_click` decimal(11,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Ludie Blanda DDS',1,3,NULL,0,NULL,NULL,NULL,1,0,1,1,1,1,1,1,NULL,NULL,1,NULL,'2021-02-25 12:08:45','2021-02-25 12:08:45',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(2,'Jordan Bartoletti',2,4,NULL,0,NULL,NULL,NULL,1,1,1,1,0,0,1,0,NULL,NULL,1,NULL,'2021-02-25 12:08:46','2021-02-25 12:08:46',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(3,'Mrs. Zoila Fay',1,5,NULL,0,NULL,NULL,NULL,1,0,1,0,1,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:08:46','2021-02-25 12:08:46',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(4,'Dejah Greenholt Sr.',1,6,NULL,0,NULL,NULL,NULL,1,1,0,0,1,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:08:47','2021-02-25 12:08:47',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(5,'Prof. Sierra Hahn',1,7,NULL,0,NULL,NULL,NULL,0,0,0,0,0,0,1,1,NULL,NULL,1,NULL,'2021-02-25 12:08:47','2021-02-25 12:08:47',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(6,'Jennyfer Sanford',1,8,NULL,0,NULL,NULL,NULL,0,1,1,0,0,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:08:48','2021-02-25 12:08:48',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(7,'Bertha Veum',2,9,NULL,0,NULL,NULL,NULL,1,0,1,0,0,1,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:48','2021-02-25 12:08:48',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(8,'Prof. Theresia Blick',1,10,NULL,0,NULL,NULL,NULL,1,0,1,0,1,1,1,1,NULL,NULL,1,NULL,'2021-02-25 12:08:48','2021-02-25 12:08:48',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(9,'Chaya Altenwerth',2,11,NULL,0,NULL,NULL,NULL,1,1,1,1,0,1,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:49','2021-02-25 12:08:49',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(10,'Prof. Eula Kiehn II',1,12,NULL,0,NULL,NULL,NULL,0,0,0,1,1,0,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:49','2021-02-25 12:08:49',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(11,'Ethel Nitzsche',2,13,NULL,0,NULL,NULL,NULL,0,0,1,1,0,0,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:50','2021-02-25 12:08:50',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(12,'Dr. Fredrick Ullrich DVM',2,14,NULL,0,NULL,NULL,NULL,1,0,1,0,0,1,1,1,NULL,NULL,1,NULL,'2021-02-25 12:08:51','2021-02-25 12:08:51',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(13,'Dr. Eino Jast Jr.',1,15,NULL,0,NULL,NULL,NULL,0,1,1,1,0,0,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:51','2021-02-25 12:08:51',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(14,'Dr. Ramon Johnson',2,16,NULL,0,NULL,NULL,NULL,0,0,1,0,0,0,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:51','2021-02-25 12:08:51',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(15,'Mr. Alvis Quigley',1,17,NULL,0,NULL,NULL,NULL,0,1,0,0,1,1,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:52','2021-02-25 12:08:52',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(16,'Isabelle Wiegand',2,18,NULL,0,NULL,NULL,NULL,1,0,1,0,0,1,1,1,NULL,NULL,1,NULL,'2021-02-25 12:08:52','2021-02-25 12:08:52',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(17,'Magnus Daniel',1,19,NULL,0,NULL,NULL,NULL,1,0,0,1,0,0,1,1,NULL,NULL,1,NULL,'2021-02-25 12:08:53','2021-02-25 12:08:53',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(18,'Anabel Kshlerin Jr.',2,20,NULL,0,NULL,NULL,NULL,1,1,1,1,1,0,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:53','2021-02-25 12:08:53',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(19,'Prof. Fannie Vandervort I',1,21,NULL,0,NULL,NULL,NULL,0,0,1,1,1,1,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:54','2021-02-25 12:08:54',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(20,'Dr. Joseph Steuber',1,22,NULL,0,NULL,NULL,NULL,0,0,0,0,1,1,1,1,NULL,NULL,-2,NULL,'2021-02-25 12:08:54','2021-02-25 12:08:54',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(21,'Ronaldo Mueller',2,23,NULL,0,NULL,NULL,NULL,1,0,1,1,0,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:08:55','2021-02-25 12:08:55',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(22,'Issac Treutel',2,24,NULL,0,NULL,NULL,NULL,0,1,1,0,0,0,1,0,NULL,NULL,-2,NULL,'2021-02-25 12:08:55','2021-02-25 12:08:55',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(23,'Mr. David Gusikowski MD',1,25,NULL,0,NULL,NULL,NULL,1,0,0,0,1,0,0,0,NULL,NULL,-2,NULL,'2021-02-25 12:08:56','2021-02-25 12:08:56',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(24,'Ethel Auer I',1,26,NULL,0,NULL,NULL,NULL,1,0,0,1,1,1,1,0,NULL,NULL,1,NULL,'2021-02-25 12:08:56','2021-02-25 12:08:56',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(25,'Leland Leannon',2,27,NULL,0,NULL,NULL,NULL,1,0,0,0,0,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:08:57','2021-02-25 12:08:57',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(26,'Prof. Dana Hintz III',1,28,NULL,0,NULL,NULL,NULL,1,1,0,0,0,0,1,1,NULL,NULL,1,NULL,'2021-02-25 12:08:57','2021-02-25 12:08:57',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(27,'Antonia Bode',2,29,NULL,0,NULL,NULL,NULL,1,1,1,1,0,1,0,0,NULL,NULL,1,NULL,'2021-02-25 12:08:58','2021-02-25 12:08:58',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(28,'Noemie Trantow',2,30,NULL,0,NULL,NULL,NULL,1,1,1,0,0,0,0,1,NULL,NULL,1,NULL,'2021-02-25 12:08:58','2021-02-25 12:08:58',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(29,'Freda Reichert',2,31,NULL,0,NULL,NULL,NULL,1,0,0,0,0,1,1,0,NULL,NULL,1,NULL,'2021-02-25 12:08:59','2021-02-25 12:08:59',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(30,'Litzy Stamm MD',1,32,NULL,0,NULL,NULL,NULL,1,0,1,1,1,1,1,0,NULL,NULL,-2,NULL,'2021-02-25 12:08:59','2021-02-25 12:08:59',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(31,'Geovany Bode',2,33,NULL,0,NULL,NULL,NULL,1,1,0,0,1,0,0,1,NULL,NULL,1,NULL,'2021-02-25 12:09:00','2021-02-25 12:09:00',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(32,'Camilla Christiansen',1,34,NULL,0,NULL,NULL,NULL,0,1,1,0,1,0,1,0,NULL,NULL,1,NULL,'2021-02-25 12:09:00','2021-02-25 12:09:00',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(33,'Moriah Gutkowski DDS',2,35,NULL,0,NULL,NULL,NULL,1,1,0,0,0,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:09:01','2021-02-25 12:09:01',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(34,'Domenick Padberg',1,36,NULL,0,NULL,NULL,NULL,1,1,1,1,1,0,0,1,NULL,NULL,1,NULL,'2021-02-25 12:09:01','2021-02-25 12:09:01',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(35,'Rachael Bruen',1,37,NULL,0,NULL,NULL,NULL,1,0,1,1,1,0,1,1,NULL,NULL,1,NULL,'2021-02-25 12:09:02','2021-02-25 12:09:02',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(36,'Stan Jacobi',2,38,NULL,0,NULL,NULL,NULL,1,1,1,1,1,1,1,0,NULL,NULL,1,NULL,'2021-02-25 12:09:02','2021-02-25 12:09:02',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(37,'Jerod Hamill MD',1,39,NULL,0,NULL,NULL,NULL,0,0,1,1,0,1,1,1,NULL,NULL,1,NULL,'2021-02-25 12:09:03','2021-02-25 12:09:03',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(38,'Miss Ariane Johns MD',1,40,NULL,0,NULL,NULL,NULL,1,0,0,0,1,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:09:03','2021-02-25 12:09:03',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(39,'Prof. Julie Huel V',2,41,NULL,0,NULL,NULL,NULL,0,0,1,1,0,1,0,0,NULL,NULL,1,NULL,'2021-02-25 12:09:04','2021-02-25 12:09:04',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(40,'Ms. Myah Goyette',2,42,NULL,0,NULL,NULL,NULL,1,1,1,1,0,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:09:04','2021-02-25 12:09:04',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(41,'Ian Eichmann',1,43,NULL,0,NULL,NULL,NULL,1,1,1,0,1,0,1,1,NULL,NULL,1,NULL,'2021-02-25 12:09:05','2021-02-25 12:09:05',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(42,'Prof. Bonita Gibson Sr.',1,44,NULL,0,NULL,NULL,NULL,0,1,1,1,0,1,1,1,NULL,NULL,-2,NULL,'2021-02-25 12:09:05','2021-02-25 12:09:05',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(43,'Amely Koss',2,45,NULL,0,NULL,NULL,NULL,0,1,0,0,1,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:09:06','2021-02-25 12:09:06',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(44,'Mr. Ezequiel Auer Sr.',1,46,NULL,0,NULL,NULL,NULL,1,1,1,0,0,0,1,0,NULL,NULL,1,NULL,'2021-02-25 12:09:06','2021-02-25 12:09:06',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(45,'Brayan Jacobi',2,47,NULL,0,NULL,NULL,NULL,1,0,0,1,1,0,1,1,NULL,NULL,1,NULL,'2021-02-25 12:09:06','2021-02-25 12:09:06',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(46,'Ms. Jewel Kulas',1,48,NULL,0,NULL,NULL,NULL,1,0,0,0,1,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:09:07','2021-02-25 12:09:07',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(47,'Dominique Schuppe',1,49,NULL,0,NULL,NULL,NULL,1,1,1,0,1,0,1,1,NULL,NULL,-2,NULL,'2021-02-25 12:09:07','2021-02-25 12:09:07',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(48,'Abagail Feil',1,50,NULL,0,NULL,NULL,NULL,1,0,0,0,0,1,1,0,NULL,NULL,1,NULL,'2021-02-25 12:09:08','2021-02-25 12:09:08',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(49,'Shannon Tillman',1,51,NULL,0,NULL,NULL,NULL,0,1,0,0,0,1,0,1,NULL,NULL,1,NULL,'2021-02-25 12:09:08','2021-02-25 12:09:08',NULL,NULL,0.0,NULL,NULL,NULL,0.0),(50,'Mortimer Howell',1,52,NULL,0,NULL,NULL,NULL,0,1,0,0,0,0,1,1,NULL,NULL,1,NULL,'2021-02-25 12:09:09','2021-02-25 12:09:09',NULL,NULL,0.0,NULL,NULL,NULL,0.0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_categories`
--

DROP TABLE IF EXISTS `ad_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_categories`
--

LOCK TABLES `ad_categories` WRITE;
/*!40000 ALTER TABLE `ad_categories` DISABLE KEYS */;
INSERT INTO `ad_categories` VALUES (1,'懸賞/換金',NULL,NULL,NULL,NULL),(2,'占い/診断',NULL,NULL,NULL,NULL),(3,'動画',NULL,NULL,NULL,NULL),(4,'着うた／着メロ',NULL,NULL,NULL,NULL),(5,'デコメ/きせかえ',NULL,NULL,NULL,NULL),(6,'情報',NULL,NULL,NULL,NULL),(7,'ゲーム',NULL,NULL,NULL,NULL),(8,'その他',NULL,NULL,NULL,NULL),(9,'公式(占い／診断)',NULL,NULL,NULL,NULL),(10,'公式(着うた／着メロ)',NULL,NULL,NULL,NULL),(11,'公式(ゲーム／クイズ)',NULL,NULL,NULL,NULL),(12,'公式(電子書籍)',NULL,NULL,NULL,NULL),(13,'公式(デコメ／きせかえ)',NULL,NULL,NULL,NULL),(14,'公式(情報)',NULL,NULL,NULL,NULL),(15,'公式(動画)',NULL,NULL,NULL,NULL),(16,'公式(その他)',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ad_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_mod_schedules`
--

DROP TABLE IF EXISTS `ad_mod_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_mod_schedules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `modify_schedule_id` int unsigned NOT NULL,
  `col_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `col_type` int NOT NULL,
  `col_value` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_mod_schedules`
--

LOCK TABLES `ad_mod_schedules` WRITE;
/*!40000 ALTER TABLE `ad_mod_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_mod_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_activity_logs`
--

DROP TABLE IF EXISTS `admin_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_activity_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `activity` tinyint NOT NULL,
  `user_id` int NOT NULL,
  `modify_function` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `modify_id` int NOT NULL,
  `modify_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_activity_logs`
--

LOCK TABLES `admin_activity_logs` WRITE;
/*!40000 ALTER TABLE `admin_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_type` tinyint NOT NULL,
  `advertiser_id` int unsigned NOT NULL,
  `is_house` tinyint(1) NOT NULL,
  `campaign_id` int NOT NULL,
  `creative_type` tinyint NOT NULL,
  `max_creative_num` smallint NOT NULL,
  `media_owner_id` int NOT NULL,
  `medium_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_type` tinyint NOT NULL,
  `user_segment_id` int DEFAULT NULL,
  `user_segment_groups` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_app_id` int DEFAULT NULL,
  `ad_category_id` tinyint NOT NULL,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `click_net_unit_price` decimal(11,2) DEFAULT NULL,
  `click_gross_unit_price` decimal(11,2) DEFAULT NULL,
  `net_unit_price` decimal(11,2) DEFAULT NULL,
  `gross_unit_price` decimal(11,2) DEFAULT NULL,
  `pay_per` tinyint NOT NULL,
  `deliver_max_type` int NOT NULL,
  `max_count` int DEFAULT NULL,
  `max_nonstop` tinyint NOT NULL,
  `budget` int DEFAULT NULL,
  `prev_max_count` int DEFAULT NULL,
  `month_max_count` int DEFAULT NULL,
  `span_auto_extend` tinyint NOT NULL,
  `priority` tinyint NOT NULL,
  `deliver_weekday` text COLLATE utf8_unicode_ci NOT NULL,
  `deliver_hour` text COLLATE utf8_unicode_ci NOT NULL,
  `deliver_hour_holiday` text COLLATE utf8_unicode_ci NOT NULL,
  `is_required_keyword` tinyint(1) NOT NULL,
  `initial_rate` int NOT NULL,
  `rate` int NOT NULL,
  `max_rate` int NOT NULL,
  `rate_adjust` tinyint NOT NULL,
  `frequency_max` int DEFAULT NULL,
  `frequency_interval` int DEFAULT NULL,
  `deliver_image_optimize` tinyint NOT NULL,
  `optimize_interval` int NOT NULL,
  `click_expire` int DEFAULT NULL,
  `cv_condition` text COLLATE utf8_unicode_ci NOT NULL,
  `price_fixed` tinyint NOT NULL DEFAULT '1',
  `release_mode` tinyint NOT NULL DEFAULT '1',
  `cv_approve_days` int DEFAULT NULL,
  `default_link_type` tinyint NOT NULL DEFAULT '1',
  `default_link_url` text COLLATE utf8_unicode_ci NOT NULL,
  `notice_type` tinyint NOT NULL,
  `notice_expire` date NOT NULL,
  `announce_count` int DEFAULT NULL,
  `announce_days` int DEFAULT NULL,
  `xuid_required` tinyint NOT NULL DEFAULT '1',
  `xuid_key` text COLLATE utf8_unicode_ci NOT NULL,
  `xad_key` text COLLATE utf8_unicode_ci NOT NULL,
  `member_type` tinyint NOT NULL,
  `option_app` tinyint NOT NULL,
  `is_testing` tinyint(1) NOT NULL,
  `has_incentive_allowance` tinyint(1) NOT NULL DEFAULT '1',
  `is_cvpoint_free` tinyint(1) NOT NULL DEFAULT '1',
  `is_cv_auto_approval` tinyint(1) NOT NULL DEFAULT '1',
  `is_medium_approve_need` tinyint(1) NOT NULL DEFAULT '0',
  `is_image_text_changeable` tinyint(1) NOT NULL DEFAULT '1',
  `click_time_unit` tinyint DEFAULT NULL,
  `is_need_check_cv_duplication_xuid` tinyint(1) NOT NULL DEFAULT '1',
  `click_duplication_check_type` tinyint NOT NULL DEFAULT '1',
  `click_duplication_check_interval` int NOT NULL,
  `cv_duplication_check_type` tinyint NOT NULL DEFAULT '1',
  `cv_duplication_check_interval` int NOT NULL,
  `cv_duplication_click_check` tinyint NOT NULL,
  `cv_duplication_error_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_imp` int NOT NULL,
  `total_click` int NOT NULL,
  `total_cv` int NOT NULL,
  `total_cost` decimal(11,2) NOT NULL,
  `total_wholesale` decimal(11,2) NOT NULL,
  `prev_imp` int DEFAULT NULL,
  `prev_click` int DEFAULT NULL,
  `prev_cv` int DEFAULT NULL,
  `prev_cost` decimal(11,2) DEFAULT NULL,
  `prev_wholesale` decimal(11,2) DEFAULT NULL,
  `is_sent_limit_announce` tinyint(1) NOT NULL DEFAULT '0',
  `is_sent_deadline_announce` tinyint(1) NOT NULL DEFAULT '0',
  `admin_note` text COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `warning_note` text COLLATE utf8_unicode_ci,
  `corporate_shared_note` text COLLATE utf8_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `deliver_status` tinyint NOT NULL,
  `approval_status` tinyint NOT NULL DEFAULT '1',
  `cv_status_generate_key` text COLLATE utf8_unicode_ci,
  `cv_status_approve_key` text COLLATE utf8_unicode_ci,
  `cv_status_reject_key` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `measure_allow_ip_flg` tinyint(1) NOT NULL DEFAULT '1',
  `announce_count_status` tinyint NOT NULL DEFAULT '0',
  `announce_days_status` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_media`
--

DROP TABLE IF EXISTS `ads_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int unsigned NOT NULL,
  `medium_id` int unsigned NOT NULL,
  `is_watched` tinyint(1) NOT NULL DEFAULT '0',
  `is_release_mode` tinyint(1) NOT NULL DEFAULT '0',
  `is_price_mode` tinyint(1) NOT NULL DEFAULT '0',
  `click_net_unit_price` decimal(11,2) NOT NULL,
  `click_gross_unit_price` decimal(11,2) NOT NULL,
  `net_unit_price` decimal(11,2) NOT NULL,
  `gross_unit_price` decimal(11,2) NOT NULL,
  `rejection_reason` text COLLATE utf8_unicode_ci NOT NULL,
  `approval_status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `margin` decimal(11,1) DEFAULT NULL,
  `modify_price_flg` tinyint(1) NOT NULL DEFAULT '0',
  `margin_click` decimal(11,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_media_ad_id_medium_id_unique` (`ad_id`,`medium_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_media`
--

LOCK TABLES `ads_media` WRITE;
/*!40000 ALTER TABLE `ads_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_media_categories`
--

DROP TABLE IF EXISTS `ads_media_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_media_categories` (
  `ad_id` int unsigned NOT NULL,
  `media_category_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_media_categories`
--

LOCK TABLES `ads_media_categories` WRITE;
/*!40000 ALTER TABLE `ads_media_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_media_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_media_mod_schedules`
--

DROP TABLE IF EXISTS `ads_media_mod_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_media_mod_schedules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `modify_schedule_id` int unsigned NOT NULL,
  `medium_id` int unsigned NOT NULL,
  `release_mode` tinyint unsigned NOT NULL,
  `col_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `col_type` int NOT NULL,
  `col_value` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_media_mod_schedules`
--

LOCK TABLES `ads_media_mod_schedules` WRITE;
/*!40000 ALTER TABLE `ads_media_mod_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_media_mod_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_media_modify`
--

DROP TABLE IF EXISTS `ads_media_modify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_media_modify` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int unsigned NOT NULL,
  `medium_id` int unsigned NOT NULL,
  `modify_start_date` datetime DEFAULT NULL,
  `modify_end_date` datetime DEFAULT NULL,
  `click_net_unit_price` decimal(11,2) DEFAULT NULL,
  `click_gross_unit_price` decimal(11,2) DEFAULT NULL,
  `net_unit_price` decimal(11,2) DEFAULT NULL,
  `gross_unit_price` decimal(11,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_media_modify`
--

LOCK TABLES `ads_media_modify` WRITE;
/*!40000 ALTER TABLE `ads_media_modify` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_media_modify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_os`
--

DROP TABLE IF EXISTS `ads_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_os` (
  `ad_id` int unsigned NOT NULL,
  `os_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_os`
--

LOCK TABLES `ads_os` WRITE;
/*!40000 ALTER TABLE `ads_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_os_links`
--

DROP TABLE IF EXISTS `ads_os_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_os_links` (
  `ad_id` int unsigned NOT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT '0',
  `test_code` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os_id` int unsigned NOT NULL,
  `lp_link_url` text COLLATE utf8_unicode_ci,
  `link_url` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_os_links`
--

LOCK TABLES `ads_os_links` WRITE;
/*!40000 ALTER TABLE `ads_os_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_os_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_links`
--

DROP TABLE IF EXISTS `app_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `advertiser_id` int NOT NULL,
  `app_id` int unsigned NOT NULL,
  `app_store_id` int NOT NULL,
  `os_id` int NOT NULL,
  `identifiers` text COLLATE utf8_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `current_ver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_links`
--

LOCK TABLES `app_links` WRITE;
/*!40000 ALTER TABLE `app_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_sdk_platforms`
--

DROP TABLE IF EXISTS `app_sdk_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_sdk_platforms` (
  `app_sdk_id` int unsigned NOT NULL,
  `platform_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sdk_platforms`
--

LOCK TABLES `app_sdk_platforms` WRITE;
/*!40000 ALTER TABLE `app_sdk_platforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_sdk_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_sdks`
--

DROP TABLE IF EXISTS `app_sdks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_sdks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `classify_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stage` tinyint NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_sdks`
--

LOCK TABLES `app_sdks` WRITE;
/*!40000 ALTER TABLE `app_sdks` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_sdks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_stores`
--

DROP TABLE IF EXISTS `app_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_stores` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifiers` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_stores`
--

LOCK TABLES `app_stores` WRITE;
/*!40000 ALTER TABLE `app_stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_stores_os`
--

DROP TABLE IF EXISTS `app_stores_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_stores_os` (
  `app_store_id` int unsigned NOT NULL,
  `os_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_stores_os`
--

LOCK TABLES `app_stores_os` WRITE;
/*!40000 ALTER TABLE `app_stores_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_stores_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_house` int NOT NULL,
  `advertiser_id` int unsigned NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `party_id` int NOT NULL,
  `year` int NOT NULL,
  `month` int NOT NULL,
  `request_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `request_amount_taxed` decimal(15,2) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broadcasts`
--

DROP TABLE IF EXISTS `broadcasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broadcasts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `started_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `ended_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broadcasts`
--

LOCK TABLES `broadcasts` WRITE;
/*!40000 ALTER TABLE `broadcasts` DISABLE KEYS */;
/*!40000 ALTER TABLE `broadcasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `advertiser_id` int unsigned NOT NULL,
  `is_house` tinyint(1) NOT NULL,
  `media_owner_id` int NOT NULL,
  `started_at` datetime NOT NULL,
  `ended_at` datetime DEFAULT NULL,
  `budget` int NOT NULL,
  `budget_daily` int NOT NULL,
  `total_cost` decimal(15,2) NOT NULL,
  `total_wholesale` decimal(15,2) NOT NULL,
  `prev_cost` decimal(15,2) NOT NULL,
  `prev_wholesale` decimal(15,2) NOT NULL,
  `limit_budget` int DEFAULT NULL,
  `limit_budget_daily` int DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `sent_alert_flg` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `click_log`
--

DROP TABLE IF EXISTS `click_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `click_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `buyer_id` int NOT NULL DEFAULT '0',
  `site_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `location_id` int NOT NULL DEFAULT '0',
  `campaign_id` int NOT NULL DEFAULT '0',
  `article_id` int NOT NULL DEFAULT '0',
  `link_id` int NOT NULL DEFAULT '0',
  `image_id` int NOT NULL DEFAULT '0',
  `keyword_id` int NOT NULL DEFAULT '0',
  `click_date` datetime DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `suid` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sad` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terminal_type` tinyint NOT NULL DEFAULT '1',
  `xuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `carrier_id` int NOT NULL DEFAULT '0',
  `model_id` int NOT NULL DEFAULT '0',
  `pack_id` int NOT NULL DEFAULT '0',
  `cv_app_id` int NOT NULL DEFAULT '0',
  `app_store_id` int NOT NULL DEFAULT '0',
  `app_sdk_id` int NOT NULL DEFAULT '0',
  `xuniq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8_unicode_ci,
  `sad2` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_click_log_date` (`buyer_id`,`click_date`),
  KEY `idx_click_log_xuid` (`xuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `click_log`
--

LOCK TABLES `click_log` WRITE;
/*!40000 ALTER TABLE `click_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `click_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creatives`
--

DROP TABLE IF EXISTS `creatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creatives` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `advertiser_id` int NOT NULL,
  `is_house` tinyint(1) NOT NULL,
  `media_owner_id` int NOT NULL,
  `medium_id` int NOT NULL,
  `ad_id` int unsigned NOT NULL,
  `item_id` int NOT NULL,
  `item_type` tinyint NOT NULL,
  `creative_type` tinyint DEFAULT NULL,
  `link_url` text COLLATE utf8_unicode_ci NOT NULL,
  `creative_url` text COLLATE utf8_unicode_ci,
  `alt_text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `html` text COLLATE utf8_unicode_ci,
  `html_before` text COLLATE utf8_unicode_ci,
  `html_after` text COLLATE utf8_unicode_ci,
  `rate` int NOT NULL,
  `initial_rate` int NOT NULL,
  `priority` tinyint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `modify_creative_flg` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creatives`
--

LOCK TABLES `creatives` WRITE;
/*!40000 ALTER TABLE `creatives` DISABLE KEYS */;
/*!40000 ALTER TABLE `creatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creatives_modify`
--

DROP TABLE IF EXISTS `creatives_modify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creatives_modify` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int unsigned NOT NULL,
  `creative_id` int unsigned NOT NULL,
  `modify_start_date` datetime DEFAULT NULL,
  `modify_end_date` datetime DEFAULT NULL,
  `creative_url` text COLLATE utf8_unicode_ci,
  `html` text COLLATE utf8_unicode_ci,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creatives_modify`
--

LOCK TABLES `creatives_modify` WRITE;
/*!40000 ALTER TABLE `creatives_modify` DISABLE KEYS */;
/*!40000 ALTER TABLE `creatives_modify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creatives_os`
--

DROP TABLE IF EXISTS `creatives_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creatives_os` (
  `creative_id` int unsigned NOT NULL,
  `os_id` tinyint unsigned NOT NULL,
  `link_url` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creatives_os`
--

LOCK TABLES `creatives_os` WRITE;
/*!40000 ALTER TABLE `creatives_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `creatives_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creatives_os_modify`
--

DROP TABLE IF EXISTS `creatives_os_modify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creatives_os_modify` (
  `creative_id` int unsigned NOT NULL,
  `creatives_modify_id` int unsigned NOT NULL,
  `os_id` int unsigned NOT NULL,
  `link_url` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`creatives_modify_id`,`os_id`),
  CONSTRAINT `creatives_os_modify_creatives_modify_id_foreign` FOREIGN KEY (`creatives_modify_id`) REFERENCES `creatives_modify` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creatives_os_modify`
--

LOCK TABLES `creatives_os_modify` WRITE;
/*!40000 ALTER TABLE `creatives_os_modify` DISABLE KEYS */;
/*!40000 ALTER TABLE `creatives_os_modify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_log`
--

DROP TABLE IF EXISTS `cv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cv_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `hour` tinyint DEFAULT NULL,
  `cv_date` datetime DEFAULT NULL,
  `click_date` datetime DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `withdraw_date` datetime DEFAULT NULL,
  `kickback_date` datetime DEFAULT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `buyer_id` int NOT NULL,
  `buyer_type` tinyint NOT NULL DEFAULT '0',
  `terminal_type` tinyint NOT NULL DEFAULT '1',
  `carrier_id` int NOT NULL DEFAULT '0',
  `model_id` int NOT NULL DEFAULT '0',
  `site_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `item_type` tinyint NOT NULL DEFAULT '0',
  `cvpoint` int NOT NULL DEFAULT '0',
  `location_id` int NOT NULL DEFAULT '0',
  `campaign_id` int NOT NULL DEFAULT '0',
  `article_id` int NOT NULL DEFAULT '0',
  `link_id` int NOT NULL DEFAULT '0',
  `image_id` int NOT NULL DEFAULT '0',
  `keyword_id` int NOT NULL DEFAULT '0',
  `member_id` int NOT NULL DEFAULT '0',
  `cv_campaign_id` int NOT NULL DEFAULT '0',
  `cv_article_id` int NOT NULL DEFAULT '0',
  `pack_id` int NOT NULL DEFAULT '0',
  `pack` tinyint NOT NULL DEFAULT '0',
  `cv_app_id` int NOT NULL DEFAULT '0',
  `app_store_id` int NOT NULL DEFAULT '0',
  `app_sdk_id` int NOT NULL DEFAULT '0',
  `origin_cv_id` bigint NOT NULL DEFAULT '0',
  `cvpoint_type` tinyint NOT NULL DEFAULT '0',
  `install_cv` tinyint NOT NULL DEFAULT '0',
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suid` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sad` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xuniq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku_id` bigint DEFAULT NULL,
  `xtrack` bigint DEFAULT NULL,
  `certify_type` tinyint DEFAULT NULL,
  `xtid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query_string` text COLLATE utf8_unicode_ci,
  `user_agent` text COLLATE utf8_unicode_ci,
  `key_text` text COLLATE utf8_unicode_ci,
  `history` text COLLATE utf8_unicode_ci,
  `attribute` text COLLATE utf8_unicode_ci,
  `referer` text COLLATE utf8_unicode_ci,
  `cost` decimal(15,2) NOT NULL DEFAULT '0.00',
  `wholesale` decimal(15,2) NOT NULL DEFAULT '0.00',
  `retail` int NOT NULL DEFAULT '0',
  `kickback_url` text COLLATE utf8_unicode_ci,
  `kickback_error` text COLLATE utf8_unicode_ci,
  `kickback_retry` smallint DEFAULT NULL,
  `kickback_status` tinyint NOT NULL DEFAULT '0',
  `reject_reason` text COLLATE utf8_unicode_ci,
  `remain` tinyint NOT NULL DEFAULT '0',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1',
  `kickback_second_date` datetime DEFAULT NULL,
  `kickback_second_status` tinyint NOT NULL DEFAULT '0',
  `kickback_second_error` text COLLATE utf8_unicode_ci,
  `kickback_second_retry` smallint NOT NULL DEFAULT '0',
  `kickback_approve_url` text COLLATE utf8_unicode_ci,
  `kickback_reject_url` text COLLATE utf8_unicode_ci,
  `has_kickback_second_flg` tinyint NOT NULL DEFAULT '0',
  `margin_cost` double NOT NULL DEFAULT '0',
  `sad2` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cv_log_hour` (`buyer_id`,`date`,`hour`),
  KEY `idx_cv_log_seller` (`seller_id`,`approve_date`),
  KEY `idx_cv_log_article` (`article_id`,`approve_date`),
  KEY `idx_cv_log_xuid` (`xuid`),
  KEY `idx_cv_log_cgid` (`cgid`),
  KEY `idx_cv_log_suid` (`suid`),
  KEY `idx_cv_log_sid` (`sid`),
  KEY `idx_cv_log_uid` (`uid`,`buyer_id`,`article_id`),
  KEY `idx_cv_log_buid` (`buid`,`buyer_id`,`article_id`),
  KEY `idx_cv_log_approve` (`approve_date`),
  KEY `idx_cv_log_withdraw` (`withdraw_date`),
  KEY `idx_cv_log_click` (`click_date`),
  KEY `idx_cv_log_kickback_date` (`kickback_date`),
  KEY `idx_cv_log_cv` (`cv_date`),
  KEY `idx_cv_log_kickback` (`kickback_status`),
  KEY `test_idx_uid` (`uid`),
  KEY `test_idx_2` (`site_id`,`uid`,`pack_id`),
  KEY `idx_cv_log_xuniq` (`xuniq`,`buyer_id`,`cv_app_id`),
  KEY `idx_cv_log_cvpoint` (`cvpoint`,`cv_app_id`),
  KEY `cv_log_sad_index` (`sad`),
  KEY `cv_log_sad2_index` (`sad2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_log`
--

LOCK TABLES `cv_log` WRITE;
/*!40000 ALTER TABLE `cv_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvpoints`
--

DROP TABLE IF EXISTS `cvpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cvpoints` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `advertiser_id` int unsigned NOT NULL,
  `is_house` tinyint(1) NOT NULL,
  `campaign_id` int NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `imp_valid_days` int NOT NULL,
  `click_valid_days` int NOT NULL,
  `remain_month` int NOT NULL,
  `is_one_click_one_cv` tinyint(1) NOT NULL,
  `is_campaign_nullable` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvpoints`
--

LOCK TABLES `cvpoints` WRITE;
/*!40000 ALTER TABLE `cvpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `cvpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliver_log`
--

DROP TABLE IF EXISTS `deliver_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliver_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int NOT NULL,
  `buyer_id` int NOT NULL,
  `buyer_type` tinyint NOT NULL,
  `terminal_type` tinyint NOT NULL,
  `carrier_id` int NOT NULL,
  `model_id` int NOT NULL,
  `cvpoint` int NOT NULL,
  `cvpoint_type` tinyint NOT NULL,
  `site_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_type` tinyint NOT NULL,
  `location_id` int NOT NULL,
  `campaign_id` int NOT NULL,
  `article_id` int NOT NULL,
  `link_id` int NOT NULL,
  `image_id` int NOT NULL,
  `keyword_id` int NOT NULL,
  `cv_app_id` int NOT NULL,
  `app_store_id` int NOT NULL,
  `app_sdk_id` int NOT NULL,
  `origin_cv_id` bigint NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` datetime NOT NULL,
  `ignore_type` tinyint NOT NULL,
  `error_type` tinyint NOT NULL,
  `log_type` tinyint NOT NULL,
  `error_msg` text COLLATE utf8_unicode_ci,
  `query_string` text COLLATE utf8_unicode_ci,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `click_date` datetime DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suid` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(15,2) NOT NULL DEFAULT '0.00',
  `wholesale` decimal(15,2) NOT NULL DEFAULT '0.00',
  `retail` int NOT NULL,
  `xuniq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku_id` bigint DEFAULT NULL,
  `xtrack` bigint DEFAULT NULL,
  `certify_type` tinyint DEFAULT NULL,
  `xtid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `install_cv` tinyint DEFAULT NULL,
  `referer` text COLLATE utf8_unicode_ci,
  `margin_cost` double NOT NULL DEFAULT '0',
  `sad` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sad2` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliver_log`
--

LOCK TABLES `deliver_log` WRITE;
/*!40000 ALTER TABLE `deliver_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliver_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `env`
--

DROP TABLE IF EXISTS `env`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `env` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `env`
--

LOCK TABLES `env` WRITE;
/*!40000 ALTER TABLE `env` DISABLE KEYS */;
INSERT INTO `env` VALUES (1,'管理者メール','admin_email','test@dimage.co.jp',1,'',NULL,NULL,NULL),(2,'アンケート1タイトル','enquete_1_title','これまでインターネット広告を利用されたことがありますか？',1,'',NULL,NULL,NULL),(3,'アンケート1選択','enquete_1_select','1:バナー広告 (ポータルサイト Yahoo、MSNなど),2:その他バナー広告 (クリック保証、広告ネットワークなど),3:メール広告 (オプトイン、Eメールマガジン),4:検索エンジン広告,5:その他,6:まだ利用したことがない',2,'',NULL,NULL,NULL),(4,'アンケート2タイトル','enquete_2_title','いつからアフィリエイトサービスのご利用をお考えでしょうか？',1,'',NULL,NULL,NULL),(5,'アンケート2選択','enquete_2_select','1:2週間以内,2:1ヶ月以内,3:2ヶ月以内,4:まずはサービス内容を検討してみたい',2,'',NULL,NULL,NULL),(6,'アフィリエイト広告備考既定値','affiliate_article_note','────────────────\n\n■成果条件　　　：無料会員登録\n■承認期間　　　：随時\n■ポイントバック：ＯＫ',4,'',NULL,NULL,NULL),(7,'テスト用PC媒体','test_site_pc','1',3,'',NULL,NULL,NULL),(8,'テスト用メールアドレス','test_email','@docomo.ne.jp,@ezweb.ne.jp,@softbank.ne.jp',2,'テスト担当者の使う、各キャリア別端末のメールアドレス\n\nQRコード読み取りするなら不要',NULL,NULL,NULL),(9,'クローラー計測除外','ignore_agent','i-robot,http://help.yahoo.com/help/us/ysearch,http://help.yahoo.co.jp/help/jp/search,http://help.yahoo.com/yahoo_adcrawler,Googlebot,msnbot,Baiduspider,ichiro,BookmarkRenewalCheckAgent,HatenaAntenna,nyanyu_bot,DoCoMo/2.0 Y901i(c100;TB;W24H12)-ypxy,J-PHONE/4.3/ypxy,KDDI-YH01 UP.Browser/6.2-ypxy',2,'',NULL,NULL,NULL),(10,'お問い合わせ選択','inquiry_select','1:会員登録について,2:サービス内容,3:パスワード忘れ,4:退会について,5:その他',2,'',NULL,NULL,NULL),(11,'退会選択','withdraw_select','1:魅力的な広告が少ない,2:広告の種類が少ない,3:報酬単価が低い,4:HP／メルマガを持っていない,5:対応振込口座がない,6:セキュリティーが心配,7:その他',2,'',NULL,NULL,NULL),(12,'メールの署名','mail_sign','--\n\n\n株式会社ディマージシェア\nDimageShare Inc.\n東京都中央区日本橋蛎殻町1-4-1　日本橋FKビル2F\n03-6820-2050(代表)\nadmage@dimage.co.jp',4,'',NULL,NULL,NULL),(13,'管理者既定の表示期間','admin_default_span','4',3,'3:1日～昨日\n4:1日～今日\n1:昨日のみ\n2:本日のみ\n5:先月分',NULL,NULL,NULL),(14,'テスト用モバイル媒体','test_site_mobile','1',3,'',NULL,NULL,NULL),(15,'既定のテキスト原稿','default_image_text','<a href=\\\'$1\\\'>タイトル\n\n</a>\n説明文',1,'',NULL,NULL,NULL),(16,'既定の端末タイプ','default_terminal_type','1',3,'1:pc\n\n2:mobile',NULL,NULL,NULL),(17,'既定のキャリア','default_deliver_carrier','0,1,2,3,19,20,21,22',2,'0:その他\n\n1:docomo\n2:au\n3:SoftBank\n19:iphone\n20:android\n21:ipad\n22:ipod',NULL,NULL,NULL),(18,'既定の成果地点有料/無料','default_cvpoint_free','2',3,'1:無料\n\n2:有料',NULL,NULL,NULL),(19,'既定の終了通知日数','default_announce_days','3',3,'',NULL,NULL,NULL),(20,'Imp非表示','hide_imp','0',3,'',NULL,NULL,NULL),(21,'管理者ログイン','admin_login','admin/7ak39sfe',1,'/ 区切りで　ID/password を指定（スペースなし）\n\n[例]\nadmin/admin1234',NULL,NULL,NULL),(22,'ASP 広告主ID(公式決済側での)','asp_buyer_id','25',3,'',NULL,NULL,NULL),(23,'ASP API_URI','asp_api_url','',1,'',NULL,NULL,NULL),(24,'ASP レート','asp_calc_rate','85',3,'1-100 %',NULL,NULL,NULL),(25,'ASP 演算タイプ','asp_calc_type','1',3,'1:切捨て\n2:切上げ\n3:四捨五入',NULL,NULL,NULL),(26,'ASP 丸める位','asp_calc_unit','10',3,'1:小数点第一位\n\n10:一の位',NULL,NULL,NULL),(27,'ASP 初期状態(テストかどうか)','asp_test_flag','0',3,'0:通常\n\n1:テスト中',NULL,NULL,NULL),(28,'成果重複クリック時チェック','cv_duplicate_click_check','1',3,'0:しない\n\n1:する',NULL,NULL,NULL),(29,'パック説明','pack_note','環境変数から取得したパック説明の初期値です。',1,'',NULL,NULL,NULL),(30,'登録数超過を許可','allow_over_max','1',1,'',NULL,NULL,NULL),(31,'成果時お知らせメール宛先','mail_kickback','',1,'',NULL,NULL,NULL),(32,'外部連携サイト','external_url','http://122.218.247.156/tmp/gmotest.php',1,'',NULL,NULL,NULL),(33,'ASP 新規広告自動選択済','asp_media_flag','1',3,'',NULL,NULL,NULL),(34,'limited_asp_buyer_id','limited_asp_buyer_id','11',3,'',NULL,NULL,NULL),(35,'limited_asp_buyer_cv','limited_asp_buyer_cv','3',3,'',NULL,NULL,NULL),(36,'月別報酬額上限エラーメッセージ','monthlty_cost_max_message','月別報酬額上限です<br>',1,'',NULL,NULL,NULL),(37,'パック自動申請フラグ','pack_auto_apply','0',3,'0：手動申請\n\n1：自動申請',NULL,NULL,NULL),(38,'広告枠グループ','location_group','1:上段,2:中段,3:下段,4:政府広報,5:ﾀｲｱｯﾌﾟ系,6:ﾊﾟﾌﾞ広告系,7:wikiアド,9:未使用,0:その他',2,'',NULL,NULL,NULL),(39,'Google AndroidマーケットのアプリストアID','app_store_id_google_android_market','1',3,'',NULL,NULL,NULL),(40,'画像バナーサイズ検索','banner_sizes','320-50,320-100,320-250,300-100,120-600,160-600,200-200,250-250,336-280,468-80,600-500,640-100,640-200,728-90,928-244,300-600',2,'広告検索の画像バナーにサイズ検索',NULL,NULL,NULL),(41,'消費税','tax','10',3,'以下画面に表示する税込み金額を制御する\n・請求\n・締め処理\n・支払処理\n・支払履歴',NULL,NULL,NULL),(42,'原稿タグスクリプト表示','open_article_tag_script','0',3,'・1: 原稿タグのスクリプトを表示する\n・1以外: 原稿タグのスクリプトを表示しない',NULL,NULL,NULL),(43,'ログイン前メニュー表示(メディアオーナー登録)','media_owner_signup_flag','0',3,'0: 使用しない\n1: 使用する',NULL,NULL,NULL),(44,'ログイン前メニュー表示(メディアオーナー利用規約)','media_owner_term_flag','0',3,'0: 使用しない\n1: 使用する',NULL,NULL,NULL),(45,'ログイン前メニュー表示(広告主登録)','advertiser_signup_flag','0',3,'0: 使用しない\n1: 使用する',NULL,NULL,NULL),(46,'ログイン前メニュー表示(広告主規約)','advertiser_term_flag','0',3,'0: 使用しない\n1: 使用する',NULL,NULL,NULL),(47,'ログイン前メニュー表示(お問い合わせ)','contact_flag','0',3,'0: 使用しない\n1: 使用する',NULL,NULL,NULL),(48,'フッターメニューでFAQsを表示させるフラグ','footer_menu_faqs_display_flag','1',3,'0: 表示しない\n1：表示する',NULL,NULL,NULL),(49,'フッターメニューで会社概要を表示させるフラグ','footer_menu_about_display_flag','1',3,'表示しない\n1：表示する',NULL,NULL,NULL);
/*!40000 ALTER TABLE `env` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_logs`
--

DROP TABLE IF EXISTS `error_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `terminal_type` tinyint NOT NULL,
  `error_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `query_string` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_logs`
--

LOCK TABLES `error_logs` WRITE;
/*!40000 ALTER TABLE `error_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `error_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target_role` tinyint NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `media_owner_id` int unsigned NOT NULL COMMENT 'メディアオーナーID',
  `ad_id` int unsigned NOT NULL COMMENT '広告ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favorites_ad_id_foreign` (`ad_id`),
  KEY `favorites_media_owner_id_index` (`media_owner_id`),
  CONSTRAINT `favorites_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `favorites_media_owner_id_foreign` FOREIGN KEY (`media_owner_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `furigana` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` int unsigned NOT NULL DEFAULT '0',
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiries`
--

DROP TABLE IF EXISTS `inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiries`
--

LOCK TABLES `inquiries` WRITE;
/*!40000 ALTER TABLE `inquiries` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `advertiser_id` int NOT NULL,
  `media_owner_id` int unsigned NOT NULL,
  `medium_id` int NOT NULL,
  `pay_per` tinyint NOT NULL,
  `item_type` tinyint NOT NULL,
  `creative_type` tinyint NOT NULL,
  `max_creative_count` smallint NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `estimated_imp` bigint NOT NULL,
  `estimated_click` int NOT NULL,
  `is_keyword_required` tinyint NOT NULL,
  `format` text COLLATE utf8_unicode_ci NOT NULL,
  `template` text COLLATE utf8_unicode_ci NOT NULL,
  `optimization_rate` int NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_locations`
--

DROP TABLE IF EXISTS `items_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items_locations` (
  `item_id` int unsigned NOT NULL,
  `location_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_locations`
--

LOCK TABLES `items_locations` WRITE;
/*!40000 ALTER TABLE `items_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_logs`
--

DROP TABLE IF EXISTS `job_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `hour` smallint NOT NULL,
  `job` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `server` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `started_at` datetime NOT NULL,
  `ended_at` datetime DEFAULT NULL,
  `total_tv` int NOT NULL,
  `alert_flag` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_logs`
--

LOCK TABLES `job_logs` WRITE;
/*!40000 ALTER TABLE `job_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keywords` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `advertiser_id` int unsigned NOT NULL,
  `is_house` tinyint(1) NOT NULL,
  `ad_id` int NOT NULL,
  `campaign_id` int NOT NULL,
  `match_type` tinyint NOT NULL,
  `net_unit_price` decimal(15,2) NOT NULL,
  `gross_unit_price` decimal(15,2) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `media_owner_id` int unsigned NOT NULL,
  `medium_id` int NOT NULL,
  `location_type` tinyint NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `quantity` int NOT NULL,
  `is_keyword_usable` tinyint(1) NOT NULL,
  `charset` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `target_window` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rate_calculation_days` int NOT NULL,
  `min_rate` int NOT NULL,
  `imp_zero_rate` int NOT NULL,
  `imp_count` int NOT NULL,
  `layout_default` text COLLATE utf8_unicode_ci NOT NULL,
  `layout_second` text COLLATE utf8_unicode_ci,
  `layout_third` text COLLATE utf8_unicode_ci,
  `sort` int NOT NULL,
  `start_html_1` text COLLATE utf8_unicode_ci,
  `split_html_1` text COLLATE utf8_unicode_ci,
  `row_split_html_1` text COLLATE utf8_unicode_ci,
  `cols_per_row_1` int DEFAULT NULL,
  `end_html_1` text COLLATE utf8_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_ads`
--

DROP TABLE IF EXISTS `locations_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations_ads` (
  `location_id` int unsigned NOT NULL,
  `ad_id` int unsigned NOT NULL,
  `rate` int DEFAULT NULL,
  `manual_rate` int DEFAULT NULL,
  `is_calculatable` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_ads`
--

LOCK TABLES `locations_ads` WRITE;
/*!40000 ALTER TABLE `locations_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_locations`
--

DROP TABLE IF EXISTS `locations_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations_locations` (
  `location_id` int unsigned NOT NULL,
  `delivery_location_id` int NOT NULL,
  `rate` int DEFAULT NULL,
  `manual_rate` int DEFAULT NULL,
  `is_calculatable` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_locations`
--

LOCK TABLES `locations_locations` WRITE;
/*!40000 ALTER TABLE `locations_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ltm_translations`
--

DROP TABLE IF EXISTS `ltm_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ltm_translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltm_translations`
--

LOCK TABLES `ltm_translations` WRITE;
/*!40000 ALTER TABLE `ltm_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ltm_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_formats`
--

DROP TABLE IF EXISTS `mail_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_formats` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `footer` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `replace_text` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_formats_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_formats`
--

LOCK TABLES `mail_formats` WRITE;
/*!40000 ALTER TABLE `mail_formats` DISABLE KEYS */;
INSERT INTO `mail_formats` VALUES (1,'seller_regist_confirm','メディアオーナー登録確認','[admage] メディアオーナーご登録ありがとうございます','※このメールは自動送信のメールです\n\nこの度はメディアオーナーにご登録頂き誠にありがとうございます。\n \n下記のURLよりログインしてください。\n\n▼ログインページ\n{report_url}\n\n-------------------------------------------\n\nお客様のユーザーIDは以下の通りです。\n\n◇ユーザーID ： {login_id}\n \n','今後とも[admage]をよろしくお願いします。\n\n{mail_sign}\n ','アフィリエイトでメディアオーナーの登録があったときの、メディアオーナー宛のemail確認メール','login_id','2021-02-25 12:08:30','2021-02-25 12:08:30',NULL),(2,'seller_regist_announce','メディアオーナー登録通知','[admage] サイトオーナー登録のお知らせ','サイトオーナーのご登録がありました。\n\n会社名 : {company_name}\nサイトURL : {site_url}\n電話番号 : {tel}\nメール : {email}\n\n','','アフィリエイトでサイトオーナーの登録があったときの、運用者宛の通知メール','company_name,site_url,tel,email','2021-02-25 12:08:31','2021-02-25 12:08:31',NULL),(3,'buyer_regist_announce','広告主登録通知','[admage] 広告主登録のお知らせ','広告主のご登録がありました。\n\n「新規広告主一覧」メニューから確認してください。\n\n会社名 : {company_name}\nサイトURL : {site_url}\n電話番号 : {tel}\nemail : {email}\n\n','','アフィリエイトで広告主の登録があったときの、運用者宛の通知メール','company_name,site_url,tel,email','2021-02-25 12:08:31','2021-02-25 12:08:31',NULL),(4,'buyer_regist_confirm','広告主登録確認','[admage] 広告主ご登録ありがとうございます','※このメールは自動送信のメールです\n\n{user_name} 様\n\nこの度は広告主にご登録頂き誠にありがとうございます。\n\nご登録いただいた内容を確認し、弊社担当よりご連絡\nさしあげます。\n\n','今後とも[admage]をよろしくお願いします。\n\n {mail_sign}\n','アフィリエイトで広告主の登録があったときの、広告主宛のemail確認メール','user_name','2021-02-25 12:08:31','2021-02-25 12:08:31',NULL),(5,'affiliate_article_regist_announce','アフィリエイト広告登録通知','[admage] アフィリエイト広告登録のお知らせ','アフィリエイト広告のご登録がありました。\n\n「新規アフィリエイト広告一覧」から確認してください。\n\n広告主名 : {buyer_name} : \n広告名 : {article_name}\n\n','','アフィリエイト広告の登録があったときの、運用者宛の通知メール','buyer_name,article_name','2021-02-25 12:08:31','2021-02-25 12:08:31',NULL),(6,'affiliate_site_regist_announce','アフィリエイトメディア登録通知','[admage] 媒体登録のお知らせ','アフィリエイト媒体のご登録がありました。\n\n「新規媒体一覧」から確認してください。\n\n媒体名 : {site_name}\n \n','','アフィリエイト媒体の登録があったときの、運用者宛の通知メール','site_name','2021-02-25 12:08:31','2021-02-25 12:08:31',NULL),(7,'buyer_approve','広告主承認','[admage] 広告主ご登録ありがとうございます','{buyer_name} 様\n\nこの度は広告主にご登録頂き誠にありがとうございます。\n\n下記のURLよりログインしてください。\n\n▼ログインページ\n{report_url}\n\n-------------------------------------------\n \nお客様のユーザーIDは以下の通りです。\n\n◇ユーザーID ： {login_id}\n◇パスワード ： お客様のお申込み時に入力されたパスワードをご入力ください。\n\n','今後とも[admage]をよろしくお願いします。\n{mail_sign}','新規広告主一覧から、「承認」を選んだ場合のメール','buyer_name,login_id,password','2021-02-25 12:08:31','2021-02-25 12:08:31',NULL),(8,'buyer_reject','広告主否認','[admage] 広告主ご登録の件','{buyer_name} 御中\n{user_name} 様\n\n拝啓、時下益々ご清祥のこととお喜び申し上げます。\nまた平素より格別のご高配にあずかり心より御礼申し上げます。\n\nさて、この度、広告主にご登録頂き誠にありがとうございました。\nつきまして、慎重に審査させていただきましたところ、今回は残念ながらご期待に添えない結果となりました。 \nせっかくご応募をいただきながら、弊社としても誠に不本意な次第で、心からお詫び申し上げます。\n\nまずは取り急ぎ、ご応募のお礼とその結果についてご連絡申し上げます。\n\n貴社ますますのご発展をお祈り申し上げます。\n\n','{mail_sign}','新規広告主一覧から、「否認」を選んだ場合のメール','buyer_name,user_name','2021-02-25 12:08:31','2021-02-25 12:08:31',NULL),(9,'affiliate_article_approve','アフィリエイト広告承認','[admage] 広告のご登録ありがとうございます ','{buyer_name}　{user_name} 様\n\n平素よりお世話になっております。\n\n下記のアフィリエイト広告をご登録いただきました件、広告を有効にさせていただきましたのでご連絡申し上げます。\n\n広告名： {article_name}\n\n','今後ともよろしくお願い致します。\n                \n                {mail_sign}','新規アフィリエイト広告一覧から、「承認」を選んだ場合のメール','buyer_name,user_name,article_name','2021-02-25 12:08:31','2021-02-25 12:08:31',NULL),(10,'affiliate_article_reject','アフィリエイト広告否認','[admage] 広告ご登録の件','{buyer_name}　{user_name} 様\n\n平素よりお世話になっております。\n\n下記のアフィリエイト広告をご登録いただきましたが、こちらの広告につきましては残念ながら掲載を見送らせていただきたいと存じます。\n\n広告名： {article_name}','今後ともよろしくお願い致します。\n               \n                {mail_sign}','新規アフィリエイト広告一覧から、「否認」を選んだ場合のメール','buyer_name,user_name,article_name','2021-02-25 12:08:31','2021-02-25 12:08:31',NULL),(11,'site_approve','メディア承認','[admage] 媒体ご登録ありがとうございます ','{user_name} 様\n\n平素よりお世話になっております。\n\n下記の媒体をご登録いただきました件、媒体を有効にさせていただきましたのでご連絡申し上げます。\n\n媒体名： {site_name}\n\n','今後ともよろしくお願い致します。\n               \n                {mail_sign}','新規媒体一覧から、「承認」を選んだ場合のメール','seller_name,user_name,site_name','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(12,'site_reject','メディア否認','[admage] 媒体ご登録の件','{user_name} 様\n \n平素よりお世話になっております。\n\n下記の媒体をご登録いただき、誠にありがとうございました。\nつきまして、慎重に審査させていただきましたところ、こちらの媒体につきましては[admage]へのご登録を見送らせていただく結果となりました。\nせっかくご登録をいただきながら大変申し訳ございません。\n\n媒体名： {site_name}','今後ともよろしくお願い致します。\n                \n                {mail_sign}','新規媒体一覧から、「否認」を選んだ場合のメール','seller_name,user_name,site_name','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(13,'kickback_retry_max','キックバックリトライ上限 ','[admage] キックバックリトライ回数上限','\nキックバックのリトライ回数が上限に達しました。\n 広告管理 ＞ 媒体 ＞ キックバック一覧\n からステータスを「オフ」で検索してください。\n\n','','キックバックリトライ回数上限に達したときの、運用者宛の通知メール','','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(14,'inquiry','お問合せ','[admage] お問い合わせ','お問い合わせの入力がありました。\n\n                mailto: {email}\n                種類: {type}\n                問題発生日時: {date} {hour}\n                内容: {content}\n\n                -------------------------------------\n','','お問い合わせ','email,type,date,hour,content','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(15,'inquiry_announce','問い合わせ登録確認','[admage] お問い合わせありがとうございます','\n{name} 様、この度はお問い合わせいただき誠にありがとうございます。\n\n弊社にてお送りいただきました内容を確認のうえ、折り返しご連絡させていただきます。\nインターネットでのお問い合わせにあたってお客さまの個人情報やお寄せいただいた相談内容は厳重に取扱います。\n\n件名：{subject}\n内容：{content}\n','','お問い合わせの自動返信','name,subject,content','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(16,'inquiry_sent','問い合わせ登録通知 ','[admage] 問い合わせ登録のお知らせ','\n問い合わせご登録がありました。\n\nお名前：{name}\nメール：{email}\n件名：{subject}\n内容：{content}\n','','お問い合わせ送信','name,email,subject,content','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(17,'affiliate_end_announce','広告終了通知','[admage] 広告掲載終了のお知らせ','※このメールは自動送信のメールです\n\n{account_name}様\n\nいつもご利用いただきありがとうございます。\n[admage]管理者です。\n\nご掲載頂いております{affiliate_name}について掲載終了日が近づいております。\n管理画面よりご確認頂き終了日をご確認頂けます様お願い申し上げます。\n','今後とも{system_name}をよろしくお願いします。\n                \n{mail_sign}\n','広告の終了が近くなったときの通知','account_name,affiliate_name','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(18,'affiliate_deliver_max','広告配信上限通知','[admage] 広告配信上限のお知らせ','※このメールは自動送信のメールです\n\n{account_name}様\n\nいつもご利用いただきありがとうございます。\n[admage]管理者です。\n\nご掲載頂いております{affiliate_name}について配信上限が近づいております。\n管理画面よりご確認頂き配信上限をご確認頂けます様お願い申し上げます。\n','今後とも[admage]をよろしくお願いします。\n\n{mail_sign}\n','広告の配信上限が近くなったときの通知','account_name,affiliate_name','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(19,'kickback_second_retry_max','２回目キックバックリトライ上限 ','[admage] ２回目キックバックリトライ回数上限','キックバックのリトライ回数が上限に達しました。\nキックバック一覧からステータスを「オフ」で検索してください。\n                ','','キックバックリトライ回数上限に達したときの、運用者宛の通知メール','','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(20,'article_site_approve','広告メディア承認','[admage] メディア提携が承認されました','※このメールは自動送信のメールです\n\n下記のメディアが提携を承認されましたので通知いたします。\n\nメディア: {site_name}\n広告: {article_name} ','{mail_sign}','アフィリエイトのメディア承認から、「承認」が選択されたときの、メディアオーナー宛の通知メール','article_name,site_name','2021-02-25 12:08:32','2021-02-25 12:08:32',NULL),(21,'article_site_reject','広告メディア否認','[admage] メディア提携のお知らせ','※このメールは自動送信のメールです\n\n下記メディアが、広告主様に否認されましたので通知致します。\n\nメディア名 : {site_name}\n広告名 : {article_name}\n否認理由 : {reject_reason}','{mail_sign}','アフィリエイトのメディア承認から、「否認」が選択されたときの、メディアオーナー宛の通知メール','site_name,article_name,reject_reason','2021-02-25 12:08:33','2021-02-25 12:08:33',NULL),(22,'article_site_request','広告メディア申込 ','[admage] メディアの提携申込がありました','※このメールは自動送信のメールです\n\nメディアの提携申込がありましたのでお知らせ致します。\n\n広告: {article_name}','{mail_sign}','アフィリエイトでメディア提携申込があったときの、広告主宛の通知メール','buyer_name,article_name','2021-02-25 12:08:33','2021-02-25 12:08:33',NULL),(23,'article_site_request_admin','広告メディア申込運営者','[admage] メディアの提携申込がありました','※このメールは自動送信のメールです\n\nメディアの提携申込がありましたのでお知らせ致します。\n\n広告主名 : {buyer_name}\n広告名 : {article_name}','','アフィリエイトでメディア提携申込があったときの、運用者宛の通知メール（運用者が承認を代行する広告主の場合）','buyer_name,article_name','2021-02-25 12:08:33','2021-02-25 12:08:33',NULL),(24,'site_update','承認済メディア情報 変更通知','承認済メディア情報変更通知','承認済メディアの変更がありました。\n\n「メディア一覧」から確認してください。\n\nメディア名：{site_name}','{mail_sign}','ディアオーナー側で承認済メディア情報が変更されたときの、運用者宛の通知メール','site_name','2021-02-25 12:08:33','2021-02-25 12:08:33',NULL);
/*!40000 ALTER TABLE `mail_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_history`
--

DROP TABLE IF EXISTS `mail_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` smallint NOT NULL,
  `date` datetime NOT NULL,
  `account_role` tinyint DEFAULT NULL,
  `account_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `subject` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `format_name` text COLLATE utf8_unicode_ci,
  `error_msg` text COLLATE utf8_unicode_ci,
  `auto` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `mail_history_date_index` (`date`),
  KEY `mail_history_account_role_account_id_date_index` (`account_role`,`account_id`,`date`),
  KEY `mail_history_account_id_status_index` (`account_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_history`
--

LOCK TABLES `mail_history` WRITE;
/*!40000 ALTER TABLE `mail_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_magazines`
--

DROP TABLE IF EXISTS `mail_magazines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_magazines` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `to` int NOT NULL DEFAULT '9',
  `account_role` tinyint NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `send_target_count` int unsigned NOT NULL DEFAULT '0',
  `send_finished_count` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_magazines_date_index` (`date`),
  KEY `mail_magazines_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_magazines`
--

LOCK TABLES `mail_magazines` WRITE;
/*!40000 ALTER TABLE `mail_magazines` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_magazines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_magazines_ads`
--

DROP TABLE IF EXISTS `mail_magazines_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_magazines_ads` (
  `mail_magazine_id` int NOT NULL,
  `ad_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_magazines_ads`
--

LOCK TABLES `mail_magazines_ads` WRITE;
/*!40000 ALTER TABLE `mail_magazines_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_magazines_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_magazines_media_categories`
--

DROP TABLE IF EXISTS `mail_magazines_media_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_magazines_media_categories` (
  `mail_magazine_id` int unsigned NOT NULL,
  `media_category_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_magazines_media_categories`
--

LOCK TABLES `mail_magazines_media_categories` WRITE;
/*!40000 ALTER TABLE `mail_magazines_media_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_magazines_media_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_magazines_users`
--

DROP TABLE IF EXISTS `mail_magazines_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_magazines_users` (
  `mail_magazine_id` int NOT NULL,
  `party_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_magazines_users`
--

LOCK TABLES `mail_magazines_users` WRITE;
/*!40000 ALTER TABLE `mail_magazines_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_magazines_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `advertiser_id` int NOT NULL,
  `media_owner_id` int unsigned NOT NULL,
  `medium_type` tinyint NOT NULL,
  `item_type` tinyint NOT NULL,
  `media_category_id` tinyint NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `charset` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `has_incentive` tinyint(1) NOT NULL,
  `kickback_url` text COLLATE utf8_unicode_ci NOT NULL,
  `kickback_js` text COLLATE utf8_unicode_ci NOT NULL,
  `kickback_approve` tinyint NOT NULL,
  `kickback_socket` tinyint NOT NULL,
  `kickback_decimal` tinyint NOT NULL DEFAULT '0',
  `mail_kickback` tinyint NOT NULL DEFAULT '0',
  `template_category` text COLLATE utf8_unicode_ci NOT NULL,
  `template_list` text COLLATE utf8_unicode_ci NOT NULL,
  `template_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `template_category_test` text COLLATE utf8_unicode_ci NOT NULL,
  `template_list_test` text COLLATE utf8_unicode_ci NOT NULL,
  `template_detail_test` text COLLATE utf8_unicode_ci NOT NULL,
  `template_article` text COLLATE utf8_unicode_ci NOT NULL,
  `template_article_test` text COLLATE utf8_unicode_ci NOT NULL,
  `point_rate` int NOT NULL DEFAULT '0',
  `point_unit` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `monthlty_cost_max` int NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `approval_status` tinyint NOT NULL,
  `kickback_cv_flg` tinyint NOT NULL DEFAULT '0',
  `kickback_generate_url` text COLLATE utf8_unicode_ci,
  `kickback_approve_url` text COLLATE utf8_unicode_ci,
  `kickback_reject_url` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_categories`
--

DROP TABLE IF EXISTS `media_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_categories`
--

LOCK TABLES `media_categories` WRITE;
/*!40000 ALTER TABLE `media_categories` DISABLE KEYS */;
INSERT INTO `media_categories` VALUES (1,'ディマージシェア',NULL,NULL,NULL,NULL),(2,'ブログ',NULL,NULL,NULL,NULL),(3,'ショッピング',NULL,NULL,NULL,NULL),(4,'電子書籍',NULL,NULL,NULL,NULL),(5,'デコメ/きせかえ',NULL,NULL,NULL,NULL),(6,'ギャンブル',NULL,NULL,NULL,NULL),(7,'着メロ、着うた',NULL,NULL,NULL,NULL),(8,'ゲーム',NULL,NULL,NULL,NULL),(9,'検索',NULL,NULL,NULL,NULL),(10,'ASP',NULL,NULL,NULL,NULL),(11,'ポイントサイト(登録時に付与)',NULL,NULL,NULL,NULL),(12,'ポイントサイト(クリック時に付与)',NULL,NULL,NULL,NULL),(13,'出会い系',NULL,NULL,NULL,NULL),(14,'アダルト',NULL,NULL,NULL,NULL),(15,'公式決済システム',NULL,NULL,NULL,NULL),(16,'公式決済(その他)',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `media_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_profit`
--

DROP TABLE IF EXISTS `media_profit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_profit` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `party_id` int NOT NULL,
  `aggregated_on` date NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_profit`
--

LOCK TABLES `media_profit` WRITE;
/*!40000 ALTER TABLE `media_profit` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_profit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_unit_price_mod_schedules`
--

DROP TABLE IF EXISTS `media_unit_price_mod_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_unit_price_mod_schedules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medium_id` int NOT NULL,
  `ad_id` int NOT NULL,
  `is_executed` tinyint(1) NOT NULL DEFAULT '0',
  `executed_at` datetime NOT NULL,
  `click_gross_unit_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `click_net_unit_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gross_unit_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `net_unit_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_unit_price_mod_schedules`
--

LOCK TABLES `media_unit_price_mod_schedules` WRITE;
/*!40000 ALTER TABLE `media_unit_price_mod_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_unit_price_mod_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `category` int NOT NULL DEFAULT '0',
  `admin_id` int NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `to` int NOT NULL,
  `is_mailable` tinyint(1) NOT NULL,
  `is_sent` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `has_end_at` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_04_02_193005_create_translations_table',1),(2,'2016_07_01_000000_create_users_table',1),(3,'2016_07_01_000010_create_password_resets_table',1),(4,'2016_07_01_001000_create_parties_table',1),(5,'2016_07_01_001010_create_party_bank_table',1),(6,'2016_07_01_002000_create_accounts_table',1),(7,'2016_07_01_100000_create_ads_table',1),(8,'2016_07_01_100010_create_ads_media_categories_table',1),(9,'2016_07_01_100020_create_ads_os_table',1),(10,'2016_07_01_100030_create_ad_mod_schedules_table',1),(11,'2016_07_01_100040_create_ads_media_table',1),(12,'2016_07_01_100050_create_ads_media_mod_schedules_table',1),(13,'2016_07_01_101000_create_campaigns_table',1),(14,'2016_07_01_102000_create_creatives_table',1),(15,'2016_07_01_103000_create_cvpoints_table',1),(16,'2016_07_01_104000_create_keywords_table',1),(17,'2016_07_01_200000_create_media_table',1),(18,'2016_07_01_201000_create_items_table',1),(19,'2016_07_01_201010_create_items_locations_table',1),(20,'2016_07_01_202000_create_locations_table',1),(21,'2016_07_01_202010_create_locations_ads_table',1),(22,'2016_07_01_202020_create_locations_locations_table',1),(23,'2016_07_01_203000_create_user_segments_table',1),(24,'2016_07_01_300000_create_apps_table',1),(25,'2016_07_01_301000_create_app_stores_table',1),(26,'2016_07_01_301010_create_app_stores_os_table',1),(27,'2016_07_01_302000_create_app_links_table',1),(28,'2016_07_01_400000_create_billing_table',1),(29,'2016_07_01_401000_create_media_profit_table',1),(30,'2016_07_01_402000_create_pay_history_table',1),(31,'2016_07_01_403000_create_unpaid_amount_table',1),(32,'2016_07_01_500000_create_messages_table',1),(33,'2016_07_01_500010_create_notified_users_table',1),(34,'2016_07_01_501000_create_broadcasts_table',1),(35,'2016_07_01_502000_create_notifications_table',1),(36,'2016_07_01_600000_create_ad_categoriestable',1),(37,'2016_07_01_601000_create_media_categories_table',1),(38,'2016_07_01_602000_create_os_table',1),(39,'2016_07_01_603000_create_platforms_table',1),(40,'2016_07_01_604000_create_app_sdks_table',1),(41,'2016_07_01_604010_create_app_sdk_platforms_table',1),(42,'2016_07_01_605000_create_faqs_table',1),(43,'2016_07_01_606000_create_inquiries_table',1),(44,'2016_07_01_607000_create_env_table',1),(45,'2016_07_01_700000_create_access_logs_table',1),(46,'2016_07_01_701000_create_deliver_log_table',1),(47,'2016_07_01_702000_create_click_log_table',1),(48,'2016_07_01_703000_create_cv_log_table',1),(49,'2016_07_01_704000_create_error_logs_table',1),(50,'2016_07_01_705000_create_job_logs_table',1),(51,'2016_07_01_800000_create_summary_table',1),(52,'2017_06_05_182301_create_user_power_table',1),(53,'2017_06_12_110524_create_admin_activity_logs_table',1),(54,'2017_07_18_095026_create_ads_os_links_table',1),(55,'2017_08_08_141239_create_creatives_os_table',1),(56,'2017_08_09_133147_create_modify_schedules_table',1),(57,'2017_08_25_142918_create_mail_formats_table',1),(58,'2017_08_25_181236_create_mail_magazine_table',1),(59,'2017_08_25_181308_create_mail_history_table',1),(60,'2017_09_04_164343_create_mail_magazines_users_table',1),(61,'2017_09_04_164532_create_mail_magazines_ads_table',1),(62,'2017_09_04_174633_create_table_mail_magazines_media_categories',1),(63,'2017_09_14_114500_create_favorites_table',1),(64,'2017_09_15_225110_create_help_table',1),(65,'2017_09_18_214323_create_media_unit_price_mod_schedules_table',1),(66,'2019_07_03_201837_add_accounts_20190703',1),(67,'2019_07_03_202054_add_ads_media_20190703',1),(68,'2019_07_03_202121_add_cv_log_20190703',1),(69,'2019_07_03_202149_add_deliver_log_20190703',1),(70,'2019_07_08_142100_add_summary_20190708',1),(71,'2019_07_10_171543_create_summary_suid_table',1),(72,'2019_07_16_142013_create_ads_media_modify',1),(73,'2019_07_16_142215_add_ads_media_20190716',1),(74,'2019_07_24_154620_add_creatives_20190724',1),(75,'2019_07_24_154653_create_creatives_modify',1),(76,'2019_07_24_154717_create_creatives_os_modify',1),(77,'2019_08_02_112012_create_payment_span',1),(78,'2019_08_02_112219_add_parties_20190802',1),(79,'2019_08_02_112329_add_media_profit_20190802',1),(80,'2019_08_02_112827_add_pay_history_20190802',1),(81,'2019_08_28_165344_add_margin_cost_to_summary_suid',1),(82,'2019_08_29_152553_add_request_amount_taxed_to_billing_table',1),(83,'2019_08_29_152626_add_pay_amount_taxed_to_pay_history_table',1),(84,'2019_10_01_104525_edit_messages_table',1),(85,'2019_10_07_111811_add_has_end_at_to_messages',1),(86,'2019_10_26_111551_add_cv_log_20191026',1),(87,'2019_10_26_111636_add_click_log_20191026',1),(88,'2019_10_26_111658_add_deliver_log_20191026',1),(89,'2019_11_05_123901_add_tel_to_users',1),(90,'2019_11_18_182404_delete_tel_from_users',1),(91,'2020_01_07_153927_change_margin_column_to_accounts_table',1),(92,'2020_01_07_154018_change_margin_column_to_ads_media_table',1),(93,'2020_01_20_174347_edit_broadcasts_table',1),(94,'2020_02_06_154829_change_decimal_point_of_margin_column_in_accounts_table',1),(95,'2020_02_06_154955_change_margin_column_ads_media_table',1),(96,'2020_06_16_185755_add_measure_ip_cols_to_accounts',1),(97,'2020_06_17_115410_add_measure_allow_ip_flg_to_ad',1),(98,'2020_06_30_164944_add_click_prices_to_ads_media_modify',1),(99,'2020_07_06_152012_add_announce_settings_to_ads',1),(100,'2020_08_19_144358_add_report_allow_ip_to_accounts_table',1),(101,'2021_01_21_174833_add_margin_click_to_accounts_table',1),(102,'2021_01_21_175722_add_margin_click_to_ads_media_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modify_schedules`
--

DROP TABLE IF EXISTS `modify_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modify_schedules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_id` int unsigned NOT NULL,
  `is_executed` tinyint(1) NOT NULL DEFAULT '0',
  `executed_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modify_schedules`
--

LOCK TABLES `modify_schedules` WRITE;
/*!40000 ALTER TABLE `modify_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `modify_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int unsigned NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notified_users`
--

DROP TABLE IF EXISTS `notified_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notified_users` (
  `message_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notified_users`
--

LOCK TABLES `notified_users` WRITE;
/*!40000 ALTER TABLE `notified_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `notified_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os`
--

DROP TABLE IF EXISTS `os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `os` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ua_identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os`
--

LOCK TABLES `os` WRITE;
/*!40000 ALTER TABLE `os` DISABLE KEYS */;
INSERT INTO `os` VALUES (1,'Android','Android','fa','android',1,NULL,NULL,NULL),(2,'iOS(iPhone,iPod,iPad)','(iPhone OS (\\w+){1,3}|iPad; CPU OS (\\w+){1,3})','fa','apple',1,NULL,NULL,NULL),(3,'PC(Windows、Mac)','(Windows|Macintosh.*Mac OS)','fa','laptop',2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parties` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `business_type` tinyint NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name_pronounce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delegate_user_id` int NOT NULL DEFAULT '0',
  `default_account_id` int NOT NULL DEFAULT '0',
  `closed_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_span_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;
INSERT INTO `parties` VALUES (1,'admin',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,'2021-02-25 12:08:25','2021-02-25 12:08:25',0),(2,'admin',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0,NULL,NULL,'2021-02-25 12:08:25','2021-02-25 12:08:26',0),(3,'Nicolas Ltd',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,1,NULL,NULL,'2021-02-25 12:08:40','2021-02-25 12:08:46',0),(4,'Stracke Inc',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,2,NULL,NULL,'2021-02-25 12:08:40','2021-02-25 12:08:46',0),(5,'Lakin-Leuschke',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,3,NULL,NULL,'2021-02-25 12:08:40','2021-02-25 12:08:47',0),(6,'Hilpert-Hickle',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,4,'2021-02-25 12:08:40',NULL,'2021-02-25 12:08:40','2021-02-25 12:08:47',0),(7,'Miller PLC',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,5,NULL,NULL,'2021-02-25 12:08:40','2021-02-25 12:08:47',0),(8,'Zulauf-Greenholt',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,6,'2021-02-25 12:08:40',NULL,'2021-02-25 12:08:40','2021-02-25 12:08:48',0),(9,'Schmitt-Tillman',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,7,NULL,NULL,'2021-02-25 12:08:41','2021-02-25 12:08:48',0),(10,'Kemmer-Nikolaus',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,8,NULL,NULL,'2021-02-25 12:08:41','2021-02-25 12:08:49',0),(11,'Kessler-Heller',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,9,NULL,NULL,'2021-02-25 12:08:41','2021-02-25 12:08:49',0),(12,'Greenholt LLC',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,10,NULL,NULL,'2021-02-25 12:08:41','2021-02-25 12:08:50',0),(13,'Russel-Kozey',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,11,NULL,NULL,'2021-02-25 12:08:41','2021-02-25 12:08:50',0),(14,'Turner Inc',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,12,NULL,NULL,'2021-02-25 12:08:41','2021-02-25 12:08:51',0),(15,'Ernser, Hettinger and Ryan',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,13,NULL,NULL,'2021-02-25 12:08:41','2021-02-25 12:08:51',0),(16,'Konopelski, Zulauf and Wintheiser',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,14,NULL,NULL,'2021-02-25 12:08:41','2021-02-25 12:08:52',0),(17,'Koepp-Haley',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,15,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:52',0),(18,'Wintheiser-Von',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,16,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:53',0),(19,'Tremblay-Collins',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,17,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:53',0),(20,'Harris, White and Wunsch',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,18,'2021-02-25 12:08:40',NULL,'2021-02-25 12:08:42','2021-02-25 12:08:54',0),(21,'Toy-Harvey',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,19,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:54',0),(22,'Strosin and Sons',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22,20,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:55',0),(23,'Walter Inc',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,21,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:55',0),(24,'Goyette-Fritsch',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,22,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:56',0),(25,'Predovic, Kautzer and Kiehn',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,23,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:56',0),(26,'Pollich-Lockman',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,24,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:57',0),(27,'Prohaska, Okuneva and Stanton',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,25,NULL,NULL,'2021-02-25 12:08:42','2021-02-25 12:08:57',0),(28,'Fay, Jacobson and Raynor',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,26,'2021-02-25 12:08:40',NULL,'2021-02-25 12:08:43','2021-02-25 12:08:58',0),(29,'Kautzer-Stoltenberg',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,27,NULL,NULL,'2021-02-25 12:08:43','2021-02-25 12:08:58',0),(30,'Auer-Kertzmann',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,28,'2021-02-25 12:08:40',NULL,'2021-02-25 12:08:43','2021-02-25 12:08:59',0),(31,'Mertz Inc',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,31,29,NULL,NULL,'2021-02-25 12:08:43','2021-02-25 12:08:59',0),(32,'Baumbach, Cruickshank and O\'Reilly',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,30,NULL,NULL,'2021-02-25 12:08:43','2021-02-25 12:09:00',0),(33,'Ortiz, Spinka and Robel',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,33,31,NULL,NULL,'2021-02-25 12:08:43','2021-02-25 12:09:00',0),(34,'Gottlieb and Sons',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,32,NULL,NULL,'2021-02-25 12:08:43','2021-02-25 12:09:01',0),(35,'Zulauf Group',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,33,NULL,NULL,'2021-02-25 12:08:43','2021-02-25 12:09:01',0),(36,'Davis, Donnelly and Bogan',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,36,34,NULL,NULL,'2021-02-25 12:08:43','2021-02-25 12:09:02',0),(37,'Wehner, Kreiger and Marquardt',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,35,NULL,NULL,'2021-02-25 12:08:44','2021-02-25 12:09:02',0),(38,'Gislason, Daugherty and Schmidt',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,36,NULL,NULL,'2021-02-25 12:08:44','2021-02-25 12:09:03',0),(39,'Gutmann, Rath and Smith',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,39,37,NULL,NULL,'2021-02-25 12:08:44','2021-02-25 12:09:03',0),(40,'Nolan, McKenzie and Braun',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,38,'2021-02-25 12:08:40',NULL,'2021-02-25 12:08:44','2021-02-25 12:09:04',0),(41,'Ritchie-Runolfsson',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,39,'2021-02-25 12:08:40',NULL,'2021-02-25 12:08:44','2021-02-25 12:09:04',0),(42,'Watsica Ltd',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,40,NULL,NULL,'2021-02-25 12:08:44','2021-02-25 12:09:04',0),(43,'Towne, Willms and Homenick',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,43,41,NULL,NULL,'2021-02-25 12:08:44','2021-02-25 12:09:05',0),(44,'Gibson Group',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,42,'2021-02-25 12:08:40',NULL,'2021-02-25 12:08:44','2021-02-25 12:09:05',0),(45,'Barton PLC',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45,43,NULL,NULL,'2021-02-25 12:08:44','2021-02-25 12:09:06',0),(46,'Kozey, Howe and Senger',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46,44,NULL,NULL,'2021-02-25 12:08:45','2021-02-25 12:09:06',0),(47,'Braun, O\'Reilly and Goldner',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,45,NULL,NULL,'2021-02-25 12:08:45','2021-02-25 12:09:07',0),(48,'Mayert and Sons',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48,46,NULL,NULL,'2021-02-25 12:08:45','2021-02-25 12:09:07',0),(49,'Durgan, Veum and Prosacco',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49,47,NULL,NULL,'2021-02-25 12:08:45','2021-02-25 12:09:08',0),(50,'Littel-Senger',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,48,NULL,NULL,'2021-02-25 12:08:45','2021-02-25 12:09:08',0),(51,'Ziemann Inc',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,51,49,NULL,NULL,'2021-02-25 12:08:45','2021-02-25 12:09:09',0),(52,'Spinka, Hudson and Jaskolski',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,52,50,NULL,NULL,'2021-02-25 12:08:45','2021-02-25 12:09:09',0);
/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_bank`
--

DROP TABLE IF EXISTS `party_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party_bank` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `party_id` int unsigned NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_holder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `party_bank_party_id_unique` (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_bank`
--

LOCK TABLES `party_bank` WRITE;
/*!40000 ALTER TABLE `party_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `user_id` int NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valid_until` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `password_resets_user_id_unique` (`user_id`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_history`
--

DROP TABLE IF EXISTS `pay_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `party_id` int NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  `payment_amount_taxed` decimal(15,2) NOT NULL,
  `closed_on` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `payment_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_history`
--

LOCK TABLES `pay_history` WRITE;
/*!40000 ALTER TABLE `pay_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_span`
--

DROP TABLE IF EXISTS `payment_span`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_span` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `party_id` int unsigned NOT NULL,
  `type` tinyint NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_span`
--

LOCK TABLES `payment_span` WRITE;
/*!40000 ALTER TABLE `payment_span` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_span` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unpaid_amount`
--

DROP TABLE IF EXISTS `unpaid_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unpaid_amount` (
  `party_id` int NOT NULL,
  `last_closed_on` date NOT NULL,
  `balance` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `unpaid_amount_party_id_unique` (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unpaid_amount`
--

LOCK TABLES `unpaid_amount` WRITE;
/*!40000 ALTER TABLE `unpaid_amount` DISABLE KEYS */;
/*!40000 ALTER TABLE `unpaid_amount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_powers`
--

DROP TABLE IF EXISTS `user_powers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_powers` (
  `user_id` int unsigned NOT NULL,
  `power` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_powers`
--

LOCK TABLES `user_powers` WRITE;
/*!40000 ALTER TABLE `user_powers` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_powers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_segments`
--

DROP TABLE IF EXISTS `user_segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_segments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `media_owner_id` int unsigned NOT NULL,
  `medium_id` int unsigned NOT NULL,
  `segment_group` tinyint NOT NULL,
  `parameters` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_segments`
--

LOCK TABLES `user_segments` WRITE;
/*!40000 ALTER TABLE `user_segments` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_segments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `party_id` int unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `authority` tinyint NOT NULL,
  `widgets` text COLLATE utf8_unicode_ci NOT NULL,
  `receive_system_mail` tinyint(1) NOT NULL,
  `receive_notification_mail` tinyint(1) NOT NULL,
  `receive_announcement_mail` tinyint(1) NOT NULL,
  `receive_affiliate_mail` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'$2y$10$0OcUPj9CxxXiNOpdQnqkEe3/.sQzIfY/rWcNUtDM40D.vYrKkN28K','admage-super@dimage.co.jp',1,'スーパーユーザー',1,'[\"unapproved\",\"benefit\"]',0,0,0,1,'ejaHTquTTAjJLsqw169IyiQyLn47eQSEgdWNnMIWFRsxIZ9EiBZ6EDycHolh',NULL,NULL,'2021-02-25 12:08:25','2021-03-01 16:50:47'),(2,'$2y$10$CYHGhx5pLKi6a/KhSjbNsOL/9AW9gX5j.GbvGVTKgrjRZhNux/aOC','admage-admin@dimage.co.jp',2,'管理者',2,'[\"unapproved\",\"benefit\"]',0,0,0,1,NULL,NULL,NULL,'2021-02-25 12:08:25','2021-02-25 12:08:26'),(3,'$2y$10$2wM3jXqn6hvAhcsfVvt5/unDbeInxiLwyWvHZFIwnxZJC.xDK0.VO','lilian.bartoletti@example.net',3,'Hal Hickle',5,'[\"announces\",\"benefit\"]',1,0,0,1,'5GAqFXr1EC',NULL,NULL,'2021-02-25 12:08:46','2021-02-25 12:08:46'),(4,'$2y$10$WumQQ1jSWsYTtbY5bxGyTurGrhrsZDcgWNcN83m0mjYvWzMLEzTnG','melany.kulas@example.com',4,'Callie Hilpert',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,1,0,1,'fvlX8dlLoc',NULL,NULL,'2021-02-25 12:08:46','2021-02-25 12:08:46'),(5,'$2y$10$ZBKEAp7aX/ItowfMZ2AvwOHjVKRB//ITtKM.NXtBb1hA3Qx9KTvg.','zion07@example.org',5,'Cicero Grimes',5,'[\"announces\",\"benefit\"]',1,1,0,1,'t0dddVD6To',NULL,NULL,'2021-02-25 12:08:46','2021-02-25 12:08:46'),(6,'$2y$10$KyBy9NfI/RKRFBq6Wz26HuNcIAu4qEkvxB5dWkrMdMmrRmLorrMR.','mittie13@example.net',6,'Marlene Metz',5,'[\"announces\",\"benefit\"]',1,1,1,0,'9an2BrhX2T',NULL,NULL,'2021-02-25 12:08:47','2021-02-25 12:08:47'),(7,'$2y$10$hAmeATnobW8BTv1TJp.ZAOZbR5VKdpKAvQ/es54gIsOfdK2/wdlAW','richie.zulauf@example.net',7,'Prof. Porter Medhurst Sr.',5,'[\"announces\",\"benefit\"]',1,0,1,0,'DfIYE5uh5Q',NULL,NULL,'2021-02-25 12:08:47','2021-02-25 12:08:47'),(8,'$2y$10$MPgCFq0afYVis9tv4B6C4emOxa82b9Alszy7FUwucA.OKgENlVUjC','hessel.alessandro@example.org',8,'Micah Keebler',5,'[\"announces\",\"benefit\"]',0,1,1,0,'cVLn226qO9',NULL,NULL,'2021-02-25 12:08:48','2021-02-25 12:08:48'),(9,'$2y$10$73sxDPSrmSgEkEXC0RrWTOvTk1cqHJ9E9ROb6TrQB.aw87tkbeH6K','isabel77@example.com',9,'Prof. Amira Adams II',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,1,0,1,'mb19xZtHun',NULL,NULL,'2021-02-25 12:08:48','2021-02-25 12:08:48'),(10,'$2y$10$xFfEQ4oe5UdaskXx2SKCUe/UC6Lu/ou8vWC6GzALJMBAMXPbPeiVK','harris.lydia@example.org',10,'Dr. Alize Kertzmann DDS',5,'[\"announces\",\"benefit\"]',0,1,0,0,'rNgnDXehCa',NULL,NULL,'2021-02-25 12:08:49','2021-02-25 12:08:49'),(11,'$2y$10$nuVxv1cgvlmVwKL0B8LLq.JuhMMHfiJlk8fVK7noyF2MkSJWJevWe','pkohler@example.net',11,'Jamel Hilpert',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,0,0,0,'tXWAhtNRdu',NULL,NULL,'2021-02-25 12:08:49','2021-02-25 12:08:49'),(12,'$2y$10$.e8HvdHHhRHGeyBLL0wptuj249sTXBPt8rmtb1Yuh2GJoHdAH6l4m','kovacek.delilah@example.net',12,'Lewis Gottlieb',5,'[\"announces\",\"benefit\"]',0,1,1,0,'ik0V9SA0jF',NULL,NULL,'2021-02-25 12:08:50','2021-02-25 12:08:50'),(13,'$2y$10$Fd64207UHXSqwA/DpzBBteIS3JdxzyXXt1Ca6vWWHEXsgXOwYGtX6','dsteuber@example.org',13,'Trudie Adams',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,0,0,1,'h72ANG76QO',NULL,NULL,'2021-02-25 12:08:50','2021-02-25 12:08:50'),(14,'$2y$10$B1bHYYgfFRBIq3SR5xCAW.G7BpqPpEqpE9lOq/m6YA5eP7O7NRwmC','xrath@example.org',14,'Camila Mills',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,1,1,0,'fQi5nQjuD4',NULL,NULL,'2021-02-25 12:08:51','2021-02-25 12:08:51'),(15,'$2y$10$slTl7.ChrvUzRAO1s.vqHOPsjPq1fYlbdVucrjOozMgh8sbrJp5Py','aryan@example.net',15,'Mr. Rhiannon Wilkinson II',5,'[\"announces\",\"benefit\"]',0,1,0,0,'bynZMxBb0N',NULL,NULL,'2021-02-25 12:08:51','2021-02-25 12:08:51'),(16,'$2y$10$sS27AWV5wU2O7BU3FU9ZmOnQTOvjMotnL.tVcOyupF5PeWA5oOB0a','lockman.katlynn@example.com',16,'Fay Cartwright I',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,1,1,1,'ZPeZGfGzSX',NULL,NULL,'2021-02-25 12:08:52','2021-02-25 12:08:52'),(17,'$2y$10$rWymPnt3POdRXR2BY0XbweYfsT3R4dzpgbLnEce.Vab/ldZbPRztG','gregory.harber@example.org',17,'Antwan Franecki Jr.',5,'[\"announces\",\"benefit\"]',1,0,0,1,'PvgQpviEgA',NULL,NULL,'2021-02-25 12:08:52','2021-02-25 12:08:52'),(18,'$2y$10$6/lWKDDCs85OYVahh0VwYe3gsFFkkU7yHaeTg9.IkZN8W7KdkVb0.','pattie.cassin@example.com',18,'Ms. Prudence Tillman',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,0,0,0,'6daNpd858o',NULL,NULL,'2021-02-25 12:08:53','2021-02-25 12:08:53'),(19,'$2y$10$BBBQgBs8nHBvPJNVVGhRA.G1vEBbAPFGJFRm96icESRw36FKu50jq','griffin.hermann@example.net',19,'Golda Padberg',5,'[\"announces\",\"benefit\"]',0,1,1,1,'ToCVWLzEUi',NULL,NULL,'2021-02-25 12:08:53','2021-02-25 12:08:53'),(20,'$2y$10$QS6TRBvzOWi4tUjDjcAoj.nOrmhuT.04RRvRDecVlHbv9AEaWI7OK','tokon@example.com',20,'Candelario Bosco',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,0,1,1,'PTOC3V57Vo',NULL,NULL,'2021-02-25 12:08:54','2021-02-25 12:08:54'),(21,'$2y$10$YlcaC5zG1Ttjmgw9/CBK8u60lGJ8USAGoFbLoL/ieXU7GruZuQgF2','keith.terry@example.org',21,'Alberto Goyette',5,'[\"announces\",\"benefit\"]',1,0,0,0,'2Tj1vPyI3r',NULL,NULL,'2021-02-25 12:08:54','2021-02-25 12:08:54'),(22,'$2y$10$RI6zxEbdJ4s8FGv7BPgeVeCrbv7cDVdEeCHbFSJ7lVSvlZ/Ge8k7e','oconnell.ellie@example.net',22,'Dr. Chaya Bednar II',5,'[\"announces\",\"benefit\"]',0,1,0,1,'RQGNiBNLkf',NULL,NULL,'2021-02-25 12:08:54','2021-02-25 12:08:54'),(23,'$2y$10$4fMUYWQt9FiO1kc8O6HmwevwoYOnNw9jHabHu2ov.pE9OhYIrbfFa','halie.thiel@example.org',23,'Ethan Koch MD',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,0,0,1,'volnTbJyux',NULL,NULL,'2021-02-25 12:08:55','2021-02-25 12:08:55'),(24,'$2y$10$IvgLENCDS9EMEDwONDgFCuBHMM.n7fh1i7zDbtqaNW1ufKYeApaRW','bbashirian@example.net',24,'Krystal Terry',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,0,1,0,'s2OBdUobAe',NULL,NULL,'2021-02-25 12:08:56','2021-02-25 12:08:56'),(25,'$2y$10$wHCLFaXeEqG8ZCYCmXCz7.dJP8Pzd4O8QNxoXIRcpwz15dU8EXOHS','xspinka@example.net',25,'Prof. Mac Cormier',5,'[\"announces\",\"benefit\"]',1,0,0,0,'4IhzYmtUXR',NULL,NULL,'2021-02-25 12:08:56','2021-02-25 12:08:56'),(26,'$2y$10$rV4lE9inoQKXRxifXBxh2uiPqsWZlISf89aCEtnROxZP5T/6h5wpS','williamson.skyla@example.org',26,'Peter O\'Connell',5,'[\"announces\",\"benefit\"]',1,1,0,0,'g0dw0vea8V',NULL,NULL,'2021-02-25 12:08:57','2021-02-25 12:08:57'),(27,'$2y$10$NbVUUmFNA.3qDNwwWPNZd.EuajzBmYec7Ryzlzx5dmWbF46LVZCBG','odessa.oconner@example.org',27,'Marjory Zulauf',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,0,0,0,'J2MhRpUz8I',NULL,NULL,'2021-02-25 12:08:57','2021-02-25 12:08:57'),(28,'$2y$10$34j2.3exzdZlGVHd1s43TubV2ms.6HmFBrW6fb7oZlVXo491ZdgnC','rosie48@example.org',28,'Prof. Lynn O\'Keefe IV',5,'[\"announces\",\"benefit\"]',1,1,1,0,'xzhOW39bA7',NULL,NULL,'2021-02-25 12:08:58','2021-02-25 12:08:58'),(29,'$2y$10$uNJ3UNT5U1uALKpm74sn0uzgBJlPTy0KEsuLQg7EdJPIpv8r.LaMy','cindy08@example.org',29,'Mr. Ellis Gibson',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,0,0,0,'9A5UwOgj1i',NULL,NULL,'2021-02-25 12:08:58','2021-02-25 12:08:58'),(30,'$2y$10$NphhSYoHY62UVEdc/PWU2.RHF6sxPGe1uvvs14vSZwSS31ZB7DsG2','dfisher@example.com',30,'Augusta Walsh',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,1,1,1,'o1LoOzebLE',NULL,NULL,'2021-02-25 12:08:59','2021-02-25 12:08:59'),(31,'$2y$10$NQfGT6To2Otl744heTLKY.jLKd7jnUxEzS8whzmcMJ217DuCPSkAC','mohammad97@example.com',31,'Hattie Schowalter',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,0,1,1,'23TIb1cqVV',NULL,NULL,'2021-02-25 12:08:59','2021-02-25 12:08:59'),(32,'$2y$10$3yLn9Oq4u2dOx3esX9D.x.Bf.0S7FiOvjRPpfbg6KmdXsfR4EmL52','carlotta31@example.com',32,'Cayla Crona IV',5,'[\"announces\",\"benefit\"]',1,1,1,0,'4NzPi3Mcje',NULL,NULL,'2021-02-25 12:09:00','2021-02-25 12:09:00'),(33,'$2y$10$/dxpq5twvkSN2f8wV2Oygum0U4PJ4XvCTrDy4M02CZSOVcmLV4xsu','robbie.hegmann@example.org',33,'Loraine Weber',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,1,1,0,'FxAHnWDYi1',NULL,NULL,'2021-02-25 12:09:00','2021-02-25 12:09:00'),(34,'$2y$10$XcXVQo7lQbG.K314oBwpX.nswNU/vcwz5ogGOkhNf6mTPHOCXvKj.','jasper.fahey@example.net',34,'Ayana Rath',5,'[\"announces\",\"benefit\"]',1,1,1,0,'mBcVO8qOwr',NULL,NULL,'2021-02-25 12:09:01','2021-02-25 12:09:01'),(35,'$2y$10$i0KJ1Z3O8H03oDm4bvghien7FqWxLBxKstdSFx5lvKMwXd83GHlRu','elena62@example.net',35,'Greg Purdy',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',1,0,1,1,'SDK3D5CEIp',NULL,NULL,'2021-02-25 12:09:01','2021-02-25 12:09:01'),(36,'$2y$10$A9Em41qvHEVPdRpsMzSuX.SjgmiAmi0/e1uysD122yafWRn1MDMSe','lmarquardt@example.org',36,'Prof. Josefina Ernser',5,'[\"announces\",\"benefit\"]',1,1,1,0,'yJZRe6YCxR',NULL,NULL,'2021-02-25 12:09:02','2021-02-25 12:09:02'),(37,'$2y$10$IZgpiG.l/QjOXps6tsBDquqiUa9QC4p3h5VK/IjD68xEI9zVYdWVa','hoppe.lexus@example.com',37,'Dr. Bennett Ferry',5,'[\"announces\",\"benefit\"]',1,1,0,1,'cfzt7d7gYA',NULL,NULL,'2021-02-25 12:09:02','2021-02-25 12:09:02'),(38,'$2y$10$vbUinZkyBEGsGavdgUTFQ.w8XeMmpZbyjE6D4MCKDazZI4HlNxv0u','abelardo81@example.net',38,'Eli Bednar',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,0,1,1,'l704qlGK4C',NULL,NULL,'2021-02-25 12:09:03','2021-02-25 12:09:03'),(39,'$2y$10$Y1ArgH8d7X9lXiVHWJ734.2dQ7KfpK5G7U55mQtr5ZPb9FR1XpLGW','ervin75@example.net',39,'Lorena Reynolds',5,'[\"announces\",\"benefit\"]',0,1,0,0,'BZbLC4zhss',NULL,NULL,'2021-02-25 12:09:03','2021-02-25 12:09:03'),(40,'$2y$10$pgisrCe0l6nMEnNoRHgGgO5CrNws4sd7px41MiCuzVdFzHtP2Nhh.','rachelle06@example.org',40,'Sandra Kiehn IV',5,'[\"announces\",\"benefit\"]',1,1,0,1,'5fxTVFNbPQ',NULL,NULL,'2021-02-25 12:09:03','2021-02-25 12:09:03'),(41,'$2y$10$a5/68k3PpPhaf.080KtuB.ACLpQEVouO8L93uRnKS.9/3WMdAt9/W','schuppe.johnnie@example.com',41,'Prof. Alvah Goodwin III',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,0,0,1,'ovya3U5zqc',NULL,NULL,'2021-02-25 12:09:04','2021-02-25 12:09:04'),(42,'$2y$10$l4UnlHgIwGkIGKAi8.vFsuzGfbJQoFeKYevvu68/6IwCeSgzf.iOm','bette46@example.org',42,'Kitty Schuster IV',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,1,1,0,'5kKNR1iN5p',NULL,NULL,'2021-02-25 12:09:04','2021-02-25 12:09:04'),(43,'$2y$10$7SEqm/DB029SJn6LZtn4aOYC1hcrdQnOd0ecJXH25m40qJLAoayLy','stiedemann.garnett@example.com',43,'Demarcus Harber',5,'[\"announces\",\"benefit\"]',1,0,1,1,'lrNKtObDeV',NULL,NULL,'2021-02-25 12:09:05','2021-02-25 12:09:05'),(44,'$2y$10$9BzQxkWPLmJEpPeSjeMxI.o5ngYEHYa3rEhbEyvQJquztrqDSDQQa','calista02@example.net',44,'Douglas Yundt',5,'[\"announces\",\"benefit\"]',0,1,0,0,'aRGyxSQx4g',NULL,NULL,'2021-02-25 12:09:05','2021-02-25 12:09:05'),(45,'$2y$10$EARAk1/PdBLV/caRiTbUl.4etdODlghoJG8JT1RzjvGtTUeoyIdTe','tamia83@example.com',45,'Jamaal Fadel',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,0,1,1,'viu6qFbYMY',NULL,NULL,'2021-02-25 12:09:06','2021-02-25 12:09:06'),(46,'$2y$10$JAIZdZ4r2I9oHcJVTJVmXuKD0s86qHcP2YXBE.gTmP638xboUIRuu','rraynor@example.org',46,'Orrin Rowe Jr.',5,'[\"announces\",\"benefit\"]',1,1,0,0,'Vfw0EsXkgM',NULL,NULL,'2021-02-25 12:09:06','2021-02-25 12:09:06'),(47,'$2y$10$vPigrelEfjgBdsnAD0LrzeS9KkPEIWPfYIrbtKDd3Apn5qqnRLqTe','larkin.reid@example.com',47,'Mr. Kody Larson MD',5,'[\"announces\",\"benefit\",\"approveStatus\",\"advertiserCost\"]',0,1,0,0,'DQnFnsNmfL',NULL,NULL,'2021-02-25 12:09:07','2021-02-25 12:09:07'),(48,'$2y$10$JGQSE1iTfx6z9L4v8Zr5BO6XfB87PAFSUTAyo.pnhvoJ4/5qN20fy','colt10@example.net',48,'Mr. Greg Jacobi',5,'[\"announces\",\"benefit\"]',0,0,0,1,'Ys3f4wFTGm',NULL,NULL,'2021-02-25 12:09:07','2021-02-25 12:09:07'),(49,'$2y$10$8qqSpIQbJEekj4eT.SJt2.UzMX4Lb8GQRw91GAdz6B11K8BLXAf7i','reinger.jamar@example.net',49,'Kendrick Hoppe',5,'[\"announces\",\"benefit\"]',0,0,0,0,'lwSML7UvTU',NULL,NULL,'2021-02-25 12:09:08','2021-02-25 12:09:08'),(50,'$2y$10$NphntVTvraXeK7vs4mC3YOBQjsl4LkTudpCULTsfWV7YOaGdTRNaW','bartoletti.colleen@example.com',50,'Neha Stroman',5,'[\"announces\",\"benefit\"]',1,1,0,1,'ruiDCNoQGR',NULL,NULL,'2021-02-25 12:09:08','2021-02-25 12:09:08'),(51,'$2y$10$UouYxaT7qROv7bLgHGzIQ.AAcsTB4MdfQu6E19brZDXex7N4qZ/TG','jarrod72@example.com',51,'Zechariah Bayer',5,'[\"announces\",\"benefit\"]',1,0,0,1,'OmmvBqSdzS',NULL,NULL,'2021-02-25 12:09:09','2021-02-25 12:09:09'),(52,'$2y$10$lN.MWYZlqhUmrvpGGjNJ1uT6VqW.KxxrYbHp6oDlEUwswAGR8lI3C','leanna.lindgren@example.com',52,'Mr. Uriah Douglas',5,'[\"announces\",\"benefit\"]',1,0,1,0,'Ey9kUNBMH6',NULL,NULL,'2021-02-25 12:09:09','2021-02-25 12:09:09');
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

-- Dump completed on 2021-03-03 18:48:39
