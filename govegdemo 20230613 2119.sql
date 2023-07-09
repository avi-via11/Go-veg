-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.11-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema govegdemo
--

CREATE DATABASE IF NOT EXISTS govegdemo;
USE govegdemo;

--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(45) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`cat_id`,`cat_name`) VALUES 
 (1,'FRUITS'),
 (2,'VEGETABLE'),
 (3,'PULSE'),
 (4,'CEREAL');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `cus_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cus_fname` varchar(45) NOT NULL,
  `cus_sname` varchar(45) NOT NULL,
  `cus_address` varchar(60) NOT NULL,
  `cus_phno` varchar(10) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`cus_id`,`cus_fname`,`cus_sname`,`cus_address`,`cus_phno`) VALUES 
 (1,'RAM','VARMA','XYZ','9562410000');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


--
-- Definition of table `farmers`
--

DROP TABLE IF EXISTS `farmers`;
CREATE TABLE `farmers` (
  `fam_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fam_fname` varchar(45) NOT NULL,
  `fam_sname` varchar(45) NOT NULL,
  `fam_address` varchar(60) NOT NULL,
  `fam_phno` varchar(10) NOT NULL,
  PRIMARY KEY (`fam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farmers`
--

/*!40000 ALTER TABLE `farmers` DISABLE KEYS */;
/*!40000 ALTER TABLE `farmers` ENABLE KEYS */;


--
-- Definition of table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES 
 (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;


--
-- Definition of table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `itemprice` float NOT NULL,
  `item_qty` float DEFAULT NULL,
  `reg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`id`,`item_name`,`itemprice`,`item_qty`,`reg_id`) VALUES 
 (1,'ONION,56.0',1120,20,5),
 (2,'wheat,15.0',300,20,5),
 (3,'ONION,56.0',11200,200,5);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;


--
-- Definition of table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` varchar(45) NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `item_price` double NOT NULL,
  `item_quantity` float NOT NULL,
  `item_date` date NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`item_id`,`cat_id`,`item_name`,`item_price`,`item_quantity`,`item_date`) VALUES 
 (2,'2','ONION',56,20,'2023-04-05'),
 (3,'4','wheat',15,50,'2023-03-03'),
 (4,'2','TOMATO',20.7,20,'2023-03-03'),
 (6,'1','ORANGE',54,26,'2023-04-05'),
 (7,'1','GRAPES',36,70,'2023-04-04');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(45) NOT NULL,
  `log_pass` varchar(45) NOT NULL,
  `log_role` varchar(45) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`log_id`,`log_name`,`log_pass`,`log_role`) VALUES 
 (1,'hrithik','1234','admin'),
 (2,'abhijith','111','farmer'),
 (3,'giri','100','customer'),
 (4,'avinash','avi','farmer'),
 (5,'bharat','123','customer'),
 (6,'johny','bravo','customer'),
 (7,'hrithik','gt','customer');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `pur_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) unsigned NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `item_price` double NOT NULL,
  `item_qty` float NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`pur_id`),
  KEY `FK_purchase_1` (`reg_id`),
  CONSTRAINT `FK_purchase_1` FOREIGN KEY (`reg_id`) REFERENCES `register` (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`pur_id`,`reg_id`,`item_name`,`item_price`,`item_qty`,`date`) VALUES 
 (1,5,'pumkin',100,10,'2023-05-24'),
 (2,5,'apple',100,40,'2023-05-24');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `reg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `second_name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`reg_id`,`first_name`,`second_name`,`pass`,`type`,`phno`,`address`) VALUES 
 (1,'arun','das','arun123','farmer','9562659826','xyz House'),
 (2,'abhijith','kumar','12345','farmer','1234567890','asd(H)'),
 (3,'abhijith','k','111','farmer','1111111111','ABC'),
 (4,'avinash','ullas','avi','farmer','1234567890','fdesadgfdsg '),
 (5,'bharat','k','123','customer','1234567890','ABC '),
 (6,'johny','bravo','bravo','customer','9946816463','jdfifiusahgfiusdhaf8ihiufdifhda'),
 (7,'hrithik','prem','gt','customer','7907056126','th');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
