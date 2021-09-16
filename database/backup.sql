-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: application
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `City`
--

DROP TABLE IF EXISTS `City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `City` (
  `Name` varchar(50) NOT NULL,
  `Nation` varchar(50) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `City`
--

LOCK TABLES `City` WRITE;
/*!40000 ALTER TABLE `City` DISABLE KEYS */;
INSERT INTO `City` VALUES ('Ankara','Turkey',NULL),('Atlanta','United States',NULL),('Baghdad','Iraq',NULL),('Bangalore','India',NULL),('Bangkok','Thailand',NULL),('Beijing','China',NULL),('Bogota','Colombia',NULL),('Buenos Aires','Argentina',NULL),('Cairo','Egypt',NULL),('Chicago','United States',NULL),('Dallas','United States',NULL),('Delhi','India',NULL),('Dhaka','Bangladesh',NULL),('Ganzhou','China',NULL),('Giza','Egypt',NULL),('Guangzhou','China',NULL),('Hanoi','Vietnam',NULL),('Ho Chi Minh City','Vietnam',NULL),('Hong Kong','Hong Kong',NULL),('Houston','United States',NULL),('Istanbul','Turkey',NULL),('Jakarta','Indonesia',NULL),('Kolkta','India',NULL),('Kuala Lumpur','Malaysia',NULL),('Lagos','Nigeria',NULL),('Lima','Peru',NULL),('London','United Kingdom',NULL),('Los Angeles','United States',NULL),('Madrid','Spain',NULL),('Manila','Philippines',NULL),('Mexico City','Mexico',NULL),('Miami','United States',NULL),('Moscow','Russia',NULL),('Mumbai','India',NULL),('Nairobi','Kenya',NULL),('New York','United States',NULL),('Paris','France',NULL),('Philadelphia','United States',NULL),('Rio de Janeiro','Brazil',NULL),('Riyadh','Saudi Arabia',NULL),('Rome','Italy',NULL),('saka','Japan',NULL),('Santiago','Chile',NULL),('Sao Paulo','Brazil',NULL),('Seoul','Korea South',NULL),('Shanghai','China',NULL),('Shenzhen','China',NULL),('Singapore','Singapore',NULL),('Tehran','Iran',NULL),('Tokyo','Japan',NULL);
/*!40000 ALTER TABLE `City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comment`
--

DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comment` (
  `Name` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Safety_Description` varchar(255) DEFAULT NULL,
  `Safety_score` int DEFAULT NULL,
  `Commentid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

LOCK TABLES `Comment` WRITE;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
INSERT INTO `Comment` VALUES ('Rome','Very nice city','You may be robbed at metro station',7,1),('Tokyo','Amazing in spring','Super safe',10,2),('Teheran','If you like middle east culture it s a place to visit','Not very safe',3,3);
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-16 14:07:08
