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
-- Table structure for table `reservation_details`
--

DROP TABLE IF EXISTS `reservation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_details` (
  `reservation_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `reservation_time` datetime NOT NULL,
  `guest_number` int NOT NULL,
  `special occasion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `fk_reservation_details_restaurant1_idx` (`restaurant_id`),
  KEY `fk_reservation_details_customer1_idx` (`customer_id`),
  CONSTRAINT `fk_reservation_details_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_reservation_details_restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_details`
--

LOCK TABLES `reservation_details` WRITE;
/*!40000 ALTER TABLE `reservation_details` DISABLE KEYS */;
INSERT INTO `reservation_details` VALUES (1,1,1,'2020-08-16 17:00:00',4,'Baby seat'),(2,2,3,'2020-08-16 18:00:00',2,'Prefer a quite area'),(3,2,3,'2020-08-17 18:00:00',6,''),(4,3,5,'2020-08-16 17:30:00',2,''),(5,4,6,'2020-08-16 18:30:00',3,''),(6,5,7,'2020-08-16 17:30:00',6,''),(7,6,8,'2020-08-16 20:30:00',7,''),(8,6,9,'2020-08-18 21:30:00',2,''),(9,8,10,'2020-08-16 17:30:00',2,''),(10,9,11,'2020-08-16 19:00:00',4,''),(11,10,12,'2020-08-16 21:30:00',8,'Baby seat'),(12,13,14,'2020-08-16 21:30:00',2,''),(13,13,15,'2020-08-17 22:30:00',2,''),(14,18,15,'2020-08-18 12:30:00',2,''),(15,20,15,'2020-08-19 18:30:00',2,'');
/*!40000 ALTER TABLE `reservation_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 17:47:05
