-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: enterprise_db
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `COMMENT`
--

DROP TABLE IF EXISTS `COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMMENT` (
  `COMMENT_ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `TASK_ID` int NOT NULL,
  `TEXT` varchar(45) DEFAULT NULL,
  `DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`COMMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMMENT`
--

LOCK TABLES `COMMENT` WRITE;
/*!40000 ALTER TABLE `COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUPE`
--

DROP TABLE IF EXISTS `GROUPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GROUPE` (
  `GROUPE_ID` int NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GROUPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUPE`
--

LOCK TABLES `GROUPE` WRITE;
/*!40000 ALTER TABLE `GROUPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE`
--

DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROLE` (
  `ROLE_ID` int NOT NULL AUTO_INCREMENT,
  `TASK_ID` int NOT NULL,
  `TYPE_ROLE` varchar(15) NOT NULL,
  `USER_ID` int NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TASK`
--

DROP TABLE IF EXISTS `TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TASK` (
  `TASK_ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int DEFAULT NULL,
  `TITLE` varchar(45) NOT NULL DEFAULT 'title',
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DATE_OF_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DEADLINE` date NOT NULL,
  `DATE_OF_COMPLETION` date DEFAULT NULL,
  `STATE` varchar(255) NOT NULL DEFAULT 'Waiting',
  `GROUPE_ID` int DEFAULT NULL,
  PRIMARY KEY (`TASK_ID`),
  KEY `FK_GROUPETASK` (`GROUPE_ID`),
  CONSTRAINT `FK_GROUPETASK` FOREIGN KEY (`GROUPE_ID`) REFERENCES `GROUPE` (`GROUPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TASK`
--

LOCK TABLES `TASK` WRITE;
/*!40000 ALTER TABLE `TASK` DISABLE KEYS */;
/*!40000 ALTER TABLE `TASK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_LIST`
--

DROP TABLE IF EXISTS `USER_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_LIST` (
  `USER_ID` int NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(45) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_LIST`
--

LOCK TABLES `USER_LIST` WRITE;
/*!40000 ALTER TABLE `USER_LIST` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_LIST` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 16:15:13
