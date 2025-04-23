-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: agro_app
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `advisory_services`
--

DROP TABLE IF EXISTS `advisory_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advisory_services` (
  `advisory_id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_issued` date NOT NULL,
  `target_audience` varchar(50) DEFAULT 'All',
  PRIMARY KEY (`advisory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advisory_services`
--

LOCK TABLES `advisory_services` WRITE;
/*!40000 ALTER TABLE `advisory_services` DISABLE KEYS */;
INSERT INTO `advisory_services` VALUES (1,'Enchance productivity and income','providing agricultural input and training ','2011-01-01','Farmers'),(2,'Soil erosion control','local farmers to adopt terracing and cover crop techniques to reduce soil erosion','2018-12-11','farmers'),(3,'To improve  access to clean drinking water','delivering sustainable water supply through solor-powered  IoT-enabled kiosks','2020-10-23','communities');
/*!40000 ALTER TABLE `advisory_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crops`
--

DROP TABLE IF EXISTS `crops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crops` (
  `crop_id` int NOT NULL AUTO_INCREMENT,
  `crop_name` varchar(100) NOT NULL,
  `growing_season` varchar(100) DEFAULT NULL,
  `market_price` decimal(10,2) DEFAULT '0.00',
  `pest_disease_info` varchar(1000) DEFAULT 'No info',
  PRIMARY KEY (`crop_id`),
  UNIQUE KEY `crop_name` (`crop_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crops`
--

LOCK TABLES `crops` WRITE;
/*!40000 ALTER TABLE `crops` DISABLE KEYS */;
INSERT INTO `crops` VALUES (1,'Sorghum','Mar-Apr/Aug-Sept',2300.00,'sorghum midge/aphids'),(2,'G-nuts','Mar-May/Sept-Nov',7500.00,'grasshoppers/aphids'),(3,'Tomatoes','Feb-Mar/Aug-Sept',3000.00,'cutworms/aphids'),(4,'Soybean','Jun-Nov',2000.00,'gram pod bones/cutworms');
/*!40000 ALTER TABLE `crops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmers`
--

DROP TABLE IF EXISTS `farmers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmers` (
  `farmer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `crops_grown` varchar(1000) DEFAULT 'Not specified',
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmers`
--

LOCK TABLES `farmers` WRITE;
/*!40000 ALTER TABLE `farmers` DISABLE KEYS */;
INSERT INTO `farmers` VALUES (1,'Okello Justine','0774070669','okjustine@gmail.com','Pawel','Soybean'),(2,'Ojok Geofrey','0704999461','ojokgeo6@gmail.com','Orapwoyo','Tomatoes'),(3,'Dr. Tonny Kidega','0778988461','tonnykidega@gmail.com','Gwengdiya','G-nuts');
/*!40000 ALTER TABLE `farmers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farms`
--

DROP TABLE IF EXISTS `farms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farms` (
  `Farm_id` int NOT NULL AUTO_INCREMENT,
  `Farm_name` varchar(255) NOT NULL,
  `Farm_location` varchar(255) NOT NULL,
  `Farm_owner` varchar(255) NOT NULL,
  PRIMARY KEY (`Farm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farms`
--

LOCK TABLES `farms` WRITE;
/*!40000 ALTER TABLE `farms` DISABLE KEYS */;
INSERT INTO `farms` VALUES (1,'Gimoro Grain Farm and Store','Gulu','Ojok Gimoro'),(2,'Kinene Estate Farm','Paicho,Gulu','Arach Oala Florence'),(3,'Homa Farms Limited','Omel,Gulu','Onono Moses'),(4,'Walter Okello Soybean','Awach,Gulu','Walter Okello');
/*!40000 ALTER TABLE `farms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markets`
--

DROP TABLE IF EXISTS `markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markets` (
  `market_id` int NOT NULL AUTO_INCREMENT,
  `market_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `operating_hours` varchar(50) DEFAULT '9 AM - 5 PM',
  `product_types` text NOT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markets`
--

LOCK TABLES `markets` WRITE;
/*!40000 ALTER TABLE `markets` DISABLE KEYS */;
INSERT INTO `markets` VALUES (1,'Gulu Central Market','Gulu City','9 AM - 5 PM','fresh produce grains spices'),(2,'Julius and Sons Merchandise Market','Keyo','9 AM - 5 PM','fresh fruits local goods'),(3,'Awach Market','Awach Subcounty','9 AM - 5 PM','grians livestocks'),(4,'Cereleno Market','Ring Road','9 AM - 5 PM','poultry traditional snacks');
/*!40000 ALTER TABLE `markets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_data`
--

DROP TABLE IF EXISTS `weather_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_data` (
  `weather_id` int NOT NULL AUTO_INCREMENT,
  `record_date` date NOT NULL,
  `temperature` decimal(5,2) DEFAULT '0.00',
  `humidity` decimal(5,2) DEFAULT '0.00',
  `precipitation` decimal(5,2) DEFAULT '0.00',
  `forecast_advice` varchar(1000) DEFAULT 'No advice available',
  PRIMARY KEY (`weather_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_data`
--

LOCK TABLES `weather_data` WRITE;
/*!40000 ALTER TABLE `weather_data` DISABLE KEYS */;
INSERT INTO `weather_data` VALUES (1,'2025-04-01',23.80,74.00,0.00,'Dry and warm.'),(2,'2025-04-02',28.30,74.00,0.00,'Hot and dry.'),(3,'2025-04-04',27.30,74.00,0.00,'Warm and dry.'),(4,'2025-04-06',24.00,74.00,0.00,'Cooler temperatures, no rain.'),(5,'2025-04-07',20.90,74.00,0.00,'Cool and dry.');
/*!40000 ALTER TABLE `weather_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23 15:57:00
