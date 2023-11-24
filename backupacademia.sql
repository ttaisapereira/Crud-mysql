-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: academiaturmab
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `matricula` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cpf` char(11) NOT NULL,
  `idade` char(100) NOT NULL,
  `telefone` char(11) NOT NULL,
  `end` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Taisa','10101010101','25','11001100110','RUA 01','TAI01@GMAIL.COM'),(2,'DÉBORA','20202020202','25','22002200220','RUA 02','DEB02@GMAIL.COM'),(3,'KAYCK','30303030303','25','33003300330','RUA 03','KAY03@GMAIL.COM'),(4,'JOAO','40404040404','25','44004400440','RUA 04','JO04@GMAIL.COM'),(5,'ALISSON','50505050505','25','55005500550','RUA 05','ALI05@GMAIL.COM');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `cpf` char(11) NOT NULL,
  `departamento` int DEFAULT NULL,
  `cpf_supervisor` char(11) DEFAULT NULL,
  `salario` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (10,'Kayck','70069071010',1,'2002002003',2000.00),(11,'Valeria','12536478995',2,'12347589',2500.00),(12,'Andrey','45635789521',3,'25875321',3500.00),(13,'Taisa','45632158961',4,'25874536',2800.00),(14,'Debora','12365478521',5,'12578951',2800.00),(15,'Julia','12365478521',6,'12365885',2500.00),(16,'Illana','12365222132',7,'12352412',3000.00),(17,'Daniel','12352112321',8,'12547851',2200.00),(18,'Helder','12366698512',9,'12366541',3000.00),(19,'HUGO','55885588559',2,'99889988995',1000.00);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidade`
--

DROP TABLE IF EXISTS `modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidade` (
  `id_modal` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `duracao` varchar(200) NOT NULL,
  PRIMARY KEY (`id_modal`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidade`
--

LOCK TABLES `modalidade` WRITE;
/*!40000 ALTER TABLE `modalidade` DISABLE KEYS */;
INSERT INTO `modalidade` VALUES (1,'NATAÇÃO','120'),(2,'BOXE','45'),(3,'MUSCULAÇÃO','60'),(4,'PILATES','30'),(5,'DANÇA','35'),(6,'CROSSFIT','60'),(7,'FUNCIONAL','30');
/*!40000 ALTER TABLE `modalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_personal` int NOT NULL AUTO_INCREMENT,
  `cpf` char(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cref` char(6) NOT NULL,
  `telefone` char(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'88008800880','KARLA','808080','81008800880','KARLA@GMAIL.COM'),(2,'99009900990','LAURA','909090','81990099009','LAURA@GMAIL.COM'),(3,'77007700770','BIA','707070','81770077007','BIA@GMAIL.COM'),(4,'66006600660','PEDRO','606060','81660066006','PEDRO@GMAIL.COM'),(5,'88008800880','ALI','787878','81880088008','ALI@GMAIL.COM'),(6,'55885588554','JULIA','887788','99669966558','JU@GMAIL.COM');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23 21:01:16
