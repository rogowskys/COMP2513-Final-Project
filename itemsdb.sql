-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: itemsdb
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `serial` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (11,'Beer - Sleeman Fine Porter','Two-FOUR','2021-07-12','bMaU6h','Information Services Group, Inc.'),(13,'Greens Mustard','Quest','2021-10-20','d5KtwnigIdi','Modern Media Acquisition Corp.'),(14,'Cranberries - Dry','Verano','2020-11-21','XPjV0KwMz','PhotoMedex, Inc.'),(15,'Wine - Niagara Peninsula Vqa','Sonoma','2021-03-15','geigSytt','Exactech, Inc.'),(16,'Tart Shells - Savory, 2','XJ','2021-07-24','U8Tgrro23fM','First American Corporation (The)'),(17,'Banana Turning','Mazda3','2022-04-06','mdK6YLakyD','Uni-Pixel, Inc.'),(18,'Wine - Toasted Head','A4','2021-12-12','z6J8sROmw1v','CNO Financial Group, Inc.'),(19,'Ecolab Digiclean Mild Fm','Corvette','2021-07-14','wtneCTpTo','Medallion Financial Corp.'),(20,'Salt - Seasoned','Mountaineer','2020-10-20','5gVAuwLxhkd','Bridgford Foods Corporation'),(21,'Chocolate - Milk, Callets','Camry Solara','2021-02-20','jtxNuX','PIMCO California Municipal Income Fund III'),(22,'Shrimp - 21/25, Peel And Deviened','X-Type','2020-11-16','5PAoZOewuSCX','Fang Holdings Limited'),(23,'Cookie Dough - Chunky','Aura','2021-10-01','pDSKTms','CHF Solutions, Inc.'),(24,'Wine - Red, Concha Y Toro','Coupe','2021-11-23','ugVmqK','Navios Maritime Holdings Inc.'),(25,'Steam Pan - Half Size Deep','DBS','2021-07-28','5w1nVo7','WisdomTree China ex-State-Owned Enterprises Fund'),(26,'Cleaner - Pine Sol','Lumina APV','2021-08-26','mOLv77JEVDch','Chemed Corp.'),(27,'Wine - Montecillo Rioja Crianza','G-Class','2021-10-05','wtCVu2','PowerShares DWA SmallCap Momentum Portfolio'),(28,'Mushroom - Enoki, Dry','57','2020-11-10','fjvb1k1T','Reliv\' International, Inc.'),(29,'Sping Loaded Cup Dispenser','LeSabre','2021-12-24','a3CHcIO','First Trust NASDAQ Clean Edge Green Energy Index Fund'),(30,'Tart - Raisin And Pecan','MX-3','2021-08-08','0cdWSJImT2','American Homes 4 Rent'),(31,'Napkin - Beverage 1 Ply','E350','2021-11-15','XpYotzwENqj','Neustar, Inc.'),(32,'Squash - Acorn','E-Series','2021-11-11','zjrBO6lti','TopBuild Corp.'),(33,'Noodles - Cellophane, Thin','Corolla','2022-01-21','rWRT5NV8ZC1','Bel Fuse Inc.'),(34,'Syrup - Monin - Granny Smith','2500','2022-03-30','j37riI','American Homes 4 Rent'),(35,'Wine - German Riesling','Express 1500','2021-01-10','8wcAAoHa3xy9','M&T Bank Corporation'),(36,'Sauce - Apple, Unsweetened','Celica','2022-02-19','TPp9Y9JB','RigNet, Inc.'),(37,'Sherbet - Raspberry','Mighty Max Macro','2021-07-21','8lcmS6TXpGD','HSBC Holdings plc'),(38,'Wine - Zinfandel Rosenblum','F-Series','2020-11-26','2vbXLeU4fJT','The Habit Restaurants, Inc.'),(39,'Scallops - 20/30','S6','2021-08-22','xbj1yjpr','John Hancock Premium Dividend Fund'),(40,'Cheese - Sheep Milk','Astro','2022-01-18','vPrZF3SK0c','McKesson Corporation'),(41,'Vinegar - Red Wine','Corvette','2021-10-20','w3HjfwGuqs5w','CryoPort, Inc.'),(42,'Sobe - Tropical Energy','Caprice Classic','2022-02-13','heHDMJ06r5','Seneca Foods Corp.'),(43,'Lemonade - Natural, 591 Ml','1000','2021-07-31','BdEELWnCp','ESSA Bancorp, Inc.'),(44,'Pasta - Canelloni, Single Serve','SL-Class','2021-06-26','ks9nY82Chv','BLDRS Developed Markets 100 ADR Index Fund'),(45,'Sage - Rubbed','LeSabre','2022-04-18','PTIsaHp','Lyon William Homes'),(46,'Ecolab - Solid Fusion','Carrera GT','2021-08-20','kAf3pQ2g4YS','Harris Corporation'),(47,'Dried Apple','Highlander','2021-04-28','s412aXnQ1fH','TIM Participacoes S.A.'),(48,'Water - Aquafina Vitamin','Grand Prix','2021-12-13','n49e81A','Cyclacel Pharmaceuticals, Inc.'),(49,'Wine - Chablis J Moreau Et Fils','Stealth','2022-02-16','2cSsuyl','Rightside Group, Ltd.'),(50,'Bread - Dark Rye, Loaf','Wrangler','2021-07-17','8nZX4w8LA','Ralph Lauren Corporation'),(58,'test','Beer','2022-03-29','123','Store'),(59,'Lawn Mower','Uber','2022-04-08','123456789AASD','Canadian Tire');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-24 16:06:02
