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
-- Table structure for table `cuisine`
--

DROP TABLE IF EXISTS `cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuisine` (
  `cuisine_id` int NOT NULL,
  `cuisine_name` varchar(45) NOT NULL,
  `cuisine_description` varchar(500) NOT NULL,
  PRIMARY KEY (`cuisine_id`),
  UNIQUE KEY `cusine_id_UNIQUE` (`cuisine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuisine`
--

LOCK TABLES `cuisine` WRITE;
/*!40000 ALTER TABLE `cuisine` DISABLE KEYS */;
INSERT INTO `cuisine` VALUES (11111,'American','oods born out of Down South traditions have become American standards'),(11112,'Fine dinning','a restaurant experience that is of a higher quality and greater formality compared to the experience at a casual dining restaurant'),(11113,'Italian','a ristorante is code for a full-service restaurant complete with a sommelier or wine expert'),(11114,'Restaurant','A normal restaurant without specific feature'),(11115,'Pizza','a place where pizzas are made sold or eaten'),(11116,'Thai','lightly prepared dishes with strong aromatic components and a spicy edge'),(11117,'Peruvian','Peruvian food is often referred to as Criolla or Creole food'),(11118,'Salvadoran','Salvadoran cuisine is a style of cooking derived from the nation of El Salvador'),(11119,'Middle Eastern','fragrant and copious spices nuts olive oil and creamy elements'),(11120,'Southern','elements of Southern cuisine have spread to other parts the United States'),(11121,'New American','a type of fusion cuisine which assimilates flavors from the melting pot of traditional American cooking techniques mixed with foreign and sometimes molecular gastronomy components'),(11122,'Seafood','a restaurant that specializes in seafood cuisine and seafood dishes, such as fish and shellfish'),(11123,'Brazilian','all you can eat style of restaurant service in Brazilian restaurants'),(11124,'Laotian','a soup dish a grilled dish a sauce greens and a stew or mixed dish koy or laap'),(11125,'Mediterranean','made up of plant food and minimally processed staples where herbs and spices are essential ingredients');
/*!40000 ALTER TABLE `cuisine` ENABLE KEYS */;
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
