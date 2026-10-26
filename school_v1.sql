-- MySQL dump 10.13  Distrib 8.4.7, for Win64 (x86_64)
--
-- Host: localhost    Database: school_v1
-- ------------------------------------------------------
-- Server version	8.4.7

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `school_students`
--

DROP TABLE IF EXISTS `school_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_students` (
  `Student_ID` int NOT NULL,
  `Student_Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Birth_Date` date NOT NULL,
  `Gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Enrollment_Date` date NOT NULL,
  `Email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Level` tinyint NOT NULL,
  `Track` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GPA` decimal(5,2) NOT NULL,
  PRIMARY KEY (`Student_ID`),
  UNIQUE KEY `Email` (`Email`),
  CONSTRAINT `school_students_chk_1` CHECK ((`Gender` in (_utf8mb4'F',_utf8mb4'M'))),
  CONSTRAINT `school_students_chk_2` CHECK ((`Level` between 1 and 6)),
  CONSTRAINT `school_students_chk_3` CHECK ((`Track` in (_utf8mb4'Scientific',_utf8mb4'Humanities'))),
  CONSTRAINT `school_students_chk_4` CHECK ((`GPA` between 0 and 100))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_students`
--

LOCK TABLES `school_students` WRITE;
/*!40000 ALTER TABLE `school_students` DISABLE KEYS */;
INSERT INTO `school_students` VALUES (1001,'Ahmed Mohammed','2008-03-15','M','2023-09-01','std.ahmed.mohammed.updated@altamayuz.edu.sa',1,'Scientific',95.50),(1002,'Sarah Ali','2007-07-22','F','2022-09-01','std.sarah.ali@altamayuz.edu.sa',2,'Scientific',98.20),(1003,'Khalid Abdullah','2006-11-10','M','2021-09-01','std.khalid.abdullah@altamayuz.edu.sa',3,'Humanities',89.75),(1004,'Noura Saad','2008-01-05','F','2023-09-01','std.noura.saad@altamayuz.edu.sa',1,'Humanities',92.00),(1005,'Fahad Ibrahim','2007-05-18','M','2022-09-01','std.fahad.ibrahim@altamayuz.edu.sa',2,'Scientific',87.60),(1006,'Reem Saleh','2006-09-30','F','2021-09-01','std.reem.saleh@altamayuz.edu.sa',3,'Scientific',96.80),(1007,'Omar Hassan','2008-02-14','M','2023-09-01','std.omar.hassan@altamayuz.edu.sa',1,'Scientific',84.25),(1008,'Lina Faisal','2007-12-09','F','2022-09-01','std.lina.faisal@altamayuz.edu.sa',2,'Humanities',91.40),(1009,'Yousef Nasser','2006-04-27','M','2021-09-01','std.yousef.nasser@altamayuz.edu.sa',3,'Scientific',88.90),(1010,'Mariam Adel','2008-06-11','F','2023-09-01','std.mariam.adel@altamayuz.edu.sa',1,'Humanities',94.10),(1011,'Saud Khalid','2007-03-02','M','2022-09-01','std.saud.khalid@altamayuz.edu.sa',2,'Scientific',79.80),(1012,'Dana Majed','2006-08-19','F','2021-09-01','std.dana.majed@altamayuz.edu.sa',3,'Humanities',97.25),(1013,'Turki Saleh','2008-10-25','M','2023-09-01','std.turki.saleh@altamayuz.edu.sa',1,'Scientific',82.60),(1014,'Hala Ibrahim','2007-01-16','F','2022-09-01','std.hala.ibrahim@altamayuz.edu.sa',2,'Humanities',90.35),(1015,'Abdulrahman Sami','2006-12-04','M','2021-09-01','std.abdulrahman.sami@altamayuz.edu.sa',3,'Scientific',93.70),(1016,'Rana Abdullah','2008-04-08','F','2023-09-01','std.rana.abdullah@altamayuz.edu.sa',1,'Scientific',86.45),(1017,'Majed Faisal','2007-09-13','M','2022-09-01','std.majed.faisal@altamayuz.edu.sa',2,'Humanities',81.90),(1018,'Abeer Mohammed','2006-02-21','F','2021-09-01','std.abeer.mohammed@altamayuz.edu.sa',3,'Scientific',95.15),(1019,'Bader Nabil','2008-07-30','M','2023-09-01','std.bader.nabil@altamayuz.edu.sa',1,'Humanities',77.50),(1020,'Shahad Omar','2007-11-05','F','2022-09-01','std.shahad.omar@altamayuz.edu.sa',2,'Scientific',99.00),(1021,'Ziyad Mansour','2006-05-12','M','2021-09-01','std.ziyad.mansour@altamayuz.edu.sa',3,'Humanities',85.75),(1022,'Joud Sami','2008-09-17','F','2023-09-01','std.joud.sami@altamayuz.edu.sa',1,'Scientific',92.85),(1023,'Anas Rami','2007-02-28','M','2022-09-01','std.anas.rami@altamayuz.edu.sa',2,'Humanities',80.60),(1024,'Lama Hani','2006-10-07','F','2021-09-01','std.lama.hani@altamayuz.edu.sa',3,'Scientific',96.35),(1025,'Rakan Adel','2008-12-20','M','2023-09-01','std.rakan.adel@altamayuz.edu.sa',1,'Humanities',88.15),(1026,'Maha Nasser','2007-06-03','F','2022-09-01','std.maha.nasser@altamayuz.edu.sa',2,'Scientific',93.25),(1027,'Faisal Majed','2006-03-24','M','2021-09-01','std.faisal.majed@altamayuz.edu.sa',3,'Humanities',83.40),(1028,'Ghada Turki','2008-05-09','F','2023-09-01','std.ghada.turki@altamayuz.edu.sa',1,'Scientific',90.90),(1029,'Nawaf Huda','2007-08-14','M','2022-09-01','std.nawaf.huda@altamayuz.edu.sa',2,'Humanities',78.65),(1030,'Dima Khalid','2006-01-29','F','2021-09-01','std.dima.khalid@altamayuz.edu.sa',3,'Scientific',97.80);
/*!40000 ALTER TABLE `school_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `Subject_ID` int NOT NULL,
  `Subject_Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Subject_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (3001,'Mathematics'),(3002,'Physics'),(3003,'Chemistry'),(3004,'Arabic Language'),(3005,'English Language'),(3006,'Biology'),(3007,'Computer Science'),(3008,'Islamic Studies');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `Teacher_ID` int NOT NULL,
  `Teacher_Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Birth_Date` date NOT NULL,
  `Gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Office_Number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Teacher_ID`),
  UNIQUE KEY `Email` (`Email`),
  CONSTRAINT `teachers_chk_1` CHECK ((`Gender` in (_utf8mb4'F',_utf8mb4'M')))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (2001,'Mohammed Ahmed','1980-04-12','M','mohammed.ahmed@altamayuz.edu.sa','B201'),(2002,'Mona Khalid','1985-08-25','F','mona.khalid@altamayuz.edu.sa','A102'),(2003,'Abdullah Saad','1978-02-17','M','abdullah.saad@altamayuz.edu.sa','A103'),(2004,'Huda Ali','1988-12-03','F','huda.ali@altamayuz.edu.sa','A104'),(2005,'Yousef Ibrahim','1982-06-20','M','yousef.ibrahim@altamayuz.edu.sa','A105'),(2006,'Khalid Mansour','1979-09-14','M','khalid.mansour@altamayuz.edu.sa','A106'),(2007,'Nadia Faisal','1986-01-28','F','nadia.faisal@altamayuz.edu.sa','A107'),(2008,'Saleh Omar','1981-07-06','M','saleh.omar@altamayuz.edu.sa','A108'),(2009,'Amal Nasser','1989-03-19','F','amal.nasser@altamayuz.edu.sa','A109'),(2010,'Ibrahim Saad','1977-11-22','M','ibrahim.saad@altamayuz.edu.sa','A110');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-26 14:58:00
