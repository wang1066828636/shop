/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.54-log : Database - db_shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_shop`;

/*Table structure for table `t_good` */

DROP TABLE IF EXISTS `t_good`;

CREATE TABLE `t_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `t_good` */

insert  into `t_good`(`id`,`name`,`price`,`author`,`sales`,`stock`,`img_path`) values (1,'java入门','80.00','国哥',9999,9,'static/img/default.jpg'),(2,'数据结构与算法','78.50','严敏君',18,1,'static/img/default.jpg'),(3,'桌子','68.00','龙伍',100012,39,'static/img/default.jpg'),(4,'炒饭','16.00','小胖',1002,48,'static/img/default.jpg'),(5,'C++编程思想','45.50','刚哥',14,95,'static/img/default.jpg'),(6,'蛋炒饭','9.90','周星星',12,53,'static/img/default.jpg'),(7,'椅子','66.50','龙伍',125,535,'static/img/default.jpg');

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `order_id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_order` */

/*Table structure for table `t_order_item` */

DROP TABLE IF EXISTS `t_order_item`;

CREATE TABLE `t_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `total_price` decimal(11,2) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `t_order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_order_item` */

/*Table structure for table `t_shop` */

DROP TABLE IF EXISTS `t_shop`;

CREATE TABLE `t_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_shop` */

insert  into `t_shop`(`id`,`name`,`price`,`author`,`sales`,`stock`,`img_path`) values (1,'java入门','80.00','周星星',9999,9,'static/img/default.jpg'),(2,'数据结构与算法','78.50','严敏君',6,13,'static/img/default.jpg'),(3,'木虚肉盖饭','16.00','周星星',1000,50,'static/img/default.jpg'),(4,'桌子','45.50','周星星',14,95,'static/img/default.jpg'),(5,'蛋炒饭','9.90','周星星',12,53,'static/img/default.jpg'),(6,'椅子','99.50','周星星',47,36,'static/img/default.jpg'),(7,'数据结构 java版','173.15','周星星',21,81,'static/img/default.jpg'),(8,'java入门','80.00','周星星',9999,9,'static/img/default.jpg'),(9,'java入门','80.00','周星星',9999,9,'static/img/default.jpg'),(10,'数据结构与算法','78.50','严敏君',6,13,'static/img/default.jpg'),(11,'木虚肉盖饭','16.00','周星星',1000,50,'static/img/default.jpg'),(12,'桌子','45.50','周星星',14,95,'static/img/default.jpg'),(13,'蛋炒饭','9.90','周星星',12,53,'static/img/default.jpg'),(14,'椅子','99.50','周星星',47,36,'static/img/default.jpg'),(15,'数据结构 java版','173.15','周星星',21,81,'static/img/default.jpg');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`email`) values (1,'admin','admin','admin@atguigu.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
