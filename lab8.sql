-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: lab8
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'iste','Quasi autem sed ratione perferendis quibusdam consectetur.','2025-10-17 18:46:34','2025-10-17 18:46:34'),(2,'sequi','Ullam adipisci illo voluptatem nihil voluptas aut eum.','2025-10-17 18:46:34','2025-10-17 18:46:34'),(3,'qui','Sed id voluptate animi repellendus dolorem eos recusandae.','2025-10-17 18:46:34','2025-10-17 18:46:34'),(4,'impedit','Eum consectetur dolor omnis aut iure.','2025-10-17 18:46:34','2025-10-17 18:46:34'),(5,'molestias','Fugiat quis tenetur qui.','2025-10-17 18:46:34','2025-10-17 18:46:34'),(6,'provident','Porro ea dolorem suscipit hic nulla.','2025-10-17 19:10:36','2025-10-17 19:10:36'),(7,'repudiandae','Voluptates rerum ad autem vitae.','2025-10-17 19:10:36','2025-10-17 19:10:36'),(8,'alias','Laudantium sunt nihil molestiae est.','2025-10-17 19:10:36','2025-10-17 19:10:36'),(9,'doloremque','Aut quos consequatur facilis illo eaque aliquam.','2025-10-17 19:10:36','2025-10-17 19:10:36'),(10,'ratione','Laudantium sed distinctio labore quis voluptatem ipsa ea.','2025-10-17 19:10:36','2025-10-17 19:10:36');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_student`
--

DROP TABLE IF EXISTS `course_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_student` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_student_student_id_foreign` (`student_id`),
  KEY `course_student_course_id_foreign` (`course_id`),
  CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_student`
--

LOCK TABLES `course_student` WRITE;
/*!40000 ALTER TABLE `course_student` DISABLE KEYS */;
INSERT INTO `course_student` VALUES (1,1,2,NULL,NULL),(2,1,3,NULL,NULL),(3,2,1,NULL,NULL),(4,2,3,NULL,NULL),(5,3,2,NULL,NULL),(6,3,3,NULL,NULL),(7,4,1,NULL,NULL),(8,4,2,NULL,NULL),(9,5,2,NULL,NULL),(10,6,2,NULL,NULL),(11,6,3,NULL,NULL),(12,7,3,NULL,NULL),(13,8,2,NULL,NULL),(14,8,3,NULL,NULL),(15,9,1,NULL,NULL),(16,9,2,NULL,NULL),(17,9,3,NULL,NULL),(18,10,1,NULL,NULL),(19,10,2,NULL,NULL),(20,10,3,NULL,NULL);
/*!40000 ALTER TABLE `course_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'nulla vel dolorem','Dolorem quo quo eum quod fugit.','2025-10-17 18:46:35','2025-10-17 18:46:35'),(2,'optio nisi enim','Magnam unde sit quam assumenda nulla.','2025-10-17 18:46:35','2025-10-17 18:46:35'),(3,'aut et esse','Maiores dolores quasi laborum expedita laborum.','2025-10-17 18:46:35','2025-10-17 18:46:35');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2025_10_15_122327_create_categories_table',1),(6,'2025_10_15_122437_create_products_table',1),(7,'2025_10_18_013948_create_students_table',1),(8,'2025_10_18_014000_create_courses_table',1),(9,'2025_10_18_014112_create_course_student_table',1),(10,'2025_10_18_020000_create_profiles_table',2),(11,'2025_10_18_021659_add_stock_to_products_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'inventore mollitia',3129515.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(3,'consequatur explicabo',116620.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(4,'nobis voluptas',1044174.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(5,'ratione quis',2375337.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(6,'et impedit',873686.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(7,'dolor vitae',114824.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(8,'ea explicabo',3982846.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(9,'aut sit',3030139.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(10,'dolor quidem',4286549.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(11,'omnis vero',2980958.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(12,'eum maiores',901691.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(13,'iure enim',3685742.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(14,'harum expedita',4489564.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(15,'explicabo quia',4332126.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(16,'voluptatem et',3266915.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(17,'quas ipsum',961552.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(18,'eos non',3384398.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(19,'omnis tempore',3467329.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(20,'dignissimos quasi',2933840.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(21,'maxime dolor',621901.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(22,'eum dolorum',379048.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(23,'aperiam veritatis',331900.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(24,'aut magni',4589279.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(25,'est sit',574103.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(26,'et quia',1381902.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(27,'et sapiente',1999350.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(28,'reprehenderit veritatis',2273538.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(29,'ut ex',3126758.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(30,'at qui',3587523.00,0,3,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(31,'aut placeat',4514552.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(32,'omnis aut',2418085.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(33,'aut omnis',4356594.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(34,'a soluta',105845.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(35,'reprehenderit quis',3707308.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(36,'perferendis est',1639521.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(37,'et est',1598125.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(38,'velit veniam',2577888.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(39,'incidunt maxime',3969319.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(40,'adipisci est',2780226.00,0,4,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(41,'ab minus',232882.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(42,'voluptate modi',4422948.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(43,'sapiente sit',2848659.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(44,'explicabo non',2891307.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(45,'veniam est',3079086.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(46,'dolore enim',1184120.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(47,'rem debitis',1439256.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(48,'maxime quibusdam',3775815.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(49,'dolorem sequi',2360701.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(50,'nobis deserunt',2378101.00,0,5,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(51,'nisi distinctio',4778487.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(52,'libero debitis',2094509.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(53,'est fuga',3987801.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(54,'impedit numquam',667674.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(55,'nihil veniam',3181378.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(56,'ad quas',134721.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(57,'atque id',3431763.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(58,'qui sed',2148582.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(59,'cum quia',4652829.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(60,'et sint',1479714.00,0,1,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(61,'minima excepturi',2914760.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(62,'perspiciatis hic',2017298.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(63,'aut architecto',2789951.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(64,'fugit qui',2425654.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(65,'totam repellat',3711820.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(66,'laudantium dolor',3494053.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(67,'necessitatibus est',4490483.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(68,'et voluptatibus',2556431.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(69,'autem enim',3266185.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(70,'sit ipsam',1240491.00,0,2,'2025-10-17 18:46:34','2025-10-17 18:46:34'),(71,'cupiditate dolor',4152503.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(72,'quo accusantium',2925900.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(73,'non sequi',1849700.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(74,'vel in',2610665.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(75,'est sit',2554575.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(76,'qui eaque',3406370.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(77,'aperiam et',2317651.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(78,'reiciendis quis',3545675.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(79,'inventore cumque',3079908.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(80,'possimus illum',3714089.00,0,3,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(81,'possimus non',1727991.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(82,'vitae delectus',4647057.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(83,'fuga non',1341182.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(84,'incidunt neque',214099.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(85,'quo est',3845354.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(86,'ad sit',4508945.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(87,'nulla est',3179777.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(88,'aliquid nisi',402414.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(89,'eum doloribus',3495778.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(90,'id fugiat',4625453.00,0,4,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(91,'unde et',391023.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(92,'autem ad',976145.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(93,'consequatur saepe',1304313.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(94,'ut rem',3306762.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(95,'aut dicta',3031154.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(96,'expedita qui',3857119.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(97,'error aut',1222747.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(98,'quibusdam qui',1305824.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(99,'velit recusandae',3283869.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(100,'rem quasi',2560905.00,0,5,'2025-10-17 18:46:35','2025-10-17 18:46:35'),(101,'voluptate doloremque',1058819.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(102,'quis vel',3891604.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(103,'quisquam mollitia',203792.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(104,'veniam ut',2606731.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(105,'aperiam consectetur',1135671.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(106,'atque provident',560061.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(107,'neque delectus',3204064.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(108,'iste eveniet',2530550.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(109,'mollitia aliquid',3651350.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(110,'eos officia',902419.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(111,'perspiciatis asperiores',826976.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(112,'possimus culpa',4303604.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(113,'sapiente et',4365288.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(114,'aut ea',2341822.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(115,'eaque non',4991676.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(116,'eveniet eos',4797055.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(117,'enim qui',4646384.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(118,'quisquam velit',337760.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(119,'similique quasi',4411365.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(120,'aut sunt',1478501.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(121,'hic ea',394860.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(122,'omnis eius',3249343.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(123,'tempora non',1070723.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(124,'est molestias',1994027.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(125,'facilis sit',421197.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(126,'maiores ut',2168561.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(127,'molestias architecto',221626.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(128,'facere delectus',2568398.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(129,'porro illum',318525.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(130,'laborum consequuntur',4752469.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(131,'ut doloremque',665223.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(132,'reiciendis nihil',781712.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(133,'quos facere',4520347.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(134,'animi vel',1090198.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(135,'nemo accusantium',4424331.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(136,'cumque voluptas',166946.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(137,'cum quia',2478595.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(138,'eveniet iusto',3417018.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(139,'velit quo',2467172.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(140,'quo et',2244995.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(141,'autem error',2149559.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(142,'nisi fugiat',2320560.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(143,'earum voluptatem',2169734.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(144,'eos in',862085.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(145,'vitae temporibus',4297036.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(146,'sed in',4458420.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(147,'consectetur autem',4482398.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(148,'et officia',1784224.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(149,'cumque alias',3663739.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(150,'sequi repudiandae',2670741.00,0,10,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(151,'et sunt',2379833.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(152,'maxime aut',1037778.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(153,'culpa sapiente',3367240.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(154,'molestias deserunt',1680397.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(155,'dolor aut',3985546.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(156,'ratione quis',1068366.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(157,'iusto numquam',2503173.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(158,'odio blanditiis',194689.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(159,'rerum beatae',3783865.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(160,'distinctio quibusdam',4958347.00,0,6,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(161,'amet et',2083535.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(162,'ipsa sunt',887621.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(163,'aut eveniet',3018821.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(164,'perspiciatis ex',2238332.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(165,'dolorem laboriosam',3375656.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(166,'officiis et',3888216.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(167,'amet culpa',457192.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(168,'minima ut',1567421.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(169,'laboriosam dolores',247937.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(170,'sapiente odio',3826442.00,0,7,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(171,'similique dolorum',1662108.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(172,'corporis repudiandae',3922776.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(173,'placeat delectus',728578.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(174,'dolor voluptatum',4631679.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(175,'aut laboriosam',4173932.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(176,'architecto rerum',3170486.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(177,'sit ea',927851.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(178,'ducimus est',2084345.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(179,'aliquid dolorem',2693030.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(180,'excepturi est',479433.00,0,8,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(181,'fugit dolore',1324867.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(182,'commodi error',4445399.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(183,'sequi qui',830500.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(184,'reiciendis veniam',2268367.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(185,'numquam sint',1756670.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(186,'earum assumenda',1754898.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(187,'ut veniam',4746051.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(188,'repudiandae voluptatem',2205367.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(189,'tenetur dolorem',4505264.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(190,'iusto rerum',3839185.00,0,9,'2025-10-17 19:10:36','2025-10-17 19:10:36'),(191,'unde voluptates',386279.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37'),(192,'maxime ea',3035659.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37'),(193,'nisi amet',3430499.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37'),(194,'incidunt temporibus',1505983.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37'),(195,'velit eum',829263.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37'),(196,'tenetur quasi',718780.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37'),(197,'tenetur tempora',3912168.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37'),(198,'eius incidunt',2483866.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37'),(199,'sed nam',1505657.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37'),(200,'voluptas omnis',3125219.00,0,10,'2025-10-17 19:10:37','2025-10-17 19:10:37');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_user_id_unique` (`user_id`),
  CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'123 Nguyễn Trãi, Q.1, HCM','0909123456','2025-10-17 19:05:29','2025-10-17 19:05:29');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Sienna Cormier','rosalind.welch@example.com','2025-10-17 18:46:35','2025-10-17 18:46:35'),(2,'Audie O\'Reilly','maymie.kertzmann@example.net','2025-10-17 18:46:35','2025-10-17 18:46:35'),(3,'Orlando Ortiz','mckenzie.loraine@example.com','2025-10-17 18:46:35','2025-10-17 18:46:35'),(4,'Elisa Schinner','emile.jaskolski@example.com','2025-10-17 18:46:35','2025-10-17 18:46:35'),(5,'Calista Nolan','hayes.cleveland@example.net','2025-10-17 18:46:35','2025-10-17 18:46:35'),(6,'Mrs. Janice Wisoky','daniel.vance@example.net','2025-10-17 18:46:35','2025-10-17 18:46:35'),(7,'Demario Morar','greenholt.tianna@example.net','2025-10-17 18:46:35','2025-10-17 18:46:35'),(8,'Talon Johnson','xschultz@example.org','2025-10-17 18:46:35','2025-10-17 18:46:35'),(9,'Mr. Crawford Stoltenberg','rhand@example.net','2025-10-17 18:46:35','2025-10-17 18:46:35'),(10,'Fredy Adams','hermiston.eloy@example.com','2025-10-17 18:46:35','2025-10-17 18:46:35');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User','test@example.com','2025-10-17 18:46:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qVnIr9dana','2025-10-17 18:46:35','2025-10-17 18:46:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'lab8'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-18 10:31:06
