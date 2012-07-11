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
-- Table structure for table `union_territories`
--

DROP TABLE IF EXISTS `union_territories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `union_territories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL DEFAULT '',
  `code` char(2) NOT NULL DEFAULT '',
  `country_id` int(11) DEFAULT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `population` float(20,2) NOT NULL DEFAULT '0.00',
  `language` char(255) DEFAULT NULL,
  `largest_city` char(255) DEFAULT NULL,
  `number_of_districts` int(11) DEFAULT '0',
  `number_of_villages` int(11) DEFAULT '0',
  `number_of_towns` int(11) DEFAULT '0',
  `population_density` int(11) DEFAULT '0',
  `literacy_rate` float(20,2) DEFAULT '0.00',
  `percent_urban_population` float(20,2) DEFAULT '0.00',
  `sex_ratio` int(11) DEFAULT '0',
  `sex_ratio_zero_to_six` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `union_territories`
--

LOCK TABLES `union_territories` WRITE;
/*!40000 ALTER TABLE `union_territories` DISABLE KEYS */;
INSERT INTO `union_territories` VALUES (1,'Andaman and Nicobar Islands','',100,0,379944.00,'Bengali','Port Blair',2,547,3,46,86.27,32.60,878,957),(2,'Chandigarh','',100,0,1054686.00,'Punjabi','Chandigarh',1,24,1,9252,86.43,89.80,818,845),(3,'Dadra and Nagar Haveli','',100,0,342853.00,'Marathi|Gujarati','Silvassa',1,70,2,698,77.65,22.90,775,979),(4,'Daman and Diu','',100,0,242911.00,'Gujarati','Daman',2,23,2,2169,87.07,36.20,618,926),(5,'Lakshadweep','',100,0,64429.00,'Malayalam','Andrott',1,24,3,2013,92.28,44.50,946,959),(6,'National Capital Territory of Delhi','',100,0,16753235.00,'Hindi','New Delhi',9,165,62,11297,86.34,93.20,866,868),(7,'Pondicherry','',100,0,1244464.00,'French|Tamil','Pondicherry',4,92,6,2598,86.55,66.60,1038,967);
/*!40000 ALTER TABLE `union_territories` ENABLE KEYS */;
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
