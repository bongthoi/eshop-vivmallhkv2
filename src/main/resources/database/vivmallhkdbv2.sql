-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 103.77.169.245    Database: vivmallhkdbv2
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `_sequence`
--

DROP TABLE IF EXISTS `_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sequence` (
  `seq_name` varchar(50) NOT NULL,
  `seq_group` varchar(10) NOT NULL,
  `seq_val` int(10) NOT NULL,
  PRIMARY KEY (`seq_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_sequence`
--

LOCK TABLES `_sequence` WRITE;
/*!40000 ALTER TABLE `_sequence` DISABLE KEYS */;
INSERT INTO `_sequence` VALUES ('OD-ID','OD',53),('PN_ID','PN',1);
/*!40000 ALTER TABLE `_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_sequence_barcode`
--

DROP TABLE IF EXISTS `_sequence_barcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sequence_barcode` (
  `id` int(11) NOT NULL,
  `contry_code` varchar(3) DEFAULT NULL COMMENT '- Nhóm 1: Từ trái sang phải, hai hoặc ba chữ số đầu là mã số về quốc gia (vùng lãnh thổ)',
  `company_code` varchar(6) DEFAULT NULL COMMENT '- Nhóm 2: Tiếp theo gồm bốn, năm hoặc sáu chữ số là mã số về doanh nghiệp.',
  `product_code_count` int(5) DEFAULT NULL COMMENT '- Nhóm 3: Tiếp theo gồm năm, bốn hoặc ba chữ số là mã số về hàng hóa.\n\n-tạo tự động +1 vi du 1,2,3,4,5',
  `product_length` int(2) DEFAULT NULL COMMENT 'độ dài mã +1 prodcut vd 00001 ,00002',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_sequence_barcode`
--

LOCK TABLES `_sequence_barcode` WRITE;
/*!40000 ALTER TABLE `_sequence_barcode` DISABLE KEYS */;
INSERT INTO `_sequence_barcode` VALUES (1,'489','0002',70,5);
/*!40000 ALTER TABLE `_sequence_barcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_about`
--

DROP TABLE IF EXISTS `tb_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_about` (
  `id` varchar(10) NOT NULL,
  `title` varchar(245) DEFAULT NULL,
  `description` text,
  `logo` varchar(45) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_about`
--

LOCK TABLES `tb_about` WRITE;
/*!40000 ALTER TABLE `tb_about` DISABLE KEYS */;
INSERT INTO `tb_about` VALUES ('about-001','GLORIOUS (HONGKONG) COMPANY LIMITED','Glourious Hong kong 2017 2018','dfg','u11','2017-01-01 00:00:00','<p>Updating...</p>');
/*!40000 ALTER TABLE `tb_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_bigunit`
--

DROP TABLE IF EXISTS `tb_bigunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_bigunit` (
  `id` int(3) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bigunit`
--

LOCK TABLES `tb_bigunit` WRITE;
/*!40000 ALTER TABLE `tb_bigunit` DISABLE KEYS */;
INSERT INTO `tb_bigunit` VALUES (1,'barrels',' don vi thung nuoc'),(2,'Block','don vi block'),(3,'pack','thung bia'),(99,'None','None of big Unit');
/*!40000 ALTER TABLE `tb_bigunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_businesstype`
--

DROP TABLE IF EXISTS `tb_businesstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_businesstype` (
  `id` int(3) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_businesstype`
--

LOCK TABLES `tb_businesstype` WRITE;
/*!40000 ALTER TABLE `tb_businesstype` DISABLE KEYS */;
INSERT INTO `tb_businesstype` VALUES (1,'self-business','aaaa'),(2,'Agent','aaaa');
/*!40000 ALTER TABLE `tb_businesstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(145) DEFAULT NULL,
  `CategoryDes` varchar(245) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `CreateUser` varchar(45) DEFAULT NULL,
  `UpdateUser` varchar(45) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `CategoryImg` varchar(245) DEFAULT NULL,
  `IndustryId` int(11) DEFAULT NULL,
  `CategoryOrder` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_category`
--

LOCK TABLES `tb_category` WRITE;
/*!40000 ALTER TABLE `tb_category` DISABLE KEYS */;
INSERT INTO `tb_category` VALUES (5,'Camera','Camera','2017-06-26 11:12:06','2017-10-26 10:49:14','u1@gmail.com','admin@gmail.com',1,'2017-10-26_CAMERA_AD1.jpg',1,1),(67,'Pet accessories','Pet accessories','2017-10-25 09:24:29','2018-04-03 10:16:27','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-10-31_PKTC_BANNER.png',25,254),(68,'Pet fashion','Pet fashion','2017-10-25 14:35:27','2018-04-03 10:21:06','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-10-31_TTTC-BANNER.png',25,251),(69,'Pet supplies','Pet supplies','2017-10-25 15:01:10','2018-04-03 10:16:20','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-10-31_VDTC_BANNER.png',25,252),(70,'Positioning devices','GPS','2017-10-25 15:02:14','2018-04-03 09:21:44','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-10-31_TC_02.png',25,253),(71,'Spinner','Spinner','2017-10-25 15:58:23','2018-04-03 10:16:34','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-10-26_SPINNER_02.jpg',26,261),(72,'Phone Accessories','Phone Accessories','2017-10-26 09:19:18','2018-04-03 10:16:43','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-11-02_phukiendienthoai.png',32,321),(73,'Headphones for children','Headphones for children','2017-10-26 09:21:13','2018-04-03 10:16:00','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-10-31_TN_BANNER.png',1,4),(74,'Adult headphones','Adult headphones','2017-10-26 09:22:38','2018-04-03 10:16:09','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-10-26_banner-product1.jpg',1,5),(75,'Other equipment','LCD','2017-10-26 10:47:14','2018-04-03 09:19:21','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-10-31_TBK_BANNER.png',1,2),(76,'Smart device','Smart device','2017-10-26 14:09:12','2018-04-03 10:15:46','quan.hh@vinhsangvn.com','admin@gmail.com',1,'2017-10-31_TBTM_BANNER.png',1,3),(77,'Computer accessories','Computer accessories','2017-11-01 15:19:17','2018-04-03 10:16:50','admin@gmail.com','admin@gmail.com',1,'2017-11-03_PKMT-BANNER_02.png',32,322);
/*!40000 ALTER TABLE `tb_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contacts`
--

DROP TABLE IF EXISTS `tb_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(245) DEFAULT NULL,
  `content` text,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contacts`
--

LOCK TABLES `tb_contacts` WRITE;
/*!40000 ALTER TABLE `tb_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_delivery_method`
--

DROP TABLE IF EXISTS `tb_delivery_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_delivery_method` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `img` varchar(245) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_delivery_method`
--

LOCK TABLES `tb_delivery_method` WRITE;
/*!40000 ALTER TABLE `tb_delivery_method` DISABLE KEYS */;
INSERT INTO `tb_delivery_method` VALUES (1,'Quận 1','no_image.jpg','Miễn phí',0,1),(2,'Quận 2','no_image.jpg','Miễn phí',20000,1),(3,'Quận 3','no_image.jpg','Miễn phí',30000,1),(4,'Quận 4','no_image.jpg','Miễn phí',40000,1),(5,'Quận 5','no_image.jpg','Miễn phí',50000,1),(6,'Quận 6','no_image.jpg','Miễn phí',60000,1),(7,'Quận 7','no_image.jpg','Miễn phí',70000,1),(8,'Quận 8','no_image.jpg','Miễn phí',80000,1),(9,'Quận 9','no_image.jpg','Miễn phí',90000,1),(10,'Quận 10','no_image.jpg','Miễn phí',100000,1),(11,'Quận 11','no_image.jpg','Miễn phí',0,1),(12,'Quận 12','no_image.jpg','Miễn phí',120000,1),(13,'Bình Tân','no_image.jpg','Miễn phí',0,0),(14,'Bình Thạnh','no_image.jpg','Miễn phí',0,0),(15,'Gò Vấp	','no_image.jpg','Miễn phí',0,0),(16,'Phú Nhuận','no_image.jpg','Miễn phí',0,0),(17,'Tân Bình','no_image.jpg','Miễn phí',0,0),(18,'Tân Phú','no_image.jpg','Miễn phí',0,0),(19,'Thủ Đức','no_image.jpg','Miễn phí',0,0),(20,'Bình Chánh','no_image.jpg','Miễn phí',0,0),(21,'Cần Giờ','no_image.jpg','Có phí',100000,0),(22,'Củ Chi','no_image.jpg','Có phí',50000,0),(23,'Hóc Môn','2017-11-16_localhost8.PNG','Có phí',50000,0),(24,'Nhà Bè','2017-11-16_localhost9.PNG','Có phí',100000,0);
/*!40000 ALTER TABLE `tb_delivery_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_emailfeedback`
--

DROP TABLE IF EXISTS `tb_emailfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_emailfeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `subject` varchar(245) DEFAULT NULL,
  `content` text,
  `senddate` datetime DEFAULT NULL,
  `from_email` varchar(100) DEFAULT NULL,
  `to_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_emailfeedback`
--

LOCK TABLES `tb_emailfeedback` WRITE;
/*!40000 ALTER TABLE `tb_emailfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_emailfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_guide`
--

DROP TABLE IF EXISTS `tb_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_guide` (
  `id` varchar(10) NOT NULL,
  `title` varchar(245) DEFAULT NULL,
  `description` text,
  `logo` varchar(45) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_guide`
--

LOCK TABLES `tb_guide` WRITE;
/*!40000 ALTER TABLE `tb_guide` DISABLE KEYS */;
INSERT INTO `tb_guide` VALUES ('intro-001','Hướng dẫn sử dụng','This is guide 2017 2018','',NULL,NULL,'<p>&nbsp;aaaaa</p>\r\n<p>bbbbb</p>\r\n<p>&nbsp;<img src=\"../upload/guide/2017-07-05_test.jpg\" alt=\"\" width=\"600\" height=\"300\" /></p>');
/*!40000 ALTER TABLE `tb_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_industry`
--

DROP TABLE IF EXISTS `tb_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IndustryName` varchar(145) DEFAULT NULL,
  `IndustryDes` varchar(245) DEFAULT NULL,
  `IndustryImg` varchar(245) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `IndustryOrder` int(11) DEFAULT '1',
  `Icon` varchar(245) DEFAULT NULL,
  `ColorBackground` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_industry`
--

LOCK TABLES `tb_industry` WRITE;
/*!40000 ALTER TABLE `tb_industry` DISABLE KEYS */;
INSERT INTO `tb_industry` VALUES (1,'Electronic','Electronic','2017-10-24_2017-10-11_AD1.jpg',1,1,'electronic.png','electronic'),(25,'Pets','Pets','2017-10-31_TC_02.png',1,2,'fashion.png','fashion'),(26,'Toys','Toys','2017-10-26_SPINNER_02.jpg',1,4,'digital.png','digital'),(32,'Accessories','Accessories','2017-11-02_phukiendienthoai.png',1,5,'2017-11-01_18.png','sports');
/*!40000 ALTER TABLE `tb_industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_news`
--

DROP TABLE IF EXISTS `tb_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(245) DEFAULT NULL,
  `image_feature` varchar(245) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) DEFAULT NULL,
  `creator` varchar(245) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_news`
--

LOCK TABLES `tb_news` WRITE;
/*!40000 ALTER TABLE `tb_news` DISABLE KEYS */;
INSERT INTO `tb_news` VALUES (1,'Joanne Cheung','2017-10-30_Joanne.jpg','<div class=\"entry-photo\" style=\"background-repeat: initial; outline: 0px; vertical-align: top; color: #333333; font-family: Arial, sans-serif;\">Joanne Cheung &ndash; Tổng gi&aacute;m đốc v&agrave; đồng thời cũng l&agrave; người s&aacute;ng lập ra c&ocirc;ng ty Korex Technology Co.,Ltd, một trong những doanh nghiệp ti&ecirc;n phong trong lĩnh vực thiết bị điện tử th&ocirc;ng minh tại Shenzhen. Vivmall.vn rất h&acirc;n hạnh được hợp t&aacute;c với Korex để đem đến những sản phẩm Smart watch, Fitness tracker v&agrave; thiết bị Smart home đến thị trường Việt Nam để ra mắt thị trường c&ocirc;ng nghệ điện tử th&ocirc;ng minh tại Việt Nam....</div>\r\n<div class=\"entry-photo\" style=\"background-repeat: initial; outline: 0px; vertical-align: top; color: #333333; font-family: Arial, sans-serif;\"><img style=\"vertical-align: top; background-repeat: initial; font-weight: inherit; outline: 0px; max-width: 100%; width: 870px; border: 1px solid #eaeaea;\" src=\"../../../upload/news/Joanne.jpg\" alt=\"Blog\" /></div>\r\n<div class=\"content-text clearfix\" style=\"padding-top: 20px; padding-bottom: 20px; background-repeat: initial; outline: 0px; vertical-align: top; text-align: justify; color: #333333; font-family: Arial, sans-serif;\">\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; background-repeat: initial; font-weight: inherit; outline: 0px; vertical-align: top;\">&nbsp;</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; background-repeat: initial; font-weight: inherit; outline: 0px; vertical-align: top;\">Về những sản phẩm d&acirc;y đeo th&ocirc;ng minh, Korex Technology đ&atilde; ph&aacute;t minh ra những mẫu d&acirc;y đeo, đồng hồ th&ocirc;ng minh với mẫu m&atilde; đa dạng, bắt mắt v&agrave; thời trang, đem đến cho kh&aacute;ch h&agrave;ng những trải nghiệm mới mẻ về những sản phẩm th&ocirc;ng minh hiện đại n&agrave;y!</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; background-repeat: initial; font-weight: inherit; outline: 0px; vertical-align: top; text-align: center;\"><img style=\"vertical-align: top; background-repeat: initial; font-weight: inherit; outline: 0px; max-width: 100%;\" src=\"../../../upload/news/band1.jpg\" alt=\"Blog\" /></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; background-repeat: initial; font-weight: inherit; outline: 0px; vertical-align: top; text-align: center;\">Fitness Tracker thời thượng</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; background-repeat: initial; font-weight: inherit; outline: 0px; vertical-align: top; text-align: center;\"><img style=\"vertical-align: top; background-repeat: initial; font-weight: inherit; outline: 0px; max-width: 100%;\" src=\"../../../upload/news/dongho.jpg\" alt=\"Blog\" /></p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; background-repeat: initial; font-weight: inherit; outline: 0px; vertical-align: top; text-align: center;\">Đồng hồ định vị th&ocirc;ng minh trẻ em</p>\r\n</div>',1,'admin@gmail.com','2018-03-21 12:51:43',1),(3,'2015 Events','2017-10-31_giangsinh1.jpg','<div class=\"entry-photo\" style=\"background-repeat: initial; outline: 0px; vertical-align: top; color: #333333; font-family: Arial, sans-serif;\"><span style=\"color: #333333; font-family: Verdana, sans-serif; font-size: 15px; background-color: #ffffff;\">M?i th? b?t ??u m?i v?i n?m m?i s?p t?i. Ch&uacute;c n?m m?i c?a b?n tr&agrave;n ng?p nh?ng ?i?u h?nh ph&uacute;c nh?t....</span></div>\r\n<div class=\"entry-photo\" style=\"background-repeat: initial; outline: 0px; vertical-align: top; color: #333333; font-family: Arial, sans-serif;\">\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; color: #333333; font-family: Verdana, sans-serif; font-size: 18.75px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; color: #333333; font-family: Verdana, sans-serif; font-size: 18.75px; background-color: #ffffff;\"><img style=\"box-sizing: inherit; border-style: none; vertical-align: middle; margin: 10px auto 35px; display: block;\" src=\"http://vinhsangv2.khaitamtri.vn/upload/event/2017-06-13_giangsinh1.PNG\" alt=\"\" width=\"905\" height=\"517\" /></p>\r\n<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; color: #333333; font-family: Verdana, sans-serif; font-size: 18.75px; background-color: #ffffff;\"><img style=\"box-sizing: inherit; border-style: none; vertical-align: middle; margin: 10px auto 35px; display: block;\" src=\"http://vinhsangv2.khaitamtri.vn/upload/event/2017-06-13_giangsinh2.PNG\" alt=\"\" width=\"906\" height=\"516\" /></p>\r\n</div>',1,'admin@gmail.com','2018-04-03 09:39:17',2);
/*!40000 ALTER TABLE `tb_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_news_categories`
--

DROP TABLE IF EXISTS `tb_news_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_news_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `image_feature` varchar(245) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ordered` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_news_categories`
--

LOCK TABLES `tb_news_categories` WRITE;
/*!40000 ALTER TABLE `tb_news_categories` DISABLE KEYS */;
INSERT INTO `tb_news_categories` VALUES (1,'News','no_image.jpg','News',1,1),(2,'Events','no_image.jpg','Events',1,2);
/*!40000 ALTER TABLE `tb_news_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orders`
--

DROP TABLE IF EXISTS `tb_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orders` (
  `id` varchar(20) NOT NULL,
  `Email` varchar(245) DEFAULT NULL,
  `Name` varchar(145) DEFAULT NULL,
  `Address` varchar(245) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `PaymentMethod` int(3) DEFAULT NULL,
  `DeliveryMethod` int(3) DEFAULT NULL,
  `TotalQuantity` int(11) DEFAULT NULL,
  `TotalAmount` decimal(11,0) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `Note` varchar(245) DEFAULT NULL,
  `IsCheck` tinyint(1) DEFAULT '0' COMMENT '0 tao moi\n1 xac nhan\n2 huy bo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orders`
--

LOCK TABLES `tb_orders` WRITE;
/*!40000 ALTER TABLE `tb_orders` DISABLE KEYS */;
INSERT INTO `tb_orders` VALUES ('OD-00000000050','bongthoi1111@gmail.com','Van Thoi','36 Trần Quý,Phường 06,Quận 11,TP.Hồ Chí Minh','11111111',1,12,2,2387000,'2017-11-20 11:52:38','aaaaaaaaaaaaaa',1);
/*!40000 ALTER TABLE `tb_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orders_detail`
--

DROP TABLE IF EXISTS `tb_orders_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orders_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` varchar(13) DEFAULT NULL,
  `ProductName` varchar(245) DEFAULT NULL,
  `Unit` int(3) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(11,0) DEFAULT NULL,
  `Price1` decimal(11,0) DEFAULT NULL,
  `Amount` decimal(11,0) DEFAULT NULL,
  `OrdersId` varchar(20) DEFAULT NULL COMMENT 'ma phieu xuat',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orders_detail`
--

LOCK TABLES `tb_orders_detail` WRITE;
/*!40000 ALTER TABLE `tb_orders_detail` DISABLE KEYS */;
INSERT INTO `tb_orders_detail` VALUES (307,'8930002000666','IP Camera',1,1,1353000,1588300,1353000,'OD-00000000050');
/*!40000 ALTER TABLE `tb_orders_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_payment_method`
--

DROP TABLE IF EXISTS `tb_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_payment_method` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `img` varchar(245) DEFAULT NULL,
  `account_name` varchar(45) DEFAULT NULL,
  `account_pass` varchar(45) DEFAULT NULL,
  `url` varchar(245) DEFAULT NULL,
  `merchant_site_code` varchar(45) DEFAULT NULL,
  `secure_pass` varchar(245) DEFAULT NULL,
  `return_url` varchar(245) DEFAULT NULL,
  `return_cancel` varchar(245) DEFAULT NULL,
  `receiver` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_payment_method`
--

LOCK TABLES `tb_payment_method` WRITE;
/*!40000 ALTER TABLE `tb_payment_method` DISABLE KEYS */;
INSERT INTO `tb_payment_method` VALUES (1,'Thanh toán khi nhận hàng','Quý khách sẽ thanh toán bằng tiền mặt khi nhận hàng tại nhà...','handle.png',NULL,NULL,NULL,NULL,NULL,'checkout_success','checkout_cancel',NULL,1),(2,'PayPal','Phương thức thanh toán thông qua cổng thanh toán PayPal','paypal.png',NULL,NULL,NULL,NULL,NULL,'checkout_success','checkout_cancel',NULL,0),(3,'Ngân Lượng','Phương thức thanh toán thông qua cổng thanh toán Ngân Lượng','nganluong.png','chau.hm@vinhsangvn.com','P@$$word159753','https://www.nganluong.vn/checkout.php?','47688','b5ab00d4e3856a876c85c4985d4892fe','checkout_success','checkout_cancel','chau.hm@vinhsangvn.com',1);
/*!40000 ALTER TABLE `tb_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product` (
  `id` varchar(13) NOT NULL COMMENT 'barcode genarator',
  `ProductName` varchar(245) DEFAULT NULL,
  `ProductDes` text,
  `ProductGuide` text,
  `ProductInfo` text,
  `FeatureImage` varchar(245) DEFAULT NULL,
  `Unit` int(3) DEFAULT NULL,
  `BigUnit` int(3) DEFAULT NULL,
  `CostPrice` decimal(11,0) DEFAULT NULL,
  `SellPrice` decimal(11,0) DEFAULT NULL,
  `SellPrice1` decimal(11,0) DEFAULT NULL,
  `SellPrice2` decimal(11,0) DEFAULT NULL,
  `SupplierId` varchar(20) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `BusinessType` int(3) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `CreateUser` varchar(45) DEFAULT NULL,
  `UpdateUser` varchar(45) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
INSERT INTO `tb_product` VALUES ('4890002000667','IP Camera','','','','2017-10-26_ip camera 4.png',1,99,1353000,1353000,1353000,1353000,'sup003',5,1,'2017-10-26 14:50:53','2018-04-03 09:37:58','quan.hh@vinhsangvn.com','admin@gmail.com',1);
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_roles`
--

DROP TABLE IF EXISTS `tb_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_roles` (
  `id` varchar(40) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_roles`
--

LOCK TABLES `tb_roles` WRITE;
/*!40000 ALTER TABLE `tb_roles` DISABLE KEYS */;
INSERT INTO `tb_roles` VALUES ('ROLE_ADMIN','admin'),('ROLE_AGENTCN','agent china'),('ROLE_AGENTVI','agen vietnam'),('ROLE_MEMBER','member'),('ROLE_USER','user');
/*!40000 ALTER TABLE `tb_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_slide`
--

DROP TABLE IF EXISTS `tb_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `image` varchar(245) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_slide`
--

LOCK TABLES `tb_slide` WRITE;
/*!40000 ALTER TABLE `tb_slide` DISABLE KEYS */;
INSERT INTO `tb_slide` VALUES (15,'banner3','2017-10-24_vivmall_banner2.jpg','2017-10-24 11:26:57','admin@gmail.com'),(16,'banner2','2017-10-24_vivmall_banner1.jpg','2017-10-24 14:50:19','admin@gmail.com');
/*!40000 ALTER TABLE `tb_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_supplier`
--

DROP TABLE IF EXISTS `tb_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_supplier` (
  `id` char(6) NOT NULL,
  `SupplierName` varchar(145) DEFAULT NULL,
  `BusinessType` int(11) DEFAULT NULL,
  `Description` varchar(245) DEFAULT NULL,
  `Address` varchar(245) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(145) DEFAULT NULL,
  `Website` varchar(45) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_supplier`
--

LOCK TABLES `tb_supplier` WRITE;
/*!40000 ALTER TABLE `tb_supplier` DISABLE KEYS */;
INSERT INTO `tb_supplier` VALUES ('sup001','Glorious Vietnam',1,'aaa','aaa','1243','aaa@gmail.com','vinhsang.com',1),('sup002','Made-in-China',2,'aaa','aa','1243','aaa@gmail.com','vinhsang.com',1),('sup003','korex',2,'korex','korex','1234','AX@chinakorex.com','http://www.chinakorex.com',1);
/*!40000 ALTER TABLE `tb_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_unit`
--

DROP TABLE IF EXISTS `tb_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_unit` (
  `id` int(3) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_unit`
--

LOCK TABLES `tb_unit` WRITE;
/*!40000 ALTER TABLE `tb_unit` DISABLE KEYS */;
INSERT INTO `tb_unit` VALUES (1,'Item','cái'),(2,'can','thùng'),(3,'pack','gói'),(4,'set','bộ'),(5,'bottle','chai'),(6,'piece','cái'),(7,'box','hop');
/*!40000 ALTER TABLE `tb_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `RegisterDate` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES ('admin@gmail.com','$2a$10$eo3fwsiPzAd6VmPM6F3nhOJqA3WtDazEaIqkGdtNieWEd4.yQRPdO','admin first name','admin last name','2011-01-01 00:00:00','36 Trần Quý,Phường 06,Quận 11,TP.Hồ Chí Minh','02112',1,'2011-04-04 00:00:00'),('bongthoi1111@gmail.com','$2a$10$GGuOnKIoNT/XduI5/M8MiuuXdBv7W8b1F8gIcYmdyxDwiQzvoS89K','Van Thoi','Bong','2017-01-01 00:00:00','36 Trần Quý,Phường 06,Quận 11,TP.Hồ Chí Minh','11111111',1,'2017-11-16 14:53:39'),('linh.lhn@vinhsangvn.com','$2a$10$ymJcNJiKc3F.w43Ek4M6FOAaEfo7w5Hwkb.2xZEgMSf0KmMNs8Q8m','Nhật Linh','Lê Hoàng ','2017-01-01 00:00:00','aaaaaaa','11111111111',1,'2017-11-15 14:23:18'),('quan.hh@vinhsangvn.com','$2a$10$eo3fwsiPzAd6VmPM6F3nhOJqA3WtDazEaIqkGdtNieWEd4.yQRPdO','Quân','Quân','2011-01-01 00:00:00','asd','0211233333',1,'2011-04-04 00:00:00'),('vivmalldemo@gmail.com','$2a$10$8ugPz1nK5RdMWw4slFyTnucLpaWUP7ZD4dT86leBCcCOs7314DhM.','demo','vivmall','2017-01-01 00:00:00','56A Hòa Bình,Phường 05,Quận 11,TP.Hồ Chí Minh','028.62866208',1,'2017-11-28 09:24:03');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_roles`
--

DROP TABLE IF EXISTS `tb_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `role` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_roles`
--

LOCK TABLES `tb_user_roles` WRITE;
/*!40000 ALTER TABLE `tb_user_roles` DISABLE KEYS */;
INSERT INTO `tb_user_roles` VALUES (1,'quan.hh@vinhsangvn.com','ROLE_ADMIN'),(4,'admin@gmail.com','ROLE_ADMIN'),(27,'u1@gmail.com','ROLE_USER'),(30,'tung.pt@gmail.com','ROLE_USER'),(33,'tungphan995@gmail.com','ROLE_USER'),(34,'bongthoi1111@gmail.com','ROLE_USER'),(35,'linh.lhn@vinhsangvn.com','ROLE_ADMIN'),(36,'vivmalldemo@gmail.com','ROLE_USER');
/*!40000 ALTER TABLE `tb_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_gridproduct`
--

DROP TABLE IF EXISTS `vw_gridproduct`;
/*!50001 DROP VIEW IF EXISTS `vw_gridproduct`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_gridproduct` AS SELECT 
 1 AS `id`,
 1 AS `ProductName`,
 1 AS `FeatureImage`,
 1 AS `Unit`,
 1 AS `BigUnit`,
 1 AS `CostPrice`,
 1 AS `SellPrice`,
 1 AS `SellPrice1`,
 1 AS `SellPrice2`,
 1 AS `CategoryId`,
 1 AS `BusinessType`,
 1 AS `SupplierId`,
 1 AS `CreateDate`,
 1 AS `UpdateDate`,
 1 AS `CreateUser`,
 1 AS `UpdateUser`,
 1 AS `enabled`,
 1 AS `BigUnitName`,
 1 AS `CategoryName`,
 1 AS `SupplierName`,
 1 AS `UnitName`,
 1 AS `BusinessTypeName`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'vivmallhkdbv2'
--

--
-- Dumping routines for database 'vivmallhkdbv2'
--
/*!50003 DROP FUNCTION IF EXISTS `getNextCustomSeq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql245`@`%` FUNCTION `getNextCustomSeq`(
    sSeqName VARCHAR(50),
    sSeqGroup VARCHAR(10)
) RETURNS varchar(20) CHARSET utf8
BEGIN
    DECLARE nLast_val INT; 
 
    SET nLast_val =  (SELECT seq_val
                          FROM _sequence
                          WHERE seq_name = sSeqName
                                AND seq_group = sSeqGroup);
    IF nLast_val IS NULL THEN
        SET nLast_val = 1;
        INSERT INTO _sequence (seq_name,seq_group,seq_val)
        VALUES (sSeqName,sSeqGroup,nLast_Val);
    ELSE
        SET nLast_val = nLast_val + 1;
        UPDATE _sequence SET seq_val = nLast_val
        WHERE seq_name = sSeqName AND seq_group = sSeqGroup;
    END IF; 
 
    SET @ret = (SELECT concat(sSeqGroup,'-',lpad(nLast_val,11,'0')));
    RETURN @ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getNextProductBarcodeWithoutChecksumDigit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql245`@`%` FUNCTION `getNextProductBarcodeWithoutChecksumDigit`(
) RETURNS varchar(12) CHARSET utf8
BEGIN
DECLARE nLast_val INT; 
DECLARE nContry_val varchar(3);
DECLARE nCompany_val varchar(6);
declare nProduct_length int;

select  contry_code, company_code, product_code_count, product_length
into    nContry_val,nCompany_val,nLast_val,nProduct_length
from _sequence_barcode where id=1;
  IF nLast_val IS NULL THEN
        SET nLast_val = 1;
        INSERT INTO _sequence_barcode (id,contry_code, company_code, product_code_count, product_length)
        VALUES (1,'893','0001',1,5);
    ELSE
        SET nLast_val = nLast_val + 1;
        UPDATE _sequence_barcode SET product_code_count = nLast_val
        WHERE id=1;
    END IF; 

	SET @ret = (SELECT concat(nContry_val,nCompany_val,lpad(nLast_val,nProduct_length,'0')));
    RETURN @ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SPLIT_STR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql245`@`%` FUNCTION `SPLIT_STR`(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
) RETURNS varchar(255) CHARSET utf8
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_test_jasper_tb_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mysql245`@`%` PROCEDURE `sp_test_jasper_tb_product`(
in maxUnit int(8)
)
BEGIN

SELECT * 
FROM tb_product
where Unit < maxUnit
;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_gridproduct`
--

/*!50001 DROP VIEW IF EXISTS `vw_gridproduct`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql245`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_gridproduct` AS (select `p`.`id` AS `id`,`p`.`ProductName` AS `ProductName`,`p`.`FeatureImage` AS `FeatureImage`,`p`.`Unit` AS `Unit`,`p`.`BigUnit` AS `BigUnit`,`p`.`CostPrice` AS `CostPrice`,`p`.`SellPrice` AS `SellPrice`,`p`.`SellPrice1` AS `SellPrice1`,`p`.`SellPrice2` AS `SellPrice2`,`p`.`CategoryId` AS `CategoryId`,`p`.`BusinessType` AS `BusinessType`,`p`.`SupplierId` AS `SupplierId`,`p`.`CreateDate` AS `CreateDate`,`p`.`UpdateDate` AS `UpdateDate`,`p`.`CreateUser` AS `CreateUser`,`p`.`UpdateUser` AS `UpdateUser`,`p`.`enabled` AS `enabled`,`b`.`name` AS `BigUnitName`,`c`.`CategoryName` AS `CategoryName`,`s`.`SupplierName` AS `SupplierName`,`u`.`name` AS `UnitName`,`bs`.`name` AS `BusinessTypeName` from (((((`tb_product` `p` join `tb_bigunit` `b` on((`p`.`BigUnit` = `b`.`id`))) join `tb_category` `c` on((`p`.`CategoryId` = `c`.`id`))) join `tb_supplier` `s` on((`p`.`SupplierId` = `s`.`id`))) join `tb_unit` `u` on((`p`.`Unit` = `u`.`id`))) join `tb_businesstype` `bs` on((`p`.`BusinessType` = `bs`.`id`)))) */;
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

-- Dump completed on 2019-01-02 16:00:17
