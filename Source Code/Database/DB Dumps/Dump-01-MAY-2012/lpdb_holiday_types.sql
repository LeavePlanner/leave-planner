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
-- Table structure for table `holiday_types`
--

DROP TABLE IF EXISTS `holiday_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(50) NOT NULL,
  `description` char(255) NOT NULL DEFAULT '',
  `alias` char(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday_types`
--

LOCK TABLES `holiday_types` WRITE;
/*!40000 ALTER TABLE `holiday_types` DISABLE KEYS */;
INSERT INTO `holiday_types` VALUES (1,'Religious holidays','Linked to faiths and religions',''),(2,'Northern Hemisphere winter holidays','Winter in the Northern Hemisphere features many holidays that involve festivals and feasts',''),(3,'National holidays','Sovereign nations and territories observe holidays based on events of significance to their history',''),(4,'Secular holidays','Several secular holidays are observed such as Earth Day or Arbor Day or Labor Day',''),(5,'Unofficial holidays','These are holidays that are not traditionally marked on calendars.',''),(6,'Puplic holidays','A public holiday, national holiday or legal holiday is a holiday generally established by law and is usually a non-working day during the year.',''),(7,'Bank holidays','',''),(8,'Trading holidays','',''),(9,'School holidays','',''),(10,'Election holidays','','');
/*!40000 ALTER TABLE `holiday_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-01  2:07:12
