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
-- Table structure for table `popular_dish`
--

DROP TABLE IF EXISTS `popular_dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popular_dish` (
  `dish_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `dish_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dish_id`),
  KEY `fk_entree_restaurant_idx` (`restaurant_id`),
  CONSTRAINT `fk_entree_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popular_dish`
--

LOCK TABLES `popular_dish` WRITE;
/*!40000 ALTER TABLE `popular_dish` DISABLE KEYS */;
INSERT INTO `popular_dish` VALUES (111,1,'Jumbo Lump Crab Cake'),(112,1,'Duroc Pork Chop'),(113,2,'Crisp Rostated Chicken'),(114,3,'Steak Frites'),(115,4,'Chicken Fettuccine'),(116,5,'Shrimp Spaghrttni'),(117,6,'Grilled Steak'),(118,6,'French Dip'),(119,7,'Roast Turkey'),(120,8,'Buffalo Chicken'),(121,9,'Cheeseburger'),(122,11,'Ebbitt Oyster'),(123,12,'Glazed Meatloaf'),(124,15,'Segundo Pizza'),(125,18,'Sedgwick');
/*!40000 ALTER TABLE `popular_dish` ENABLE KEYS */;
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
