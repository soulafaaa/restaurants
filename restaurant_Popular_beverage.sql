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
-- Table structure for table `Popular_beverage`
--

DROP TABLE IF EXISTS `Popular_beverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Popular_beverage` (
  `restaurant_id` int NOT NULL,
  `beverage_id` int NOT NULL,
  KEY `fk_restaurant_has_beverage_beverage1_idx` (`beverage_id`),
  KEY `fk_restaurant_has_beverage_restaurant1_idx` (`restaurant_id`),
  CONSTRAINT `fk_restaurant_has_beverage_beverage1` FOREIGN KEY (`beverage_id`) REFERENCES `beverage` (`beverage_id`),
  CONSTRAINT `fk_restaurant_has_beverage_restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Popular_beverage`
--

LOCK TABLES `Popular_beverage` WRITE;
/*!40000 ALTER TABLE `Popular_beverage` DISABLE KEYS */;
INSERT INTO `Popular_beverage` VALUES (1,5461),(1,5461),(1,5463),(1,5464),(2,5461),(2,5470),(3,5461),(4,5462),(5,5473),(6,5461),(6,5475),(7,5467),(7,5469),(8,5461),(9,5466),(9,5468),(10,5471),(10,5472),(11,5473),(11,5461),(11,5474),(12,5461),(12,5465),(13,5475),(14,5463),(14,5471),(15,5461),(15,5466),(15,5474),(16,5471),(20,5464);
/*!40000 ALTER TABLE `Popular_beverage` ENABLE KEYS */;
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
