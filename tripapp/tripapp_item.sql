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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_no` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(10) NOT NULL,
  `item_type` tinyint DEFAULT '0',
  PRIMARY KEY (`item_no`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'上衣',1),(2,'長褲',1),(3,'外套',1),(4,'鞋子',1),(5,'襪子',1),(6,'手套',1),(7,'運動鞋',1),(8,'內衣',1),(9,'內褲',1),(10,'圍巾',1),(11,'背包',2),(12,'太陽眼鏡',2),(13,'雨傘',2),(14,'水壺',2),(15,'手錶',2),(16,'隱形眼鏡',2),(17,'眼鏡盒',2),(18,'鑰匙',2),(19,'梳子',3),(20,'手帕',3),(21,'香水',3),(22,'衛生紙',3),(23,'濕紙巾',3),(24,'吹風機',3),(25,'筆',3),(26,'牙刷',4),(27,'洗髮精',4),(28,'沐浴乳',4),(29,'潤髮乳',4),(30,'牙膏',4),(31,'毛巾',4),(32,'洗面乳',4),(33,'刮鬍刀',4),(34,'乳液',5),(35,'口紅',5),(36,'化妝包',5),(37,'護手霜',5),(38,'防曬乳',5),(39,'卸妝油',5),(40,'化妝水',5),(41,'護唇膏',5),(42,'手機',6),(43,'充電線',6),(44,'平板',6),(45,'筆電',6),(46,'插頭轉接器',6),(47,'行動電源',6),(48,'延長線',6),(49,'耳機',6),(50,'止痛藥',7),(51,'感冒藥',7),(52,'ＯＫ蹦',7),(53,'退燒藥',7),(54,'胃藥',7),(55,'防蚊液',7),(56,'錢包',8),(57,'外幣',8),(58,'護照',8),(59,'筆記本',8),(60,'證件',8),(61,'登機證',8),(62,'旅行枕',0),(63,'摺疊椅',0),(64,'行李秤',0),(65,'便攜水壺',0),(66,'摺疊購物袋',0);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-16 14:20:08
