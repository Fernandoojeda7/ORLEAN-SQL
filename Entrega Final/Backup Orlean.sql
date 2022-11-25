-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: orlean
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `bitacora_productos`
--

DROP TABLE IF EXISTS `bitacora_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `old_prod` int DEFAULT NULL,
  `new_prod` int DEFAULT NULL,
  `categoria` int DEFAULT NULL,
  `referencia` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_productos`
--

LOCK TABLES `bitacora_productos` WRITE;
/*!40000 ALTER TABLE `bitacora_productos` DISABLE KEYS */;
INSERT INTO `bitacora_productos` VALUES (1,'2022-11-25','18:34:39','root@localhost',NULL,22,3,'Insercion de producto');
/*!40000 ALTER TABLE `bitacora_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_ventas`
--

DROP TABLE IF EXISTS `bitacora_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `vendedor` varchar(30) DEFAULT NULL,
  `old_venta_prod` int DEFAULT NULL,
  `new_venta_prod` int DEFAULT NULL,
  `old_venta_serv` int DEFAULT NULL,
  `new_venta_serv` int DEFAULT NULL,
  `tipo_operacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_ventas`
--

LOCK TABLES `bitacora_ventas` WRITE;
/*!40000 ALTER TABLE `bitacora_ventas` DISABLE KEYS */;
INSERT INTO `bitacora_ventas` VALUES (1,'2022-11-25','18:34:39','root@localhost',NULL,NULL,NULL,8,'tarjeta debito'),(2,'2022-11-25','18:34:39','root@localhost',NULL,NULL,NULL,2,'contado');
/*!40000 ALTER TABLE `bitacora_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_productos`
--

DROP TABLE IF EXISTS `categorias_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_productos` (
  `id_categ_prod` int NOT NULL AUTO_INCREMENT,
  `descripción` varchar(70) NOT NULL,
  PRIMARY KEY (`id_categ_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_productos`
--

LOCK TABLES `categorias_productos` WRITE;
/*!40000 ALTER TABLE `categorias_productos` DISABLE KEYS */;
INSERT INTO `categorias_productos` VALUES (1,'cabello'),(2,'facial'),(3,'corporal'),(4,'manos y pies'),(5,'ojos'),(6,'labios'),(7,'cejas'),(8,'pestañas'),(9,'uñas');
/*!40000 ALTER TABLE `categorias_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_servicios`
--

DROP TABLE IF EXISTS `categorias_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_servicios` (
  `id_categ_serv` int NOT NULL AUTO_INCREMENT,
  `descripción` varchar(70) NOT NULL,
  PRIMARY KEY (`id_categ_serv`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_servicios`
--

LOCK TABLES `categorias_servicios` WRITE;
/*!40000 ALTER TABLE `categorias_servicios` DISABLE KEYS */;
INSERT INTO `categorias_servicios` VALUES (1,'cabello'),(2,'facial'),(3,'corporal'),(4,'manos y pies'),(5,'ojos'),(6,'labios'),(7,'cejas'),(8,'pestañas'),(9,'uñas');
/*!40000 ALTER TABLE `categorias_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(25) NOT NULL,
  `apellido_cliente` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dirección` varchar(100) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Martina','Lizboa','martina@gmail.com','Alberdi 270 Piso 11 A Resistencia-chaco','3624442090'),(2,'Ornella','Perez','orne@gmail.com','calle Julio A. Roca 340 Resistencia-chaco','3624009988'),(3,'Fiorella','Dominguez','fiorella@gmail.com','calle Mitre 1270 Resistencia-chaco','3624234567'),(4,'Miriam','Insaurralde','miriam@gmail.com','calle Uriburu 2030 Resistencia-chaco','3624098765'),(5,'Valentina','Ramirez','valentina@gmail.com','calle Buena Aventura 234  Resistencia-chaco','3624000000'),(6,'Jualia','Samir','julia@gmail.com','Alberdi 2100 Resistencia-chaco','3624423444'),(7,'Silvia','Insaurralde','silviainsa@gmail.com','Lestani 1400 Resistencia-chaco','3624222222'),(8,'Mirta','Lestian','lestian@gmail.com','Juan B. Justo 222 Resistencia-chaco','3624909090'),(9,'Ester','Giuliani','ester@gmail.com','calle Uriburu 2450 Resistencia-chaco','3624650036'),(10,'Lorena','Kanjer','kanjer@gmail.com','Sarmiento 1000 Piso 5 B Resistencia-chaco','3624433333'),(11,'Silvana','Garcia','silvanita@gmail.com','calle Salta 1300 Resistencia-chaco','3624606060'),(12,'Ramona','Romero','ramonaromaro@gmail.com','calle Julio A. Roca 900 Resistencia-chaco','3624095432'),(13,'Milva','Estanislao','estanislao_n@gmail.com','calle Santa Maria 2800 Resistencia-chaco','3624122133'),(14,'Patricia','Soto','patri_soto@gmail.com','calle Alsina 2030 Resistencia-chaco','3624544555'),(15,'Marisa','Riquelme','marisa@gmail.com','calle Fotin Tapenaga 123 Resistencia-chaco','3624231111'),(16,'Marta','Legran','legran_marta@gmail.com','9 de Julio 3500 Resistencia-chaco','3624432090'),(17,'Clara','Toloza','clarita@gmail.com','calle Seitor 1340 Resistencia-chaco','3624009987'),(18,'Ludmila','Ponce','ludmiponce@gmail.com','calle Mendoza 1250 Resistencia-chaco','3624954567'),(19,'Barbara','Neme','barby@gmail.com','San Martin 570 Resistencia-chaco','3624008765'),(20,'Veronica','Sanchez','veronica.sanchez@gmail.com','calle Brown 4125 Resistencia-chaco','3624111870'),(21,'','','','','');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_servicios`
--

DROP TABLE IF EXISTS `clientes_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_servicios` (
  `id_cliente` int NOT NULL,
  `id_servicio` int NOT NULL,
  KEY `id_cliente` (`id_cliente`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `clientes_servicios_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `clientes_servicios_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_servicios`
--

LOCK TABLES `clientes_servicios` WRITE;
/*!40000 ALTER TABLE `clientes_servicios` DISABLE KEYS */;
INSERT INTO `clientes_servicios` VALUES (18,4),(15,11),(11,2),(9,10),(17,8),(2,1),(3,2),(16,10);
/*!40000 ALTER TABLE `clientes_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(60) NOT NULL,
  `marca` varchar(25) NOT NULL,
  `precio` float NOT NULL,
  `id_categ_prod` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_categ_prod` (`id_categ_prod`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categ_prod`) REFERENCES `categorias_productos` (`id_categ_prod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Agua Miselar','Neloly',2500,2),(2,'Crema manos Antiage','Idraet',2000,4),(3,'Crema Hidratante','Idraet',2700,2),(4,'Aceite Almendtas','Neloly',3000,8),(5,'Balsamico Labial','Neloly',1600,6),(6,'Jabon de oliva y coco','Neloly',600,3),(7,'Desodorante en crema','Idraet',800,3),(8,'Agua de Rosas','Idraet',1500,2),(9,'Tonico facial vivo','Neloly',1500,2),(10,'Crema Corporal incienso y rosas','Neloly',2500,3),(11,'Unguento de eucalipto/jarilla','Neloly',600,6),(12,'Crema para pies Antihongos','Idraet',3800,4),(13,'Mascara de Pestañas','Idraet',2700,8),(14,'Pestañas postizas','Neloly',1400,8),(15,'Esmalte de uñas vegano','Raffinee',2700,9),(16,'Acetona para uñas','Cherimoya',800,9),(17,'Gel de Peeling Enzimatico','Idraet',2500,2),(18,'Base','Idraet',2500,2),(19,'Jalea para depilacion piernas','Neloly',700,3),(20,'Esponja Vegetal','Neloly',550,3),(21,'Gel para manos Antiage','Idraet',2200,4),(22,'Desodorante crema Mentol','Neroly',400,3);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertar_productos` AFTER INSERT ON `productos` FOR EACH ROW insert into respaldo_productos (nombre_producto, marca, precio, id_categ_prod) 
values(new.nombre_producto, new.marca, new.precio, new.id_categ_prod) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertar_log_productos` AFTER INSERT ON `productos` FOR EACH ROW insert into bitacora_productos (fecha,hora,usuario,new_prod,categoria, referencia)
values
(curdate(),curtime(),session_user(),new.id_producto,new.id_categ_prod, 'Insercion de producto') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_log_producto` BEFORE DELETE ON `productos` FOR EACH ROW begin 
insert into bitacora_productos 
(fecha,hora,usuario,old_prod,referencia)
values
(curdate(),curtime(),session_user(),old.id_producto,'Eliminacion de producto');
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(25) NOT NULL,
  `apellid_proveedor` varchar(25) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Karina','Ottaviano','karina@gmail.com','Avenida Siempre Vivas 123 Resistencia-Chaco','3624334455'),(2,'La Estrella','Srl','la_estrella@gmail.com','Puerto Madero Dpto 15 B Capital Federal','112343345'),(3,'Belleza Total','Srl','belleza-total@gmail.com','calle Comandante Fernandez 2030 Resistencia-chaco','3624465036'),(4,'Tu lugar','Srl','cosmetica-tu-lugar@gmail.com','calle Buena Aventura 1200  Resistencia-chaco','36241111000'),(5,'Nelory','Srl','neroly@gmail.com','calle Marcelo T. Alvear 2800 Resistencia-chaco','3625523444'),(6,'Buena Salud','Srl','buenasalud@gmail.com','calle Frondizi 1400 Resistencia-chaco','3624444422'),(7,'Cosmetica Luci','Srl','lucicosmetica@gmail.com','25 de Mayo 220 Resistencia-chaco','3624808090'),(8,'Vida Sana','Srl','vida_sana@gmail.com','calle 1 de Octubre 2450 Resistencia-chaco','3624510036'),(9,'Mente y Cuerpo','Srl','menteycuerpo@gmail.com','Sarmiento 400 Resistencia-chaco','3624553333'),(10,'Katia','Ottaviano','katia@gmail.com','Avenida San Martin 1234 Resistencia-Chaco','3624655478');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_productos`
--

DROP TABLE IF EXISTS `proveedores_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_productos` (
  `id_producto` int NOT NULL,
  `id_proveedor` int NOT NULL,
  KEY `id_producto` (`id_producto`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `proveedores_productos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proveedores_productos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_productos`
--

LOCK TABLES `proveedores_productos` WRITE;
/*!40000 ALTER TABLE `proveedores_productos` DISABLE KEYS */;
INSERT INTO `proveedores_productos` VALUES (1,3),(2,1),(3,7),(4,10),(5,2),(6,5),(7,4),(8,9),(9,8),(10,9),(11,2),(12,7),(13,2),(14,3),(15,1),(16,3),(17,3),(18,9),(19,3),(20,6);
/*!40000 ALTER TABLE `proveedores_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_servicios`
--

DROP TABLE IF EXISTS `proveedores_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_servicios` (
  `id_servicio` int NOT NULL,
  `id_proveedor` int NOT NULL,
  KEY `id_servicio` (`id_servicio`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `proveedores_servicios_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proveedores_servicios_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_servicios`
--

LOCK TABLES `proveedores_servicios` WRITE;
/*!40000 ALTER TABLE `proveedores_servicios` DISABLE KEYS */;
INSERT INTO `proveedores_servicios` VALUES (1,1),(2,10),(3,10),(4,10),(5,1),(6,10),(7,1),(8,1),(9,1),(10,10),(11,1);
/*!40000 ALTER TABLE `proveedores_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respaldo_productos`
--

DROP TABLE IF EXISTS `respaldo_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respaldo_productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(60) NOT NULL,
  `marca` varchar(25) NOT NULL,
  `precio` float NOT NULL,
  `id_categ_prod` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_categ_prod` (`id_categ_prod`),
  CONSTRAINT `respaldo_productos_ibfk_1` FOREIGN KEY (`id_categ_prod`) REFERENCES `categorias_productos` (`id_categ_prod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respaldo_productos`
--

LOCK TABLES `respaldo_productos` WRITE;
/*!40000 ALTER TABLE `respaldo_productos` DISABLE KEYS */;
INSERT INTO `respaldo_productos` VALUES (1,'Gel para manos Antiage','Idraet',2200,4),(2,'Desodorante crema Mentol','Neroly',400,3);
/*!40000 ALTER TABLE `respaldo_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respaldo_ventas`
--

DROP TABLE IF EXISTS `respaldo_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respaldo_ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `precio` float NOT NULL,
  `descuento` float DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `forma_pago` varchar(50) NOT NULL,
  `precio_final` float NOT NULL,
  `id_cliente` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `id_servicio` int DEFAULT NULL,
  `id_proveedor` int NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_producto` (`id_producto`),
  KEY `id_servicio` (`id_servicio`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `respaldo_ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `respaldo_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `respaldo_ventas_ibfk_3` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `respaldo_ventas_ibfk_4` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respaldo_ventas`
--

LOCK TABLES `respaldo_ventas` WRITE;
/*!40000 ALTER TABLE `respaldo_ventas` DISABLE KEYS */;
INSERT INTO `respaldo_ventas` VALUES (1,2000,NULL,'2022-10-07','16:30:00','tarjeta de credito',2000,1,2,NULL,7),(2,2500,NULL,'2022-10-08','17:00:00','tarjeta debito',2500,17,NULL,8,1),(3,3500,NULL,'2022-10-09','19:30:00','contado',3500,11,NULL,2,10);
/*!40000 ALTER TABLE `respaldo_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) NOT NULL,
  `precio` float NOT NULL,
  `id_categ_serv` int NOT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `id_categ_serv` (`id_categ_serv`),
  CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`id_categ_serv`) REFERENCES `categorias_servicios` (`id_categ_serv`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Makeup',3000,2),(2,'Limpieza facial',3500,2),(3,'Lifting de Peatañas',2500,8),(4,'Peeling',3000,2),(5,'Diseño y Henna en Cejas',4500,8),(6,'Masaje Facial',3000,2),(7,'Semipermanentes',3500,9),(8,'Kapping',2500,9),(9,'Esculpidas',4000,9),(10,'Reflexologia podal',3500,4),(11,'Manicura basica',3500,9);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id_stock` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `id_producto` int NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,20,1),(2,32,2),(3,27,3),(4,25,4),(5,50,5),(6,17,6),(7,20,7),(8,30,8),(9,40,9),(10,10,10),(11,29,11),(12,9,12),(13,31,13),(14,14,14),(15,15,15),(16,34,16),(17,24,17),(18,20,18),(19,10,19),(20,18,20);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `precio` float NOT NULL,
  `descuento` float DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `forma_pago` varchar(50) NOT NULL,
  `precio_final` float NOT NULL,
  `id_cliente` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `id_servicio` int DEFAULT NULL,
  `id_proveedor` int NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_producto` (`id_producto`),
  KEY `id_servicio` (`id_servicio`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,2000,NULL,'2022-09-01','18:30:00','contado',2000,1,2,NULL,7),(2,600,NULL,'2022-09-07','17:30:00','tarjeta de credito',600,19,6,NULL,5),(3,2500,NULL,'2022-09-07','18:30:00','tarjeta de debito',2500,2,5,NULL,2),(4,3000,NULL,'2022-09-08','18:00:00','contado',3000,18,NULL,4,10),(5,3500,NULL,'2022-09-08','20:30:00','tarjeta de credito',3500,15,NULL,11,1),(6,2700,300,'2022-09-13','17:30:00','tarjeta de debito',2400,12,3,NULL,7),(7,1400,NULL,'2022-09-15','18:00:00','contado',1400,10,14,NULL,3),(8,3500,NULL,'2022-09-15','18:30:00','tarjeta de credito',3500,11,NULL,2,10),(9,3500,NULL,'2022-09-21','17:00:00','tarjeta de debito',3500,9,NULL,10,1),(10,3000,400,'2022-09-21','18:30:00','contado',2600,5,4,NULL,10),(11,1600,NULL,'2022-09-25','16:30:00','contado',2000,12,5,NULL,2),(12,550,NULL,'2022-09-25','17:30:00','contado',550,5,20,NULL,6),(13,700,NULL,'2022-09-25','18:30:00','tarjeta de debito',700,2,19,NULL,3),(14,2500,NULL,'2022-09-01','18:00:00','contado',2500,17,NULL,8,1),(15,3000,NULL,'2022-10-01','20:30:00','tarjeta de credito',3000,2,NULL,1,1),(16,3800,300,'2022-10-03','17:30:00','tarjeta de debito',3500,9,12,NULL,7),(17,2500,NULL,'2022-10-04','18:00:00','contado',2500,14,1,NULL,3),(18,3500,NULL,'2022-10-04','18:30:00','contado',3500,3,NULL,2,10),(19,3500,NULL,'2022-10-05','17:00:00','tarjeta de credito',3500,16,NULL,10,1),(20,3000,400,'2022-10-05','18:30:00','tarjeta de debito',2600,9,4,NULL,10),(21,2000,NULL,'2022-10-07','16:30:00','tarjeta de credito',2000,1,2,NULL,7),(22,2500,NULL,'2022-10-08','17:00:00','tarjeta debito',2500,17,NULL,8,1),(23,3500,NULL,'2022-10-09','19:30:00','contado',3500,11,NULL,2,10);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertar_ventas` AFTER INSERT ON `ventas` FOR EACH ROW insert into respaldo_ventas (precio, descuento, fecha, hora, forma_pago, precio_final, id_cliente, id_producto, id_servicio, id_proveedor) 
values(new.precio, new.descuento, new.fecha, new.hora, new.forma_pago, new.precio_final, new.id_cliente, new.id_producto, new.id_servicio, new.id_proveedor) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insertar_log` AFTER INSERT ON `ventas` FOR EACH ROW insert into bitacora_ventas (fecha,hora,vendedor,new_venta_prod, new_venta_serv,tipo_operacion)
values
(curdate(),curtime(),session_user(),new.id_producto,new.id_servicio,new.forma_pago) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vw_precio_sin_impuetos`
--

DROP TABLE IF EXISTS `vw_precio_sin_impuetos`;
/*!50001 DROP VIEW IF EXISTS `vw_precio_sin_impuetos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_precio_sin_impuetos` AS SELECT 
 1 AS `id_venta`,
 1 AS `id_producto`,
 1 AS `id_servicio`,
 1 AS `precio_final`,
 1 AS `IVA`,
 1 AS `Precio_sin_IVA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_productos_categorias`
--

DROP TABLE IF EXISTS `vw_productos_categorias`;
/*!50001 DROP VIEW IF EXISTS `vw_productos_categorias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_productos_categorias` AS SELECT 
 1 AS `id_producto`,
 1 AS `id_categ_prod`,
 1 AS `nombre_producto`,
 1 AS `descripción`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_productos_vendidos`
--

DROP TABLE IF EXISTS `vw_productos_vendidos`;
/*!50001 DROP VIEW IF EXISTS `vw_productos_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_productos_vendidos` AS SELECT 
 1 AS `id_venta`,
 1 AS `id_producto`,
 1 AS `nombre_producto`,
 1 AS `precio_final`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_servicios_categorias`
--

DROP TABLE IF EXISTS `vw_servicios_categorias`;
/*!50001 DROP VIEW IF EXISTS `vw_servicios_categorias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_servicios_categorias` AS SELECT 
 1 AS `id_servicio`,
 1 AS `id_categ_serv`,
 1 AS `nombre`,
 1 AS `descripción`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_servicios_vendidos`
--

DROP TABLE IF EXISTS `vw_servicios_vendidos`;
/*!50001 DROP VIEW IF EXISTS `vw_servicios_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_servicios_vendidos` AS SELECT 
 1 AS `id_venta`,
 1 AS `id_servicio`,
 1 AS `nombre`,
 1 AS `precio_final`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_servio_vendido_proveedor`
--

DROP TABLE IF EXISTS `vw_servio_vendido_proveedor`;
/*!50001 DROP VIEW IF EXISTS `vw_servio_vendido_proveedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_servio_vendido_proveedor` AS SELECT 
 1 AS `Servicio`,
 1 AS `Proveedor`,
 1 AS `Fecha`,
 1 AS `Hora`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'orlean'
--

--
-- Dumping routines for database 'orlean'
--
/*!50003 DROP FUNCTION IF EXISTS `calculo_iva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculo_iva`(precio_final float) RETURNS float
    DETERMINISTIC
begin
   declare resultado float;
   set resultado = (precio_final * 0.21);
   return resultado;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `descuento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `descuento`(precio int) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
begin
CASE
WHEN precio >= 5000 then
return 'La compra tiene descuento';
WHEN precio < 5000 then
return 'La compra no tiene descuento';
END CASE;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_dato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_dato`(IN nombre_cli varchar(25), IN apellido_cli varchar(25), IN email_cli varchar(50), IN direccion_cli varchar(100), IN telefono_cli varchar(30))
begin 
    insert into clientes values(null, nombre_cli, apellido_cli, email_cli, direccion_cli, telefono_cli);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ordenamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ordenamiento`(IN campo varchar(30), IN orden varchar(5))
BEGIN
        SET @s = CONCAT('SELECT * FROM productos ORDER BY ',campo,' ',orden);
        PREPARE stmt2 FROM @s;
        EXECUTE stmt2;
DEALLOCATE PREPARE stmt2;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_precio_sin_impuetos`
--

/*!50001 DROP VIEW IF EXISTS `vw_precio_sin_impuetos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_precio_sin_impuetos` AS select `ventas`.`id_venta` AS `id_venta`,`ventas`.`id_producto` AS `id_producto`,`ventas`.`id_servicio` AS `id_servicio`,`ventas`.`precio_final` AS `precio_final`,(`ventas`.`precio_final` * 0.21) AS `IVA`,(`ventas`.`precio_final` - (`ventas`.`precio_final` * 0.21)) AS `Precio_sin_IVA` from `ventas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_productos_categorias`
--

/*!50001 DROP VIEW IF EXISTS `vw_productos_categorias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_productos_categorias` AS select `p`.`id_producto` AS `id_producto`,`p`.`id_categ_prod` AS `id_categ_prod`,`p`.`nombre_producto` AS `nombre_producto`,`c`.`descripción` AS `descripción` from (`productos` `p` join `categorias_productos` `c` on((`p`.`id_categ_prod` = `c`.`id_categ_prod`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_productos_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `vw_productos_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_productos_vendidos` AS select `v`.`id_venta` AS `id_venta`,`v`.`id_producto` AS `id_producto`,`p`.`nombre_producto` AS `nombre_producto`,`v`.`precio_final` AS `precio_final` from (`ventas` `v` join `productos` `p` on((`v`.`id_producto` = `p`.`id_producto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_servicios_categorias`
--

/*!50001 DROP VIEW IF EXISTS `vw_servicios_categorias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_servicios_categorias` AS select `s`.`id_servicio` AS `id_servicio`,`s`.`id_categ_serv` AS `id_categ_serv`,`s`.`nombre` AS `nombre`,`c`.`descripción` AS `descripción` from (`servicios` `s` join `categorias_servicios` `c` on((`s`.`id_categ_serv` = `c`.`id_categ_serv`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_servicios_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `vw_servicios_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_servicios_vendidos` AS select `v`.`id_venta` AS `id_venta`,`v`.`id_servicio` AS `id_servicio`,`s`.`nombre` AS `nombre`,`v`.`precio_final` AS `precio_final` from (`ventas` `v` join `servicios` `s` on((`v`.`id_servicio` = `s`.`id_servicio`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_servio_vendido_proveedor`
--

/*!50001 DROP VIEW IF EXISTS `vw_servio_vendido_proveedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_servio_vendido_proveedor` AS select `s`.`nombre` AS `Servicio`,`p`.`nombre_proveedor` AS `Proveedor`,`v`.`fecha` AS `Fecha`,`v`.`hora` AS `Hora` from ((`ventas` `v` join `servicios` `s` on((`v`.`id_servicio` = `s`.`id_servicio`))) join `proveedores` `p` on((`v`.`id_proveedor` = `p`.`id_proveedor`))) */;
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

-- Dump completed on 2022-11-25 18:35:51
