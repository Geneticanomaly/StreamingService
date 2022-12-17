-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: country_3
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
('movie1','Top Gun: Maverick','24-05-2022',183,'summary1', 8.3, "https://image.tmdb.org/t/p/w300/62HCnUTziyWcpDaBO2i1DX17ljH.jpg",'genre1'),
('movie2','Avengers: Age of Ultron','22-04-2015',183,'summary1', 7.0, "https://image.tmdb.org/t/p/original/4ssDuvEDkSArWEdyBl2X5EHvYKU.jpg",'genre1'),
('movie3','Pacific Rim','2013-07-11',183,'summary1', 8, "https://image.tmdb.org/t/p/original/5bzMFMdkkDsv7nJPEyCqMdl1Cr6.jpg",'genre1'),
('movie4','King Kong','2005-12-12',183,'summary1', 9.5, "https://image.tmdb.org/t/p/original/6a2HY6UmD7XiDD3NokgaBAXEsD2.jpg",'genre1'),
('movie5','Avatar','10-12-2009',183,'summary1', 9.5, "https://image.tmdb.org/t/p/w300/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",'genre1'),
('movie6','Avatar: The Way of Water','2022-12-14',183,'summary1', 9, "https://image.tmdb.org/t/p/original/94xxm5701CzOdJdUEdIuwqZaowx.jpg",'genre1'),
('movie7','Avengers: Infinity War','2018-04-25',183,'summary1', 8.5, "https://image.tmdb.org/t/p/original/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg",'genre1'),
('movie8','Avengers: Endgame','2019-04-24',183,'summary1', 8, "https://image.tmdb.org/t/p/original/or06FN3Dka5tukK1e9sl16pB3iy.jpg",'genre1'),
('movie9','Godzilla vs. Kong','2021-03-24',183,'summary1', 7, "https://image.tmdb.org/t/p/original/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg",'genre1'),
('movie10','Pacific Rim: Uprising','2018-03-21',183,'summary1', 6, "https://image.tmdb.org/t/p/original/v5HlmJK9bdeHxN2QhaFP1ivjX3U.jpg",'genre1'),
('movie11','Godzilla: King of the Monsters','2019-05-29',183,'summary1', 7.5, "https://image.tmdb.org/t/p/original/fQ40gmFM4p03tXwMxQQKh2cCBW4.jpg",'genre1'),
('movie12','Godzilla','2014-05-14',183,'summary1', 8, "https://image.tmdb.org/t/p/original/inNN466SKHNjbGmpfhfsaPQNleS.jpg",'genre1'),
('movie13','The Northman','2022-04-07',183,'summary1', 9, "https://image.tmdb.org/t/p/original/aSSJMnHknzKjlZ6zybwD7eyJ4Po.jpg",'genre1'),
('movie14','Kong: Skull Island','2014-05-14',183,'summary1', 6, "https://image.tmdb.org/t/p/original/r2517Vz9EhDhj88qwbDVj8DCRZN.jpg",'genre1'),
('movie15','Joker','2019-10-01',183,'summary1', 8.2, "https://image.tmdb.org/t/p/w300/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg",'genre1'),
('movie16','AVP: Alien vs. Predator','2004-08-12',183,'summary1', 6, "https://image.tmdb.org/t/p/w300/tWumK9OHGbNwrmbDWFau5MqlRkh.jpg",'genre1'),
('movie17','Up','2009-05-28',183,'summary1', 7.5, "https://image.tmdb.org/t/p/w300/vpbaStTMt8qqXaEgnOR2EE4DNJk.jpg",'genre1'),
('movie18','1917','2019-12-25',183,'summary1', 8, "https://image.tmdb.org/t/p/w300/iZf0KyrE25z1sage4SYFLCCrMi9.jpg",'genre1'),
('movie19','The Thing','1982-06-25',183,'summary1', 8, "https://image.tmdb.org/t/p/w300/tzGY49kseSE9QAKk47uuDGwnSCu.jpg",'genre1'),
('movie20','The Shining','1980-05-23',183,'summary1', 8.5, "https://image.tmdb.org/t/p/w300/xazWoLealQwEgqZ89MLZklLZD3k.jpg",'genre1');
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
INSERT INTO `user` VALUES ('user7','name7','email7','password7','2022-01-01 10:00:00','111222333','111111111'),('user8','name8','email8','password8','2022-01-01 10:00:00','111222333','111111111'),('user9','name9','email9','password9','2022-01-01 10:00:00','111222333','111111111');
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
INSERT INTO `movie_library` VALUES ('movie7','user7',23,'2022-01-01 16:30:00'),('movie8','user8',34,'2022-01-01 16:30:00'),('movie9','user9',12,'2022-01-01 16:30:00');
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
('series1','Fringe','summary2',1,10,'2008-09-09', 'https://image.tmdb.org/t/p/original/sY9hg5dLJ93RJOyKEiu1nAtBRND.jpg', 10,'genre2'),
('series2',"Grey's Anatomy",'summary2',1,10,'2005-03-27', 'https://image.tmdb.org/t/p/w300/daSFbrt8QCXV2hSwB0hqYjbj681.jpg', 6.5,'genre2'),
('series3','Firefly','summary3',2,15,'2002-09-20', 'https://image.tmdb.org/t/p/original/vZcKsy4sGAvWMVqLluwYuoi11Kj.jpg',8.3,'genre1'),
('series4','The Expanse','summary3',2,15,'2015-12-14', 'https://image.tmdb.org/t/p/original/lLidDKUYF5pcmH7zaM6J6nyRQGG.jpg',7,'genre1'),
('series5','Dark','summary3',2,15,'2017-12-01', 'https://image.tmdb.org/t/p/original/7yQyDCqSazrYTnmxdQLAZ8YDH87.jpg',9,'genre1'),
('series6','The Rings of Power','summary3',2,15,'2022-09-01', 'https://image.tmdb.org/t/p/original/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg',7.6,'genre1'),
('series7','The Boys','summary3',2,15,'2019-07-25', 'https://image.tmdb.org/t/p/original/stTEycfG9928HYGEISBFaG1ngjM.jpg',8.5,'genre1'),
('series8','Wednesday','summary1',1,10,'2022-11-23', 'https://image.tmdb.org/t/p/original/9PFonBhy4cQy7Jz20NpMygczOkv.jpg', 8.8,'genre1'),
('series9','Better Call Saul','summary3',2,15,'2015-02-08', 'https://image.tmdb.org/t/p/original/iB6x0bA9XdP4MH3i1zXjMzvTNSY.jpg',8.6,'genre1'),
('series10','The Office','summary3',2,15,'2005-03-24', 'https://image.tmdb.org/t/p/original/qWnJzyZhyy74gjpSjIXWmuk0ifX.jpg',6,'genre1'),
('series11','The Peaky Blinders','summary3',2,15,'2013-09-12', 'https://image.tmdb.org/t/p/w300/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg',8.5,'genre1'),
('series12','Suits','summary3',2,15,'2011-06-23', 'https://image.tmdb.org/t/p/w300/vQiryp6LioFxQThywxbC6TuoDjy.jpg',8,'genre1'),
('series13','Mindhunter','summary3',2,15,'2017-10-13', 'https://image.tmdb.org/t/p/w300/fbKE87mojpIETWepSbD5Qt741fp.jpg',8,'genre1'),
('series14','Orange Is The New Black','summary3',2,15,'2013-07-11', 'https://image.tmdb.org/t/p/w300/ekaa7YjGPTkFLcPhwWXTnARuCEU.jpg',7,'genre1'),
('series15','House of Cards','summary3',2,15,'2018-11-02', 'https://image.tmdb.org/t/p/w300/hKWxWjFwnMvkWQawbhvC0Y7ygQ8.jpg',8,'genre1'),
('series16','Ozark','summary3',2,15,'2017-07-21', 'https://image.tmdb.org/t/p/w300/m73bD8VjibSKuTWg597GQVyVhSb.jpg',10,'genre1');
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
INSERT INTO `seasons` VALUES ('season7','series7','summary7','2022-01-01',8),('season8','series8','summary8','2022-01-01',7),('season9','series9','summary9','2022-01-01',9);
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
INSERT INTO `episodes` VALUES ('episode7','series7','season7','title7',2,'summary7',45,'2022-01-01',7),('episode8','series8','season8','title8',4,'summary8',21,'2022-01-01',4),('episode9','series9','season9','title9',5,'summary9',61,'2022-01-01',6);
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
  `userID` varchar(45) DEFAULT NULL,
  `watching_progress` float DEFAULT NULL,
  `date_watching_started` datetime DEFAULT NULL,
  PRIMARY KEY (`watchedEpisodeID`),
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
INSERT INTO `series_library` VALUES ('episode7','user7',100,'2022-01-01 14:24:00'),('episode8','user8',12,'2022-01-01 14:24:00'),('episode9','user8',32,'2022-01-01 14:24:00');
/*!40000 ALTER TABLE `series_library` ENABLE KEYS */;
UNLOCK TABLES;



-- Dump completed on 2022-12-01 14:29:13
