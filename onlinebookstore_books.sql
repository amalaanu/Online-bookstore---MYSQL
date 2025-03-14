-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinebookstore
-- ------------------------------------------------------
-- Server version	9.0.0

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `bookID` int NOT NULL,
  `authorID` int DEFAULT NULL,
  `publisherID` int DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `genre` varchar(15) DEFAULT NULL,
  `publicationYear` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`bookID`),
  KEY `authorID` (`authorID`),
  KEY `publisherID` (`publisherID`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authorID`) REFERENCES `authors` (`authorID`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`publisherID`) REFERENCES `publishers` (`publisherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,500,7000,'Treasure Island','Adventure',1964,345),(2,500,7000,'Life of Pi','Adventure',2001,295),(3,506,7001,'Black House','Horror',2001,800),(4,506,7001,'Ghost Story','Horror',1979,499),(5,505,7001,'The Grownup','Horror',2015,99),(6,505,7001,'Gone Girl','Mystery',2012,367),(7,502,7001,'Paper Towns','Mystery',2008,199),(8,502,7001,'Fault in our Stars','Romance',2012,687),(9,503,7001,'Layla','Mystery',2020,1598),(10,503,7001,'Ugly Love','Romance',2014,350),(11,504,7000,'Pride & Prejudice','Romance',1813,295),(12,504,7000,'Mysteries of Udolpho','Mystery',1793,795),(13,501,7002,'Into Thin Air','Adventure',1964,568);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28 16:36:16
