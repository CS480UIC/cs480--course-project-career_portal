-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: career_portal
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `applicant_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `job_id` int NOT NULL,
  `application_status` varchar(60) NOT NULL,
  PRIMARY KEY (`applicant_id`),
  KEY `candidate_id_idx` (`candidate_id`),
  CONSTRAINT `candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (101,101,1002,'Recieved'),(102,102,1003,'Recieved'),(103,103,1004,'Recieved');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `email_id` varchar(60) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `experience_year` int NOT NULL,
  `skill` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `sustainability_interest` varchar(45) NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (100,'John ','Doe','johndoe@gmail.com','312-1111111',2,'Python','Curbing CO2 emissions'),(101,'Michael','Jackson','mjackson@gmail.com','312-2222222',7,'Construction Design','Minimalstic construction waste'),(102,'Selena','Gomez','sgomez@gmail.com','284-8786541',4,'PowerBI','Efficient Supply Chain development'),(103,'Michelle','Rose','mrose@outlook.com','312-0001111',10,'Content Creation','sustainability awareness promotion'),(104,'Priyanka','Chopra','pchopra@yahoo.com','266-0909876',8,'Psycology, Conselling ','Social mental health awareness');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain` (
  `domain_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain`
--

LOCK TABLES `domain` WRITE;
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
INSERT INTO `domain` VALUES (100,'E-Commerce','E-commerce is the activity of electronically buying or selling of products on online services or over the Internet.'),(101,'Social Media','\nSocial media are interactive technologies that allow the creation or sharing/exchange of information, ideas, interests, and other forms of expression via virtual communities and networks.'),(102,'Technology','Technology is the sum of any techniques, skills, methods, and processes used in the production of goods or services or in the accomplishment of objectives, such as scientific investigation.'),(103,'Media','the main means of mass communication (broadcasting, publishing, and the internet) regarded collectively.'),(104,'Search Engine','A search engine is a software system that is designed to carry out web searches.');
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `employer_id` int NOT NULL AUTO_INCREMENT,
  `employer_name` varchar(60) NOT NULL,
  `employer_headquarters` varchar(60) NOT NULL,
  `employer_size` int DEFAULT NULL,
  `employer_about` varchar(2000) NOT NULL,
  `domain_id` int DEFAULT NULL,
  `sustainability_interest` varchar(60) NOT NULL,
  PRIMARY KEY (`employer_id`),
  UNIQUE KEY `employer_name_UNIQUE` (`employer_name`),
  KEY `domain_id_idx` (`domain_id`),
  CONSTRAINT `domain_id` FOREIGN KEY (`domain_id`) REFERENCES `domain` (`domain_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (100,'Amazon','Seattle',10000,'Amazon.com, Inc. is an American multinational technology company which focuses on e-commerce, cloud computing, digital streaming, and artificial intelligence. ',100,'CO2 Reduction'),(101,'Facebook','San Francisco ',50000,'Facebook, Inc. is an American multinational technology company based in Menlo Park, California. It was founded in 2004 as TheFacebook by Mark Zuckerberg, Eduardo Saverin, Andrew McCollum, Dustin Moskovitz, and Chris Hughes, roommates and students at Harvard College. ',101,'Renewable Energy Transition'),(102,'Apple','Palo Alto',10000,'Apple Inc. is an American multinational technology company that specializes in consumer electronics, computer software, and online services. ',102,'Zero Waste'),(103,'Netflix','Scotts Valley',10000,'Netflix, Inc. is an American pay television over-the-top media service and original programming production company. It offers subscription-based video on demand from a library of films and television series, 40% of which is Netflix original programming produced in-house.',103,'Reduce CO2 Emissions'),(104,'Google','Menlo Park',10000,'Google LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, a search engine, cloud computing, software, and hardware',104,'Reduce CO2 emision');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity1`
--

DROP TABLE IF EXISTS `entity1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity1` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity1`
--

LOCK TABLES `entity1` WRITE;
/*!40000 ALTER TABLE `entity1` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_review`
--

DROP TABLE IF EXISTS `interview_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `employer_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `title` varchar(60) NOT NULL,
  `posting_date` date NOT NULL,
  `review` varchar(200) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_review`
--

LOCK TABLES `interview_review` WRITE;
/*!40000 ALTER TABLE `interview_review` DISABLE KEYS */;
INSERT INTO `interview_review` VALUES (100,101,100,'R1','2021-06-01','Good review'),(101,103,102,'R2','2021-10-14','Average'),(102,101,103,'R3','2021-11-01','Very Good'),(103,100,104,'R4','2021-11-04','Bad'),(104,100,102,'R5','2021-11-10','Average');
/*!40000 ALTER TABLE `interview_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_posting`
--

DROP TABLE IF EXISTS `job_posting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_posting` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `employer_id` int NOT NULL,
  `job_location` varchar(60) NOT NULL,
  `job_description` varchar(2000) NOT NULL,
  `application_deadline` date NOT NULL,
  `posting_date` date NOT NULL,
  PRIMARY KEY (`job_id`),
  KEY `employer_id_idx` (`employer_id`),
  CONSTRAINT `employer_id` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_posting`
--

LOCK TABLES `job_posting` WRITE;
/*!40000 ALTER TABLE `job_posting` DISABLE KEYS */;
INSERT INTO `job_posting` VALUES (1000,'Senior U X Designer',100,'San Jose',' Well Experienced Candidates required ','2021-10-30','2021-10-05'),(1001,'Construction Management Analyst',101,'Texas','Well Experienced Candidates required ','2021-11-30','2021-10-19'),(1002,'Full Stack Developer',102,'Seattle','Well Experienced Candidates required\"\"','2021-12-31','2021-10-13'),(1003,'Content Creator',103,'Scots Valley','Well Experienced Candidates required','2022-06-07','2021-01-10'),(1004,'Clinical Therapist',104,'Chicago','Well Experienced Candidates required','2021-11-27','2021-10-01');
/*!40000 ALTER TABLE `job_posting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authentication`
--

DROP TABLE IF EXISTS `user_authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_authentication` (
  `username` varchar(45) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authentication`
--

LOCK TABLES `user_authentication` WRITE;
/*!40000 ALTER TABLE `user_authentication` DISABLE KEYS */;
INSERT INTO `user_authentication` VALUES ('hr1','hr1@amazon.com','amazon_123','employer',100),('hr1_apple','hr1_apple@apple.com','apple_987','employer',102),('hr1_netflix','hr1@netflix.com','netflix_987','employer',101),('john_doe','johndoe@gmail.com','john_987','candidate',104),('michelle_rose','mrose@outlook.com','michelle_123','candidate',103);
/*!40000 ALTER TABLE `user_authentication` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-10 21:39:41
