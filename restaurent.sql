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
-- Temporary view structure for view `average_rating`
--

DROP TABLE IF EXISTS `average_rating`;
/*!50001 DROP VIEW IF EXISTS `average_rating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `average_rating` AS SELECT 
 1 AS `Neighbourhood Name`,
 1 AS `Average rating`,
 1 AS `Number of resturents in the Neighbourhood`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Temporary view structure for view `cusisne_count`
--

DROP TABLE IF EXISTS `cusisne_count`;
/*!50001 DROP VIEW IF EXISTS `cusisne_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cusisne_count` AS SELECT 
 1 AS `cuisine_name`,
 1 AS `Total number of Restaurants`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `customer_phone` varchar(16) NOT NULL,
  `customer_email` varchar(35) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Jiayuan','Shen','3013358073','shenjiayuan2000@gmail.com'),(2,'Kaleb','Afework','3014522092','kaef089@gmail.com'),(3,'Jason','Carlin','6029719047','jascar023@gmail.com'),(4,'Peter','Holmes','9178153885','petholm885@gmail.com'),(5,'Joseph','Kamara','4106652560','joskam256@gmail.com'),(6,'Striker','Andoh','2022268000','strand226@gmail.com'),(7,'Jack','Wiliams','4433028580','jacwilm@gmail.com'),(8,'Paula','Simmons','2027789472','oausim472@gmail.com'),(9,'Miranda','Canales','2028632338','mircan338@gmail.com'),(10,'Even','Gerard','2028787667','eveger667@gmail.com'),(11,'Rida','English','2029917523','rideng523@gmail.com'),(12,'Nikeet','Musabbir','2021128876','nikmus876@gmail.com'),(13,'Grace','Odedoyin','2023348710','graode710@gmail.com'),(14,'Paula','Tamale','2024527981','pautam981@gmail.com'),(15,'Hunter','Young','2026563422','hunyou422@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `id_delivery` int NOT NULL,
  `deliever_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_delivery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'uber eat'),(2,'DoorDash'),(3,'Yelp'),(4,'Postmates'),(5,'Grubhub'),(6,'Rappi'),(7,'Pandas'),(8,'Chowbus'),(9,'FanTuan'),(10,'do not offer delivery ');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `indoor_pizza_restaurant`
--

DROP TABLE IF EXISTS `indoor_pizza_restaurant`;
/*!50001 DROP VIEW IF EXISTS `indoor_pizza_restaurant`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `indoor_pizza_restaurant` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `seating_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id_ingredients` int NOT NULL,
  `ingredients_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_ingredients`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1101,'eggs'),(1102,'chicken'),(1103,'beef'),(1104,'lamb'),(1105,'potatoes'),(1106,'tomatoes '),(1107,'milk'),(1108,'cheese'),(1109,'bean'),(1110,'butter'),(1111,'sugar'),(1112,'oil'),(1113,'pork'),(1114,'garlic'),(1115,'corn');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nighboohd_name_zip`
--

DROP TABLE IF EXISTS `nighboohd_name_zip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nighboohd_name_zip` (
  `zip_code_id` int NOT NULL,
  `neighbourhood_name` varchar(45) NOT NULL,
  PRIMARY KEY (`zip_code_id`),
  UNIQUE KEY `zip_code_id_UNIQUE` (`zip_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nighboohd_name_zip`
--

LOCK TABLES `nighboohd_name_zip` WRITE;
/*!40000 ALTER TABLE `nighboohd_name_zip` DISABLE KEYS */;
INSERT INTO `nighboohd_name_zip` VALUES (20001,'Mt Vernon Square'),(20002,'Ivy City'),(20004,'Mall'),(20005,'Downtown'),(20006,'West End|Northwest'),(20007,'Spring Valley'),(20009,'Kalorama Height'),(20011,'Brightwood Park'),(20017,'North Michigan Park'),(20036,'Dupont Circlek');
/*!40000 ALTER TABLE `nighboohd_name_zip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `popular__dish_with_oil`
--

DROP TABLE IF EXISTS `popular__dish_with_oil`;
/*!50001 DROP VIEW IF EXISTS `popular__dish_with_oil`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `popular__dish_with_oil` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `dish_name`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `Restaurent_cusine`
--

DROP TABLE IF EXISTS `Restaurent_cusine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Restaurent_cusine` (
  `restaurant_id` int NOT NULL,
  `cuisine_id` int NOT NULL,
  KEY `cus_temp_idx` (`cuisine_id`),
  KEY `res_temp` (`restaurant_id`),
  CONSTRAINT `res_temp` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurent_cusine`
--

LOCK TABLES `Restaurent_cusine` WRITE;
/*!40000 ALTER TABLE `Restaurent_cusine` DISABLE KEYS */;
INSERT INTO `Restaurent_cusine` VALUES (1,11111),(1,11112),(2,11122),(2,11112),(3,11124),(3,11115),(4,11114),(5,11114),(6,11123),(6,11115),(7,11111),(7,11112),(8,11115),(9,11116),(10,11121),(11,11119),(12,11120),(13,11117),(14,11121),(14,11115),(15,11112),(15,11123),(16,11116),(17,11112),(17,11116),(18,11119),(18,11121),(19,11122),(20,11113),(20,11125);
/*!40000 ALTER TABLE `Restaurent_cusine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resturant_Seating`
--

DROP TABLE IF EXISTS `Resturant_Seating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Resturant_Seating` (
  `restaurant_id` int NOT NULL,
  `seating_id` int NOT NULL,
  KEY `resturent_id _idx` (`restaurant_id`),
  KEY `seating _temp_id_idx` (`seating_id`),
  CONSTRAINT `resturent_id ` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `seating _temp_id` FOREIGN KEY (`seating_id`) REFERENCES `Seating` (`seating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resturant_Seating`
--

LOCK TABLES `Resturant_Seating` WRITE;
/*!40000 ALTER TABLE `Resturant_Seating` DISABLE KEYS */;
INSERT INTO `Resturant_Seating` VALUES (1,999),(1,998),(2,999),(2,998),(3,999),(3,998),(4,999),(4,998),(5,999),(5,998),(6,998),(7,999),(8,999),(8,998),(9,999),(9,998),(10,999),(10,998),(11,999),(11,998),(12,999),(12,998),(13,999),(13,998),(14,999),(14,998),(15,999),(15,998),(16,999),(16,998),(17,999),(18,999);
/*!40000 ALTER TABLE `Resturant_Seating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seating`
--

DROP TABLE IF EXISTS `Seating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Seating` (
  `seating_id` int NOT NULL,
  `seating_type` varchar(45) NOT NULL,
  PRIMARY KEY (`seating_id`),
  UNIQUE KEY `Seating_UNIQUE` (`seating_id`),
  UNIQUE KEY `seating_type_UNIQUE` (`seating_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seating`
--

LOCK TABLES `Seating` WRITE;
/*!40000 ALTER TABLE `Seating` DISABLE KEYS */;
INSERT INTO `Seating` VALUES (999,'in_door'),(998,'out_door');
/*!40000 ALTER TABLE `Seating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vernon_square_restaurant`
--

DROP TABLE IF EXISTS `vernon_square_restaurant`;
/*!50001 DROP VIEW IF EXISTS `vernon_square_restaurant`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vernon_square_restaurant` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `neighbourhood_name`,
 1 AS `cuisine_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'restaurant'
--

--
-- Dumping routines for database 'restaurant'
--

--
-- Final view structure for view `average_rating`
--

/*!50001 DROP VIEW IF EXISTS `average_rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `average_rating` AS select `nighboohd_name_zip`.`neighbourhood_name` AS `Neighbourhood Name`,avg(`restaurant`.`restaurant_rate`) AS `Average rating`,count(`restaurant`.`restaurant_rate`) AS `Number of resturents in the Neighbourhood` from (`nighboohd_name_zip` join `restaurant` on((`nighboohd_name_zip`.`zip_code_id` = `restaurant`.`zip_code_id`))) group by `nighboohd_name_zip`.`zip_code_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cusisne_count`
--

/*!50001 DROP VIEW IF EXISTS `cusisne_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cusisne_count` AS select `cuisine`.`cuisine_name` AS `cuisine_name`,count(`restaurent_cusine`.`cuisine_id`) AS `Total number of Restaurants` from (`restaurent_cusine` join `cuisine` on((`restaurent_cusine`.`cuisine_id` = `cuisine`.`cuisine_id`))) group by `restaurent_cusine`.`cuisine_id` order by `cuisine`.`cuisine_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `indoor_pizza_restaurant`
--

/*!50001 DROP VIEW IF EXISTS `indoor_pizza_restaurant`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `indoor_pizza_restaurant` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,`seating`.`seating_type` AS `seating_type` from ((((`resturant_seating` join `restaurant` on((`resturant_seating`.`restaurant_id` = `restaurant`.`restaurant_id`))) join `seating` on((`resturant_seating`.`seating_id` = `seating`.`seating_id`))) join `restaurent_cusine` on((`resturant_seating`.`restaurant_id` = `restaurent_cusine`.`restaurant_id`))) join `cuisine` on((`restaurent_cusine`.`cuisine_id` = `cuisine`.`cuisine_id`))) where ((`seating`.`seating_type` = 'in_door') and (`cuisine`.`cuisine_name` = 'Pizza')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `popular__dish_with_oil`
--

/*!50001 DROP VIEW IF EXISTS `popular__dish_with_oil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `popular__dish_with_oil` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,`popular_dish`.`dish_name` AS `dish_name` from (`restaurant` join `popular_dish` on((`restaurant`.`restaurant_id` = `popular_dish`.`restaurant_id`))) where `popular_dish`.`dish_id` in (select `popular_dish_ingredients`.`dish_id` from (`popular_dish_ingredients` join `ingredients` on((`popular_dish_ingredients`.`id_ingredients` = `ingredients`.`id_ingredients`))) where (`ingredients`.`ingredients_name` = 'oil')) order by `restaurant`.`restaurant_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vernon_square_restaurant`
--

/*!50001 DROP VIEW IF EXISTS `vernon_square_restaurant`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vernon_square_restaurant` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,`nighboohd_name_zip`.`neighbourhood_name` AS `neighbourhood_name`,`cuisine`.`cuisine_name` AS `cuisine_name` from (((`restaurant` join `nighboohd_name_zip` on((`restaurant`.`zip_code_id` = `nighboohd_name_zip`.`zip_code_id`))) join `restaurent_cusine` on((`restaurant`.`restaurant_id` = `restaurent_cusine`.`restaurant_id`))) join `cuisine` on((`restaurent_cusine`.`cuisine_id` = `cuisine`.`cuisine_id`))) where ((`nighboohd_name_zip`.`neighbourhood_name` = 'Mt Vernon Square') and ((`cuisine`.`cuisine_name` = 'Pizza') or (`cuisine`.`cuisine_name` = 'American'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 17:44:43
