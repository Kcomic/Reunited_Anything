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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `idPost` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Pic_base64` longtext NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Place` varchar(45) NOT NULL,
  `Detail` longtext,
  `Status` varchar(10) NOT NULL,
  `Time` time(4) NOT NULL,
  PRIMARY KEY (`idPost`),
  KEY `Username_idx` (`Email`),
  CONSTRAINT `Email` FOREIGN KEY (`Email`) REFERENCES `member` (`Email`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'58070074@kmitl.ac.th','2017-11-14','น้ำฝน','asdasdasdasdasdasd','้ีhuman','คณะไอที','ฮือออ','lost','20:39:06.0000'),(2,'58070092@kmitl.ac.th','2017-11-15','เขา','asdasdasdasdasd','accessory','IT','','found','13:37:23.0000'),(3,'58070000@kmitl.ac.th','2017-11-15','Iphone','asdasdasdasdasd','phone','IT',NULL,'lost','14:38:07.0000'),(4,'58070000@kmitl.ac.th','2017-11-15','A','aasd','A','S',NULL,'lost','14:38:07.0000'),(5,'58070000@kmitl.ac.th','2017-11-15','B','a','A','S',NULL,'lost','14:38:07.0000'),(6,'58070000@kmitl.ac.th','2017-11-15','C','ssss','A','S',NULL,'lost','14:38:07.0000'),(7,'58070000@kmitl.ac.th','2017-11-15','D','dfdfdf','A','S',NULL,'lost','14:38:07.0000'),(8,'58070000@kmitl.ac.th','2017-11-15','E','xzczxc','A','S',NULL,'lost','14:38:41.0000'),(9,'58070000@kmitl.ac.th','2017-11-15','F','aaaqqq','A','S',NULL,'lost','14:38:07.0000'),(10,'58070000@kmitl.ac.th','2017-11-15','G','bfbfbfbf','A','S',NULL,'found','14:38:07.0000'),(11,'58070000@kmitl.ac.th','2017-11-15','H','zzzzzzzzzzzzzzzzz','A','S',NULL,'found','14:38:07.0000'),(12,'58070000@kmitl.ac.th','2017-11-15','I','xcxcxcxcxcxc','A','S',NULL,'found','14:38:07.0000'),(13,'58070000@kmitl.ac.th','2017-11-15','J','qqqqqqqqqqqqqq','A','S',NULL,'found','14:38:07.0000'),(14,'58070000@kmitl.ac.th','2017-11-15','K','fffffffffffffffffffff','A','S',NULL,'found','14:38:07.0000');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-15 14:55:02
