-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: zf2learn
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Zend Framework','zend-framework'),(2,'PHP','PHP'),(3,'MYSQL','MYSQL');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` text,
  `created` int(100) DEFAULT NULL,
  `category_id` int(6) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id_idx` (`author_id`),
  CONSTRAINT `id` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (97,'Zend Framework is Awesome!','zf-is-awesome','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.',1469993925,1,NULL),(98,'PHP is Awesome','php-is-awesome','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.',1469993925,2,NULL),(99,'How PHP Works','how-php-works','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',1469993925,2,NULL),(100,'PHP 7 is cool!','php-7-is-cool','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',1469993925,2,NULL),(101,'MySQL outperforms Manual Binary Search','mysql-outperforms-manual-binary-search','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.',1469993925,3,NULL),(102,'ZF Pagination is Easy!','zf-pagination-is-easy','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',1469993925,1,NULL),(103,'Is MySQL your favorite database?','is-mysql-your-favorite-database','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',1469993925,3,NULL),(104,'Zend Announces New Framework','zend-announces-new-framework','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',1469993925,1,NULL),(105,'MySQL 123 Beta Out!','mysql-123-beta-out','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.Fusce consequat. Nulla nisl. Nunc nisl.',1469993925,3,NULL),(106,'MariaDB Faster Than MySQL?','mariadb-faster-than-mysql','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',1469993925,3,NULL),(107,'Setting Up MySQL Cache','setting-up-mysql-cache','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',1469993925,3,NULL),(108,'Enabling Opcode Cache','enabling-opcode-cache','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',1469993925,2,NULL),(109,'Strong Typing Coming to PHP?','strong-typing-coming-to-php','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',1469993925,2,NULL),(110,'Zend Framework 24 on the way','zf-24-on-the-way','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.',1469993925,1,NULL),(111,'PostgreSQL > MySQL?','postgresql-mysql','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',1469993925,3,NULL),(112,'Boosting PHP Performance by 7X','boosting-php-performance-by-7x','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',1469993925,2,NULL),(113,'Creating Custom Controller Plugin','creating-custom-controller-plugin','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',1469993925,1,NULL),(114,'Creating Custom View Helper','creating-custom-view-helper','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',1469993925,1,NULL),(115,'The Future of MySQL','the-future-of-mysql','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.Fusce consequat. Nulla nisl. Nunc nisl.Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',1469993925,3,NULL),(116,'MySQL is Dead - Or is it?','mysql-is-dead-or-is-it','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',1469993925,3,NULL),(117,'Zend Framework > *?','zf-gt-all','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',1469993925,1,NULL),(118,'Zend Engine Updated','zend-engine-updated','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.',1469993925,3,NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `user_group` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,'eAdams@yahoo.com','$2y$12$LJY40xASmLZgnlFyi0MqZ.tVYD6QaRv2xeACjrqkUcgclcYd/j7e.',1471096656,1,NULL),(2,NULL,NULL,'ladams14641@yahoo.com','$2y$12$WRw6EZThPAYmqrdsFQWsi.M/aTvbhZ09ljKao2Oci/omU6C1fqyJq',1471220079,1,NULL),(3,NULL,NULL,'ladams1776@yahoo.com','$2y$12$mkHaIVM4FHbRXdhkLQznC.okSkOYAIYpVcyMarq7vTDFixg.6zw86',1471220318,1,NULL),(4,NULL,NULL,'l@d.com','$2y$12$LUaN3YLrXBRljAAtuhYc9eTSlRJQ/L0qP1LXewXOnRIrEweRK4yBu',1471223071,1,NULL),(5,NULL,NULL,'lk@kl.com','$2y$12$nZ2yjGc4JMPO.lN.rVxomepA7amkUpQ09NHhOyzMOMw0m/2er/1/m',1471223607,1,NULL),(6,NULL,NULL,'l@l.com','$2y$12$Q1KVrbJKApZHKNRnfZQPcO.kP4cxwpFQXlX1.phcrMnOfS5r3mekm',1471224045,1,NULL),(7,NULL,NULL,'j@j.com','$2y$10$4CUdUbBPI8Cp1kHOBy8SR.tEnkpGI2Be.mYQr4WXmfsrsVR6rs9Qi',1471224128,1,NULL),(8,NULL,NULL,'ol@ol.com','$2y$10$dZqmx7Ggr6Sw0gTxeLh4ju09nO7Ea0Cxkobw3wFYO89ls4Zd7f6bi',1471224364,1,NULL),(9,NULL,NULL,'ghj@yahoo.com','$2y$10$rCZ8.9VXxR7QYQcgIYL3KeGkOzIqK22XmiCi1lqYYep9cN/aSYWma',1471224417,1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-14 21:28:32
