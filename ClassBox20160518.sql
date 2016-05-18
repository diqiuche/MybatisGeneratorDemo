-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: classbox0508
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `academy`
--

DROP TABLE IF EXISTS `academy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academy` (
  `AcadId` int(11) NOT NULL,
  `AcadName` varchar(45) NOT NULL,
  PRIMARY KEY (`AcadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academy`
--

LOCK TABLES `academy` WRITE;
/*!40000 ALTER TABLE `academy` DISABLE KEYS */;
INSERT INTO `academy` VALUES (1,'自动化学院'),(2,'计算机学院');
/*!40000 ALTER TABLE `academy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `CmtNo` char(10) NOT NULL,
  `TsNo` char(10) DEFAULT NULL,
  `UsrNo` char(10) DEFAULT NULL,
  `CmtText` varchar(100) NOT NULL,
  PRIMARY KEY (`CmtNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `CrsNo` char(10) NOT NULL,
  `CrsName` char(45) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`CrsNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('20160514','test0514',NULL),('20160516','Window',NULL),('C000001','Math1','2016-05-15 00:00:00'),('C000002','Math2','2016-05-14 00:00:00'),('C000003','Math3','2016-05-14 00:00:00'),('C000004','Math4','2016-05-15 00:00:00'),('C1000001','Liner Algebra 1','2016-05-15 19:30:18'),('C1000002','Liner Algebra 2','2016-05-15 19:33:11'),('C1000003','Liner Algebra 3','2016-05-15 19:33:21'),('C1000019','Linux',NULL),('C1000020','Linux2',NULL),('C1000031','LYM001',NULL),('C100021','Linux21',NULL),('C100022','Linu22',NULL),('C100024','Linux24',NULL),('C100025','Linux25',NULL),('C100026','Linux26',NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluate_standard`
--

DROP TABLE IF EXISTS `evaluate_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluate_standard` (
  `EsNo` char(10) NOT NULL,
  `CrsNo` char(10) DEFAULT NULL,
  `UsrNo` char(10) DEFAULT NULL,
  `EsName` char(45) DEFAULT NULL,
  PRIMARY KEY (`EsNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluate_standard`
--

LOCK TABLES `evaluate_standard` WRITE;
/*!40000 ALTER TABLE `evaluate_standard` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluate_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluate_standard_item`
--

DROP TABLE IF EXISTS `evaluate_standard_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluate_standard_item` (
  `EsiNo` char(10) NOT NULL,
  `EsNo` char(10) DEFAULT NULL,
  `EsiName` char(45) NOT NULL,
  PRIMARY KEY (`EsiNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluate_standard_item`
--

LOCK TABLES `evaluate_standard_item` WRITE;
/*!40000 ALTER TABLE `evaluate_standard_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluate_standard_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_cs_usr`
--

DROP TABLE IF EXISTS `rel_cs_usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_cs_usr` (
  `UsrNo` char(10) NOT NULL,
  `CrsNo` char(10) NOT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `CrsRole` char(1) NOT NULL DEFAULT 'S',
  `Status` char(2) NOT NULL DEFAULT 'AP',
  PRIMARY KEY (`UsrNo`,`CrsNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_cs_usr`
--

LOCK TABLES `rel_cs_usr` WRITE;
/*!40000 ALTER TABLE `rel_cs_usr` DISABLE KEYS */;
INSERT INTO `rel_cs_usr` VALUES ('00154652','C100024','2016-05-17 12:42:53','T','TE'),('00154652','C100025','2016-05-17 12:51:51','T','TE'),('00154878','20160514','2016-05-16 22:03:41','T','TE'),('00154878','20160516','2016-05-16 21:59:26','T','TE'),('00154878','C1000001','2016-05-15 19:30:18','T','TE'),('00154878','C1000002','2016-05-15 19:33:11','T','TE'),('00154878','C1000003','2016-05-15 19:33:21','T','TE'),('00154878','C1000019','2016-05-17 12:39:49','T','TE'),('00154878','C1000020','2016-05-17 12:40:23','T','TE'),('00154878','C1000031','2016-05-18 12:57:29','T','TE'),('00154878','C100021','2016-05-17 12:40:43','T','TE'),('00154878','C100022','2016-05-17 12:41:50','T','TE'),('00154878','C100026','2016-05-17 12:53:29','T','TE'),('14061430','C1000001','2016-05-17 21:38:39','S','AG'),('14061430','C1000002','2016-05-17 21:38:39','S','AG'),('14061430','C1000003','2016-05-18 12:55:36','S','AG'),('14061431','C1000003','2016-05-17 22:52:56','S','AG'),('14061432','C1000003','2016-05-15 20:16:58','S','AG'),('14061433','C1000003','2016-05-17 21:38:39','S','RE');
/*!40000 ALTER TABLE `rel_cs_usr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_tm_usr`
--

DROP TABLE IF EXISTS `rel_tm_usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_tm_usr` (
  `UsrNo` char(10) NOT NULL,
  `TmNo` char(10) NOT NULL,
  `TmRole` char(1) DEFAULT 'L',
  `Status` char(2) DEFAULT 'AP',
  PRIMARY KEY (`UsrNo`,`TmNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_tm_usr`
--

LOCK TABLES `rel_tm_usr` WRITE;
/*!40000 ALTER TABLE `rel_tm_usr` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_tm_usr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `StuNo` char(10) NOT NULL,
  `StuName` varchar(45) DEFAULT NULL,
  `AcadId` int(11) DEFAULT NULL,
  `WeChatNo` varchar(45) DEFAULT '',
  PRIMARY KEY (`StuNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('14061430','Student-Xing',4,'wechat14061430'),('14061431','Student-Shun',2,'wechat14061431'),('14061432','Student-Kai',1,'wechat14061432'),('14061433','Student-Liu',2,'wechat14061433');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `TeaNo` char(10) NOT NULL,
  `TeaName` varchar(45) DEFAULT NULL,
  `WeChatNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TeaNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('00000001','Teacher-Xing','wechat00000001'),('00154878','Teacher-Shun','wechat00154878');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `TmNo` char(10) NOT NULL,
  `CrsNo` char(10) DEFAULT NULL,
  `TmName` char(45) NOT NULL,
  `TmPointAll` float DEFAULT NULL,
  PRIMARY KEY (`TmNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_show`
--

DROP TABLE IF EXISTS `team_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_show` (
  `TsNo` char(10) NOT NULL,
  `TsgNo` char(10) DEFAULT NULL,
  `TmNo` char(10) DEFAULT NULL,
  `TsTitle` char(45) DEFAULT NULL,
  `TsPoint` float DEFAULT NULL,
  PRIMARY KEY (`TsNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_show`
--

LOCK TABLES `team_show` WRITE;
/*!40000 ALTER TABLE `team_show` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_show_group`
--

DROP TABLE IF EXISTS `team_show_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_show_group` (
  `TsgNo` char(10) NOT NULL,
  `CrsNo` char(10) DEFAULT NULL,
  `EsNo` char(10) DEFAULT NULL,
  `TsgName` char(45) NOT NULL,
  `State` char(1) NOT NULL,
  `TsgCreateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`TsgNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_show_group`
--

LOCK TABLES `team_show_group` WRITE;
/*!40000 ALTER TABLE `team_show_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_show_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbup`
--

DROP TABLE IF EXISTS `thumbup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbup` (
  `EsiNo` char(10) NOT NULL,
  `TsNo` char(10) NOT NULL,
  `UsrNo` char(10) NOT NULL,
  `CreateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`EsiNo`,`TsNo`,`UsrNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbup`
--

LOCK TABLES `thumbup` WRITE;
/*!40000 ALTER TABLE `thumbup` DISABLE KEYS */;
/*!40000 ALTER TABLE `thumbup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_stu_point`
--

DROP TABLE IF EXISTS `ts_stu_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_stu_point` (
  `TsNo` char(10) NOT NULL,
  `UsrNo` char(10) NOT NULL,
  `StuPoint` float DEFAULT NULL,
  PRIMARY KEY (`TsNo`,`UsrNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_stu_point`
--

LOCK TABLES `ts_stu_point` WRITE;
/*!40000 ALTER TABLE `ts_stu_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `ts_stu_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UsrNo` char(10) NOT NULL,
  `UsrPwd` char(45) NOT NULL,
  `UsrType` char(1) NOT NULL,
  PRIMARY KEY (`UsrNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('00000001','pwd123','T'),('00154878','pwd123','T'),('14061430','pwd123','S'),('14061431','pwd123','S'),('14061432','pwd123','S'),('14061433','pwd123','S');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-18 13:39:14
