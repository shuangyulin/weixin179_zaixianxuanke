/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - zaixianxuanke
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zaixianxuanke` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zaixianxuanke`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/zaixianxuanke/upload/1644905472117.jpg'),(2,'轮播图2','http://localhost:8080/zaixianxuanke/upload/1644905480482.jpg'),(3,'轮播图3','http://localhost:8080/zaixianxuanke/upload/1644905487830.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-15 13:06:38'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-15 13:06:38'),(67,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2022-02-15 13:06:38'),(68,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2022-02-15 13:06:38'),(69,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2022-02-15 13:06:38'),(70,'status_types','课程状态',1,'未开课',NULL,NULL,'2022-02-15 13:06:38'),(71,'status_types','课程状态',2,'已开课',NULL,NULL,'2022-02-15 13:06:38'),(72,'xuanke_yesno_types','审核状态',1,'未审核',NULL,NULL,'2022-02-15 13:06:38'),(73,'xuanke_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-02-15 13:06:38'),(74,'xuanke_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-02-15 13:06:38'),(75,'news_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-02-15 13:06:38'),(76,'news_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-02-15 13:06:38'),(77,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-02-15 13:06:38'),(78,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-02-15 13:06:38');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`xuesheng_id`,`jiaoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',NULL,1,'2022-02-15 13:24:26','2022-02-15 13:24:26','2022-02-15 13:24:26'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',NULL,1,'2022-02-15 13:24:26','2022-02-15 13:24:26','2022-02-15 13:24:26'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',NULL,1,'2022-02-15 13:24:26','2022-02-15 13:24:26','2022-02-15 13:24:26'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',NULL,1,'2022-02-15 13:24:26','2022-02-15 13:24:26','2022-02-15 13:24:26'),(20,NULL,NULL,1,NULL,'84789789',4,2,'2022-02-15 17:24:50',NULL,'2022-02-15 17:24:50'),(21,NULL,1,NULL,NULL,'33333',4,2,'2022-02-15 17:43:48',NULL,'2022-02-15 17:43:48');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师姓名1',1,'410224199610232001','17703786901','http://localhost:8080/zaixianxuanke/upload/1644905164964.jpg',1,'2022-02-15 13:24:26'),(2,'a2','123456','教师姓名2',1,'410224199610232002','17703786902','http://localhost:8080/zaixianxuanke/upload/1644905157800.jpg',1,'2022-02-15 13:24:26'),(3,'a3','123456','教师姓名3',1,'410224199610232003','17703786903','http://localhost:8080/zaixianxuanke/upload/1644905147225.jpg',1,'2022-02-15 13:24:26');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111 ',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `kecheng_xueshi` varchar(200) DEFAULT NULL COMMENT '课程学时',
  `kecheng_time` timestamp NULL DEFAULT NULL COMMENT '上课时间',
  `kecheng_address` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kecheng_xuefen` int(111) DEFAULT NULL COMMENT '学分',
  `status_types` int(111) DEFAULT NULL COMMENT '课程状态',
  `kecheng_content` text COMMENT '详情',
  `kecheng_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_types`,`kecheng_photo`,`kecheng_xueshi`,`kecheng_time`,`kecheng_address`,`kecheng_xuefen`,`status_types`,`kecheng_content`,`kecheng_delete`,`create_time`) values (1,'课程名称1',1,'http://localhost:8080/zaixianxuanke/upload/1644905281592.webp','课程学时1','2022-02-15 13:24:26','上课地点1',229,1,'<p>详情1</p>',1,'2022-02-15 13:24:26'),(2,'课程名称2',2,'http://localhost:8080/zaixianxuanke/upload/1644905273207.webp','课程学时2','2022-02-15 13:24:26','上课地点2',281,2,'<p>详情2</p>',1,'2022-02-15 13:24:26'),(3,'课程名称3',1,'http://localhost:8080/zaixianxuanke/upload/1644905265362.webp','课程学时3','2022-02-15 13:24:26','上课地点3',88,2,'<p>详情3</p>',1,'2022-02-15 13:24:26'),(4,'课程名称4',3,'http://localhost:8080/zaixianxuanke/upload/1644905257600.webp','课程学时4','2022-02-15 13:24:26','上课地点4',314,2,'<p>详情4</p>',1,'2022-02-15 13:24:26');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/zaixianxuanke/upload/1644905558201.jpg','2022-02-15 13:24:26','<p>公告详情1</p>',1,'2022-02-15 13:24:26'),(2,'公告标题2',1,'http://localhost:8080/zaixianxuanke/upload/1644905549962.jpg','2022-02-15 13:24:26','<p>公告详情2</p>',1,'2022-02-15 13:24:26'),(3,'公告标题3',2,'http://localhost:8080/zaixianxuanke/upload/1644905541057.webp','2022-02-15 13:24:26','<p>公告详情3</p>',1,'2022-02-15 13:24:26'),(4,'公告标题4',1,'http://localhost:8080/zaixianxuanke/upload/1644905532727.jpg','2022-02-15 13:24:26','<p>公告详情4</p>',1,'2022-02-15 13:24:26');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','3cktm2rj7fmrlnc8kdn8ztdcydhrl5ye','2022-02-15 11:29:49','2022-02-15 18:47:23'),(2,1,'a1','xuesheng','学生','84fv50itgzewuvnlr8iwr5efs29dcuya','2022-02-15 15:38:36','2022-02-15 18:48:45'),(3,1,'a1','jiaoshi','教师','sglxzke5yfo89gv5l2dlou13vlwazsvp','2022-02-15 16:18:56','2022-02-15 17:56:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xuanke` */

DROP TABLE IF EXISTS `xuanke`;

CREATE TABLE `xuanke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(111) DEFAULT NULL COMMENT '所选课程',
  `xuesheng_id` int(111) DEFAULT NULL COMMENT '学生',
  `xuanke_yesno_types` int(111) DEFAULT NULL COMMENT '审核',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='选课信息';

/*Data for the table `xuanke` */

insert  into `xuanke`(`id`,`kecheng_id`,`xuesheng_id`,`xuanke_yesno_types`,`create_time`) values (1,1,3,2,'2022-02-15 13:24:26'),(2,2,2,3,'2022-02-15 13:24:26'),(3,3,3,3,'2022-02-15 13:24:26'),(4,4,1,2,'2022-02-15 13:24:26'),(12,3,1,2,'2022-02-15 16:05:30'),(18,1,1,1,'2022-02-15 17:33:07');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `xuesheng_yixiu` int(11) DEFAULT '0' COMMENT '已修学分',
  `xuesheng_yingxiu` int(11) DEFAULT '0' COMMENT '应修学分',
  `xuesheng_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_name`,`sex_types`,`xuesheng_id_number`,`xuesheng_phone`,`xuesheng_photo`,`xuesheng_yixiu`,`xuesheng_yingxiu`,`xuesheng_delete`,`create_time`) values (1,'a1','123456','学生姓名1',1,'410224199610232001','17703786901','http://localhost:8080/zaixianxuanke/upload/1644905202489.jpg',2,22,1,'2022-02-15 13:24:26'),(2,'a2','123456','学生姓名2',1,'410224199610232002','17703786902','http://localhost:8080/zaixianxuanke/upload/1644905190179.jpg',121,123,1,'2022-02-15 13:24:26'),(3,'a3','123456','学生姓名3',2,'410224199610232003','17703786903','http://localhost:8080/zaixianxuanke/upload/1644905182181.jpg',241,999,1,'2022-02-15 13:24:26');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
