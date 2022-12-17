-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: country_2
-- ------------------------------------------------------
-- Server version	8.0.31

--
-- Table structure for table `episodes`
--

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
('movie1','End of the Road','09.09.2022',183,'summary1', 6.4, "https://image.tmdb.org/t/p/w300/tLFIMuPWJHlTJ6TN8HCOiSD6SdA.jpg",'genre1'),
('movie2','300','2006-03-09',183,'summary1', 7, "https://image.tmdb.org/t/p/original/9W49fy5G7v9Ed3CXtvMi41YqZtt.jpg",'genre1'),
('movie3','The Lord of the Rings: Fellowship of The Ring','2001-12-18',183,'summary1', 8.4, "https://image.tmdb.org/t/p/original/nSNle6UJNNuEbglNvXt67m1a1Yn.jpg",'genre1'),
('movie4','The Lord of the Rings: Two Towers','2002-12-18',183,'summary1', 8.4, "https://image.tmdb.org/t/p/original/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg",'genre1'),
('movie5','The Lord of the Rings: Return of the King','2003-12-01',183,'summary1', 8.5, "https://image.tmdb.org/t/p/original/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg",'genre1'),
('movie6','Thor: Love and Thunder','06.07.2022',183,'summary1', 6.5, "https://image.tmdb.org/t/p/w300/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg",'genre1'),
('movie7','Once Upon a Time... in Hollywood','11.06.2022',183,'summary1', 7.4, "https://image.tmdb.org/t/p/original/8j58iEBw9pOXFD2L0nt0ZXeHviB.jpg",'genre1'),
('movie8','Inexorable','06.04.2022',183,'summary1', 6, "https://image.tmdb.org/t/p/w300/iiclsw6zgRJz5D5Cc6sn4Cs9GQo.jpg",'genre1'),
('movie9','Top Gun: Maverick','24.05.2022',183,'summary1', 8.3, "https://image.tmdb.org/t/p/w300/62HCnUTziyWcpDaBO2i1DX17ljH.jpg",'genre1'),
('movie10','The Hobbit: An Unexpected Journey','2012-11-26',183,'summary1', 7.3, "https://image.tmdb.org/t/p/original/yHA9Fc37VmpUA5UncTxxo3rTGVA.jpg",'genre1'),
('movie11','The Hobbit: The Desolation of Smaug','2013-12-11',183,'summary1', 7.6, "https://image.tmdb.org/t/p/original/70Ux6sHFIqu0bVFp8xzBZCOQFXM.jpg",'genre1'),
('movie12','The Hobbit: The Battle of the Five Armies','26.08.2022',183,'summary1', 7.3, "https://image.tmdb.org/t/p/original/xT98tLqatZPQApyRmlPL12LtiWp.jpg",'genre1'),
('movie13','The Avengers','2012-04-25',183,'summary1', 7, "https://image.tmdb.org/t/p/original/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg",'genre1'),
('movie14','Batman Begins','2005-06-10',183,'summary1', 7.5, "https://image.tmdb.org/t/p/w300/8RW2runSEc34IwKN2D1aPcJd2UL.jpg",'genre1'),
('movie15','The Dark Knight','2008-07-14',183,'summary1', 9, "https://image.tmdb.org/t/p/w300/qJ2tW6WMUDux911r6m7haRef0WH.jpg",'genre1'),
('movie16','The Dark Knight Rises','2012-07-16',183,'summary1', 8, "https://image.tmdb.org/t/p/w300/hrJUZ5Jo2G3Czy391evhlxgbEdJ.jpg",'genre1'),
('movie17','Back To The Future','1985-07-03',183,'summary1', 8.5, "https://image.tmdb.org/t/p/w300/fNOH9f1aA7XRTzl1sAOx9iF553Q.jpg",'genre1'),
('movie18','Back To The Future 2','1989-11-22',183,'summary1', 7.7, "https://image.tmdb.org/t/p/w300/hQq8xZe5uLjFzSBt4LanNP7SQjl.jpg",'genre1'),
('movie19','Back To The Future 3','1990-05-25',183,'summary1', 7.5, "https://image.tmdb.org/t/p/w300/crzoVQnMzIrRfHtQw0tLBirNfVg.jpg",'genre1'),
('movie20','Alien','1979-05-25',183,'summary1', 8, "https://image.tmdb.org/t/p/w300/vfrQk5IPloGg1v9Rzbh2Eg3VGyM.jpg",'genre1');
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
INSERT INTO `user` VALUES ('user4','name4','email4','password4','2022-01-01 13:00:00','111222333','444444444'),('user5','name5','email5','password5','2022-01-01 13:00:00','111222333','444444444'),('user6','name6','email6','password6','2022-01-01 13:00:00','111222333','444444444');
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
INSERT INTO `movie_library` VALUES ('movie4','user4',98,'2022-01-01 14:00:00'),('movie4','user5',67,'2022-01-01 14:00:00'),('movie4','user6',45,'2022-01-01 14:00:00');
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
('series1','Modern Family','summary1',1,10,'2009-09-23', 'https://image.tmdb.org/t/p/original/fu5vEUHgxkAPmX26ISQXqHmlPMq.jpg', 6.5,'genre1'),
('series2',"Grey's Anatomy",'summary2',1,10,'2005-03-27', 'https://image.tmdb.org/t/p/w300/daSFbrt8QCXV2hSwB0hqYjbj681.jpg', 5,'genre2'),
('series3','Lost','summary3',2,15,'2004-09-22', 'https://image.tmdb.org/t/p/original/og6S0aTZU6YUJAbqxeKjCa3kY1E.jpg',9,'genre1'),
('series4','1899','summary3',2,15,'2022-11-17', 'https://image.tmdb.org/t/p/original/gZleGu1MQVBArH2dlpZ9CGi0hhy.jpg',7.9,'genre1'),
('series5','Dark','summary3',2,15,'2017-12-01', 'https://image.tmdb.org/t/p/original/7yQyDCqSazrYTnmxdQLAZ8YDH87.jpg',8.4,'genre1'),
('series6','Game of Thrones','summary3',2,15,'2011-04-17', 'https://image.tmdb.org/t/p/original/7WUHnWGx5OO145IRxPDUkQSh4C7.jpg',8.4,'genre1'),
('series7','Westworld','summary3',2,15,'2016-10-02', 'https://image.tmdb.org/t/p/original/8MfgyFHf7XEboZJPZXCIDqqiz6e.jpg',8,'genre1'),
('series8','The Walking Dead','summary3',2,15,'2010-10-31', 'https://image.tmdb.org/t/p/original/yaOB2Y8GcoXwjNQ3apq67bMbNHF.jpg',8.1,'genre1'),
('series9','Breaking Bad','summary3',2,15,'2008-01-20', 'https://image.tmdb.org/t/p/original/ggFHVNu6YYI5L9pCfOacjizRGt.jpg',8.9,'genre1'),
('series10','Stranger Things','summary3',2,15,'2016-07-15', 'https://image.tmdb.org/t/p/original/49WJfeN0moxb9IPfGn8AIqMGskD.jpg',8.6,'genre1'),
('series11','The X-Files','summary3',2,15,'1993-09-10', 'https://image.tmdb.org/t/p/w300/5BD0kiTGnDxONqdrsswTewnk6WH.jpg',8.5,'genre1'),
('series12','Futurama','summary3',2,15,'1999-03-28', 'https://image.tmdb.org/t/p/w300/k5e8kAq9jpaSmgvFM10su5LXGFR.jpg', 9,'genre1'),
('series13','Planet Earth','summary3',2,15,'2006-03-05', 'https://image.tmdb.org/t/p/w300/mfXulHiALTloIqivuC4Q3lI3RGw.jpg', 8,'genre1'),
('series14','Planet Earth 2','summary3',2,15,'2016-12-11', 'https://image.tmdb.org/t/p/w300/tUKomxy50suT4MyxjYfOJDkZUq3.jpg', 9.5,'genre1'),
('series15','Travelers','summary3',2,15,'2018-12-14', 'https://image.tmdb.org/t/p/w300/aUVeyeyTrQrSFuUkqLCT8FtV7pp.jpg',7.5,'genre1'),
('series16','Squid Game','summary3',2,15,'2021-09-17', 'https://image.tmdb.org/t/p/w300/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg', 8,'genre1');
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
INSERT INTO `seasons` VALUES ('season4','series4','summary4','2022-01-01',6),('season5','series5','summary5','2022-01-01',7),('season6','series6','summary6','2022-01-01',8);
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;


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
INSERT INTO `episodes` VALUES ('episode4','series4','season4','title4',1,'summary4',45,'2022-01-12',6),('episode5','series5','season5','title5',1,'summary5',56,'2022-01-12',7),('episode6','series6','season6','title6',1,'summary6',61,'2022-01-12',9);
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
INSERT INTO `series_library` VALUES ('episode4','user4',67,'2022-12-14 12:00:00'),('episode4','user5',85,'2022-12-14 12:00:00'),('episode5','user4',57,'2022-12-14 12:00:00');
/*!40000 ALTER TABLE `series_library` ENABLE KEYS */;
UNLOCK TABLES;


-- Dump completed on 2022-12-01 14:28:58
