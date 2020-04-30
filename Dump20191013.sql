-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: casa_materiales
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idclientes` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `apellidoP` varchar(45) NOT NULL,
  `apellidoM` varchar(45) NOT NULL,
  `idtelefono` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `iddatosfacturas` int(11) NOT NULL,
  PRIMARY KEY (`idclientes`),
  KEY `iddatosfacturas_idx` (`iddatosfacturas`),
  KEY `idtelefono_idx` (`idtelefono`),
  CONSTRAINT `iddatosfacturass` FOREIGN KEY (`iddatosfacturas`) REFERENCES `datos_facturas` (`iddatosfacturas`),
  CONSTRAINT `idtelefonos` FOREIGN KEY (`idtelefono`) REFERENCES `telefono` (`idtelefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,1,'Martinez ','Chavez ',2001,'pumita.zaira@gmail.com',1),(2,2,'Bautista','Chavez',2002,'susana.bautista@gmail.com',2),(3,3,'Rios','Espino',2003,'armando.rios@hotmail.com',3),(4,4,'Garcia','Cruz',2004,'alain.garcia@gmail.com',4),(5,5,'chavez','Ruiz',2005,'isa.chavez@gmail.com',5);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compania`
--

DROP TABLE IF EXISTS `compania`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compania` (
  `idcompania` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `rfc` varchar(45) NOT NULL,
  `iddireccion` int(11) NOT NULL,
  PRIMARY KEY (`idcompania`),
  KEY `iddireccion_idx` (`iddireccion`),
  CONSTRAINT `iddireccions` FOREIGN KEY (`iddireccion`) REFERENCES `direccion` (`iddireccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compania`
--

LOCK TABLES `compania` WRITE;
/*!40000 ALTER TABLE `compania` DISABLE KEYS */;
INSERT INTO `compania` VALUES (1,'casa materiales lopez ','CAS45152',1),(2,'casa materiales cemento azul','CAMD7854',2),(3,'materiales lopez','MACZ478',3),(4,'materiales martinez','MAZ2451',4),(5,'materiales azul y oro','MAZ2541',5);
/*!40000 ALTER TABLE `compania` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_facturas`
--

DROP TABLE IF EXISTS `datos_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_facturas` (
  `iddatosfacturas` int(11) NOT NULL,
  `rfc` varchar(45) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`iddatosfacturas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_facturas`
--

LOCK TABLES `datos_facturas` WRITE;
/*!40000 ALTER TABLE `datos_facturas` DISABLE KEYS */;
INSERT INTO `datos_facturas` VALUES (1,'MACZ290560','persona fisica','pumita.zaira@gmail.com'),(2,'BAC34567','persona fisica','susana.bautista@gmail.com'),(3,'ARMNB4567','persona fisica','armando.rios@hotmail.com'),(4,'AGC437689','persona fisica','alain.garcia@gmail.com'),(5,'ICRM3467Q','persona fisica ','isa.chavez@gmail.com');
/*!40000 ALTER TABLE `datos_facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `iddireccion` int(11) NOT NULL,
  `calle` varchar(45) NOT NULL,
  `no_exterior` int(11) NOT NULL,
  `no_interior` int(11) NOT NULL,
  `codigopostal` int(11) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `idclientes` int(11) NOT NULL,
  PRIMARY KEY (`iddireccion`),
  KEY `idclienntes_idx` (`idclientes`),
  CONSTRAINT `idclienntess` FOREIGN KEY (`idclientes`) REFERENCES `clientes` (`idclientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'adolfo lopez mateos',4,94,500,'cuajimalpa','CDMX','CDMX',1),(2,'jesus del monte ',56,482,500,'cuajimalpa','CDMX','CDMX',2),(3,'contadero ',21,632,452,'alvaro obregon','CDMX','CDMX',3),(4,'castillo ledon',5,254,452,'benito juarez','CDMX','CDMX',4),(5,'bosques de las lomas',4,45,521,'cuajimalpa','CDMX','CDMX',5);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `idfacturas` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idfacturas`),
  KEY `idcliente_idx` (`idcliente`),
  CONSTRAINT `idclientes` FOREIGN KEY (`idcliente`) REFERENCES `clientes` (`idclientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,1,'2019-10-02'),(2,2,'2019-10-01'),(3,3,'2019-10-03'),(4,4,'2019-10-02'),(5,5,'2019-09-29');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiales` (
  `idmateriales` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idmateriales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` VALUES (1,'laminas','lamina color gris medida 2m x 1.5 m'),(2,'ladrillo','ladrillo color naranja medida pequeña'),(3,'ladrillo',' ladrillo  color gris'),(4,'cemento','cemento 10  de kg'),(5,'yeso',' yeso de 5 kg ');
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `idnota` int(11) NOT NULL,
  `idorden_pedidos` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idmateriales` int(11) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`idnota`),
  KEY `idorden_pedidos_idx` (`idorden_pedidos`),
  KEY `idmateriales_idx` (`idmateriales`),
  CONSTRAINT `idmaterialess` FOREIGN KEY (`idmateriales`) REFERENCES `materiales` (`idmateriales`),
  CONSTRAINT `idorden_pedidoss` FOREIGN KEY (`idorden_pedidos`) REFERENCES `orden_pedidos` (`idorden_pedidos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,1,'2019-10-10',1,485),(2,2,'2019-10-05',2,450),(3,3,'2019-10-03',3,210),(4,4,'2019-10-03',4,500),(5,5,'2019-09-29',5,3000);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_pedidos`
--

DROP TABLE IF EXISTS `orden_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_pedidos` (
  `idorden_pedidos` int(11) NOT NULL,
  `codigo_material` int(11) NOT NULL,
  `idproveedores` int(11) NOT NULL AUTO_INCREMENT,
  `fecha pedido` date NOT NULL,
  `idprecios_p` int(11) NOT NULL,
  PRIMARY KEY (`idorden_pedidos`),
  KEY `idprecios_p_idx` (`idprecios_p`),
  KEY `idproveedores_idx` (`idproveedores`),
  CONSTRAINT `idprecios_ps` FOREIGN KEY (`idprecios_p`) REFERENCES `precios_p` (`idprecios_p`),
  CONSTRAINT `idproveedoress` FOREIGN KEY (`idproveedores`) REFERENCES `proveedores` (`idproveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_pedidos`
--

LOCK TABLES `orden_pedidos` WRITE;
/*!40000 ALTER TABLE `orden_pedidos` DISABLE KEYS */;
INSERT INTO `orden_pedidos` VALUES (1,1,1,'2019-10-04',1),(2,2,2,'2019-09-30',2),(3,3,3,'2019-09-29',3),(4,4,4,'2019-10-20',4),(5,5,5,'2019-10-07',5);
/*!40000 ALTER TABLE `orden_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios_p`
--

DROP TABLE IF EXISTS `precios_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precios_p` (
  `idprecios_p` int(11) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`idprecios_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios_p`
--

LOCK TABLES `precios_p` WRITE;
/*!40000 ALTER TABLE `precios_p` DISABLE KEYS */;
INSERT INTO `precios_p` VALUES (1,500),(2,200),(3,450),(4,470),(5,500);
/*!40000 ALTER TABLE `precios_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_pedidos`
--

DROP TABLE IF EXISTS `productos_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_pedidos` (
  `idproductos_pedidos` int(11) NOT NULL,
  `idmaterial` int(11) NOT NULL,
  `orden_pedidoscol` int(11) NOT NULL,
  `precio_pedido` float NOT NULL,
  PRIMARY KEY (`idproductos_pedidos`),
  KEY `idmaterial_idx` (`idmaterial`),
  CONSTRAINT `idmaterials` FOREIGN KEY (`idmaterial`) REFERENCES `materiales` (`idmateriales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_pedidos`
--

LOCK TABLES `productos_pedidos` WRITE;
/*!40000 ALTER TABLE `productos_pedidos` DISABLE KEYS */;
INSERT INTO `productos_pedidos` VALUES (1,1,37,500),(2,2,45,450),(3,3,23,457),(4,4,85,600),(5,5,22,1455);
/*!40000 ALTER TABLE `productos_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idproveedores` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idproveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'casa_castillo'),(2,'materiales_cruz_azul'),(3,'casa_materiales_lopez'),(4,'casa_materiales_pera'),(5,'casa_cemex');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reclamaciones`
--

DROP TABLE IF EXISTS `reclamaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reclamaciones` (
  `idreclamaciones` int(11) NOT NULL,
  `idorden_pedidos` int(11) NOT NULL,
  `fecha_reclamacion` date NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `idnota` int(11) NOT NULL,
  PRIMARY KEY (`idreclamaciones`),
  KEY `idorden_pedidos_idx` (`idorden_pedidos`),
  CONSTRAINT `idorden_pedidos` FOREIGN KEY (`idorden_pedidos`) REFERENCES `orden_pedidos` (`idorden_pedidos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reclamaciones`
--

LOCK TABLES `reclamaciones` WRITE;
/*!40000 ALTER TABLE `reclamaciones` DISABLE KEYS */;
INSERT INTO `reclamaciones` VALUES (1,1,'2019-10-03','no es la medida que busco ',1),(2,2,'2019-10-01','el material no le quedo',2),(3,3,'2019-10-11','el material salio mal ',3),(4,4,'2019-10-02','el material salio mal',4),(5,5,'2019-10-01','no  le quedo ',5);
/*!40000 ALTER TABLE `reclamaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefono` (
  `idtelefono` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `lada` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`idtelefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
INSERT INTO `telefono` VALUES (2001,556970,55,'celular'),(2002,5546121,55,'celular'),(2003,5546188,55,'celular'),(2004,5543189,55,'celular'),(2005,581369,55,'casa');
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-13 16:24:46
