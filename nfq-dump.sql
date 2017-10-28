-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nfq
-- ------------------------------------------------------
-- Server version	5.5.55-0+deb8u1

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
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `order_id` int(20) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(16) NOT NULL,
  `client_email` varchar(50) NOT NULL,
  `service` enum('Apsauga nuo užpuolimo','Apsauga nuo įsilaužimo','Objekto stebėjimas') DEFAULT NULL,
  `information` varchar(20000) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (34,'Dorotėja','+370 600 60001','d@mail.com','Apsauga nuo įsilaužimo','3 kambarių butas','2017-09-17 10:17:26'),(35,'Vincentas','+370 600 60002','v@mail.com','Apsauga nuo užpuolimo','','2017-07-18 10:00:26'),(36,'Ignas','+370 600 60003','ig@mail.com','Objekto stebėjimas','Plotas ~ 120 kv.m.','2017-09-13 10:00:29'),(37,'Viltautė','+370 600 60004','vil@mail.com','Apsauga nuo užpuolimo','','2017-09-11 19:17:26'),(38,'Emilis','+370 600 60005','em@mail.com','Apsauga nuo įsilaužimo','Namas, 150 kv.m, 10 langų, 2 aukštai','2017-09-17 10:17:26'),(39,'Jolanta','+370 600 60006','jol@mail.com','Objekto stebėjimas','Sveiki, kiek kainuotų stebėjimo kamerų įrengimas 120 kv.m ofise?','2016-07-17 10:17:26'),(40,'Matas','+370 600 60007','m@mail.com','Apsauga nuo įsilaužimo','4 kambarių butas, 4 langai','2017-06-06 09:17:26'),(41,'Raimondas','+370 600 60008','r@mail.com','Apsauga nuo užpuolimo','','2017-08-17 10:17:26'),(42,'Karolis','+370 600 60009','k@mail.com','Objekto stebėjimas','Turiu firmą, reikia stebėjimo kamerų.','2017-08-27 10:11:26'),(43,'Tadas','+370 600 60010','t@mail.com','Apsauga nuo įsilaužimo','Reikia turto apsaugos, namo plotas 100 kv.','2017-09-13 10:17:26'),(44,'Agnė','+370 600 60011','ag@mail.com','Objekto stebėjimas','Vaikas paliekamas su aukle, norėčiau slaptos stebėjimo kameros.','2017-07-14 10:36:26'),(45,'Ernestas','+370 600 60012','er@mail.com','Apsauga nuo užpuolimo','Reikia užpuolimo mygtuko įmonės darbuotojams.','2017-09-09 10:17:26'),(46,'Edgaras','+370 600 60013','edg@mail.com','Apsauga nuo įsilaužimo','Butas, 2 kambariai','2017-08-17 09:17:26'),(47,'Petras','+370 600 60015','p@mail.com','Objekto stebėjimas','','2017-03-17 11:17:26'),(48,'Martynas','+370 600 60014','m@ma','Apsauga nuo užpuolimo','','2017-07-17 10:17:26'),(49,'Paulius','+370 600 60016','pau@mail.com','Objekto stebėjimas','','2017-09-14 18:08:26'),(50,'Viktoras','+370 600 60017','vik@mail.com','Apsauga nuo užpuolimo','','2017-01-17 11:17:26'),(51,'Valdemaras','+370 600 60017','val@mail.com','Apsauga nuo įsilaužimo','Kotedžas, 89 kv.m, 4 langai','2017-09-14 19:17:26'),(52,'Veronika','+370 600 60018','ver@mail.com','Apsauga nuo užpuolimo','','2017-09-17 07:09:26'),(53,'Laimutė','+370 600 60019','laim@mail.com','Objekto stebėjimas','Įtariu, kad kaimynas vagia iš mano daržo pomidorus. Reikia stebėjimo kameros.','2017-08-14 10:00:26'),(54,'Adomas','+370 600 60019','ad@mail.com','Apsauga nuo įsilaužimo','Namas, 180 kv.m. 6 kambariai, garažas','2017-09-16 10:15:26'),(55,'Daumantas','+370 600 60020','dau@mail.com','Apsauga nuo užpuolimo','','2017-09-01 10:03:00'),(56,'Lilija','+370 600 60021','li@mail.com','Objekto stebėjimas','','2017-09-10 11:27:15'),(57,'Gintarė','+370 600 60022','','Objekto stebėjimas','Reikia slaptos kameros bute','2017-08-28 10:10:10'),(58,'Ričardas','+370 600 60023','ri@mail.com','Apsauga nuo įsilaužimo','3 kambarių kotedžas pirmame aukšte, 3 langai','2016-09-17 10:01:37'),(59,'Vitalijus','+370 600 60024','vit@mail.com','Apsauga nuo užpuolimo','','2016-09-11 10:01:26'),(60,'Justinas','+370 600 60025','ju@mail.com','Apsauga nuo įsilaužimo','4 kamb. butas, 4 aukštas, 5 langai','2017-08-15 15:00:26'),(61,'Daiva','+370 600 60026','dai@mail.com','Apsauga nuo užpuolimo','','2017-04-19 20:35:50'),(62,'Voldemaras','+370 600 60027','vol@mail.com','Objekto stebėjimas','3 kameros','2017-08-17 16:39:26'),(63,'Danielius','+370 600 60028','dan@mail.com','Apsauga nuo užpuolimo','','2016-07-19 17:45:26'),(64,'Edita','+370 600 00029','ed@mail.com','Objekto stebėjimas','Reikia stebėjimo kamerų 10 arų įmonės teritorijai','2017-08-02 10:00:45'),(65,'Diana','+370 600 60030','dian@mail.com','Apsauga nuo užpuolimo','Noriu užpuolimo mygtuko','2015-09-20 17:10:26'),(66,'Steponas','+370 600 60031','st@mail.com','Apsauga nuo įsilaužimo','Namas, 100 kv. metrų, su garažu','2016-04-14 20:29:26'),(67,'Aurelijus','+370 600 60032','aur@mail.com','Objekto stebėjimas','Parduotuvėje reikia įrengti stebėjimo kameras.','2017-09-03 15:09:26'),(68,'Rasa','+370 600 60035','ra@mail.com','Apsauga nuo įsilaužimo','2 kmb. butas, 3 aukštas','2017-08-30 10:35:26'),(69,'Aleksandras','+370 600 60036','alek@mail.com','Apsauga nuo įsilaužimo','','2017-09-14 13:19:48'),(70,'Daumantas','+370 600 60037','daum@mail.com','Apsauga nuo įsilaužimo','Kotedžas, 5 kambariai, dviejų aukštų','2016-04-13 19:39:26'),(71,'Kotryna','+370 600 60038','','Apsauga nuo užpuolimo','','2017-09-01 11:17:46'),(72,'Virgilijus','+370 600 60039','','Objekto stebėjimas','10 arų statybvietės stebėjimui reikia kamerų','2017-08-24 10:49:00'),(73,'Sandra','+370 600 60039','san@mail.so','Apsauga nuo įsilaužimo','4 kambarių butas, 6 langai','2017-08-09 15:19:39'),(74,'Paulina','+370 600 60040','paul@mail.com','Apsauga nuo užpuolimo','','2017-06-30 15:19:26'),(75,'Jurgis','+370 600 60041','jur@mail.com','Objekto stebėjimas','160 kv. m. įmonės patalpos','2017-08-03 10:17:26'),(76,'Kęstutis','+370 600 60042','kes@mail.com','Objekto stebėjimas','','2017-05-17 10:10:26'),(77,'Valerija','+370 600 60043','val@mail.com','Apsauga nuo užpuolimo','','2015-09-16 10:10:26'),(78,'Benediktas','+370 600 60044','ben@mail.com','Objekto stebėjimas','Reikia kamerų 4 arų teritorijos stebėjimui','2016-09-17 10:01:26'),(79,'Emilija','+370 600 60045','em@mail.com','Apsauga nuo įsilaužimo','Butas, 4 kmb, 80 kv.m.','2017-07-18 20:11:26'),(80,'Estera','+370 600 60046','es@mail.com','Apsauga nuo įsilaužimo','Namas, 100 kv.m.','2017-09-14 12:13:26'),(81,'Robertas','+370 600 60047','rob@mail.com','Objekto stebėjimas','Įmonės vidaus patalpų stebėjimui reikalingos kameros.','2017-09-16 21:11:26'),(82,'Augustas','+370 600 60048','au@mail.com','Apsauga nuo įsilaužimo','','2017-07-15 10:17:26'),(83,'Marijus','+370 600 60049','mar@mail.com','Objekto stebėjimas','Parduotuvė, 45 kv.m','2017-08-17 10:17:26'),(84,'Liucija','+370 600 60050','liuc@mail.com','Apsauga nuo įsilaužimo','Butas, 56 kv.m, 3 kambariai. 4 langai.','2015-09-17 10:17:26'),(85,'Viktorija','+370 600 60051','vikto@mail.com','Apsauga nuo užpuolimo','','2017-09-17 10:36:00'),(86,'Jaroslavas','+370 600 60055','jar@mail.com','Objekto stebėjimas','120 kv.m ofisas','2017-04-17 20:35:50'),(96,'Jelena','+370 600 60056','jel@mail.com','Objekto stebėjimas','','2017-09-14 10:35:36'),(101,'Jelena','+370 600 600019','jel@mail.com','Apsauga nuo įsilaužimo','','2017-09-17 11:00:26'),(102,'Milana','+370 600 55555','milana@mail.com','Apsauga nuo įsilaužimo','5 kambarišų namas','2017-09-17 16:38:06'),(105,'Petras','+370 658 02544','mano@pastas.com','Objekto stebėjimas','Kaimynai.. pavargau.. :]','2017-09-17 20:44:14'),(106,'cds','dscds','dscds@asdas.lt','Objekto stebėjimas','fsadfas','2017-09-26 05:49:08');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','bly2l2wZmZx5o');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-27 16:15:08
