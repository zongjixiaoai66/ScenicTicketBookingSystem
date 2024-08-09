/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t297`;
CREATE DATABASE IF NOT EXISTS `t297` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t297`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/laonianrenjingqudingpiao/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/laonianrenjingqudingpiao/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/laonianrenjingqudingpiao/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'lvyouluxian_types', '路线类型', 1, '路线类型1', NULL, NULL, '2022-03-09 09:24:56'),
	(2, 'lvyouluxian_types', '路线类型', 2, '路线类型2', NULL, NULL, '2022-03-09 09:24:56'),
	(3, 'lvyouluxian_types', '路线类型', 3, '路线类型3', NULL, NULL, '2022-03-09 09:24:56'),
	(4, 'lvyouluxian_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-09 09:24:56'),
	(5, 'lvyouluxian_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-03-09 09:24:56'),
	(6, 'lvyouluxian_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-03-09 09:24:56'),
	(7, 'jingdian_types', '景点类型', 1, '景点类型1', NULL, NULL, '2022-03-09 09:24:56'),
	(8, 'jingdian_types', '景点类型', 2, '景点类型2', NULL, NULL, '2022-03-09 09:24:56'),
	(9, 'jingdian_types', '景点类型', 3, '景点类型3', NULL, NULL, '2022-03-09 09:24:56'),
	(10, 'jingdian_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-09 09:24:56'),
	(11, 'jingdian_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-03-09 09:24:56'),
	(12, 'jingdian_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-03-09 09:24:56'),
	(13, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-09 09:24:56'),
	(14, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-09 09:24:56'),
	(15, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-09 09:24:56'),
	(16, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-09 09:24:56'),
	(17, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-09 09:24:56'),
	(18, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-09 09:24:56'),
	(19, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-09 09:24:56');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `jiaoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, 1, NULL, '发布内容1', NULL, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(2, '帖子标题2', 1, 2, NULL, '发布内容2', NULL, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(3, '帖子标题3', 2, 3, NULL, '发布内容3', NULL, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(4, '帖子标题4', 1, 4, NULL, '发布内容4', NULL, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(5, '帖子标题5', 1, 5, NULL, '发布内容5', NULL, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(8, NULL, 1, NULL, NULL, '用户评论123', 5, 2, '2022-04-04 13:08:32', NULL, '2022-04-04 13:08:32'),
	(9, NULL, NULL, NULL, 1, '管理回复123', 5, 2, '2022-04-04 13:13:53', NULL, '2022-04-04 13:13:53'),
	(10, NULL, 1, NULL, NULL, '666', 5, 2, '2024-07-24 03:51:19', NULL, '2024-07-24 03:51:19');

DROP TABLE IF EXISTS `jingdian`;
CREATE TABLE IF NOT EXISTS `jingdian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名称 Search111 ',
  `jingdian_types` int DEFAULT NULL COMMENT '景点类型 Search111',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdian_new_money` decimal(10,2) DEFAULT NULL COMMENT '景点门票',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `jingdian_content` text COMMENT '景点详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='景点信息';

DELETE FROM `jingdian`;
INSERT INTO `jingdian` (`id`, `jingdian_name`, `jingdian_types`, `jingdian_photo`, `jingdian_new_money`, `zan_number`, `cai_number`, `jingdian_content`, `insert_time`, `create_time`) VALUES
	(1, '景点名称1', 3, 'http://localhost:8080/laonianrenjingqudingpiao/upload/jingdian1.jpg', 336.51, 103, 379, '景点详情1', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(2, '景点名称2', 2, 'http://localhost:8080/laonianrenjingqudingpiao/upload/jingdian2.jpg', 1.11, 56, 170, '景点详情2', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(3, '景点名称3', 2, 'http://localhost:8080/laonianrenjingqudingpiao/upload/jingdian3.jpg', 267.87, 208, 387, '景点详情3', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(4, '景点名称4', 3, 'http://localhost:8080/laonianrenjingqudingpiao/upload/jingdian4.jpg', 876.71, 293, 456, '景点详情4', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(5, '景点名称5', 3, 'http://localhost:8080/laonianrenjingqudingpiao/upload/jingdian5.jpg', 838.90, 185, 20, '景点详情5', '2022-04-04 12:11:02', '2022-04-04 12:11:02');

DROP TABLE IF EXISTS `jingdian_collection`;
CREATE TABLE IF NOT EXISTS `jingdian_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int DEFAULT NULL COMMENT '景点',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingdian_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='景点收藏';

DELETE FROM `jingdian_collection`;
INSERT INTO `jingdian_collection` (`id`, `jingdian_id`, `yonghu_id`, `jingdian_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(2, 2, 1, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(3, 3, 3, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(4, 4, 3, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(5, 5, 2, 1, '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(11, 4, 1, 1, '2022-04-04 13:09:18', '2022-04-04 13:09:18');

DROP TABLE IF EXISTS `jingdian_liuyan`;
CREATE TABLE IF NOT EXISTS `jingdian_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int DEFAULT NULL COMMENT '景点',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingdian_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='景点留言';

DELETE FROM `jingdian_liuyan`;
INSERT INTO `jingdian_liuyan` (`id`, `jingdian_id`, `yonghu_id`, `jingdian_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '回复信息1', '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(2, 2, 3, '留言内容2', '回复信息2', '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(3, 3, 3, '留言内容3', '回复信息3', '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(4, 4, 1, '留言内容4', '回复信息4', '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(5, 5, 3, '留言内容5', '回复信息5', '2022-04-04 12:11:02', '2022-04-04 12:11:02', '2022-04-04 12:11:02'),
	(7, 4, 1, '1122333', '回复123', '2022-04-04 13:08:49', '2022-04-04 13:14:02', '2022-04-04 13:08:49');

DROP TABLE IF EXISTS `jingdian_order`;
CREATE TABLE IF NOT EXISTS `jingdian_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingdian_id` int DEFAULT NULL COMMENT '旅游景点',
  `jingdian_order_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `buy_number` int DEFAULT NULL COMMENT '预定人数',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='旅游景点预定';

DELETE FROM `jingdian_order`;
INSERT INTO `jingdian_order` (`id`, `yonghu_id`, `jingdian_id`, `jingdian_order_time`, `buy_number`, `create_time`) VALUES
	(3, 1, 3, '2022-04-04 12:56:58', 5, '2022-04-04 12:56:46'),
	(4, 1, 1, '2022-04-05 04:00:00', 4, '2022-04-04 13:08:04'),
	(5, 1, 4, NULL, 1, '2024-07-24 03:51:30');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/laonianrenjingqudingpiao/upload/news1.jpg', '2022-04-04 12:11:02', '公告详情1', '2022-04-04 12:11:02'),
	(2, '公告标题2', 3, 'http://localhost:8080/laonianrenjingqudingpiao/upload/news2.jpg', '2022-04-04 12:11:02', '公告详情2', '2022-04-04 12:11:02'),
	(3, '公告标题3', 1, 'http://localhost:8080/laonianrenjingqudingpiao/upload/news3.jpg', '2022-04-04 12:11:02', '公告详情3', '2022-04-04 12:11:02'),
	(4, '公告标题4', 1, 'http://localhost:8080/laonianrenjingqudingpiao/upload/news4.jpg', '2022-04-04 12:11:02', '公告详情4', '2022-04-04 12:11:02'),
	(5, '公告标题5', 3, 'http://localhost:8080/laonianrenjingqudingpiao/upload/news5.jpg', '2022-04-04 12:11:02', '公告详情5', '2022-04-04 12:11:02');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'p8hqlz4wdfb415qw1s47fnnla5m52bja', '2022-04-04 12:39:45', '2024-07-24 04:49:47'),
	(2, 1, 'a1', 'yonghu', '用户', '6oqo1tqzgqq7oa3m6sarh1o109kil5mp', '2022-04-04 12:56:00', '2024-07-24 04:51:05');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `new_money`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/laonianrenjingqudingpiao/upload/yonghu1.jpg', 1, '17703786901', '410224199610232001', '1@qq.com', 898388.85, 1, '2022-04-04 12:11:02'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/laonianrenjingqudingpiao/upload/yonghu2.jpg', 1, '17703786902', '410224199610232002', '2@qq.com', 857.16, 1, '2022-04-04 12:11:02'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/laonianrenjingqudingpiao/upload/yonghu3.jpg', 1, '17703786903', '410224199610232003', '3@qq.com', 952.60, 1, '2022-04-04 12:11:02');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
