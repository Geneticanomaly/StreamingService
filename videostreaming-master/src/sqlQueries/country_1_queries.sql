-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: country_1
-- ------------------------------------------------------
-- Server version	8.0.31




--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genreID` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('genre1','name1','description1'),('genre2','name2','description2'),('genre3','name3','description3');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movieID` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `release_date` varchar(45) DEFAULT NULL,
  `length` int DEFAULT NULL,
  `summary` varchar(45) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `genreID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`movieID`),
  KEY `genreIDmovie_idx` (`genreID`),
  CONSTRAINT `genreIDmovie` FOREIGN KEY (`genreID`) REFERENCES `genre` (`genreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES 
('movie1','Fall','11-08-2022',183,'summary1', 7.3, "https://image.tmdb.org/t/p/w300/spCAxD99U1A6jsiePFoqdEcY0dG.jpg",'genre1'),
('movie2','Pinocchio','07-09-2022',183,'summary1', 6.6, "https://image.tmdb.org/t/p/w300/h32gl4a3QxQWNiNaR4Fc1uvLBkV.jpg",'genre1'),
('movie3','Beast','11-08-2022',183,'summary1', 7, "https://image.tmdb.org/t/p/w300/iRV0IB5xQeOymuGGUBarTecQVAl.jpg",'genre1'),
('movie4','Orphan: First Kill','27-07-2022',183,'summary1', 6.8, "https://image.tmdb.org/t/p/w300/wSqAXL1EHVJ3MOnJzMhUngc8gFs.jpg",'genre1'),
('movie5','Samaritan','25-08-2022',183,'summary1', 6.9, "https://image.tmdb.org/t/p/w300/vwq5iboxYoaSpOmEQrhq9tHicq7.jpg",'genre1'),
('movie7','Jujutsu Kaisen 0','24-12-2021',183,'summary1', 8.3, "https://image.tmdb.org/t/p/w300/yzkgx79vj1KsZBzxFBIsQBwBkPE.jpg",'genre1'),
('movie8','Thor: Love and Thunder','06-07-2022',183,'summary1', 6.5, "https://image.tmdb.org/t/p/w300/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg",'genre1'),
('movie9','Dragon Ball Super: Super Hero','11-06-2022',183,'summary1', 8, "https://image.tmdb.org/t/p/w300/rugyJdeoJm7cSJL1q4jBpTNbxyU.jpg",'genre1'),
('movie10','DC League of Super-Pets','27-07-2022',183,'summary1', 1, "https://image.tmdb.org/t/p/w300/r7XifzvtezNt31ypvsmb6Oqxw49.jpg",'genre1'),
('movie12','Prey','02-08-2022',183,'summary1', 8, "https://image.tmdb.org/t/p/w300/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg",'genre1'),
('movie14','Inexorable','06-04-2022',183,'summary1', 6, "https://image.tmdb.org/t/p/w300/iiclsw6zgRJz5D5Cc6sn4Cs9GQo.jpg",'genre1'),
('movie15','Top Gun: Maverick','24-05-2022',183,'summary1', 8.3, "https://image.tmdb.org/t/p/w300/62HCnUTziyWcpDaBO2i1DX17ljH.jpg",'genre1'),
('movie16','Avatar','10-12-2009',183,'summary1', 9.5, "https://image.tmdb.org/t/p/w300/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",'genre1'),
('movie17','Seoul Vibe','26-08-2022',183,'summary1', 4.5, "https://image.tmdb.org/t/p/w300/ffX0TL3uKerLXACkuZGWhAPMbAq.jpg",'genre1'),
('movie18','End of the Road','09-09-2022',183,'summary1', 8, "https://image.tmdb.org/t/p/w300/tLFIMuPWJHlTJ6TN8HCOiSD6SdA.jpg",'genre1'),
('movie19','Welcome to the Club','08-09-2022',183,'summary1', 2, "https://image.tmdb.org/t/p/w300/kxB9E6fo0ycHzd13oOTHmGa5Njd.jpg",'genre1'),
('movie20','Interstellar','2014-11-05',183,'summary1', 9, "https://image.tmdb.org/t/p/w300/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg",'genre1'),
('movie21','Troll','2022-12-01',183,'summary1', 6, "https://image.tmdb.org/t/p/w300/9z4jRr43JdtU66P0iy8h18OyLql.jpg",'genre1'),
('movie22','Fantastic Beasts and Where to Find Them','2016-11-16',183,'summary1', 7.5, "https://image.tmdb.org/t/p/w300/h6NYfVUyM6CDURtZSnBpz647Ldd.jpg",'genre1'),
('movie23','Fantastic Beasts: The Crimes of Grindelwald','2018-11-14',183,'summary1', 7, "https://image.tmdb.org/t/p/w300/fMMrl8fD9gRCFJvsx0SuFwkEOop.jpg",'genre1'),
('movie24','Fantastic Beasts: The Secrets of Dumbledore','2022-04-06',183,'summary1', 6.5, "https://image.tmdb.org/t/p/w300/3c5GNLB4yRSLBby0trHoA1DSQxQ.jpg",'genre1');


/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` varchar(45) NOT NULL,
  `name` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tel_number` varchar(45) DEFAULT NULL,
  `payment_card` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('user1','name1','email1','password1','2021-12-31 22:00:00','111222333','11111111'),('user2','name2','email2','password2','2021-12-31 22:00:00','111222333','11111111'),('user3','name3','email3','password3','2021-12-31 22:00:00','111222333','11111111');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_library`
--

DROP TABLE IF EXISTS `movie_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_library` (
  `warchedMovieID` varchar(45) NOT NULL,
  `userID` varchar(45) NOT NULL,
  `watching_progress` float DEFAULT NULL,
  `date_watching_started` datetime DEFAULT NULL,
  PRIMARY KEY (`warchedMovieID`,`userID`),
  KEY `userIDmovie_idx` (`userID`),
  CONSTRAINT `movieIDwatched` FOREIGN KEY (`warchedMovieID`) REFERENCES `movie` (`movieID`),
  CONSTRAINT `userIDmovies` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_library`
--

LOCK TABLES `movie_library` WRITE;
/*!40000 ALTER TABLE `movie_library` DISABLE KEYS */;
INSERT INTO `movie_library` VALUES ('movie1','user1',96.5,'2022-01-01 14:00:00'),('movie1','user2',10,'2022-01-01 14:00:00'),('movie2','user1',100,'2022-01-01 14:00:00');
/*!40000 ALTER TABLE `movie_library` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `seriesID` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `number_of_seasons` int DEFAULT NULL,
  `number_of_episodes` int DEFAULT NULL,
  `release_date` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `genreID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seriesID`),
  KEY `genreIDseries_idx` (`genreID`),
  CONSTRAINT `genreIDseries` FOREIGN KEY (`genreID`) REFERENCES `genre` (`genreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES 
('series1','Wednesday','summary1',1,10,'2022-11-23', 'https://image.tmdb.org/t/p/original/9PFonBhy4cQy7Jz20NpMygczOkv.jpg', 8.8,'genre1'),
('series2','Fringe','summary2',1,10,'2008-09-09', 'https://image.tmdb.org/t/p/original/sY9hg5dLJ93RJOyKEiu1nAtBRND.jpg', 10,'genre2'),
('series3','Lost','summary3',2,15,'2004-09-22', 'https://image.tmdb.org/t/p/original/og6S0aTZU6YUJAbqxeKjCa3kY1E.jpg',9,'genre1'),
('series4','Prison Break','summary3',2,15,'2005-08-29', 'https://image.tmdb.org/t/p/original/5E1BhkCgjLBlqx557Z5yzcN0i88.jpg',8.2,'genre1'),
('series5','The Big Bang Theory','summary3',2,15,'2007-09-24', 'https://image.tmdb.org/t/p/original/ooBGRQBdbGzBxAVfExiO8r7kloA.jpg',7.9,'genre1'),
('series6','Friends','summary3',2,15,'2004-05-06', 'https://image.tmdb.org/t/p/original/f496cm9enuEsZkSPzCwnTESEK5s.jpg',8.3,'genre1'),
('series7','Gotham','summary3',2,15,'2014-09-22', 'https://image.tmdb.org/t/p/original/4XddcRDtnNjYmLRMYpbrhFxsbuq.jpg',8,'genre1'),
('series8','Supernatural','summary3',2,15,'2005-09-13', 'https://image.tmdb.org/t/p/original/KoYWXbnYuS3b0GyQPkbuexlVK9.jpg',8.3,'genre1'),
('series9','Shadow & Bone','summary3',2,15,'2021-04-23', 'https://image.tmdb.org/t/p/original/mrVoyDFiDSqfH4mkoRtccOv2vwh.jpg',7.9,'genre1'),
('series10','The 100','summary3',2,15,'2014-03-19', 'https://image.tmdb.org/t/p/original/wcaDIAG1QdXQLRaj4vC1EFdBT2.jpg',7.9,'genre1'),
('series11','Vikings','summary3',2,15,'2013-03-03', 'https://image.tmdb.org/t/p/w300/bQLrHIRNEkE3PdIWQrZHynQZazu.jpg',9,'genre1'),
('series12','Chernobyl','summary3',2,15,'2019-05-06', 'https://image.tmdb.org/t/p/w300/hlLXt2tOPT6RRnjiUmoxyG1LTFi.jpg',8.5,'genre1'),
('series13','Avatar: The Last Airbender','summary3',2,15,'2005-02-21', 'https://image.tmdb.org/t/p/w300/cHFZA8Tlv03nKTGXhLOYOLtqoSm.jpg',9,'genre1'),
('series14','Sherlock','summary3',2,15,'2010-07-25', 'https://image.tmdb.org/t/p/w300/7WTsnHkbA0FaG6R9twfFde0I9hl.jpg',8.5,'genre1'),
('series15','Black Mirror','summary3',2,15,'2011-12-04', 'https://image.tmdb.org/t/p/w300/7PRddO7z7mcPi21nZTCMGShAyy1.jpg',8.5,'genre1'),
('series16','The Simpsons','summary3',2,15,'1989-12-17', 'https://image.tmdb.org/t/p/w300/zI3E2a3WYma5w8emI35mgq5Iurx.jpg',8,'genre1');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasons` (
  `seasonID` varchar(45) NOT NULL,
  `seriesID` varchar(45) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `reselase_date` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`seasonID`),
  KEY `seriesIDseason_idx` (`seriesID`),
  KEY `seriesID_idx` (`seriesID`),
  CONSTRAINT `seriesIDseasons` FOREIGN KEY (`seriesID`) REFERENCES `series` (`seriesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES ('season1','series1','summary1','2022-01-01',9),('season2','series2','summary2','2022-01-01',8),('season3','series2','summary3','2022-01-01',7);
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodes` (
  `episodeID` varchar(45) NOT NULL,
  `seriesID` varchar(45) DEFAULT NULL,
  `seasonID` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `number_episode` int DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `length` int DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`episodeID`),
  KEY `seriesID_idx` (`seriesID`),
  KEY `seasonID_idx` (`seasonID`),
  CONSTRAINT `seasonID` FOREIGN KEY (`seasonID`) REFERENCES `seasons` (`seasonID`),
  CONSTRAINT `seriesID` FOREIGN KEY (`seriesID`) REFERENCES `series` (`seriesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodes`
--

LOCK TABLES `episodes` WRITE;
/*!40000 ALTER TABLE `episodes` DISABLE KEYS */;
INSERT INTO `episodes` VALUES ('episode1','series1','season1','title1',1,'summary1',65,'2022-01-01',7),('episode2','series1','season1','title2',2,'summary2',45,'2022-02-01',8),('episode3','series1','season1','title3',3,'summary3',55,'2022-03-01',9);
/*!40000 ALTER TABLE `episodes` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `series_library`
--

DROP TABLE IF EXISTS `series_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series_library` (
  `watchedEpisodeID` varchar(45) NOT NULL,
  `userID` varchar(45) NOT NULL,
  `watching_progress` float DEFAULT NULL,
  `date_watching_started` datetime DEFAULT NULL,
  PRIMARY KEY (`watchedEpisodeID`,`userID`),
  KEY `userIDseries_idx` (`userID`),
  CONSTRAINT `episodesIDwatched` FOREIGN KEY (`watchedEpisodeID`) REFERENCES `episodes` (`episodeID`),
  CONSTRAINT `userIDseries` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_library`
--

LOCK TABLES `series_library` WRITE;
/*!40000 ALTER TABLE `series_library` DISABLE KEYS */;
INSERT INTO `series_library` VALUES ('episode1','user1',96,'2022-01-01 13:00:00'),('episode1','user2',34,'2022-01-01 13:00:00'),('episode2','user1',54.6,'2022-01-01 13:00:00');
/*!40000 ALTER TABLE `series_library` ENABLE KEYS */;
UNLOCK TABLES;



-- Dump completed on 2022-12-01 14:28:39
