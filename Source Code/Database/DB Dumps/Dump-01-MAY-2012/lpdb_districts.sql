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
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL DEFAULT '',
  `code` char(2) NOT NULL DEFAULT '',
  `state_id` int(11) DEFAULT NULL,
  `headquarter` char(255) DEFAULT NULL,
  `population` float(20,2) NOT NULL DEFAULT '0.00',
  `area` int(11) NOT NULL DEFAULT '0',
  `density` int(11) DEFAULT '0',
  `official_website` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'Adilabad','AD',1,'Adilabad',2479347.00,16105,154,'http://adilabad.nic.in/'),(2,'Anantapur','AN',1,'Anantapur',3639304.00,19130,190,'http://anantapur.nic.in/'),(3,'Chittoor','CH',1,'Chittoor',3735202.00,15152,247,'http://chittoor.nic.in/'),(4,'East Godavari','EG',1,'Kakinada',4872622.00,10807,451,'http://eastgodavari.nic.in/'),(5,'Guntur','GU',1,'Guntur',4405521.00,11391,387,'http://guntur.nic.in/'),(6,'Hyderabad','HY',1,'Hyderabad',3686460.00,217,16988,'http://hyderabad.nic.in/'),(7,'YSR district','CU',1,'Kadapa',2573481.00,15359,168,'http://kadapa.nic.in/'),(8,'Karimnagar','KA',1,'Karimnagar',3477079.00,11823,294,'http://karimnagar.nic.in/'),(9,'Khammam','KH',1,'Khammam',2565412.00,16029,160,'http://khammam.nic.in/'),(10,'Krishna (N T R District)','KR',1,'Machilipatnam',4218416.00,8727,483,'http://krishna.nic.in/'),(11,'Kurnool','KU',1,'Kurnool',3512266.00,17658,199,'http://kurnool.nic.in/'),(12,'Mahbubnagar','MA',1,'Mahabubnagar',3506876.00,18432,190,'http://mahabubnagar.nic.in/'),(13,'Medak','ME',1,'Sangareddi',2662296.00,9699,274,'http://medak.nic.in/'),(14,'Nalgonda','NA',1,'Nalgonda',3238449.00,14240,227,'http://nalgonda.nic.in/'),(15,'Nellore','NE',1,'Nellore',2659661.00,13076,203,'http://nellore.nic.in/'),(16,'Nizamabad','NI',1,'Nizamabad',2342803.00,7956,294,'http://nizamabad.nic.in/'),(17,'Prakasam','PR',1,'Ongole',3054941.00,17626,173,'http://prakasam.nic.in/'),(18,'Rangareddi','RA',1,'Hyderabad',3506670.00,7493,468,'http://rangareddy.nic.in/'),(19,'Srikakulam','SR',1,'Srikakulam',2528491.00,5837,433,'http://srikakulam.nic.in/'),(20,'Vishakhapatnam','VS',1,'Vishakhapatnam',3789823.00,11161,340,'http://visakhapatnam.nic.in/'),(21,'Vizianagaram','VZ',1,'Vizianagaram',2245103.00,6539,343,'http://vizianagaram.nic.in/'),(22,'Warangal','WA',1,'Warangal',3231174.00,12846,252,'http://warangal.nic.in/'),(23,'West Godavari','WG',1,'Eluru',3796144.00,7742,490,'http://wgodavari.nic.in/'),(24,'Anjaw','AJ',2,'Hawai',18428.00,3234,6,'http://lohit.nic.in/'),(25,'Changlang','CH',2,'Changlang',124994.00,4662,27,'http://changlang.nic.in/'),(26,'East Kameng','EK',2,'Seppa',57065.00,4134,14,'http://eastkameng.nic.in/'),(27,'East Siang','ES',2,'Pasighat',87430.00,4005,22,'http://eastsiang.nic.in/'),(28,'Lohit','EL',2,'Tezu',143478.00,2402,13,'http://lohit.nic.in/'),(29,'Lower Subansiri','LB',2,'Ziro',97614.00,10135,10,'http://lowersubansiri.nic.in/'),(30,'Papum Pare','PA',2,'Yupia',167750.00,2875,42,'http://papumpare.nic.in/'),(31,'Tawang','TA',2,'Tawang Town',38924.00,2085,19,'http://tawang.nic.in/'),(32,'Tirap','TI',2,'Khonsa',100227.00,2362,42,'http://tirap.nic.in/'),(33,'Dibang Valley','UD',2,'Anini',257543.00,23029,4,'http://dibang.nic.in/'),(34,'Upper Siang','US',2,'Yingkiong',33146.00,6188,5,'http://uppersiang.nic.in/'),(35,'Upper Subansiri','UB',2,'Daporijo',54995.00,7032,8,'http://uppersubansiri.nic.in/'),(36,'West Kameng','WK',2,'Bomdila',74595.00,7422,10,'http://westkameng.nic.in/'),(37,'West Siang','WS',2,'Along',103575.00,8325,12,'http://westsiang.nic.in/'),(38,'Barpeta','BA',3,'Barpeta',1642420.00,3245,506,'http://barpeta.gov.in/'),(39,'Bongaigaon','BO',3,'Bongaigaon',906315.00,2510,361,'http://bongaigaon.gov.in/'),(40,'Cachar','CA',3,'Silchar',1442141.00,3786,381,'http://cachar.gov.in/'),(41,'Darrang','DA',3,'Mangaldai',1503943.00,3481,432,'http://darrang.gov.in/'),(42,'Dhemaji','DM',3,'Dhemaji',569468.00,3237,176,'http://dhemaji.gov.in/'),(43,'Dhubri','DB',3,'Dhubri',1634589.00,2838,576,'http://dhubri.gov.in/'),(44,'Dibrugarh','DI',3,'Dibrugarh',1172056.00,3381,347,'http://dibrugarh.gov.in/'),(45,'Goalpara','GP',3,'Goalpara',822306.00,1824,451,'http://goalpara.gov.in/'),(46,'Golaghat','GG',3,'Golaghat',945781.00,3502,270,'http://golaghat.gov.in/'),(47,'Hailakandi','HA',3,'Hailakandi',542978.00,1327,409,'http://hailakandi.nic.in/'),(48,'Jorhat','JO',3,'Jorhat',1009197.00,2851,354,'http://jorhat.gov.in/'),(49,'Karbi Anglong','KA',3,'Diphu',812320.00,10434,78,'http://karbianglong.gov.in/'),(50,'Karimganj','KR',3,'Karimganj',1003678.00,1809,555,'http://karimganj.gov.in/'),(51,'Kokrajhar','KK',3,'Kokrajhar',930404.00,3129,297,'http://kokrajhar.gov.in/'),(52,'Lakhimpur','LA',3,'Lakhimpur',889325.00,2277,391,'http://lakhimpur.gov.in/'),(53,'Marigaon','MA',3,'Marigaon',775874.00,1704,455,'http://morigaon.nic.in/'),(54,'Nagaon','NG',3,'Nagaon',2315387.00,3831,604,'http://nagaon.gov.in/'),(55,'Nalbari','NL',3,'Nalbari',1138184.00,2257,504,'http://nalbari.nic.in/'),(56,'Dima Hasao','NC',3,'Haflong',186189.00,4888,38,'http://nchills.gov.in/'),(57,'Sibsagar','SI',3,'Sibsagar',1052802.00,2668,395,'http://sivasagar.nic.in'),(58,'Sonitpur','SO',3,'Tezpur',1677874.00,5324,315,'http://sonitpur.gov.in/'),(59,'Tinsukia','TI',3,'Tinsukia',1150146.00,3790,303,'http://tinsukia.gov.in/'),(60,'Araria','AR',4,'Araria',2806200.00,2829,992,'http://araria.bih.nic.in'),(61,'Arwal','AR',4,'Arwal',699563.00,4839,1099,'http://arwal.bih.nic.in/'),(62,'Aurangabad','AU',4,'Aurangabad',2511243.00,3303,760,'http://aurangabad.bih.nic.in'),(63,'Banka','BA',4,'Banka',2029339.00,3018,672,'http://banka.bih.nic.in'),(64,'Begusarai','BE',4,'Begusarai',2954367.00,1917,1540,'http://begusarai.bih.nic.in'),(65,'Bhagalpur','BG',4,'Bhagalpur',3032226.00,2569,1180,'http://bhagalpur.bih.nic.in'),(66,'Bhojpur','BJ',4,'Arrah',2720155.00,2473,1136,'http://bhojpur.bih.nic.in'),(67,'Buxar','BU',4,'Buxar',1707643.00,1624,1003,'http://buxar.bih.nic.in'),(68,'Darbhanga','DA',4,'Darbhanga',3921971.00,2278,1721,'http://darbhanga.bih.nic.in'),(69,'East Champaran','EC',4,'Motihari',5082868.00,3969,1281,'http://eastchamparan.bih.nic.in'),(70,'Gaya','GA',4,'Gaya',4379383.00,4978,880,'http://gaya.bih.nic.in'),(71,'Gopalganj','GO',4,'Gopalganj',2558037.00,2033,1258,'http://gopalganj.bih.nic.in'),(72,'Jamui','JA',4,'Jamui',1756078.00,3099,567,'http://jamui.bih.nic.in'),(73,'Jehanabad','JE',4,'Jehanabad',1124176.00,1569,1206,'http://Jehanabad.bih.nic.in'),(74,'Khagaria','KH',4,'Khagaria',1657599.00,1486,1115,'http://khagaria.bih.nic.in'),(75,'Kishanganj','KI',4,'Kishanganj',1690948.00,1884,898,'http://kishanganj.bih.nic.in'),(76,'Kaimur','KM',4,'Bhabua',1626900.00,3363,488,'http://kaimur.bih.nic.in'),(77,'Katihar','KT',4,'Katihar',3068149.00,3056,1004,'http://katihar.bih.nic.in'),(78,'Lakhisarai','LA',4,'Lakhisarai',1000717.00,1229,815,'http://lakhisarai.bih.nic.in'),(79,'Madhubani','MB',4,'Madhubani',4476044.00,3501,1279,'http://madhubani.bih.nic.in'),(80,'Munger','MG',4,'Munger',1359054.00,1419,958,'http://munger.bih.nic.in'),(81,'Madhepura','MP',4,'Madhepura',1994618.00,1787,1116,'http://madhepura.bih.nic.in'),(82,'Muzaffarpur','MZ',4,'Muzaffarpur',4778610.00,3173,1506,'http://muzaffarpur.bih.nic.in'),(83,'Nalanda','NL',4,'Bihar Sharif',2872523.00,2354,1220,'http://nalanda.bih.nic.in'),(84,'Nawada','NW',4,'Nawada',2216653.00,2492,889,'http://nawada.bih.nic.in'),(85,'Patna','PA',4,'Patna',5772804.00,3202,1803,'http://patna.bih.nic.in'),(86,'Purnia','PU',4,'Purnia',3273127.00,3228,1014,'http://purnia.bih.nic.in'),(87,'Rohtas','RO',4,'Sasaram',2962593.00,3850,763,'http://rohtas.bih.nic.in'),(88,'Saharsa','SH',4,'Saharsa',1897102.00,1702,1125,'http://saharsa.bih.nic.in'),(89,'Samastipur','SM',4,'Samastipur',4254782.00,2905,1465,'http://samastipur.bih.nic.in'),(90,'Sheohar','SO',4,'Sheohar',656916.00,443,1882,'http://sheohar.bih.nic.in'),(91,'Sheikhpura','SP',4,'Sheikhpura',634927.00,689,922,'http://sheikhpura.bih.nic.in'),(92,'Saran','SR',4,'Chhapra',3943098.00,2641,1493,'http://saran.bih.nic.in'),(93,'Sitamarhi','ST',4,'Sitamarhi',3419622.00,2199,1491,'http://sitamarhi.bih.nic.in'),(94,'Supaul','SU',4,'Supaul',2228397.00,2410,919,'http://supaul.bih.nic.in'),(95,'Siwan','SW',4,'Siwan',3318176.00,2219,1495,'http://siwan.bih.nic.in'),(96,'Vaishali(Akshay)','VA',4,'Hajipur',3495249.00,2036,1717,'http://vaishali.bih.nic.in'),(97,'West Champaran','WC',4,'Bettiah',3922780.00,5229,750,'http://westchamparan.bih.nic.in'),(98,'Bastar','BA',5,'Jagdalpur',1302283.00,14968,87,'http://bastar.nic.in/'),(99,'Bijapur','',5,'Bijapur',229832.00,6555,35,''),(100,'Bilaspur','BI',5,'Bilaspur',1993042.00,8270,241,'http://bilaspur.nic.in/'),(101,'Dantewada','DA',5,'Dantewada',719065.00,17538,41,'http://dantewada.nic.in/'),(102,'Dhamtari','DH',5,'Dhamtari',703569.00,3383,208,'http://dhamtari.nic.in/'),(103,'Durg','DU',5,'Durg',2801757.00,8542,328,'http://durg.nic.in/'),(104,'Jashpur','JA',5,'Jashpur',739780.00,5825,127,'http://jashpur.nic.in/'),(105,'Janjgir-Champa','JC',5,'Naila Janjgir',1316140.00,3848,342,'http://janjgirchampa.nic.in/'),(106,'Korba','KB',5,'Korba',1012121.00,6615,153,'http://korba.nic.in/'),(107,'Koriya','KJ',5,'Koriya',585455.00,6578,89,'http://koriya.nic.in/'),(108,'Kanker','KK',5,'Kanker',651333.00,6513,100,'http://kanker.gov.in/'),(109,'Kawardha','KW',5,'Kawardha',584667.00,4237,138,'http://kawardha.nic.in/'),(110,'Mahasamund','MA',5,'Mahasamund',860176.00,4779,180,'http://mahasamund.nic.in/'),(111,'Narayanpur','',5,'Narayanpur',110800.00,6640,17,''),(112,'Raigarh','RG',5,'Raigarh',1265084.00,7068,179,'http://raigarh.nic.in/'),(113,'Rajnandgaon','RN',5,'Rajnandgaon',1281811.00,8062,159,'http://rajnandgaon.nic.in/'),(114,'Raipur','RP',5,'Raipur',3009042.00,13083,230,'http://raipur.nic.in/'),(115,'Surajpur','SJ',5,'Surajpur',520661.00,9265,137,'http://surguja.nic.in/');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-01  2:07:16
