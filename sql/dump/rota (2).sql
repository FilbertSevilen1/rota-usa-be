CREATE DATABASE  IF NOT EXISTS `rota_wheels` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rota_wheels`;
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
  PRIMARY KEY (`bolt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolts`
--

LOCK TABLES `bolts` WRITE;
/*!40000 ALTER TABLE `bolts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolts_details`
--

DROP TABLE IF EXISTS `bolts_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bolts_details` (
  `bolt_detail_id` int NOT NULL,
  `bolt_id` int DEFAULT NULL,
  `bolt_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bolt_detail_id`),
  KEY `bolt_id` (`bolt_id`),
  CONSTRAINT `bolts_details_ibfk_1` FOREIGN KEY (`bolt_id`) REFERENCES `bolts` (`bolt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolts_details`
--

LOCK TABLES `bolts_details` WRITE;
/*!40000 ALTER TABLE `bolts_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolts_details` ENABLE KEYS */;
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
  PRIMARY KEY (`offset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offsets`
--

LOCK TABLES `offsets` WRITE;
/*!40000 ALTER TABLE `offsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `offsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offsets_details`
--

DROP TABLE IF EXISTS `offsets_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offsets_details` (
  `offset_details_id` int NOT NULL,
  `offset_id` int DEFAULT NULL,
  `offset_name` varchar(255) DEFAULT NULL,
  `bolt_id` int DEFAULT NULL,
  PRIMARY KEY (`offset_details_id`),
  KEY `offset_id` (`offset_id`),
  KEY `bolt_id` (`bolt_id`),
  CONSTRAINT `offsets_details_ibfk_1` FOREIGN KEY (`offset_id`) REFERENCES `offsets` (`offset_id`),
  CONSTRAINT `offsets_details_ibfk_2` FOREIGN KEY (`bolt_id`) REFERENCES `bolts` (`bolt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offsets_details`
--

LOCK TABLES `offsets_details` WRITE;
/*!40000 ALTER TABLE `offsets_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `offsets_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `size_id` int NOT NULL,
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
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes_details`
--

DROP TABLE IF EXISTS `sizes_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes_details` (
  `size_details_id` int NOT NULL,
  `size_id` int DEFAULT NULL,
  `size_name` varchar(255) DEFAULT NULL,
  `offset_id` int DEFAULT NULL,
  PRIMARY KEY (`size_details_id`),
  KEY `size_id` (`size_id`),
  KEY `offset_id` (`offset_id`),
  CONSTRAINT `sizes_details_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`size_id`),
  CONSTRAINT `sizes_details_ibfk_2` FOREIGN KEY (`offset_id`) REFERENCES `offsets` (`offset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes_details`
--

LOCK TABLES `sizes_details` WRITE;
/*!40000 ALTER TABLE `sizes_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sizes_details` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `wheels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wheels_details`
--

DROP TABLE IF EXISTS `wheels_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wheels_details` (
  `wheel_detail_id` int NOT NULL,
  `wheel_id` int DEFAULT NULL,
  `wheel_details_name` varchar(255) DEFAULT NULL,
  `wheel_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wheel_detail_id`),
  KEY `wheel_id` (`wheel_id`),
  CONSTRAINT `wheels_details_ibfk_1` FOREIGN KEY (`wheel_id`) REFERENCES `wheels` (`wheel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheels_details`
--

LOCK TABLES `wheels_details` WRITE;
/*!40000 ALTER TABLE `wheels_details` DISABLE KEYS */;
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

-- Dump completed on 2024-03-15 15:13:39
