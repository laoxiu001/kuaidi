/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 100119
Source Host           : localhost:3306
Source Database       : kuaidi

Target Server Type    : MYSQL
Target Server Version : 100119
File Encoding         : 65001

Date: 2018-04-23 08:57:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `content` varchar(255) NOT NULL COMMENT '帖子内容',
  `src` varchar(255) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '马云也盯上废品行业了——回收快递纸箱直接进造纸厂', '2014年以来，我国快递业务量规模连续3年稳居世界首位，全球占比超过4成。', '../../static/index/img1.jpg');
INSERT INTO `news` VALUES ('2', '绿色物流再祭新招！苏宁共享快递盒回收站亮相13城', '　家住杭州的吴先生，在苏宁易购(12.66 -3.21%,诊股)年货节抢购了一部手机', '../../static/index/img2.png');
INSERT INTO `news` VALUES ('3', '快递垃圾困境：这些包装废弃物真的无解吗？', '在阿里巴巴、京东、苏宁等公司的集体助攻下，从2012年到2016年', '../../static/index/img3.png');
INSERT INTO `news` VALUES ('4', '武汉一高校学生回收快递盒“变废为宝”', '武汉华夏理工学院学生想出一个妙招：把快递盒回收改造成礼品盒、收纳盒', '../../static/index/img1.jpg');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `user` varchar(255) NOT NULL COMMENT '用户名',
  `content` varchar(255) NOT NULL COMMENT '帖子内容',
  `src` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `reply` int(100) NOT NULL DEFAULT '0' COMMENT '回帖数',
  `review` int(100) NOT NULL DEFAULT '0' COMMENT '浏览数',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '发表日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '回收率小于20% 网购狂欢后，快递垃圾怎么办？', '不存在拥有', '“双十一”的快递收到没多久，“双十二”购物节再度来临，这些网购狂欢节产生了大量的快递包裹。根据国家邮政局提供的数据', '../../static/index/post1.jpg', '15', '52', '2018-04-23 08:18:35');
INSERT INTO `post` VALUES ('2', '京城十余所高校试点快递纸箱回收', '会呼吸的鱼', '快递量不断刷新，大量快递垃圾何去何从？今年“双11”，快递行业开始尝试破解这个难题，菜鸟网络联合中华环境保护基金会在全国范围内启动了“回箱计', 're../../static/index/post2.jpg', '52', '78', '2018-04-23 08:39:56');
INSERT INTO `post` VALUES ('3', '“双十一”快递包装观察：乱扔是垃圾，回收可变宝', '老者', '人民网北京11月21日电 （方正）“双十一”购物狂欢节已过去一周，“战利品”们正一件件如期而至。大数据公司星图数据统计显示', '../../static/index/post3.jpg', '7', '58', '2018-04-23 08:45:19');
INSERT INTO `post` VALUES ('4', '“双11”巨量快递垃圾难题：资源回收如何运用“互联网+”再升级？', '英文在中文前面', '根据《规划》，到2020年，大中城市再生资源主要品种平均回收率达到75%以上，实现85%以上回收人员纳入规范化管理、85%以上社区及乡村实现回收功能的覆盖', '../../static/index/post4.jpg', '2', '48', '2018-04-23 08:46:56');

-- ----------------------------
-- Table structure for recycle
-- ----------------------------
DROP TABLE IF EXISTS `recycle`;
CREATE TABLE `recycle` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `resource` varchar(255) NOT NULL COMMENT '包装材料',
  `area` varchar(255) NOT NULL COMMENT '包装面积',
  `damage` varchar(255) NOT NULL COMMENT '破损程度',
  `manner` varchar(255) NOT NULL COMMENT '取件方式',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `tel` varchar(255) NOT NULL COMMENT '手机',
  `address` varchar(255) NOT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recycle
-- ----------------------------
INSERT INTO `recycle` VALUES ('3', '包装袋', '10~100cm²', '较新包装，外壳轻微破损', '自行联系快递', '1', '1', '1');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postID` int(11) NOT NULL COMMENT '帖子编号',
  `userID` int(11) NOT NULL COMMENT '用户编号',
  `content` varchar(5000) NOT NULL COMMENT '回帖内容',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '发表日期',
  `isFirst` int(1) NOT NULL DEFAULT '0' COMMENT '回复者，1为楼主；2为回帖者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '1', '60', '<div><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">除了纸箱之外，快递包装里通常还有塑料袋、胶带、塑料泡沫以及各种填充物。国家邮政局发布的《2017中国快递领域绿色包装发展现状及趋势报告》显示，2016年，全国快递共消耗约32亿条编织袋、约68亿个塑料袋、37亿个包装箱以及3.3亿卷胶带。</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">&nbsp;</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">　　北京印刷学院青岛研究院副院长朱磊表示，中国包装垃圾的总体回收率小于20%，其中纸盒只有不到一半被回收。而快递包装中的填充物、胶带等塑料成分，其回收率几乎为零。因此，提高这些快递包装物的回收利用率对于快递垃圾的减少影响重大。</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">&nbsp;</span></p></div>', '2018-03-31 08:33:38', '0');
INSERT INTO `reply` VALUES ('2', '1', '60', '除了提高回收率，快递行业也在积极减少快递包装物的产生。据国家邮政局统计，我国快递胶带正在变薄变窄，单个快件使用封装胶带量同比减少三分之一。而快递电子运单占比已经达到80%，用纸量减少70%以上。此外，电商平台苏宁易购今年“双十一”前推出的“共享快递盒”计划，用可循环使用1000次的塑料快递盒替代常用的瓦楞纸箱，2018年全国投放量将达20万个，将大大减少快递纸箱的使用。', '2018-04-23 08:34:21', '0');
INSERT INTO `reply` VALUES ('3', '2', '61', '<div><p style=\"line-height:24.3pt; margin:18.75pt 0pt; text-indent:24pt\"><span style=\"color:#222222; font-family:微软雅黑; font-size:13.5pt\">快递量不断刷新，大量快递垃圾何去何从？今年“双11”，快递行业开始尝试破解这个难题，菜鸟网络联合中华环境保护基金会在全国范围内启动了“回箱计划”，在北京化工大学、北京外国语大学、北京理工大学、中国石油大学等京城10余所高校设置了纸箱回收台。记者走访看到，通过设立回收台，消费者的纸箱回收意识正在形成。</span></p><p style=\"line-height:24.3pt; margin:18.75pt 0pt; text-indent:24pt\"><span style=\"color:#222222; font-family:微软雅黑; font-size:13.5pt; font-weight:bold\">取快递纸箱留在回收台</span></p><p style=\"line-height:24.3pt; margin:18.75pt 0pt; text-indent:24pt\"><span style=\"color:#222222; font-family:微软雅黑; font-size:13.5pt\">前日傍晚，随着北京工业大学昌平新校区的下课铃声响起，大批学生涌进了校园一角的菜鸟驿站。记者发现，许多学生取完快递并没有直接离开，而是来到门口的纸箱回收台，将快递拆开后，把纸箱投进回收柜。</span></p><p style=\"margin:0pt; orphans:0; text-align:justify; widows:0\"><span style=\"font-family:等线; font-size:10.5pt\">&nbsp;</span></p></div>', '2018-03-06 08:41:38', '1');
INSERT INTO `reply` VALUES ('4', '2', '60', '\r\n发给发给发给发给发给发给发给发给\r\n发给发给发给发给发给发给发给发给\r\n发给发给发给发给发给发给发给发给\r\n发给发给发给发给发给发给发给发给\r\n发给发给发给发给发给发给发给发给\r\n发给发给发给发给发给发给发给发给\r\n发给发给发给发给发给发给发给发给\r\n发给发给发给发给发给发给发给发给', '2018-04-10 20:05:24', '0');
INSERT INTO `reply` VALUES ('5', '2', '60', '曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经曾经', '2018-04-10 20:05:25', '0');
INSERT INTO `reply` VALUES ('6', '3', '61', '发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热发电发电供热', '2018-04-14 20:01:58', '1');
INSERT INTO `reply` VALUES ('7', '3', '61', '的身份如果突然的身份如果突然的身份如果突然的身份如果突然的身份如果突然的身份如果突然的身份如果突然', '2018-04-04 20:02:15', '0');
INSERT INTO `reply` VALUES ('8', '4', '61', '热给他羽绒服微软热给他羽绒服微软热给他羽绒服微软热给他羽绒服微软热给他羽绒服微软热给他羽绒服微软热给他羽绒服微软热给他羽绒服微软热给他羽绒服微软', '2018-04-10 20:02:57', '1');
INSERT INTO `reply` VALUES ('9', '4', '60', '的说法第三方散热个人头个的说法第三方散热个人头个的说法第三方散热个人头个的说法第三方散热个人头个', '2018-04-10 20:05:29', '0');
INSERT INTO `reply` VALUES ('10', '3', '61', '法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人法国工人', '2018-04-12 20:03:17', '0');
INSERT INTO `reply` VALUES ('11', '1', '61', '<div><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">“双十一”的快递收到没多久，“双十二”购物节再度来临，这些网购狂欢节产生了大量的快递包裹。</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">&nbsp;</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">根据国家邮政局提供的数据，今年“双十一”期间可能产生超过15亿件包裹，全年快递业务量将达到400亿件。巨大的快递量也带来巨大的快递包装消耗，由此产生的快递垃圾如何处理成为社会亟待解决的难题。对此，快递协会专家建议，绿色包装是发展趋势，消费者自身也应提高环保意识。</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">&nbsp;</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">　　“双十一”狂欢之后的近一个月内，北京废品收购站的生意出现了明显的变化。“前段时间纸箱价格是1.5元/公斤，最近两周跌到了0.5元/公斤。”北京市朝阳区某废品收购站老板告诉《工人日报》记者，他最近收到的快递纸箱明显增多，将把这些快递纸箱集中运送到造纸厂卖掉。</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">&nbsp;</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">　　被送到造纸厂卖掉回收再造是快递纸箱的“归宿”之一。而很多受访消费者都坦言，收到快递后会将快递纸箱丢弃，并不知道它们最终去了哪里。</span></p><p style=\"margin:0pt\"><span style=\"font-family:\'Times New Roman\'; font-size:12pt\">&nbsp;</span></p></div>', '2018-03-22 08:31:50', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号_主键ID',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '用户密码',
  `email` varchar(100) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '等级',
  `group` int(1) NOT NULL DEFAULT '0' COMMENT '组别',
  `title` int(11) NOT NULL DEFAULT '0' COMMENT '发表主题数',
  `post` int(11) NOT NULL DEFAULT '0' COMMENT '发表帖子数',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('59', '1', '1', '19419@gmail.com', '18', '7', '45', '55', '42');
INSERT INTO `user` VALUES ('60', 'h15845542264', '2', '1489498498@qq.com', '15', '3', '153', '51', '112');
INSERT INTO `user` VALUES ('61', 'qwer315644782', '3', '53783@qq.com', '1', '3', '32', '3', '22');
SET FOREIGN_KEY_CHECKS=1;
