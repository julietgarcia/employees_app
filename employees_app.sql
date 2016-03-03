/*
SQLyog Ultimate v10.42 
MySQL - 5.5.27 : Database - employees_app
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employees_app` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `employees_app`;

/*Table structure for table `t_employees` */

DROP TABLE IF EXISTS `t_employees`;

CREATE TABLE `t_employees` (
  `employess_id` int(8) NOT NULL AUTO_INCREMENT COMMENT 'Row identification',
  `employess_ci` char(10) NOT NULL COMMENT 'User identification',
  `employess_name` varchar(120) DEFAULT NULL COMMENT 'User name',
  `employess_address` varchar(250) DEFAULT NULL COMMENT 'User address',
  `employess_email` varchar(60) DEFAULT NULL COMMENT 'User email',
  `employess_phone` char(12) DEFAULT NULL COMMENT 'User phone',
  `employess_date_contract` date DEFAULT NULL COMMENT 'User date contract',
  `employess_birthdate` date DEFAULT NULL COMMENT 'User birthdate',
  `employess_freelance` char(2) DEFAULT NULL COMMENT 'User is yes or no Freelance',
  `employess_hour_rate` float DEFAULT NULL COMMENT 'User hourly rate',
  PRIMARY KEY (`employess_ci`),
  KEY `employess_id` (`employess_id`),
  FULLTEXT KEY `index_employess_name` (`employess_name`),
  FULLTEXT KEY `index_employess_email` (`employess_email`),
  FULLTEXT KEY `index_employess_address` (`employess_address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_employees` */

/*Table structure for table `t_users_admin` */

DROP TABLE IF EXISTS `t_users_admin`;

CREATE TABLE `t_users_admin` (
  `uadmin_id` int(2) NOT NULL AUTO_INCREMENT COMMENT 'Row identification',
  `uadmin_username` varchar(20) NOT NULL COMMENT 'User nickname admin',
  `uadmin_name` varchar(120) DEFAULT NULL COMMENT 'User name',
  `uadmin_password` varchar(20) DEFAULT NULL COMMENT 'User password',
  PRIMARY KEY (`uadmin_username`),
  KEY `uadmin_id` (`uadmin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_users_admin` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
