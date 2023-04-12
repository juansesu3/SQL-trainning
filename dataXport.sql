-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prueba1
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `t_domicilio`
--

DROP TABLE IF EXISTS `t_domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_domicilio` (
  `id_domicilio` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NOT NULL,
  `paids` varchar(45) DEFAULT NULL,
  `cp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_domicilio`),
  KEY `fk_idpersonadomicilio_idx` (`id_persona`),
  CONSTRAINT `fk_idpersonadomicilio` FOREIGN KEY (`id_persona`) REFERENCES `t_persona` (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_domicilio`
--

LOCK TABLES `t_domicilio` WRITE;
/*!40000 ALTER TABLE `t_domicilio` DISABLE KEYS */;
INSERT INTO `t_domicilio` VALUES (1,4,'Colombia','760001');
/*!40000 ALTER TABLE `t_domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_persona`
--

DROP TABLE IF EXISTS `t_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_persona` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `paterno` varchar(45) DEFAULT NULL,
  `materno` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_persona`
--

LOCK TABLES `t_persona` WRITE;
/*!40000 ALTER TABLE `t_persona` DISABLE KEYS */;
INSERT INTO `t_persona` VALUES (4,'Martinez','Ducuara','Juliana'),(6,'Suarez','Ramirez','Juan');
/*!40000 ALTER TABLE `t_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prueba`
--

DROP TABLE IF EXISTS `t_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_prueba` (
  `id_prueba` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `comentarios` text,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_prueba`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prueba`
--

LOCK TABLES `t_prueba` WRITE;
/*!40000 ALTER TABLE `t_prueba` DISABLE KEYS */;
INSERT INTO `t_prueba` VALUES (1,'Juan',76.5,'Es un tipo super atractivo','2023-04-07'),(7,'Valentina',55.5,'Una indisciplinada','2023-04-07'),(8,'Juliana',65.5,'Es una chica muy cool','2023-04-07'),(5,'Lara',50.5,'hacia falta el comentario','2003-06-09'),(9,'Camila',50.5,'Es una chica muy hot','2023-04-07');
/*!40000 ALTER TABLE `t_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prueba2`
--

DROP TABLE IF EXISTS `t_prueba2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_prueba2` (
  `id_prueba` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `finado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_prueba`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prueba2`
--

LOCK TABLES `t_prueba2` WRITE;
/*!40000 ALTER TABLE `t_prueba2` DISABLE KEYS */;
INSERT INTO `t_prueba2` VALUES (1,'Juan',28,'2023-04-10',1);
/*!40000 ALTER TABLE `t_prueba2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `t_vista_a`
--

DROP TABLE IF EXISTS `t_vista_a`;
/*!50001 DROP VIEW IF EXISTS `t_vista_a`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `t_vista_a` AS SELECT 
 1 AS `id_prueba`,
 1 AS `nombre`,
 1 AS `peso`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `t_vista_b`
--

DROP TABLE IF EXISTS `t_vista_b`;
/*!50001 DROP VIEW IF EXISTS `t_vista_b`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `t_vista_b` AS SELECT 
 1 AS `id_prueba`,
 1 AS `comentarios`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `t_vista_a`
--

/*!50001 DROP VIEW IF EXISTS `t_vista_a`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `t_vista_a` AS select `t_prueba`.`id_prueba` AS `id_prueba`,`t_prueba`.`nombre` AS `nombre`,`t_prueba`.`peso` AS `peso` from `t_prueba` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `t_vista_b`
--

/*!50001 DROP VIEW IF EXISTS `t_vista_b`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `t_vista_b` AS select `t_prueba`.`id_prueba` AS `id_prueba`,`t_prueba`.`comentarios` AS `comentarios`,`t_prueba`.`fecha` AS `fecha` from `t_prueba` */;
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

-- Dump completed on 2023-04-12 14:58:11
