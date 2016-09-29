-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: center
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

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
-- Table structure for table `aqiforecast`
--

DROP TABLE IF EXISTS `aqiforecast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aqiforecast` (
  `province` varchar(200) NOT NULL DEFAULT '',
  `city` varchar(200) NOT NULL DEFAULT '',
  `station` varchar(200) NOT NULL DEFAULT '',
  `aqi` varchar(200) NOT NULL DEFAULT '',
  `pollutant` varchar(200) NOT NULL DEFAULT '',
  `level` varchar(200) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `today` date NOT NULL,
  `effectiveness` varchar(100) NOT NULL DEFAULT '全天',
  `timestamp` datetime NOT NULL,
  `publishTime` datetime DEFAULT NULL,
  `executeTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`province`,`city`,`station`,`today`,`effectiveness`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily`
--

DROP TABLE IF EXISTS `daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sedu` varchar(64) DEFAULT NULL,
  `ntu` varchar(64) DEFAULT NULL,
  `chouhewei` varchar(256) DEFAULT NULL,
  `junluo` varchar(64) DEFAULT NULL,
  `zongdachang` varchar(64) DEFAULT NULL,
  `yiluan` varchar(64) DEFAULT NULL,
  `haoyang` varchar(64) DEFAULT NULL,
  `kejianwu` varchar(64) DEFAULT NULL,
  `nairedachang` varchar(64) DEFAULT NULL,
  `shuiliang` varchar(64) DEFAULT NULL,
  `today` varchar(12) NOT NULL,
  `timestamp` datetime NOT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `factory` varchar(50) DEFAULT NULL,
  `luhuawu` varchar(64) DEFAULT NULL,
  `ph` varchar(64) DEFAULT NULL,
  `zonglu` varchar(64) DEFAULT NULL,
  `url_md5` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`,`today`)
) ENGINE=InnoDB AUTO_INCREMENT=7150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ground_water`
--

DROP TABLE IF EXISTS `ground_water`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ground_water` (
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `year` int(10) NOT NULL,
  `month` varchar(10) NOT NULL,
  `week` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `riverFamily` varchar(200) NOT NULL,
  `boundary` varchar(200) DEFAULT NULL,
  `result` varchar(200) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `PH` varchar(255) DEFAULT NULL,
  `DO` varchar(255) DEFAULT NULL,
  `CODMn` varchar(255) DEFAULT NULL,
  `NH3N` varchar(255) DEFAULT NULL,
  `TP` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `executeTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`province`,`year`,`week`,`name`,`city`,`month`,`riverFamily`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gws`
--

DROP TABLE IF EXISTS `gws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sedu` varchar(64) DEFAULT NULL,
  `ntu` varchar(64) DEFAULT NULL,
  `chouhewei` varchar(256) DEFAULT NULL,
  `junluo` varchar(64) DEFAULT NULL,
  `zongdachang` varchar(64) DEFAULT NULL,
  `yiluan` varchar(64) DEFAULT NULL,
  `haoyang` varchar(64) DEFAULT NULL,
  `start` varchar(12) NOT NULL,
  `end` varchar(12) NOT NULL,
  `timestamp` datetime NOT NULL,
  `factory` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `kejianwu` varchar(64) DEFAULT NULL,
  `ph` varchar(64) DEFAULT NULL,
  `zonglu` varchar(64) DEFAULT NULL,
  `luhuawu` varchar(64) DEFAULT NULL,
  `url_md5` varchar(256) DEFAULT NULL,
  `nairedachang` varchar(64) DEFAULT NULL,
  `shuiliang` varchar(64) DEFAULT NULL,
  `check_org` varchar(256) NOT NULL DEFAULT '',
  `check_date` varchar(256) NOT NULL DEFAULT '',
  `disinfect_type` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`start`,`end`)
) ENGINE=InnoDB AUTO_INCREMENT=10179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `month`
--

DROP TABLE IF EXISTS `month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `xianzhi` varchar(100) NOT NULL DEFAULT '',
  `ave` varchar(100) NOT NULL DEFAULT '',
  `start` varchar(12) NOT NULL,
  `timestamp` datetime NOT NULL,
  `factory` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `url_md5` varchar(256) DEFAULT NULL,
  `end` varchar(12) NOT NULL,
  `stype` varchar(8) NOT NULL DEFAULT 'cc',
  PRIMARY KEY (`id`,`name`,`start`)
) ENGINE=InnoDB AUTO_INCREMENT=91996 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `river_data`
--

DROP TABLE IF EXISTS `river_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `river_data` (
  `id` int(2) NOT NULL,
  `city` varchar(100) NOT NULL DEFAULT '',
  `authority` varchar(100) NOT NULL DEFAULT '',
  `jiance` varchar(200) NOT NULL DEFAULT '',
  `ave` varchar(20) NOT NULL DEFAULT '',
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`,`city`,`authority`,`jiance`,`year`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `river_station`
--

DROP TABLE IF EXISTS `river_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `river_station` (
  `id` int(2) NOT NULL,
  `city` varchar(100) NOT NULL DEFAULT '',
  `authority` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL DEFAULT '',
  `timestamp` datetime NOT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `lon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`city`,`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shzlsdaily`
--

DROP TABLE IF EXISTS `shzlsdaily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shzlsdaily` (
  `id` int(2) NOT NULL,
  `ntu` decimal(6,2) NOT NULL,
  `yiluan` decimal(6,2) NOT NULL,
  `junluo` decimal(6,2) NOT NULL,
  `junqun` decimal(6,2) NOT NULL,
  `shuiliang` decimal(6,2) NOT NULL,
  `today` date NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stainfo`
--

DROP TABLE IF EXISTS `stainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stainfo` (
  `sta_id` int(11) NOT NULL,
  `sta_time` datetime NOT NULL,
  `sta_ph_v` decimal(6,2) NOT NULL,
  `sta_ph_l` varchar(6) NOT NULL,
  `sta_do_v` decimal(6,2) NOT NULL,
  `sta_do_l` varchar(6) NOT NULL,
  `sta_an_v` decimal(6,2) NOT NULL,
  `sta_an_l` varchar(6) NOT NULL,
  `sta_toc_v` decimal(6,2) NOT NULL,
  `sta_toc_l` varchar(6) NOT NULL,
  `sta_pp_v` decimal(6,2) NOT NULL,
  `sta_pp_l` varchar(6) NOT NULL,
  PRIMARY KEY (`sta_id`,`sta_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weather_daily`
--

DROP TABLE IF EXISTS `weather_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `py` varchar(64) NOT NULL,
  `city` varchar(128) NOT NULL,
  `today` varchar(32) NOT NULL,
  `max_tp` decimal(6,2) NOT NULL,
  `min_tp` decimal(6,2) NOT NULL,
  `weather` varchar(128) NOT NULL,
  `wind_dt` varchar(128) NOT NULL,
  `wind_pw` varchar(128) NOT NULL,
  `timestamp` varchar(64) DEFAULT NULL,
  `url_md5` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`,`today`,`city`),
  UNIQUE KEY `py` (`py`,`city`,`today`),
  KEY `city` (`city`),
  KEY `today` (`today`)
) ENGINE=InnoDB AUTO_INCREMENT=4689115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `xianzhi` varchar(100) NOT NULL,
  `ave` varchar(100) NOT NULL,
  `start` varchar(12) NOT NULL,
  `end` varchar(12) NOT NULL,
  `timestamp` datetime NOT NULL,
  `factory` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `url_md5` varchar(256) DEFAULT NULL,
  `stype` varchar(8) NOT NULL DEFAULT 'cc',
  PRIMARY KEY (`id`,`name`,`start`,`end`)
) ENGINE=InnoDB AUTO_INCREMENT=33018 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-29 16:04:54
