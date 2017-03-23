/*
Navicat MySQL Data Transfer

Source Server         : 杨波
Source Server Version : 50022
Source Host           : 127.0.0.1:3306
Source Database       : yb-manager

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-03-23 18:37:28
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
INSERT INTO `balance` VALUES ('2', '32.0', '1000', '2', 'shabi');
INSERT INTO `balance` VALUES ('3', '510.0', '3000', '3', '杨波');
INSERT INTO `balance` VALUES ('4', '22.0', '321', '4', '杨幂');
INSERT INTO `balance` VALUES ('5', '479.0', '3213', '5', '范冰冰');
INSERT INTO `balance` VALUES ('6', '43.0', '434', '6', '吉泽');
INSERT INTO `balance` VALUES ('7', '0.0', '0', '7', '东尼');
INSERT INTO `balance` VALUES ('8', '0.0', '0', '8', '大木');
INSERT INTO `balance` VALUES ('9', '0.0', '0', '9', '比利王');
INSERT INTO `balance` VALUES ('10', '0.0', '0', '10', '啊啊');

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
INSERT INTO `calldetails` VALUES ('5', '2017-03-10 15:56:23', '2', '0.4', '6', '吉泽');
INSERT INTO `calldetails` VALUES ('6', '2017-03-16 15:56:58', '1', '0.2', '5', '范冰冰');
INSERT INTO `calldetails` VALUES ('7', '2017-03-23 22:28:14', '20', '4.0', '3', '杨波');

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
INSERT INTO `customer` VALUES ('2', 'shabi', '456', '13811111111');
INSERT INTO `customer` VALUES ('3', '杨波', '123', '15612345678');
INSERT INTO `customer` VALUES ('4', '杨幂', '123', '123123123123');
INSERT INTO `customer` VALUES ('5', '范冰冰', '123', '123123123');
INSERT INTO `customer` VALUES ('6', '吉泽', '123', '213123123123');
INSERT INTO `customer` VALUES ('7', '东尼', '123', '18352786027');
INSERT INTO `customer` VALUES ('8', '大木', '123', '183121212121');
INSERT INTO `customer` VALUES ('9', '比利王', '123', '12312421312');
INSERT INTO `customer` VALUES ('10', '啊啊', '123', '123214123123');

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
INSERT INTO `gprsdetails` VALUES ('4', '2017-03-15 15:55:43', '312', '2', 'shabi');
INSERT INTO `gprsdetails` VALUES ('5', '2017-03-15 15:56:02', '323', '5', '范冰冰');
INSERT INTO `gprsdetails` VALUES ('6', '2017-03-15 22:29:02', '1233', '5', '范冰冰');
INSERT INTO `gprsdetails` VALUES ('7', '2017-03-15 11:21:07', '323', '3', '杨波');
INSERT INTO `gprsdetails` VALUES ('8', '2017-03-22 11:21:22', '4231', '3', '杨波');

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
INSERT INTO `messagedetails` VALUES ('4', '2017-03-14 15:54:20', '13', '1.3', '4', '杨幂');
INSERT INTO `messagedetails` VALUES ('5', '2017-03-09 15:55:18', '1', '0.1', '6', '吉泽');
INSERT INTO `messagedetails` VALUES ('6', '2017-03-15 12:48:12', '3', '0.3', '3', '杨波');
INSERT INTO `messagedetails` VALUES ('7', '2017-03-22 12:48:31', '1', '0.1', '3', '杨波');
INSERT INTO `messagedetails` VALUES ('8', '2017-03-25 12:48:46', '2', '0.2', '3', '杨波');

-- ----------------------------
-- Table structure for postage
-- ----------------------------
DROP TABLE IF EXISTS `postage`;
CREATE TABLE `postage` (
  `post_id` int(10) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL,
  `callprice` varchar(20) NOT NULL,
  `messageprice` varchar(20) NOT NULL,
  `rent` float(10,1) NOT NULL,
  PRIMARY KEY  (`post_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postage
-- ----------------------------
INSERT INTO `postage` VALUES ('2', '神州行', '0.4', '0.1', '30.0');
INSERT INTO `postage` VALUES ('3', '动感地带', '0.3', '0.1', '28.0');
INSERT INTO `postage` VALUES ('4', '全球通', '0.2', '0.1', '50.0');
