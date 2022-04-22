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
-- Table structure for table `EMP_ATTENDANCE`
--

DROP TABLE IF EXISTS `EMP_ATTENDANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMP_ATTENDANCE` (
  `EMP_ID` int(11) NOT NULL,
  `LOGGED_DATE` date DEFAULT NULL,
  KEY `EMP_ID` (`EMP_ID`),
  CONSTRAINT `EMP_ATTENDANCE_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMP_INFORMATION` (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMP_ATTENDANCE`
--

LOCK TABLES `EMP_ATTENDANCE` WRITE;
/*!40000 ALTER TABLE `EMP_ATTENDANCE` DISABLE KEYS */;
INSERT INTO `EMP_ATTENDANCE` VALUES (1,'2022-04-01'),(2,'2022-04-02'),(3,'2022-04-03'),(4,'2022-04-04'),(5,'2022-04-05'),(6,'2022-04-06'),(7,'2022-04-07'),(8,'2022-04-08'),(9,'2022-04-09'),(10,'2022-04-10'),(11,'2022-04-11'),(12,'2022-04-12'),(13,'2022-04-13'),(14,'2022-04-14'),(15,'2022-04-15'),(16,'2022-04-16');
/*!40000 ALTER TABLE `EMP_ATTENDANCE` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Temporary table structure for view `EMP_NAMES`
--

DROP TABLE IF EXISTS `EMP_NAMES`;
/*!50001 DROP VIEW IF EXISTS `EMP_NAMES`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `EMP_NAMES` AS SELECT 
 1 AS `NAME`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `NEW_EMP_DETAILS`
--

DROP TABLE IF EXISTS `NEW_EMP_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NEW_EMP_DETAILS` (
  `EMP_ID` int(11) NOT NULL,
  `EMP_NAME` varchar(20) NOT NULL,
  `MOBILE_NO` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NEW_EMP_DETAILS`
--

LOCK TABLES `NEW_EMP_DETAILS` WRITE;
/*!40000 ALTER TABLE `NEW_EMP_DETAILS` DISABLE KEYS */;
INSERT INTO `NEW_EMP_DETAILS` VALUES (11,'RAZAK',9600096000),(12,'BRUCE',8344283430),(13,'VJJITH',834283430),(14,'BRUCE',8344283430),(15,'TEST X',12345678),(16,'TEST Y',9600086000),(15,'TEST Z',8344283430),(16,'TEST T',9842680643);
/*!40000 ALTER TABLE `NEW_EMP_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `TEMP` VALUES (1,'INTHRAJITH',8344283430,'aÃUã eÃ∞≈Ì	ÆÌN'),(2,'VIJAY',9842680643,'G%˚≠πQ9îß.ññ∫Å'),(3,'AJITH',8344283430,'hﬁúÆ‰\0/ÿ®Õ§IaπI'),(4,'SHAHUL',9751988718,'ÌV|^ÍÜ\01ˇ?¡[¸Õf'),(5,'khan',1234567891,'Ñp¸ã‡ô\\±Ò∆<Y†-l-'),(6,'KEVIN',8344283430,'ú¸} Ì¨ûPπÓ∏€Ñ'),(7,'ROCK',8344283430,'{à{„Å˜å‚æç≥˙»x¨'),(8,'SMITH',8344283430,'V°YÄ‚~…/|µ\Z=Òy¨'),(9,'BEN',8344283430,'1wﬁLMÑÁ¥≈\0#'),(10,'BRUCE',8344283430,'êıΩµTPΩ$∑º!V:Î¸'),(11,'BEN',8344283430,'~O«Â)πÑ•›M4Xm~'),(12,'BRUCE',8344283430,'êıΩµTPΩ$∑º!V:Î¸'),(13,'PETER',9842680643,'IkŒÉ¥_TlÅqu≥|:'),(14,'JAMES',9842680643,'k\0˘xÜ®l|µºÙí'),(15,'TEST X',9751988718,'ÚØ2‚+BÒ4—≥™„lâı'),(16,'TEST Y',9751988718,'ôf˝[è¶;ôR·©‰ç');
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

--
-- Table structure for table `TEMP_NEW_ENTRY`
--

DROP TABLE IF EXISTS `TEMP_NEW_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEMP_NEW_ENTRY` (
  `NAME` varchar(20) NOT NULL,
  `MOBILE` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEMP_NEW_ENTRY`
--

LOCK TABLES `TEMP_NEW_ENTRY` WRITE;
/*!40000 ALTER TABLE `TEMP_NEW_ENTRY` DISABLE KEYS */;
INSERT INTO `TEMP_NEW_ENTRY` VALUES ('SHAHUL',9751988718),('khan',1234567891),('KEVIN',8344283430),('ROCK',8344283430),('SMITH',8344283430),('BEN',8344283430),('BRUCE',8344283430),('BEN',8344283430),('BRUCE',8344283430),('√ß√Ω√ªV+%]tq3√ù√ï√Æ1',9751988718),('PETER',9842680643),('JAMES',9842680643),('THOR',9842680643),('TEST X',9751988718),('TEST Y',9751988718);
/*!40000 ALTER TABLE `TEMP_NEW_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `del_emp_info`
--

DROP TABLE IF EXISTS `del_emp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `del_emp_info` (
  `emp_id` int(11) DEFAULT NULL,
  `emp_name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `mobileno` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `del_emp_info`
--

LOCK TABLES `del_emp_info` WRITE;
/*!40000 ALTER TABLE `del_emp_info` DISABLE KEYS */;
INSERT INTO `del_emp_info` VALUES (12,'BRUCE',22,NULL,'USA',8344283430);
/*!40000 ALTER TABLE `del_emp_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `info_demp`
--

DROP TABLE IF EXISTS `info_demp`;
/*!50001 DROP VIEW IF EXISTS `info_demp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `info_demp` AS SELECT 
 1 AS `EMP_ID`,
 1 AS `NAME`,
 1 AS `AGE`,
 1 AS `GENDER`,
 1 AS `MOBILE_NO`,
 1 AS `CITY`,
 1 AS `ENCRYPT_FILE`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `info_table`
--

DROP TABLE IF EXISTS `info_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_table` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Message` varchar(80) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_table`
--

LOCK TABLES `info_table` WRITE;
/*!40000 ALTER TABLE `info_table` DISABLE KEYS */;
INSERT INTO `info_table` VALUES (1,'Peter','Hi'),(2,'Joseph','Hello'),(3,'Mark','Welcome'),(4,'Suzi','Hi'),(5,'Stephen','How R U'),(6,'George','Welcome'),(7,'George','Welcome');
/*!40000 ALTER TABLE `info_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `total_tables`
--

DROP TABLE IF EXISTS `total_tables`;
/*!50001 DROP VIEW IF EXISTS `total_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `total_tables` AS SELECT 
 1 AS `EMP_ID`,
 1 AS `NAME`,
 1 AS `AGE`,
 1 AS `GENDER`,
 1 AS `MOBILE_NO`,
 1 AS `CITY`,
 1 AS `LOGGED_DATE`,
 1 AS `ENCRYPT_FILE`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `EMP_NAMES`
--

/*!50001 DROP VIEW IF EXISTS `EMP_NAMES`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `EMP_NAMES` AS select `EMP_INFORMATION`.`NAME` AS `NAME` from `EMP_INFORMATION` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info_demp`
--

/*!50001 DROP VIEW IF EXISTS `info_demp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `info_demp` AS select `a`.`EMP_ID` AS `EMP_ID`,`a`.`NAME` AS `NAME`,`a`.`AGE` AS `AGE`,`a`.`GENDER` AS `GENDER`,`a`.`MOBILE_NO` AS `MOBILE_NO`,`a`.`CITY` AS `CITY`,`b`.`ENCRYPT_FILE` AS `ENCRYPT_FILE` from (`EMP_INFORMATION` `a` left join `TEMP` `b` on((`a`.`EMP_ID` = `b`.`ROLL_NO`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_tables`
--

/*!50001 DROP VIEW IF EXISTS `total_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_tables` AS select `A`.`EMP_ID` AS `EMP_ID`,`A`.`NAME` AS `NAME`,`A`.`AGE` AS `AGE`,`A`.`GENDER` AS `GENDER`,`A`.`MOBILE_NO` AS `MOBILE_NO`,`A`.`CITY` AS `CITY`,`B`.`LOGGED_DATE` AS `LOGGED_DATE`,`C`.`ENCRYPT_FILE` AS `ENCRYPT_FILE` from ((`EMP_INFORMATION` `A` left join `EMP_ATTENDANCE` `B` on((`A`.`EMP_ID` = `B`.`EMP_ID`))) left join `TEMP` `C` on((`A`.`EMP_ID` = `C`.`ROLL_NO`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-12 15:23:46
