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
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idcurso` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `grau` varchar(255) DEFAULT NULL,
  `duracao` int DEFAULT NULL,
  `descricao` text,
  `plano_curricular` text,
  `saidas_profissionais` text,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia Informática','Licenciatura',3,'Curso focado em desenvolvimento de software e sistemas.','Algoritmos, Estruturas de Dados, Bases de Dados, Redes','Programador, Engenheiro de Software, Consultor IT'),(2,'Medicina','Mestrado Integrado',6,'Formação médica completa e acesso à carreira médica.','Anatomia, Fisiologia, Clínica Geral, Cirurgia','Médico, Investigador Biomédico'),(3,'Direito','Licenciatura',4,'Estudo das leis e do sistema jurídico nacional e internacional.','Direito Civil, Penal, Constitucional, Comercial','Advogado, Jurista, Magistrado'),(4,'Gestão','Licenciatura',3,'Preparação para o mundo empresarial e gestão de recursos.','Contabilidade, Marketing, Finanças, RH','Gestor, Analista Financeiro'),(5,'Arquitetura','Mestrado Integrado',5,'Formação artística e técnica em construção e design.','Projeto, História da Arquitetura, Materiais, Urbanismo','Arquiteto, Designer Urbano'),(6,'Psicologia','Licenciatura',3,'Estudo do comportamento humano e processos mentais.','Psicologia Clínica, Organizacional, Desenvolvimento','Psicólogo, Recursos Humanos');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
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
