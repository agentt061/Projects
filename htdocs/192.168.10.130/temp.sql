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
-- Table structure for table `TEMP`
--

DROP TABLE IF EXISTS `TEMP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEMP` (
  `ROLL_NO` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `MOBILE` bigint(10) NOT NULL,
  `ENCRYPT_FILE` varbinary(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEMP`
--

LOCK TABLES `TEMP` WRITE;
/*!40000 ALTER TABLE `TEMP` DISABLE KEYS */;
INSERT INTO `TEMP` VALUES (1,'INTHRAJITH',8344283430,'a�U� ḛ��	��N'),
(2,'VIJAY',9842680643,'G%���Q9��.����'),(3,'AJITH',8344283430,'hޜ��\0/بͤIa�I'),
(4,'SHAHUL',9751988718,'�V|^�\01�?�[��f'),(5,'khan',1234567891,'�p����\\���<Y�-l-'),
(6,'KEVIN',8344283430,'��} ���P���ۄ'),(7,'ROCK',8344283430,'{�{���⾍���x�'),
(8,'SMITH',8344283430,'V�Y���~�/|�\Z=�y�'),(9,'BEN',8344283430,'1w�LM���\0#'),
(10,'BRUCE',8344283430,'����TP�$��!V:��'),(11,'BEN',8344283430,'~O��)����M4Xm~'),
(12,'BRUCE',8344283430,'����TP�$��!V:��'),(13,'PETER',9842680643,'Ik΃�_Tl�qu�|:'),
(14,'JAMES',9842680643,'k\0�x��l|����'),(15,'TEST X',9751988718,'�2�+B�4ѳ��l��'),
(16,'TEST Y',9751988718,'�f�[��;�R���');
/*!40000 ALTER TABLE `TEMP` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER NEW_ENTRY_TEMP AFTER INSERT ON TEMP FOR EACH ROW INSERT INTO TEMP_NEW_ENTRY(NAME,MOBILE) VALUES (NEW.NAME,NEW.MOBILE) */;;
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

-- Dump completed on 2022-04-12 15:40:18
