/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : dp_blog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-06 01:42:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dp_admin`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin`;
CREATE TABLE `dp_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nickname` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0是禁用，1是可用',
  `super` int(11) NOT NULL DEFAULT '0' COMMENT '0是普通管理员，1是超级管理员',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_admin
-- ----------------------------
INSERT INTO `dp_admin` VALUES ('1', 'leruge', 'wangfeng', '赏金', 'leruge@163.com', '1', '1', '1522935251', '1522935251', null);

-- ----------------------------
-- Table structure for `dp_article`
-- ----------------------------
DROP TABLE IF EXISTS `dp_article`;
CREATE TABLE `dp_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `atop` enum('1','0') NOT NULL DEFAULT '0' COMMENT '0是不推荐，1是推荐',
  `cateid` int(11) NOT NULL,
  `author` varchar(10) NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `comment` int(11) NOT NULL DEFAULT '0',
  `tags` varchar(100) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_article
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_cate`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cate`;
CREATE TABLE `dp_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catename` varchar(10) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_cate
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_comment`
-- ----------------------------
DROP TABLE IF EXISTS `dp_comment`;
CREATE TABLE `dp_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `articleid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_member`
-- ----------------------------
DROP TABLE IF EXISTS `dp_member`;
CREATE TABLE `dp_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '0是禁用，1是可用',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_member
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_system`
-- ----------------------------
DROP TABLE IF EXISTS `dp_system`;
CREATE TABLE `dp_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `webname` varchar(30) NOT NULL,
  `shortname` varchar(10) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_system
-- ----------------------------
INSERT INTO `dp_system` VALUES ('1', '梦中程序员--QQ:305530751', '梦中程序员', 'www.dreamphp.com.cn', '1522936637', '1522936637', null);
