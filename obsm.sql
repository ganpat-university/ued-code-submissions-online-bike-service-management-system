CREATE DATABASE  IF NOT EXISTS `obsm_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `obsm_project`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: obsm_project
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `serviceCenter` varchar(30) DEFAULT NULL,
  `Email_id` varchar(30) DEFAULT NULL,
  `Brand` varchar(30) DEFAULT NULL,
  `Phone_No` varchar(12) DEFAULT NULL,
  `Service` varchar(200) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `Request_date` date DEFAULT NULL,
  `User_id` int DEFAULT NULL,
  `cost` int DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `User_id` (`User_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user_details` (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'Aryan Service','meetprajapati20@gnu.ac.in','BAJAJ','9904130728','Oil Change',1,'2022-04-10',1,500),(3,'Panchal Bike Service Center','manya20@gnu.ac.in','MAHINDRA','0987654321','xyz',1,'2022-04-21',1,111),(4,'ICT Service Center','pratik20@gnu.ac.in','ROYAL ENFIELD','0987654321','',0,'2022-04-28',2,0),(8,'Jay Matadi','manya20@gnu.ac.in','HONDA','9182736456','bike oil service',1,'2022-04-28',1,1000),(9,'Panchal Bike Service Center','pratik20@gnu.ac.in','KTM','1234567890','',0,'2022-04-28',13,0),(10,'Aryan Service','abcdef@gmail.com','KTM','1234567890','',0,'2022-04-28',13,0),(11,'Jay Shree Ram Service Center','meetprajapati20@gmail.com','UM MOTORCYCLE','9913714844','bike oil service,gear change',1,'2022-05-02',1,5000),(12,'Jay Shree Ram Service Center','meetprajapati20@gmail.com','APRILIA','1122334455','gear repair',1,'2022-05-02',1,2110),(14,'yash Bike Service Center','meetprajapati20@gnu.ac.in','YAMAHA','1199228833','service 1,service 2',1,'2022-05-04',1,500),(15,'MMM Service Center','nirajbhil20@gmail.com','BENELI','9876543210','',0,'2022-05-05',2,0),(16,'Topper Service Center','nirajbhil20@gmail.com','HYOSUNG','9876543210','',0,'2022-05-05',2,0),(17,'Jay Shree Ram Service Center','pratik20@gnu.ac.in','MAHINDRA','1239874560','',0,'2022-05-05',13,0),(18,'Panchal Bike Service Center','pratik20@gnu.ac.in','KAWASAKI','9913714844','',0,'2022-05-05',13,0);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `booking_AFTER_INSERT` AFTER INSERT ON `booking` FOR EACH ROW BEGIN
update total_analysis set Booking_Request_Pending=(select count(bid) from booking where status=0) where id=0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `booking_AFTER_UPDATE` AFTER UPDATE ON `booking` FOR EACH ROW BEGIN
update total_analysis set Booking_Request_Pending=(select count(bid) from booking where status=0) where id=0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `home_image`
--

DROP TABLE IF EXISTS `home_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_image` (
  `id` int NOT NULL,
  `urlimg` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_image`
--

LOCK TABLES `home_image` WRITE;
/*!40000 ALTER TABLE `home_image` DISABLE KEYS */;
INSERT INTO `home_image` VALUES (1,'https://images.unsplash.com/photo-1502744688674-c619d1586c9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bW90b3JiaWtlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),(2,'https://images.unsplash.com/photo-1449426468159-d96dbf08f19f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bW90b3JiaWtlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),(3,'https://media.istockphoto.com/photos/cropped-view-of-mechanic-using-a-wrench-on-a-motorcycle-picture-id1036010442?k=20&m=1036010442&s=612x612&w=0&h=V1HrMUHhao0rjS89N2INj8Tu5XngF-f1odW4ysk-x-A='),(4,'https://media.istockphoto.com/photos/mechanic-repairing-a-motorcycle-picture-id1188820923?s=612x612'),(5,'https://media.istockphoto.com/photos/we-look-forward-to-serving-you-picture-id833171812?s=612x612'),(6,'https://media.istockphoto.com/photos/motorcycle-mechanic-at-work-picture-id488408494?s=612x612'),(7,'https://media.istockphoto.com/photos/mam-mechanic-testing-motorbike-picture-id683815820?k=20&m=683815820&s=612x612&w=0&h=6eq8PnkF5WYee8I833rwdop5uQZQz1ROJ0nR2XElzHI=');
/*!40000 ALTER TABLE `home_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patner_details`
--

DROP TABLE IF EXISTS `patner_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patner_details` (
  `P_id` int NOT NULL AUTO_INCREMENT,
  `ServiceCenterName` varchar(30) DEFAULT NULL,
  `OwnerName` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `ContactNo` varchar(20) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Status` int DEFAULT (0),
  `Password` varchar(20) DEFAULT NULL,
  `identification` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`P_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patner_details`
--

LOCK TABLES `patner_details` WRITE;
/*!40000 ALTER TABLE `patner_details` DISABLE KEYS */;
INSERT INTO `patner_details` VALUES (1,'Jay Matadi','Shiv Shambhu','shivnadan20@gmail.com','1234567890','Mehsana',1,'shiv123','patner'),(2,'Aryan Service','Aryan','aryan21@gmail.com','8976548761','Visnagar',1,'aryan1234','patner'),(3,'Panchal Bike Service Center','Jaivik Panchal','jp@bike.com','1239874561','Haldwani',1,'jaivik123','patner'),(4,'ICT Service Center','Manya Tripathi','ictgnu@gmail.com','5647382910','ahmdabad',1,'gnu123','patner'),(5,'MMM Service Center','Beena Rana ','mmm@service.com','1234567899','Gandhinagar',1,'mmm123','patner'),(6,'Jay Shree Ram Service Center','Ram Chaudhary','ram@jayshreeram.com','0192874655','Ayodhya',1,'jay123','patner'),(7,'abcdefg','abc def','absdef@gmail.com','1234567890','asdfghjkl',1,'meet123','patner'),(8,'Hari Om Bike Care','Om rathod','omrathod@gmail.com','1123345566','Ghatlodiya, Ahmedabad',1,'om123','patner'),(9,'Venus Bike Care','Vimal Kesari','v2service@gmail.com','9988776655','Mehsana',0,'vimal123','patner'),(10,'Khodiyar Bike Care','Maan Patel','khodiyar@gmail.com','5544663377','Haldwani',0,'maan123','patner'),(11,'Topper Service Center','Manasvi Patel','topp20@gmail.com','2244336655','Gandhinagar',1,'manasvi123','patner'),(12,'Valo Bike Care','Krupal Patel','valokp21@gmail.com','3457896547','Patan',0,'kp123','patner'),(13,'Yash Bike Service Center','Yash Rawat','yash20@gmail.com','6644552233','Rajkot',1,'yash1234','patner'),(14,'Karnavati Bikes','Anupam Prajapati','karnavati2@gmail.com','2233435687','Ahmdabad',0,'anupam123','patner'),(15,'Shradha Automobiles','Shradha Kapoor','sk123@gmail.com','9876543765','Surat',0,'sk123','patner'),(16,'Lakshyaa Honda','Meet Prajapati','meet123@gmail.com','7893456987','Lucknow',0,'meet123','patner');
/*!40000 ALTER TABLE `patner_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `patner_details_AFTER_INSERT` AFTER INSERT ON `patner_details` FOR EACH ROW BEGIN
    update total_analysis set No_Patners=(select count(P_id) from patner_details) where id=0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `patner_details_AFTER_INSERT_1` AFTER INSERT ON `patner_details` FOR EACH ROW BEGIN
update total_analysis set PatnerValidationPending=(select count(P_id) from patner_details where Status=0) where id=0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `patner_details_AFTER_UPDATE` AFTER UPDATE ON `patner_details` FOR EACH ROW BEGIN
update total_analysis set PatnerValidationPending=(select count(P_id) from patner_details where Status=0) where id=0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `patner_details_AFTER_DELETE` AFTER DELETE ON `patner_details` FOR EACH ROW BEGIN
update total_analysis set PatnerValidationPending=(select count(P_id) from patner_details where Status=0) where id=0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `imgUrl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Bike Gear','https://dir.indiamart.com/impcat/bike-gear.html','https://5.imimg.com/data5/TX/NM/KA/ANDROID-11189101/prod-20191207-1900492399557563294725526-jpg-250x250.jpg'),(2,'Bike Fuel Tank Cap With Lock','https://dir.indiamart.com/impcat/bike-fuel-tank-cap.html','https://5.imimg.com/data5/SELLER/Default/2021/1/AP/RU/ZP/25494984/motorcycle-fuel-tank-lock-500x500.jpg'),(3,'handle Weigth','https://dir.indiamart.com/impcat/handle-weight.html','https://5.imimg.com/data5/LE/NZ/ZU/SELLER-28324839/plastic-moulding-component-250x250.jpg'),(5,'Motorcycle Spring','https://dir.indiamart.com/impcat/motorcycle-spring.html','https://3.imimg.com/data3/LS/PW/GLADMIN-90165/motorcycle-spring-125x125.jpg'),(9,'Scooter Components','https://dir.indiamart.com/impcat/scooter-components.html','https://3.imimg.com/data3/OK/ND/GLADMIN-8436/scooter-components-125x125.jpg'),(10,'Electric Bike Parts','https://dir.indiamart.com/impcat/electric-bike-parts.html','https://3.imimg.com/data3/YC/VW/GLADMIN-108117/electric-bike-parts-125x125.jpg'),(11,'Silencer Bend Pipe Motorcycle','https://www.indiamart.com/proddetail/silencer-bend-pipe-motorcycle-24027772233.html?pos=5&pla=n','https://5.imimg.com/data5/ANDROID/Default/2021/10/XN/XM/GR/25494984/product-jpeg-500x500.jpg'),(12,'Front Fork Assembly','https://dir.indiamart.com/impcat/front-fork-assembly.html','https://5.imimg.com/data5/SELLER/Default/2021/5/BD/OQ/KA/4955236/front-fork-suspension-assembly-for-tvs-jupiter-disc-brake-250x250.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_analysis`
--

DROP TABLE IF EXISTS `total_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_analysis` (
  `No_users` int DEFAULT NULL,
  `No_Patners` int DEFAULT NULL,
  `Booking_Request_Pending` int DEFAULT NULL,
  `PatnerValidationPending` int DEFAULT NULL,
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_analysis`
--

LOCK TABLES `total_analysis` WRITE;
/*!40000 ALTER TABLE `total_analysis` DISABLE KEYS */;
INSERT INTO `total_analysis` VALUES (14,16,7,6,0);
/*!40000 ALTER TABLE `total_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `User_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `PhoneNo` varchar(20) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'Meet','Prajapati','meetprajapati20@gnu.ac.in','8306974067','meet123@','meetprajapati20'),(2,'Niraj','Bhil','nirajbhil20@gmail.com','9904130728','niraj123','nirajbhil20'),(12,'Ritu','Prajapati','ritu20@gnu.ac.in','9913714844','12345','ritu20'),(13,'Pratik','Patel','pratik20@gnu.ac.in','1234567890','1234','pratik20'),(14,'Manya','Tripathi','manya20@gnu.ac.in','09904130728','12345','manya20'),(15,'Aryan','Modi','aryan20@gmail.com','1928374650','aryan123','aryan20'),(16,'Krupal','Patel','krupalpatel20@gnu.ac','1324354667','krupal123','krupalpatel20'),(17,'Smeet','Patel','smeet20@gnu.ac.in','1239874560','smeet123','smeet20'),(18,'Ragav','Patel','r234@gmail.com','567890421','r123','r234'),(19,'abc','def','abcdef@gmail.com','09904130728','abcdef','abcdef'),(20,'Raj','Patel','raj@gmail.com','0987654321','raj123','raj'),(21,'Jay','Sapra','jaysapra20@gmail.com','9876543211','jay123','jaysapra20'),(22,'Rahul','Makwana','rahul20@gmail.com','5566447733','rahul123','rahul20'),(23,'Mahi','Kuschbhai','mahi20@gmail.com','1188335522','mahi123','mahi12');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_details_AFTER_INSERT` AFTER INSERT ON `user_details` FOR EACH ROW BEGIN
update total_analysis set No_users=(select count(User_id) from user_details) where id=0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'obsm_project'
--

--
-- Dumping routines for database 'obsm_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-05 18:57:37
