/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 100119
Source Host           : localhost:3306
Source Database       : kuaidi

Target Server Type    : MYSQL
Target Server Version : 100119
File Encoding         : 65001

Date: 2018-03-27 14:54:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `content` varchar(255) NOT NULL COMMENT '帖子内容',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '发表日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号_主键ID',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '用户密码',
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('59', '1', '1', '1');
INSERT INTO `user` VALUES ('60', '12321', '1', '1');
SET FOREIGN_KEY_CHECKS=1;
