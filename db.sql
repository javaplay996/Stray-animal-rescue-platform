/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - liulangdongwujiuzhu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`liulangdongwujiuzhu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `liulangdongwujiuzhu`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(2,1,'收货人2','17703786902','地址2',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(3,2,'收货人3','17703786903','地址3',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(4,3,'收货人4','17703786904','地址4',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(5,1,'收货人5','17703786905','地址5',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(6,1,'收货人6','17703786906','地址6',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(7,1,'收货人7','17703786907','地址7',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(8,3,'收货人8','17703786908','地址8',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(9,1,'收货人9','17703786909','地址9',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(10,1,'收货人10','17703786910','地址10',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(11,1,'收货人11','17703786911','地址11',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(12,1,'收货人12','17703786912','地址12',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(13,3,'收货人13','17703786913','地址13',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(14,1,'收货人14','17703786914','地址14',1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(15,4,'张三','17777777888','地址11',2,'2023-03-29 10:36:42','2023-03-29 10:36:42','2023-03-29 10:36:42');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-03-29 09:36:14'),(2,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-03-29 09:36:14'),(3,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-03-29 09:36:14'),(4,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-29 09:36:14'),(5,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-29 09:36:14'),(6,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-29 09:36:14'),(7,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-29 09:36:14'),(8,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-29 09:36:14'),(9,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-29 09:36:14'),(10,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-03-29 09:36:14'),(11,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-03-29 09:36:14'),(12,'xingbie_types','性别',1,'公',NULL,NULL,'2023-03-29 09:36:14'),(13,'xingbie_types','性别',2,'母',NULL,NULL,'2023-03-29 09:36:14'),(14,'dongwu_zhuangtai_types','动物状态',1,'未领养',NULL,NULL,'2023-03-29 09:36:14'),(15,'dongwu_zhuangtai_types','动物状态',2,'已领养',NULL,NULL,'2023-03-29 09:36:14'),(16,'liulangdongwu_types','动物类型',1,'猫',NULL,NULL,'2023-03-29 09:36:14'),(17,'liulangdongwu_types','动物类型',2,'狗',NULL,NULL,'2023-03-29 09:36:14'),(18,'liulangdongwu_erji_types','详细类型',1,'波斯猫',1,NULL,'2023-03-29 09:36:14'),(19,'liulangdongwu_erji_types','详细类型',2,'加菲猫',1,NULL,'2023-03-29 09:36:14'),(20,'liulangdongwu_erji_types','详细类型',3,'田园犬',2,NULL,'2023-03-29 09:36:14'),(21,'liulangdongwu_erji_types','详细类型',4,'阿拉斯加',2,NULL,'2023-03-29 09:36:14'),(22,'liulangdongwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-29 09:36:14'),(23,'liulangdongwu_order_types','领养状态',101,'已申请领养',NULL,NULL,'2023-03-29 09:36:14'),(24,'liulangdongwu_order_types','领养状态',102,'已取消申请',NULL,NULL,'2023-03-29 09:36:14'),(25,'liulangdongwu_order_types','领养状态',103,'已同意领养',NULL,NULL,'2023-03-29 09:36:14'),(26,'liulangdongwu_order_types','领养状态',104,'已收到宠物',NULL,NULL,'2023-03-29 09:36:14'),(27,'liulangdongwu_order_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-29 09:36:14'),(28,'liulangdongwu_order_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-29 09:36:14'),(29,'liulangdongwu_order_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-29 09:36:15'),(30,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-29 09:36:15'),(31,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-29 09:36:15'),(32,'liulangdongwu_huafei_types','消费类型',1,'消费类型1',NULL,NULL,'2023-03-29 09:36:15'),(33,'liulangdongwu_huafei_types','消费类型',2,'消费类型2',NULL,NULL,'2023-03-29 09:36:15'),(34,'liulangdongwu_huafei_types','消费类型',3,'消费类型3',NULL,NULL,'2023-03-29 09:36:15'),(35,'liulangdongwu_huafei_types','消费类型',4,'消费类型4',NULL,NULL,'2023-03-29 09:36:15'),(36,'liulangdongwu_jinkuang_types','流浪动物状态',1,'非常好',NULL,NULL,'2023-03-29 09:36:15'),(37,'liulangdongwu_jinkuang_types','流浪动物状态',2,'一般般',NULL,NULL,'2023-03-29 09:36:15'),(38,'liulangdongwu_jinkuang_types','流浪动物状态',3,'状态差',NULL,NULL,'2023-03-29 09:36:15'),(39,'liulangdongwu_jinkuang_types','流浪动物状态',4,'流浪动物近况类型4',NULL,NULL,'2023-03-29 09:36:15'),(40,'liulangdongwu_order_types','领养状态',109,'拒绝领养',NULL,'','2023-03-29 09:36:14'),(41,'liulangdongwu_erji_types','详细类型',5,'泰迪',2,'','2023-03-29 10:38:20'),(42,'liulangdongwu_jinkuang_types','流浪动物状态',5,'流浪动物近况类型5',NULL,'','2023-03-29 10:38:33');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',472,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(2,'帖子标题2',2,NULL,'发布内容2',289,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(3,'帖子标题3',3,NULL,'发布内容3',308,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(4,'帖子标题4',2,NULL,'发布内容4',477,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(5,'帖子标题5',3,NULL,'发布内容5',367,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(6,'帖子标题6',2,NULL,'发布内容6',274,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(7,'帖子标题7',2,NULL,'发布内容7',457,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(8,'帖子标题8',1,NULL,'发布内容8',45,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(9,'帖子标题9',2,NULL,'发布内容9',215,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(10,'帖子标题10',1,NULL,'发布内容10',209,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(11,'帖子标题11',2,NULL,'发布内容11',72,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(12,'帖子标题12',3,NULL,'发布内容12',113,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(13,'帖子标题13',3,NULL,'发布内容13',142,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(14,'帖子标题14',2,NULL,'发布内容14',251,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28','2023-03-29 09:38:28'),(15,NULL,1,NULL,'换个哈哈哈',14,NULL,2,'2023-03-29 10:37:51',NULL,'2023-03-29 10:37:51'),(16,'忒自11',1,NULL,'<p>更汗的是广东省供货商</p>',NULL,2,1,'2023-03-29 10:37:59',NULL,'2023-03-29 10:37:59'),(17,NULL,NULL,1,'哈哈哈',16,NULL,2,'2023-03-29 10:38:39',NULL,'2023-03-29 10:38:39');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-29 09:38:28','公告详情1','2023-03-29 09:38:28'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-29 09:38:28','公告详情2','2023-03-29 09:38:28'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-29 09:38:28','公告详情3','2023-03-29 09:38:28'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-29 09:38:28','公告详情4','2023-03-29 09:38:28'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-29 09:38:28','公告详情5','2023-03-29 09:38:28'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-29 09:38:28','公告详情6','2023-03-29 09:38:28'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-29 09:38:28','公告详情7','2023-03-29 09:38:28'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-29 09:38:28','公告详情8','2023-03-29 09:38:28'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-29 09:38:28','公告详情9','2023-03-29 09:38:28'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-29 09:38:28','公告详情10','2023-03-29 09:38:28'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-29 09:38:28','公告详情11','2023-03-29 09:38:28'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-29 09:38:28','公告详情12','2023-03-29 09:38:28'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-29 09:38:28','公告详情13','2023-03-29 09:38:28'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-29 09:38:28','公告详情14','2023-03-29 09:38:28');

/*Table structure for table `liulangdongwu` */

DROP TABLE IF EXISTS `liulangdongwu`;

CREATE TABLE `liulangdongwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwu_name` varchar(200) DEFAULT NULL COMMENT '流浪动物名称 Search111',
  `liulangdongwu_photo` varchar(200) DEFAULT NULL COMMENT '流浪动物照片',
  `liulangdongwu_types` int(11) DEFAULT NULL COMMENT '动物类型 Search111',
  `liulangdongwu_erji_types` int(11) DEFAULT NULL COMMENT '详细类型 Search111',
  `liulangdongwu_age` int(11) DEFAULT NULL COMMENT '流浪动物年龄',
  `liulangdongwu_jiezhong` varchar(11) DEFAULT NULL COMMENT '疫苗接种',
  `xingbie_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `liulangdongwu_zuyangjin` decimal(10,2) DEFAULT NULL COMMENT '助养金',
  `liulangdongwu_content` text COMMENT '动物介绍',
  `dongwu_zhuangtai_types` int(11) DEFAULT NULL COMMENT '动物状态 Search111',
  `liulangdongwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='流浪动物';

/*Data for the table `liulangdongwu` */

insert  into `liulangdongwu`(`id`,`liulangdongwu_name`,`liulangdongwu_photo`,`liulangdongwu_types`,`liulangdongwu_erji_types`,`liulangdongwu_age`,`liulangdongwu_jiezhong`,`xingbie_types`,`liulangdongwu_zuyangjin`,`liulangdongwu_content`,`dongwu_zhuangtai_types`,`liulangdongwu_delete`,`create_time`) values (1,'流浪动物名称1','upload/liulangdongwu1.jpg',1,1,1,'疫苗接种1',1,'525.01','动物介绍1',2,1,'2023-03-29 09:38:28'),(2,'流浪动物名称2','upload/liulangdongwu2.jpg',1,1,1,'疫苗接种2',2,'450.51','动物介绍2',1,1,'2023-03-29 09:38:28'),(3,'流浪动物名称3','upload/liulangdongwu3.jpg',1,1,1,'疫苗接种3',1,'428.25','动物介绍3',1,1,'2023-03-29 09:38:28'),(4,'流浪动物名称4','upload/liulangdongwu4.jpg',1,2,1,'疫苗接种4',2,'549.05','动物介绍4',2,1,'2023-03-29 09:38:28'),(5,'流浪动物名称5','upload/liulangdongwu5.jpg',1,2,1,'疫苗接种5',2,'646.33','动物介绍5',1,1,'2023-03-29 09:38:28'),(6,'流浪动物名称6','upload/liulangdongwu6.jpg',1,2,1,'疫苗接种6',2,'194.99','动物介绍6',2,1,'2023-03-29 09:38:28'),(7,'流浪动物名称7','upload/liulangdongwu7.jpg',1,2,1,'疫苗接种7',2,'306.48','动物介绍7',1,1,'2023-03-29 09:38:28'),(8,'流浪动物名称8','upload/liulangdongwu8.jpg',2,3,1,'疫苗接种8',1,'742.73','动物介绍8',2,1,'2023-03-29 09:38:28'),(9,'流浪动物名称9','upload/liulangdongwu9.jpg',2,3,2,'疫苗接种9',2,'790.49','动物介绍9',1,1,'2023-03-29 09:38:28'),(10,'流浪动物名称10','upload/liulangdongwu10.jpg',2,3,2,'疫苗接种10',1,'283.13','动物介绍10',2,1,'2023-03-29 09:38:28'),(11,'流浪动物名称11','upload/liulangdongwu11.jpg',2,3,2,'疫苗接种11',1,'596.99','动物介绍11',2,1,'2023-03-29 09:38:28'),(12,'流浪动物名称12','upload/liulangdongwu12.jpg',2,3,2,'疫苗接种12',1,'375.01','动物介绍12',2,1,'2023-03-29 09:38:28'),(13,'流浪动物名称13','upload/liulangdongwu13.jpg',2,4,2,'疫苗接种13',2,'128.04','动物介绍13',2,1,'2023-03-29 09:38:28'),(14,'流浪动物名称14','upload/liulangdongwu14.jpg',1,1,2,'疫苗接种14',2,'244.31','<p>动物介绍14</p>',2,1,'2023-03-29 09:38:28');

/*Table structure for table `liulangdongwu_collection` */

DROP TABLE IF EXISTS `liulangdongwu_collection`;

CREATE TABLE `liulangdongwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwu_id` int(11) DEFAULT NULL COMMENT '流浪动物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liulangdongwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='流浪动物收藏';

/*Data for the table `liulangdongwu_collection` */

insert  into `liulangdongwu_collection`(`id`,`liulangdongwu_id`,`yonghu_id`,`liulangdongwu_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(2,2,2,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(3,3,2,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(4,4,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(5,5,2,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(6,6,2,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(7,7,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(8,8,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(9,9,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(10,10,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(11,11,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(12,12,1,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(13,13,2,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(14,14,3,1,'2023-03-29 09:38:28','2023-03-29 09:38:28'),(15,13,1,1,'2023-03-29 10:02:27','2023-03-29 10:02:27'),(16,12,4,1,'2023-03-29 10:36:49','2023-03-29 10:36:49');

/*Table structure for table `liulangdongwu_huafei` */

DROP TABLE IF EXISTS `liulangdongwu_huafei`;

CREATE TABLE `liulangdongwu_huafei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `liulangdongwu_id` int(11) DEFAULT NULL COMMENT '流浪动物',
  `liulangdongwu_huafei_uuid_number` varchar(200) DEFAULT NULL COMMENT '流浪动物花费编号',
  `liulangdongwu_huafei_name` varchar(200) DEFAULT NULL COMMENT '花费标题  Search111 ',
  `liulangdongwu_huafei_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `liulangdongwu_huafei_money` decimal(10,2) DEFAULT NULL COMMENT '花费金额',
  `liulangdongwu_huafei_types` int(11) DEFAULT NULL COMMENT '消费类型 Search111',
  `huafei_time` timestamp NULL DEFAULT NULL COMMENT '花费时间',
  `liulangdongwu_huafei_content` longtext COMMENT '花费缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='流浪动物花费';

/*Data for the table `liulangdongwu_huafei` */

insert  into `liulangdongwu_huafei`(`id`,`liulangdongwu_id`,`liulangdongwu_huafei_uuid_number`,`liulangdongwu_huafei_name`,`liulangdongwu_huafei_file`,`liulangdongwu_huafei_money`,`liulangdongwu_huafei_types`,`huafei_time`,`liulangdongwu_huafei_content`,`insert_time`,`create_time`) values (1,1,'1680053908352','花费标题1','upload/file.rar','22.56',3,'2023-03-29 09:38:28','花费缘由1','2023-03-29 09:38:28','2023-03-29 09:38:28'),(2,2,'1680053908298','花费标题2','upload/file.rar','22.56',4,'2023-03-29 09:38:28','花费缘由2','2023-03-29 09:38:28','2023-03-29 09:38:28'),(3,3,'1680053908329','花费标题3','upload/file.rar','22.56',3,'2023-03-29 09:38:28','花费缘由3','2023-03-29 09:38:28','2023-03-29 09:38:28'),(4,4,'1680053908308','花费标题4','upload/file.rar','22.56',4,'2023-03-29 09:38:28','花费缘由4','2023-03-29 09:38:28','2023-03-29 09:38:28'),(5,5,'1680053908326','花费标题5','upload/file.rar','22.56',2,'2023-03-29 09:38:28','花费缘由5','2023-03-29 09:38:28','2023-03-29 09:38:28'),(6,6,'1680053908308','花费标题6','upload/file.rar','22.56',4,'2023-03-29 09:38:28','花费缘由6','2023-03-29 09:38:28','2023-03-29 09:38:28'),(7,7,'1680053908326','花费标题7','upload/file.rar','22.56',3,'2023-03-29 09:38:28','花费缘由7','2023-03-29 09:38:28','2023-03-29 09:38:28'),(8,8,'1680053908320','花费标题8','upload/file.rar','22.56',4,'2023-03-29 09:38:28','花费缘由8','2023-03-29 09:38:28','2023-03-29 09:38:28'),(9,9,'1680053908323','花费标题9','upload/file.rar','22.56',2,'2023-03-29 09:38:28','花费缘由9','2023-03-29 09:38:28','2023-03-29 09:38:28'),(10,10,'1680053908353','花费标题10','upload/file.rar','22.56',2,'2023-03-29 09:38:28','花费缘由10','2023-03-29 09:38:28','2023-03-29 09:38:28'),(11,11,'1680053908391','花费标题11','upload/file.rar','36.55',3,'2023-03-29 09:38:28','花费缘由11','2023-03-29 09:38:28','2023-03-29 09:38:28'),(12,12,'1680053908327','花费标题12','upload/file.rar','36.55',2,'2023-03-29 09:38:28','花费缘由12','2023-03-29 09:38:28','2023-03-29 09:38:28'),(13,13,'1680053908311','花费标题13','upload/file.rar','36.55',3,'2023-03-29 09:38:28','花费缘由13','2023-03-29 09:38:28','2023-03-29 09:38:28'),(14,14,'1680053908334','花费标题14','upload/file.rar','36.55',2,'2023-03-29 09:38:28','花费缘由14','2023-03-29 09:38:28','2023-03-29 09:38:28'),(15,12,'1680057578569','花费111','/upload/1680057586249.doc','33.00',3,'2023-03-29 10:39:50','<p>广大发给</p>','2023-03-29 10:39:53','2023-03-29 10:39:53');

/*Table structure for table `liulangdongwu_jinkuang` */

DROP TABLE IF EXISTS `liulangdongwu_jinkuang`;

CREATE TABLE `liulangdongwu_jinkuang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `liulangdongwu_id` int(11) DEFAULT NULL COMMENT '流浪动物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liulangdongwu_jinkuang_uuid_number` varchar(200) DEFAULT NULL COMMENT '流浪动物近况编号',
  `liulangdongwu_jinkuang_name` varchar(200) DEFAULT NULL COMMENT '近况标题  Search111 ',
  `liulangdongwu_jinkuang_photo` varchar(200) DEFAULT NULL COMMENT '宠物照片',
  `liulangdongwu_jinkuang_address` varchar(200) DEFAULT NULL COMMENT '记录地点',
  `liulangdongwu_jinkuang_types` int(11) DEFAULT NULL COMMENT '流浪动物状态 Search111',
  `jilu_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `liulangdongwu_jinkuang_content` longtext COMMENT '近况详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='流浪动物近况';

/*Data for the table `liulangdongwu_jinkuang` */

insert  into `liulangdongwu_jinkuang`(`id`,`liulangdongwu_id`,`yonghu_id`,`liulangdongwu_jinkuang_uuid_number`,`liulangdongwu_jinkuang_name`,`liulangdongwu_jinkuang_photo`,`liulangdongwu_jinkuang_address`,`liulangdongwu_jinkuang_types`,`jilu_time`,`liulangdongwu_jinkuang_content`,`insert_time`,`create_time`) values (1,1,3,'1680053908329','近况标题1','upload/liulangdongwu_jinkuang1.jpg','记录地点1',3,'2023-03-29 09:38:28','近况详情1','2023-03-29 09:38:28','2023-03-29 09:38:28'),(2,2,2,'1680053908329','近况标题2','upload/liulangdongwu_jinkuang2.jpg','记录地点2',4,'2023-03-29 09:38:28','近况详情2','2023-03-29 09:38:28','2023-03-29 09:38:28'),(3,3,1,'1680053908330','近况标题3','upload/liulangdongwu_jinkuang3.jpg','记录地点3',3,'2023-03-29 09:38:28','近况详情3','2023-03-29 09:38:28','2023-03-29 09:38:28'),(4,4,1,'1680053908370','近况标题4','upload/liulangdongwu_jinkuang4.jpg','记录地点4',2,'2023-03-29 09:38:28','近况详情4','2023-03-29 09:38:28','2023-03-29 09:38:28'),(5,5,3,'1680053908307','近况标题5','upload/liulangdongwu_jinkuang5.jpg','记录地点5',1,'2023-03-29 09:38:28','近况详情5','2023-03-29 09:38:28','2023-03-29 09:38:28'),(6,6,2,'1680053908321','近况标题6','upload/liulangdongwu_jinkuang6.jpg','记录地点6',4,'2023-03-29 09:38:28','近况详情6','2023-03-29 09:38:28','2023-03-29 09:38:28'),(7,7,2,'1680053908376','近况标题7','upload/liulangdongwu_jinkuang7.jpg','记录地点7',4,'2023-03-29 09:38:28','近况详情7','2023-03-29 09:38:28','2023-03-29 09:38:28'),(8,8,1,'1680053908306','近况标题8','upload/liulangdongwu_jinkuang8.jpg','记录地点8',1,'2023-03-29 09:38:28','近况详情8','2023-03-29 09:38:28','2023-03-29 09:38:28'),(9,9,1,'1680053908326','近况标题9','upload/liulangdongwu_jinkuang9.jpg','记录地点9',4,'2023-03-29 09:38:28','近况详情9','2023-03-29 09:38:28','2023-03-29 09:38:28'),(10,10,3,'1680053908384','近况标题10','upload/liulangdongwu_jinkuang10.jpg','记录地点10',3,'2023-03-29 09:38:28','近况详情10','2023-03-29 09:38:28','2023-03-29 09:38:28'),(11,11,3,'1680053908326','近况标题11','upload/liulangdongwu_jinkuang11.jpg','记录地点11',4,'2023-03-29 09:38:28','近况详情11','2023-03-29 09:38:28','2023-03-29 09:38:28'),(12,12,1,'1680053908332','近况标题12','upload/liulangdongwu_jinkuang12.jpg','记录地点12',1,'2023-03-29 09:38:28','近况详情12','2023-03-29 09:38:28','2023-03-29 09:38:28'),(13,13,3,'1680053908375','近况标题13','upload/liulangdongwu_jinkuang13.jpg','记录地点13',2,'2023-03-29 09:38:28','近况详情13','2023-03-29 09:38:28','2023-03-29 09:38:28'),(14,14,2,'1680053908332','近况标题14','upload/liulangdongwu_jinkuang14.jpg','记录地点14',3,'2023-03-29 09:38:28','近况详情14','2023-03-29 09:38:28','2023-03-29 09:38:28'),(15,11,1,'1680057437411','标题11','upload/1680057444609.jpg','地点111',3,'2023-03-30 00:00:00','还是的广东省格式的','2023-03-29 10:37:36','2023-03-29 10:37:36');

/*Table structure for table `liulangdongwu_liuyan` */

DROP TABLE IF EXISTS `liulangdongwu_liuyan`;

CREATE TABLE `liulangdongwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwu_id` int(11) DEFAULT NULL COMMENT '流浪动物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liulangdongwu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='流浪动物留言';

/*Data for the table `liulangdongwu_liuyan` */

insert  into `liulangdongwu_liuyan`(`id`,`liulangdongwu_id`,`yonghu_id`,`liulangdongwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-03-29 09:38:28','回复信息1','2023-03-29 09:38:28','2023-03-29 09:38:28'),(2,2,1,'留言内容2','2023-03-29 09:38:28','回复信息2','2023-03-29 09:38:28','2023-03-29 09:38:28'),(3,3,3,'留言内容3','2023-03-29 09:38:28','回复信息3','2023-03-29 09:38:28','2023-03-29 09:38:28'),(4,4,3,'留言内容4','2023-03-29 09:38:28','回复信息4','2023-03-29 09:38:28','2023-03-29 09:38:28'),(5,5,1,'留言内容5','2023-03-29 09:38:28','回复信息5','2023-03-29 09:38:28','2023-03-29 09:38:28'),(6,6,2,'留言内容6','2023-03-29 09:38:28','回复信息6','2023-03-29 09:38:28','2023-03-29 09:38:28'),(7,7,2,'留言内容7','2023-03-29 09:38:28','回复信息7','2023-03-29 09:38:28','2023-03-29 09:38:28'),(8,8,2,'留言内容8','2023-03-29 09:38:28','回复信息8','2023-03-29 09:38:28','2023-03-29 09:38:28'),(9,9,1,'留言内容9','2023-03-29 09:38:28','回复信息9','2023-03-29 09:38:28','2023-03-29 09:38:28'),(10,10,1,'留言内容10','2023-03-29 09:38:28','回复信息10','2023-03-29 09:38:28','2023-03-29 09:38:28'),(11,11,1,'留言内容11','2023-03-29 09:38:28','回复信息11','2023-03-29 09:38:28','2023-03-29 09:38:28'),(12,12,1,'留言内容12','2023-03-29 09:38:28','回复信息12','2023-03-29 09:38:28','2023-03-29 09:38:28'),(13,13,2,'留言内容13','2023-03-29 09:38:28','回复信息13','2023-03-29 09:38:28','2023-03-29 09:38:28'),(14,14,3,'留言内容14','2023-03-29 09:38:28','回复信息14','2023-03-29 09:38:28','2023-03-29 09:38:28'),(15,7,1,'yhjj干点啥风格','2023-03-29 10:29:02',NULL,NULL,'2023-03-29 10:29:02'),(16,6,4,'个哈哈哈或','2023-03-29 10:36:21','黑胡椒','2023-03-29 10:39:07','2023-03-29 10:36:21');

/*Table structure for table `liulangdongwu_order` */

DROP TABLE IF EXISTS `liulangdongwu_order`;

CREATE TABLE `liulangdongwu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '申请领养编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `liulangdongwu_id` int(11) DEFAULT NULL COMMENT '流浪动物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liulangdongwu_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `liulangdongwu_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `liulangdongwu_order_types` int(11) DEFAULT NULL COMMENT '领养状态 Search111 ',
  `liulangdongwu_order_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `liulangdongwu_order_yesno_text` longtext COMMENT '审核意见',
  `liulangdongwu_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='流浪动物订单';

/*Data for the table `liulangdongwu_order` */

insert  into `liulangdongwu_order`(`id`,`liulangdongwu_order_uuid_number`,`address_id`,`liulangdongwu_id`,`yonghu_id`,`liulangdongwu_order_courier_name`,`liulangdongwu_order_courier_number`,`liulangdongwu_order_types`,`liulangdongwu_order_yesno_types`,`liulangdongwu_order_yesno_text`,`liulangdongwu_order_shenhe_time`,`insert_time`,`create_time`) values (1,'1680055555298',9,12,1,NULL,NULL,102,NULL,NULL,NULL,'2023-03-29 10:05:55','2023-03-29 10:05:55'),(2,'1680055641164',2,13,1,NULL,NULL,101,1,NULL,NULL,'2023-03-29 10:07:21','2023-03-29 10:07:21'),(3,'1680057415517',15,6,4,'申通快递','235416551',103,2,'孤鸿寡鹄','2023-03-29 10:39:28','2023-03-29 10:36:56','2023-03-29 10:36:56');

/*Table structure for table `liulangdongwu_zhuyang` */

DROP TABLE IF EXISTS `liulangdongwu_zhuyang`;

CREATE TABLE `liulangdongwu_zhuyang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liulangdongwu_id` int(11) DEFAULT NULL COMMENT '流浪动物',
  `liulangdongwu_zhuyang_money` decimal(10,2) DEFAULT NULL COMMENT '助养金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '助养时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='流浪动物助养';

/*Data for the table `liulangdongwu_zhuyang` */

insert  into `liulangdongwu_zhuyang`(`id`,`yonghu_id`,`liulangdongwu_id`,`liulangdongwu_zhuyang_money`,`insert_time`,`create_time`) values (1,3,1,'689.68','2023-03-29 09:38:28','2023-03-29 09:38:28'),(2,1,2,'58.27','2023-03-29 09:38:28','2023-03-29 09:38:28'),(3,3,3,'803.61','2023-03-29 09:38:28','2023-03-29 09:38:28'),(4,2,4,'958.13','2023-03-29 09:38:28','2023-03-29 09:38:28'),(5,2,5,'264.31','2023-03-29 09:38:28','2023-03-29 09:38:28'),(6,2,6,'947.24','2023-03-29 09:38:28','2023-03-29 09:38:28'),(7,1,7,'724.42','2023-03-29 09:38:28','2023-03-29 09:38:28'),(8,2,8,'303.54','2023-03-29 09:38:28','2023-03-29 09:38:28'),(9,3,9,'557.80','2023-03-29 09:38:28','2023-03-29 09:38:28'),(10,3,10,'412.62','2023-03-29 09:38:28','2023-03-29 09:38:28'),(11,1,11,'86.72','2023-03-29 09:38:28','2023-03-29 09:38:28'),(12,1,12,'264.45','2023-03-29 09:38:28','2023-03-29 09:38:28'),(13,2,13,'484.48','2023-03-29 09:38:28','2023-03-29 09:38:28'),(14,3,14,'926.99','2023-03-29 09:38:28','2023-03-29 09:38:28'),(15,1,12,'99.00','2023-03-29 10:11:01','2023-03-29 10:11:01'),(16,1,7,'11.00','2023-03-29 10:29:18','2023-03-29 10:29:18'),(17,4,6,'22.00','2023-03-29 10:36:06','2023-03-29 10:36:06');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','ssqko6a47s3pbxk2id94wodk35xwpvc1','2023-03-29 09:45:29','2023-03-29 11:37:14'),(2,1,'admin','users','管理员','go6g9bu6wm8pajjizp02ixq6u6bbpr50','2023-03-29 10:30:30','2023-03-29 11:37:42'),(3,4,'a5','yonghu','用户','s6yg4swcj2nsk3h52rkv79yvjwu5aof2','2023-03-29 10:35:07','2023-03-29 11:35:08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-29 09:36:14');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','25.09',1,'2023-03-29 09:38:28'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','166.80',1,'2023-03-29 09:38:28'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','687.34',1,'2023-03-29 09:38:28'),(4,'a5','123456','张5','17788889999','555555888899999999','upload/1680057348139.jpg',2,'5@qq.com','9977.00',1,'2023-03-29 10:35:03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
