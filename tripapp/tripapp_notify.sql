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
-- Table structure for table `notify`
--

DROP TABLE IF EXISTS `notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notify` (
  `ntf_no` int NOT NULL AUTO_INCREMENT,
  `nttp_no` int NOT NULL,
  `ntf_sdr` int NOT NULL,
  `ntf_rcv` int NOT NULL,
  `ntf_msg` varchar(200) DEFAULT NULL,
  `ntf_time` datetime DEFAULT NULL,
  `ntf_read` tinyint(1) DEFAULT NULL,
  `crew_no` int NOT NULL,
  PRIMARY KEY (`ntf_no`),
  KEY `notify_nttpno_FK` (`nttp_no`),
  KEY `notify_ntfsdr_FK` (`ntf_sdr`),
  KEY `notify_ntfrcv_FK` (`ntf_rcv`),
  KEY `notify_crewno_FK` (`crew_no`),
  CONSTRAINT `notify_crewno_FK` FOREIGN KEY (`crew_no`) REFERENCES `crew` (`crew_no`),
  CONSTRAINT `notify_ntfrcv_FK` FOREIGN KEY (`ntf_rcv`) REFERENCES `member` (`mem_no`),
  CONSTRAINT `notify_ntfsdr_FK` FOREIGN KEY (`ntf_sdr`) REFERENCES `member` (`mem_no`),
  CONSTRAINT `notify_nttpno_FK` FOREIGN KEY (`nttp_no`) REFERENCES `notify_type` (`nttp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notify`
--

LOCK TABLES `notify` WRITE;
/*!40000 ALTER TABLE `notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `notify` ENABLE KEYS */;
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
