CREATE DATABASE  IF NOT EXISTS `banquinho_saude` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `banquinho_saude`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: banquinho_saude
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `id_doje` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `raca` varchar(53) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `tipo` varchar(12) DEFAULT NULL,
  `porte` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_doje`,`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'spike','M','bolldoguie','2017-01-01','cachorro','PP');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dono`
--

DROP TABLE IF EXISTS `dono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dono` (
  `id_dono` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `cpf` char(9) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `telefone` varchar(17) DEFAULT NULL,
  PRIMARY KEY (`id_dono`,`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dono`
--

LOCK TABLES `dono` WRITE;
/*!40000 ALTER TABLE `dono` DISABLE KEYS */;
INSERT INTO `dono` VALUES (1,'joãozinho dutra alves de alcantra lima barreto correia da silva','F','123456789','2002-08-29','sla@gmail.com.br','9812432974');
/*!40000 ALTER TABLE `dono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `cpf` char(9) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `email` varchar(78) DEFAULT NULL,
  `telefone` int(17) unsigned DEFAULT NULL,
  `funcao` varchar(50) DEFAULT NULL,
  `endereco` varchar(80) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `pis_pasep` char(11) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`,`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'elelton junior','M','9484646','1989-12-02','eleltonjru@hotmail.com.br',416848,'estagiario','rua pqpqn2',200,'5465841');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_cadastro`
--

DROP TABLE IF EXISTS `login_cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_cadastro` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) DEFAULT NULL,
  `Senha` varchar(38) NOT NULL,
  `Email` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Senha`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_cadastro`
--

LOCK TABLES `login_cadastro` WRITE;
/*!40000 ALTER TABLE `login_cadastro` DISABLE KEYS */;
INSERT INTO `login_cadastro` VALUES (1,'maria do grau7','arlauakbar','mariaboladinha_Bol@gmail.com.br'),(3,'maria do breginha','123','mariadobrega@gmail.com'),(4,'maria do baile','1bailao','mariabaile@kond.com'),(5,'maria do bailao','zebostola','mariadobailao@kondzilla.com'),(6,'maria do culto','12universal','maria@universal.ig'),(7,'maria do padre','padee5','que isso'),(8,'maria gasolina','5,00 o litro','mariaVpower@shell.com'),(9,'ewwsfeswf','1','hjgmghu'),(10,'Mateus','123','thebugs@gmail.com');
/*!40000 ALTER TABLE `login_cadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento` (
  `id_medicamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(29) DEFAULT NULL,
  `quantidade` int(10) unsigned DEFAULT NULL,
  `informativo` text,
  `validade` date DEFAULT NULL,
  PRIMARY KEY (`id_medicamento`,`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (1,'penicilina','antibiótico',1000,'e bom desde 1928 salvando vidas raiz','2025-12-30');
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-24 16:00:34
