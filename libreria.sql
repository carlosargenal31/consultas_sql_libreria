CREATE DATABASE  IF NOT EXISTS `libreria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `libreria`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: libreria
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `autorID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`autorID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Juan','Gonzalez','Hondurenia'),(2,'Ana','Martinez','Espaniola'),(3,'David','Smith','Estadounidense'),(4,'Elena','Lopez','Argentina'),(5,'Carlos','Kim','Coreana'),(6,'Sofia','Chen','China'),(7,'Alejandro','Johnson','Canadiense'),(8,'Isabel','Kumar','India'),(9,'Miguel','Almeida','Brasilenia'),(10,'Laura','Ramos','Colombiana'),(11,'Diego','Araujo','Ecuatoriana'),(12,'Valentina','Silva','Chilena'),(13,'Javier','Fernandez','Uruguaya'),(14,'Camila','Santos','Portuguesa'),(15,'Lucas','Wong','Hongkonesa');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `libroID` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) DEFAULT NULL,
  `autorID` int NOT NULL,
  `aniopublicacion` year DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`libroID`),
  KEY `stock_idx` (`autorID`),
  CONSTRAINT `autorID` FOREIGN KEY (`autorID`) REFERENCES `autores` (`autorID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'La Aventura',1,2005,24.99,50),(2,'Caminos Cruzados',2,2012,34.99,30),(3,'Suenios Perdidos',3,2018,29.99,75),(4,'Sombras del Pasado',4,2010,19.99,60),(5,'Destino Incierto',5,2015,39.99,40),(6,'Bajo la Luna',6,2019,44.99,25),(7,'Entre Dos Mundos',7,2008,29.99,80),(8,'El Secreto de las Estrellas',8,2016,49.99,20),(9,'Caminando Juntos',9,2014,27.99,45),(10,'Susurros del Viento',10,2011,33.99,55),(11,'El Ultimo Suspiro',11,2017,23.99,65),(12,'Flores de Invierno',12,2006,19.99,70),(13,'Cazadores de Suenios',13,2020,37.99,35),(14,'El Corazon del Oceano',14,2009,42.99,15),(15,'Luces en la Oscuridad',15,2013,31.99,50),(16,'La Ruta Olvidada',1,2007,22.99,40),(17,'Noches en París',2,2013,29.99,20),(18,'Senderos Oscuros',3,2016,19.99,30),(19,'Secretos del Pasado',1,2011,34.99,25),(20,'La Sombra del Silencio',4,2014,27.99,15);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `ventaID` int NOT NULL AUTO_INCREMENT,
  `libroID` int NOT NULL,
  `fechaventa` date DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`ventaID`),
  KEY `libroID_idx` (`libroID`),
  CONSTRAINT `libroID` FOREIGN KEY (`libroID`) REFERENCES `libros` (`libroID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,'2024-02-25',5),(2,2,'2024-02-24',3),(3,3,'2024-02-23',2),(4,4,'2024-02-22',4),(5,5,'2024-02-21',1),(6,6,'2024-02-20',6),(7,7,'2024-02-19',3),(8,8,'2024-02-18',2),(9,9,'2024-02-17',5),(10,10,'2024-02-16',4),(11,11,'2024-02-15',3),(12,12,'2024-02-14',2),(13,13,'2024-02-13',1),(14,14,'2024-02-12',4),(15,15,'2024-02-11',3),(16,1,'2024-02-25',5),(17,2,'2024-02-24',3),(18,3,'2024-02-23',2),(19,4,'2024-02-22',4),(20,5,'2024-02-21',1),(21,1,'2024-02-20',6),(22,2,'2024-02-19',3),(23,3,'2024-02-18',2),(24,4,'2024-02-17',5),(25,5,'2024-02-16',4);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-25 23:48:14
