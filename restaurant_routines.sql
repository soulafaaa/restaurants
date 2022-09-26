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
-- Dumping events for database 'restaurant'
--

--
-- Dumping routines for database 'restaurant'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 17:47:05
