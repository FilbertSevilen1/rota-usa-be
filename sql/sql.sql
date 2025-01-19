-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: rota_wheels
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `bolts`
--

DROP TABLE IF EXISTS `bolts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bolts` (
  `bolt_id` int NOT NULL,
  `bolt_name` varchar(255) DEFAULT NULL,
  `offset_id` int DEFAULT NULL,
  PRIMARY KEY (`bolt_id`),
  KEY `offset_id` (`offset_id`),
  CONSTRAINT `bolts_ibfk_1` FOREIGN KEY (`offset_id`) REFERENCES `offsets` (`offset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolts`
--

LOCK TABLES `bolts` WRITE;
/*!40000 ALTER TABLE `bolts` DISABLE KEYS */;
INSERT INTO `bolts` VALUES (1,'5 x 139.70',1),(2,'6 x 114.3',1),(3,'6 x 139.70',1),(4,'6 x 139.70',2),(5,'6 x 114.3',3),(6,'4 x 100',4),(7,'4 x 108',4),(8,'4 x 110',4),(9,'4 x 114.3',4),(10,'5 x 100',4),(11,'5 x 108',4),(12,'5 x 112',4),(13,'5 x 114.3',4),(14,'4 x 100',5),(15,'4 x 108',5),(16,'4 x 110',5),(17,'4 x 114.3',5),(18,'5 x 100',5),(19,'5 x 108',5),(20,'5 x 112',5),(21,'5 x 114.3',5),(22,'4 x 100',6),(23,'4 x 108',6),(24,'4 x 110',6),(25,'4 x 114.3',6),(26,'5 x 100',6),(27,'5 x 105',6),(28,'5 x 108',6),(29,'5 x 112',6),(30,'5 x 114.3',6),(31,'4 x 100',7),(32,'4 x 108',7),(33,'4 x 110',7),(34,'4 x 114.3',7),(35,'5 x 100',7),(36,'5 x 105',7),(37,'5 x 108',7),(38,'5 x 112',7),(39,'5 x 114.3',7),(40,'4 x 95.25',8),(41,'4 x 98',8),(42,'4 x 100',8),(43,'4 x 108',8),(44,'4 x 110',8),(45,'4 x 114.3',8),(46,'5 x 100',9),(47,'5 x 108',9),(48,'5 x 112',9),(49,'5 x 114.3',9),(50,'4 x 95.25',10),(51,'4 x 98',10),(52,'4 x 100',10),(53,'4 x 108',10),(54,'4 x 110',10),(55,'4 x 114.3',10),(56,'5 x 100',11),(57,'5 x 108',11),(58,'5 x 112',11),(59,'5 x 114.3',11),(60,'5H',12),(61,'6H',13),(62,'4 x 100',14),(63,'5 x 100',15),(64,'5 x 100',16),(65,'4 x 100',17),(66,'4 x 114.3',18),(67,'5 x 100',19),(68,'5 x 108',20),(69,'5 x 114.3',21),(70,'5 x 100',22),(71,'5 x 105',22),(72,'5 x 108',22),(73,'5 x 112',22),(74,'5 x 114.3',22),(75,'5 x 115',22),(76,'5 x 120',22),(77,'5 x 100',23),(78,'5 x 112',23),(79,'5 x 114.3',23),(80,'5 x 120',23),(81,'5 x 139.7',23),(82,'6 x 114.3',23),(83,'6 x 135',23),(84,'6 x 139.7',23),(85,'4 x 100',24),(86,'4 x 108',24),(87,'4 x 110',24),(88,'4 x 114.3',24),(89,'5 x 100',25),(90,'5 x 108',25),(91,'5 x 110',25),(92,'5 x 112',25),(93,'5 x 114.3',25),(94,'5 x 120',25),(95,'4 x 100',26),(96,'4 x 108',26),(97,'4 x 110',26),(98,'4 x 114.3',26),(99,'5 x 100',26),(100,'5 x 108',26),(101,'5 x 110',26),(102,'5 x 112',26),(103,'5 x 114.3',26),(104,'5 x 120',26),(105,'4 x 100',27),(106,'4 x 108',27),(107,'4 x 110',27),(108,'4 x 114.3',27),(109,'5 x 100',28),(110,'5 x 108',28),(111,'5 x 110',28),(112,'5 x 112',28),(113,'5 x 114.3',28),(114,'5 x 120',28),(115,'4H/5H',29),(116,'4H',30),(117,'5H',31),(118,'4H',32),(119,'5H',33),(120,'4 x 100',34),(121,'4 x 108',34),(122,'4 x 110',34),(123,'4 x 114.3',34),(124,'5 x 100	',35),(125,'5 x 108',35),(126,'5 x 112',35),(127,'5 x 114.3',35),(128,'4 x 100',36),(129,'4 x 108',36),(130,'4 x 110',36),(131,'4 x 114.3',36),(132,'5 x 100',37),(133,'5 x 108',37),(134,'5 x 112',37),(135,'5 x 114.3',37),(136,'5 x 100',38),(137,'5 x 108',38),(138,'5 x 110',38),(139,'5 x 112',38),(140,'5 x 114.3',38),(141,'5 x 120',38),(142,'5 x 100',39),(143,'5 x 108',39),(144,'5 x 110',39),(145,'5 x 112',39),(146,'5 x 114.3',39),(147,'5 x 120',39),(148,'4 x 100',40),(149,'4 x 108',40),(150,'4 x 114.3',40),(151,'5 x 100',40),(152,'5 x 105',40),(153,'5 x 108',40),(154,'5 x 112',40),(155,'5 x 114.3',40),(156,'5 x 115',40),(157,'5 x 120',40),(158,'5 x 114.3',41),(159,'5 x 115',41),(160,'5 x 120',41),(161,'5 x 130',41),(162,'5 x 114.3',42),(163,'5 x 115',42),(164,'5 x 120',42),(165,'5 x 130',42),(166,'5 x 114.3',43),(167,'5 x 115',43),(168,'5 x 120',43),(169,'5 x 130',43),(170,'4 x 98',44),(171,'4 x 100',44),(172,'4 x 108',44),(173,'4 x 110',44),(174,'4 x 114.3',44),(175,'4 x 100',45),(176,'4 x 114.3',45),(177,'4 x 100',46),(178,'4 x 108',46),(179,'4 x 110',46),(180,'4 x 114.3',46),(181,'5 x 100',47),(182,'5 x 100',47),(183,'5 x 100',47),(184,'5 x 114.3',47),(185,'4 x 98',48),(186,'4 x 100',48),(187,'4 x 108',48),(188,'4 x 110',48),(189,'4 x 114.3',48),(190,'5 x 100',48),(191,'4 x 100',49),(192,'4 x 108',49),(193,'4 x 110',49),(194,'4 x 114.3',49),(195,'5 x 100',49),(196,'5 x 105',49),(197,'5 x 108',49),(198,'5 x 112',49),(199,'5 x 114.3',49),(200,'4 x 100',50),(201,'4 x 108',50),(202,'4 x 110',50),(203,'4 x 114.3',50),(204,'5 x 100',50),(205,'5 x 108',50),(206,'5 x 110',50),(207,'5 x 114.3',50),(208,'5 x 100',51),(209,'5 x 108',51),(210,'5 x 110',51),(211,'5 x 112',51),(212,'5 x 114.3',51),(213,'5 x 120',51),(214,'6H',51),(215,'5 x 100',52),(216,'5 x 108',52),(217,'5 x 110',52),(218,'5 x 112',52),(219,'5 x 114.3',52),(220,'5 x 120',52),(221,'6H',52),(222,'5 x 114.3',53),(223,'5 x 115',53),(224,'5 x 120',53),(225,'5 x 135',53),(226,'5 x 130',53),(227,'5 x 139.7',53),(228,'6 x 114.3',54),(229,'6 x 139.7',54),(230,'3 x 112',55),(231,'4 x 100',55),(232,'4 x 108',55),(233,'4 x 110',55),(234,'4 x 114.3',55),(235,'5 x 100',55),(236,'5 x 108',55),(237,'5 x 114.3',55),(238,'3 x 112',56),(239,'4 x 100',56),(240,'4 x 108',56),(241,'4 x 110',56),(242,'4 x 114.3',56),(243,'5 x 98',57),(244,'5 x 100',57),(245,'5 x 108',57),(246,'5 x 114.3',57),(247,'3 x 112',58),(248,'4 x 100',58),(249,'4 x 108',58),(250,'4 x 110',58),(251,'4 x 114.3',58),(252,'5 x 98',58),(253,'5 x 100',58),(254,'5 x 108',58),(255,'5 x 114.3',58),(256,'8 x 100 x 100',59),(257,'8 x 100 x 108',59),(258,'8 x 100 x 110',59),(259,'8 x 100 x 114.3',59),(260,'8 x 108 x 110',59),(261,'8 x 108 x 114.3',59),(262,'8 x 110 x 114.3',59),(263,'8 x 114.3 x 114.3',59),(264,'10 x 100 x 100',59),(265,'10 x 100 x 108',59),(266,'10 x 100 x 112',59),(267,'10 x 100 x 114.3',59),(268,'10 x 108 x 112',59),(269,'10 x 108 x 114.3',59),(270,'10 x 112 x 114.3',59),(271,'10 x 114.3 x 114.3',59),(272,'5 x 100',60),(273,'5 x 108',60),(274,'5 x 112',60),(275,'5 x 114.3',60),(276,'10 x 100 x 100',60),(277,'10 x 100 x 108',60),(278,'10 x 100 x 112',60),(279,'10 x 100 x 114.3',60),(280,'10 x 108 x 110',60),(281,'10 x 108 x 114.3',60),(282,'10 x 112 x 114.3',60),(283,'10 x 114.3 x 114.3',60),(284,'5 x 100',61),(285,'5 x 108',61),(286,'5 x 112',61),(287,'5 x 114.3',61),(288,'10 x 100 x 100',61),(289,'10 x 100 x 108',61),(290,'10 x 100 x 112',61),(291,'10 x 100 x 114.3',61),(292,'10 x 108 x 110',61),(293,'10 x 108 x 114.3',61),(294,'10 x 112 x 114.3',61),(295,'10 x 114.3 x 114.3',61),(296,'10 x 100 x 100',62),(297,'10 x 100 x 108',62),(298,'10 x 100 x 112',62),(299,'10 x 100 x 114.3',62),(300,'10 x 112 x 114.3',62),(301,'10 x 114.3 x 114.3',62),(302,'10 x 100 x 100	',63),(303,'10 x 100 x 108',63),(304,'10 x 100 x 112',63),(305,'10 x 100 x 114.3',63),(306,'10 x 112 x 114.3',63),(307,'10 x 114.3 x 114.3',63),(308,'4 x 100',64),(309,'4 x 108',64),(310,'4 x 110',64),(311,'4 x 114.3',64),(312,'5 x 100',64),(313,'5 x 108',64),(314,'5 x 110',64),(315,'5 x 114.3',64),(316,'4 x 100',65),(317,'4 x 108',65),(318,'4 x 110',65),(319,'4 x 114.3',65),(320,'5 x 100',65),(321,'5 x 108',65),(322,'5 x 110',65),(323,'5 x 114.3',65);
/*!40000 ALTER TABLE `bolts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Bmw','/brands/bmw.webp'),(2,'Ferrari','/brands/ferrari.webp'),(3,'Honda','/brands/honda.webp'),(4,'Lamborghini','/brands/lamborghini.webp'),(5,'Mercedes Benz','/brands/mercedes-benz.webp'),(6,'Subaru','/brands/subaru.webp'),(7,'Toyota','/brands/toyota.webp'),(8,'Mitsubishi','/brands/mitsubishi.webp');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `car_id` int NOT NULL,
  `car_name` varchar(255) DEFAULT NULL,
  `car_wheel_element1` varchar(255) DEFAULT NULL,
  `car_wheel_element2` varchar(255) DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Bmw 1','mt-[-126.5px] md:mt-[-253px] w-[3.3rem] h-[4.45rem] ml-[11px] md:w-[6.6rem] md:h-[8.9rem] md:ml-[22px] rounded-full relative z-10 bg-gray-950','mt-[-116px] md:mt-[-232px] w-[4.4rem] h-[5.2rem] mr-[151.5px] md:w-[8.8rem] md:h-[10.4rem] md:mr-[303px] rounded-full relative z-10 bg-gray-950',1),(2,'Ferrari 1','mt-[-150px] md:mt-[-300px] w-[3.3rem] h-[5.5rem] ml-[0px] md:w-[6.6rem] md:h-[11rem] md:ml-[0px] rounded-full relative z-10 bg-gray-950','mt-[-130px] md:mt-[-260px] w-[4.6rem] h-[6.45rem] mr-[207px] md:w-[9.2rem] md:h-[12.9rem] md:mr-[414px] rounded-full relative z-10 wheels bg-gray-950',2),(3,'Honda','mt-[-125px] md:mt-[-250px] w-[3.3rem] h-[4.5rem] ml-[25px] md:w-[6.6rem] md:h-[9rem] md:ml-[50px] rounded-full relative z-10 bg-gray-950','mt-[-109px] md:mt-[-218px] w-[4.6rem] h-[4.8rem] mr-[117px] md:w-[9.2rem] md:h-[9.6rem] md:mr-[234px] rounded-full relative z-10 bg-gray-950',3),(4,'Lamborghini','mt-[-136px] md:mt-[-272px] w-[2.8rem] h-[5.5rem] ml-[0px] md:w-[5.6rem] md:h-[11rem] md:ml-[0px] rounded-full relative z-10 bg-gray-950','mt-[-126px] md:mt-[-252px] w-[4.45rem] h-[6.25rem] mr-[208px] md:w-[8.9rem] md:h-[12.5rem] md:mr-[416px] rounded-full relative z-10 bg-gray-950',4),(6,'Subaru','mt-[-126px] md:mt-[-252px] w-[2.9rem] h-[5.5rem] ml-[40px] md:w-[5.8rem] md:h-[11rem] md:ml-[80px] rounded-full relative wheels bg-gray-950','mt-[-126.5px] md:mt-[-253px] w-[4.45rem] h-[6.25rem] mr-[156.5px] md:w-[8.9rem] md:h-[12.5rem] md:mr-[313px] rounded-full relative wheels bg-gray-950',6),(7,'Toyota','mt-[-123px] md:mt-[-246px] w-[2.2rem] h-[4.0rem] ml-[42.5px] md:w-[4.4rem] md:h-[8.0rem] md:ml-[85px] rounded-full relative  wheels bg-gray-950','mt-[-110px] md:mt-[-220px] w-[3.6rem] h-[5.2rem] mr-[169px] md:w-[7.2rem] md:h-[10.4rem] md:mr-[338px] rounded-full relative wheels bg-gray-950',7),(8,'Mitsubishi','mt-[-130px] md:mt-[-260px] w-[2.4rem] h-[4.7rem] ml-[17.5px] md:w-[4.8rem] md:h-[9.4rem] md:ml-[35px] rounded-full relative wheels bg-gray-950','mt-[-121px] md:mt-[-242px] w-[3.4rem] h-[5.4rem] mr-[225px] md:w-[6.8rem] md:h-[10.8rem] md:mr-[450px] rounded-full relative wheels bg-gray-950',8);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_details`
--

DROP TABLE IF EXISTS `cars_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars_details` (
  `car_id` int DEFAULT NULL,
  `car_details_id` int NOT NULL,
  `car_color_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`car_details_id`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `cars_details_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_details`
--

LOCK TABLES `cars_details` WRITE;
/*!40000 ALTER TABLE `cars_details` DISABLE KEYS */;
INSERT INTO `cars_details` VALUES (1,1,'/cars/carbmw1color1.webp'),(2,2,'/cars/carferrari1color1.webp'),(2,3,'/cars/carferrari1color2.webp'),(2,4,'/cars/carferrari1color3.webp'),(2,5,'/cars/carferrari1color4.webp'),(2,6,'/cars/carferrari1color5.webp'),(3,7,'/cars/carhonda1.webp'),(3,8,'/cars/carhonda2.webp'),(3,9,'/cars/carhonda3.webp'),(3,10,'/cars/carhonda4.webp'),(3,11,'/cars/carhonda5.webp'),(3,12,'/cars/carhonda6.webp'),(3,13,'/cars/carhonda7.webp'),(3,14,'/cars/carhonda8.webp'),(3,15,'/cars/carhonda9.webp'),(4,16,'/cars/carlamborghini1color1.webp'),(4,17,'/cars/carlamborghini1color2.webp'),(4,18,'/cars/carlamborghini1color3.webp'),(4,19,'/cars/carlamborghini1color4.webp'),(4,20,'/cars/carlamborghini1color5.webp'),(6,21,'/cars/carsubaru1color1.webp'),(6,22,'/cars/carsubaru1color2.webp'),(6,23,'/cars/carsubaru1color3.webp'),(6,24,'/cars/carsubaru1color4.webp'),(6,25,'/cars/carsubaru1color5.webp'),(7,26,'/cars/cartoyota1color1.webp'),(7,27,'/cars/cartoyota1color2.webp'),(7,28,'/cars/cartoyota1color3.webp'),(7,29,'/cars/cartoyota1color4.webp'),(7,30,'/cars/cartoyota1color5.webp'),(7,31,'/cars/cartoyota1color6.webp'),(7,32,'/cars/cartoyota1color7.webp'),(7,33,'/cars/cartoyota1color8.webp'),(7,34,'/cars/cartoyota1color9.webp'),(8,35,'/cars/carmitsubishi1color1.webp'),(8,36,'/cars/carmitsubishi1color2.webp'),(8,37,'/cars/carmitsubishi1color3.webp'),(8,38,'/cars/carmitsubishi1color4.webp'),(8,39,'/cars/carmitsubishi1color5.webp'),(8,40,'/cars/carmitsubishi1color6.webp'),(8,41,'/cars/carmitsubishi1color7.webp'),(8,42,'/cars/carmitsubishi1color8.webp'),(8,43,'/cars/carmitsubishi1color9.webp');
/*!40000 ALTER TABLE `cars_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offsets`
--

DROP TABLE IF EXISTS `offsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offsets` (
  `offset_id` int NOT NULL,
  `offset_name` varchar(255) DEFAULT NULL,
  `size_id` int DEFAULT NULL,
  PRIMARY KEY (`offset_id`),
  KEY `size_id` (`size_id`),
  CONSTRAINT `offsets_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offsets`
--

LOCK TABLES `offsets` WRITE;
/*!40000 ALTER TABLE `offsets` DISABLE KEYS */;
INSERT INTO `offsets` VALUES (1,'et10 only',1),(2,'et4 / et10 only',2),(3,'et10 only',2),(4,'et38 to e45',3),(5,'e45 to e48',4),(6,'e20 to e30 / e35 to e40 / e45 to e48',5),(7,'e20 to e30 / e35 to e40 / e45 to e50',6),(8,'e7 to e40 / e42 to e52',7),(9,'e15 to e40 / e42 to e52',7),(10,'e12 to e42 / e45 to e55',8),(11,'e20 to e42 / e45 to e55',8),(12,'e+0 to +10',9),(13,'e-15 to -2/ e+0 to +10',10),(14,'e35 / e45',11),(15,'e45 / e48 to e53',11),(16,'e45 / e48',11),(17,'e48',12),(18,'e35',12),(19,'e35 / e48',12),(20,'e48',12),(21,'e35 / e48',12),(22,'e30 to e42',13),(23,'e10 to e20 / e35 to e45',14),(24,'e0 / e20',15),(25,'e20',15),(26,'e0',16),(27,'e-15 to -5 / e0',17),(28,'e0',17),(29,'e20',18),(30,'e0 / e10 to e20',19),(31,'e0 / e20',19),(32,'e-15 to e-5 / e0',20),(33,'e0',20),(34,'e15 to e24',21),(35,'e15 to e24 / e34 to e36',21),(36,'e20 to e30',22),(37,'e20 to e30 / e40 to e42',22),(38,'e8 to e18 / e20',23),(39,'e15 to e25 / e27',24),(40,'e45 to e48',25),(41,'e33 to e40',26),(42,'e16 only',27),(43,'et16 only',28),(44,'e10 to e4',29),(45,'e4 to e35',30),(46,'e4 to e25 / e40 to e45',31),(47,'e40 to e45',31),(48,'e4 to e18 / e20 to e25',32),(49,'e45 only',33),(50,'e25 to e34 / e35 to e48',34),(51,'e5 to e24 / e25',35),(52,'e10 to e29 / e30',36),(53,'e10 to e20 / e35',37),(54,'e10 to e20',37),(55,'e25 to e30 / e45 to e48',38),(56,'e25 to e45 / e48',39),(57,'e25 to e45 / e48',39),(58,'e25 to e40 / e45 to e48',40),(59,'e40 to e45',41),(60,'e32 to e35 / e44 to e48',42),(61,'e35 to e40 / e48 to e51',43),(62,'e10 to e15 / e25 to e30 / e31 to e35 / e42 to e50',44),(63,'e15 to e20 / e30 to e35 / e36 to e40 / e48 to e52',45),(64,'e-10 to e0 / e5 to e20',46),(65,'e-5 to e8 / e10 to e25',47);
/*!40000 ALTER TABLE `offsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `size_id` int NOT NULL,
  `size_name` varchar(255) DEFAULT NULL,
  `wheel_id` int DEFAULT NULL,
  PRIMARY KEY (`size_id`),
  KEY `wheel_id` (`wheel_id`),
  CONSTRAINT `sizes_ibfk_1` FOREIGN KEY (`wheel_id`) REFERENCES `wheels` (`wheel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'17 x 8.5',1),(2,'17 x 8.5',1),(3,'17 x 7.0',2),(4,'17 x 7.5',2),(5,'17 x 7.5',4),(6,'17 x 8.5',4),(7,'17 x 9.0',3),(8,'17 x 9.0',3),(9,'16 x 8',5),(10,'16 x 8',5),(11,'17 x 7.5',6),(12,'17 x 8.0',6),(13,'17 x 9.0',6),(14,'20 x 8.5',7),(15,'15 x 7.0',8),(16,'15 x 8.0',8),(17,'15 x 9.0',8),(18,'16 x 7.0',8),(19,'16 x 8.0',8),(20,'16 x 9.0',8),(21,'17 x 8.5',8),(22,'17 x 9.0',8),(23,'18 x 10',8),(24,'18 x 10.5',8),(25,'17 x 9',10),(26,'17 x 7.5',18),(27,'17 x 9.0',18),(28,'17 x 11',18),(29,'13 x 7.0',20),(30,'13 x 8.0',20),(31,'17 x 7.5',20),(32,'17 x 8.5',20),(33,'17 x 7.5',21),(34,'17 x 8.0',21),(35,'18 x 8.5',21),(36,'18 x 9.0',21),(37,'20 x 8.5',21),(38,'17 x 7.5',23),(39,'17 x 8.0',23),(40,'17 x 8.5',23),(41,'17 x 7.5',24),(42,'17 x 8.0',24),(43,'17 x 8.5',24),(44,'17 x 9.0',24),(45,'17 x 9.5',24),(46,'17 x 9.0',25),(47,'17 x 9.5',25);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wheels`
--

DROP TABLE IF EXISTS `wheels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wheels` (
  `wheel_id` int NOT NULL,
  `wheel_name` varchar(255) DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`wheel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheels`
--

LOCK TABLES `wheels` WRITE;
/*!40000 ALTER TABLE `wheels` DISABLE KEYS */;
INSERT INTO `wheels` VALUES (1,'ATLAS',1),(2,'CIRCUIT',1),(3,'FLUSH',0),(4,'D2',1),(5,'5STAR',1),(6,'G-FORCE',1),(7,'FIGHTER',1),(8,'GRID CLASSIC',1),(9,'GRID CONCAVE',1),(10,'GRID RACING',1),(11,'HB10',1),(12,'HUNTER',1),(13,'J-SPL',1),(14,'KB-R',1),(15,'KENSEI',1),(16,'MXR',1),(17,'OS MESH',1),(18,'PSD',1),(19,'R-SPEC',1),(20,'RB',1),(21,'RECCE',1),(22,'SHAKOTAN',1),(23,'SLIP STREAM',1),(24,'FIGHTER 10',1),(25,'KYUSHA',1);
/*!40000 ALTER TABLE `wheels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wheels_details`
--

DROP TABLE IF EXISTS `wheels_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wheels_details` (
  `wheel_details_id` int NOT NULL,
  `wheel_id` int DEFAULT NULL,
  `wheel_details_name` varchar(255) DEFAULT NULL,
  `wheel_details_image` varchar(255) DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`wheel_details_id`),
  KEY `wheel_id` (`wheel_id`),
  CONSTRAINT `wheels_details_ibfk_1` FOREIGN KEY (`wheel_id`) REFERENCES `wheels` (`wheel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheels_details`
--

LOCK TABLES `wheels_details` WRITE;
/*!40000 ALTER TABLE `wheels_details` DISABLE KEYS */;
INSERT INTO `wheels_details` VALUES (1,1,'Atlas 1 - Royal Black','/wheels/2024 02 16 - photo rota/ATLAS 1/ATLAS 1 17_17x8.5_4_5x139.7_106.1_ RL YMH BLK/plain/DSCF7736 1nobg.webp',1),(2,2,'Circuit 8 - Bronze','/wheels/2024 02 16 - photo rota/CIRCUIT 8/CIRCUIT 8_15x6.5_38_8x100x100_67.1_BRONZE/plain/DSCF7684 nobg.webp',1),(3,2,'Circuit 10 - Bronze','/wheels/2024 02 16 - photo rota/CIRCUIT 10/CIRCUIT 10_15X6.5_45_4X100_67.1_RF SP BRONZE/plain/DSCF7400 3nobg.webp',1),(4,4,'D2 - Carbon Fiber','/wheels/2024 02 16 - photo rota/D2/D2_16x7_40_5x114_73_RL CARBON FIBER/plain/DSCF7895 1nobg.webp',1),(5,3,'Flush - White','/wheels/2024 02 16 - photo rota/FLUSH/FLUSH-15X7-RF-SILVER-300x300//FLUSH-15X7-RF-SILVER-300x300.webp',1),(6,5,'5Star - Bronze','/wheels/2024 02 16 - photo rota/FIVE STAR OFF/FIVE STAR OFF_16x8_10_6x139.7_110_BRONZE/plain/DSCF7417nobg.webp',1),(7,6,'G-Force - Hyper Black','/wheels/2024 02 16 - photo rota/G-FORCE/G-FORCE_17x9_42_5x100_73_HYPER BLACK/plain/DSCF7469nobg.webp',1),(8,7,'Fighter - Silver','/wheels/2024 02 16 - photo rota/FIGHTER/FIGHTER 10H 1670_16X7_40_10X114.3X100_73_HYPER SILVER IMP1/plain/DSCF8177nobg.webp',1),(9,8,'Grid Classic - SP Bronze','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x7_0_4x100_67.1_RF SP BRONZE/plain/DSCF7533 6nobg.webp',1),(10,8,'Grid Classic - Bronze','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x7_20_4x100_67.1_BRONZE/plain/DSCF7945nobg.webp',1),(11,8,'Grid Classic - White','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x7_20_4x100_67.1_WHITE/plain/DSCF7835 1nobg.webp',1),(12,8,'Grid Classic - Silver','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x8_0_4x100_67.1_RF P SILVER/plain/DSCF7748 1nobg.webp',1),(13,8,'Grid Classic - Black','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x8_0_5x114_73_FLAT GUN YMH BLK LIP/plain/DSCF7813 1nobg.webp',1),(14,8,'Grid Classic - SP Bronze','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x9_-15_4x114_73_RF SP BRONZE/plain/DSCF7799 3nobg.webp',1),(15,8,'Grid Classic - Satin Black','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_16x8_20_4x100_67.1_SATIN BLACK/plain/DSCF7956nobg.webp',1),(16,8,'Grid Classic - White','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_16x8_20_5x114_73_WHITE/plain/DSCF7779 1nobg.webp',1),(17,9,'Grid Concave -  Hyper Black','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15x8_20_5x114_73_HYPER BLACK/plain/DSCF7793 1nobg.webp',1),(18,9,'Grid Concave - White','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15x8_20_5x114_73_WHITE/plain/DSCF7938nobg.webp',1),(19,9,'Grid Concave - Plain Silver','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15X8_20_5X114.3_73_PLAIN SILVER/plain/DSCF8518nobg.webp',1),(20,9,'Grid Concave - RF P Silver','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15X8_20_5X114.3_73_RF P SILVER/plain/DSCF8512nobg.webp',1),(21,9,'Grid Concave - RF SP Bronze','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15X8_20_5X114.3_73_RF SP BRONZE/plain/DSCF8475nobg.webp',1),(22,9,'Grid Concave - Hyper Black','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15x9_36_4x100_67.1_HYPER BLACK/plain/DSCF7588nobg.webp',1),(23,9,'Grid Concave - Speed Bronze','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15x9_36_4x100_67.1_SPEED BRONZE/plain/DSCF7502nobg.webp',1),(24,9,'Grid Concave - RF P Silver','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_16X8_20_5X114.3_73_RF P SILVER/plain/DSCF8497nobg.webp',1),(25,9,'Grid Concave - Satin Black','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_16X8_20_5X114.3_73_SATIN BLACK/plain/DSCF8489nobg.webp',1),(26,9,'Grid Concave - White','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_16X8_20_5X114.3_73_WHITE/plain/DSCF8500nobg.webp',1),(27,10,'Grid Racing - Sport Bronze','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_15x6.5_38_4x100_67.1_SPORT BRONZE/plain/DSCF7949nobg.webp',1),(28,10,'Grid Racing - PCWH White','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_15x7_38_4x100_67.1_PCWH_WHITE/plain/DSCF7785 1nobg.webp',1),(29,10,'Grid Racing - Satin Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_16x7_42_4x108_63.35_SATIN BLACK/plain/DSCF7820 1nobg.webp',1),(30,10,'Grid Racing - SP Bronze','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x7.5_45_5x114_73_PCSB_RF SP BRONZE/plain/DSCF7594nobg.webp',1),(31,10,'Grid Racing - Hyper Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x8_40_4x108_73_HYPER BLACK/plain/DSCF7656nobg.webp',1),(32,10,'Grid Racing - White','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x8_40_4x108_73_WHITE/plain/DSCF7695 1nobg.webp',1),(33,10,'Grid Racing - Plain Gold','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x8_44_5x100_73_PLAIN GOLD/plain/DSCF7829 1nobg.webp',1),(34,10,'Grid Racing - Flat Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x9_42_5x114_73_SATIN BLACK/plain/DSCF7907nobg.webp',1),(35,10,'Grid Racing - Plain Gold','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_18x9.5_20_5x114_73_PLAIN GOLD/plain/DSCF7914nobg.webp',1),(36,10,'Grid Racing - Flat Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_18x10_30_5x100_73_FLAT BLACK/plain/DSCF7510nobg.webp',1),(37,10,'Grid Racing - Chameleon','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x8.5_44_5x114_73_CHAMELEON/plain/DSCF7478nobg.webp',1),(38,10,'Grid Racing - Speed Bronze','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x8.5_44_5x114_73_SPEED BRONZE/plain/DSCF7520nobg.webp',1),(39,10,'Grid Racing - Titanium Chrome','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x9.5_38_5x114_73_TITANIUM CHROME/plain/DSCF7485nobg.webp',1),(40,10,'Grid Racing - Cosmic Blue','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19X9.5_45_5X120_64.1_COSMIC BLUE/plain/DSCF8436nobg.webp',1),(41,10,'Grid Racing - RF SP Bronze','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19X9.5_45_5X120_64.1_RF SP BRONZE/plain/DSCF8445nobg.webp',1),(42,10,'Grid Racing - Satin Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x9.5_45_5X120_64.1_SATIN BLACK/plain/DSCF8452nobg.webp',1),(43,10,'Grid Racing - Flat Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x10.5_15_5x114_73_FLAT BLACK/plain/DSCF7502nobg.webp',1),(44,11,'HB10 - Gunmetallic','/wheels/2024 02 16 - photo rota/HB10/HB10_15x7_35_4x100_56.1_RL GUNMETALLIC/plain/DSCF7436nobg.webp',1),(45,12,'Hunter - Sport Bronze','/wheels/2024 02 16 - photo rota/HUNTER/HUNTER_15x7_35_4x100_67.1_SPORT BRONZE/plain/DSCF7527nobg.webp',1),(46,13,'J-SPL - Carbon Fiber','/wheels/2024 02 16 - photo rota/J-SPL/J-SPL_15x6.5_37_4x100_67.1_RL CARBON FIBER/plain/DSCF7902nobg.webp',1),(47,14,'KB-R - White','/wheels/2024 02 16 - photo rota/KB-R/KBR_18X9.5_38_5X100_73_WHITE/plain/DSCF8139nobg.webp',1),(48,14,'KB-R - Satin Black','/wheels/2024 02 16 - photo rota/KB-R/KBR_18x9.5_38_5x114_73_SATIN BLACK/plain/DSCF7668nobg.webp',1),(49,14,'KB-R - Plain Gold','/wheels/2024 02 16 - photo rota/KB-R/KBR_18X9.5_38_5X114.3_73_PLAIN GOLD/plain/DSCF8153nobg.webp',1),(50,15,'Kensei - Hyper Black','/wheels/2024 02 16 - photo rota/KENSEI/KENSEI_15x9_-15_4x114_73_RL HYP BLK/plain/DSCF7610nobg.webp',1),(51,16,'MXR - Hyper Black','/wheels/2024 02 16 - photo rota/MXR/MXR-R2 18_18x11_20_5x114_73_RL HYP BLK/plain/DSCF7495nobg.webp',1),(52,17,'OS Mesh - Steel Gray','/wheels/2024 02 16 - photo rota/OS MESH/OS MESH 15_15x8_20_4x100_67.1_RL STEEL GRAY/plain/DSCF7625nobg.webp',1),(53,18,'PSD - FBI','/wheels/2024 02 16 - photo rota/PSD/PSD 17_17x7.5_35_5x130_71.6_FSL FSB FBI/plain/DSCF7881 1nobg.webp',1),(54,18,'PSD - Black','/wheels/2024 02 16 - photo rota/PSD/PSD 17_17x7.5_35_5x130_71.6_RL YMH BLACK/plain/DSCF7721nobg.webp',1),(55,18,'PSD - FBI','/wheels/2024 02 16 - photo rota/PSD/PSD 17_17x9_16_5x130_71.6_FSL FSB FBI/plain/DSCF7715 1nobg.webp',1),(56,18,'PSD - FBI','/wheels/2024 02 16 - photo rota/PSD/PSD 17_17x11_16_5x130_71.6_FSL FSP FBI/plain/DSCF7706nobg.webp',1),(57,18,'PSD - Black','/wheels/2024 02 16 - photo rota/PSD/PSD 17_17x11_16_5x130_71.6_RL YMH BLK/plain/DSCF7700nobg.webp',1),(58,19,'R-SPEC - Satin Black','/wheels/2024 02 16 - photo rota/R-SPEC/R-SPEC 16_16x7_45_4x100_67.1_SATIN BLACK/plain/DSCF7762 1nobg.webp',1),(59,20,'RB - Silver','/wheels/2024 02 16 - photo rota/RB/RB 15_15x7_4_4x114_73_RL P SILVER/plain/DSCF7560nobg.webp',1),(60,20,'RB - Satin Black','/wheels/2024 02 16 - photo rota/RB/RB 15_15X7_4_4X114.3_73_SATIN BLACK/plain/DSCF8483nobg.webp',1),(61,20,'RB - Silver','/wheels/2024 02 16 - photo rota/RB/RB 15_15x7_12_4x114_73_RL P SILVER/plain/DSCF7552nobg.webp',1),(62,20,'RB - Gunmetallic','/wheels/2024 02 16 - photo rota/RB/RB 16_16X7_40_4X100_56.1_RL GUNMETALLIC/plain/DSCF7757 2nobg.webp',1),(63,20,'RB - Silver','/wheels/2024 02 16 - photo rota/RB/RB 17_17X7.5_45_4X100_56.1_RL P SILVER/plain/DSCF7926 1nobg.webp',1),(64,20,'RB - Hyper Black','/wheels/2024 02 16 - photo rota/RB/RB REAR 17_17X8.5_4_4X114.3_73_RL HYP BLACK/plain/DSCF7645nobg.webp',1),(65,20,'RB - Silver','/wheels/2024 02 16 - photo rota/RB/RB_13x8_4_4x114_73_RL P SILVER/plain/DSCF7690nobg.webp',1),(66,20,'RB - Gunmetallic','/wheels/2024 02 16 - photo rota/RB/RB-X 17_17X9_-13_4X114.3_73_RL GUNMETALLIC/plain/DSCF7855 2nobg.webp',1),(67,20,'RB - Hyper Black','/wheels/2024 02 16 - photo rota/RB/RB-X 17_17X9_-13_4X114.3_73_RL HYP BLACK/plain/DSCF7867 1.webp',1),(68,20,'RB - Black','/wheels/2024 02 16 - photo rota/RB/RB-X 17_17X9_-13_4X114.3_73_RL YMH BLK/plain/DSCF7861 2nobg.webp',1),(69,20,'RB - Gunmetallic','/wheels/2024 02 16 - photo rota/RB/RB-X 17_17X9.5_-19_4X114.3_73_RL GUNMETALLIC/plain/DSCF7841 2nobg.webp',1),(70,20,'RB - Hyper Black','/wheels/2024 02 16 - photo rota/RB/RB-X 17_17X9.5_-19_4X114.3_73_RL HYP BLACK/plain/DSCF7848 2nobg.webp',1),(71,20,'RB - Black','/wheels/2024 02 16 - photo rota/RB/RB-X 17_17X9.5_-19_4X114.3_73_RL YMH BLK/plain/DSCF7874 1nobg.webp',1),(72,21,'RECCE - Hyper Black','/wheels/2024 02 16 - photo rota/RECCE/RECCE_17X7.5_40_4X108_63.35_HYPER BLACK/plain/DSCF7429nobg.webp',1),(73,22,'Shakotan - Black','/wheels/2024 02 16 - photo rota/SHAKOTAN/SHAKOTAN_15X8_0_4X100_67.1_RF YMH BLACK/plain/DSCF7633nobg.webp',1),(74,23,'Slip Stream - Gunmetallic','/wheels/2024 02 16 - photo rota/SLIP STREAM/SLIP STREAM_15X6.5_40_4X100_67.1_RF GUNMETALLIC/plain/DSCF7580nobg.webp',1),(75,23,'Slip Stream - Silver','/wheels/2024 02 16 - photo rota/SLIP STREAM/SLIP STREAM_15X7_35_5X100_57.1_PLAIN SILVER/plain/DSCF7741 1nobg.webp',1),(76,23,'Slip Stream - Gunmetallic','/wheels/2024 02 16 - photo rota/SLIP STREAM/SLIP STREAM_15X7_40_4X100_56.1_RF GUNMETALLIC/plain/DSCF7544nobg.webp',1),(77,23,'Slip Stream - Satin Black','/wheels/2024 02 16 - photo rota/SLIP STREAM/SLIP STREAM_15X7_40_5X114.3_73_SATIN BLACK/plain/DSCF7567nobg.webp',1),(78,23,'Slip Stream - Black','/wheels/2024 02 16 - photo rota/SLIP STREAM/SLIPSTREAM R_18X9.5_40_5X120_64.1_MAG BLK/plain/DSCF8591nobg.webp',1),(79,1,'Atlas 1 - Silver','/wheels/2024 02 16 - photo rota/ATLAS 1/ATLAS 1 SILVER/ATLAS 1 SILVER.webp',1),(80,1,'Atlas - Flat Black','/wheels/2024 02 16 - photo rota/ATLAS 1/ATLAS-17X8-FLAT-BLACK/ATLAS-17X8-FLAT-BLACK.webp',1),(81,1,'Atlas - Hyper Black','/wheels/2024 02 16 - photo rota/ATLAS 1/ATLAS-17X8-HYPER-BLACK/ATLAS-17X8-HYPER-BLACK.webp',1),(82,1,'Atlas - Matte Steel','/wheels/2024 02 16 - photo rota/ATLAS 1/ATLAS-17X8-MATTE-STEEL-GRAY/ATLAS-17X8-MATTE-STEEL-GRAY.webp',1),(83,1,'Atlas - Silver','/wheels/2024 02 16 - photo rota/ATLAS 1/ATLAS-17X8-SILVER/ATLAS-17X8-SILVER.webp',1),(84,2,'Circuit 10 - Bronze','/wheels/2024 02 16 - photo rota/CIRCUIT 10/CIRCUIT-10-3/CIRCUIT-10-3.webp',1),(85,2,'Circuit 10 - Plain Silver','/wheels/2024 02 16 - photo rota/CIRCUIT 10/CIRCUIT-10-PLAIN SILVER/CIRCUIT-10-PLAIN SILVER.webp',1),(86,2,'Circuit 10 - Silver','/wheels/2024 02 16 - photo rota/CIRCUIT 10/CIRCUIT-10-4H-15X6.5-SILVER/CIRCUIT-10-4H-15X6.5-SILVER.webp',1),(87,2,'Circuit 8 - Black','/wheels/2024 02 16 - photo rota/CIRCUIT 8/CIRCUIT-8-BLACK/CIRCUIT-8-BLACK.webp',1),(88,2,'Circuit 8 - Silver','/wheels/2024 02 16 - photo rota/CIRCUIT 8/CIRCUIT-8-SILVER/CIRCUIT-8-SILVER.webp',1),(89,2,'Circuit 10 - Gold','/wheels/2024 02 16 - photo rota/CIRCUIT 10/CIRCUIT-10-GOLD/CIRCUIT-10-GOLD.webp',1),(90,2,'Circuit 10 - White','/wheels/2024 02 16 - photo rota/CIRCUIT 10/CIRCUIT-10-WHITE/CIRCUIT-10-WHITE.webp',1),(91,2,'Circuit 10 - Silver','/wheels/2024 02 16 - photo rota/CIRCUIT 10/CIRCUIT-10-SILVER/CIRCUIT-10-SILVER.webp',1),(92,2,'Circuit 8 - Bronze','/wheels/2024 02 16 - photo rota/CIRCUIT 8/CIRCUIT-8-BRONZE/CIRCUIT-8-BRONZE.webp',1),(93,3,'Flush - Silver','/wheels/2024 02 16 - photo rota/FLUSH/FLUSH-SILVER/FLUSH-SILVER.webp',1),(94,3,'Flush - Pink','/wheels/2024 02 16 - photo rota/FLUSH/FLUSH-PINK/FLUSH-PINK.webp',1),(95,24,'Fighter 10 - Black Red Lip','/wheels/2024 02 16 - photo rota/FIGHTER 10/FIGHTER10-17X8-FLT-BLK-RED-LIP/FIGHTER10-17X8-FLT-BLK-RED-LIP.webp',1),(96,24,'Fighter 10 - Bronze','/wheels/2024 02 16 - photo rota/FIGHTER 10/FIGHTER10-17X8-BRONZE/FIGHTER10-17X8-BRONZE.webp',1),(97,24,'Fighter 10 - White Red Lip','/wheels/2024 02 16 - photo rota/FIGHTER 10/FIGHTER10-17X7.5-WHITE-W-RED-LIP/FIGHTER10-17X7.5-WHITE-W-RED-LIP.webp',1),(98,24,'Fighter 10 - Speed Bronze','/wheels/2024 02 16 - photo rota/FIGHTER 10/FIGHTER-10-OFFROAD-20X8.5-SPEED-BRONZE/FIGHTER-10-OFFROAD-20X8.5-SPEED-BRONZE.webp',1),(99,24,'Fighter 10 - Pink','/wheels/2024 02 16 - photo rota/FIGHTER 10/FIGHTER10-16X7-RL-PINK/FIGHTER10-16X7-RL-PINK.webp',1),(100,24,'Fighter 10 - Flat Black','/wheels/2024 02 16 - photo rota/FIGHTER 10/FIGHTER-10-OFFROAD-20X8.5-FLAT-BLACK/FIGHTER-10-OFFROAD-20X8.5-FLAT-BLACK.webp',1),(101,7,'Fighter - Silver','/wheels/2024 02 16 - photo rota/FIGHTER/FIGHTER-SILVER/FIGHTER-SILVER.webp',1),(102,7,'Fighter - Royal Black','/wheels/2024 02 16 - photo rota/FIGHTER/FIGHTER-ROYAL-BLACK/FIGHTER-ROYAL-BLACK.webp',1),(103,7,'Fighter - Bronze','/wheels/2024 02 16 - photo rota/FIGHTER/FIGHTER-BRONZE/FIGHTER-BRONZE.webp',1),(104,7,'Fighter - Flat Black','/wheels/2024 02 16 - photo rota/FIGHTER/FIGHTER-FLAT-BLACK/FIGHTER-FLAT-BLACK.webp',1),(105,5,'5Star - Bronze','/wheels/2024 02 16 - photo rota/FIVE STAR OFF/FIVE STAR BRONZE/FIVE STAR BRONZE.webp',1),(106,5,'5Star- Hyper Black','/wheels/2024 02 16 - photo rota/FIVE STAR OFF/FIVE-STAR-OFF-16X8-HYPER-BLACK/FIVE-STAR-OFF-16X8-HYPER-BLACK.webp',1),(107,5,'5Star - Silver','/wheels/2024 02 16 - photo rota/FIVE STAR OFF/FIVE-STAR-OFF-SILVER/FIVE-STAR-OFF-SILVER.webp',1),(108,5,'5Star - SP Bronze','/wheels/2024 02 16 - photo rota/FIVE STAR OFF/FIVE-STAR-OFF-SP-BRONZE/FIVE-STAR-OFF-SP-BRONZE.webp',1),(109,5,'5Star - Flat Black','/wheels/2024 02 16 - photo rota/FIVE STAR OFF/FIVE-STAR-OFF-FLAT-BLACK/FIVE-STAR-OFF-FLAT-BLACK.webp',1),(110,5,'5Star - White','/wheels/2024 02 16 - photo rota/FIVE STAR OFF/FIVE-STAR-OFF-WHITE/FIVE-STAR-OFF-WHITE.webp',1),(111,6,'G-Force - Metallic','/wheels/2024 02 16 - photo rota/GFORCE-18X8.5-GUN-METALLIC/GFORCE-18X8.5-GUN-METALLIC.webp',1),(112,6,'G-Force - Black','/wheels/2024 02 16 - photo rota/G-FORCE-BLACK/G-FORCE-BLACK.webp',1),(113,6,'G-Force - Red Black','/wheels/2024 02 16 - photo rota/G-FORCE-RED-BLACK/G-FORCE-RED-BLACK.webp',1),(114,6,'G-Force - SP-Bronze','/wheels/2024 02 16 - photo rota/G-FORCE-SP-BRONZE/G-FORCE-SP-BRONZE.webp',1),(115,25,'Kyusha - Black Bronze','/wheels/2024 02 16 - photo rota/KYUSHA/KYUSHA-15X7-PCYMZ/KYUSHA-15X7-PCYMZ.webp',1),(116,25,'Kyusha - Hyper Black','/wheels/2024 02 16 - photo rota/KYUSHA/KYUSHA-15X7-RL-HYPER-BLACK/KYUSHA-15X7-RL-HYPER-BLACK.webp',1),(117,25,'Kyusha - Yamaha Black','/wheels/2024 02 16 - photo rota/KYUSHA/KYUSHA-15X8-RF-YAMAHA-BLACK/KYUSHA-15X8-RF-YAMAHA-BLACK.webp',1),(118,25,'Kyusha - Gloss Black','/wheels/2024 02 16 - photo rota/KYUSHA/KYUSHA-15X9-FB-GLOSS-BLK-LIP/KYUSHA-15X9-FB-GLOSS-BLK-LIP.webp',1),(119,25,'Kyusha - Black','/wheels/2024 02 16 - photo rota/KYUSHA/KYUSHA-BLACK/KYUSHA-BLACK.webp',1),(120,25,'Kyusha - Bronze','/wheels/2024 02 16 - photo rota/KYUSHA/KYUSHA-BRONZE/KYUSHA-BRONZE.webp',0),(121,25,'Kyusha - Silver','/wheels/2024 02 16 - photo rota/KYUSHA/KYUSHA-SILVER/KYUSHA-SILVER.webp',1),(122,20,'RB - Bronze','/wheels/2024 02 16 - photo rota/RB/RB-16-16X7-RL-BRONZE/RB-16-16X7-RL-BRONZE.webp',1),(123,20,'RB - Metallic','/wheels/2024 02 16 - photo rota/RB/RB-13X8-RL-GUN-METALLIC/RB-13X8-RL-GUN-METALLIC.webp',1);
/*!40000 ALTER TABLE `wheels_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02 17:00:18
