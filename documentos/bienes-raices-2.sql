-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: bienes_raices
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `ids_available`
--

DROP TABLE IF EXISTS `ids_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ids_available` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ids_available`
--

LOCK TABLES `ids_available` WRITE;
/*!40000 ALTER TABLE `ids_available` DISABLE KEYS */;
/*!40000 ALTER TABLE `ids_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propiedades`
--

DROP TABLE IF EXISTS `propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propiedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `habitaciones` int DEFAULT NULL,
  `wc` int DEFAULT NULL,
  `estacionamiento` int DEFAULT NULL,
  `creado` date DEFAULT NULL,
  `vendedorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendedorId_FK_idx` (`vendedorId`),
  CONSTRAINT `vendedorId_FK` FOREIGN KEY (`vendedorId`) REFERENCES `vendedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propiedades`
--

LOCK TABLES `propiedades` WRITE;
/*!40000 ALTER TABLE `propiedades` DISABLE KEYS */;
INSERT INTO `propiedades` VALUES (2,'Casa al lado de la playa',400000.00,'b73114d9f221cb2b4a6d8b50047f476e.jpg','Casa de lujo en dos plantas con zona de recreo próxima.',2,1,1,'2021-12-06',2),(4,'Casa con piscina en lo alto de una urbanización',2000000.00,'606f5d731165b345dba346215c9e105e.jpg','Casa con piscina situada en la zona más alta de la urbanización \"La Dolce Vita\". Tiene unas magníficas vistas desde la piscina de todo el bosque circundante.',2,2,2,'2021-12-06',5),(12,'Casa en el bosque',300000.00,'c5e46473f1f59969a217bcc36bd67236.jpg','Preciosa casa situada en el bosque húmedo de Pineda del Monte. Tiene vistas espectaculares del valle. Ideal para practicar senderismo, ya que hay gran cantidad de senderos naturales en las inmediaciones.',3,3,3,'2022-01-09',6),(13,'Casa en urbanización de lujo',500000.00,'f8f6fbc6dd3963cd5e8b7d6d9b54c239.jpg','Descripción de la Casa en urbanización de lujo. Descripción de la Casa en urbanización de lujo. ',3,3,3,'2022-01-09',1),(14,'Caserón con piscina',400000.00,'7953c8a044630a5dbab05969a3cb3403.jpg','Descripción de la Casa en urbanización de lujo. Descripción de la Casa en urbanización de lujo. Descripción de la Casa en urbanización de lujo. ',4,4,3,'2022-01-09',3),(16,'Otra casa en urbanización',356000.00,'929cb85b726670befd04424b9aca9e77.jpg','Descripción de la Casa en urbanización de lujo. Descripción de la Casa en urbanización de lujo. ',9,3,3,'2022-01-09',5),(17,'Casa al lado de una pista de tenis (Actualizado)',400000.00,'142ca86832bf18e150d37e95c2cc3675.jpg','Descripción de la Casa en urbanización de lujo. Descripción de la Casa en urbanización de lujo. ',4,4,4,'2022-01-09',1);
/*!40000 ALTER TABLE `propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'correo@correo.com','$2y$10$jQ8z2tD0ReDX2TUwi5Ab5O76Zc2o5DtRlsmlLZYOdTuDHqifmrXcW'),(2,'correo2@correo.com','$2y$10$HP7LdioFZi2u7Yu7RnUa0.oOC/d8c9m6Za27m9g3lrH/GQhpCjdV6');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'José Miguel','Izquierdo Martínez','111818181'),(2,'Juan','De la Torre','87485783'),(3,'Karen','López','98954579'),(4,'Mariano','Medina','758483838'),(5,'Merino','Macos','84757848'),(6,'José Manuel','Gonzáles Párcamel','1234456789'),(7,'José Francisco','Manolo Manólez','123456689'),(9,'José Perínez','Manolez Manolo','1234567890');
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-17 22:55:21
