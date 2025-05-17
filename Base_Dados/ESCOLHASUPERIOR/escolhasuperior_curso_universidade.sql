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
-- Table structure for table `curso_universidade`
--

DROP TABLE IF EXISTS `curso_universidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_universidade` (
  `idcursouniversidade` int NOT NULL AUTO_INCREMENT,
  `cursoid` int DEFAULT NULL,
  `universidadeid` int DEFAULT NULL,
  `vagas` int DEFAULT NULL,
  `nota_candidatura` double DEFAULT NULL,
  `propina` decimal(10,2) DEFAULT NULL,
  `regime` varchar(255) DEFAULT NULL,
  `link_candidatura` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcursouniversidade`),
  KEY `cursoid` (`cursoid`),
  KEY `universidadeid` (`universidadeid`),
  CONSTRAINT `curso_universidade_ibfk_1` FOREIGN KEY (`cursoid`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `curso_universidade_ibfk_2` FOREIGN KEY (`universidadeid`) REFERENCES `universidade` (`iduniversidade`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_universidade`
--

LOCK TABLES `curso_universidade` WRITE;
/*!40000 ALTER TABLE `curso_universidade` DISABLE KEYS */;
INSERT INTO `curso_universidade` VALUES (1,1,1,100,17.5,697.00,'Diurno','https://ulisboa.pt/candidaturas'),(2,2,2,60,18.7,1200.00,'Integral','https://up.pt/candidaturas'),(3,3,3,80,16,850.00,'Diurno','https://uc.pt/candidaturas'),(4,4,4,90,15.3,900.00,'Pós-laboral','https://unl.pt/candidaturas'),(5,5,5,50,17,3000.00,'Diurno','https://ucp.pt/candidaturas'),(6,6,6,70,16.5,700.00,'Integral','https://uminho.pt/candidaturas');
/*!40000 ALTER TABLE `curso_universidade` ENABLE KEYS */;
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
