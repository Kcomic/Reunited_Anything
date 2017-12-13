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
  `Date` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Pic_base64` longtext NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Place` varchar(45) NOT NULL,
  `Detail` longtext,
  `Status` varchar(10) NOT NULL,
  `Time` varchar(45) NOT NULL,
  `Validate` varchar(45) NOT NULL,
  PRIMARY KEY (`idPost`),
  KEY `Username_idx` (`Email`),
  CONSTRAINT `Email` FOREIGN KEY (`Email`) REFERENCES `member` (`Email`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'58070074@kmitl.ac.th','2017-11-14','น้ำฝน','1','human','คณะไอที','ฮือออ','lost','20:39','wating'),(2,'58070092@kmitl.ac.th','2017-11-15','เขา','2','accessory','IT','','found','13:37','wating'),(3,'58070000@kmitl.ac.th','2017-11-15','Iphone','3','phone','IT',' ','lost','14:38','finished'),(4,'58070000@kmitl.ac.th','2017-11-15','A','4','A','S',' ','lost','14:38','wating'),(5,'58070000@kmitl.ac.th','2017-11-15','B','5','A','S',' ','lost','14:38','finished'),(6,'58070000@kmitl.ac.th','2017-11-15','C','6','A','S',' ','lost','14:38','wating'),(7,'58070000@kmitl.ac.th','2017-11-15','D','7','A','S',' ','lost','14:38','finished'),(8,'58070000@kmitl.ac.th','2017-11-15','E','8','A','S',' ','lost','14:38','wating'),(9,'58070000@kmitl.ac.th','2017-11-15','F','9','A','S',' ','lost','14:38','wating'),(10,'58070000@kmitl.ac.th','2017-11-15','G','10','A','S',' ','found','14:38','wating'),(11,'58070000@kmitl.ac.th','2017-11-15','H','11','A','S',' ','found','14:38','wating'),(12,'58070000@kmitl.ac.th','2017-11-15','I','12','A','S',' ','found','14:38','wating'),(13,'58070000@kmitl.ac.th','2017-11-15','J','13','A','S',' ','found','14:38','wating'),(14,'58070000@kmitl.ac.th','2017-11-15','K','14','A','S',' ','found','14:38','wating'),(15,'58070074@kmitl.ac.th','2017-12-13','จากเคนะจ๊ะจุ๊บๆ','15','human','คณะไอที','ไม้่มี','lost','02:49','wating'),(16,'58070074@kmitl.ac.th','2017-12-13','จากเคเองนะจ๊ะvbvb','16','item','คณะไอที','ไม่มีอะ','found','02:55','wating'),(17,'58070074@kmitl.ac.th','2017-12-13','จากเคนะจ๊ะจุ๊บๆ2','17','animal','คณะไอที','ssss','found','02:56','wating'),(18,'58070074@kmitl.ac.th','2017-12-13','test','18','item','test','test','lost','03:51','wating'),(19,'58070074@kmitl.ac.th','2017-12-13','test2','19','all','test2','test2','lost','08:45','wating'),(20,'58070074@kmitl.ac.th','2017-12-13','test3','20','all','test3','test3','lost','09:02','wating');
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

-- Dump completed on 2017-12-13  9:06:47
