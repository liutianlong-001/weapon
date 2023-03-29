/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.58 : Database - weapon
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`weapon` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `weapon`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (2,'Can change log entry',1,'change_logentry');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (3,'Can delete log entry',1,'delete_logentry');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (4,'Can add permission',2,'add_permission');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (5,'Can change permission',2,'change_permission');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (6,'Can delete permission',2,'delete_permission');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (7,'Can add group',3,'add_group');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (8,'Can change group',3,'change_group');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (9,'Can delete group',3,'delete_group');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (10,'Can add user',4,'add_user');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (11,'Can change user',4,'change_user');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (12,'Can delete user',4,'delete_user');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (13,'Can add content type',5,'add_contenttype');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (14,'Can change content type',5,'change_contenttype');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (15,'Can delete content type',5,'delete_contenttype');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (16,'Can add session',6,'add_session');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (17,'Can change session',6,'change_session');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (18,'Can delete session',6,'delete_session');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (19,'Can add 教室管理',7,'add_classnames');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (20,'Can change 教室管理',7,'change_classnames');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (21,'Can delete 教室管理',7,'delete_classnames');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (22,'Can add 课表',8,'add_subject');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (23,'Can change 课表',8,'change_subject');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (24,'Can delete 课表',8,'delete_subject');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (25,'Can add 教师信息',9,'add_tecinfo');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (26,'Can change 教师信息',9,'change_tecinfo');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (27,'Can delete 教师信息',9,'delete_tecinfo');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (28,'Can add 学生信息',10,'add_userinfo');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (29,'Can change 学生信息',10,'change_userinfo');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (30,'Can delete 学生信息',10,'delete_userinfo');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (31,'Can view log entry',1,'view_logentry');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (32,'Can view permission',2,'view_permission');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (33,'Can view group',3,'view_group');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (34,'Can view user',4,'view_user');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (35,'Can view content type',5,'view_contenttype');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (36,'Can view session',6,'view_session');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (37,'Can view 教室管理',7,'view_classnames');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (38,'Can view 课表',8,'view_subject');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (39,'Can view 教师信息',9,'view_tecinfo');
insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (40,'Can view 学生信息',10,'view_userinfo');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'pbkdf2_sha256$100000$yXTDbfUxT5xe$ebeWEo2l3XwtMUR9nctMjC8CAjfBSPG9C6ON3g/b2JA=','2020-05-09 15:12:00',1,'admin','','','1150802133@qq.com',1,1,'2020-05-06 06:07:00');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_user_permissions` */

insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (1,1,1);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (2,1,2);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (3,1,3);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (4,1,4);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (5,1,5);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (6,1,6);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (7,1,7);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (8,1,8);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (9,1,9);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (10,1,10);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (11,1,11);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (12,1,12);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (13,1,13);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (14,1,14);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (15,1,15);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (16,1,16);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (17,1,17);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (18,1,18);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (19,1,19);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (20,1,20);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (21,1,21);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (22,1,22);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (23,1,23);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (24,1,24);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (25,1,25);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (26,1,26);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (27,1,27);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (28,1,28);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (29,1,29);
insert  into `auth_user_user_permissions`(`id`,`user_id`,`permission_id`) values (30,1,30);

/*Table structure for table `classnames` */

DROP TABLE IF EXISTS `classnames`;

CREATE TABLE `classnames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(32) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_name` (`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `classnames` */

insert  into `classnames`(`id`,`class_name`,`time`) values (1,'302','2020-05-06 06:10:55');
insert  into `classnames`(`id`,`class_name`,`time`) values (2,'305','2020-05-08 14:26:17');

/*Table structure for table `classnames_user` */

DROP TABLE IF EXISTS `classnames_user`;

CREATE TABLE `classnames_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classnames_id` int(11) NOT NULL,
  `userinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ClassNames_user_classnames_id_userinfo_id_5a03eee4_uniq` (`classnames_id`,`userinfo_id`),
  KEY `ClassNames_user_userinfo_id_87d6832a_fk_UserInfo_id` (`userinfo_id`),
  CONSTRAINT `ClassNames_user_classnames_id_7918b0b6_fk_ClassNames_id` FOREIGN KEY (`classnames_id`) REFERENCES `classnames` (`id`),
  CONSTRAINT `ClassNames_user_userinfo_id_87d6832a_fk_UserInfo_id` FOREIGN KEY (`userinfo_id`) REFERENCES `userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `classnames_user` */

insert  into `classnames_user`(`id`,`classnames_id`,`userinfo_id`) values (1,1,1);
insert  into `classnames_user`(`id`,`classnames_id`,`userinfo_id`) values (2,2,1);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (1,'2020-05-06 06:10:18','1','student1',1,'[{\"added\": {}}]',10,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (2,'2020-05-06 06:10:46','1','Java',1,'[{\"added\": {}}]',8,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (3,'2020-05-06 06:10:55','1','302',1,'[{\"added\": {}}]',7,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (4,'2020-05-06 06:11:18','1','李老师',1,'[{\"added\": {}}]',9,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (5,'2020-05-06 07:58:11','1','Java',2,'[{\"changed\": {\"fields\": [\"class_name\"]}}]',8,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (6,'2020-05-08 13:14:42','1','Java',2,'[{\"changed\": {\"fields\": [\"startime\"]}}]',8,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (7,'2020-05-08 14:26:17','2','305',1,'[{\"added\": {}}]',7,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (8,'2020-05-08 14:26:57','2','高数',1,'[{\"added\": {}}]',8,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (9,'2020-05-08 14:29:33','2','student2',1,'[{\"added\": {}}]',10,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (10,'2020-05-08 14:38:58','2','teacher2',1,'[{\"added\": {}}]',9,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (11,'2020-05-08 14:44:01','1','admin',2,'[{\"changed\": {\"fields\": [\"user_permissions\", \"last_login\"]}}]',4,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (12,'2020-05-08 14:49:44','3','teacher3',1,'[{\"added\": {}}]',9,1);
insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (13,'2020-05-09 05:17:35','4','teacher4',1,'[{\"added\": {}}]',9,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (3,'auth','group');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (2,'auth','permission');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (4,'auth','user');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (5,'contenttypes','contenttype');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (7,'dal','classnames');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (8,'dal','subject');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (9,'dal','tecinfo');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (10,'dal','userinfo');
insert  into `django_content_type`(`id`,`app_label`,`model`) values (6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2020-05-06 06:06:56');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (2,'auth','0001_initial','2020-05-06 06:06:56');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (3,'admin','0001_initial','2020-05-06 06:06:56');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (4,'admin','0002_logentry_remove_auto_add','2020-05-06 06:06:56');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (5,'contenttypes','0002_remove_content_type_name','2020-05-06 06:06:56');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (6,'auth','0002_alter_permission_name_max_length','2020-05-06 06:06:56');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (7,'auth','0003_alter_user_email_max_length','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (8,'auth','0004_alter_user_username_opts','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (9,'auth','0005_alter_user_last_login_null','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (10,'auth','0006_require_contenttypes_0002','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (11,'auth','0007_alter_validators_add_error_messages','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (12,'auth','0008_alter_user_username_max_length','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (13,'auth','0009_alter_user_last_name_max_length','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (14,'dal','0001_initial','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (15,'dal','0002_auto_20200506_1406','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (16,'sessions','0001_initial','2020-05-06 06:06:57');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (17,'dal','0003_auto_20200506_1551','2020-05-06 07:51:47');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (18,'admin','0003_logentry_add_action_flag_choices','2023-02-19 08:53:40');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (19,'auth','0010_alter_group_name_max_length','2023-02-19 08:53:40');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (20,'auth','0011_update_proxy_permissions','2023-02-19 08:53:40');
insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (21,'auth','0012_alter_user_first_name_max_length','2023-02-19 08:53:40');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('bnvnt8nxg5msfkwygiwnan3yvvhofwcd','eyJ1c2VybmFtZSI6ImRlbW9kZW1vIn0:1pU1jh:fe-PasliffLLnjgUeyLi7DuMqQUA1ULejGISSy51-Ig','2023-03-06 08:41:25');
insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('c1qpp8rlyau7aaxcp15bjxo2gnq6vwab','MzhhNjE1MjhkY2U0MzBjYmFmNTg1NDE4ODk1Yjg5Y2NmMGM3ZmMzYzp7InVzZXJuYW1lIjoic3R1ZGVudDEifQ==','2023-03-01 06:49:47');
insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('cdwomqw2v0gogg9621128b99hnb03qmo','eyJ1c2VybmFtZSI6ImRlbW9kZW1vIn0:1pUGOQ:24ucsV6fOfU-jtIVVeHcgcm4s2qa1Kcy9Dcm6QXq7ks','2023-03-07 00:20:26');
insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('h84b6e95xqu0144fl9xff5w6tadrfiym','MzhhNjE1MjhkY2U0MzBjYmFmNTg1NDE4ODk1Yjg5Y2NmMGM3ZmMzYzp7InVzZXJuYW1lIjoic3R1ZGVudDEifQ==','2023-03-01 06:47:57');
insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('u16xsc7lrbbnbb1nz203hl9taxra65yg','ZGM5MGQ1M2NhYmQwMTRmNmUwOTRkOWEyNzk4YmIzMzY3NDI0NGYyMDp7InVzZXJuYW1lIjoiXHU2NzRlXHU4MDAxXHU1ZTA4IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImU1YmRkZTY2MTY4ZWYyNWVmNjA0OWMyMzc5MWIwYzVjMjk2OGE4NjUiLCJzaW1wbGV1aV8yMDIwMDUwOSI6dHJ1ZX0=','2020-05-23 15:12:00');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher` varchar(32) NOT NULL,
  `subject_title` varchar(32) NOT NULL,
  `introduction` varchar(640) NOT NULL,
  `time` datetime DEFAULT NULL,
  `startime` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`id`,`teacher`,`subject_title`,`introduction`,`time`,`startime`) values (1,'李老师','Java','软件编程','2020-05-08 13:14:42','2:30');
insert  into `subject`(`id`,`teacher`,`subject_title`,`introduction`,`time`,`startime`) values (2,'王老师','高数','逻辑思维','2020-05-08 14:26:57','10：00');

/*Table structure for table `subject_class_name` */

DROP TABLE IF EXISTS `subject_class_name`;

CREATE TABLE `subject_class_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `classnames_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Subject_class_name_subject_id_classnames_id_21143a30_uniq` (`subject_id`,`classnames_id`),
  KEY `Subject_class_name_classnames_id_7875ccb7_fk_ClassNames_id` (`classnames_id`),
  CONSTRAINT `Subject_class_name_classnames_id_7875ccb7_fk_ClassNames_id` FOREIGN KEY (`classnames_id`) REFERENCES `classnames` (`id`),
  CONSTRAINT `Subject_class_name_subject_id_fdde6f8a_fk_Subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `subject_class_name` */

insert  into `subject_class_name`(`id`,`subject_id`,`classnames_id`) values (1,1,1);
insert  into `subject_class_name`(`id`,`subject_id`,`classnames_id`) values (2,2,2);

/*Table structure for table `subject_subject_student` */

DROP TABLE IF EXISTS `subject_subject_student`;

CREATE TABLE `subject_subject_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `userinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Subject_subject_student_subject_id_userinfo_id_b42ee61f_uniq` (`subject_id`,`userinfo_id`),
  KEY `Subject_subject_student_userinfo_id_f606dbcf_fk_UserInfo_id` (`userinfo_id`),
  CONSTRAINT `Subject_subject_student_subject_id_ee7af3a1_fk_Subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  CONSTRAINT `Subject_subject_student_userinfo_id_f606dbcf_fk_UserInfo_id` FOREIGN KEY (`userinfo_id`) REFERENCES `userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `subject_subject_student` */

insert  into `subject_subject_student`(`id`,`subject_id`,`userinfo_id`) values (1,1,1);
insert  into `subject_subject_student`(`id`,`subject_id`,`userinfo_id`) values (2,2,1);

/*Table structure for table `tecinfo` */

DROP TABLE IF EXISTS `tecinfo`;

CREATE TABLE `tecinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `experience` varchar(32) NOT NULL,
  `style` varchar(32) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tecinfo` */

insert  into `tecinfo`(`id`,`username`,`name`,`password`,`sex`,`experience`,`style`,`phone`) values (1,'李老师','李四','000000','女','大师傅','大师傅','18247157222');
insert  into `tecinfo`(`id`,`username`,`name`,`password`,`sex`,`experience`,`style`,`phone`) values (2,'teacher2','张老师','111111','女','大师傅','大师傅','18247157322');
insert  into `tecinfo`(`id`,`username`,`name`,`password`,`sex`,`experience`,`style`,`phone`) values (3,'teacher3','教师3','111111','女','的撒阿飞','阿迪斯发','18247153322');
insert  into `tecinfo`(`id`,`username`,`name`,`password`,`sex`,`experience`,`style`,`phone`) values (4,'teacher4','teacher4','111111','男','老带劲了','幽默','18247155502');

/*Table structure for table `tecinfo_subject_title` */

DROP TABLE IF EXISTS `tecinfo_subject_title`;

CREATE TABLE `tecinfo_subject_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tecinfo_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `TecInfo_subject_title_tecinfo_id_subject_id_0d165c6d_uniq` (`tecinfo_id`,`subject_id`),
  KEY `TecInfo_subject_title_subject_id_d405326d_fk_Subject_id` (`subject_id`),
  CONSTRAINT `TecInfo_subject_title_subject_id_d405326d_fk_Subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  CONSTRAINT `TecInfo_subject_title_tecinfo_id_cee42240_fk_TecInfo_id` FOREIGN KEY (`tecinfo_id`) REFERENCES `tecinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tecinfo_subject_title` */

insert  into `tecinfo_subject_title`(`id`,`tecinfo_id`,`subject_id`) values (1,1,1);
insert  into `tecinfo_subject_title`(`id`,`tecinfo_id`,`subject_id`) values (2,2,1);
insert  into `tecinfo_subject_title`(`id`,`tecinfo_id`,`subject_id`) values (3,3,1);
insert  into `tecinfo_subject_title`(`id`,`tecinfo_id`,`subject_id`) values (4,4,2);

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `classname` varchar(64) NOT NULL,
  `create_time` datetime NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`id`,`username`,`password`,`email`,`name`,`classname`,`create_time`,`phone`) values (1,'student1','111111','1150802166@qq.com','李四','1','2020-05-06 06:10:18','18247157222');
insert  into `userinfo`(`id`,`username`,`password`,`email`,`name`,`classname`,`create_time`,`phone`) values (2,'student2','111111','1150803366@qq.com','王五','1','2020-05-08 14:29:33','18243357222');
insert  into `userinfo`(`id`,`username`,`password`,`email`,`name`,`classname`,`create_time`,`phone`) values (3,'demodemo','demodemo','demodemo@demo.com','demodemo','demodemo','2023-02-20 08:41:13','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
