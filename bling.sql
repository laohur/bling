# Host: localhost  (Version 5.5.5-10.2.7-MariaDB-log)
# Date: 2018-07-01 00:09:35
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "item"
#

CREATE TABLE `item` (
  `item_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '种类id',
  `product_id` int(11) unsigned DEFAULT 0 COMMENT '模型id',
  `category_id` int(11) DEFAULT 0,
  `intime` datetime DEFAULT NULL COMMENT '创建时间',
  `ontime` datetime DEFAULT NULL COMMENT '修改时间',
  `price` int(11) unsigned DEFAULT 999999 COMMENT '单价',
  `inventory` int(11) DEFAULT 0 COMMENT '库存',
  `status` int(11) DEFAULT 0 COMMENT '状态',
  `name` varchar(255) DEFAULT '商品名1' COMMENT '名称',
  `title` varchar(255) DEFAULT '标题1' COMMENT '标题',
  `brand` varchar(255) DEFAULT '品牌1',
  `image` varchar(255) DEFAULT '' COMMENT '根据id生成imgSrcUrl',
  `description` text DEFAULT NULL COMMENT '描述详情',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "item"
#

INSERT INTO `item` VALUES (1,0,0,'2018-06-29 20:52:13','2018-06-29 20:52:15',999999,0,0,'商品名1','标题1','品牌1','','春光灿烂'),(2,0,0,'2018-06-29 20:52:18','2018-06-29 20:52:20',999999,0,0,'商品名1','标题1','品牌1','','光彩夺目'),(3,0,0,'2018-06-29 20:52:21','2018-06-29 20:52:23',999999,0,0,'商品名1','标题1','品牌1','','美丽动人'),(4,0,0,'2018-06-29 20:52:24','2018-06-29 20:52:26',999999,0,0,'商品名1','标题1','品牌1','','五彩缤纷'),(5,0,0,'2018-06-29 20:52:30','2018-06-29 20:52:32',999999,0,0,'商品名1','标题1','品牌1','','美轮美奂'),(6,0,0,'2018-06-29 20:52:35','2018-06-29 20:52:37',999999,0,0,'商品名1','标题1','品牌1','','如火如荼');

#
# Structure for table "order"
#

CREATE TABLE `order` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `intime` datetime DEFAULT NULL COMMENT '创建时间',
  `ontime` datetime DEFAULT NULL COMMENT '修改时间',
  `client_id` int(11) DEFAULT 0 COMMENT '用户id',
  `pay_id` int(11) DEFAULT 0 COMMENT '支付id',
  `shipping_id` int(11) DEFAULT 0 COMMENT '快递id',
  `status` int(11) DEFAULT 0 COMMENT '订单状态',
  `total_price` int(11) DEFAULT 999999 COMMENT '总价 分',
  `basket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '购物篮 item_id,quantity;',
  `receiver` varchar(255) DEFAULT '收件人1' COMMENT '收件人',
  `phone` varchar(11) DEFAULT '18888888888',
  `destination` varchar(255) DEFAULT '银河系天堂路',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "order"
#

INSERT INTO `order` VALUES (1,'2018-06-29 20:51:39','2018-06-29 20:51:41',1,1,1,1,999999,'1,2;2,3','收件人1','18888888888','银河系天堂路');

#
# Structure for table "record"
#

CREATE TABLE `record` (
  `record_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT 0,
  `item_id` int(11) unsigned DEFAULT 0,
  `order_id` int(11) unsigned DEFAULT 0,
  `time` datetime DEFAULT NULL,
  `action` int(11) unsigned DEFAULT NULL COMMENT '1234增删改查',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "record"
#

INSERT INTO `record` VALUES (1,1,1,1,'2018-06-29 20:51:32',1);

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intime` datetime DEFAULT NULL COMMENT '插入时间',
  `ontime` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(11) unsigned DEFAULT 0,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(11) DEFAULT '1888888888' COMMENT '手机',
  `roles` varchar(255) DEFAULT NULL COMMENT '拥有角色 ,',
  `photo` varchar(255) DEFAULT '',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'2018-05-09 20:50:35','2018-06-29 20:50:39',0,'name1','pwd1','email1','1888888888','client','avatar'),(2,'2018-06-29 20:53:06','2018-06-29 20:53:08',0,'admin2','pwd2','email2','1888888888','admin','avator'),(5,'2018-06-30 09:59:27','2018-06-30 09:59:27',1,'???','666666','sd@dsf.com','15011070324','client','/img'),(12,'2018-06-30 10:54:14','2018-06-30 10:54:14',1,'???','666666','sd@dsf.com','15011070324','client','/img'),(16,'2018-06-30 11:06:54','2018-06-30 11:06:54',1,'???','666666','sd@dsf.com','15011070324','client','/img'),(17,'2018-06-30 11:08:28','2018-06-30 11:08:28',1,'???','666666','sd@dsf.com','15011070324','client','/img'),(18,'2018-06-30 14:35:15','2018-06-30 14:35:15',1,'name2','name2','sd@dsf.com','15011070324','admin','/img');
