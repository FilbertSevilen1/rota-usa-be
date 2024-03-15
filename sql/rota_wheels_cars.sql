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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 15:11:23
