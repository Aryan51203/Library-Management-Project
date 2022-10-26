-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: cs_project
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `book_records`
--

DROP TABLE IF EXISTS `book_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_records` (
  `name` varchar(100) DEFAULT NULL,
  `admission_number` varchar(100) NOT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `Book_Code` varchar(15) NOT NULL,
  `Date_of_issue` date NOT NULL,
  `Date_of_return` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `issue_time` varchar(30) NOT NULL,
  PRIMARY KEY (`admission_number`,`Book_Code`,`Date_of_issue`,`issue_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_records`
--

LOCK TABLES `book_records` WRITE;
/*!40000 ALTER TABLE `book_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `name_of_book` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `Book_Code` varchar(15) NOT NULL,
  `Genre` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Book_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('A Beautiful Mind','Sylvia Nasar','BIO001','Biographies','Not Issued'),('The Lost City of Z','David Grann','BIO002','Biographies','Not Issued'),('The Minds of Billy Milligan','Daniel Keyes','BIO003','Biographies','Not Issued'),('Napolean: A Life','Andrwe Roberts','BIO004','Biographies','Not Issued'),('The Passage of Power','Robert Caro','BIO005','Biographies','Not Issued'),('Wings of Fire','Arun Tiwari','BIO006','Biographies','Not Issued'),('The Man who knew Infinity','Robert Kanigel','BIO007','Biographies','Not Issued'),('Vivekananda: A biography','Swami Nikhilananda','BIO008','Biographies','Not Issued'),('Eleven Gods and a Billion Indians','Boria Majumdar','BIO009','Biographies','Not Issued'),('I am Neil Armstrong','Brad Meltzer','BIO010','Biographies','Not Issued'),('Invaluable','Maya Grossman','EDU001','Educational','Not Issued'),('The Privileged Poor','Anthony Abraham Jack','EDU002','Educational','Not Issued'),('Thrive Through the Five','Dr Jill M Siler','EDU003','Educational','Not Issued'),('Origin of the Species','Charles Darwin','EDU004','Educational','Not Issued'),('A Brief History of Time','Stephen Hawking','EDU005','Educational','Not Issued'),('Cosmos','Carl Sagan','EDU006','Educational','Not Issued'),('A Short History of Nearly Everything','Bill Bryson','EDU007','Educational','Not Issued'),('Dark Matter','Blake Crouch','EDU008','Educational','Not Issued'),('The Making of the Atomic Bomb','Richard Rhodes','EDU009','Educational','Not Issued'),('The Structure of Scientific Revolutions','Thomas Kuhn','EDU010','Educational','Not Issued'),('The Adventure of Augie March','Saul Bellow','FIC001','Fiction','Not Issued'),('American Pastoral','Philip roth','FIC002','Fiction','Not Issued'),('The Assistant','Bernard Malamud','FIC003','Fiction','Not Issued'),('Charlie and the Chocolate Factory','Roald Dahl','FIC004','Fiction','Not Issued'),('Nineteen Eighty-Four','George Orwell','FIC005','Fiction','Not Issued'),('The Lord of the Rings','JRR Tolkien','FIC006','Fiction','Not Issued'),('Enders Game','Orson Scott Card','FIC007','Fiction','Not Issued'),('The Dune Chronicles','Frank Herbert','FIC008','Fiction','Not Issued'),('The Kingkiller Chronicles','Patrick Rothfuss','FIC009','Fiction','Not Issued'),('Harry Potter and the Deathly Hallows','JK Rowling','FIC010','Fiction','Not Issued'),('The Bell Jar','Sylvia Plath','NOV001','Novel','Not Issued'),('The Great Gatsby','F Scott Fitzgerald','NOV002','Novel','Not Issued'),('Speak','Laurie Halse Anderson','NOV003','Novel','Not Issued'),('A Suitable Boy','Vikram Seth','NOV004','Novel','Not Issued'),('The Inheritance of Loss','Kiran Desai','NOV005','Novel','Not Issued'),('The White Tiger','Aravind Adiga','NOV006','Novel','Not Issued'),('A Fine Balance','Rohinton Mistry','NOV007','Novel','Not Issued'),('To Kill a Mockingbird','Harper Lee','NOV008','Novel','Not Issued'),('Ullyses','James Joyce','NOV009','Novel','Not Issued'),('Beloved','Toni Morrison','NOV010','Novel','Not Issued');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password`
--

DROP TABLE IF EXISTS `password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password` (
  `user_name` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password`
--

LOCK TABLES `password` WRITE;
/*!40000 ALTER TABLE `password` DISABLE KEYS */;
INSERT INTO `password` VALUES ('1','pass'),('2','pass'),('3','pass'),('4','pass'),('5',''),('6','pass');
/*!40000 ALTER TABLE `password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `name` varchar(100) DEFAULT NULL,
  `StaffId` int NOT NULL,
  `Gender` varchar(5) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('Akansha Singh',1,'F','Z-420, National Colony','9384759708'),('Mridula Tiwari',2,'F','F-397, Reserved Colony','9283748576'),('Suraj Tyagi',3,'M','D-410, Gundanagar','9946529765'),('Lalu Prasad',4,'M','E-4102, Shiva Colony, Lucknow','9284859673'),('Bir Gupta Anand',5,'M','M-387, Shipra Rivera','9346847875');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `name` varchar(100) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `admission_number` varchar(100) NOT NULL,
  `Class` varchar(5) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`admission_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('Kanak Joshi','2004-06-17','I-08/5068','12','A'),('Rohan Yadav','2004-08-02','I-09/5023','12','A'),('Nivedita Sharma','2005-04-19','I-09/5787','11','H'),('Shreya Jain','2004-01-09','I-09/5789','12','E'),('Poulami Bhattacharjee','2005-11-19','I-09/5790','11','B'),('Anisha Singh','2005-10-29','I-09/7249','11','A'),('Sam Singh','2006-06-12','I-10/7866','10','A'),('Vishal Jaiswal','2005-04-11','I-10/7896','11','A'),('Salman Kapoor','2003-07-27','I-11/8906','12','D'),('Aditya Kumar','2004-05-23','I-11/8976','12','G'),('Anuj Singh','2007-11-16','I-12/8790','09','C'),('Ramesh Tripathi','2005-04-17','I-13/9761','11','I'),('Joel Joseph','2005-12-11','I-13/9799','11','C'),('Jitendra Yadav','2005-01-10','I-13/9888','11','D'),('Avi Gupta','2004-02-05','I-14/10100','12','H'),('Ridhi Singh','2004-12-20','I-14/10111','12','E'),('Aastha Bhat','2004-12-22','I-14/10122','12','K'),('Sheena Bajaj','2005-01-09','I-14/10444','11','A'),('Kritika Singh','2004-11-09','I-14/10467','12','J'),('Arushi Kapkoti','2004-07-27','I-14/10554','12','E'),('Simran Kaur','2004-12-18','I-14/10776','12','C'),('Sandeep Kumar','2006-09-12','I-15/10281','10','G'),('Rahul Modi','2008-07-08','I-15/10561','08','C'),('Pankaj Sharma','2008-09-30','I-15/10781','11','F'),('Aditya Kamal','2004-03-23','I-15/8889','12','D'),('Shreya Chauhan','2006-01-09','I-15/9111','10','E'),('Jasmine Fernandez','2006-01-13','I-15/9123','10','C'),('Armaan Kohli','2005-01-18','I-15/9770','11','F'),('Jayant Yadav','2005-01-10','I-15/9777','11','E'),('Bhavya Jha','2005-09-13','I-15/9778','12','A'),('Tony Kakkar','2005-01-15','I-15/9779','12','G'),('Bhavdeep Singh','2004-03-14','I-15/9999','12','F'),('Lakhshya Singh','2004-07-20','I-16/10059','12','D'),('Aladdin Singh','2004-07-23','I-16/10089','12','E'),('Raveena Kaur','2004-10-20','I-18/12229','12','G'),('Ajey Nagar','2004-01-10','I-18/12620','12','E'),('Ajit Singh','2005-06-18','I-18/12689','11','I'),('Rashmi Pillai','2009-02-28','I-19/16789','07','G'),('Mahesh Yadav','2008-08-17','I-19/16879','08','A'),('Mona Kaur','2009-12-16','I-19/16889','07','F');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-09 22:37:16
