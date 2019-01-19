/*
Navicat MySQL Data Transfer

Source Server         : venuebooking
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : venuebooking

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-01-19 12:56:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_announcement
-- ----------------------------
DROP TABLE IF EXISTS `t_announcement`;
CREATE TABLE `t_announcement` (
  `announcement_id` varchar(255) NOT NULL DEFAULT '' COMMENT '公告编号',
  `announcement_title` varchar(255) NOT NULL COMMENT '公告标题',
  `announcement_content` varchar(255) NOT NULL COMMENT '公告内容',
  `create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_announcement
-- ----------------------------
INSERT INTO `t_announcement` VALUES ('20180920152942099', '公告1', '内容1', '2018-09-20 15:29:42');
INSERT INTO `t_announcement` VALUES ('20180920154041074', '公告2', '内容2', '2018-09-20 15:40:41');
INSERT INTO `t_announcement` VALUES ('20180928222820052', '公告3', '内容3', '2018-09-28 22:28:20');
INSERT INTO `t_announcement` VALUES ('20180928222827009', '公告4', '内容4', '2018-09-28 22:28:27');
INSERT INTO `t_announcement` VALUES ('20180928222834089', '公告5', '内容5', '2018-09-28 22:28:34');
INSERT INTO `t_announcement` VALUES ('20181017210129018', '公告6', '内容6', '2018-10-17 21:01:29');

-- ----------------------------
-- Table structure for t_badminton_court
-- ----------------------------
DROP TABLE IF EXISTS `t_badminton_court`;
CREATE TABLE `t_badminton_court` (
  `court_id` varchar(255) NOT NULL DEFAULT '' COMMENT '场地编号',
  `category_id` varchar(255) NOT NULL COMMENT '类型编号',
  `court_name` varchar(255) NOT NULL COMMENT '场地名称',
  `court_price` int(11) NOT NULL COMMENT '场地单价',
  PRIMARY KEY (`court_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_badminton_court
-- ----------------------------
INSERT INTO `t_badminton_court` VALUES ('20180925151322071', '20180904084832024', '一号场', '0');
INSERT INTO `t_badminton_court` VALUES ('20180925151336019', '20180904084832024', '二号场', '0');
INSERT INTO `t_badminton_court` VALUES ('20180925151343080', '20180904084832024', '三号场', '0');
INSERT INTO `t_badminton_court` VALUES ('20180925151350044', '20180904084832024', '四号场', '0');
INSERT INTO `t_badminton_court` VALUES ('20180925151405080', '20180904084832024', '五号场', '0');

-- ----------------------------
-- Table structure for t_basketball_court
-- ----------------------------
DROP TABLE IF EXISTS `t_basketball_court`;
CREATE TABLE `t_basketball_court` (
  `court_id` varchar(255) NOT NULL DEFAULT '' COMMENT '场地编号',
  `category_id` varchar(255) NOT NULL COMMENT '类型编号',
  `court_name` varchar(255) NOT NULL COMMENT '场地名称',
  `court_price` int(11) NOT NULL COMMENT '场地单价',
  PRIMARY KEY (`court_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_basketball_court
-- ----------------------------
INSERT INTO `t_basketball_court` VALUES ('20180903215618063', '20180903215349000', '一号场', '31');
INSERT INTO `t_basketball_court` VALUES ('20180904084940083', '20180903215349000', '二号场', '35');
INSERT INTO `t_basketball_court` VALUES ('20180904085002057', '20180903215349000', '三号场', '40');
INSERT INTO `t_basketball_court` VALUES ('20180906155323004', '20180903215349000', '四号场', '45');
INSERT INTO `t_basketball_court` VALUES ('20180906155344050', '20180903215349000', '五号场', '50');
INSERT INTO `t_basketball_court` VALUES ('20180919152638073', '20180903215349000', '六号场', '20');

-- ----------------------------
-- Table structure for t_booking
-- ----------------------------
DROP TABLE IF EXISTS `t_booking`;
CREATE TABLE `t_booking` (
  `order_id` varchar(255) NOT NULL DEFAULT '' COMMENT '预订编号',
  `user_id` varchar(255) NOT NULL COMMENT '用户编号',
  `realname` varchar(255) NOT NULL COMMENT '预订人姓名',
  `phone` varchar(255) NOT NULL COMMENT '预订人电话',
  `category_name` varchar(255) NOT NULL COMMENT '场地类型',
  `court_name` varchar(255) NOT NULL COMMENT '场地名称',
  `create_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '订单创建日期',
  `booking_date` date NOT NULL COMMENT '预订日期',
  `booking_time` varchar(255) NOT NULL COMMENT '预订时间段',
  `booking_price` int(11) NOT NULL COMMENT '预订价格',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_booking
-- ----------------------------
INSERT INTO `t_booking` VALUES ('20180903220926018', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-03', '2018-01-01', '13-15', '60');
INSERT INTO `t_booking` VALUES ('20180904085139048', '20180903205802097', 'realname2', '12345678902', '篮球', '二号场', '2018-09-04', '2018-10-10', '15-17', '70');
INSERT INTO `t_booking` VALUES ('20180906155731063', '20180906155501061', 'realname5', '12345678905', '篮球', '一号场', '2018-09-06', '2018-09-20', '17-19', '60');
INSERT INTO `t_booking` VALUES ('20180912103149059', '20180906155501061', 'realname5', '12345678905', '篮球', '二号场', '2018-09-12', '2018-09-16', '15-17', '70');
INSERT INTO `t_booking` VALUES ('20180913101816098', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-13', '2018-09-13', '9-11', '0');
INSERT INTO `t_booking` VALUES ('20180913225217028', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-13', '2018-09-13', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20180913225823046', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-13', '2018-09-13', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20180913230549066', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-13', '2018-09-13', '15-17', '0');
INSERT INTO `t_booking` VALUES ('20180913230803028', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-13', '2018-09-13', '17-19', '0');
INSERT INTO `t_booking` VALUES ('20180913231134099', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-13', '2018-09-13', '19-21', '0');
INSERT INTO `t_booking` VALUES ('20180913231940025', '20180903205532054', 'realname1', '12345678901', '篮球', '二号场', '2018-09-13', '2018-09-13', '9-11', '0');
INSERT INTO `t_booking` VALUES ('20180913232023082', '20180903205532054', 'realname1', '12345678901', '篮球', '二号场', '2018-09-13', '2018-09-13', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20180913232141078', '20180903205532054', 'realname1', '12345678901', '篮球', '二号场', '2018-09-13', '2018-09-13', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20180914085341030', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-14', '2018-09-14', '9-11', '0');
INSERT INTO `t_booking` VALUES ('20180918160732082', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-18', '2018-09-18', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20180918160800022', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-18', '2018-09-18', '9-11', '0');
INSERT INTO `t_booking` VALUES ('20180918161316067', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-18', '2018-09-18', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20180918211753007', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-18', '2018-09-18', '15-17', '0');
INSERT INTO `t_booking` VALUES ('20180918221055078', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-18', '2018-09-18', '17-19', '0');
INSERT INTO `t_booking` VALUES ('20180918224350029', '20180903205532054', 'realname1', '12345678901', '篮球', '二号场', '2018-09-18', '2018-09-18', '9-11', '0');
INSERT INTO `t_booking` VALUES ('20180919091703021', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-19', '2018-09-19', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20180919135425003', '20180906155501061', 'realname5', '12345678905', '篮球', '五号场', '2018-09-19', '2018-09-25', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20180919210556027', '20180906155501061', 'realname5', '12345678905', '篮球', '三号场', '2018-09-19', '2018-09-19', '15-17', '0');
INSERT INTO `t_booking` VALUES ('20180920085234007', '20180903205532054', 'realname1', '12345678901', '篮球', '三号场', '2018-09-20', '2018-09-21', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20180925085247044', '20180903205532054', 'realname1', '12345678901', '篮球', '一号场', '2018-09-25', '2018-09-26', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20180925143117013', '20180903205532054', 'realname1', '12345678901', '篮球', '三号场', '2018-09-25', '2018-09-27', '15-17', '0');
INSERT INTO `t_booking` VALUES ('20180925145901072', '20180903205532054', 'realname1', '12345678901', '网球', '一号场', '2018-09-25', '2018-09-25', '9-11', '0');
INSERT INTO `t_booking` VALUES ('20180925145954084', '20180903205532054', 'realname1', '12345678901', '网球', '三号场', '2018-09-25', '2018-09-28', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20180925150802002', '20180903205532054', 'realname1', '12345678901', '网球', '二号场', '2018-09-25', '2018-09-26', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20180925152501079', '20180903205532054', 'realname1', '12345678901', '羽毛球', '四号场', '2018-09-25', '2018-09-25', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20180925152509040', '20180903205532054', 'realname1', '12345678901', '羽毛球', '二号场', '2018-09-25', '2018-09-26', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20180925152617065', '20180903205532054', 'realname1', '12345678901', '羽毛球', '四号场', '2018-09-25', '2018-09-27', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20181017212332050', '20180903205532054', 'realname1', '12345678901', '篮球', '五号场', '2018-10-17', '2018-10-17', '17-19', '0');
INSERT INTO `t_booking` VALUES ('20181017212451077', '20180903205532054', 'realname1', '12345678901', '网球', '二号场', '2018-10-17', '2018-10-18', '15-17', '0');
INSERT INTO `t_booking` VALUES ('20181017212459036', '20180903205532054', 'realname1', '12345678901', '篮球', '三号场', '2018-10-17', '2018-10-18', '17-19', '0');
INSERT INTO `t_booking` VALUES ('20181017212509047', '20180903205532054', 'realname1', '12345678901', '篮球', '四号场', '2018-10-17', '2018-10-19', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20181017212516030', '20180903205532054', 'realname1', '12345678901', '篮球', '三号场', '2018-10-17', '2018-10-20', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20181017212524010', '20180903205532054', 'realname1', '12345678901', '篮球', '五号场', '2018-10-17', '2018-10-21', '15-17', '0');
INSERT INTO `t_booking` VALUES ('20181017212531062', '20180903205532054', 'realname1', '12345678901', '篮球', '二号场', '2018-10-17', '2018-10-22', '17-19', '0');
INSERT INTO `t_booking` VALUES ('20181017212540077', '20180903205532054', 'realname1', '12345678901', '篮球', '四号场', '2018-10-17', '2018-10-18', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20181017212547000', '20180903205532054', 'realname1', '12345678901', '篮球', '三号场', '2018-10-17', '2018-10-19', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20181018090611090', '20180903205532054', 'realname1', '12345678901', '网球', '二号场', '2018-10-18', '2018-10-18', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20181018090626080', '20180903205532054', 'realname1', '12345678901', '篮球', '三号场', '2018-10-18', '2018-10-18', '15-17', '0');
INSERT INTO `t_booking` VALUES ('20181018090633033', '20180903205532054', 'realname1', '12345678901', '羽毛球', '四号场', '2018-10-18', '2018-10-18', '13-15', '0');
INSERT INTO `t_booking` VALUES ('20181018090800025', '20180903205532054', 'realname1', '12345678901', '网球', '三号场', '2018-10-18', '2018-10-18', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20181018094139058', '20180903205532054', 'realname1', '12345678901', '篮球', '二号场', '2018-10-18', '2018-10-18', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20190105193745005', '20180903205532054', 'realname1', '12345678901', '网球', '一号场', '2019-01-05', '2019-01-05', '11-13', '0');
INSERT INTO `t_booking` VALUES ('20190105193805098', '20180903205532054', 'realname1', '12345678901', '篮球', '二号场', '2019-01-05', '2019-01-05', '11-13', '0');

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `category_id` varchar(255) NOT NULL DEFAULT '' COMMENT '类型编号',
  `category_name` varchar(255) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('20180903215349000', '篮球');
INSERT INTO `t_category` VALUES ('20180904084748098', '网球');
INSERT INTO `t_category` VALUES ('20180904084832024', '羽毛球');

-- ----------------------------
-- Table structure for t_manager
-- ----------------------------
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager` (
  `manager_id` varchar(255) NOT NULL DEFAULT '' COMMENT '管理员编号',
  `manager_account` varchar(255) NOT NULL COMMENT '管理员账号',
  `manager_password` varchar(255) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manager
-- ----------------------------
INSERT INTO `t_manager` VALUES ('20180925092010097', 'manager1', 'password1');
INSERT INTO `t_manager` VALUES ('20180925092019029', 'manager2', 'password2');

-- ----------------------------
-- Table structure for t_tennis_court
-- ----------------------------
DROP TABLE IF EXISTS `t_tennis_court`;
CREATE TABLE `t_tennis_court` (
  `court_id` varchar(255) NOT NULL DEFAULT '' COMMENT '场地编号',
  `category_id` varchar(255) NOT NULL COMMENT '类型编号',
  `court_name` varchar(255) NOT NULL COMMENT '场地名称',
  `court_price` int(11) NOT NULL COMMENT '场地单价',
  PRIMARY KEY (`court_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tennis_court
-- ----------------------------
INSERT INTO `t_tennis_court` VALUES ('20180925144039097', '20180904084748098', '一号场', '0');
INSERT INTO `t_tennis_court` VALUES ('20180925144053003', '20180904084748098', '二号场', '0');
INSERT INTO `t_tennis_court` VALUES ('20180925144105024', '20180904084748098', '三号场', '0');
INSERT INTO `t_tennis_court` VALUES ('20180925144114010', '20180904084748098', '四号场', '0');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` varchar(255) NOT NULL DEFAULT '' COMMENT '用户编号',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `realname` varchar(255) NOT NULL COMMENT '真实姓名',
  `password` varchar(255) NOT NULL COMMENT '登录密码',
  `phone` varchar(255) NOT NULL COMMENT '手机号码',
  `id_num` varchar(255) NOT NULL COMMENT '身份证号码',
  `regdate` date NOT NULL DEFAULT '0000-00-00' COMMENT '注册日期',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('20180903205532054', 'username1', 'realname1', 'fGoYCzaJagqMAnh+6vsOTA==', '12345678901', '1111111111', '2018-09-03');
INSERT INTO `t_user` VALUES ('20180903205802097', 'username2', 'realname2', 'bLdfZSqbUnmOts8iAQV8cw==', '12345678902', '1111111112', '2018-09-03');
INSERT INTO `t_user` VALUES ('20180903205825024', 'username3', 'realname3', 'gZsGQ9a4ncm1ef38kJTyjg==', '12345678903', '1111111113', '2018-09-03');
INSERT INTO `t_user` VALUES ('20180904111314098', 'username4', 'realname4', 'NMyT7OC6nj9vI11K+XmxbA==', '12345678904', '1111111114', '2018-09-04');
INSERT INTO `t_user` VALUES ('20180906155501061', 'username5', 'realname5', '2w7dBKqsRQb37asDrIVdVg==', '12345678905', '1111111115', '2018-09-06');
INSERT INTO `t_user` VALUES ('20180906155532088', 'username6', 'realname6', 'IY3SeuvszsrmmthAjZo2vw==', '12345678906', '1111111116', '2018-09-06');
INSERT INTO `t_user` VALUES ('20180906155554055', 'username7', 'realname7', 'AM23u5Qs9rKQzrl9aspkow==', '12345678907', '1111111117', '2018-09-06');
DROP TRIGGER IF EXISTS `tri_announcement`;
DELIMITER ;;
CREATE TRIGGER `tri_announcement` BEFORE INSERT ON `t_announcement` FOR EACH ROW set new.announcement_id =concat(date_format(now(),'%Y%m%d%H%i%s'),lpad(FLOOR(RAND()*100),3,'0')),new.create_date=date_format(now(),'%Y-%m-%d %H:%i:%s')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_b_court_id`;
DELIMITER ;;
CREATE TRIGGER `tri_b_court_id` BEFORE INSERT ON `t_badminton_court` FOR EACH ROW set new.court_id =concat(date_format(now(),'%Y%m%d%H%i%s'),lpad(FLOOR(RAND()*100),3,'0'))
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_court_id`;
DELIMITER ;;
CREATE TRIGGER `tri_court_id` BEFORE INSERT ON `t_basketball_court` FOR EACH ROW set new.court_id =concat(date_format(now(),'%Y%m%d%H%i%s'),lpad(FLOOR(RAND()*100),3,'0'))
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_order_id`;
DELIMITER ;;
CREATE TRIGGER `tri_order_id` BEFORE INSERT ON `t_booking` FOR EACH ROW set new.order_id =concat(date_format(now(),'%Y%m%d%H%i%s'),lpad(FLOOR(RAND()*100),3,'0')),new.create_date=date_format(now(),'%Y-%m-%d')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_category_id`;
DELIMITER ;;
CREATE TRIGGER `tri_category_id` BEFORE INSERT ON `t_category` FOR EACH ROW set new.category_id =concat(date_format(now(),'%Y%m%d%H%i%s'),lpad(FLOOR(RAND()*100),3,'0'))
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_manager_id`;
DELIMITER ;;
CREATE TRIGGER `tri_manager_id` BEFORE INSERT ON `t_manager` FOR EACH ROW set new.manager_id =concat(date_format(now(),'%Y%m%d%H%i%s'),lpad(FLOOR(RAND()*100),3,'0'))
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_t_court_id`;
DELIMITER ;;
CREATE TRIGGER `tri_t_court_id` BEFORE INSERT ON `t_tennis_court` FOR EACH ROW set new.court_id =concat(date_format(now(),'%Y%m%d%H%i%s'),lpad(FLOOR(RAND()*100),3,'0'))
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_user_id`;
DELIMITER ;;
CREATE TRIGGER `tri_user_id` BEFORE INSERT ON `t_user` FOR EACH ROW set new.user_id =concat(date_format(now(),'%Y%m%d%H%i%s'),lpad(FLOOR(RAND()*100),3,'0')),new.regdate=date_format(now(),'%Y-%m-%d')
;;
DELIMITER ;
