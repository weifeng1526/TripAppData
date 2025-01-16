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
-- Table structure for table `dst_record`
--

DROP TABLE IF EXISTS `dst_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dst_record` (
  `dr_no` int NOT NULL AUTO_INCREMENT,
  `mem_no` int NOT NULL,
  `dst_no` int NOT NULL,
  `dr_text` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`dr_no`),
  KEY `dstrecord_dstno_FK` (`dst_no`),
  KEY `dstrecord_memno_FK` (`mem_no`),
  CONSTRAINT `dstrecord_dstno_FK` FOREIGN KEY (`dst_no`) REFERENCES `dest` (`dst_no`),
  CONSTRAINT `dstrecord_memno_FK` FOREIGN KEY (`mem_no`) REFERENCES `member` (`mem_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dst_record`
--

LOCK TABLES `dst_record` WRITE;
/*!40000 ALTER TABLE `dst_record` DISABLE KEYS */;
INSERT INTO `dst_record` VALUES (1,1,1,'101好高'),(2,1,46,NULL),(3,1,41,NULL),(4,1,2,NULL),(5,1,4,NULL),(6,1,42,'\n'),(7,1,44,NULL),(8,1,48,NULL),(9,1,61,NULL),(10,1,43,NULL);
/*!40000 ALTER TABLE `dst_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-16 14:20:09
