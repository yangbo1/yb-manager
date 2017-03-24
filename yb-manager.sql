/*
Navicat MySQL Data Transfer

Source Server         : 杨波
Source Server Version : 50022
Source Host           : 127.0.0.1:3306
Source Database       : yb-manager

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-03-24 23:58:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adm_id` int(10) NOT NULL auto_increment,
  `adminname` varchar(20) default NULL,
  `adminpassword` varchar(20) default NULL,
  PRIMARY KEY  (`adm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');
INSERT INTO `admin` VALUES ('2', 'shabi', '123');

-- ----------------------------
-- Table structure for balance
-- ----------------------------
DROP TABLE IF EXISTS `balance`;
CREATE TABLE `balance` (
  `ba_id` int(10) NOT NULL auto_increment,
  `money` float(20,1) NOT NULL,
  `gprs` bigint(20) NOT NULL,
  `c_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`ba_id`),
  KEY `c_id` (`c_id`),
  KEY `name4` (`name`),
  CONSTRAINT `c_id` FOREIGN KEY (`c_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `name4` FOREIGN KEY (`name`) REFERENCES `customer` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; (`name`) REFER `yb-manager/customer`(`';

-- ----------------------------
-- Records of balance
-- ----------------------------
INSERT INTO `balance` VALUES ('3', '614.3', '3000', '3', '杨波');
INSERT INTO `balance` VALUES ('5', '480.0', '3213', '5', '范冰冰');
INSERT INTO `balance` VALUES ('11', '9889.8', '1000', '11', '波多');
INSERT INTO `balance` VALUES ('12', '109.0', '213', '12', '杨幂');
INSERT INTO `balance` VALUES ('13', '3208.2', '3231', '13', '大木');
INSERT INTO `balance` VALUES ('14', '110.6', '0', '14', '吉泽');
INSERT INTO `balance` VALUES ('15', '2310.8', '0', '15', '舒淇');
INSERT INTO `balance` VALUES ('16', '-0.1', '0', '16', '阿娇');
INSERT INTO `balance` VALUES ('17', '332.5', '0', '17', '陈冠希');
INSERT INTO `balance` VALUES ('18', '308.8', '0', '18', '张柏芝');
INSERT INTO `balance` VALUES ('19', '3210.6', '0', '19', 'Angelababy');
INSERT INTO `balance` VALUES ('20', '122.0', '0', '20', '刘诗诗');

-- ----------------------------
-- Table structure for calldetails
-- ----------------------------
DROP TABLE IF EXISTS `calldetails`;
CREATE TABLE `calldetails` (
  `call_id` int(10) NOT NULL auto_increment,
  `createtime` datetime NOT NULL,
  `time` int(20) NOT NULL,
  `cost` float(20,1) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`call_id`),
  KEY `cust_id` (`cust_id`),
  KEY `name1` (`name`),
  CONSTRAINT `cust_id` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `name1` FOREIGN KEY (`name`) REFERENCES `customer` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 8192 kB; (`call_id`) REFER `yb-manager/customer';

-- ----------------------------
-- Records of calldetails
-- ----------------------------
INSERT INTO `calldetails` VALUES ('3', '2017-03-22 10:17:48', '12', '2.4', '3', '杨波');
INSERT INTO `calldetails` VALUES ('4', '2017-03-16 15:28:15', '22', '4.4', '5', '范冰冰');
INSERT INTO `calldetails` VALUES ('6', '2017-03-16 15:56:58', '1', '0.2', '5', '范冰冰');
INSERT INTO `calldetails` VALUES ('7', '2017-03-23 22:28:14', '20', '4.0', '3', '杨波');
INSERT INTO `calldetails` VALUES ('8', '2017-03-24 22:28:54', '3', '1.2', '3', '杨波');
INSERT INTO `calldetails` VALUES ('9', '2017-03-24 22:30:58', '1', '0.4', '3', '杨波');
INSERT INTO `calldetails` VALUES ('10', '2017-03-24 22:32:31', '1', '0.3', '3', '杨波');
INSERT INTO `calldetails` VALUES ('11', '2017-03-24 22:35:23', '6', '1.8', '3', '杨波');
INSERT INTO `calldetails` VALUES ('12', '2017-03-24 22:54:50', '1', '0.5', '12', '杨幂');
INSERT INTO `calldetails` VALUES ('13', '2017-03-24 22:54:55', '1', '0.5', '12', '杨幂');
INSERT INTO `calldetails` VALUES ('14', '2017-03-24 22:55:02', '2', '1.0', '12', '杨幂');
INSERT INTO `calldetails` VALUES ('15', '2017-03-24 22:57:39', '1', '0.1', '16', '阿娇');
INSERT INTO `calldetails` VALUES ('16', '2017-03-24 23:36:09', '1', '0.8', '13', '大木');
INSERT INTO `calldetails` VALUES ('17', '2017-03-24 23:36:17', '2', '1.6', '13', '大木');
INSERT INTO `calldetails` VALUES ('18', '2017-03-24 23:36:21', '1', '0.8', '13', '大木');
INSERT INTO `calldetails` VALUES ('19', '2017-03-24 23:36:23', '1', '0.8', '13', '大木');
INSERT INTO `calldetails` VALUES ('20', '2017-03-24 23:36:29', '1', '0.8', '13', '大木');
INSERT INTO `calldetails` VALUES ('21', '2017-03-24 23:39:54', '1', '0.1', '14', '吉泽');
INSERT INTO `calldetails` VALUES ('22', '2017-03-24 23:39:57', '1', '0.1', '14', '吉泽');
INSERT INTO `calldetails` VALUES ('23', '2017-03-24 23:40:02', '1', '0.1', '14', '吉泽');
INSERT INTO `calldetails` VALUES ('24', '2017-03-24 23:40:09', '1', '0.1', '14', '吉泽');
INSERT INTO `calldetails` VALUES ('25', '2017-03-24 23:40:35', '1', '0.3', '15', '舒淇');
INSERT INTO `calldetails` VALUES ('26', '2017-03-24 23:40:38', '1', '0.3', '15', '舒淇');
INSERT INTO `calldetails` VALUES ('27', '2017-03-24 23:40:41', '1', '0.3', '15', '舒淇');
INSERT INTO `calldetails` VALUES ('28', '2017-03-24 23:40:45', '1', '0.3', '15', '舒淇');
INSERT INTO `calldetails` VALUES ('29', '2017-03-24 23:41:13', '1', '0.1', '17', '陈冠希');
INSERT INTO `calldetails` VALUES ('30', '2017-03-24 23:41:17', '1', '0.1', '17', '陈冠希');
INSERT INTO `calldetails` VALUES ('31', '2017-03-24 23:41:22', '1', '0.1', '17', '陈冠希');
INSERT INTO `calldetails` VALUES ('32', '2017-03-24 23:41:29', '2', '0.2', '17', '陈冠希');
INSERT INTO `calldetails` VALUES ('33', '2017-03-24 23:42:01', '1', '0.8', '18', '张柏芝');
INSERT INTO `calldetails` VALUES ('34', '2017-03-24 23:42:04', '1', '0.8', '18', '张柏芝');
INSERT INTO `calldetails` VALUES ('35', '2017-03-24 23:42:07', '1', '0.8', '18', '张柏芝');
INSERT INTO `calldetails` VALUES ('36', '2017-03-24 23:42:11', '1', '0.8', '18', '张柏芝');
INSERT INTO `calldetails` VALUES ('37', '2017-03-24 23:42:55', '1', '0.4', '19', 'Angelababy');
INSERT INTO `calldetails` VALUES ('38', '2017-03-24 23:43:02', '2', '0.8', '19', 'Angelababy');
INSERT INTO `calldetails` VALUES ('39', '2017-03-24 23:43:09', '1', '0.4', '19', 'Angelababy');
INSERT INTO `calldetails` VALUES ('40', '2017-03-24 23:43:19', '2', '0.8', '19', 'Angelababy');
INSERT INTO `calldetails` VALUES ('41', '2017-03-24 23:43:45', '1', '0.2', '20', '刘诗诗');
INSERT INTO `calldetails` VALUES ('42', '2017-03-24 23:43:49', '1', '0.2', '20', '刘诗诗');
INSERT INTO `calldetails` VALUES ('43', '2017-03-24 23:43:53', '1', '0.2', '20', '刘诗诗');
INSERT INTO `calldetails` VALUES ('44', '2017-03-24 23:43:57', '1', '0.2', '20', '刘诗诗');
INSERT INTO `calldetails` VALUES ('45', '2017-03-24 23:44:01', '1', '0.2', '20', '刘诗诗');
INSERT INTO `calldetails` VALUES ('46', '2017-03-24 23:54:25', '2', '1.6', '11', '波多');
INSERT INTO `calldetails` VALUES ('47', '2017-03-24 23:56:32', '14', '11.2', '11', '波多');
INSERT INTO `calldetails` VALUES ('48', '2017-03-24 23:56:39', '5', '4.0', '11', '波多');
INSERT INTO `calldetails` VALUES ('49', '2017-03-24 23:56:45', '8', '6.4', '11', '波多');
INSERT INTO `calldetails` VALUES ('50', '2017-03-24 23:56:51', '9', '7.2', '11', '波多');
INSERT INTO `calldetails` VALUES ('51', '2017-03-24 23:57:03', '9', '7.2', '11', '波多');
INSERT INTO `calldetails` VALUES ('52', '2017-03-24 23:57:17', '10', '8.0', '11', '波多');
INSERT INTO `calldetails` VALUES ('53', '2017-03-24 23:57:28', '14', '11.2', '11', '波多');
INSERT INTO `calldetails` VALUES ('54', '2017-03-24 23:57:44', '5', '4.0', '11', '波多');
INSERT INTO `calldetails` VALUES ('55', '2017-03-24 23:57:54', '3', '2.4', '11', '波多');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cust_id` int(10) NOT NULL auto_increment,
  `username` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  `tel` bigint(20) default NULL,
  PRIMARY KEY  (`cust_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('3', '杨波', '123', '15612345678');
INSERT INTO `customer` VALUES ('5', '范冰冰', '123', '123123123');
INSERT INTO `customer` VALUES ('11', '波多', '123', '43243242342');
INSERT INTO `customer` VALUES ('12', '杨幂', '123', '412312312');
INSERT INTO `customer` VALUES ('13', '大木', '123', '412312312');
INSERT INTO `customer` VALUES ('14', '吉泽', '123', '241231231');
INSERT INTO `customer` VALUES ('15', '舒淇', '123', '213123123');
INSERT INTO `customer` VALUES ('16', '阿娇', '123', '213123123');
INSERT INTO `customer` VALUES ('17', '陈冠希', '123', '21312312312');
INSERT INTO `customer` VALUES ('18', '张柏芝', '123', '213123123');
INSERT INTO `customer` VALUES ('19', 'Angelababy', '123', '2312312312');
INSERT INTO `customer` VALUES ('20', '刘诗诗', '123', '2312312312');

-- ----------------------------
-- Table structure for gprsdetails
-- ----------------------------
DROP TABLE IF EXISTS `gprsdetails`;
CREATE TABLE `gprsdetails` (
  `gprs_id` int(10) NOT NULL auto_increment,
  `createtime` datetime NOT NULL,
  `usegprs` bigint(255) NOT NULL,
  `cu_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`gprs_id`),
  KEY `cu_id` (`cu_id`),
  KEY `name3` (`name`),
  CONSTRAINT `cu_id` FOREIGN KEY (`cu_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `name3` FOREIGN KEY (`name`) REFERENCES `customer` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gprsdetails
-- ----------------------------
INSERT INTO `gprsdetails` VALUES ('3', '2017-03-14 10:20:14', '100', '3', '杨波');
INSERT INTO `gprsdetails` VALUES ('5', '2017-03-15 15:56:02', '323', '5', '范冰冰');
INSERT INTO `gprsdetails` VALUES ('6', '2017-03-15 22:29:02', '1233', '5', '范冰冰');
INSERT INTO `gprsdetails` VALUES ('7', '2017-03-15 11:21:07', '323', '3', '杨波');
INSERT INTO `gprsdetails` VALUES ('8', '2017-03-22 11:21:22', '4231', '3', '杨波');
INSERT INTO `gprsdetails` VALUES ('9', '2017-03-07 22:50:54', '231', '11', '波多');
INSERT INTO `gprsdetails` VALUES ('10', '2017-03-08 22:51:18', '3213', '12', '杨幂');
INSERT INTO `gprsdetails` VALUES ('11', '2017-03-21 22:51:30', '12312', '13', '大木');
INSERT INTO `gprsdetails` VALUES ('12', '2017-03-25 22:51:43', '13123', '14', '吉泽');
INSERT INTO `gprsdetails` VALUES ('13', '2017-03-15 22:51:59', '12312', '15', '舒淇');
INSERT INTO `gprsdetails` VALUES ('14', '2017-03-22 22:52:14', '12312', '16', '阿娇');
INSERT INTO `gprsdetails` VALUES ('15', '2017-03-31 22:52:26', '213', '17', '陈冠希');
INSERT INTO `gprsdetails` VALUES ('16', '2017-03-29 22:52:40', '1231', '18', '张柏芝');
INSERT INTO `gprsdetails` VALUES ('17', '2017-03-22 22:52:56', '12312', '19', 'Angelababy');
INSERT INTO `gprsdetails` VALUES ('18', '2017-03-22 22:53:10', '31231', '20', '刘诗诗');
INSERT INTO `gprsdetails` VALUES ('19', '2017-03-22 00:00:00', '213', '11', '波多');
INSERT INTO `gprsdetails` VALUES ('20', '2017-03-22 22:12:10', '213', '11', '波多');
INSERT INTO `gprsdetails` VALUES ('21', '2017-03-22 22:32:10', '3213', '11', '波多');
INSERT INTO `gprsdetails` VALUES ('22', '2017-03-22 22:32:10', '323', '11', '波多');
INSERT INTO `gprsdetails` VALUES ('23', '2017-03-22 22:32:10', '233', '11', '波多');
INSERT INTO `gprsdetails` VALUES ('24', '2017-03-22 22:23:10', '213', '11', '波多');
INSERT INTO `gprsdetails` VALUES ('25', '2017-03-22 22:32:10', '11', '11', '波多');
INSERT INTO `gprsdetails` VALUES ('26', '2017-03-22 22:32:10', '3323', '11', '波多');
INSERT INTO `gprsdetails` VALUES ('27', '2017-03-22 22:12:10', '213', '12', '杨幂');
INSERT INTO `gprsdetails` VALUES ('28', '2017-03-22 22:32:10', '3213', '12', '杨幂');
INSERT INTO `gprsdetails` VALUES ('29', '2017-03-22 22:32:10', '323', '12', '杨幂');
INSERT INTO `gprsdetails` VALUES ('30', '2017-03-22 22:32:10', '233', '12', '杨幂');
INSERT INTO `gprsdetails` VALUES ('31', '2017-03-22 22:23:10', '213', '12', '杨幂');
INSERT INTO `gprsdetails` VALUES ('32', '2017-03-22 22:32:10', '12', '12', '杨幂');
INSERT INTO `gprsdetails` VALUES ('33', '2017-03-22 22:32:10', '3323', '12', '杨幂');
INSERT INTO `gprsdetails` VALUES ('34', '2017-03-22 22:13:10', '213', '13', '大木');
INSERT INTO `gprsdetails` VALUES ('35', '2017-03-22 22:32:10', '3213', '13', '大木');
INSERT INTO `gprsdetails` VALUES ('36', '2017-03-22 22:32:10', '323', '13', '大木');
INSERT INTO `gprsdetails` VALUES ('37', '2017-03-22 22:32:10', '233', '13', '大木');
INSERT INTO `gprsdetails` VALUES ('38', '2017-03-22 22:23:10', '213', '13', '大木');
INSERT INTO `gprsdetails` VALUES ('39', '2017-03-22 22:32:10', '13', '13', '大木');
INSERT INTO `gprsdetails` VALUES ('40', '2017-03-22 22:32:10', '3323', '13', '大木');
INSERT INTO `gprsdetails` VALUES ('41', '2017-03-22 22:14:10', '214', '14', '吉泽');
INSERT INTO `gprsdetails` VALUES ('42', '2017-03-22 22:32:10', '3214', '14', '吉泽');
INSERT INTO `gprsdetails` VALUES ('43', '2017-03-22 22:32:10', '323', '14', '吉泽');
INSERT INTO `gprsdetails` VALUES ('44', '2017-03-22 22:32:10', '233', '14', '吉泽');
INSERT INTO `gprsdetails` VALUES ('45', '2017-03-22 22:23:10', '214', '14', '吉泽');
INSERT INTO `gprsdetails` VALUES ('46', '2017-03-22 22:32:10', '14', '14', '吉泽');
INSERT INTO `gprsdetails` VALUES ('47', '2017-03-22 22:32:10', '3323', '14', '吉泽');
INSERT INTO `gprsdetails` VALUES ('48', '2017-03-22 22:15:10', '215', '15', '舒淇');
INSERT INTO `gprsdetails` VALUES ('49', '2017-03-22 22:32:10', '3215', '15', '舒淇');
INSERT INTO `gprsdetails` VALUES ('50', '2017-03-22 22:32:10', '323', '15', '舒淇');
INSERT INTO `gprsdetails` VALUES ('51', '2017-03-22 22:32:10', '233', '15', '舒淇');
INSERT INTO `gprsdetails` VALUES ('52', '2017-03-22 22:23:10', '215', '15', '舒淇');
INSERT INTO `gprsdetails` VALUES ('53', '2017-03-22 22:32:10', '15', '15', '舒淇');
INSERT INTO `gprsdetails` VALUES ('54', '2017-03-22 22:32:10', '3323', '15', '舒淇');
INSERT INTO `gprsdetails` VALUES ('55', '2017-03-22 22:16:10', '216', '16', '阿娇');
INSERT INTO `gprsdetails` VALUES ('56', '2017-03-22 22:32:10', '3216', '16', '阿娇');
INSERT INTO `gprsdetails` VALUES ('57', '2017-03-22 22:32:10', '323', '16', '阿娇');
INSERT INTO `gprsdetails` VALUES ('58', '2017-03-22 22:32:10', '233', '16', '阿娇');
INSERT INTO `gprsdetails` VALUES ('59', '2017-03-22 22:23:10', '216', '16', '阿娇');
INSERT INTO `gprsdetails` VALUES ('60', '2017-03-22 22:32:10', '16', '16', '阿娇');
INSERT INTO `gprsdetails` VALUES ('61', '2017-03-22 22:32:10', '3323', '16', '阿娇');
INSERT INTO `gprsdetails` VALUES ('62', '2017-03-22 22:17:10', '217', '17', '陈冠希');
INSERT INTO `gprsdetails` VALUES ('63', '2017-03-22 22:32:10', '3217', '17', '陈冠希');
INSERT INTO `gprsdetails` VALUES ('64', '2017-03-22 22:32:10', '323', '17', '陈冠希');
INSERT INTO `gprsdetails` VALUES ('65', '2017-03-22 22:32:10', '233', '17', '陈冠希');
INSERT INTO `gprsdetails` VALUES ('66', '2017-03-22 22:23:10', '217', '17', '陈冠希');
INSERT INTO `gprsdetails` VALUES ('67', '2017-03-22 22:32:10', '17', '17', '陈冠希');
INSERT INTO `gprsdetails` VALUES ('68', '2017-03-22 22:32:10', '3323', '17', '陈冠希');
INSERT INTO `gprsdetails` VALUES ('69', '2018-03-22 22:18:10', '218', '18', '张柏芝');
INSERT INTO `gprsdetails` VALUES ('70', '2018-03-22 22:32:10', '3218', '18', '张柏芝');
INSERT INTO `gprsdetails` VALUES ('71', '2018-03-22 22:32:10', '323', '18', '张柏芝');
INSERT INTO `gprsdetails` VALUES ('72', '2018-03-22 22:32:10', '233', '18', '张柏芝');
INSERT INTO `gprsdetails` VALUES ('73', '2018-03-22 22:23:10', '218', '18', '张柏芝');
INSERT INTO `gprsdetails` VALUES ('74', '2018-03-22 22:32:10', '18', '18', '张柏芝');
INSERT INTO `gprsdetails` VALUES ('75', '2018-03-22 22:32:10', '3323', '18', '张柏芝');
INSERT INTO `gprsdetails` VALUES ('76', '2019-03-22 22:19:10', '219', '19', 'Angelababy');
INSERT INTO `gprsdetails` VALUES ('77', '2019-03-22 22:32:10', '3219', '19', 'Angelababy');
INSERT INTO `gprsdetails` VALUES ('78', '2019-03-22 22:32:10', '323', '19', 'Angelababy');
INSERT INTO `gprsdetails` VALUES ('79', '2019-03-22 22:32:10', '233', '19', 'Angelababy');
INSERT INTO `gprsdetails` VALUES ('80', '2019-03-22 22:23:10', '219', '19', 'Angelababy');
INSERT INTO `gprsdetails` VALUES ('81', '2019-03-22 22:32:10', '19', '19', 'Angelababy');
INSERT INTO `gprsdetails` VALUES ('82', '2019-03-22 22:32:10', '3323', '19', 'Angelababy');
INSERT INTO `gprsdetails` VALUES ('83', '2020-03-22 22:20:10', '220', '20', '刘诗诗');
INSERT INTO `gprsdetails` VALUES ('84', '2020-03-22 22:32:10', '3220', '20', '刘诗诗');
INSERT INTO `gprsdetails` VALUES ('85', '2020-03-22 22:32:10', '323', '20', '刘诗诗');
INSERT INTO `gprsdetails` VALUES ('86', '2020-03-22 22:32:10', '233', '20', '刘诗诗');
INSERT INTO `gprsdetails` VALUES ('87', '2020-03-22 22:23:10', '220', '20', '刘诗诗');
INSERT INTO `gprsdetails` VALUES ('88', '2020-03-22 22:32:10', '20', '20', '刘诗诗');
INSERT INTO `gprsdetails` VALUES ('89', '2020-03-22 22:32:10', '3323', '20', '刘诗诗');

-- ----------------------------
-- Table structure for messagedetails
-- ----------------------------
DROP TABLE IF EXISTS `messagedetails`;
CREATE TABLE `messagedetails` (
  `mess_id` int(10) NOT NULL auto_increment,
  `createtime` datetime NOT NULL,
  `quantities` int(10) NOT NULL,
  `cost` float(20,1) NOT NULL,
  `cus_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`mess_id`),
  KEY `cus_id` (`cus_id`),
  KEY `name2` (`name`),
  CONSTRAINT `cus_id` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `name2` FOREIGN KEY (`name`) REFERENCES `customer` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messagedetails
-- ----------------------------
INSERT INTO `messagedetails` VALUES ('3', '2017-03-23 10:19:14', '2', '0.2', '3', '杨波');
INSERT INTO `messagedetails` VALUES ('6', '2017-03-15 12:48:12', '3', '0.3', '3', '杨波');
INSERT INTO `messagedetails` VALUES ('7', '2017-03-22 12:48:31', '1', '0.1', '3', '杨波');
INSERT INTO `messagedetails` VALUES ('8', '2017-03-25 12:48:46', '2', '0.2', '3', '杨波');
INSERT INTO `messagedetails` VALUES ('9', '2017-03-14 22:47:13', '1', '0.1', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('10', '2017-03-22 22:47:48', '12', '1.2', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('11', '2017-12-20 22:48:12', '2', '0.2', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('12', '2017-03-22 22:48:33', '3', '0.3', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('13', '2017-03-24 22:49:09', '4', '0.4', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('14', '2017-04-27 22:49:31', '5', '0.5', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('15', '2017-03-24 22:49:54', '5', '0.5', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('16', '2017-03-23 22:50:10', '7', '0.7', '13', '大木');
INSERT INTO `messagedetails` VALUES ('17', '2017-03-25 22:51:43', '4', '0.4', '11', '波多');
INSERT INTO `messagedetails` VALUES ('18', '2017-03-25 22:51:41', '2', '0.2', '11', '波多');
INSERT INTO `messagedetails` VALUES ('19', '2017-03-11 22:52:43', '4', '0.4', '11', '波多');
INSERT INTO `messagedetails` VALUES ('20', '2017-12-25 22:53:42', '5', '0.5', '11', '波多');
INSERT INTO `messagedetails` VALUES ('21', '2017-05-25 22:53:43', '4', '0.4', '11', '波多');
INSERT INTO `messagedetails` VALUES ('22', '2017-04-25 22:53:44', '6', '0.6', '11', '波多');
INSERT INTO `messagedetails` VALUES ('23', '2017-02-25 22:54:45', '7', '0.7', '11', '波多');
INSERT INTO `messagedetails` VALUES ('24', '2017-01-25 22:55:45', '4', '0.4', '11', '波多');
INSERT INTO `messagedetails` VALUES ('25', '2017-02-25 22:55:43', '12', '1.2', '11', '波多');
INSERT INTO `messagedetails` VALUES ('26', '2017-01-25 22:51:46', '22', '2.2', '11', '波多');
INSERT INTO `messagedetails` VALUES ('27', '2017-02-25 22:51:44', '4', '0.4', '11', '波多');
INSERT INTO `messagedetails` VALUES ('28', '2017-03-25 22:51:43', '1', '0.1', '11', '波多');
INSERT INTO `messagedetails` VALUES ('29', '2017-03-25 22:51:41', '2', '0.2', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('30', '2017-03-12 22:52:43', '4', '0.4', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('31', '2017-12-25 22:53:42', '5', '0.5', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('32', '2017-05-25 22:53:43', '4', '0.4', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('33', '2017-04-25 22:53:44', '6', '0.6', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('34', '2017-02-25 22:54:45', '7', '0.7', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('35', '2017-01-25 22:55:45', '4', '0.4', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('36', '2017-02-25 22:55:43', '12', '1.2', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('37', '2017-01-25 22:51:46', '22', '2.2', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('38', '2017-02-25 22:51:44', '4', '0.4', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('39', '2017-03-25 22:51:43', '1', '0.1', '12', '杨幂');
INSERT INTO `messagedetails` VALUES ('40', '2017-03-25 22:51:41', '2', '0.2', '13', '大木');
INSERT INTO `messagedetails` VALUES ('41', '2017-03-13 22:52:43', '4', '0.4', '13', '大木');
INSERT INTO `messagedetails` VALUES ('42', '2017-03-25 22:51:41', '2', '0.2', '13', '大木');
INSERT INTO `messagedetails` VALUES ('43', '2017-03-13 22:52:43', '4', '0.4', '13', '大木');
INSERT INTO `messagedetails` VALUES ('44', '2017-11-25 22:53:42', '5', '0.5', '13', '大木');
INSERT INTO `messagedetails` VALUES ('45', '2017-05-25 22:53:43', '4', '0.4', '13', '大木');
INSERT INTO `messagedetails` VALUES ('46', '2017-04-25 22:53:44', '6', '0.6', '13', '大木');
INSERT INTO `messagedetails` VALUES ('47', '2017-02-25 22:54:45', '7', '0.7', '13', '大木');
INSERT INTO `messagedetails` VALUES ('48', '2017-01-25 22:55:45', '4', '0.4', '13', '大木');
INSERT INTO `messagedetails` VALUES ('49', '2017-02-25 22:55:43', '12', '1.2', '13', '大木');
INSERT INTO `messagedetails` VALUES ('50', '2017-01-25 22:51:46', '22', '2.2', '13', '大木');
INSERT INTO `messagedetails` VALUES ('51', '2017-02-25 22:51:44', '4', '0.4', '13', '大木');
INSERT INTO `messagedetails` VALUES ('52', '2017-03-25 22:51:43', '1', '0.1', '13', '大木');
INSERT INTO `messagedetails` VALUES ('53', '2017-03-25 22:51:41', '2', '0.2', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('54', '2017-03-14 22:52:43', '4', '0.4', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('55', '2017-11-25 22:53:42', '5', '0.5', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('56', '2017-05-25 22:53:43', '4', '0.4', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('57', '2017-04-25 22:53:44', '6', '0.6', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('58', '2017-02-25 22:54:45', '7', '0.7', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('59', '2017-01-25 22:55:45', '4', '0.4', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('60', '2017-02-25 22:55:43', '12', '1.2', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('61', '2017-01-25 22:51:46', '22', '2.2', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('62', '2017-02-25 22:51:44', '4', '0.4', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('63', '2017-03-25 22:51:43', '1', '0.1', '14', '吉泽');
INSERT INTO `messagedetails` VALUES ('64', '2017-03-25 22:51:41', '2', '0.2', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('65', '2017-03-15 22:52:43', '4', '0.4', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('66', '2017-11-25 22:53:42', '5', '0.5', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('67', '2017-05-25 22:53:43', '4', '0.4', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('68', '2017-04-25 22:53:44', '6', '0.6', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('69', '2017-02-25 22:54:45', '7', '0.7', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('70', '2017-01-25 22:55:45', '4', '0.4', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('71', '2017-02-25 22:55:43', '12', '1.2', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('72', '2017-01-25 22:51:46', '22', '2.2', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('73', '2017-02-25 22:51:44', '4', '0.4', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('74', '2017-03-25 22:51:43', '1', '0.1', '15', '舒淇');
INSERT INTO `messagedetails` VALUES ('75', '2017-03-25 22:51:41', '2', '0.2', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('76', '2017-03-16 22:52:43', '4', '0.4', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('77', '2017-11-25 22:53:42', '5', '0.5', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('78', '2017-05-25 22:53:43', '4', '0.4', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('79', '2017-04-25 22:53:44', '6', '0.6', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('80', '2017-02-25 22:54:45', '7', '0.7', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('81', '2017-01-25 22:55:45', '4', '0.4', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('82', '2017-02-25 22:55:43', '12', '1.2', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('83', '2017-01-25 22:51:46', '22', '2.2', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('84', '2017-02-25 22:51:44', '4', '0.4', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('85', '2017-03-25 22:51:43', '1', '0.1', '16', '阿娇');
INSERT INTO `messagedetails` VALUES ('86', '2017-03-25 22:51:41', '2', '0.2', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('87', '2017-03-17 22:52:43', '4', '0.4', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('88', '2017-11-25 22:53:42', '5', '0.5', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('89', '2017-05-25 22:53:43', '4', '0.4', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('90', '2017-04-25 22:53:44', '6', '0.6', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('91', '2017-02-25 22:54:45', '7', '0.7', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('92', '2017-01-25 22:55:45', '4', '0.4', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('93', '2017-02-25 22:55:43', '12', '1.2', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('94', '2017-01-25 22:51:46', '22', '2.2', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('95', '2017-02-25 22:51:44', '4', '0.4', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('96', '2017-03-25 22:51:43', '1', '0.1', '17', '陈冠希');
INSERT INTO `messagedetails` VALUES ('97', '2018-03-25 22:51:41', '2', '0.2', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('98', '2018-03-18 22:52:43', '4', '0.4', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('99', '2018-11-25 22:53:42', '5', '0.5', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('100', '2018-05-25 22:53:43', '4', '0.4', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('101', '2018-04-25 22:53:44', '6', '0.6', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('102', '2018-02-25 22:54:45', '7', '0.7', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('103', '2018-01-25 22:55:45', '4', '0.4', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('104', '2018-02-25 22:55:43', '12', '1.2', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('105', '2018-01-25 22:51:46', '22', '2.2', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('106', '2018-02-25 22:51:44', '4', '0.4', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('107', '2018-03-25 22:51:43', '1', '0.1', '18', '张柏芝');
INSERT INTO `messagedetails` VALUES ('108', '2019-03-25 22:51:41', '2', '0.2', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('109', '2019-03-19 22:52:43', '4', '0.4', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('110', '2019-11-25 22:53:42', '5', '0.5', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('111', '2019-05-25 22:53:43', '4', '0.4', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('112', '2019-04-25 22:53:44', '6', '0.6', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('113', '2019-02-25 22:54:45', '7', '0.7', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('114', '2019-01-25 22:55:45', '4', '0.4', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('115', '2019-02-25 22:55:43', '12', '1.2', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('116', '2019-01-25 22:51:46', '22', '2.2', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('117', '2019-02-25 22:51:44', '4', '0.4', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('118', '2019-03-25 22:51:43', '1', '0.1', '19', 'Angelababy');
INSERT INTO `messagedetails` VALUES ('119', '2020-03-25 22:51:41', '2', '0.2', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('120', '2020-03-20 22:52:43', '4', '0.4', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('121', '2020-11-25 22:53:42', '5', '0.5', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('122', '2020-05-25 22:53:43', '4', '0.4', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('123', '2020-04-25 22:53:44', '6', '0.6', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('124', '2020-02-25 22:54:45', '7', '0.7', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('125', '2020-01-25 22:55:45', '4', '0.4', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('126', '2020-02-25 22:55:43', '12', '1.2', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('127', '2020-01-25 22:51:46', '22', '2.2', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('128', '2020-02-25 22:51:44', '4', '0.4', '20', '刘诗诗');
INSERT INTO `messagedetails` VALUES ('129', '2020-03-25 22:51:43', '1', '0.1', '20', '刘诗诗');

-- ----------------------------
-- Table structure for mypostage
-- ----------------------------
DROP TABLE IF EXISTS `mypostage`;
CREATE TABLE `mypostage` (
  `mpid` int(10) NOT NULL auto_increment,
  `c_id` int(10) default NULL,
  `c_name` varchar(20) default NULL,
  `p_id` int(10) default NULL,
  `type` varchar(20) default NULL,
  `callprice` float(10,1) default NULL,
  `messageprice` float(10,1) default NULL,
  `rent` float(10,1) default NULL,
  PRIMARY KEY  (`mpid`),
  KEY `custo_id` (`c_id`),
  KEY `c_name` (`c_name`),
  KEY `p_id` (`p_id`),
  KEY `p_type` (`type`),
  KEY `p_callprice` (`callprice`),
  KEY `p_messageprice` (`messageprice`),
  KEY `p_rent` (`rent`),
  CONSTRAINT `p_rent` FOREIGN KEY (`rent`) REFERENCES `postage` (`rent`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `custo_id` FOREIGN KEY (`c_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c_name` FOREIGN KEY (`c_name`) REFERENCES `customer` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `p_callprice` FOREIGN KEY (`callprice`) REFERENCES `postage` (`callprice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `p_id` FOREIGN KEY (`p_id`) REFERENCES `postage` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `p_messageprice` FOREIGN KEY (`messageprice`) REFERENCES `postage` (`messageprice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `p_type` FOREIGN KEY (`type`) REFERENCES `postage` (`type`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mypostage
-- ----------------------------
INSERT INTO `mypostage` VALUES ('1', '3', '杨波', '3', '动感地带', '0.3', '0.1', '28.0');
INSERT INTO `mypostage` VALUES ('2', '5', '范冰冰', '4', '全球通', '0.2', '0.1', '50.0');
INSERT INTO `mypostage` VALUES ('3', '11', '波多', '7', '天翼校园', '0.8', '0.1', '100.0');
INSERT INTO `mypostage` VALUES ('4', '12', '杨幂', '6', '流量大王', '0.5', '0.1', '40.0');
INSERT INTO `mypostage` VALUES ('5', '13', '大木', '7', '天翼校园', '0.8', '0.1', '100.0');
INSERT INTO `mypostage` VALUES ('6', '14', '吉泽', '5', '沃派校园', '0.1', '0.1', '20.0');
INSERT INTO `mypostage` VALUES ('7', '15', '舒淇', '3', '动感地带', '0.3', '0.1', '28.0');
INSERT INTO `mypostage` VALUES ('8', '16', '阿娇', '5', '沃派校园', '0.1', '0.1', '20.0');
INSERT INTO `mypostage` VALUES ('9', '17', '陈冠希', '5', '沃派校园', '0.1', '0.1', '20.0');
INSERT INTO `mypostage` VALUES ('10', '18', '张柏芝', '7', '天翼校园', '0.8', '0.1', '100.0');
INSERT INTO `mypostage` VALUES ('11', '19', 'Angelababy', '2', '神州行', '0.4', '0.1', '30.0');
INSERT INTO `mypostage` VALUES ('12', '20', '刘诗诗', '4', '全球通', '0.2', '0.1', '50.0');

-- ----------------------------
-- Table structure for postage
-- ----------------------------
DROP TABLE IF EXISTS `postage`;
CREATE TABLE `postage` (
  `post_id` int(10) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL,
  `callprice` float(10,1) NOT NULL,
  `messageprice` float(10,1) NOT NULL,
  `rent` float(10,1) NOT NULL,
  PRIMARY KEY  (`post_id`),
  KEY `type` (`type`),
  KEY `callprice` (`callprice`),
  KEY `messageprice` (`messageprice`),
  KEY `rent` (`rent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postage
-- ----------------------------
INSERT INTO `postage` VALUES ('2', '神州行', '0.4', '0.1', '30.0');
INSERT INTO `postage` VALUES ('3', '动感地带', '0.3', '0.1', '28.0');
INSERT INTO `postage` VALUES ('4', '全球通', '0.2', '0.1', '50.0');
INSERT INTO `postage` VALUES ('5', '沃派校园', '0.1', '0.1', '20.0');
INSERT INTO `postage` VALUES ('6', '流量大王', '0.5', '0.1', '40.0');
INSERT INTO `postage` VALUES ('7', '天翼校园', '0.8', '0.1', '100.0');
