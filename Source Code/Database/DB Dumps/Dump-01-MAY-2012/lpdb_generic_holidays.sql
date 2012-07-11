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
-- Table structure for table `generic_holidays`
--

DROP TABLE IF EXISTS `generic_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL,
  `description` varchar(2000) NOT NULL DEFAULT '',
  `alias` char(255) DEFAULT '',
  `holiday_date` date DEFAULT NULL,
  `since_date` date DEFAULT NULL,
  `holiday_type` int(11) NOT NULL DEFAULT '0',
  `history` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `holiday_type` (`holiday_type`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_holidays`
--

LOCK TABLES `generic_holidays` WRITE;
/*!40000 ALTER TABLE `generic_holidays` DISABLE KEYS */;
INSERT INTO `generic_holidays` VALUES (1,'Republic Day','The Republic Day of India is a national holiday of India to mark the adoption of the Constitution of India and the transition of India from a British Dominion to a republic on January 26, 1950. It is one of the three national holidays in India.','',NULL,NULL,6,''),(2,'Maha Shivratri','Maha Shivratri, the night of the worship of Lord Shiva, occurs on the 14th night of the new moon during the dark half of the month of Phalguna. It falls on a moonless February night, when Hindus offer special prayer to the lord of destruction.','',NULL,NULL,6,''),(3,'Holi','Holi, also known as Dhuli Vandana in Sanskrit,also Dhulheti, Dhulandi or Dhulendi, is celebrated by people throwing coloured powder and coloured water at each other.','',NULL,NULL,6,''),(4,'Mahavir Jayanti','In Jainism, Mahavir Jayanti is the most important religious holiday. It celebrates the birth of Mahavira, the last Tirthankara. He was born on the 13th day of the rising moon of Chaitra, in either 599 BC or 615 BC (depending on religious tradition).','',NULL,NULL,6,''),(5,'Good Friday','Good Friday, also known as Holy Friday, Black Friday, Great Friday, is a religious holiday observed primarily by Christians commemorating the crucifixion of Jesus Christ and his death at Calvary.','',NULL,NULL,6,''),(6,'May Day','May Day is commemorated in India as the Labour Day which began with the United States Labour Movement on May 1, 1886.','',NULL,NULL,6,''),(7,'Buddha Purnima','Buddha Jayanti or also known as Buddha Purnima is the most sacred festivals of Buddhist. Buddha Purnima (Buddha Birthday) is celebrated in remembrance Lord Buddha. Lord Buddha is the founder of Buddhism. This day is the birth anniversary of Lord Buddha.','',NULL,NULL,6,''),(8,'Independence Day','India\'s Independence Day is celebrated on August 15 to commemorate its independence from British rule and its birth as a sovereign nation on that day in 1947. The day is a national holiday in India.','',NULL,NULL,6,''),(9,'Krishna Janmastami','Krishna Janmashtami , also known as \"Krishnashtami\",\"Saatam Aatham\" ,\"Gokulashtami\", \"Ashtami Rohini\", \"Srikrishna Jayanti\", \"Sree Jayanthi\" or sometimes merely as \"Janmashtami\", is a Hindu festival celebrating the birth of Lord Krishna, an avatar of the Hindu deity Vishnu.','',NULL,NULL,6,''),(10,'Id-Ul-Fitr','Eid al-Fitr often abbreviated to Eid, is a Muslim holiday that marks the end of Ramadan, the Islamic holy month of fasting (sawm).The holiday symbolizes the breaking of the fasting period.','',NULL,NULL,6,''),(11,'Ganesh Chaturthi','Ganesha Chaturthi , also known as Vinayaka Chaturthi, is the Hindu festival of Ganesha. It is the birthday of Lord Ganesha who is widely worshiped as the god of wisdom, prosperity and good fortune.','',NULL,NULL,6,''),(12,'Mahatma Gandhi Jayanthi','Gandhi Jayanti is a national holiday celebrated in India to mark the occasion of the birthday of Mahatma Gandhi, the \"Father of the Nation\". It is celebrated on October 2, every year. It is one of the three official declared National Holidays of India and is observed in all its states and union territories.','',NULL,NULL,6,''),(13,'Vijaya Dashami','Vijayadashami is a festival celebrated in varying forms across Nepal and India. It is celebrated on the tenth day of the bright fortnight (Shukla Paksha) of the Hindu autumn month of Ashvin or Ashwayuja, and is the grand culmination of the 10-day annual Navaratri festival. Vijayadashami is also known as Dasara, Dashahara, Navaratri, and Durgotsav. It is celebrated in the lunar month of Ashwin from the Shukla Paksha Pratipada to the Dashami, or the tenth day of Ashwin.','',NULL,NULL,6,''),(14,'Diwali','Diwali (often written Deepavali) is a significant festival in Hinduism, Sikhism, Buddhism, and Jainism, and an official holiday in India. Adherents of these religions celebrate Diwali as the Festival of Lights. They light diyasâ€”cotton-like string wicks inserted in small clay pots filled with coconut oilâ€”to signify victory of good over the evil within an individual.','',NULL,NULL,6,''),(15,'Guru Nanak Jayanthi','Guru Nanak Jayanti is the birthday of the first Sikh Guru, Guru Nanak, and one of the most sacred festivals in Sikhism. Guru Nanak Dev Ji (the First Guru, the founder of Sikhism) was born on 14 April 1469 in Rai-Bhoi-di Talwandi in the present Shekhupura District of Pakistan, now Nankana Sahib.','',NULL,NULL,6,''),(16,'Christmas','Christmas or Christmas Day is a holiday observed mostly on December 25 to commemorate the birth of Jesus, the central figure of Christianity.','',NULL,NULL,6,''),(17,'Makar Sankranti','','',NULL,NULL,0,''),(18,'Pongal','','',NULL,NULL,0,''),(19,'Basanta Panchami /Sri Panchami','','',NULL,NULL,0,''),(20,'Guru Ravida\'s birthday','','',NULL,NULL,0,''),(21,'Swami Dayananda Saraswati Jayanti','','',NULL,NULL,0,''),(22,'Shivaji Jayanti','','',NULL,NULL,0,''),(23,'Holika Dahan','','',NULL,NULL,0,''),(24,'Chaitra Sukladi/Gudi Padava/ Ugadi/Cheti Chand','','',NULL,NULL,0,''),(25,'Ram Navmi','','',NULL,NULL,0,''),(26,'Easter Sunday','','',NULL,NULL,0,''),(27,'Vaisakhi','','',NULL,NULL,0,''),(28,'Vishu','','',NULL,NULL,0,''),(29,'Mesadi','','',NULL,NULL,0,''),(30,'Guru Rabindranath\'s birthday','','',NULL,NULL,0,''),(31,'Hazarat Ali\'s Birthday','','',NULL,NULL,0,''),(32,'Rath Yatra','','',NULL,NULL,0,''),(33,'Raksha Bandhan','','',NULL,NULL,0,''),(34,'Jamat-UL-Vida','','',NULL,NULL,0,''),(35,'Parsi New Year\'s day','','',NULL,NULL,0,''),(36,'Vinayaka Chaturthi','','',NULL,NULL,0,''),(37,'Onam','','',NULL,NULL,0,''),(38,'Maha Saptami','','',NULL,NULL,0,''),(39,'Dussehra (Maha Ashtami','','',NULL,NULL,0,''),(40,'Dussehra (Maha Navrni)','','',NULL,NULL,0,''),(41,'Maharshi Valmiki\'s Birthday','','',NULL,NULL,0,''),(42,'Karaka Chaturthi (Karva Chouth)','','',NULL,NULL,0,''),(43,'Naraka Chaturdasi','','',NULL,NULL,0,''),(44,'Deepavali (South India)','','',NULL,NULL,0,''),(45,'Govardhan Puja','','',NULL,NULL,0,''),(46,'Bhai Duj','','Bhhaya Dooj | Bhai Beej | Dvitiya',NULL,NULL,0,''),(47,'Pratihar Sashthi or Surya Sashti (Chhat Puja)','','',NULL,NULL,0,''),(48,'Guru Tej Bahadur\'s Martyrdom Day','','',NULL,NULL,0,''),(49,'Christmas Eve','','',NULL,NULL,0,''),(50,'Dhanteras','','Dhantrayodashi | Yamadeepdaan',NULL,NULL,0,''),(51,'Narak Chaturdashi','','Kali Chaudas | Choti Diwali',NULL,NULL,0,''),(52,'Deepavali','','Baddi Diwali | Lakshmi Puja | Diwali',NULL,NULL,0,''),(53,'Padwa Puja & Govardhan Puja','','Pratipat, Annakoot',NULL,NULL,0,''),(54,'Milad-Un-Nabi','','Id-E-Milad | Birthday of Prophet Mohammad',NULL,NULL,0,''),(55,'Bakri Id','','Idul Zuha',NULL,NULL,0,''),(56,'Muharram','','',NULL,NULL,0,'');
/*!40000 ALTER TABLE `generic_holidays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-01  2:07:11
