-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrator` (
  `emailid` varchar(45) NOT NULL,
  `adminname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `adminpicture` text,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('adi@gmail.com','Aditya','12345','1.jpg'),('sahil@gmail.com','sahil','12345','2.jpg');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admission`
--

DROP TABLE IF EXISTS `admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admission` (
  `admissionid` int(11) NOT NULL AUTO_INCREMENT,
  `departmentid` int(11) DEFAULT NULL,
  `courseid` varchar(45) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `enrollmentno` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admissionid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission`
--

LOCK TABLES `admission` WRITE;
/*!40000 ALTER TABLE `admission` DISABLE KEYS */;
INSERT INTO `admission` VALUES (2,13,'3',1,12000,'2022-03-02',2018,'Running'),(3,13,'3',1,1300,'2022-03-29',2020,'Running'),(4,13,'3',1,1400,'2022-03-29',2020,'Running'),(5,13,'3',1,1500,'2022-03-29',2020,'Running'),(6,13,'3',1,1600,'2022-03-29',2020,'Running'),(7,13,'3',1,1700,'2022-03-29',2020,'Running'),(8,13,'3',1,1800,'2022-03-29',2020,'Running'),(9,13,'3',1,1900,'2022-03-29',2020,'Running'),(10,13,'3',2,800,'2003-05-02',2024,'Running');
/*!40000 ALTER TABLE `admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cities` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT,
  `stateid` int(11) DEFAULT NULL,
  `cityname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,100,'Gwalior'),(2,100,'Indore'),(3,100,'Jabalpur'),(4,100,'Ujjain'),(5,100,'Bhopal'),(6,200,'Agra'),(7,200,'	Kanpur'),(8,200,'	Lucknow'),(9,200,'	Ghaziabad'),(10,200,'Firozabad'),(11,300,'	Visakhapatnam'),(12,300,'	Vijayawada'),(13,300,'	Guntur'),(14,300,'	Nellore'),(15,300,'Tirupati'),(16,400,'Tughlqabad.'),(17,400,'Jahanpanah.'),(18,400,'Firozobad.'),(19,400,'Noida'),(20,400,'New Delhi'),(21,500,'Mumbai '),(22,500,'Pune'),(23,500,'Thane'),(24,500,'Nagpur'),(25,500,'Jalgaon'),(26,600,'	Ludhiana'),(27,600,'	Amritsar'),(28,600,'	Jalandhar'),(29,600,'	Patiala'),(30,600,'	Bathinda'),(31,700,'	Thiruvananthapuram'),(32,700,'	Kozhikode'),(33,700,'	Kochi'),(34,700,'	Thrissur'),(35,700,'Kannur'),(36,800,'	Ahmedabad'),(37,800,'	Surat'),(38,800,'	Vadodara'),(39,800,'	Rajkot'),(40,800,'	Jamnagar'),(41,900,'	Chennai'),(42,900,'	Coimbatore'),(43,900,'	Madurai'),(44,900,'	Tiruchirappalli'),(45,900,'	Tiruppur');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(45) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL,
  `semester` int(100) DEFAULT NULL,
  `feepersemester` int(100) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (3,'MCA',13,8,3000,'8ada1756-4c04-4d6a-9c84-fe52ab40c552.png'),(5,'BBA',12,4,499,'b9d2d186-0222-42e3-83cb-b4eda01bc056.png'),(6,'BCA',13,3,12300,'08badc32-8af7-46e3-9b50-1580d18ba768.png');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (10,'Civil engineering','ba125dd8-5986-48b8-8451-358940870607.jpg'),(12,'Chemical Engineering','71b686b5-cced-43ed-9321-d3c59aec31c4.png'),(13,'Computer Science','3d04d333-7867-4a12-88e3-5ea24963a75a.png'),(17,'Artificial Intelligence','2ebf6588-9300-47db-8fa4-17c89da69219.png');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `faculties` (
  `facultyid` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(45) DEFAULT NULL,
  `Lastname` varchar(45) DEFAULT NULL,
  `Fathername` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dob` text,
  `qualification` text,
  `department` text,
  `address` text,
  `state` text,
  `city` text,
  `mobileno` bigint(100) DEFAULT NULL,
  `alternatemobileno` bigint(100) DEFAULT NULL,
  `emailid` varchar(100) DEFAULT NULL,
  `designation` text,
  `password` text,
  `picture` text,
  PRIMARY KEY (`facultyid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES (7,'Aditya','Jain','Sudhir Jain','Male','2003-05-02','Btech','13','Meera nagar morar','100','1',8462054552,7693961399,'adi@gmail.com','Manager','12345','0a7f4efb-4bb0-423e-b7e0-cbaac6552891.png'),(8,'Sahil','Jain','Sudhir jain','Male','2003-05-02','BE','13','morar','200','7',8462054552,7693961399,'e.adiajin8462@gmail.com','HR','?01212@3','4352b41f-9767-46e6-8bf1-f9b0777e3fe0.jpg'),(9,'Aditya','Jain','Sudhir Jain','Male','2003-05-02','Btech','13','meera nagar morar gwalior','500','21',8462054552,7693961399,'e.adiajin8462@gmail.com','HR','0P33A#A#','48c4615d-db1d-445a-bf51-065d224d1ebc.png');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `facultyid` int(11) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  `subjectid` varchar(45) DEFAULT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `setno` text,
  `unitid` int(11) DEFAULT NULL,
  `questionno` int(11) DEFAULT NULL,
  `question` text,
  `questionimage` text,
  `option1` text,
  `image1` text,
  `option2` text,
  `image2` text,
  `option3` text,
  `image3` text,
  `option4` text,
  `image4` text,
  `correctanswer` text,
  PRIMARY KEY (`questionid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (14,7,13,3,'123','2','13-3--1-6',3,1,' Which of the following ampere-second could be the unit?','None',' Reluctance','None','Charge','None','Power','None','Energy','None','1'),(15,7,13,3,'123','2','13-3--1-6',3,2,'The rating of the fuse wire is always expressed in','None','Ampere-hours','None','Ampere-volts','None',' KWH','None','Amphere','None','1'),(16,7,13,3,'123','2','13-3--1-6',3,3,'The S.I. unit of power is','None','Henry','None','Coulomb','None','Watt','None','Watt-Hour','None','1'),(17,7,13,3,'123','2','13-3--1-6',3,4,' Temperature coefficient of resistance is expressed in terms of','None','Ohms','None','Mhos/ohm','None','Ohms/ohm','None',' Mhos','None','1'),(18,7,13,3,'123','2','13-3--1-6',3,5,'In gases the flow of current is due to','None',' Electrons only','None','Positive ions only','None',' Electrons and positive ions','None','Electrons, positive ions and negative ions','None','1'),(19,7,13,3,'123','2','13-3--1-6',3,6,'The flow of current in solids is due to?','None',' Electrons','None',' Electrons and ions','None','Atoms','None','Nucleus','None','1'),(20,7,13,3,'123','2','13-3--1-6',3,7,'The minimum requirements for causing flow of current are','None','A voltage source, a resistor and a switch','None','A voltages source and a conductor','None',' A power source and a bulb','None','A voltage source, a conductor an ammeter and a switch','None','1'),(21,7,13,3,'123','2','13-3--1-6',3,8,'An instrument which detects electric current is known as','None','Voltmeter','None','Rheostat','None','Wattmeter','None','Galvanometer','None','1'),(22,7,13,3,'129','5','13-3--5-7',7,1,'Which of the following is not an operating system?','None','Windows','None','Linux','None','Oracle','None','DOS','None','1'),(23,7,13,3,'129','5','13-3--5-7',7,2,'c5','None','uhu','None','jn','None','ujn','None','u','None','1');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduleexams`
--

DROP TABLE IF EXISTS `scheduleexams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `scheduleexams` (
  `examtransactionid` int(11) NOT NULL AUTO_INCREMENT,
  `examdate` text,
  `examtime` text,
  `facultyid` text,
  `departmentid` text,
  `courseid` text,
  `semester` text,
  `subjectid` text,
  `setno` text,
  `enrollmentno` text,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`examtransactionid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduleexams`
--

LOCK TABLES `scheduleexams` WRITE;
/*!40000 ALTER TABLE `scheduleexams` DISABLE KEYS */;
INSERT INTO `scheduleexams` VALUES (1,'2022-04-25','13:00','7','13','3','1','126','13-3--1-6','1300','absent'),(2,'2022-04-25','13:00','7','13','3','1','126','13-3--1-6','1400','absent'),(3,'2022-04-25','13:00','7','13','3','1','126','13-3--1-6','1500','absent'),(4,'2022-04-25','13:00','7','13','3','1','126','13-3--1-6','1600','absent'),(5,'2022-04-25','13:00','7','13','3','1','126','13-3--1-6','1700','absent'),(6,'2022-04-25','13:00','7','13','3','1','126','13-3--1-6','1800','absent'),(7,'2022-04-25','13:00','7','13','3','1','126','13-3--1-6','1900','absent'),(8,'2022-04-25','13:00','7','13','3','1','126','13-3--1-6','12000','absent'),(9,'2022-04-25','13:00','7','13','3','1','126','13-3--1-6','1300','absent'),(10,'2022-03-11','14:36','7','13','3','1','126','13-3--1-6','12000','absent'),(11,'2022-03-11','14:36','7','13','3','1','126','13-3--1-6','1400','absent'),(12,'2022-03-11','14:36','7','13','3','1','126','13-3--1-6','1500','absent'),(13,'','','7','13','3','1','129','13-3--5-7','1300','absent'),(14,'','','7','13','3','1','129','13-3--5-7','1400','absent'),(15,'','','7','13','3','1','129','13-3--5-7','1500','absent'),(16,'','','7','13','3','1','129','13-3--5-7','1600','absent'),(17,'','','7','13','3','1','129','13-3--5-7','1700','absent'),(18,'','','7','13','3','1','129','13-3--5-7','1800','absent'),(19,'','','7','13','3','1','129','13-3--5-7','1900','absent'),(20,'','','7','13','3','1','129','13-3--5-7','12000','absent');
/*!40000 ALTER TABLE `scheduleexams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sets`
--

DROP TABLE IF EXISTS `sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sets` (
  `setid` int(11) NOT NULL AUTO_INCREMENT,
  `facultyid` varchar(45) DEFAULT NULL,
  `departmentid` varchar(45) DEFAULT NULL,
  `courseid` varchar(45) DEFAULT NULL,
  `subjectid` varchar(45) DEFAULT NULL,
  `marks` varchar(45) DEFAULT NULL,
  `setno` varchar(45) DEFAULT NULL,
  `semester` text,
  `time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`setid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sets`
--

LOCK TABLES `sets` WRITE;
/*!40000 ALTER TABLE `sets` DISABLE KEYS */;
INSERT INTO `sets` VALUES (6,'7','13','3','123','100','13-3--1-6','1','90','Enable'),(7,'7','13','3','129','100','13-3--5-7','5','60','Enable'),(8,'7','13','3','126','100','13-3--1-8','1','90','Enable');
/*!40000 ALTER TABLE `sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `states` (
  `stateid` int(10) NOT NULL AUTO_INCREMENT,
  `statename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=901 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (100,'Madhya Pradesh'),(200,'Uttar  Pradesh'),(300,'Andhra  Pradesh'),(400,'Delhi'),(500,'Maharashtra'),(600,'Punjab'),(700,'Kerala'),(800,'Gujarat'),(900,'TamilNadu');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `studentid` int(11) NOT NULL AUTO_INCREMENT,
  `enrollmentno` int(11) DEFAULT NULL,
  `studentname` varchar(45) DEFAULT NULL,
  `fathername` varchar(45) DEFAULT NULL,
  `mothername` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `mobileno` bigint(20) DEFAULT NULL,
  `parentmobileno` bigint(20) DEFAULT NULL,
  `caddress` varchar(45) DEFAULT NULL,
  `cstate` varchar(45) DEFAULT NULL,
  `ccity` varchar(45) DEFAULT NULL,
  `paddress` varchar(45) DEFAULT NULL,
  `pstate` varchar(45) DEFAULT NULL,
  `pcity` varchar(45) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `income` bigint(20) DEFAULT NULL,
  `addhar` varchar(45) DEFAULT NULL,
  `addharno` text,
  `domicileid` varchar(45) DEFAULT NULL,
  `domicile` text,
  `departmentid` bigint(20) DEFAULT NULL,
  `courseid` bigint(20) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE KEY `enrollmentno_UNIQUE` (`enrollmentno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (6,1234,'shubh jain','Sudhir jain','Reena jain','Hindu','General','Male','2014-12-24',8462054552,7693961399,'Bardari chouraha','800','40','Singhpur road','200','8','e.subhjain@gmail.com','Business man ',120000,'0','218413517919','1','MadhyaPradesh',12,2,'12345','c'),(7,NULL,'Aditya ',NULL,NULL,'hindu','General','Male','2003-05-02',8462054552,7693961399,'morar','100','1','gwalior','100','1','e.adijain@gmailcom','business',90000,'898989','0df743ef-2719-4925-8149-c61f0ad6c06d.jpg','',NULL,13,6,'##?0@0@P','ae8562ec-1af0-4a14-a302-970fb660b857.png'),(8,12000,'Aditya ','Sudhir','Reena','Hindu','General','Male','2003-05-02',8462054552,7693961399,'Meera Nagar Morar','100','2','Morar','400','16','e.adijain@gmail.com','Business Man',60000,'213456','c0a8f0cd-e382-45be-bbfa-acf78d5e2467.jpg','','805cd6f4-46b7-430e-8af5-30a12dafb33f.jpg',13,3,'12345','06244440-f4ba-4cd9-ac7b-272ff0babad0.jpg'),(10,1300,'Tom','Hippo','Shijuka','Indian','General','Male','2003-05-02',8462054552,7693961399,'Meera nagar morar','100','1','Baradari chouraha  morar','400','16','e.adijain@gmail.com','Business',123000,'89898988','00211bbb-3b34-449a-820a-80dc400bf04a.png','','ded9a403-6152-42c3-b296-b73b21d63bab.jpg',13,3,'300#33?2','cd5de71b-67f2-47f5-bb06-b6143fe5471c.png'),(11,1400,'Tom','Hippo','Shijuka','Indian','General','Male','2003-05-02',8462054552,7693961399,'Meera nagar morar','100','1','Baradari chouraha  morar','400','16','e.adijain@gmail.com','Business',123000,'','db0940a9-d172-4e9d-8dee-34e02fdc8aac.png','','ba745159-4f56-4e5a-ae27-2bd8786062b5.jpg',13,3,'300#33?2','128ac83c-4854-4af7-9ef7-f8ab0766544d.png'),(12,1500,'Tom','Hippo','Shijuka','Indian','General','Male','2003-05-02',8462054552,7693961399,'Meera nagar morar','100','1','Baradari chouraha  morar','400','16','e.adijain@gmail.com','Business',123000,'','18e2b6af-5218-4b70-8b26-aac5bc0afa7f.png','','3547fb22-ad7d-4cdf-b51a-3fc74a2e562d.jpg',13,3,'@2@@23PA','f128325a-0b4f-4ca3-810d-8ea606ba60dc.png'),(13,1600,'Tom','Hippo','Shijuka','Indian','General','Male','2003-05-02',8462054552,7693961399,'Meera nagar morar','100','1','Baradari chouraha  morar','400','16','adi@gmail.com','Business',123000,'','39d2a9df-f9bb-411b-b7ac-a310fd66cf43.png','','a42950ee-4df5-4d65-afcd-3da1bca95bea.jpg',13,3,'12345','03ea72ab-333a-4713-9950-9fcccc6825b6.png'),(14,1700,'Tom','Hippo','Shijuka','Indian','General','Male','2003-05-02',8462054552,7693961399,'Meera nagar morar','100','1','Baradari chouraha  morar','400','16','e.adijain@gmail.com','Business',123000,'','102e895d-2ef0-4064-9a52-e0285a116a09.png','','e1fba085-b0b6-4d41-a0de-77ca79545737.jpg',13,3,'0AAA?#21','3bfa9b41-faca-4e48-8c84-639c244a26b2.png'),(15,1800,'Tom','Hippo','Shijuka','Indian','General','Male','2003-05-02',8462054552,7693961399,'Meera nagar morar','100','1','Baradari chouraha  morar','400','16','e.adijain@gmail.com','Business',123000,'','b1ac5c7f-af62-48a2-a66c-b38f80d60108.png','','2a1fafea-a929-49f8-b9cb-b9841c600246.jpg',13,3,'1P30#A3#','3d0c9242-bd14-46cc-9bc9-83b3a4a53f5e.png'),(17,1900,'Harry','Tom','X kumari','brazil','General','Male','2222-04-02',8462054552,7693961399,'meera nagar morar','200','6','gwalior','400','17','e.adijain@gmail.com','business',79000000000,'8979797','53a2beef-0061-4fb4-914a-142b47823d06.jpg','','e76a0856-6cc5-446d-9b5b-1bebc2be0182.jpg',13,3,'1P1AP@A#','e4a08117-1d56-4f57-8d47-9c1b2126f6e6.jpg'),(18,2000,'Harry','Tom','X kumari','brazil','General','Male','2222-04-02',8462054552,7693961399,'meera nagar morar','200','6','gwalior','400','17','e.adi@gmail.com','business',79000000000,'8979797','199c4720-d4f7-437e-8c6b-3ba2d4659cd3.jpg','','8c6872f8-63f8-444b-93a7-38e89b827d59.jpg',13,3,'123','0bf36cf7-8d07-4845-8d63-cedc1605fc5d.jpg'),(19,2100,'Harry','Tom','X kumari','brazil','General','Male','2222-04-02',8462054552,7693961399,'meera nagar morar','200','6','gwalior','400','17','e.adijain@gmail.com','business',79000000000,'8979797','9d8f75c7-92e6-4ca9-9705-81c9051860d1.jpg','','db729a4f-4a30-4e56-a62d-0085ac68ed75.jpg',13,3,'12#P?P03','989e9ef0-6654-4682-888d-1a563f3eec5c.jpg'),(20,800,'Aman Gupta','Elon Musk','Mother Teresa','Hindu','Sc','Other','2003-02-02',8462054552,7693961399,'meera nagar morar','500','22','Morar','200','10','e.aman@gmail.com','CEO',10000,'9090909090','14fb3977-9158-4198-805b-0cb099c9a604.png','','8dc49683-98fd-4f2c-994c-b6cc02f0c6c5.png',13,3,'A23@#P??','6760a899-4577-4899-8be3-88f147435de0.png');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentexam`
--

DROP TABLE IF EXISTS `studentexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `studentexam` (
  `studentexam_transactionid` int(11) NOT NULL AUTO_INCREMENT,
  `examtransactionid` int(11) DEFAULT NULL,
  `setno` varchar(45) DEFAULT NULL,
  `questionno` int(11) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  `selectedans` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `enrollmentno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentexam_transactionid`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentexam`
--

LOCK TABLES `studentexam` WRITE;
/*!40000 ALTER TABLE `studentexam` DISABLE KEYS */;
INSERT INTO `studentexam` VALUES (66,8,'13-3--1-6',1,'1','2','attempt','12000'),(67,8,'13-3--1-6',2,'1','3','review','12000'),(68,8,'13-3--1-6',3,'1','3','attempt','12000'),(69,8,'13-3--1-6',4,'1','3','attempt','12000'),(71,8,'13-3--1-6',6,'1','4','attempt','12000'),(72,4,'13-3--1-6',1,'1','1','attempt','1600'),(73,4,'13-3--1-6',2,'1','3','review','1600'),(74,4,'13-3--1-6',3,'1','4','attempt','1600'),(75,4,'13-3--1-6',4,'1','2','attempt','1600');
/*!40000 ALTER TABLE `studentexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subjects` (
  `subjectid` int(11) NOT NULL AUTO_INCREMENT,
  `courseid` varchar(45) DEFAULT NULL,
  `departmentid` varchar(45) DEFAULT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `subjectname` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `subjectmarks` varchar(45) DEFAULT NULL,
  `exammarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`subjectid`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (123,'3','13','2','BEEE','Theory','100','70'),(126,'3','13','1','Operating system','Theory','100',NULL),(127,'3','13','1','Data And File Structures','Theory','100',NULL),(128,'6','13','1','Fundamentals of computer','Theory','70',NULL),(129,'3','13','5','OS','Theory','100',NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `units` (
  `unitid` int(11) NOT NULL AUTO_INCREMENT,
  `departmentid` varchar(45) DEFAULT NULL,
  `courseid` varchar(45) DEFAULT NULL,
  `subjectid` varchar(45) DEFAULT NULL,
  `unitno` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'13','3','124','01','Introduction','all the authors name'),(4,'13','3','126','01','Time Sharing And Real Time System','aa'),(5,'13','3','126','02','CPU Schduling','aa'),(6,'13','3','126','03','Memory Management','memory allocation '),(7,'13','3','129','02','Basics of OS','DNSDUB');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-30 15:58:33
