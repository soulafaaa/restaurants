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
-- Table structure for table `beverage`
--

DROP TABLE IF EXISTS `beverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beverage` (
  `beverage_id` int NOT NULL,
  `beverage_name` varchar(50) DEFAULT NULL,
  `beverage_description` varchar(100) DEFAULT NULL,
  `contain_alcohol` int DEFAULT NULL,
  PRIMARY KEY (`beverage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beverage`
--

LOCK TABLES `beverage` WRITE;
/*!40000 ALTER TABLE `beverage` DISABLE KEYS */;
INSERT INTO `beverage` VALUES (5461,'Coke','a carbonated soft drink manufactured by the Coca-Cola Company',0),(5462,'Fresh Lemonade','sweetened lemon juice mixed with water',0),(5463,'Hosmer Mountain Sodas','Root Beer Birch Beer Orange Ginger Beer Strawberry Seltzer Ginger ale',1),(5464,'Aviation','Gin Maraschino Liquor Creme de Violette Lemon Juice',1),(5465,'SUNBURNED IN SICILY','Ilegal Mezcal Joven Espolon Tequila Blanco Amaro Averna Prickly Pear Persian Lime Granita',1),(5466,'Berry Iced Tea','Made to Order with House Made Berry Sauce',0),(5467,'Hot and Dirty','Vodka Olive juice Hot Sauce',1),(5468,'Long Island Iced Tea','Light rum Vodka Tequila Gin',1),(5469,'Pina Colada','White rum Coconut cream Pineapple juice',1),(5470,'Orange Blush','Milk sprite lime orange syrup',0),(5471,'Strawberry Sensation','Milk sprite lime strawberry syrup',0),(5472,'Mocha','Mocha Milk Choco Syrup',0),(5473,'Latte','Latte Milk Choco Syrup',0),(5474,'Science','Cynar Lemon Orange Angostura bitters Red wine',1),(5475,'Midnight','Blanco tequila Pink guava Pineapple Lime Bruleed lime',1);
/*!40000 ALTER TABLE `beverage` ENABLE KEYS */;
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
