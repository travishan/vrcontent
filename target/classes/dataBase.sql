/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.35 : Database - vrsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vrsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `vrsystem`;

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `theme_id` (`theme_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`id`,`theme_id`,`content`,`user_id`) values (1,2,'中国好',4),(2,2,'中国好',5);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `governor_id` int(11) DEFAULT NULL COMMENT '管理员',
  PRIMARY KEY (`id`),
  KEY `governor_id` (`governor_id`),
  CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`governor_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`create_time`,`governor_id`) values (1,'数学','2017-10-19 00:20:10',2),(2,'语文','2017-10-19 00:00:00',2),(5,'语文1','2017-10-19 00:00:00',2);

/*Table structure for table `group` */

DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `group_img` varchar(255) DEFAULT NULL,
  `group_desc` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_userid` int(11) DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL COMMENT '当前群组的讨论区',
  PRIMARY KEY (`id`),
  KEY `create_userid` (`create_userid`),
  KEY `forum_id` (`forum_id`),
  CONSTRAINT `group_ibfk_1` FOREIGN KEY (`create_userid`) REFERENCES `user` (`id`),
  CONSTRAINT `group_ibfk_2` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `group` */

insert  into `group`(`id`,`group_name`,`group_img`,`group_desc`,`create_time`,`create_userid`,`forum_id`) values (1,'software 21','IMG_20140518_162548.jpg','XJTU2016级学生1','2017-10-17 00:00:00',2,5),(2,'haohao1','IMG_20130707_051127.jpg','qunzuguanli','2017-10-17 00:00:00',2,5),(3,'se 22 group',NULL,'qunzuguanli','2017-10-17 00:00:00',2,5),(7,'asd','book2.jpg','sda','2017-10-17 00:00:00',2,5),(8,'da','9d1ca530116e2f016e0be22bd08dce74.jpg','sda','2017-10-17 00:00:00',2,NULL),(9,'da','9d1ca530116e2f016e0be22bd08dce74.jpg','sda','2017-10-17 00:00:00',2,NULL),(10,'da','9d1ca530116e2f016e0be22bd08dce74.jpg','sda','2017-10-17 00:00:00',2,NULL),(11,'da','9d1ca530116e2f016e0be22bd08dce74.jpg','sda','2017-10-17 00:00:00',2,NULL),(12,'da','9d1ca530116e2f016e0be22bd08dce74.jpg','sda','2017-10-17 00:00:00',2,NULL),(13,'da','9d1ca530116e2f016e0be22bd08dce74.jpg','sda','2017-10-17 00:00:00',NULL,NULL),(14,'da','9d1ca530116e2f016e0be22bd08dce74.jpg','sda','2017-10-17 00:00:00',NULL,NULL);

/*Table structure for table `group_task` */

DROP TABLE IF EXISTS `group_task`;

CREATE TABLE `group_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `group_task_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`),
  CONSTRAINT `group_task_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `group_task` */

insert  into `group_task`(`id`,`group_id`,`task_id`) values (1,1,1),(2,2,1),(3,3,1),(4,1,3),(5,1,19),(6,2,19),(7,3,19);

/*Table structure for table `stu_join` */

DROP TABLE IF EXISTS `stu_join`;

CREATE TABLE `stu_join` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `stu_join_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `user` (`id`),
  CONSTRAINT `stu_join_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `stu_join` */

insert  into `stu_join`(`id`,`stu_id`,`group_id`) values (2,2,1),(3,3,1),(24,4,1),(26,4,2),(27,5,2),(30,5,1);

/*Table structure for table `stu_task` */

DROP TABLE IF EXISTS `stu_task`;

CREATE TABLE `stu_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `stu_task_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `user` (`id`),
  CONSTRAINT `stu_task_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `stu_task` */

insert  into `stu_task`(`id`,`stu_id`,`task_id`) values (2,4,1),(3,5,1),(4,4,3),(17,2,13),(18,3,13),(19,4,13),(20,5,13),(22,2,14),(23,3,14),(24,4,14),(25,5,14),(26,2,16),(27,3,16),(28,4,16),(29,5,16),(30,2,17),(31,3,17),(32,4,17),(33,5,17),(34,4,18),(35,5,18),(36,2,19),(37,3,19),(38,4,19),(39,5,19),(40,4,19),(41,5,19);

/*Table structure for table `task` */

DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) DEFAULT NULL,
  `task_desc` varchar(255) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL COMMENT '任务发布的老师',
  PRIMARY KEY (`id`),
  KEY `publisher_id` (`publisher_id`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `task` */

insert  into `task`(`id`,`task_name`,`task_desc`,`start_time`,`end_time`,`publisher_id`) values (1,'数学1','二次函数预习','2017-10-18 00:00:00','2017-10-29 19:30:10',2),(3,'语文','背诵唐诗三百首','2017-10-18 00:00:00','2017-01-20 00:00:00',2),(4,'语文','背诵唐诗三百首','2017-10-19 00:00:00','2017-01-20 00:00:00',2),(13,'学习雷锋','学习雷锋净胜','2017-01-13 00:00:00','2017-01-20 00:00:00',2),(14,'学习','下架','2017-01-19 00:00:00','2017-01-27 00:00:00',2),(15,'ada','daa','2017-01-15 00:00:00','2017-01-27 00:00:00',2),(16,'dsad','dsd','2017-01-21 00:00:00','2017-01-27 00:00:00',2),(17,'asdsad','dsada','2017-01-22 00:00:00','2017-01-29 00:00:00',2),(18,'ada','sdas','2017-01-28 00:00:00','2017-01-28 00:00:00',2),(19,'SSM','学习SSM框架关键技术','2017-01-20 00:00:00','2017-01-31 00:00:00',2);

/*Table structure for table `theme` */

DROP TABLE IF EXISTS `theme`;

CREATE TABLE `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_topic` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `initiator` int(11) DEFAULT NULL COMMENT '发起人',
  `create_time` timestamp NULL DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `initiator` (`initiator`),
  KEY `forum_id` (`forum_id`),
  CONSTRAINT `theme_ibfk_1` FOREIGN KEY (`initiator`) REFERENCES `user` (`id`),
  CONSTRAINT `theme_ibfk_2` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `theme` */

insert  into `theme`(`id`,`theme_topic`,`content`,`initiator`,`create_time`,`forum_id`) values (1,'dasdas','asdsad',2,'2017-10-20 20:10:32',5),(2,'zhongguo','asd',4,'2017-10-27 20:29:41',5);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `identity` char(1) DEFAULT NULL COMMENT '1：老师 0：学生',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`user_name`,`password`,`age`,`phone`,`identity`) values (2,'djq','123',22,'187108261788273','1'),(3,'run','123',22,'1378127391273','1'),(4,'run1','123',22,'23123','0'),(5,'run2','123',22,'2131','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
