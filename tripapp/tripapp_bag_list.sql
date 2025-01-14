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
-- Table structure for table `bag_list`
--

DROP TABLE IF EXISTS `bag_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bag_list` (
  `bl_memno` int NOT NULL,
  `bl_schno` int NOT NULL,
  `bl_itemno` int NOT NULL,
  `bl_ready` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`bl_memno`,`bl_schno`,`bl_itemno`),
  KEY `baglist_itemno_FK` (`bl_itemno`),
  KEY `baglist_schno_FK` (`bl_schno`),
  CONSTRAINT `baglist_itemno_FK` FOREIGN KEY (`bl_itemno`) REFERENCES `item` (`item_no`),
  CONSTRAINT `baglist_memno_FK` FOREIGN KEY (`bl_memno`) REFERENCES `member` (`mem_no`),
  CONSTRAINT `baglist_schno_FK` FOREIGN KEY (`bl_schno`) REFERENCES `sched` (`sch_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bag_list`
--

LOCK TABLES `bag_list` WRITE;
/*!40000 ALTER TABLE `bag_list` DISABLE KEYS */;
INSERT INTO `bag_list` VALUES (1,1,1,1),(1,1,5,0),(1,1,8,1),(1,1,10,0),(1,1,12,1),(1,1,15,1),(1,1,18,0),(1,1,20,1),(1,1,22,0),(1,1,25,1),(1,1,28,1),(1,1,30,0),(1,1,32,1),(1,1,34,0),(1,1,36,1),(1,2,2,1),(1,2,4,0),(1,2,7,1),(1,2,9,0),(1,2,11,1),(1,2,13,0),(1,2,16,1),(1,2,18,0),(1,2,21,1),(1,2,23,0),(1,2,26,1),(1,2,28,0),(1,2,30,1),(1,2,32,1),(1,2,34,1),(1,2,36,0),(1,2,38,1),(1,3,3,1),(1,3,6,0),(1,3,9,1),(1,3,11,1),(1,3,14,0),(1,3,17,1),(1,3,19,1),(1,3,22,0),(1,3,24,1),(1,3,26,0),(1,3,28,1),(1,3,30,0),(1,3,32,1),(1,3,34,0),(1,3,36,1),(1,3,38,1),(1,3,40,1),(1,3,42,0),(1,3,44,1),(1,4,5,1),(1,4,8,0),(1,4,12,1),(1,4,15,1),(1,4,18,1),(1,4,21,0),(1,4,23,1),(1,4,25,0),(1,4,28,1),(1,4,30,1),(1,4,32,0),(1,4,35,1),(1,4,37,1),(1,4,39,0),(1,4,41,1),(1,4,43,1),(1,4,45,0),(1,4,47,1),(1,4,49,0),(1,4,51,1),(1,4,53,1),(1,4,55,0),(1,5,2,1),(1,5,4,0),(1,5,7,1),(1,5,10,0),(1,5,13,1),(1,5,16,0),(1,5,18,1),(1,5,20,0),(1,5,22,1),(1,5,24,0),(1,5,26,1),(1,5,28,0),(1,5,30,1),(1,5,32,1),(1,5,34,1),(1,5,36,0),(1,5,38,1),(1,5,40,1),(1,5,42,0),(1,5,44,1),(1,5,46,0),(1,5,48,1),(1,5,50,1),(1,5,52,1),(1,5,54,0),(1,6,1,0),(1,6,4,1),(1,6,8,0),(1,6,11,1),(1,6,14,0),(1,6,16,1),(1,6,19,0),(1,6,22,1),(1,6,24,1),(1,6,27,0),(1,6,30,1),(1,6,32,0),(1,6,34,1),(1,6,37,0),(1,6,40,1),(1,6,42,0),(1,6,44,1),(1,6,46,0),(1,6,48,1),(1,6,50,0),(1,6,52,1),(1,6,54,0),(1,7,3,1),(1,7,6,0),(1,7,9,1),(1,7,12,0),(1,7,15,1),(1,7,17,0),(1,7,20,1),(1,7,23,0),(1,7,26,1),(1,7,29,0),(1,7,32,1),(1,7,34,0),(1,7,36,1),(1,7,38,0),(1,7,40,1),(1,7,42,0),(1,7,44,1),(1,7,46,0),(1,7,48,1),(1,7,50,0);
/*!40000 ALTER TABLE `bag_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-15  0:04:03
