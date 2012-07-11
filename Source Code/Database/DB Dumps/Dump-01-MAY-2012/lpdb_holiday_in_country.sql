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
-- Table structure for table `holiday_in_country`
--

DROP TABLE IF EXISTS `holiday_in_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday_in_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `holiday_type` int(11) NOT NULL DEFAULT '0',
  `holiday_id` int(11) NOT NULL DEFAULT '0',
  `country_id` int(11) NOT NULL DEFAULT '0',
  `holiday_date` date NOT NULL,
  `year` int(4) NOT NULL,
  `week_day` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `holiday_type` (`holiday_type`),
  KEY `holiday_id` (`holiday_id`),
  KEY `country_id` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday_in_country`
--

LOCK TABLES `holiday_in_country` WRITE;
/*!40000 ALTER TABLE `holiday_in_country` DISABLE KEYS */;
INSERT INTO `holiday_in_country` VALUES (1,6,1,100,'2012-01-26',2012,'Thursday'),(2,6,54,100,'2012-02-05',2012,'Sunday'),(3,6,2,100,'2012-02-20',2012,'Monday'),(4,6,3,100,'2012-03-08',2012,'Thursday'),(5,6,4,100,'2012-04-05',2012,'Thursday'),(6,6,5,100,'2012-04-06',2012,'Friday'),(7,6,6,100,'2012-05-01',2012,'Tuesday'),(8,6,7,100,'2012-05-06',2012,'Sunday'),(9,6,9,100,'2012-08-10',2012,'Friday'),(10,6,8,100,'2012-08-15',2012,'Wednesday'),(11,6,10,100,'2012-08-20',2012,'Monday'),(12,6,11,100,'2012-09-19',2012,'Wednesday'),(13,6,12,100,'2012-10-02',2012,'Tuesday'),(14,6,13,100,'2012-10-24',2012,'Wednesday'),(15,6,55,100,'2012-10-27',2012,'Saturday'),(16,6,14,100,'2012-11-13',2012,'Tuesday'),(17,6,56,100,'2012-11-25',2012,'Sunday'),(18,6,15,100,'2012-11-28',2012,'Wednesday'),(19,6,16,100,'2012-12-25',2012,'Tuesday');
/*!40000 ALTER TABLE `holiday_in_country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-01  2:07:15
