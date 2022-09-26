-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL,
  `restaurant_name` varchar(50) NOT NULL,
  `phone` int NOT NULL,
  `restaurant_rate` decimal(2,1) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `peak_time` time NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code_id` int NOT NULL,
  `id_delivery` int NOT NULL,
  `accessibility` int NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE KEY `idrestaurant_UNIQUE` (`restaurant_id`),
  KEY `fk_restaurant_delivery1_idx` (`id_delivery`),
  KEY `fk_zip_code_id_idx` (`zip_code_id`),
  CONSTRAINT `fk_restaurant_delivery1` FOREIGN KEY (`id_delivery`) REFERENCES `delivery` (`id_delivery`),
  CONSTRAINT `fk_zip_code_id` FOREIGN KEY (`zip_code_id`) REFERENCES `nighboohd_name_zip` (`zip_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Old Ebbitt Grill',2023474800,4.6,'08:00:00','22:00:00','12:30:00','675 15th St NW','Washington','DC',20005,1,1),(2,'The Capital Grille',2025464488,4.6,'17:00:00','22:00:00','19:30:00','107 D St NE','Washington','DC',20005,10,0),(3,'The Monocle Restaurant',2027376200,4.6,'16:00:00','22:00:00','16:00:00','601 Pennsylvania Avenue NW','Washington','DC',20004,3,1),(4,'Filomena Ristorante',2023388800,4.8,'15:00:00','22:00:00','17:00:00','1063 Wisconsin Ave NW','Washington','DC',20007,2,1),(5,'Rooster Owl',2029159004,4.7,'08:00:00','23:00:00','17:30:00','2436 14th St NW','Washington','DC',20009,3,0),(6,'The Dahey',2024501015,4.5,'17:00:00','21:00:00','18:00:00','122 Blagden Alley NW','Washington','DC',20001,7,0),(7,'All Purpose Shaw',2028496174,4.8,'10:00:00','22:00:00','18:00:00','1250 9th St NW','Washington','DC',20001,6,1),(8,'The Gold Kitchen',2028907433,4.7,'11:30:00','20:00:00','17:00:00','1370 H St NE','Washington','DC',20002,1,1),(9,'Seven Reasons',2024178563,4.6,'18:00:00','23:00:00','20:30:00','2208 14th St NW','Washington','DC',20009,3,0),(10,'Huacatay Restaurant',2027959940,4.6,'19:00:00','00:00:00','21:30:00','2314 4th St NE','Washington','DC',20002,3,0),(11,'Tortino Restaurant',2023125570,4.6,'11:00:00','20:00:00','12:30:00','1228 11th St NW','Washington','DC',20001,10,1),(12,'Little Serow',2026673245,4.6,'20:00:00','03:00:00','00:00:00','1511 17th St NW','Washington','DC',20036,4,0),(13,'Fiola',2026282888,4.8,'20:00:00','03:00:00','01:30:00','601 Pennsylvania Avenue NW','Washington','DC',20004,1,1),(14,'Ircias Kitchen Restaurant',2028084865,4.7,'12:00:00','15:00:00','12:30:00','3629 12th St NE','Washington','DC',20017,3,0),(15,'Maydan',2026758779,4.4,'10:00:00','22:00:00','18:00:00','1346 Florida Ave NW','Washington','DC',20009,3,0),(16,'Brookland Finest Bar and Kitchen',2026360050,4.4,'10:30:00','03:00:00','12:00:00','3126 12th St NE','Washington','DC',20017,1,1),(17,'Hitching Post Restaurant',2027261511,4.4,'18:00:00','22:00:00','20:30:00','200 Upshur St NW','Washington','DC',20011,9,1),(18,'Founding Farmers DC',2028228783,4.2,'11:00:00','15:00:00','13:00:00','1924 Pennsylvania Avenue NW','Washington','DC',20006,8,0),(19,'Bidwell Restaurant',2025470172,4.3,'17:30:00','23:00:00','19:30:00','1309 5th St NE','Washington','DC',20002,10,1),(20,'The Smith',2028684900,4.6,'16:00:00','22:00:00','19:00:00','901 F St NW','Washington','DC',20004,5,1);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 17:47:04
