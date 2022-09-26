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
-- Table structure for table `popular_dish_ingredients`
--

DROP TABLE IF EXISTS `popular_dish_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popular_dish_ingredients` (
  `dish_id` int NOT NULL,
  `id_ingredients` int NOT NULL,
  KEY `fk_popular_dish_has_ingredients_ingredients1_idx` (`id_ingredients`),
  KEY `fk_popular_dish_has_ingredients_popular_dish1_idx` (`dish_id`),
  CONSTRAINT `fk_popular_dish_has_ingredients_ingredients1` FOREIGN KEY (`id_ingredients`) REFERENCES `ingredients` (`id_ingredients`),
  CONSTRAINT `fk_popular_dish_has_ingredients_popular_dish1` FOREIGN KEY (`dish_id`) REFERENCES `popular_dish` (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popular_dish_ingredients`
--

LOCK TABLES `popular_dish_ingredients` WRITE;
/*!40000 ALTER TABLE `popular_dish_ingredients` DISABLE KEYS */;
INSERT INTO `popular_dish_ingredients` VALUES (111,1112),(111,1112),(111,1113),(112,1102),(112,1108),(113,1109),(114,1101),(114,1111),(115,1104),(115,1112),(116,1105),(117,1107),(117,1114),(118,1110),(118,1101),(118,1109),(119,1110),(119,1103),(120,1106),(121,1108),(121,1112),(122,1107),(122,1108),(122,1110),(123,1115),(123,1102),(124,1105),(124,1114),(125,1113),(125,1115),(125,1101);
/*!40000 ALTER TABLE `popular_dish_ingredients` ENABLE KEYS */;
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
