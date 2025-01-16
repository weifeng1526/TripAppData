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
  PRIMARY KEY (`crew_no`),
  KEY `crew_schno_FK` (`sch_no`),
  KEY `crew_memno_FK` (`mem_no`),
  CONSTRAINT `crew_memno_FK` FOREIGN KEY (`mem_no`) REFERENCES `member` (`mem_no`),
  CONSTRAINT `crew_schno_FK` FOREIGN KEY (`sch_no`) REFERENCES `sched` (`sch_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES (1,1,1,1,1,'台北之旅',3),(2,1,2,2,2,'台北之旅',3),(3,2,1,2,2,'日本東京',3),(4,2,3,1,1,'日本東京',3),(5,2,4,1,1,'日本東京',3),(6,3,5,2,2,'台中探險',3),(7,3,1,1,1,'台中探險',3),(8,4,6,2,1,'東京美食之旅',3),(9,4,8,2,1,'東京美食之旅',3),(10,5,1,1,2,'大阪之旅',3);
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

-- Dump completed on 2025-01-16 15:43:34
