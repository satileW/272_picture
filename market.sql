-- MySQL dump 10.13  Distrib 5.5.51, for Linux (x86_64)
--
-- Host: localhost    Database: cmpe272FinalProject
-- ------------------------------------------------------
-- Server version	5.5.51

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `market_cart`
--

DROP TABLE IF EXISTS `market_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_cart`
--

LOCK TABLES `market_cart` WRITE;
/*!40000 ALTER TABLE `market_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `market_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_company`
--

DROP TABLE IF EXISTS `market_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_company`
--

LOCK TABLES `market_company` WRITE;
/*!40000 ALTER TABLE `market_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `market_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_order`
--

DROP TABLE IF EXISTS `market_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_ids` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `cost` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_order`
--

LOCK TABLES `market_order` WRITE;
/*!40000 ALTER TABLE `market_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `market_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_product`
--

DROP TABLE IF EXISTS `market_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(255) NOT NULL,
  `visited` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_product`
--

LOCK TABLES `market_product` WRITE;
/*!40000 ALTER TABLE `market_product` DISABLE KEYS */;
INSERT INTO `market_product` VALUES (1,'30001',200,'30001.png',3),(2,'30002',150,'30002.jpg',3),(3,'30003',300,'30003.jpg',3),(4,'30004',210,'30004.png',3),(5,'30005',120,'30005.jpg',3),(6,'30006',110,'30006.jpg',3),(7,'30007',299,'30007.jpg',3),(8,'30008',159,'30008.jpg',3),(9,'30009',99,'30009.jpg',3),(10,'30010',40,'30010.png',3),(11,'30011',130,'30011.jpg',3);
/*!40000 ALTER TABLE `market_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_rate`
--

DROP TABLE IF EXISTS `market_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_rate`
--

LOCK TABLES `market_rate` WRITE;
/*!40000 ALTER TABLE `market_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `market_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_user`
--

DROP TABLE IF EXISTS `market_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_user`
--

LOCK TABLES `market_user` WRITE;
/*!40000 ALTER TABLE `market_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `market_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-03 17:54:11
