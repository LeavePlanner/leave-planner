CREATE DATABASE  IF NOT EXISTS `lpdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lpdb`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: lpdb
-- ------------------------------------------------------
-- Server version	5.5.21

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
-- Table structure for table `city_types`
--

DROP TABLE IF EXISTS `city_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(10) NOT NULL DEFAULT '',
  `description` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_types`
--

LOCK TABLES `city_types` WRITE;
/*!40000 ALTER TABLE `city_types` DISABLE KEYS */;
INSERT INTO `city_types` VALUES (1,'CB','Cantonment Board/Cantonment'),(2,'CMC','City Municipal Council'),(3,'CT','Census Town'),(4,'EO','Estate Office'),(5,'GP','Gram Panchayat'),(6,'INA','Industrial Notified Area'),(7,'ITS','Industrial Township'),(8,'M','Municipality'),(9,'MB','Municipal Board'),(10,'MC','Municipal Committee'),(11,'MCl','Municipal Council'),(12,'MCorp','Municipal Corporation /Corporation'),(13,'NA','Notified Area'),(14,'NAC','Notified Area Committee/Notified Area Council'),(15,'NP','Nagar Panchayat'),(16,'NT','Notified Town'),(17,'NTA','Notified Town Area'),(18,'STC','Small Town Committee'),(19,'TC','Town Committee/Town Area Committee'),(20,'TMC','Town Municipal Council'),(21,'TP','Town Panchayat'),(22,'TS','Township'),(23,'UA','Urban Agglomeration'),(24,'Megacity','Popultation above 5000000'),(25,'Metropolis','Popultation between 1000000-4999999'),(26,'Sub-Metro','Popultation between 500000-999999'),(27,'Sub-Metro','Popultation between 500000-999999'),(28,'Big Town','Popultation between 100000-499999'),(29,'Small Town','Popultation between 40000-99999'),(30,'Big Vil','Popultation between 10000-39999'),(31,'Small Vil','Popultation between 5000-9999'),(32,'Hamlet','Popultation below 4999');
/*!40000 ALTER TABLE `city_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-01  2:07:14
