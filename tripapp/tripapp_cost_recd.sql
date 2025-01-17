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
-- Table structure for table `cost_recd`
--

DROP TABLE IF EXISTS `cost_recd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cost_recd` (
  `cr_cost_no` int NOT NULL AUTO_INCREMENT,
  `sch_no` int NOT NULL,
  `cr_cost_type` tinyint NOT NULL,
  `cr_cost_item` varchar(20) DEFAULT NULL,
  `cr_cost_price` decimal(10,2) NOT NULL,
  `cr_paid_by` int NOT NULL,
  `cr_paid_by_name` varchar(20) DEFAULT NULL,
  `cr_cost_time` varchar(20) DEFAULT NULL,
  `cr_cost_loc` varchar(20) DEFAULT NULL,
  `cr_cost_pex` tinyint(1) DEFAULT '1',
  `cr_cur` varchar(10) DEFAULT NULL,
  `cr_cur_record` varchar(10) NOT NULL,
  PRIMARY KEY (`cr_cost_no`),
  KEY `costrecd_schno_FK` (`sch_no`),
  CONSTRAINT `costrecd_schno_FK` FOREIGN KEY (`sch_no`) REFERENCES `sched` (`sch_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_recd`
--

LOCK TABLES `cost_recd` WRITE;
/*!40000 ALTER TABLE `cost_recd` DISABLE KEYS */;
INSERT INTO `cost_recd` VALUES (1,1,1,'午餐',500.00,1,'rubyyyyyer','Dec 5, 2024','101',0,'TWD','TWD'),(2,1,2,'地鐵',200.00,2,'sue','Dec 7, 2024','台北車站',1,'TWD','TWD'),(3,1,3,'兒童樂園門票',2500.00,1,'rubyyyyyer','Dec 7, 2024','貓空纜車',0,'TWD','TWD'),(4,1,4,'飯店住宿',3000.00,1,'rubyyyyyer','Dec 8, 2024','深坑',1,'TWD','TWD'),(5,1,5,'伴手禮',1000.00,1,'rubyyyyyer','Dec 9, 2024','淡水',0,'TWD','TWD'),(6,1,5,'明信片*10',200.00,1,'rubyyyyyer','Dec 9, 2024','淡水',0,'TWD','TWD'),(7,1,5,'磁鐵*10',500.00,1,'rubyyyyyer','Dec 9, 2024','淡水',0,'TWD','TWD'),(8,1,1,'阿給',4800.00,1,'sue','Dec 9, 2024','淡水',0,'TWD','TWD'),(9,2,1,'章魚燒',300.00,3,'aaron','Dec 31, 2024','道頓堀',0,'JPY','JPY'),(10,2,2,'電車',150.00,3,'aaron','Jan 2, 2025','天王寺',1,'JPY','JPY'),(11,2,4,'旅館住宿',2500.00,3,'aaron','Jan 2, 2025','新大阪',0,'JPY','JPY'),(12,2,1,'晚餐',600.00,4,'ashley','Jan 3, 2025','黑門市場',1,'JPY','JPY'),(13,2,5,'藥妝',800.00,1,'rubyyyyyer','Jan 5, 2025','心齋橋',0,'JPY','JPY'),(14,2,6,'買鹿的餅乾',200.00,1,'rubyyyyyer','Jan 6, 2025','奈良',0,'JPY','JPY'),(15,5,4,'住宿',3000.00,1,'rubyyyyyer','Jan 7, 2025','奈良',0,'JPY','JPY'),(16,5,5,'磁鐵',80.00,1,'rubyyyyyer','Jan 7, 2025','奈良',0,'JPY','JPY');
/*!40000 ALTER TABLE `cost_recd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 10:57:59
