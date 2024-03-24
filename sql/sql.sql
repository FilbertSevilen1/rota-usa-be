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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolts`
--

LOCK TABLES `bolts` WRITE;
/*!40000 ALTER TABLE `bolts` DISABLE KEYS */;
INSERT INTO `bolts` VALUES (1,'5 x 139.70',1),(2,'6 x 114.3',1),(3,'6 x 139.70',1),(4,'6 x 139.70',2),(5,'6 x 114.3',3),(6,'4 x 100',4),(7,'4 x 108',4),(8,'4 x 110',4),(9,'4 x 114.3',4),(10,'5 x 100',4),(11,'5 x 108',4),(12,'5 x 112',4),(13,'5 x 114.3',4),(14,'4 x 100',5),(15,'4 x 108',5),(16,'4 x 110',5),(17,'4 x 114.3',5),(18,'5 x 100',5),(19,'5 x 108',5),(20,'5 x 112',5),(21,'5 x 114.3',5),(22,'4 x 100',6),(23,'4 x 108',6),(24,'4 x 110',6),(25,'4 x 114.3',6),(26,'5 x 100',6),(27,'5 x 105',6),(28,'5 x 108',6),(29,'5 x 112',6),(30,'5 x 114.3',6),(31,'4 x 100',7),(32,'4 x 108',7),(33,'4 x 110',7),(34,'4 x 114.3',7),(35,'5 x 100',7),(36,'5 x 105',7),(37,'5 x 108',7),(38,'5 x 112',7),(39,'5 x 114.3',7),(40,'4 x 95.25',8),(41,'4 x 98',8),(42,'4 x 100',8),(43,'4 x 108',8),(44,'4 x 110',8),(45,'4 x 114.3',8),(46,'5 x 100',9),(47,'5 x 108',9),(48,'5 x 112',9),(49,'5 x 114.3',9),(50,'4 x 95.25',10),(51,'4 x 98',10),(52,'4 x 100',10),(53,'4 x 108',10),(54,'4 x 110',10),(55,'4 x 114.3',10),(56,'5 x 100',11),(57,'5 x 108',11),(58,'5 x 112',11),(59,'5 x 114.3',11),(60,'5H',12),(61,'6H',13),(62,'4 x 100',14),(63,'5 x 100',15),(64,'5 x 100',16),(65,'4 x 100',17),(66,'4 x 114.3',18),(67,'5 x 100',19),(68,'5 x 108',20),(69,'5 x 114.3',21),(70,'5 x 100',22),(71,'5 x 105',22),(72,'5 x 108',22),(73,'5 x 112',22),(74,'5 x 114.3',22),(75,'5 x 115',22),(76,'5 x 120',22),(77,'5 x 100',23),(78,'5 x 112',23),(79,'5 x 114.3',23),(80,'5 x 120',23),(81,'5 x 139.7',23),(82,'6 x 114.3',23),(83,'6 x 135',23),(84,'6 x 139.7',23),(85,'4 x 100',24),(86,'4 x 108',24),(87,'4 x 110',24),(88,'4 x 114.3',24),(89,'5 x 100',25),(90,'5 x 108',25),(91,'5 x 110',25),(92,'5 x 112',25),(93,'5 x 114.3',25),(94,'5 x 120',25),(95,'4 x 100',26),(96,'4 x 108',26),(97,'4 x 110',26),(98,'4 x 114.3',26),(99,'5 x 100',26),(100,'5 x 108',26),(101,'5 x 110',26),(102,'5 x 112',26),(103,'5 x 114.3',26),(104,'5 x 120',26),(105,'4 x 100',27),(106,'4 x 108',27),(107,'4 x 110',27),(108,'4 x 114.3',27),(109,'5 x 100',28),(110,'5 x 108',28),(111,'5 x 110',28),(112,'5 x 112',28),(113,'5 x 114.3',28),(114,'5 x 120',28),(115,'4H/5H',29),(116,'4H',30),(117,'5H',31),(118,'4H',32),(119,'5H',33),(120,'4 x 100',34),(121,'4 x 108',34),(122,'4 x 110',34),(123,'4 x 114.3',34),(124,'5 x 100	',35),(125,'5 x 108',35),(126,'5 x 112',35),(127,'5 x 114.3',35),(128,'4 x 100',36),(129,'4 x 108',36),(130,'4 x 110',36),(131,'4 x 114.3',36),(132,'5 x 100',37),(133,'5 x 108',37),(134,'5 x 112',37),(135,'5 x 114.3',37),(136,'5 x 100',38),(137,'5 x 108',38),(138,'5 x 110',38),(139,'5 x 112',38),(140,'5 x 114.3',38),(141,'5 x 120',38),(142,'5 x 100',39),(143,'5 x 108',39),(144,'5 x 110',39),(145,'5 x 112',39),(146,'5 x 114.3',39),(147,'5 x 120',39),(148,'4 x 100',40),(149,'4 x 108',40),(150,'4 x 114.3',40),(151,'5 x 100',40),(152,'5 x 105',40),(153,'5 x 108',40),(154,'5 x 112',40),(155,'5 x 114.3',40),(156,'5 x 115',40),(157,'5 x 120',40);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Bmw 1','mt-[-126.5px] md:mt-[-253px] w-[3.3rem] h-[4.45rem] ml-[11px] md:w-[6.6rem] md:h-[8.9rem] md:ml-[22px] rounded-full relative z-10 bg-gray-950','mt-[-116px] md:mt-[-232px] w-[4.4rem] h-[5.2rem] mr-[151.5px] md:w-[8.8rem] md:h-[10.4rem] md:mr-[303px] rounded-full relative z-10 bg-gray-950',1),(2,'Ferrari 1','mt-[-150px] md:mt-[-300px] w-[3.3rem] h-[5.5rem] ml-[0px] md:w-[6.6rem] md:h-[11rem] md:ml-[0px] rounded-full relative z-10 bg-gray-950','mt-[-130px] md:mt-[-260px] w-[4.6rem] h-[6.45rem] mr-[207px] md:w-[9.2rem] md:h-[12.9rem] md:mr-[414px] rounded-full relative z-10 wheels bg-gray-950',2),(3,'Honda','mt-[-125px] md:mt-[-250px] w-[3.3rem] h-[4.5rem] ml-[25px] md:w-[6.6rem] md:h-[9rem] md:ml-[50px] rounded-full relative z-10 bg-gray-950','mt-[-109px] md:mt-[-218px] w-[4.6rem] h-[4.8rem] mr-[117px] md:w-[9.2rem] md:h-[9.6rem] md:mr-[234px] rounded-full relative z-10 bg-gray-950',3),(4,'Lamborghini','mt-[-136px] md:mt-[-272px] w-[2.8rem] h-[5.5rem] ml-[0px]md:w-[5.6rem] md:h-[11rem] md:ml-[0px] rounded-full relative z-10 bg-gray-950','mt-[-126px] md:mt-[-252px] w-[4.45rem] h-[6.25rem] mr-[208px] md:w-[8.9rem] md:h-[12.5rem] md:mr-[416px] rounded-full relative z-10 bg-gray-950',4),(6,'Subaru','mt-[-126px] md:mt-[-252px] w-[2.9rem] h-[5.5rem] ml-[40px] md:w-[5.8rem] md:h-[11rem] md:ml-[80px] rounded-full relative wheels bg-gray-950','mt-[-126.5px] md:mt-[-253px] w-[4.45rem] h-[6.25rem] mr-[156.5px] md:w-[8.9rem] md:h-[12.5rem] md:mr-[313px] rounded-full relative wheels bg-gray-950',6),(7,'Toyota','mt-[-123px] md:mt-[-246px] w-[2.2rem] h-[4.0rem] ml-[42.5px] md:w-[4.4rem] md:h-[8.0rem] md:ml-[85px] rounded-full relative  wheels bg-gray-950','mt-[-110px] md:mt-[-220px] w-[3.6rem] h-[5.2rem] mr-[169px] md:w-[7.2rem] md:h-[10.4rem] md:mr-[338px] rounded-full relative wheels bg-gray-950',7),(8,'Mitsubishi','mt-[-130px] md:mt-[-260px] w-[2.4rem] h-[4.7rem] ml-[17.5px] md:w-[4.8rem] md:h-[9.4rem] md:ml-[35px] rounded-full relative wheels bg-gray-950','mt-[-121px] md:mt-[-242px] w-[3.4rem] h-[5.4rem] mr-[225px] md:w-[6.8rem] md:h-[10.8rem] md:mr-[450px] rounded-full relative wheels bg-gray-950',8);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offsets`
--

LOCK TABLES `offsets` WRITE;
/*!40000 ALTER TABLE `offsets` DISABLE KEYS */;
INSERT INTO `offsets` VALUES (1,'et10 only',1),(2,'et4 / et10 only',2),(3,'et10 only',2),(4,'et38 to e45',3),(5,'e45 to e48',4),(6,'e20 to e30 / e35 to e40 / e45 to e48',5),(7,'e20 to e30 / e35 to e40 / e45 to e50',6),(8,'e7 to e40 / e42 to e52',7),(9,'e15 to e40 / e42 to e52',7),(10,'e12 to e42 / e45 to e55',8),(11,'e20 to e42 / e45 to e55',8),(12,'e+0 to +10',9),(13,'e-15 to -2/ e+0 to +10',10),(14,'e35 / e45',11),(15,'e45 / e48 to e53',11),(16,'e45 / e48',11),(17,'e48',12),(18,'e35',12),(19,'e35 / e48',12),(20,'e48',12),(21,'e35 / e48',12),(22,'e30 to e42',13),(23,'e10 to e20 / e35 to e45',14),(24,'e0 / e20',15),(25,'e20',15),(26,'e0',16),(27,'e-15 to -5 / e0',17),(28,'e0',17),(29,'e20',18),(30,'e0 / e10 to e20',19),(31,'e0 / e20',19),(32,'e-15 to e-5 / e0',20),(33,'e0',20),(34,'e15 to e24',21),(35,'e15 to e24 / e34 to e36',21),(36,'e20 to e30',22),(37,'e20 to e30 / e40 to e42',22),(38,'e8 to e18 / e20',23),(39,'e15 to e25 / e27',24),(40,'e45 to e48',25);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'17 x 8.5',1),(2,'17 x 8.5',1),(3,'17 x 7.0',2),(4,'17 x 7.5',2),(5,'17 x 7.5',4),(6,'17 x 8.5',4),(7,'17 x 9.0',3),(8,'17 x 9.0',3),(9,'16 x 8',5),(10,'16 x 8',5),(11,'17 x 7.5',6),(12,'17 x 8.0',6),(13,'17 x 9.0',6),(14,'20 x 8.5',7),(15,'15 x 7.0',8),(16,'15 x 8.0',8),(17,'15 x 9.0',8),(18,'16 x 7.0',8),(19,'16 x 8.0',8),(20,'16 x 9.0',8),(21,'17 x 8.5',8),(22,'17 x 9.0',8),(23,'18 x 10',8),(24,'18 x 10.5',8),(25,'17 x 9',10);
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
  PRIMARY KEY (`wheel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheels`
--

LOCK TABLES `wheels` WRITE;
/*!40000 ALTER TABLE `wheels` DISABLE KEYS */;
INSERT INTO `wheels` VALUES (1,'ATLAS'),(2,'CIRCUIT'),(3,'FLUSH'),(4,'D2'),(5,'5STAR'),(6,'G-FORCE'),(7,'FIGHTER'),(8,'GRID CLASSIC'),(9,'GRID CONCAVE'),(10,'GRID RACING'),(11,'HB10'),(12,'HUNTER'),(13,'J-SPL');
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
  PRIMARY KEY (`wheel_details_id`),
  KEY `wheel_id` (`wheel_id`),
  CONSTRAINT `wheels_details_ibfk_1` FOREIGN KEY (`wheel_id`) REFERENCES `wheels` (`wheel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheels_details`
--

LOCK TABLES `wheels_details` WRITE;
/*!40000 ALTER TABLE `wheels_details` DISABLE KEYS */;
INSERT INTO `wheels_details` VALUES (1,1,'Atlas 1 - Royal Black','/wheels/2024 02 16 - photo rota/ATLAS 1/ATLAS 1 17_17x8.5_4_5x139.7_106.1_ RL YMH BLK/plain/DSCF7736 1nobg.webp'),(2,2,'Circuit 8 - Bronze','/wheels/2024 02 16 - photo rota/CIRCUIT 8/CIRCUIT 8_15x6.5_38_8x100x100_67.1_BRONZE/plain/DSCF7684 nobg.webp'),(3,2,'Circuit 10 - Bronze','/wheels/2024 02 16 - photo rota/CIRCUIT 10/CIRCUIT 10_15X6.5_45_4X100_67.1_RF SP BRONZE/plain/DSCF7400 3nobg.webp'),(4,4,'D2 - Carbon Fiber','/wheels/2024 02 16 - photo rota/D2/D2_16x7_40_5x114_73_RL CARBON FIBER/plain/DSCF7895 1nobg.webp'),(5,3,'Flush - White','/wheels/2024 02 16 - photo rota/FLUSH/FLUSH-15X7-RF-SILVER-300x300//FLUSH-15X7-RF-SILVER-300x300.webp'),(6,5,'5Star - Bronze','/wheels/2024 02 16 - photo rota/FIVE STAR OFF/FIVE STAR OFF_16x8_10_6x139.7_110_BRONZE/plain/DSCF7417nobg.webp'),(7,6,'G-Force - Hyper Black','/wheels/2024 02 16 - photo rota/G-FORCE/G-FORCE_17x9_42_5x100_73_HYPER BLACK/plain/DSCF7469nobg.webp'),(8,7,'Fighter - Silver','/wheels/2024 02 16 - photo rota/FIGHTER/FIGHTER 10H 1670_16X7_40_10X114.3X100_73_HYPER SILVER IMP1/plain/DSCF8177nobg.webp'),(9,8,'Grid Classic - SP Bronze','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x7_0_4x100_67.1_RF SP BRONZE/plain/DSCF7533 6nobg.webp'),(10,8,'Grid Classic - Bronze','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x7_20_4x100_67.1_BRONZE/plain/DSCF7945nobg.webp'),(11,8,'Grid Classic - White','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x7_20_4x100_67.1_WHITE/plain/DSCF7835 1nobg.webp'),(12,8,'Grid Classic - Silver','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x8_0_4x100_67.1_RF P SILVER/plain/DSCF7748 1nobg.webp'),(13,8,'Grid Classic - Black','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x8_0_5x114_73_FLAT GUN YMH BLK LIP/plain/DSCF7813 1nobg.webp'),(14,8,'Grid Classic - SP Bronze','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_15x9_-15_4x114_73_RF SP BRONZE/plain/DSCF7799 3nobg.webp'),(15,8,'Grid Classic - Satin Black','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_16x8_20_4x100_67.1_SATIN BLACK/plain/DSCF7956nobg.webp'),(16,8,'Grid Classic - White','/wheels/2024 02 16 - photo rota/GRID CLASSIC/GRID CLASSIC_16x8_20_5x114_73_WHITE/plain/DSCF7779 1nobg.webp'),(17,9,'Grid Concave -  Hyper Black','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15x8_20_5x114_73_HYPER BLACK/plain/DSCF7793 1nobg.webp'),(18,9,'Grid Concave - White','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15x8_20_5x114_73_WHITE/plain/DSCF7938nobg.webp'),(19,9,'Grid Concave - Plain Silver','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15X8_20_5X114.3_73_PLAIN SILVER/plain/DSCF8518nobg.webp'),(20,9,'Grid Concave - RF P Silver','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15X8_20_5X114.3_73_RF P SILVER/plain/DSCF8512nobg.webp'),(21,9,'Grid Concave - RF SP Bronze','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15X8_20_5X114.3_73_RF SP BRONZE/plain/DSCF8475nobg.webp'),(22,9,'Grid Concave - Hyper Black','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15x9_36_4x100_67.1_HYPER BLACK/plain/DSCF7588nobg.webp'),(23,9,'Grid Concave - Speed Bronze','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_15x9_36_4x100_67.1_SPEED BRONZE/plain/DSCF7502nobg.webp'),(24,9,'Grid Concave - RF P Silver','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_16X8_20_5X114.3_73_RF P SILVER/plain/DSCF8497nobg.webp'),(25,9,'Grid Concave - Satin Black','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_16X8_20_5X114.3_73_SATIN BLACK/plain/DSCF8489nobg.webp'),(26,9,'Grid Concave - White','/wheels/2024 02 16 - photo rota/GRID CONCAVE/GRID CONCAVE_16X8_20_5X114.3_73_WHITE/plain/DSCF8500nobg.webp'),(27,10,'Grid Racing - Sport Bronze','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_15x6.5_38_4x100_67.1_SPORT BRONZE/plain/DSCF7949nobg.webp'),(28,10,'Grid Racing - PCWH White','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_15x7_38_4x100_67.1_PCWH_WHITE/plain/DSCF7785 1nobg.webp'),(29,10,'Grid Racing - Satin Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_16x7_42_4x108_63.35_SATIN BLACK/plain/DSCF7820 1nobg.webp'),(30,10,'Grid Racing - SP Bronze','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x7.5_45_5x114_73_PCSB_RF SP BRONZE/plain/DSCF7594nobg.webp'),(31,10,'Grid Racing - Hyper Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x8_40_4x108_73_HYPER BLACK/plain/DSCF7656nobg.webp'),(32,10,'Grid Racing - White','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x8_40_4x108_73_WHITE/plain/DSCF7695 1nobg.webp'),(33,10,'Grid Racing - Plain Gold','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x8_44_5x100_73_PLAIN GOLD/plain/DSCF7829 1nobg.webp'),(34,10,'Grid Racing - Flat Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_17x9_42_5x114_73_SATIN BLACK/plain/DSCF7907nobg.webp'),(35,10,'Grid Racing - Plain Gold','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_18x9.5_20_5x114_73_PLAIN GOLD/plain/DSCF7914nobg.webp'),(36,10,'Grid Racing - Flat Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_18x10_30_5x100_73_FLAT BLACK/plain/DSCF7510nobg.webp'),(37,10,'Grid Racing - Chameleon','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x8.5_44_5x114_73_CHAMELEON/plain/DSCF7478nobg.webp'),(38,10,'Grid Racing - Speed Bronze','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x8.5_44_5x114_73_SPEED BRONZE/plain/DSCF7520nobg.webp'),(39,10,'Grid Racing - Titanium Chrome','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x9.5_38_5x114_73_TITANIUM CHROME/plain/DSCF7485nobg.webp'),(40,10,'Grid Racing - Cosmic Blue','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19X9.5_45_5X120_64.1_COSMIC BLUE/plain/DSCF8436nobg.webp'),(41,10,'Grid Racing - RF SP Bronze','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19X9.5_45_5X120_64.1_RF SP BRONZE/plain/DSCF8445nobg.webp'),(42,10,'Grid Racing - Satin Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x9.5_45_5X120_64.1_SATIN BLACK/plain/DSCF8452nobg.webp'),(43,10,'Grid Racing - Flat Black','/wheels/2024 02 16 - photo rota/GRID RACING/GRID RACING_19x10.5_15_5x114_73_FLAT BLACK/plain/DSCF7502nobg.webp'),(44,11,'HB10 - Gunmetallic','/wheels/2024 02 16 - photo rota/HB10/HB10_15x7_35_4x100_56.1_RL GUNMETALLIC/plain/DSCF7436nobg.webp'),(45,12,'Hunter - Sport Bronze','/wheels/2024 02 16 - photo rota/HUNTER/HUNTER_15x7_35_4x100_67.1_SPORT BRONZE/plain/DSCF7527nobg.webp'),(46,13,'J-SPL - Carbon Fiber','/wheels/2024 02 16 - photo rota/J-SPL/J-SPL_15x6.5_37_4x100_67.1_RL CARBON FIBER/plain/DSCF7902nobg.webp');
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

-- Dump completed on 2024-03-20 15:56:03
