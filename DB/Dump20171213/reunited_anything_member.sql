-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: reunited_anything
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `Password` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `F_Name` varchar(45) NOT NULL,
  `L_Name` varchar(45) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Facebook` varchar(45) DEFAULT NULL,
  `Uploaded` int(11) NOT NULL,
  PRIMARY KEY (`Email`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Phone_UNIQUE` (`Phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('','','à¸à¸à¸','à¸à¸à¸à¸','02222222','fb.me/Kcomic',0),('1234','58070000@kmitl.ac.th','เก่ง','ธชย','123456789','fb.me/Kcomic',0),('1234','58070014@kmitl.ac.th','test','test','0514124658','fb.me/Kcomic',0),('1234','58070044@kmitl.ac.th','เก่ง','ธชย','1122222','fb.me/Kcomic',0),('as22102539','58070074@kmitl.ac.th','บวรศักดิ์','เพชรบรรเจิดกุล','0970862773','fb.me/Kcomic',1),('1234','58070079@kmitl.ac.th','เก่ง','ธชย','123456','fb.me/Kcomic',0),('namfoneiei','58070092@kmitl.ac.th','น้ำฝน','พลอยงาม','0863737923','fb.me/Kcomic',0);
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

-- Dump completed on 2017-12-13  4:20:10
