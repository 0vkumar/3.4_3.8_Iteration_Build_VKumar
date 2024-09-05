-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: VaroonK_2024_Assessment
-- ------------------------------------------------------
-- Server version 	8.0.39-0ubuntu0.22.04.1
-- Date: Thu, 05 Sep 2024 00:32:51 +0000

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Album` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `main` (`Album_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `album` VALUES (1,'Listen'),(2,'Metals'),(3,'From Detroit to St Germain'),(4,'The Best of Arlo Guthrie'),(5,'Under The Covers: Vol. 2'),(6,'All Thing Bright And Beautiful - Deluxe'),(7,'American Heart - Single'),(8,'American Pie'),(9,'Aqualung'),(10,'I Hope You Dance'),(11,'Greatest Hits'),(12,'Big Jet Plane [EP]'),(13,'Bright Morning Stars'),(14,'The Definitive Collection'),(15,'Earl Klugh'),(16,'Bring Me Home'),(17,'Barton Hollow'),(18,'As Good As It Gets'),(19,'At Budokan'),(20,'Ceremonial and War Dances'),(21,'Hoea'),(22,'Fallen'),(23,'Five Minutes With Arctic Monkeys'),(24,'Shona laing'),(25,'Celtica 1'),(26,'Soul Divas'),(27,'Food In The Belly'),(28,'One More from the Road [MG]'),(29,'Lights of the Pacific: The Very Best Of'),(30,'The Collection Vol.1 CD2'),(31,'Primitive Man [Bonus Tracks]'),(32,'Extended Play'),(33,'Til We Outnumber \'Em: Woody Guthrie'),(34,'Oceania'),(35,'Babel'),(36,'The Collection Vol.2 CD1'),(37,'Drunken Lullabies'),(38,'I\'m in the Mood for Dancing'),(39,'A Place On Earth - The Greatest Hits (CD 1/2)'),(40,'The Best of Nancy Wilson'),(41,'10 Years Of Hits'),(42,'Gael Force'),(43,'Live! Not Enough Shouting'),(44,'Electric Music For The Mind And The Mind'),(45,'The Division Bell'),(46,'Fields of Fire'),(47,'Sarah Slean'),(48,'Strange Mercy'),(49,'Finally We Are No One'),(50,'Shamrock Diaries'),(51,'A Momentary Lapse Of Reason'),(52,'Continued Silence EP'),(53,'Watermark'),(54,'Early Alchemy'),(55,'CMT Crossroads'),(56,'The Cross of Changes'),(57,'A Hundred Miles or More: A Collection'),(58,'Three Decades of Males Disc 2'),(59,'Footrot Flats: A Dog\'s Tale'),(60,'Listen: The Very Best of Herbs'),(61,'Slow Train Coming'),(62,'Spanish Train & Other Stories'),(63,'Running on Empty'),(64,'Say You Will'),(65,'Walk Like An Egyptian: The Best of CD 2'),(66,'Lily'),(67,'Love This Giant'),(68,'Flying Cowboys'),(69,'Fundamental'),(70,'His Young Heart'),(71,'California'),(72,'To Love Somebody (1969)'),(73,'The Best of Joe Cocker [Mushroom]'),(74,'Music for Lovers'),(75,'Smilewound'),(76,'Songs from the Front Lawn'),(77,'Live In Texas (7 June 2006)'),(78,'Dixie Chicks'),(79,'Zombie (UK Single - Part 1) [Island - CID 600-854 110-2]');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `album` with 79 row(s)
--

--
-- Table structure for table `artist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Artist` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `songtoartist` (`Artist_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `artist` VALUES (1,'A Flock of Seagulls'),(2,'Acoustic Alchemy'),(3,'Alison Krauss'),(4,'Angus & Julia Stone'),(5,'Arctic Monkeys'),(6,'Arlo Guthrie'),(7,'As Good As It Gets'),(8,'Average White Band'),(9,'Belinda Carlisle'),(10,'Big Country '),(11,'Black Lodge Singers'),(12,'Bob Dylan'),(13,'Chris de Burgh'),(14,'Chris Rea'),(15,'Country Joe & The Fish'),(16,'Daughter'),(17,'Dave Dobbyn & Herbs'),(18,'David Byrne & St. Vincent'),(19,'Dixie Chicks'),(20,'Dixie Chicks & James Taylor'),(21,'Don McLean'),(22,'Earl Klugh'),(23,'Enigma'),(24,'Enya'),(25,'Evanescence'),(26,'Faith Hill'),(27,'Feist'),(28,'Fleetwood Mac'),(29,'Flogging Molly'),(30,'Gael Force'),(31,'Gin Wigmore'),(32,'Herbs'),(33,'Icehouse'),(34,'Imagine Dragons'),(35,'Jackson Browne'),(36,'James Taylor'),(37,'Jethro Tull'),(38,'Joe Cocker'),(39,'Lee Ann Womack'),(40,'Lynyrd Skynyrd'),(41,'Maria Muldaur'),(42,'Matthew Sweet & Susanna Hoffs'),(43,'Mother Earth'),(44,'Mum'),(45,'Mumford & Sons'),(46,'Nancy Wilson'),(47,'Nina Simone'),(48,'Oceania'),(49,'Owl City'),(50,'Pet Shop Boys'),(51,'Pink Floyd'),(52,'Rickie Lee Jones'),(53,'Ronan Keating'),(54,'Sarah Slean'),(55,'Shona laing'),(56,'Soul Divas'),(57,'St Germain'),(58,'St. Vincent'),(59,'Stevie Wonder'),(60,'The Bangles'),(61,'The Civil Wars'),(62,'The Cranberries'),(63,'The Front Lawn'),(64,'The Nolans'),(65,'The Wailin\' Jennys'),(66,'Three Decades of Males'),(67,'Varios'),(68,'Wai.Tai'),(69,'Wendy Matthews'),(70,'Wilson Phillips'),(71,'Wolfstone'),(72,'Xavier Rudd');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `artist` with 72 row(s)
--

--
-- Table structure for table `genre`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Genre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `genre` VALUES (1,'Acoustic'),(2,'Alternative'),(3,'Alternative Metal / Nu-Metal / Gothic Rock'),(4,'Alternative Rock / Post-Grunge'),(5,'Avante-Garde'),(6,'Bluegrass'),(7,'Blues'),(8,'Celtic'),(9,'Country'),(10,'Dance'),(11,'Easy Listening - Female'),(12,'Easy Listening - Group'),(13,'Easy Listening - Male'),(14,'Folk'),(15,'Folk Cont'),(16,'Folk Rock'),(17,'Folk UK'),(18,'Folk US'),(19,'Goa'),(20,'Indie'),(21,'Indie Rock'),(22,'Indie Rock / Brit Pop'),(23,'Jazz'),(24,'Maori, Ethnic, New Age'),(25,'Mellow'),(26,'Native American, Ethnic'),(27,'New Age'),(28,'New Wave'),(29,'Pop'),(30,'Post-Rock'),(31,'Progressive Rock'),(32,'Psychadelic'),(33,'R&B'),(34,'Reggae'),(35,'Rock'),(36,'Rock Celtic'),(37,'Soul'),(38,'Vocal'),(39,'Woman'),(40,'World');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `genre` with 40 row(s)
--

--
-- Table structure for table `main`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main` (
  `Song_ID` int NOT NULL AUTO_INCREMENT,
  `Filename` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Title` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Track#` int NOT NULL,
  `Duration` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Size` int NOT NULL,
  `Album_ID` int NOT NULL,
  `Artist_ID` int NOT NULL,
  `Genre_ID` int NOT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `ID` (`Song_ID`),
  KEY `Album_ID` (`Album_ID`),
  KEY `Artist_ID` (`Artist_ID`),
  KEY `Genre_ID` (`Genre_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `main` VALUES (1,'2-30.mp3','Listen',7,'01:00',1446,44,1,28),(2,'A Commotion.mp3','A Commotion',5,'03:53',6904,49,27,14),(3,'Alabama Blues.mp3','Alabama Blues',2,'07:19',6865,34,57,19),(4,'Alice\'s Restaurant Massacree.mp3','Alice\'s Restaurant Massacree',1,'18:31',34731,65,6,14),(5,'All The Young Dudes.mp3','All The Young Dudes (David Bowie)',5,'03:52',9081,76,42,35),(6,'Alligator Sky.mp3','Alligator Sky',13,'03:15',6176,5,49,29),(7,'American Heart.mp3','American Heart',1,'03:50',9069,6,26,9),(8,'American Pie.mp3','American Pie',1,'08:32',20045,7,21,13),(9,'Aqualung.mp3','Aqualung',1,'06:37',11596,8,37,35),(10,'Ashes By Now.mp3','Ashes By Now',7,'04:11',9851,40,39,9),(11,'Ashes By Now.mp3','Ashes By Now',8,'04:12',9880,37,39,9),(12,'Big Jet Plane (Radio Edit).mp3','Big Jet Plane (Radio Edit)',1,'03:43',8776,13,4,18),(13,'Bird Song.mp3','Bird Song',3,'03:33',3338,14,65,14),(14,'Boogie on Reggae Woman.mp3','Boogie on Reggae Woman',4,'05:14',10894,71,59,33),(15,'Brazilian Stomp.mp3','Brazilian Stomp',3,'05:39',10605,23,22,23),(16,'Bring Me Home.mp3','Bring Me Home',5,'06:05',11428,15,43,35),(17,'C\'est La Mort.mp3','C\'est La Mort',3,'02:29',4094,12,61,18),(18,'Chicken On A Raft.mp3','Chicken On A Raft',6,'03:30',6583,9,7,18),(19,'Don\'t Think Twice, It\'s All Right.mp3','Don\'t Think Twice, It\'s All Right',5,'05:01',11766,10,12,15),(20,'Eagle Plume Dancer.mp3','Eagle Plume Dancer',7,'02:25',2269,18,11,26),(21,'Earth And Sky.mp3','Earth & Sky',3,'03:28',5984,39,68,24),(22,'Everybody\'s Fool.mp3','Everybody\'s Fool',3,'03:17',7893,27,25,3),(23,'Fake Tales of San Francisco.mp3','Fake Tales of San Francisco',1,'03:01',7271,30,5,22),(24,'Fear.mp3','Hey',3,'04:22',4101,58,55,8),(25,'Fields of Gold.mp3','Fields of Gold',15,'03:34',8382,17,67,36),(26,'Fire.mp3','Fire',7,'03:26',6465,62,56,37),(27,'Fortune Teller.mp3','Fortune Teller',4,'03:27',4866,32,72,25),(28,'Free Bird Live (Fox Theater).mp3','Free Bird Live (Fox Theater)',12,'13:36',25506,52,40,35),(29,'French Letter.mp3','French Letter',3,'04:36',8646,42,32,34),(30,'Got The Love - 2009.mp3','Got The Love',12,'03:47',8874,68,8,37),(31,'Great Southern Land.mp3','Great Southern Land',1,'05:19',12468,53,33,35),(32,'Hallelujah.mp3','Hallelujah',3,'03:31',8263,26,31,40),(33,'Hard Travelin\' Hootenanny.mp3','Hard Travelin\' Hootenanny',1,'03:30',6588,74,6,14),(34,'He Aha Ra Te Manu.mp3','He Aha Ra Te Manu',2,'02:23',4444,39,68,24),(35,'Hineraukatauri (Goddess of Music).mp3','Hineraukatauri (Goddess of Music)',4,'04:54',9222,51,48,40),(36,'Hopeless Wanderer.mp3','Hopeless Wanderer',9,'05:07',10236,11,45,16),(37,'How Do You Plead.mp3','How Do You Plead',7,'06:40',6251,34,57,19),(38,'How Sweet Can You Get - 2009.mp3','How Sweet Can You Get',9,'03:58',9330,69,8,37),(39,'If I Ever Leave This World Alive.mp3','If I Ever Leave This World Alive',4,'03:21',4722,22,29,36),(40,'I\'ll Be Long Gone.mp3','I\'ll Be Long Gone',4,'05:56',11141,15,43,27),(41,'I\'m In The Mood For Dancing.mp3','I\'m In The Mood For Dancing',1,'02:59',5601,41,64,12),(42,'Leave A Light On.mp3','Leave A Light On',4,'04:16',4006,4,9,11),(43,'Like someone In love.mp3','Like Someone In Love',8,'02:22',3368,67,46,38),(44,'Little Black Book.mp3','Little Black Book',10,'04:12',3951,4,9,11),(45,'Lost For Words.mp3','Lost For Words',9,'03:48',5366,1,53,10),(46,'Maggie.mp3','Maggie',11,'03:41',6914,36,30,8),(47,'Maggie.mp3','Maggie',14,'04:47',7862,47,71,36),(48,'Marijuana.mp3','Marijuana',14,'02:32',3575,25,15,32),(49,'Marooned.mp3','Marooned',4,'05:29',10384,72,51,31),(50,'Mary.mp3','Mary',14,'03:53',9109,28,10,2),(51,'Mary.mp3','Mary',1,'04:04',3818,55,54,2),(52,'Messages.mp3','Messages',2,'04:02',5686,32,72,25),(53,'Northern Lights.mp3','Northern Lights',5,'03:33',8359,64,58,21),(54,'Now There\'s That Fear Again.mp3','Now There\'s That Fear Again',7,'03:56',5550,29,44,30),(55,'One Golden Rule.mp3','One Golden Rule',5,'04:30',10569,57,14,7),(56,'One Slip.mp3','One Slip',4,'05:08',10086,3,51,31),(57,'Parihaka.mp3','Parihaka',9,'04:16',8028,42,32,34),(58,'Radioactive.mp3','Radioactive',1,'03:08',7414,20,34,21),(59,'River.mp3','River',9,'03:12',7553,78,24,2),(60,'Sarah Victoria.mp3','Sarah Victoria',2,'01:54',3692,24,2,1),(61,'Shower The People.mp3','Shower The People',9,'02:03',2906,19,20,9),(62,'Shower The People.mp3','Shower The People',11,'04:01',9426,37,36,35),(63,'Silent Warrior.mp3','Silent Warrior',5,'06:09',11546,70,23,27),(64,'Simple Love.mp3','Simple Love',2,'04:44',4444,2,3,6),(65,'Slice of Heaven.mp3','Slice of Heaven',1,'04:08',9693,73,66,13),(66,'Slice of Heaven.mp3','Slice of Heaven',10,'04:37',4347,33,17,29),(67,'Slice of Heaven.mp3','Slice of Heaven',11,'04:37',8667,45,32,34),(68,'Slow Train.mp3','Slow Train',4,'05:59',14107,59,12,16),(69,'Spanish Train.mp3','Spanish Train',1,'05:02',11841,63,13,13),(70,'Stay.mp3','Sarah Slean',1,'02:42',2551,55,54,2),(71,'Stay.mp3','Stay',10,'03:24',7990,54,35,35),(72,'Steal Your Heart Away.mp3','Steal Your Heart Away',13,'03:33',5011,56,28,7),(73,'Sweet Baby James.mp3','Sweet Baby James',5,'03:25',4015,19,20,9),(74,'Sweet Baby James.mp3','Sweet Baby James',4,'02:54',6818,37,36,35),(75,'Tell Me.mp3','Tell me',14,'02:15',2884,77,60,29),(76,'Fridays Child.mp3','Fridays Child',1,'04:03',7608,43,69,39),(77,'The Forest Awakes.mp3','The Forest Awakes',6,'04:52',11442,48,18,2),(78,'The Horses.mp3','The Horses',1,'04:52',9158,31,52,6),(79,'The Mother.mp3','The Mother',6,'03:15',4594,32,72,25),(80,'The Sodom And Gomorrah Show.mp3','The Sodom And Gomorrah Show',2,'05:19',7496,35,50,10),(81,'The Times They Are A-Changin\'.mp3','The Times They Are A-Changin\'',11,'05:28',12854,10,12,15),(82,'The Traveller.mp3','The Traveller',6,'03:26',5677,44,1,28),(83,'The Woods.mp3','The Woods',2,'03:40',8959,38,16,20),(84,'Til We Outnumber \'Em (This Land Is You Land).mp3','Til We Outnumber \'Em (This Land Is You Land)',19,'02:37',4929,74,6,14),(85,'Turn! Turn! Turn! (To Everything There Is A Season).mp3','Turn! Turn! Turn! (To Everything There Is A Season)',6,'02:40',5025,16,70,29),(86,'Turn! Turn! Turn!.mp3','Turn! Turn! Turn!',2,'03:41',3463,75,47,23),(87,'Unchain My Heart [90\'s Version].mp3','Unchain My Heart [90\'s Version]',1,'05:06',11972,66,38,35),(88,'Waiting For You.mp3','Waiting For You',11,'03:24',6488,24,2,1),(89,'We Can Let It Happen Tonight.mp3','We Can Let It Happen Tonight',6,'04:10',9784,50,41,23),(90,'When Girls Collide.mp3','When Girls Collide',3,'05:00',11870,60,44,20),(91,'When You Come Back Home.mp3','When You Come Back Home',1,'03:37',3408,61,63,5),(92,'You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me.mp3','You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me',4,'02:22',5771,46,5,22),(93,'You Were Mine.mp3','You Were Mine',5,'03:37',3409,21,19,9),(94,'You\'re Just A Country Boy.mp3','You\'re Just A Country Boy',1,'03:28',3258,2,3,6),(95,'Zombie.mp3','Zombie',1,'04:12',9874,79,62,4);
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `main` with 95 row(s)
--

--
-- Table structure for table `songtoartist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songtoartist` (
  `Song_ID` int NOT NULL,
  `Artist_ID` int NOT NULL,
  KEY `Song_ID` (`Song_ID`),
  KEY `Artist_ID` (`Artist_ID`),
  CONSTRAINT `songtoartist_ibfk_1` FOREIGN KEY (`Song_ID`) REFERENCES `main` (`Song_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songtoartist`
--

LOCK TABLES `songtoartist` WRITE;
/*!40000 ALTER TABLE `songtoartist` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `songtoartist` VALUES (1,1),(2,27),(3,57),(4,6),(5,42),(6,49),(7,26),(8,21),(9,37),(10,39),(11,39),(12,4),(13,65),(14,59),(15,22),(16,43),(17,61),(18,7),(19,12),(20,11),(21,68),(22,25),(23,5),(24,55),(25,67),(26,56),(27,72),(28,40),(29,32),(30,8),(31,33),(32,31),(33,6),(34,68),(35,48),(36,45),(37,57),(38,8),(39,29),(40,43),(41,64),(42,9),(43,46),(44,9),(45,53),(46,30),(47,71),(48,15),(49,51),(50,10),(51,54),(52,72),(53,58),(54,44),(55,14),(56,51),(57,32),(58,34),(59,24),(60,2),(61,20),(62,36),(63,23),(64,3),(65,66),(66,17),(67,32),(68,12),(69,13),(70,54),(71,35),(72,28),(73,20),(74,36),(75,60),(76,69),(77,18),(78,52),(79,72),(80,50),(81,12),(82,1),(83,16),(84,6),(85,70),(86,47),(87,38),(88,2),(89,41),(90,44),(91,63),(92,5),(93,19),(94,3),(95,62);
/*!40000 ALTER TABLE `songtoartist` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `songtoartist` with 95 row(s)
--

--
-- Table structure for table `songtogenre`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songtogenre` (
  `Song_ID` int NOT NULL,
  `Genre_ID` int NOT NULL,
  KEY `Song_ID` (`Song_ID`),
  KEY `Genre_ID` (`Genre_ID`),
  CONSTRAINT `songtogenre_ibfk_2` FOREIGN KEY (`Genre_ID`) REFERENCES `genre` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `songtogenre_ibfk_3` FOREIGN KEY (`Song_ID`) REFERENCES `main` (`Song_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songtogenre`
--

LOCK TABLES `songtogenre` WRITE;
/*!40000 ALTER TABLE `songtogenre` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `songtogenre` VALUES (1,28),(2,14),(3,19),(4,14),(5,35),(6,29),(7,9),(8,13),(9,35),(10,9),(11,9),(12,18),(13,14),(14,33),(15,23),(16,35),(17,18),(18,18),(19,15),(20,26),(21,24),(22,3),(23,22),(24,8),(25,36),(26,37),(27,25),(28,35),(29,34),(30,37),(31,35),(32,40),(33,14),(34,24),(35,40),(36,16),(37,19),(38,37),(39,36),(40,27),(41,12),(42,11),(43,38),(44,11),(45,10),(46,8),(47,36),(48,32),(49,31),(50,2),(51,2),(52,25),(53,21),(54,30),(55,7),(56,31),(57,34),(58,21),(59,2),(60,1),(61,9),(62,35),(63,27),(64,6),(65,13),(66,29),(67,34),(68,16),(69,13),(70,2),(71,35),(72,7),(73,9),(74,35),(75,29),(76,39),(77,2),(78,6),(79,25),(80,10),(81,15),(82,28),(83,20),(84,14),(85,29),(86,23),(87,35),(88,1),(89,23),(90,20),(91,5),(92,22),(93,9),(94,6),(95,4);
/*!40000 ALTER TABLE `songtogenre` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `songtogenre` with 95 row(s)
--

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `User_ID` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Password` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `users` VALUES ('Graeme','Dojustly'),('VaroonK','evolutionIX'),('Lime','fortnite');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `users` with 3 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET AUTOCOMMIT=@OLD_AUTOCOMMIT */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Thu, 05 Sep 2024 00:32:51 +0000
