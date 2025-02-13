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
-- Table structure for table `interviewrecord`
--

DROP TABLE IF EXISTS `interviewrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviewrecord` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增主鍵',
  `int_no` varchar(50) NOT NULL COMMENT '面試紀錄編號 (ex: 20250208001)',
  `position` varchar(100) DEFAULT NULL COMMENT '面試職位',
  `department_no` varchar(50) DEFAULT NULL COMMENT '面試單位編號',
  `interviewer_no` varchar(45) DEFAULT NULL COMMENT '面試官編號',
  `hr_no` varchar(50) DEFAULT NULL COMMENT '負責人員編號',
  `interviewee_name` varchar(45) DEFAULT NULL COMMENT '面試者姓名\n',
  `interviewee_phone` varchar(45) DEFAULT NULL COMMENT '面試者電話\n',
  `interviewee_gender` int DEFAULT NULL COMMENT '求職者性別，男生1，女生2',
  `interviewDate` datetime DEFAULT NULL COMMENT '面試日\\n',
  `status` varchar(50) DEFAULT NULL COMMENT '面試狀態：\n待聯繫、再聯絡、待面試、婉拒面試(結案)、無法聯繫(結案)、NoShow(結案)、待主管反饋、錄取(結案)、不錄取(結案)、轉介(結案)',
  `remarks` text COMMENT '備註',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增日期時間',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日期時間',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviewrecord`
--

LOCK TABLES `interviewrecord` WRITE;
/*!40000 ALTER TABLE `interviewrecord` DISABLE KEYS */;
INSERT INTO `interviewrecord` VALUES (1,'int001','軟體工程師','dep002','mem004','mem001','李玉','096065236',1,NULL,'待處理','2/9-請小明聯繫一下','2025-02-09 16:35:01','2025-02-10 23:53:31'),(2,'int002','人力資源','dep004','mem003','mem012','葉璇真','0945632236',2,'2025-01-11 09:00:00','錄取(結案)','1/11-當天面試完後主管表示已錄取','2025-02-09 16:38:55','2025-02-11 16:47:50'),(3,'int003','業務','dep007','mem006','mem011','施文山','0946326887',1,'2025-02-01 14:00:00','轉介(結案)','2/1-面試後雙方決議轉介面是其他單位','2025-02-09 16:41:58','2025-02-10 23:53:31'),(4,'int004','業務','dep011','mem005','mem011','劉啟新','0915632636',1,'2025-02-05 16:30:00','已面試','2/5-經由其他單位推介，已面試待主管通知結果。','2025-02-09 16:45:10','2025-02-10 23:53:31'),(5,'int005','助理','dep002','mem003','mem012','江華於','0978526321',1,'2025-01-05 15:00:00','不錄取(結案)','1/10-經面試後不適合單位。','2025-02-09 16:51:19','2025-02-10 23:53:31'),(6,'int006','助理','dep014','mem003','mem012','陳貞','0945689889',2,'2025-01-05 15:00:00','無法聯繫(結案)','2/9-電話打不通','2025-02-09 16:51:33','2025-02-12 09:24:44'),(7,'int007','軟體工程師','dep002','mem004','mem001','陳筱英','0945632256',2,'2025-02-26 15:00:00','待處理','2/11-求職者忙碌改天再聯繫。\n2/11-下午求職者來電說可以約面試已安排。','2025-02-09 17:42:48','2025-02-11 15:23:01'),(9,'int008','硬體工程師','dep001','mem004','mem012','師從楊','0956332333',1,'2025-02-15 10:30:00','已邀約','','2025-02-09 23:26:01','2025-02-10 23:53:31'),(10,'int009','實習生','dep007','mem010','mem011','陳天天','0966352663',1,'2025-02-18 15:00:00','已邀約','','2025-02-09 23:44:58','2025-02-11 16:47:50'),(12,'int010','實習生','dep001','mem003','mem012','李香媚','0946777999',2,NULL,'待處理','2/10-請可艾處理一下。','2025-02-10 15:13:53','2025-02-11 16:47:50'),(13,'int011','品牌設計','dep009','mem008','mem016','呂承風','0963159875',1,'2025-02-26 11:00:00','婉拒面試(結案)','','2025-02-10 15:38:32','2025-02-11 16:47:50'),(14,'int012','品牌設計','dep009','mem008','mem016','江風','0956226322',1,'2025-02-10 09:30:00','NoShow(結案)','求職者無故未到，無法聯繫。','2025-02-10 15:40:12','2025-02-10 23:53:31'),(15,'int013','行銷','dep013','mem015','mem013','劉明','0978546336',1,'2025-02-19 11:00:00','婉拒面試(結案)','求職者已找到工作。','2025-02-10 16:30:36','2025-02-11 16:47:50'),(16,'int014','實習生','dep012','mem005','mem012','陳峰','096066635',2,NULL,'已面試','待主管告知結果。\n2/11-請小明支援其他事情，後續勞艾可處理一下。','2025-02-10 16:49:31','2025-02-13 10:57:02'),(17,'int015','助理','dep007','mem007','mem016','陳子玲','0958663666',2,'2025-02-10 10:00:00','不錄取(結案)','主管說不建議任用。','2025-02-10 21:57:05','2025-02-11 16:47:50'),(18,'int016','行銷','dep013','mem015','mem013','李彥','0963556332',1,NULL,'待處理','','2025-02-10 22:44:50','2025-02-11 16:47:50'),(19,'int017','行銷','dep012','mem004','mem012','劉可親','0944522663',2,NULL,'待處理','請可艾對接一下','2025-02-11 00:03:46','2025-02-11 16:47:50'),(20,'int018','','dep001','mem002','mem011','臣子花','0956552663',2,NULL,'待處理','請秦勞打電話與求職者聯繫，訪談他適合哪一個人資管理的職缺，求職者對人資相關IT領域似乎博具經驗，他想往人資發展。','2025-02-11 13:17:37','2025-02-12 09:22:39'),(21,'int019','實習生','dep009','mem002','mem001','李妹妹','0212345678',2,NULL,'作廢(結案)','資料錯誤，作廢','2025-02-11 15:25:43','2025-02-12 09:21:46'),(22,'int020','實習生','dep001','mem004','mem001','MAY CHEN','0988558555',2,'2025-02-11 10:00:00','錄取(結案)','當日面試後主管直接表示錄取。','2025-02-11 15:29:42','2025-02-11 15:29:42'),(23,'int021','實習生','dep013','mem004','mem001','李淵','0956445666',2,NULL,'待處理','小明請協與助MIKE主管討論暑期實習生，另外再與同學聯繫，安排面試吧。','2025-02-12 15:20:39','2025-02-13 09:57:16'),(24,'int022','軟體工程師','dep010','mem006','mem012','陳豐子','0960665362',1,NULL,'待處理','這位求職者是推薦的，請可艾先跟主管討論一下，再聯繫求職者。','2025-02-13 09:58:56','2025-02-13 10:56:52'),(25,'int023','行銷','dep012','mem004','mem021','劉芳芳','0954663663',2,'2025-02-19 10:00:00','待處理','','2025-02-13 11:12:53','2025-02-13 11:12:53');
/*!40000 ALTER TABLE `interviewrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-13 14:38:14
