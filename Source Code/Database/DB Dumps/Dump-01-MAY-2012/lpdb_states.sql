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
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Andhra Pradesh','AP',100,84665533,275045.00,'Telugu|Urdu','Hyderabad',23,28123,210,308,67.66,27.30,992,961),(2,'Arunachal Pradesh','AR',100,1382611,83743.00,NULL,'Itanagar',16,4065,17,17,66.95,20.80,920,964),(3,'Assam','AS',100,31169272,78550.00,'Assamese|Bodo|Rabha dialect|Deori|Bengali','Guwahati',23,26312,125,397,73.18,12.90,954,965),(4,'Bihar','BR',100,103804637,99200.00,'Hindi|Bhojpuri|Maithili|Magadhi','Patna',38,45098,130,1102,63.82,10.50,916,942),(5,'Chhattisgarh','CT',100,25540196,135194.00,'Chattisgarhi|Hindi','Raipur',16,20308,97,189,71.04,20.10,991,975),(6,'Goa','GA',100,1457723,3702.00,'Konkani|Marathi','Vasco da Gama',2,359,44,394,87.40,49.80,968,938),(7,'Gujarat','GJ',100,60383628,196024.00,'Gujarati','Ahmedabad',25,18539,242,308,79.31,37.40,918,883),(8,'Haryana','HR',100,25353081,44212.00,'Haryanvi (Western Hindi)','Faridabad',21,6955,106,573,76.64,28.90,877,819),(9,'Himachal Pradesh','HP',100,6856509,55673.00,'Western Hindi','Shimla',12,20118,57,123,83.78,9.80,920,896),(10,'Jammu and Kashmir','JK',100,12548926,222236.00,'Urdu|Kashmiri|Dogri|Ladakhi','Jammu',14,6652,75,124,68.74,24.80,883,941),(11,'Jharkhand','JH',100,32966238,74677.00,'Hindi','Jamshedpur',24,32615,152,414,67.63,22.20,947,965),(12,'Karnataka','KA',100,61130704,191791.00,'Kannada','Bangalore',30,29406,270,319,75.60,34.00,968,946),(13,'Kerala','KL',100,33387677,38863.00,'Malayalam','Thiruvananthapuram',14,1364,159,859,93.91,26.00,1084,960),(14,'Madhya Pradesh','MP',100,72597565,308252.00,'Hindi','Bhopal',45,55393,394,236,71.00,26.50,930,932),(15,'Maharashtra','MH',100,112372972,307713.00,'Marathi','Mumbai',35,43711,378,365,82.91,42.40,925,913),(16,'Manipur','MN',100,2721756,22347.00,'Manipuri','Imphal',9,2391,33,122,79.85,25.10,987,957),(17,'Meghalaya','ML',100,2964007,22720.00,'Khasi|Pnar','Shillong',7,6026,16,132,75.48,19.60,986,973),(18,'Mizoram','MZ',100,1091014,21081.00,'Mizo','Aizawl',8,817,22,52,91.58,49.60,975,964),(19,'Nagaland','NL',100,1980602,16579.00,'Angami|Ao languages|Chang|Chakhesang|Konyak|Sema','Dimapur',11,1317,9,119,80.11,17.20,931,964),(20,'Orissa','OR',100,41947358,155820.00,'Oriya','Bhubaneswar',30,51349,138,269,73.45,15.00,978,953),(21,'Punjab','PJ',100,27704236,50362.00,'Punjabi','Ludhiana',17,12673,157,550,76.68,33.90,893,798),(22,'Rajasthan','RJ',100,68621012,342269.00,'Rajasthani','Jaipur',32,41353,222,201,67.06,23.40,926,909),(23,'Sikkim','SK',100,607688,7096.00,'Nepali','Gangtok',4,452,9,86,82.20,11.10,889,963),(24,'Tamil Nadu','TN',100,72138958,130058.00,'Tamil','Chennai',32,16317,832,480,80.33,44.00,995,942),(25,'Tripura','TR',100,3671032,10491.69,'Bengali','Agartala',4,870,23,555,87.75,17.10,961,966),(26,'Uttar Pradesh','UP',100,199581477,243286.00,'Hindi|Urdu','Kanpur',72,107452,704,828,69.72,20.80,908,916),(27,'Uttarakhand','UL',100,10116752,53566.00,'Western Hindi|Kumaoni|Garwali','Dehradun',13,16826,86,189,79.63,25.70,963,908),(28,'West Bengal','WB',100,91347736,88752.00,'Bengali|Urdu|Nepali|Santali','Kolkata',18,40782,375,1029,77.08,28.00,947,960);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
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
