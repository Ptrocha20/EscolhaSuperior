-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: escolhasuperior
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `responsavel_faculdade`
--

DROP TABLE IF EXISTS `responsavel_faculdade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsavel_faculdade` (
  `idresponsavel` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email_institucional` varchar(255) DEFAULT NULL,
  `universidadeid` int DEFAULT NULL,
  `ultimologin` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idresponsavel`),
  KEY `universidadeid` (`universidadeid`),
  CONSTRAINT `responsavel_faculdade_ibfk_1` FOREIGN KEY (`universidadeid`) REFERENCES `universidade` (`iduniversidade`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsavel_faculdade`
--

LOCK TABLES `responsavel_faculdade` WRITE;
/*!40000 ALTER TABLE `responsavel_faculdade` DISABLE KEYS */;
INSERT INTO `responsavel_faculdade` VALUES (1,'Prof. Luís Almeida','luis.almeida@ulisboa.pt',1,'2025-05-17 16:22:52'),(2,'Prof. Helena Matos','helena.matos@up.pt',2,'2025-05-17 16:22:52'),(3,'Prof. Manuel Sousa','manuel.sousa@uc.pt',3,'2025-05-17 16:22:52'),(4,'Prof. Teresa Rocha','teresa.rocha@unl.pt',4,'2025-05-17 16:22:52'),(5,'Prof. João Carvalho','joao.carvalho@ucp.pt',5,'2025-05-17 16:22:52'),(6,'Prof. Rita Mendes','rita.mendes@uminho.pt',6,'2025-05-17 16:22:52');
/*!40000 ALTER TABLE `responsavel_faculdade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17 17:25:02
