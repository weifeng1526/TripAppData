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
-- Table structure for table `balance`
--

DROP TABLE IF EXISTS `balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balance` (
  `cost_no` int NOT NULL,
  `sch_no` int NOT NULL,
  `mem_no` int DEFAULT NULL,
  `cr_cost_splip` decimal(10,2) NOT NULL,
  KEY `balance_costno_FK` (`cost_no`),
  KEY `balance_schno_FK` (`sch_no`),
  KEY `balance_memno_FK` (`mem_no`),
  CONSTRAINT `balance_costno_FK` FOREIGN KEY (`cost_no`) REFERENCES `cost_recd` (`cr_cost_no`),
  CONSTRAINT `balance_memno_FK` FOREIGN KEY (`mem_no`) REFERENCES `member` (`mem_no`),
  CONSTRAINT `balance_schno_FK` FOREIGN KEY (`sch_no`) REFERENCES `sched` (`sch_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance`
--

LOCK TABLES `balance` WRITE;
/*!40000 ALTER TABLE `balance` DISABLE KEYS */;
INSERT INTO `balance` VALUES (10,2,-1,0.00),(1,1,1,500.00),(1,1,2,0.00),(10,2,-1,0.00),(2,1,1,0.00),(2,1,2,200.00),(10,2,-1,0.00),(3,1,1,2500.00),(3,1,2,0.00),(10,2,-1,0.00),(4,1,1,3000.00),(4,1,2,0.00),(10,2,-1,0.00),(5,1,1,1000.00),(5,1,2,0.00),(10,2,-1,0.00),(6,2,3,300.00),(6,2,4,0.00),(6,2,5,0.00),(10,2,-1,0.00),(7,2,3,150.00),(7,2,4,0.00),(7,2,5,0.00),(10,2,-1,0.00),(8,2,3,2500.00),(8,2,4,0.00),(8,2,5,0.00),(10,2,-1,0.00),(9,2,3,0.00),(9,2,4,600.00),(9,2,5,0.00),(10,2,-1,0.00),(10,2,3,0.00),(10,2,4,0.00),(10,2,5,800.00),(10,2,-1,0.00),(10,2,3,0.00),(10,2,4,0.00),(10,2,5,0.00);
/*!40000 ALTER TABLE `balance` ENABLE KEYS */;
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
