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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mem_no` varchar(45) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` int DEFAULT NULL COMMENT '性別，男生1、女生2',
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'mem001','王小明',1,'test@example.com','0912345678','台北市','人資','a12345','2025-02-08 12:00:27','2025-02-12 13:12:22'),(2,'mem002','關黎赭',1,'it@sys.com','0956556552','高雄市','管理者','a12345','2025-02-08 12:01:44','2025-02-12 13:12:22'),(3,'mem003','陳橘',2,'manager@example.com','0928585522','台南市','人資主管','a12345','2025-02-08 12:03:56','2025-02-13 03:14:21'),(4,'mem004','MIKE',1,'mike@example.com','0956225663','高雄市鳳山','單位主管','a12345','2025-02-08 12:05:33','2025-02-11 07:48:06'),(5,'mem005','May Yeh',2,'may@example.com','0255695563','台北市','單位主管','a12345','2025-02-08 12:06:32','2025-02-08 15:42:31'),(6,'mem006','Rose Chen',2,'rose@example.com','038965532','桃園市','單位主管','a12345','2025-02-08 12:07:04','2025-02-08 15:42:31'),(7,'mem007','陳小苗',2,'ab123@gmail.com','0978632263','台北市','單位主管','a12345','2025-02-08 12:08:31','2025-02-09 10:30:14'),(8,'mem008','葉美',2,'beauty@gmail.com','0978445632','高雄市','單位主管','a12345','2025-02-08 12:09:50','2025-02-09 10:36:00'),(9,'mem009','家家',2,'fm@yahoo.com','0976532263','宜蘭縣','單位主管','a12345','2025-02-08 12:10:29','2025-02-10 13:51:26'),(10,'mem010','李香嵐',1,'bech@gmail.com','0978787787','高雄市','人資主管','a12345','2025-02-08 12:11:40','2025-02-09 10:30:14'),(11,'mem011','秦勞',1,'effort@example.com','0956288442','桃園市','人資','a12345','2025-02-08 12:14:05','2025-02-08 15:42:31'),(12,'mem012','可艾',2,'lovelive@example.com','0955252775','台南市','人資','a12345','2025-02-08 12:15:09','2025-02-08 15:42:31'),(13,'mem013','蔡晉力',1,'okokok@example.com','0946552235','高雄市','人資','a12345','2025-02-08 12:15:49','2025-02-08 15:42:31'),(14,'mem014','呂送',2,'tinasong@hotmail.com','0985225224','台中市','人資主管','a12345','2025-02-08 12:33:20','2025-02-09 10:30:14'),(15,'mem015','張啡',1,'tytt@example.com','0277589963','台北市','人資主管','a12345','2025-02-08 12:55:44','2025-02-08 15:42:31'),(16,'mem016','江綺',2,'54666@hotmail.com','0966635555','台南市','人資','a12345','2025-02-08 16:25:51','2025-02-09 10:30:14'),(19,'mem017','陳星龍',1,'student@yahoo.com.tw','0946336336','嘉義縣','單位主管','a12345','2025-02-10 13:47:42','2025-02-10 13:51:26'),(20,'mem018','黃美蒂',2,'marry@example.com','0986633663','宜蘭縣','單位主管','a12345','2025-02-10 13:50:50','2025-02-10 13:51:26'),(21,'mem019','陳星恬',1,'ttbb@hotmail.com','0960556464','台北市萬華區','單位主管','a12345','2025-02-10 13:53:04','2025-02-10 13:53:04'),(22,'mem020','陳曉風',2,'tefg@hotmail.com','0960665236','','單位主管','a12345','2025-02-11 05:27:52','2025-02-11 06:45:31'),(25,'mem021','李黃阿妹',2,'gffgfdf@example.com','0956333633','基隆市','人資','a12345','2025-02-11 06:57:38','2025-02-12 08:06:30'),(26,'mem022','呂學',2,'effort2@example.com','0956523663','','人資','a12345','2025-02-11 08:05:18','2025-02-11 08:05:18'),(27,'mem023','蔡文峰',1,'abc@abc.com','0956336336','桃園市龜山區永成路151號','單位主管','a12345','2025-02-13 03:15:47','2025-02-13 03:15:47');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-13 12:57:56
