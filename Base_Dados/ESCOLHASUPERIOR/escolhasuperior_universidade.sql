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
-- Table structure for table `universidade`
--

DROP TABLE IF EXISTS `universidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `universidade` (
  `iduniversidade` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `localizacao` varchar(255) DEFAULT NULL,
  `descricao` text,
  `site` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`iduniversidade`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidade`
--

LOCK TABLES `universidade` WRITE;
/*!40000 ALTER TABLE `universidade` DISABLE KEYS */;
INSERT INTO `universidade` VALUES (1,'Universidade de Lisboa','Lisboa','Universidade pública de referência em Portugal.','https://www.ulisboa.pt','Pública'),(2,'Universidade do Porto','Porto','Instituição centenária com forte componente de investigação.','https://www.up.pt','Pública'),(3,'Universidade de Coimbra','Coimbra','Uma das universidades mais antigas da Europa.','https://www.uc.pt','Pública'),(4,'Universidade Nova de Lisboa','Lisboa','Conhecida pela inovação e empreendedorismo.','https://www.unl.pt','Pública'),(5,'Universidade Católica Portuguesa','Lisboa','Instituição privada com destaque em gestão e direito.','https://www.ucp.pt','Privada'),(6,'Universidade do Minho','Braga','Universidade moderna com forte ligação à indústria.','https://www.uminho.pt','Pública');
/*!40000 ALTER TABLE `universidade` ENABLE KEYS */;
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
