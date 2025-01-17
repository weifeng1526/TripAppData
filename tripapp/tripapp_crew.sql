-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: tripapp
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crew` (
  `crew_no` int NOT NULL AUTO_INCREMENT,
  `sch_no` int NOT NULL,
  `mem_no` int DEFAULT NULL,
  `crew_peri` tinyint DEFAULT NULL,
  `crew_ide` tinyint DEFAULT NULL,
  `crew_name` varchar(10) DEFAULT NULL,
  `crew_invited` tinyint DEFAULT '0',
  PRIMARY KEY (`crew_no`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES (1,1,1,2,2,'台北之旅',3),(2,1,2,1,1,'台北之旅',3),(3,2,1,2,2,'日本東京',3),(4,2,3,1,1,'日本東京',3),(5,2,4,1,1,'日本東京',3),(6,3,1,2,2,'台中探險',3),(7,3,5,1,1,'台中探險',3),(8,4,1,2,2,'沖繩海灘陽光假期',3),(9,5,1,2,2,'富士山健行挑戰',3),(10,6,1,2,2,'名古屋主題樂園與購物',3),(11,7,1,2,2,'奈良鹿與自然探索',3),(12,8,5,2,2,'台南古城美食之旅',3),(13,8,1,1,1,'台南古城美食之旅',3),(14,8,2,1,1,'台南古城美食之旅',3),(15,8,3,1,1,'台南古城美食之旅',3),(16,8,4,1,1,'台南古城美食之旅',3),(17,8,6,1,1,'台南古城美食之旅',3),(18,8,7,1,1,'台南古城美食之旅',3);
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 12:02:02
