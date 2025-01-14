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
-- Table structure for table `poi`
--

DROP TABLE IF EXISTS `poi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poi` (
  `poi_no` int NOT NULL AUTO_INCREMENT,
  `poi_add` varchar(500) DEFAULT NULL,
  `poi_name` varchar(50) DEFAULT NULL,
  `poi_lng` decimal(10,7) NOT NULL,
  `poi_lat` decimal(10,7) NOT NULL,
  `poi_lab` varchar(100) DEFAULT NULL,
  `poi_pic` varchar(600) DEFAULT NULL,
  `poi_rat` double DEFAULT NULL,
  `poi_hno` varchar(20) DEFAULT NULL,
  `poi_phon` varchar(20) DEFAULT NULL,
  `poi_bs` time DEFAULT NULL,
  `poi_nbs` time DEFAULT NULL,
  `poi_bd` varchar(200) DEFAULT NULL,
  `poi_like` tinyint DEFAULT NULL,
  PRIMARY KEY (`poi_no`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poi`
--

LOCK TABLES `poi` WRITE;
/*!40000 ALTER TABLE `poi` DISABLE KEYS */;
INSERT INTO `poi` VALUES (1,'台中市中區中山路20號','宮原眼科',120.6843070,24.1372860,'甜點, 打卡','miyahara.jpg',4.6,NULL,NULL,'10:00:00','22:00:00','老街上的文創甜點店',1),(2,'台中市西區民權路','草悟道',120.6608180,24.1512180,'散步, 拍照','calligraphy_greenway.jpg',4.5,NULL,NULL,'00:00:00','23:59:59','藝術氛圍濃厚的步道',1),(3,'台中市西區公益路68號','台中勤美誠品',120.6615040,24.1515830,'購物, 美食','eslite_cm.jpg',4.6,NULL,'04-2328-1234','11:00:00','22:00:00','時尚文創購物地點',1),(4,'台中市南屯區春安路56號','彩虹眷村',120.6216350,24.1301560,'藝術, 拍照','rainbow_village.jpg',4.5,NULL,NULL,'08:00:00','18:00:00','繽紛創意的藝術村',1),(5,'台中市西屯區福星路','逢甲夜市',120.6426470,24.1762860,'美食, 夜市','fengjia.jpg',4.7,NULL,NULL,'17:00:00','00:00:00','台中知名夜市',1),(6,'台中市清水區美堤街','高美濕地',120.5561530,24.3131560,'自然, 景觀','gaomei.jpg',4.8,NULL,NULL,'05:00:00','18:30:00','濕地生態觀賞',1),(7,'台中市新社區中興嶺','薰衣草森林',120.8476650,24.2103220,'放鬆, 拍照','lavender_forest.jpg',4.6,NULL,'04-2581-1000','09:00:00','18:00:00','浪漫自然景點',1),(8,'台中市北區育才北路','一中街商圈',120.6838890,24.1532560,'購物, 美食','yizhong.jpg',4.5,NULL,NULL,'10:00:00','22:00:00','學生愛逛的商圈',1),(9,'台中市北區館前路1號','科學博物館',120.6628430,24.1574620,'科普, 教育','science_museum.jpg',4.8,NULL,'04-2322-6940','09:00:00','17:00:00','自然與科學探索',1),(10,'台北市信義區市府路45號','台北101',121.5654170,25.0339680,'地標, 景點','taipei101.jpg',4.7,NULL,'02-8101-7777','11:00:00','21:30:00','台北地標建築',1),(11,'台北市信義區松山路','象山',121.5730280,25.0271740,'健行, 拍照','xiangshan.jpg',4.8,NULL,NULL,'00:00:00','23:59:59','台北市區的健行步道',1),(12,'台北市中正區中山南路21號','中正紀念堂',121.5193010,25.0367980,'歷史, 文化','cksm.jpg',4.6,NULL,'02-2343-1100','09:00:00','18:00:00','台灣文化象徵',1),(13,'台北市士林區文林路','士林夜市',121.5240770,25.0875700,'美食, 夜市','shilin.jpg',4.7,NULL,NULL,'17:00:00','00:00:00','台北知名夜市',1),(14,'台北市北投區竹子湖路1-20號','陽明山國家公園',121.5556180,25.1661130,'自然, 登山','yangmingshan.jpg',4.8,NULL,NULL,'00:00:00','23:59:59','壯麗的自然景觀',1),(15,'台北市北投區中山路2號','地熱谷',121.5017660,25.1377830,'溫泉, 景點','thermal_valley.jpg',4.5,NULL,NULL,'09:00:00','17:00:00','北投地熱名勝',1),(16,'台北市士林區至善路二段221號','故宮博物院',121.5484920,25.1024050,'文物, 歷史','national_palace.jpg',4.9,NULL,'02-2881-2021','09:00:00','17:00:00','世界知名文物館藏',1),(17,'台北市士林區中山北路5段60號','士林官邸',121.5226340,25.0956540,'歷史, 園藝','shilin_residence.jpg',4.6,NULL,NULL,'09:00:00','17:00:00','歷史與花園景觀',1),(18,'台北市北投區中山路2號','北投溫泉博物館',121.5017660,25.1377830,'溫泉, 博物館','beitou_museum.jpg',4.5,NULL,NULL,'09:00:00','17:00:00','北投溫泉文化展示',1),(19,'台北市大同區延平北路大稻埕','大稻埕碼頭',121.5127010,25.0571830,'景觀, 商圈','dadaocheng.jpg',4.4,NULL,NULL,'00:00:00','23:59:59','古早風情與商圈',1),(20,'台北市萬華區峨嵋街36號','西門町',121.5064980,25.0421410,'購物, 娛樂','ximen.jpg',4.5,NULL,NULL,'00:00:00','23:59:59','台北熱鬧商圈',1),(21,'大阪府大阪市中央區道頓堀','道頓堀',135.5013000,34.6687000,'觀光、餐飲','dotonbori.jpg',4.5,NULL,'06-1234-5678',NULL,NULL,NULL,50),(22,'大阪府大阪市北區梅田','梅田地鐵站',135.4982000,34.7025000,'交通樞紐','umeda_station.jpg',4.3,NULL,'06-8765-4321',NULL,NULL,NULL,30),(23,'大阪府大阪市此花區櫻島2丁目1-33','環球影城',135.4322000,34.6654000,'遊樂園','universal_studios.jpg',4.8,NULL,'06-7890-1234',NULL,NULL,NULL,100),(24,'大阪府大阪市浪速區難波','難波飯店',135.5010000,34.6646000,'住宿','namba_hotel.jpg',4,NULL,'06-3456-7890',NULL,NULL,NULL,20),(25,'大阪府大阪市中央區心齋橋','心齋橋',135.5017000,34.6721000,'購物','shinsaibashi.jpg',4.4,NULL,'06-9876-5432',NULL,NULL,NULL,70),(26,'大阪府大阪市中央區道頓堀','道頓堀',135.5013000,34.6687000,'觀光、餐飲','dotonbori.jpg',4.5,NULL,'06-1234-5678',NULL,NULL,NULL,50),(27,'大阪府大阪市中央區日本橋','黑門市場',135.5065000,34.6651000,'市場','kuromon_market.jpg',4.6,NULL,'06-5678-9101',NULL,NULL,NULL,60),(28,'大阪府大阪市天王寺區悲田院町','天王寺車站',135.5195000,34.6551000,'交通樞紐','tennoji_station.jpg',4.2,NULL,'06-4321-8765',NULL,NULL,NULL,40),(29,'大阪府大阪市淀川區西中島','新大阪旅館',135.4992000,34.7301000,'住宿','shin_osaka_inn.jpg',4.1,NULL,'06-1234-5678',NULL,NULL,NULL,25),(30,'大阪府大阪市中央區心齋橋','心齋橋',135.5017000,34.6721000,'購物','shinsaibashi.jpg',4.4,NULL,'06-9876-5432',NULL,NULL,NULL,70),(31,'台中市中區中山路20號','宮原眼科',120.6843070,24.1372860,'甜點, 打卡','miyahara.jpg',4.6,NULL,NULL,'10:00:00','22:00:00','老街上的文創甜點店',1),(32,'台中市西區民權路','草悟道',120.6608180,24.1512180,'散步, 拍照','calligraphy_greenway.jpg',4.5,NULL,NULL,'00:00:00','23:59:59','藝術氛圍濃厚的步道',1),(33,'台中市西區公益路68號','台中勤美誠品',120.6615040,24.1515830,'購物, 美食','eslite_cm.jpg',4.6,NULL,'04-2328-1234','11:00:00','22:00:00','時尚文創購物地點',1),(34,'台中市南屯區春安路56號','彩虹眷村',120.6216350,24.1301560,'藝術, 拍照','rainbow_village.jpg',4.5,NULL,NULL,'08:00:00','18:00:00','繽紛創意的藝術村',1),(35,'台中市西屯區福星路','逢甲夜市',120.6426470,24.1762860,'美食, 夜市','fengjia.jpg',4.7,NULL,NULL,'17:00:00','00:00:00','台中知名夜市',1),(36,'台中市清水區美堤街','高美濕地',120.5561530,24.3131560,'自然, 景觀','gaomei.jpg',4.8,NULL,NULL,'05:00:00','18:30:00','濕地生態觀賞',1),(37,'台中市新社區中興嶺','薰衣草森林',120.8476650,24.2103220,'放鬆, 拍照','lavender_forest.jpg',4.6,NULL,'04-2581-1000','09:00:00','18:00:00','浪漫自然景點',1),(38,'台中市北區育才北路','一中街商圈',120.6838890,24.1532560,'購物, 美食','yizhong.jpg',4.5,NULL,NULL,'10:00:00','22:00:00','學生愛逛的商圈',1),(39,'台中市北區館前路1號','科學博物館',120.6628430,24.1574620,'科普, 教育','science_museum.jpg',4.8,NULL,'04-2322-6940','09:00:00','17:00:00','自然與科學探索',1),(40,'台北市信義區市府路45號','台北101',121.5654170,25.0339680,'地標, 景點','taipei101.jpg',4.7,NULL,'02-8101-7777','11:00:00','21:30:00','台北地標建築',1),(41,'台北市信義區松山路','象山',121.5730280,25.0271740,'健行, 拍照','xiangshan.jpg',4.8,NULL,NULL,'00:00:00','23:59:59','台北市區的健行步道',1),(42,'台北市中正區中山南路21號','中正紀念堂',121.5193010,25.0367980,'歷史, 文化','cksm.jpg',4.6,NULL,'02-2343-1100','09:00:00','18:00:00','台灣文化象徵',1),(43,'台北市士林區文林路','士林夜市',121.5240770,25.0875700,'美食, 夜市','shilin.jpg',4.7,NULL,NULL,'17:00:00','00:00:00','台北知名夜市',1),(44,'台北市北投區竹子湖路1-20號','陽明山國家公園',121.5556180,25.1661130,'自然, 登山','yangmingshan.jpg',4.8,NULL,NULL,'00:00:00','23:59:59','壯麗的自然景觀',1),(45,'台北市北投區中山路2號','地熱谷',121.5017660,25.1377830,'溫泉, 景點','thermal_valley.jpg',4.5,NULL,NULL,'09:00:00','17:00:00','北投地熱名勝',1),(46,'台北市士林區至善路二段221號','故宮博物院',121.5484920,25.1024050,'文物, 歷史','national_palace.jpg',4.9,NULL,'02-2881-2021','09:00:00','17:00:00','世界知名文物館藏',1),(47,'台北市士林區中山北路5段60號','士林官邸',121.5226340,25.0956540,'歷史, 園藝','shilin_residence.jpg',4.6,NULL,NULL,'09:00:00','17:00:00','歷史與花園景觀',1),(48,'台北市北投區中山路2號','北投溫泉博物館',121.5017660,25.1377830,'溫泉, 博物館','beitou_museum.jpg',4.5,NULL,NULL,'09:00:00','17:00:00','北投溫泉文化展示',1),(49,'台北市大同區延平北路大稻埕','大稻埕碼頭',121.5127010,25.0571830,'景觀, 商圈','dadaocheng.jpg',4.4,NULL,NULL,'00:00:00','23:59:59','古早風情與商圈',1),(50,'台北市萬華區峨嵋街36號','西門町',121.5064980,25.0421410,'購物, 娛樂','ximen.jpg',4.5,NULL,NULL,'00:00:00','23:59:59','台北熱鬧商圈',1);
/*!40000 ALTER TABLE `poi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-15  0:04:04
