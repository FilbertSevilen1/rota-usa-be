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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 15:11:24
