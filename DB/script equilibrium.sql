-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: equilibrium
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comunidad`
--

DROP TABLE IF EXISTS `comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comunidad` (
  `ComunidadID` int(11) NOT NULL,
  `NombreComunidad` varchar(100) DEFAULT NULL,
  `Descripcion` text,
  PRIMARY KEY (`ComunidadID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunidad`
--

LOCK TABLES `comunidad` WRITE;
/*!40000 ALTER TABLE `comunidad` DISABLE KEYS */;
INSERT INTO `comunidad` VALUES (1,'Almas en Sintonía','Comunidad para aquellos que buscan conectar espiritualmente con la vida y el alma.'),(2,'Círculo de Luz Interior','Comunidad para compartir experiencias y prácticas espirituales.'),(3,'Consciencia Plena','Comunidad enfocada en la práctica de la consciencia plena y el despertar espiritual.'),(4,'Ser Espiritual','Comunidad para explorar y nutrir el ser espiritual en cada uno.'),(5,'Vida Consciente','Comunidad para vivir conscientemente y en armonía con el universo.'),(6,'Paz Interior Colectiva','Comunidad para la búsqueda y cultivo de la paz interior en comunidad.'),(7,'Viajeros del Alma','Comunidad para aquellos que consideran el alma como su guía en la vida.'),(8,'Conexión Universal','Comunidad para explorar la conexión universal que une a todos los seres.'),(9,'Renacimiento Espiritual','Comunidad para quienes buscan un renacimiento espiritual y personal.'),(10,'Senda de Luz','Comunidad para compartir conocimientos y apoyarse mutuamente en el camino espiritual.');
/*!40000 ALTER TABLE `comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenidoeducativo`
--

DROP TABLE IF EXISTS `contenidoeducativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contenidoeducativo` (
  `ContenidoID` int(11) NOT NULL,
  `Tipo` varchar(100) DEFAULT NULL,
  `Titulo` varchar(100) DEFAULT NULL,
  `Contenido` text,
  `FechaPublicacion` date DEFAULT NULL,
  PRIMARY KEY (`ContenidoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidoeducativo`
--

LOCK TABLES `contenidoeducativo` WRITE;
/*!40000 ALTER TABLE `contenidoeducativo` DISABLE KEYS */;
INSERT INTO `contenidoeducativo` VALUES (1,'Video','Meditación Guiada','Descubre la paz interior con esta meditación guiada.','2023-07-15'),(2,'Artículo','Explorando la Conexión Espiritual','Reflexiones sobre la conexión espiritual en la vida cotidiana.','2024-03-03'),(3,'Presentación','Viaje Interior: Descubre tu Ser','Una presentación para explorar el viaje interior y descubrir el ser.','2023-11-22'),(4,'Tutorial','Prácticas Diarias de Mindfulness','Aprende prácticas diarias de mindfulness para una vida consciente.','2024-05-08'),(5,'Webinar','Sanando el Alma: Consejos Prácticos','Participa en nuestro webinar sobre prácticas para sanar el alma.','2024-09-12'),(6,'Documento','Guía de Meditación Profunda','Descarga nuestra guía para practicar meditación profunda.','2023-02-06'),(7,'Entrevista','Conversaciones sobre Espiritualidad','Exploramos la espiritualidad a través de conversaciones enriquecedoras.','2024-08-18'),(8,'Demostración','Rituales para la Paz Interior','Descubre rituales que puedes incorporar para alcanzar la paz interior.','2024-06-02'),(9,'Panel','Conectando con la Naturaleza','Un panel para discutir la conexión espiritual a través de la naturaleza.','2023-12-25'),(10,'Curso','Desarrollando la Intuición','Un curso para desarrollar y confiar en tu intuición espiritual.','2024-04-09'),(11,'Libro','La esperanza de vivir','Todo lo bonito que trae la vida esta a tu alrededor','2023-10-12');
/*!40000 ALTER TABLE `contenidoeducativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practicaguiada`
--

DROP TABLE IF EXISTS `practicaguiada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `practicaguiada` (
  `PracticaID` int(11) NOT NULL,
  `Tipo` varchar(100) DEFAULT NULL,
  `Descripcion` text,
  `Duracion` int(11) DEFAULT NULL,
  `FechaPublicacion` date DEFAULT NULL,
  PRIMARY KEY (`PracticaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practicaguiada`
--

LOCK TABLES `practicaguiada` WRITE;
/*!40000 ALTER TABLE `practicaguiada` DISABLE KEYS */;
INSERT INTO `practicaguiada` VALUES (1,'Meditación','Práctica de Meditación para la Calma Interior',30,'2024-05-08'),(2,'Mindfulness','Ejercicios de Mindfulness para el Día a Día',20,'2024-09-12'),(3,'Visualización','Viaje Guiado: Encuentro con tu Ser Interior',45,'2023-02-06'),(4,'Ritual','Ritual de Gratitud Diaria',15,'2023-04-18'),(5,'Prueba de Consciencia','Evaluación de Niveles de Consciencia',60,'2023-09-30'),(6,'Creación Artística','Creación de Mandala Espiritual',90,'2023-06-12'),(7,'Reiki a Distancia','Sesión de Reiki a Distancia para Armonizar Energías',30,'2023-08-03'),(8,'Investigación Interna','Explorando Creencias Limitantes',120,'2023-10-21'),(9,'Desafío Espiritual','Desafío: Una Semana de Desconexión Digital',1440,'2023-01-07'),(10,'Sesión de Yoga','Yoga para la Conexión Espiritual',60,'2023-07-15'),(11,'Meditación','Para la calma del estres',15,'2023-11-13');
/*!40000 ALTER TABLE `practicaguiada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `UserID` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `CorreoElectronico` varchar(100) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL,
  `FechaRegistro` date DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1230,'Francisco De Jesus Ortega','Francisdejesor@gmail.com','*Kp$9lZa#2b','2023-07-15'),(1240,'Liliana Marquéz Montoya','Lilimarmont02@gmail.com','nuevacontrasena','2024-03-03'),(1250,'Juan Esteban Morales Ossa','Juanesmora124@gmail.com','!vR5m^jL8o','2023-11-22'),(1260,'Cristian Martinez Peréz','Cristianmarpel11@gmail.com','$tN6uY#1wX','2023-02-06'),(1270,'Maria Quirama Ochoa','Mariaquirama1996@gmail.com','@hJ4c*2oE7','2023-12-25'),(1280,'Simon Mazo Corrales','simonmazo@gmail.com','^gQ9z@5lD3','2023-09-30'),(1290,'Jeronimo Salomon Segundo','jeronimosalomon@gmail.com','%xB8k!6pA2','2023-01-07'),(1300,'Isabella Rios Castro','isabellarios@gmail.com','&sF3mG7t@1','2023-04-18'),(1310,'Felipe Medina Valencia','felipemedina@gmail.com','#yH2iU8o^4','2023-08-03'),(1320,'Natalia Gomez Vargas','nataliagomez@gmail.com','*zW6vQ1r@5','2023-10-21');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariocomunidad`
--

DROP TABLE IF EXISTS `usuariocomunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuariocomunidad` (
  `UserID` int(11) NOT NULL,
  `ComunidadID` int(11) NOT NULL,
  PRIMARY KEY (`UserID`,`ComunidadID`),
  KEY `ComunidadID` (`ComunidadID`),
  CONSTRAINT `usuariocomunidad_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `usuario` (`UserID`),
  CONSTRAINT `usuariocomunidad_ibfk_2` FOREIGN KEY (`ComunidadID`) REFERENCES `comunidad` (`ComunidadID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariocomunidad`
--

LOCK TABLES `usuariocomunidad` WRITE;
/*!40000 ALTER TABLE `usuariocomunidad` DISABLE KEYS */;
INSERT INTO `usuariocomunidad` VALUES (1230,1),(1240,2),(1250,3),(1260,4),(1270,5),(1280,6),(1290,7),(1240,8),(1250,8),(1260,8),(1300,8),(1310,9),(1320,10);
/*!40000 ALTER TABLE `usuariocomunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariocontenido`
--

DROP TABLE IF EXISTS `usuariocontenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuariocontenido` (
  `UserID` int(11) NOT NULL,
  `ContenidoID` int(11) NOT NULL,
  PRIMARY KEY (`UserID`,`ContenidoID`),
  KEY `ContenidoID` (`ContenidoID`),
  CONSTRAINT `usuariocontenido_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `usuario` (`UserID`),
  CONSTRAINT `usuariocontenido_ibfk_2` FOREIGN KEY (`ContenidoID`) REFERENCES `contenidoeducativo` (`ContenidoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariocontenido`
--

LOCK TABLES `usuariocontenido` WRITE;
/*!40000 ALTER TABLE `usuariocontenido` DISABLE KEYS */;
INSERT INTO `usuariocontenido` VALUES (1230,1),(1230,2),(1240,2),(1250,3),(1260,4),(1270,5),(1280,6),(1290,7),(1300,8),(1310,9),(1320,10);
/*!40000 ALTER TABLE `usuariocontenido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariopractica`
--

DROP TABLE IF EXISTS `usuariopractica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuariopractica` (
  `UserID` int(11) NOT NULL,
  `PracticaID` int(11) NOT NULL,
  PRIMARY KEY (`UserID`,`PracticaID`),
  KEY `PracticaID` (`PracticaID`),
  CONSTRAINT `usuariopractica_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `usuario` (`UserID`),
  CONSTRAINT `usuariopractica_ibfk_2` FOREIGN KEY (`PracticaID`) REFERENCES `practicaguiada` (`PracticaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariopractica`
--

LOCK TABLES `usuariopractica` WRITE;
/*!40000 ALTER TABLE `usuariopractica` DISABLE KEYS */;
INSERT INTO `usuariopractica` VALUES (1230,1),(1240,2),(1250,3),(1260,4),(1230,5),(1270,5),(1280,6),(1290,7),(1230,8),(1300,8),(1310,9),(1320,10),(1230,11);
/*!40000 ALTER TABLE `usuariopractica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistausuarioscontenidos`
--

DROP TABLE IF EXISTS `vistausuarioscontenidos`;
/*!50001 DROP VIEW IF EXISTS `vistausuarioscontenidos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vistausuarioscontenidos` AS SELECT 
 1 AS `UserID`,
 1 AS `NombreUsuario`,
 1 AS `ContenidoID`,
 1 AS `TituloContenido`,
 1 AS `FechaPublicacionContenido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistausuariospracticas`
--

DROP TABLE IF EXISTS `vistausuariospracticas`;
/*!50001 DROP VIEW IF EXISTS `vistausuariospracticas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vistausuariospracticas` AS SELECT 
 1 AS `UserID`,
 1 AS `NombreUsuario`,
 1 AS `PracticaID`,
 1 AS `DescripcionPractica`,
 1 AS `Duracion`,
 1 AS `FechaPublicacionPractica`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vistausuarioscontenidos`
--

/*!50001 DROP VIEW IF EXISTS `vistausuarioscontenidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistausuarioscontenidos` AS select `usuario`.`UserID` AS `UserID`,`usuario`.`Nombre` AS `NombreUsuario`,`contenidoeducativo`.`ContenidoID` AS `ContenidoID`,`contenidoeducativo`.`Titulo` AS `TituloContenido`,`contenidoeducativo`.`FechaPublicacion` AS `FechaPublicacionContenido` from ((`usuario` join `usuariocontenido` on((`usuario`.`UserID` = `usuariocontenido`.`UserID`))) join `contenidoeducativo` on((`usuariocontenido`.`ContenidoID` = `contenidoeducativo`.`ContenidoID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistausuariospracticas`
--

/*!50001 DROP VIEW IF EXISTS `vistausuariospracticas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistausuariospracticas` AS select `usuario`.`UserID` AS `UserID`,`usuario`.`Nombre` AS `NombreUsuario`,`practicaguiada`.`PracticaID` AS `PracticaID`,`practicaguiada`.`Descripcion` AS `DescripcionPractica`,`practicaguiada`.`Duracion` AS `Duracion`,`practicaguiada`.`FechaPublicacion` AS `FechaPublicacionPractica` from ((`usuario` join `usuariopractica` on((`usuario`.`UserID` = `usuariopractica`.`UserID`))) join `practicaguiada` on((`usuariopractica`.`PracticaID` = `practicaguiada`.`PracticaID`))) */;
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

-- Dump completed on 2023-11-11 12:27:39
