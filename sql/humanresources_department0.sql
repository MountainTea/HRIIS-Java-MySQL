CREATE DATABASE  IF NOT EXISTS `humanresources` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `humanresources`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: humanresources
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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dep_no` varchar(45) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dep_no_UNIQUE` (`dep_no`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'dep001','人力資源部','負責公司人力資源管理','2025-02-06 13:26:52','2025-02-07 07:38:33'),(2,'dep002','董事長室','特殊中央單位','2025-02-06 13:48:04','2025-02-09 10:30:08'),(4,'dep004','總務部','事務管理單位','2025-02-06 13:48:19','2025-02-09 10:30:08'),(5,'dep005','綠化推廣部','負責環境督導','2025-02-06 13:48:19','2025-02-09 10:30:08'),(7,'dep007','業務客服部','負責公司客服人員及外部業務銷售','2025-02-06 13:55:35','2025-02-07 07:38:33'),(8,'dep008','產品設計部','負責公司產品建構、上架及相關活動及設計工作','2025-02-06 13:56:29','2025-02-07 07:38:33'),(9,'dep009','品牌行銷部','負責公司雇主管理','2025-02-07 07:43:15','2025-02-09 10:30:08'),(10,'dep010','產品設計部','負責公司產品建構、上架及相關活動及設計工作，如有其他專案活動需支援。','2025-02-07 07:48:09','2025-02-11 12:05:39'),(11,'dep011','業務推廣部','負責公司產品對外銷售通路的處理。','2025-02-07 07:49:51','2025-02-09 10:30:08'),(12,'dep012','行銷一部','負責產品及市場推廣維護。','2025-02-07 08:06:42','2025-02-12 01:23:17'),(13,'dep013','行銷二部','負責活動。','2025-02-07 08:13:00','2025-02-12 01:23:32'),(14,'dep014','會計財務部','負責金融相關。','2025-02-07 08:14:32','2025-02-12 01:24:20'),(15,'dep015','採購部','負責公司採購','2025-02-08 06:30:37','2025-02-08 06:30:37');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-12 16:08:54
