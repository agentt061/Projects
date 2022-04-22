-- MySQL dump 10.13  Distrib 5.6.46, for Linux (x86_64)
--
-- Host: localhost    Database: INTHRAJITH
-- ------------------------------------------------------
-- Server version	5.6.46

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
-- Table structure for table `EMP_INFORMATION`
--

DROP TABLE IF EXISTS `EMP_INFORMATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMP_INFORMATION` (
  `EMP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `MOBILE_NO` bigint(20) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `EMP_NAME` (`NAME`),
  KEY `EMP_MOBILE_NO` (`MOBILE_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMP_INFORMATION`
--

LOCK TABLES `EMP_INFORMATION` WRITE;
/*!40000 ALTER TABLE `EMP_INFORMATION` DISABLE KEYS */;
INSERT INTO `EMP_INFORMATION` VALUES (1,'INTHRAJITH',21,'MALE',8344283430,'PONDICHERRY'),(2,'VIJAY',21,'MALE',8344283430,'PONDICHERRY'),(3,'AJITH',21,'MALE',9751988718,'PONDICHERRY'),(4,'WILLSMITH',40,'MALE',9842680643,'PONDICHERRY'),(5,'JOHNYDEPP',40,'MALE',9655578731,'PONDICHERRY'),(6,'SHAHUL',27,'MALE',8344283430,'MALDIVES'),(7,'JITH',21,'MALE',9655578731,'CHENNAI'),(8,'DP',20,'FEMALE',83442833430,'CHENNAI'),(9,'INTHRAJITHVJ',21,'MALE',8344283430,'CHENNAI'),(10,'IMRAN',22,'MALE',9800298002,'CUDDALORE'),(11,'VJJITH',21,'MALE',834283430,'PONDY'),(12,'BRUCE',22,'MALE',8344283430,'USA'),(13,'TEST X',10,'MALE',12345678,'PONDY'),(14,'TEST Y',21,'YYYY',9600086000,'YYY'),(15,'TEST Z',21,'ZZZ',8344283430,'ZZZ'),(16,'TEST T',21,'TTT',9842680643,'TTTT');
/*!40000 ALTER TABLE `EMP_INFORMATION` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER NEW_EMP AFTER INSERT ON EMP_INFORMATION FOR EACH ROW INSERT INTO NEW_EMP_DETAILS(EMP_ID,EMP_NAME,MOBILE_NO) VALUES (NEW.EMP_ID,NEW.NAME,NEW.MOBILE_NO) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger delofempinfo before delete on EMP_INFORMATION for each row insert into  del_emp_info(emp_id,emp_name,age,mobileno,city)values(OLD.EMP_ID,OLD.NAME,OLD.AGE,OLD.MOBILE_NO,OLD.CITY) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-12 15:34:28
