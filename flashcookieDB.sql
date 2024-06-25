-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: flashcookie
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `id_artista` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id_artista`),
  UNIQUE KEY `id_artista_UNIQUE` (`id_artista`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'bond007','ls@yahoo.com.ar'),(2,'BraveWolf','lgomez@gmail.com'),(3,'WatchMaster','mba@hotmail.com'),(4,'Stanley-TheTermo','fgarcia@gmail.com'),(5,'Jumpman23','dq@hotmail.com');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `id_cliente_UNIQUE` (`id_cliente`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Leandro','Gómez','leandgomez@gmail.com'),(2,'Lucas','Solhaune','lucsolhaune@yahoo.com.ar'),(3,'José','Perez','jope@hotmail.com'),(4,'Pablo','Asturias','pablin@gmail.com'),(5,'Estanislao','López','estalope@hotmail.com'),(6,'Julia','Gimenez','juliii@hotmail.com'),(7,'Ignacio','Di Roma','ignadr@yahoo.com.ar'),(8,'Marcela','Larara','lamarce@gmail.com'),(9,'Agustina','Derroca','agusderro@gmail.com'),(10,'Luis','Fernandez','luisito@yahoo.com.ar');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_estampa`
--

DROP TABLE IF EXISTS `cliente_estampa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_estampa` (
  `id_cliente_estampa` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_estampa` int NOT NULL,
  PRIMARY KEY (`id_cliente_estampa`),
  UNIQUE KEY `idcliente_elige_estampa_UNIQUE` (`id_cliente_estampa`),
  KEY `cliente_estampa_fk1_idx` (`id_cliente`),
  KEY `cliente_estampa_fk2_idx` (`id_estampa`),
  CONSTRAINT `cliente_estampa_fk` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `cliente_estampa_fk2` FOREIGN KEY (`id_estampa`) REFERENCES `estampa` (`id_estampa`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_estampa`
--

LOCK TABLES `cliente_estampa` WRITE;
/*!40000 ALTER TABLE `cliente_estampa` DISABLE KEYS */;
INSERT INTO `cliente_estampa` VALUES (1,1,1),(2,1,7),(3,1,6),(4,2,1),(5,3,1),(6,4,10),(7,5,3),(8,7,3),(9,7,10),(10,7,8),(11,8,3),(12,9,2),(13,9,1),(14,10,3),(15,10,1);
/*!40000 ALTER TABLE `cliente_estampa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_producto`
--

DROP TABLE IF EXISTS `cliente_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_producto` (
  `id_cliente_producto` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_producto` int NOT NULL,
  `cant_producto` int NOT NULL,
  `fecha_compra` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente_producto`),
  UNIQUE KEY `idcliente_producto_UNIQUE` (`id_cliente_producto`),
  KEY `cliente_producto_fk_idx` (`id_cliente`),
  KEY `cliente_producto_fk2_idx` (`id_producto`),
  CONSTRAINT `cliente_producto_fk` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `cliente_producto_fk2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_producto`
--

LOCK TABLES `cliente_producto` WRITE;
/*!40000 ALTER TABLE `cliente_producto` DISABLE KEYS */;
INSERT INTO `cliente_producto` VALUES (1,1,3,2,'2024-06-12'),(2,1,5,1,'2024-06-04'),(3,1,2,3,'2010-02-01'),(4,5,3,2,'2024-07-08'),(5,5,2,6,'2023-12-12'),(6,8,4,2,'2021-03-14'),(7,8,2,1,'2024-04-09'),(8,10,1,1,'2024-12-03'),(9,10,4,2,'2018-09-09'),(10,10,3,1,'2024-07-07');
/*!40000 ALTER TABLE `cliente_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id_color` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_color`),
  UNIQUE KEY `id_tipo_colores_UNIQUE` (`id_color`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (4,'amarillo'),(2,'azul'),(8,'blanco'),(5,'naranja'),(7,'negro'),(1,'rojo'),(3,'verde'),(6,'violeta');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estampa`
--

DROP TABLE IF EXISTS `estampa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estampa` (
  `id_estampa` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `id_artista` int NOT NULL,
  PRIMARY KEY (`id_estampa`),
  UNIQUE KEY `id_estampa_UNIQUE` (`id_estampa`),
  KEY `estampa_fk_idx` (`id_artista`),
  CONSTRAINT `estampa_fk` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estampa`
--

LOCK TABLES `estampa` WRITE;
/*!40000 ALTER TABLE `estampa` DISABLE KEYS */;
INSERT INTO `estampa` VALUES (1,'Aguila','Aguila de Estados Unidos','2022-06-04',2),(2,'WaltherPPK','Icónica pistola utilizada por James Bond','2010-07-07',1),(3,'Omega','Logo de Omega','2023-04-12',3),(4,'Rolex','Logo de Rolex','2011-07-09',3),(5,'USA','Bandera de los Estados Unidos de América','2014-12-31',2),(6,'Bulls','Diseño inspirado en la camiseta de 1990 de Chicago Bulls','2024-06-20',5),(7,'YerbaMate1','*Ruido de mate*','2021-04-04',4),(8,'AstonMartin','Aston Martin DB5','2013-08-12',1),(9,'YerbaMate2','*Ruido de mate*','2020-11-11',4),(10,'Kobe','Kobe Bryant','2018-12-01',5);
/*!40000 ALTER TABLE `estampa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estampa_tags`
--

DROP TABLE IF EXISTS `estampa_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estampa_tags` (
  `id_estampa_tags` int NOT NULL AUTO_INCREMENT,
  `id_estampa` int NOT NULL,
  `id_tag` int NOT NULL,
  PRIMARY KEY (`id_estampa_tags`),
  UNIQUE KEY `idestampa_tags_UNIQUE` (`id_estampa_tags`),
  KEY `estampa_tags_fk_idx` (`id_estampa`),
  KEY `estampa_tags_fk2_idx` (`id_tag`),
  CONSTRAINT `estampa_tags_fk` FOREIGN KEY (`id_estampa`) REFERENCES `estampa` (`id_estampa`),
  CONSTRAINT `estampa_tags_fk2` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estampa_tags`
--

LOCK TABLES `estampa_tags` WRITE;
/*!40000 ALTER TABLE `estampa_tags` DISABLE KEYS */;
INSERT INTO `estampa_tags` VALUES (1,1,1),(2,1,6),(3,1,9),(4,2,3),(5,2,8),(6,3,7),(7,3,3),(8,4,3),(9,4,7),(10,5,1),(11,6,2),(12,6,1),(13,7,4),(14,7,5),(15,7,9),(16,8,3),(17,8,10),(18,9,4),(19,9,5),(20,9,9),(21,10,1),(22,10,2);
/*!40000 ALTER TABLE `estampa_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `id_color` int NOT NULL,
  `id_tipo_medidas` int NOT NULL,
  `id_estampa` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `id_producto_UNIQUE` (`id_producto`),
  KEY `producto_fk_idx` (`id_color`),
  KEY `producto_fk2_idx` (`id_tipo_medidas`),
  KEY `producto_fk3_idx` (`id_estampa`),
  CONSTRAINT `producto_fk` FOREIGN KEY (`id_color`) REFERENCES `color` (`id_color`),
  CONSTRAINT `producto_fk2` FOREIGN KEY (`id_tipo_medidas`) REFERENCES `tipo_medidas` (`id_tipo_medidas`),
  CONSTRAINT `producto_fk3` FOREIGN KEY (`id_estampa`) REFERENCES `estampa` (`id_estampa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,4,10,5),(2,4,4,5),(3,3,6,7),(4,6,17,8),(5,7,22,10);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sesiones`
--

DROP TABLE IF EXISTS `sesiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesiones` (
  `id` int NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `ultima_sesion` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `sesiones_fk_idx` (`id_usuario`),
  CONSTRAINT `sesiones_fk` FOREIGN KEY (`id_usuario`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesiones`
--

LOCK TABLES `sesiones` WRITE;
/*!40000 ALTER TABLE `sesiones` DISABLE KEYS */;
INSERT INTO `sesiones` VALUES (1,1,'2024-06-12'),(2,2,'2024-06-04'),(3,3,'2010-02-01'),(4,4,'2024-02-08'),(5,5,'2023-12-12'),(6,6,'2021-03-14'),(7,7,'2024-04-09'),(8,8,'2024-05-03'),(9,9,'2018-09-09'),(10,10,'2024-03-07');
/*!40000 ALTER TABLE `sesiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id_tag` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tag`),
  UNIQUE KEY `id_tags_UNIQUE` (`id_tag`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (6,'Animales'),(4,'Argentina'),(8,'Armas'),(10,'Autos'),(2,'Basquet'),(1,'Estados Unidos'),(3,'James Bond'),(5,'Mate'),(9,'Naturaleza'),(7,'Relojes');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` int NOT NULL,
  PRIMARY KEY (`id_tipo`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  UNIQUE KEY `id_tipo_UNIQUE` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'remera',28000),(2,'buzo',37500),(3,'tote_bag',18500),(4,'postal',5000),(5,'traje_de_baño',25000),(6,'gorra',18000),(7,'camisa_denim',30000),(8,'sticker',2000),(9,'delantal',8000),(10,'bandana',6500);
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_medidas`
--

DROP TABLE IF EXISTS `tipo_medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_medidas` (
  `id_tipo_medidas` int NOT NULL AUTO_INCREMENT,
  `id_tipo` int NOT NULL,
  `talle` varchar(45) NOT NULL,
  `ancho` int DEFAULT NULL,
  `largo` int DEFAULT NULL,
  `manga` int DEFAULT NULL,
  `circular` varchar(10) DEFAULT NULL,
  `cuadrado` varchar(10) DEFAULT NULL,
  `rectangular` varchar(10) DEFAULT NULL,
  `busto` int DEFAULT NULL,
  `cintura` int DEFAULT NULL,
  `cadera` int DEFAULT NULL,
  `ancho_papel` int DEFAULT NULL,
  `largo_papel` int DEFAULT NULL,
  `ancho_impresion` int DEFAULT NULL,
  `largo_impresion` int DEFAULT NULL,
  `cuello` int DEFAULT NULL,
  `min` int DEFAULT NULL,
  `max` int DEFAULT NULL,
  PRIMARY KEY (`id_tipo_medidas`),
  UNIQUE KEY `id_medidas_producto_UNIQUE` (`id_tipo_medidas`),
  KEY `tipo_medidas_fk_idx` (`id_tipo`),
  CONSTRAINT `tipo_medidas_fk` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_medidas`
--

LOCK TABLES `tipo_medidas` WRITE;
/*!40000 ALTER TABLE `tipo_medidas` DISABLE KEYS */;
INSERT INTO `tipo_medidas` VALUES (1,1,'3XS',45,58,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'XXS',48,61,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'XS',50,64,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'S',53,67,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,'M',55,71,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,'L',57,74,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,'XL',61,77,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,1,'2XL',64,80,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,1,'3XL',67,83,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,2,'S',57,64,73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,2,'M',60,68,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,2,'L',62,72,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,2,'XL',64,77,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,2,'2XL',63,85,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,3,'Default',36,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,33,NULL,NULL,NULL),(16,4,'Default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,18,12,18,NULL,NULL,NULL),(17,5,'S',NULL,NULL,NULL,NULL,NULL,NULL,86,66,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,5,'M',NULL,NULL,NULL,NULL,NULL,NULL,90,70,94,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,5,'L',NULL,NULL,NULL,NULL,NULL,NULL,94,74,96,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,6,'Default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,8,NULL,50,60),(21,7,'XS',40,70,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,7,'S',41,72,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,7,'M',43,76,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,7,'L',44,76,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,7,'XL',46,79,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,7,'XXL',47,80,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,8,'XXS',NULL,NULL,NULL,'5x5','5x5','4x6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,8,'XS',NULL,NULL,NULL,'6x6','6x6','5x7.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,8,'S',NULL,NULL,NULL,'7x7','7x7','6x9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,8,'M',NULL,NULL,NULL,'10x10','10x10','8x12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,8,'L',NULL,NULL,NULL,'12x12','12x12','10x15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,8,'XL',NULL,NULL,NULL,'16x16','16x16','12x22.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,8,'XXL',NULL,NULL,NULL,'25x25','25x25','22x33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,9,'Default',78,73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL),(35,10,'Default',50,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,38,38,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tipo_medidas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-25 14:41:23
