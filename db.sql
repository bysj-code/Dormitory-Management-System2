/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - susheguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`susheguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `susheguanli`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `baoxiu_uuid_numnber` varchar(200) DEFAULT NULL COMMENT '报修编号 Search111  ',
  `baoxiu_name` varchar(200) DEFAULT NULL COMMENT '报修标题 Search111  ',
  `baoxiu_types` int(11) NOT NULL COMMENT '报修类型 Search111 ',
  `baoxiu_content` text COMMENT '报修内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报修时间',
  `baoxiu_zhuangtai_types` int(11) NOT NULL COMMENT '报修状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`xuesheng_id`,`baoxiu_uuid_numnber`,`baoxiu_name`,`baoxiu_types`,`baoxiu_content`,`insert_time`,`baoxiu_zhuangtai_types`,`create_time`) values (1,3,'报修编号1','报修标题1',2,'报修内容1','2023-03-29 14:30:33',1,'2023-03-29 14:30:33'),(2,2,'报修编号2','报修标题2',4,'报修内容2','2023-03-29 14:30:33',2,'2023-03-29 14:30:33'),(3,2,'报修编号3','报修标题3',3,'报修内容3','2023-03-29 14:30:33',1,'2023-03-29 14:30:33'),(4,2,'报修编号4','报修标题4',1,'报修内容4','2023-03-29 14:30:33',2,'2023-03-29 14:30:33'),(5,2,'报修编号5','报修标题5',2,'报修内容5','2023-03-29 14:30:33',2,'2023-03-29 14:30:33'),(6,2,'报修编号6','报修标题6',4,'报修内容6','2023-03-29 14:30:33',3,'2023-03-29 14:30:33'),(7,3,'报修编号7','报修标题7',4,'报修内容7','2023-03-29 14:30:33',1,'2023-03-29 14:30:33'),(8,3,'报修编号8','报修标题8',1,'报修内容8','2023-03-29 14:30:33',2,'2023-03-29 14:30:33'),(9,1,'报修编号9','报修标题9',1,'报修内容9','2023-03-29 14:30:33',1,'2023-03-29 14:30:33'),(10,3,'报修编号10','报修标题10',1,'报修内容10','2023-03-29 14:30:33',1,'2023-03-29 14:30:33'),(11,2,'报修编号11','报修标题11',4,'报修内容11','2023-03-29 14:30:33',1,'2023-03-29 14:30:33'),(12,1,'报修编号12','报修标题12',1,'报修内容12','2023-03-29 14:30:33',2,'2023-03-29 14:30:33'),(13,2,'报修编号13','报修标题13',3,'报修内容13','2023-03-29 14:30:33',3,'2023-03-29 14:30:33'),(14,2,'报修编号14','报修标题14',2,'报修内容14','2023-03-29 14:30:33',3,'2023-03-29 14:30:33'),(15,1,'1680073141415','报修1111',4,'格格党','2023-03-29 14:59:09',3,'2023-03-29 14:59:09');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-29 14:30:07'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-29 14:30:07'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-03-29 14:30:07'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-03-29 14:30:07'),(5,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-29 14:30:07'),(6,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-29 14:30:07'),(7,'loudong_types','楼栋',1,'楼栋1',NULL,NULL,'2023-03-29 14:30:07'),(8,'loudong_types','楼栋',2,'楼栋2',NULL,NULL,'2023-03-29 14:30:07'),(9,'danyuan_types','单元',1,'单元1',NULL,NULL,'2023-03-29 14:30:07'),(10,'danyuan_types','单元',2,'单元2',NULL,NULL,'2023-03-29 14:30:07'),(11,'xueshengkaoqin_types','考勤结果',1,'正常',NULL,NULL,'2023-03-29 14:30:07'),(12,'xueshengkaoqin_types','考勤结果',2,'异常',NULL,NULL,'2023-03-29 14:30:07'),(13,'xueshengkaoqin_types','考勤结果',3,'请假',NULL,NULL,'2023-03-29 14:30:07'),(14,'baoxiu_types','报修类型',1,'报修类型1',NULL,NULL,'2023-03-29 14:30:07'),(15,'baoxiu_types','报修类型',2,'报修类型2',NULL,NULL,'2023-03-29 14:30:07'),(16,'baoxiu_types','报修类型',3,'报修类型3',NULL,NULL,'2023-03-29 14:30:07'),(17,'baoxiu_types','报修类型',4,'报修类型4',NULL,NULL,'2023-03-29 14:30:07'),(18,'baoxiu_zhuangtai_types','报修状态',1,'已报修',NULL,NULL,'2023-03-29 14:30:07'),(19,'baoxiu_zhuangtai_types','报修状态',2,'已接单',NULL,NULL,'2023-03-29 14:30:07'),(20,'baoxiu_zhuangtai_types','报修状态',3,'已维修',NULL,NULL,'2023-03-29 14:30:07'),(21,'susheweisheng_types','卫生状态',1,'非常好',NULL,NULL,'2023-03-29 14:30:07'),(22,'susheweisheng_types','卫生状态',2,'一般',NULL,NULL,'2023-03-29 14:30:07'),(23,'susheweisheng_types','卫生状态',3,'差',NULL,NULL,'2023-03-29 14:30:07'),(24,'susheweisheng_types','卫生状态',4,'非常差',NULL,NULL,'2023-03-29 14:30:07'),(25,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2023-03-29 14:30:07'),(26,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2023-03-29 14:30:07'),(27,'baoxiu_types','报修类型',5,'报修类型5',NULL,'','2023-03-29 15:01:43');

/*Table structure for table `fangke` */

DROP TABLE IF EXISTS `fangke`;

CREATE TABLE `fangke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `fangke_name` varchar(200) DEFAULT NULL COMMENT '访客姓名 Search111 ',
  `fangke_phone` varchar(200) DEFAULT NULL COMMENT '访客手机号',
  `fangke_id_number` varchar(200) DEFAULT NULL COMMENT '访客身份证号',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `fangke_photo` varchar(200) DEFAULT NULL COMMENT '健康码',
  `fangke_content` text COMMENT '来访事由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '来访时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='访客';

/*Data for the table `fangke` */

insert  into `fangke`(`id`,`xuesheng_id`,`fangke_name`,`fangke_phone`,`fangke_id_number`,`sex_types`,`fangke_photo`,`fangke_content`,`insert_time`,`create_time`) values (1,2,'访客姓名1','17703786901','410224199010102001',2,'upload/fangke1.jpg','来访事由1','2023-03-29 14:30:33','2023-03-29 14:30:33'),(2,3,'访客姓名2','17703786902','410224199010102002',2,'upload/fangke2.jpg','来访事由2','2023-03-29 14:30:33','2023-03-29 14:30:33'),(3,2,'访客姓名3','17703786903','410224199010102003',2,'upload/fangke3.jpg','来访事由3','2023-03-29 14:30:33','2023-03-29 14:30:33'),(4,2,'访客姓名4','17703786904','410224199010102004',1,'upload/fangke4.jpg','来访事由4','2023-03-29 14:30:33','2023-03-29 14:30:33'),(5,3,'访客姓名5','17703786905','410224199010102005',1,'upload/fangke5.jpg','来访事由5','2023-03-29 14:30:33','2023-03-29 14:30:33'),(6,3,'访客姓名6','17703786906','410224199010102006',1,'upload/fangke6.jpg','来访事由6','2023-03-29 14:30:33','2023-03-29 14:30:33'),(7,1,'访客姓名7','17703786907','410224199010102007',1,'upload/fangke7.jpg','来访事由7','2023-03-29 14:30:33','2023-03-29 14:30:33'),(8,3,'访客姓名8','17703786908','410224199010102008',2,'upload/fangke8.jpg','来访事由8','2023-03-29 14:30:33','2023-03-29 14:30:33'),(9,1,'访客姓名9','17703786909','410224199010102009',1,'upload/fangke9.jpg','来访事由9','2023-03-29 14:30:33','2023-03-29 14:30:33'),(10,2,'访客姓名10','17703786910','410224199010102010',2,'upload/fangke10.jpg','来访事由10','2023-03-29 14:30:33','2023-03-29 14:30:33'),(11,2,'访客姓名11','17703786911','410224199010102011',2,'upload/fangke11.jpg','来访事由11','2023-03-29 14:30:33','2023-03-29 14:30:33'),(12,3,'访客姓名12','17703786912','410224199010102012',1,'upload/fangke12.jpg','来访事由12','2023-03-29 14:30:33','2023-03-29 14:30:33'),(13,2,'访客姓名13','17703786913','410224199010102013',1,'upload/fangke13.jpg','来访事由13','2023-03-29 14:30:33','2023-03-29 14:30:33'),(14,1,'访客姓名14','17703786914','410224199010102014',2,'upload/fangke14.jpg','来访事由14','2023-03-29 14:30:33','2023-03-29 14:30:33');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1',2,'2023-03-29 14:30:33','公告详情1','2023-03-29 14:30:33'),(2,'公告名称2',1,'2023-03-29 14:30:33','公告详情2','2023-03-29 14:30:33'),(3,'公告名称3',1,'2023-03-29 14:30:33','公告详情3','2023-03-29 14:30:33'),(4,'公告名称4',2,'2023-03-29 14:30:33','公告详情4','2023-03-29 14:30:33'),(5,'公告名称5',2,'2023-03-29 14:30:33','公告详情5','2023-03-29 14:30:33'),(6,'公告名称6',2,'2023-03-29 14:30:33','公告详情6','2023-03-29 14:30:33'),(7,'公告名称7',2,'2023-03-29 14:30:33','公告详情7','2023-03-29 14:30:33'),(8,'公告名称8',2,'2023-03-29 14:30:33','公告详情8','2023-03-29 14:30:33'),(9,'公告名称9',2,'2023-03-29 14:30:33','公告详情9','2023-03-29 14:30:33'),(10,'公告名称10',2,'2023-03-29 14:30:33','公告详情10','2023-03-29 14:30:33'),(11,'公告名称11',1,'2023-03-29 14:30:33','公告详情11','2023-03-29 14:30:33'),(12,'公告名称12',1,'2023-03-29 14:30:33','公告详情12','2023-03-29 14:30:33'),(13,'公告名称13',2,'2023-03-29 14:30:33','公告详情13','2023-03-29 14:30:33'),(14,'公告名称14',1,'2023-03-29 14:30:33','公告详情14','2023-03-29 14:30:33');

/*Table structure for table `guanlilaoshi` */

DROP TABLE IF EXISTS `guanlilaoshi`;

CREATE TABLE `guanlilaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `guanlilaoshi_name` varchar(200) DEFAULT NULL COMMENT '管理老师姓名 Search111 ',
  `guanlilaoshi_phone` varchar(200) DEFAULT NULL COMMENT '管理老师手机号',
  `guanlilaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '管理老师身份证号',
  `guanlilaoshi_photo` varchar(200) DEFAULT NULL COMMENT '管理老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `guanlilaoshi_email` varchar(200) DEFAULT NULL COMMENT '管理老师邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理老师';

/*Data for the table `guanlilaoshi` */

insert  into `guanlilaoshi`(`id`,`username`,`password`,`guanlilaoshi_name`,`guanlilaoshi_phone`,`guanlilaoshi_id_number`,`guanlilaoshi_photo`,`sex_types`,`guanlilaoshi_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','管理老师姓名1','17703786901','410224199010102001','upload/guanlilaoshi1.jpg',1,'1@qq.com',1,'2023-03-29 14:30:33'),(2,'a2','123456','管理老师姓名2','17703786902','410224199010102002','upload/guanlilaoshi2.jpg',2,'2@qq.com',1,'2023-03-29 14:30:33'),(3,'a3','123456','管理老师姓名3','17703786903','410224199010102003','upload/guanlilaoshi3.jpg',1,'3@qq.com',2,'2023-03-29 14:30:33');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','upload/news1.jpg',1,'2023-03-29 14:30:33','新闻详情1','2023-03-29 14:30:33'),(2,'新闻名称2','upload/news2.jpg',2,'2023-03-29 14:30:33','新闻详情2','2023-03-29 14:30:33'),(3,'新闻名称3','upload/news3.jpg',1,'2023-03-29 14:30:33','新闻详情3','2023-03-29 14:30:33'),(4,'新闻名称4','upload/news4.jpg',2,'2023-03-29 14:30:33','新闻详情4','2023-03-29 14:30:33'),(5,'新闻名称5','upload/news5.jpg',2,'2023-03-29 14:30:33','新闻详情5','2023-03-29 14:30:33'),(6,'新闻名称6','upload/news6.jpg',1,'2023-03-29 14:30:33','新闻详情6','2023-03-29 14:30:33'),(7,'新闻名称7','upload/news7.jpg',2,'2023-03-29 14:30:33','新闻详情7','2023-03-29 14:30:33'),(8,'新闻名称8','upload/news8.jpg',1,'2023-03-29 14:30:33','新闻详情8','2023-03-29 14:30:33'),(9,'新闻名称9','upload/news9.jpg',1,'2023-03-29 14:30:33','新闻详情9','2023-03-29 14:30:33'),(10,'新闻名称10','upload/news10.jpg',1,'2023-03-29 14:30:33','新闻详情10','2023-03-29 14:30:33'),(11,'新闻名称11','upload/news11.jpg',1,'2023-03-29 14:30:33','新闻详情11','2023-03-29 14:30:33'),(12,'新闻名称12','upload/news12.jpg',1,'2023-03-29 14:30:33','新闻详情12','2023-03-29 14:30:33'),(13,'新闻名称13','upload/news13.jpg',1,'2023-03-29 14:30:33','新闻详情13','2023-03-29 14:30:33'),(14,'新闻名称14','upload/news14.jpg',2,'2023-03-29 14:30:33','新闻详情14','2023-03-29 14:30:33');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sushe_uuid_number` varchar(200) DEFAULT NULL COMMENT '宿舍编号 Search111  ',
  `loudong_types` int(11) NOT NULL COMMENT '楼栋 Search111 ',
  `danyuan_types` int(11) NOT NULL COMMENT '单元 Search111 ',
  `sushe_name` varchar(200) DEFAULT NULL COMMENT '宿舍名称 Search111  ',
  `sushe_address` varchar(200) DEFAULT NULL COMMENT '宿舍位置',
  `sushe_content` text COMMENT '宿舍备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宿舍';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`sushe_uuid_number`,`loudong_types`,`danyuan_types`,`sushe_name`,`sushe_address`,`sushe_content`,`insert_time`,`create_time`) values (1,'1680071433951',1,2,'宿舍名称1','宿舍位置1','宿舍备注1','2023-03-29 14:30:33','2023-03-29 14:30:33'),(2,'1680071433941',2,2,'宿舍名称2','宿舍位置2','宿舍备注2','2023-03-29 14:30:33','2023-03-29 14:30:33'),(3,'1680071433970',2,1,'宿舍名称3','宿舍位置3','宿舍备注3','2023-03-29 14:30:33','2023-03-29 14:30:33'),(4,'1680071433946',2,1,'宿舍名称4','宿舍位置4','宿舍备注4','2023-03-29 14:30:33','2023-03-29 14:30:33'),(5,'1680071433972',2,1,'宿舍名称5','宿舍位置5','宿舍备注5','2023-03-29 14:30:33','2023-03-29 14:30:33'),(6,'1680071434002',1,1,'宿舍名称6','宿舍位置6','宿舍备注6','2023-03-29 14:30:33','2023-03-29 14:30:33'),(7,'1680071434010',1,2,'宿舍名称7','宿舍位置7','宿舍备注7','2023-03-29 14:30:33','2023-03-29 14:30:33'),(8,'1680071433961',1,2,'宿舍名称8','宿舍位置8','宿舍备注8','2023-03-29 14:30:33','2023-03-29 14:30:33'),(9,'1680071434031',2,2,'宿舍名称9','宿舍位置9','宿舍备注9','2023-03-29 14:30:33','2023-03-29 14:30:33'),(10,'1680071433996',2,2,'宿舍名称10','宿舍位置10','宿舍备注10','2023-03-29 14:30:33','2023-03-29 14:30:33'),(11,'1680071433954',2,2,'宿舍名称11','宿舍位置11','宿舍备注11','2023-03-29 14:30:33','2023-03-29 14:30:33'),(12,'1680071433961',2,2,'宿舍名称12','宿舍位置12','宿舍备注12','2023-03-29 14:30:33','2023-03-29 14:30:33'),(13,'1680071434028',1,1,'宿舍名称13','宿舍位置13','宿舍备注13','2023-03-29 14:30:33','2023-03-29 14:30:33'),(14,'1680071433937',1,2,'宿舍名称14','宿舍位置14','宿舍备注14','2023-03-29 14:30:33','2023-03-29 14:30:33');

/*Table structure for table `sushe_xuesheng` */

DROP TABLE IF EXISTS `sushe_xuesheng`;

CREATE TABLE `sushe_xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宿舍成员';

/*Data for the table `sushe_xuesheng` */

insert  into `sushe_xuesheng`(`id`,`xuesheng_id`,`sushe_id`,`insert_time`,`create_time`) values (1,1,1,'2023-03-29 14:30:33','2023-03-29 14:30:33'),(2,3,2,'2023-03-29 14:30:33','2023-03-29 14:30:33'),(3,2,3,'2023-03-29 14:30:33','2023-03-29 14:30:33');

/*Table structure for table `susheweisheng` */

DROP TABLE IF EXISTS `susheweisheng`;

CREATE TABLE `susheweisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `susheweisheng_uuid_numnber` varchar(200) DEFAULT NULL COMMENT '宿舍卫生编号 Search111  ',
  `susheweisheng_types` int(11) NOT NULL COMMENT '卫生状态 Search111 ',
  `dafen` decimal(10,2) DEFAULT NULL COMMENT '打分',
  `riqi_time` date DEFAULT NULL COMMENT '所属日期 Search111 ',
  `susheweisheng_content` text COMMENT '卫生详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='宿舍卫生';

/*Data for the table `susheweisheng` */

insert  into `susheweisheng`(`id`,`sushe_id`,`susheweisheng_uuid_numnber`,`susheweisheng_types`,`dafen`,`riqi_time`,`susheweisheng_content`,`insert_time`,`create_time`) values (1,1,'宿舍卫生编号1',1,'917.83','2023-03-29','卫生详情1','2023-03-29 14:30:33','2023-03-29 14:30:33'),(2,2,'宿舍卫生编号2',3,'624.95','2023-03-29','卫生详情2','2023-03-29 14:30:33','2023-03-29 14:30:33'),(3,3,'宿舍卫生编号3',3,'185.40','2023-03-29','卫生详情3','2023-03-29 14:30:33','2023-03-29 14:30:33'),(4,4,'宿舍卫生编号4',4,'743.36','2023-03-29','卫生详情4','2023-03-29 14:30:33','2023-03-29 14:30:33'),(5,5,'宿舍卫生编号5',3,'759.55','2023-03-29','卫生详情5','2023-03-29 14:30:33','2023-03-29 14:30:33'),(6,6,'宿舍卫生编号6',1,'617.99','2023-03-29','卫生详情6','2023-03-29 14:30:33','2023-03-29 14:30:33'),(7,7,'宿舍卫生编号7',3,'178.21','2023-03-29','卫生详情7','2023-03-29 14:30:33','2023-03-29 14:30:33'),(8,8,'宿舍卫生编号8',2,'925.76','2023-03-29','卫生详情8','2023-03-29 14:30:33','2023-03-29 14:30:33'),(9,9,'宿舍卫生编号9',3,'684.12','2023-03-29','卫生详情9','2023-03-29 14:30:33','2023-03-29 14:30:33'),(10,10,'宿舍卫生编号10',2,'108.73','2023-03-29','卫生详情10','2023-03-29 14:30:33','2023-03-29 14:30:33'),(11,11,'宿舍卫生编号11',4,'638.09','2023-03-29','卫生详情11','2023-03-29 14:30:33','2023-03-29 14:30:33'),(12,12,'宿舍卫生编号12',1,'87.20','2023-03-29','卫生详情12','2023-03-29 14:30:33','2023-03-29 14:30:33'),(13,13,'宿舍卫生编号13',3,'638.99','2023-03-29','卫生详情13','2023-03-29 14:30:33','2023-03-29 14:30:33'),(14,14,'宿舍卫生编号14',2,'533.18','2023-03-29','卫生详情14','2023-03-29 14:30:33','2023-03-29 14:30:33'),(15,12,'11111',2,'99.50','2023-03-28','<p>高士大夫归档</p>','2023-03-29 15:02:55','2023-03-29 15:02:55');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','x3q7dpj4r40aw7djxxo7nf4by972ufid','2023-03-29 14:36:21','2023-03-29 16:09:17'),(2,1,'a1','xuesheng','学生','mwz9f9euvrv1z6h5x5dkvwb25wnthd8i','2023-03-29 14:37:43','2023-03-29 15:58:34'),(3,1,'a1','guanlilaoshi','管理老师','u82mc4nnzg0bwk8uquze4btmp6ol6c0v','2023-03-29 15:05:55','2023-03-29 16:06:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-29 14:30:07');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_name`,`xuesheng_phone`,`xuesheng_id_number`,`xuesheng_photo`,`sex_types`,`xuesheng_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','学生姓名11','17703786901','410224199010102001','upload/xuesheng1.jpg',2,'1@qq.com',1,'2023-03-29 14:30:33'),(2,'a2','123456','学生姓名2','17703786902','410224199010102002','upload/xuesheng2.jpg',1,'2@qq.com',1,'2023-03-29 14:30:33'),(3,'a3','123456','学生姓名3','17703786903','410224199010102003','upload/xuesheng3.jpg',1,'3@qq.com',1,'2023-03-29 14:30:33');

/*Table structure for table `xueshengkaoqin` */

DROP TABLE IF EXISTS `xueshengkaoqin`;

CREATE TABLE `xueshengkaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `xueshengkaoqin_types` int(11) DEFAULT NULL COMMENT '考勤结果 Search111 ',
  `xueshengkaoqin_content` text COMMENT '考勤详情',
  `kaoqin_time` date DEFAULT NULL COMMENT '考勤日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='学生考勤';

/*Data for the table `xueshengkaoqin` */

insert  into `xueshengkaoqin`(`id`,`xuesheng_id`,`xueshengkaoqin_types`,`xueshengkaoqin_content`,`kaoqin_time`,`insert_time`,`create_time`) values (1,2,2,'考勤详情1','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(2,3,1,'考勤详情2','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(3,1,1,'考勤详情3','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(4,2,1,'考勤详情4','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(5,3,2,'考勤详情5','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(6,3,2,'考勤详情6','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(7,3,3,'考勤详情7','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(8,2,2,'考勤详情8','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(9,1,3,'考勤详情9','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(10,2,3,'考勤详情10','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(11,1,2,'考勤详情11','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(12,3,1,'考勤详情12','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(13,2,1,'考勤详情13','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(14,2,1,'考勤详情14','2023-03-29','2023-03-29 14:30:33','2023-03-29 14:30:33'),(15,1,1,'<p>更合适低功耗</p>','2023-03-28','2023-03-29 15:05:05','2023-03-29 15:05:05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
