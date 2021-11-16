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
-- Temporary view structure for view `all_domain`
--

DROP TABLE IF EXISTS `all_domain`;
/*!50001 DROP VIEW IF EXISTS `all_domain`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_domain` AS SELECT 
 1 AS `domain_id`,
 1 AS `name`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

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
  KEY `StatusIndex` (`application_status`),
  KEY `job_id_idx` (`job_id`),
  CONSTRAINT `candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`),
  CONSTRAINT `job_id` FOREIGN KEY (`job_id`) REFERENCES `job_posting` (`job_id`)
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
  PRIMARY KEY (`candidate_id`),
  KEY `EmailIndex` (`email_id`)
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
-- Temporary view structure for view `candidate_status`
--

DROP TABLE IF EXISTS `candidate_status`;
/*!50001 DROP VIEW IF EXISTS `candidate_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `candidate_status` AS SELECT 
 1 AS `candidate_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email_id`,
 1 AS `phone_no`,
 1 AS `experience_year`,
 1 AS `skill`,
 1 AS `sustainability_interest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Domain`
--

DROP TABLE IF EXISTS `Domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Domain` (
  `domain_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`domain_id`),
  KEY `DomainIndex` (`name`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Domain`
--

LOCK TABLES `Domain` WRITE;
/*!40000 ALTER TABLE `Domain` DISABLE KEYS */;
INSERT INTO `Domain` VALUES (100,'E-Commerce','E-commerce is the activity of electronically buying or selling of products on online services or over the Internet.'),(103,'Media','the main means of mass communication (broadcasting, publishing, and the internet) regarded collectively.'),(104,'Search Engine','A search engine is a software system that is designed to carry out web searches.'),(101,'Social Media','\nSocial media are interactive technologies that allow the creation or sharing/exchange of information, ideas, interests, and other forms of expression via virtual communities and networks.'),(102,'Technology','Technology is the sum of any techniques, skills, methods, and processes used in the production of goods or services or in the accomplishment of objectives, such as scientific investigation.');
/*!40000 ALTER TABLE `Domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `earliest_deadline`
--

DROP TABLE IF EXISTS `earliest_deadline`;
/*!50001 DROP VIEW IF EXISTS `earliest_deadline`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `earliest_deadline` AS SELECT 
 1 AS `MIN(application_deadline)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!50001 DROP VIEW IF EXISTS `employees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees` AS SELECT 
 1 AS `username`*/;
SET character_set_client = @saved_cs_client;

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
  KEY `NameIndex` (`employer_name`),
  CONSTRAINT `domain_id` FOREIGN KEY (`domain_id`) REFERENCES `domain` (`domain_id`)
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
-- Temporary view structure for view `employer_view`
--

DROP TABLE IF EXISTS `employer_view`;
/*!50001 DROP VIEW IF EXISTS `employer_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employer_view` AS SELECT 
 1 AS `employer_id`,
 1 AS `employer_name`,
 1 AS `employer_headquarters`,
 1 AS `employer_size`,
 1 AS `employer_about`,
 1 AS `domain_id`,
 1 AS `sustainability_interest`*/;
SET character_set_client = @saved_cs_client;

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
-- Temporary view structure for view `fall_posting`
--

DROP TABLE IF EXISTS `fall_posting`;
/*!50001 DROP VIEW IF EXISTS `fall_posting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fall_posting` AS SELECT 
 1 AS `review`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gen_fullname`
--

DROP TABLE IF EXISTS `gen_fullname`;
/*!50001 DROP VIEW IF EXISTS `gen_fullname`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gen_fullname` AS SELECT 
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

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
  PRIMARY KEY (`review_id`),
  KEY `PostingDateIndex` (`posting_date`),
  KEY `candidate_id_idx` (`candidate_id`),
  KEY `Employer_id_idx` (`employer_id`)
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
-- Temporary view structure for view `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!50001 DROP VIEW IF EXISTS `job_applications`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `job_applications` AS SELECT 
 1 AS `job_id`,
 1 AS `title`,
 1 AS `job_location`,
 1 AS `application_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `job_employer_info`
--

DROP TABLE IF EXISTS `job_employer_info`;
/*!50001 DROP VIEW IF EXISTS `job_employer_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `job_employer_info` AS SELECT 
 1 AS `employer_name`,
 1 AS `employer_headquarters`,
 1 AS `employer_about`*/;
SET character_set_client = @saved_cs_client;

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
  KEY `JobPostingIndex` (`title`,`job_location`),
  CONSTRAINT `employer_id` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_posting`
--

LOCK TABLES `job_posting` WRITE;
/*!40000 ALTER TABLE `job_posting` DISABLE KEYS */;
INSERT INTO `job_posting` VALUES (1001,'Construction Management Analyst',101,'Texas','Well Experienced Candidates required ','2021-11-30','2021-10-19'),(1002,'Full Stack Developer',102,'Seattle','Well Experienced Candidates required\"\"','2021-12-31','2021-10-13'),(1003,'Content Creator',103,'Scots Valley','Well Experienced Candidates required','2022-06-07','2021-01-10'),(1004,'Clinical Therapist',104,'Chicago','Well Experienced Candidates required','2021-11-27','2021-10-01'),(1005,'Salesforce Developer',100,'Seattle',' Well Experienced Candidates required ','2021-10-30','2021-10-05');
/*!40000 ALTER TABLE `job_posting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `location_not_seattle`
--

DROP TABLE IF EXISTS `location_not_seattle`;
/*!50001 DROP VIEW IF EXISTS `location_not_seattle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `location_not_seattle` AS SELECT 
 1 AS `job_id`,
 1 AS `title`,
 1 AS `employer_id`,
 1 AS `job_location`,
 1 AS `job_description`,
 1 AS `application_deadline`,
 1 AS `posting_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `postings_in_seattle`
--

DROP TABLE IF EXISTS `postings_in_seattle`;
/*!50001 DROP VIEW IF EXISTS `postings_in_seattle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `postings_in_seattle` AS SELECT 
 1 AS `job_id`,
 1 AS `title`,
 1 AS `employer_id`,
 1 AS `job_location`,
 1 AS `job_description`,
 1 AS `application_deadline`,
 1 AS `posting_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `size_above_500`
--

DROP TABLE IF EXISTS `size_above_500`;
/*!50001 DROP VIEW IF EXISTS `size_above_500`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `size_above_500` AS SELECT 
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

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
  PRIMARY KEY (`username`),
  KEY `UserAuthenticationIndex` (`email_id`,`password`,`user_type`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `candidate` (`candidate_id`)
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

--
-- Final view structure for view `all_domain`
--

/*!50001 DROP VIEW IF EXISTS `all_domain`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_domain` AS select `domain`.`domain_id` AS `domain_id`,`domain`.`name` AS `name`,`domain`.`description` AS `description` from `domain` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `candidate_status`
--

/*!50001 DROP VIEW IF EXISTS `candidate_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidate_status` AS select `c`.`candidate_id` AS `candidate_id`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`c`.`email_id` AS `email_id`,`c`.`phone_no` AS `phone_no`,`c`.`experience_year` AS `experience_year`,`c`.`skill` AS `skill`,`c`.`sustainability_interest` AS `sustainability_interest` from `candidate` `c` where exists(select `a`.`application_status` from `application` `a` where (`a`.`application_status` = 'Recieved')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `earliest_deadline`
--

/*!50001 DROP VIEW IF EXISTS `earliest_deadline`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `earliest_deadline` AS select min(`job_posting`.`application_deadline`) AS `MIN(application_deadline)` from `job_posting` where (`job_posting`.`posting_date` > '2020-10-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees`
--

/*!50001 DROP VIEW IF EXISTS `employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees` AS select `user_authentication`.`username` AS `username` from `user_authentication` where (`user_authentication`.`user_type` = 'employer') order by `user_authentication`.`user_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employer_view`
--

/*!50001 DROP VIEW IF EXISTS `employer_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employer_view` AS select `employer`.`employer_id` AS `employer_id`,`employer`.`employer_name` AS `employer_name`,`employer`.`employer_headquarters` AS `employer_headquarters`,`employer`.`employer_size` AS `employer_size`,`employer`.`employer_about` AS `employer_about`,`employer`.`domain_id` AS `domain_id`,`employer`.`sustainability_interest` AS `sustainability_interest` from `employer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fall_posting`
--

/*!50001 DROP VIEW IF EXISTS `fall_posting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fall_posting` AS select `interview_review`.`review` AS `review` from `interview_review` where (`interview_review`.`posting_date` > '2021-09-30') order by `interview_review`.`posting_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gen_fullname`
--

/*!50001 DROP VIEW IF EXISTS `gen_fullname`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gen_fullname` AS select concat(`candidate`.`first_name`,' ',`candidate`.`last_name`) AS `Name` from `candidate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `job_applications`
--

/*!50001 DROP VIEW IF EXISTS `job_applications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `job_applications` AS select `jp`.`job_id` AS `job_id`,`jp`.`title` AS `title`,`jp`.`job_location` AS `job_location`,`ap`.`application_status` AS `application_status` from (`job_posting` `jp` join `application` `ap` on((`jp`.`job_id` = `ap`.`job_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `job_employer_info`
--

/*!50001 DROP VIEW IF EXISTS `job_employer_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `job_employer_info` AS select `e`.`employer_name` AS `employer_name`,`e`.`employer_headquarters` AS `employer_headquarters`,`e`.`employer_about` AS `employer_about` from `employer` `e` where (`e`.`employer_id` = (select `j`.`employer_id` from `job_posting` `j` where (`j`.`title` = 'Senior U X Designer'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `location_not_seattle`
--

/*!50001 DROP VIEW IF EXISTS `location_not_seattle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `location_not_seattle` AS select `job_posting`.`job_id` AS `job_id`,`job_posting`.`title` AS `title`,`job_posting`.`employer_id` AS `employer_id`,`job_posting`.`job_location` AS `job_location`,`job_posting`.`job_description` AS `job_description`,`job_posting`.`application_deadline` AS `application_deadline`,`job_posting`.`posting_date` AS `posting_date` from `job_posting` where (`job_posting`.`job_location` <> 'Seattle') order by `job_posting`.`application_deadline` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `postings_in_seattle`
--

/*!50001 DROP VIEW IF EXISTS `postings_in_seattle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `postings_in_seattle` AS select `job_posting`.`job_id` AS `job_id`,`job_posting`.`title` AS `title`,`job_posting`.`employer_id` AS `employer_id`,`job_posting`.`job_location` AS `job_location`,`job_posting`.`job_description` AS `job_description`,`job_posting`.`application_deadline` AS `application_deadline`,`job_posting`.`posting_date` AS `posting_date` from `job_posting` group by `job_posting`.`job_location` having (`job_posting`.`job_location` = 'Seattle') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `size_above_500`
--

/*!50001 DROP VIEW IF EXISTS `size_above_500`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `size_above_500` AS select count(0) AS `COUNT(*)` from `employer` where (`employer`.`employer_size` > 500) */;
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

-- Dump completed on 2021-11-16 13:11:08
