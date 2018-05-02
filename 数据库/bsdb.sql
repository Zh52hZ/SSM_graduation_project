/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : bsdb

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-02 22:53:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动表',
  `name` varchar(200) DEFAULT NULL,
  `msg` text,
  `time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('6', '春节优惠活动', '<p style=\"text-align: justify;\"><span style=\"font-family: 微软雅黑, Microsoft\\ YaHei; font-size: 16px;\"><strong>一、活动主题：</strong><span style=\"font-family: 微软雅黑, Microsoft\\ YaHei; color: rgb(255, 0, 0);\">祝你春节快乐！旅社开业庆典酬宾活动&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/><strong>二、活动形式&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp;&nbsp;&nbsp;活动时间：2011年12月23日至2012年元月5日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;形式：1、短讯平台&nbsp;&nbsp;2、代金券3、入住送礼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;优惠：</span></p><p style=\"text-align: justify;\"><span style=\"font-family: 微软雅黑, Microsoft\\ YaHei; font-size: 16px;\">（1）、凭收到短讯入住的宾客活动期间，所有的房型房价一律8折优惠。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>（2）、活动期间入住的客人每人每间可送50元的代金券，本代金券不找零，不&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 兑现，不得作其它优惠活动使用，只限作下次消费或当天消费3间含3间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 以上抵消现金使用。需要加盖本公司的公章方可生效。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>（3）、入住三重好礼抽奖活动，凡活动期间入住的宾客凭入住相关资料每人每间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 都可抽奖一次，礼品不等。分一二三等奖。或房间饮料一律免费。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>（4）、金卡vip客户的办理。客人相关资料的收集。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 形式：活动期间入住客人凭入住单方可享受以上所有优惠活动。</span></p><p style=\"text-align:center\"><img src=\"/jiudian//ueditor/jsp/upload/image/20180425/1524658315235009636.png\" title=\"1524658315235009636.png\" alt=\"gaoxiong #07630.png\"/></p><p><br/></p>', '2018-04-25');
INSERT INTO `activity` VALUES ('15', '客栈周年庆', '<p style=\"text-align: center;\"><span style=\"font-size: 18px;\"><strong><br/></strong></span></p><p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: 微软雅黑, Microsoft\\ YaHei;\"><strong>一、活动主题：</strong><span style=\"font-size: 18px; color: rgb(255, 0, 0);\">祝你元旦快乐！旅社开业庆典酬宾活动&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/><strong>二、活动形式&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp;&nbsp;&nbsp;活动时间：2011年12月23日至2012年元月5日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;形式：1、短讯平台&nbsp;&nbsp;2、代金券3、入住送礼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;优惠：</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: 微软雅黑, Microsoft\\ YaHei;\">（1）、凭收到短讯入住的宾客活动期间，所有的房型房价一律8折优惠。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>（2）、活动期间入住的客人每人每间可送50元的代金券，本代金券不找零，不&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 兑现，不得作其它优惠活动使用，只限作下次消费或当天消费3间含3间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 以上抵消现金使用。需要加盖本公司的公章方可生效。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>（3）、入住三重好礼抽奖活动，凡活动期间入住的宾客凭入住相关资料每人每间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 都可抽奖一次，礼品不等。分一二三等奖。或房间饮料一律免费。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>（4）、金卡vip客户的办理。客人相关资料的收集。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;&nbsp;&nbsp; &nbsp;形式：活动期间入住客人凭入住单方可享受以上所有优惠活动</span></p>', '2018-04-23');
INSERT INTO `activity` VALUES ('16', 'A特惠促销活动', '<p style=\"text-align: left;\"><img src=\"http://img.baidu.com/hi/face/i_f13.gif\"/><a href=\"http://fex.baidu.com/ueditor/\"></a></p><h1 style=\"text-align: left;\"><span style=\"font-size: 18px;\">UEditor插件真的挺不错的</span></h1><p style=\"text-align: left;\">地址：</p><p style=\"text-align: left;\"><a href=\"http://fex.baidu.com/ueditor/\" style=\"background-color: rgb(84, 141, 212); text-decoration: underline;\"><span style=\"background-color: rgb(84, 141, 212);\">http://fex.baidu.com/ueditor/</span></a></p><p style=\"text-align: left;\">UEditor是由百度web前端研发部开发所见即所得富文本web编辑器，具有轻量，可定制，注重用户体验等特点，开源基于MIT协议，允许自由使用和修改代码...<br/></p>', '2018-04-09');
INSERT INTO `activity` VALUES ('17', 'B特惠促销活动', '<h1 class=\"markdown-heading\"><span style=\"font-size: 18px;\">DPlayer HTML5弹幕播放器插件</span></h1><p><br/></p><p><a href=\"http://dplayer.js.org/#/zh-Hans/\" target=\"_blank\" style=\"color: rgb(84, 141, 212); text-decoration: underline;\"><span style=\"color: rgb(84, 141, 212);\">点我跳转到DPlayer首页</span></a></p>', '2018-04-09');
INSERT INTO `activity` VALUES ('22', 'C特惠促销活动', '<p style=\"text-align: center;\"><img src=\"/jiudian//ueditor/jsp/upload/image/20180419/1524109085578072441.png\" title=\"1524109085578072441.png\" alt=\"58.png\"/></p>', '2018-04-19');
INSERT INTO `activity` VALUES ('23', 'D特惠促销活动', '<p style=\"text-align: center;\"><img src=\"/jiudian//ueditor/jsp/upload/image/20180409/1523239521030042412.jpg\" title=\"1523239521030042412.jpg\" alt=\"695dce72e5c12ecc60bfbf623b1ff0fe.jpg\" width=\"901\" height=\"469\"/></p>', '2018-04-09');
INSERT INTO `activity` VALUES ('24', '测试活动【最终测试】', '<p>测试测试</p><p><img src=\"http://img.baidu.com/hi/tsj/t_0006.gif\"/>测试，加油！！！</p>', '2018-04-11');
INSERT INTO `activity` VALUES ('25', '测试活动', '<p><img src=\"/jiudian//ueditor/jsp/upload/image/20180423/1524472083921067901.jpg\" title=\"1524472083921067901.jpg\" alt=\"end_01.jpg\" width=\"846\" height=\"394\"/></p>', '2018-04-23');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单表',
  `bid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `money` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `rzrq` varchar(50) DEFAULT NULL,
  `lkrq` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('86', '101', '1', '198', '2018-04-22 18:12:11', '高级二楼客房', '35', '已预订', '2018-04-22 18:30', '2018-04-24 18:12');
INSERT INTO `dingdan` VALUES ('87', '7', '2', '40', '2018-04-22 18:12:32', '本地优质土鸡蛋', '35', '已取消', null, null);
INSERT INTO `dingdan` VALUES ('94', '103', '1', '350', '2018-04-25 19:49:50', '普通二楼客房', '51', '已预订', '2018-04-25 19:49', '2018-04-26 19:49');
INSERT INTO `dingdan` VALUES ('95', '3', '2', '26', '2018-04-25 19:50:14', '早餐e', '51', '已取消', null, null);
INSERT INTO `dingdan` VALUES ('96', '101', '1', '198', '2018-04-26 08:42:27', '高级二楼客房', '52', '已预订', '2018-04-26 08:42', '2018-04-27 08:42');
INSERT INTO `dingdan` VALUES ('97', '1', '2', '500', '2018-04-26 08:42:59', '自助烧烤', '52', '已取消', null, null);
INSERT INTO `dingdan` VALUES ('98', '101', '1', '198', '2018-04-26 12:24:31', '高级二楼客房', '53', '已预订', '2018-04-26 12:24', '2018-04-27 12:24');
INSERT INTO `dingdan` VALUES ('100', '101', '1', '198', '2018-04-26 12:28:28', '高级二楼客房', '53', '已预订', '2018-04-26 12:28', '2018-04-27 12:28');

-- ----------------------------
-- Table structure for kefang
-- ----------------------------
DROP TABLE IF EXISTS `kefang`;
CREATE TABLE `kefang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客房表',
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `msg` text,
  `pic` varchar(300) DEFAULT NULL,
  `money` varchar(30) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kefang
-- ----------------------------
INSERT INTO `kefang` VALUES ('101', '高级二楼客房', '双人间', '<ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">面积：38㎡</span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">楼层：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">2层 </span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">床宽：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">1.8m*2m </span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">入住人数：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">2人</span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">宽带：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">免费有线宽带、覆盖wifi</span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">停车：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">免费</span></span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px;\"></span></p></li></ul><p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px;\"></span></span></p>', '/upload/1524105408212.jpg', '198', '4');
INSERT INTO `kefang` VALUES ('102', '普通一楼客房', '单人间', '<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; color: rgb(0, 0, 0);\">面积：25㎡<br/></span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; color: rgb(0, 0, 0);\">楼层：1层 <br/></span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; color: rgb(0, 0, 0);\">床宽：1.8m*2m <br/></span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; color: rgb(0, 0, 0);\">入住人数：1人<br/></span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; color: rgb(0, 0, 0);\">宽带：免费有线宽带、覆盖wifi<br/></span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; color: rgb(0, 0, 0);\">停车：免费</span></p>', '/upload/1524105467889.jpg', '112', '3');
INSERT INTO `kefang` VALUES ('103', '普通二楼客房', '双人间', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">面积：<span style=\"font-size: 14px; color: rgb(255, 0, 0);\">4<span style=\"font-size: 14px;\">5<span style=\"font-size: 14px;\">㎡</span></span></span><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">楼层：<span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei; color: rgb(255, 0, 0);\">3层 </span><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">床宽：<span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei; color: rgb(255, 0, 0);\">1.8m*2m </span><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">入住人数：<span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei; color: rgb(255, 0, 0);\">2人</span><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">宽带：<span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei; color: rgb(255, 0, 0);\">免费有线宽带、覆盖wifi</span><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">停车：<span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei; color: rgb(255, 0, 0);\">免费</span></span></p>', '/upload/1519890787316.jpg', '350', '8');
INSERT INTO `kefang` VALUES ('104', '普通二楼客房', '单人间', '<ul class=\" list-paddingleft-2\"><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">面积：28㎡</span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">楼层：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">2层 </span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">床宽：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">1.8m*2m </span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">入住人数：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">1人</span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">宽带：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">免费有线宽带、覆盖wifi</span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">停车：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">免费</span></span></p></li></ul>', '/upload/1524105366149.jpg', '123', '9');
INSERT INTO `kefang` VALUES ('108', '测试房', '单人间', '<p><img src=\"/jiudian//ueditor/jsp/upload/image/20180423/1524471877476008451.png\" title=\"1524471877476008451.png\" alt=\"新版首页.png\"/></p>', '/upload/1524471902952.png', '0.1', '999');
INSERT INTO `kefang` VALUES ('109', '普通四人客房', '四人间', '<p style=\"text-align:center\"><img src=\"/jiudian//ueditor/jsp/upload/image/20180426/1524703936608002953.jpg\" title=\"1524703936608002953.jpg\" alt=\"5a46ccd692af4557831214b62f565724_720_480_s.jpg\" width=\"594\" height=\"402\"/></p><ul class=\" list-paddingleft-2\"><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">面积：48㎡</span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">楼层：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">2层 </span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">床宽：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">1.8m*2m </span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">入住人数：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">4人</span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">宽带：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">免费有线宽带、覆盖wifi</span><br/></span></p></li><li><p><span style=\"font-size: 14px; font-family: 微软雅黑, Microsoft YaHei;\">停车：<span style=\"font-size: 14px; font-family: arial, helvetica, sans-serif;\">免费</span></span></p></li></ul><p><br/></p>', '/upload/1524703977840.jpg', '250', '10');

-- ----------------------------
-- Table structure for loginuser
-- ----------------------------
DROP TABLE IF EXISTS `loginuser`;
CREATE TABLE `loginuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表',
  `username` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `telphone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginuser
-- ----------------------------
INSERT INTO `loginuser` VALUES ('20', 'poipoi', 'qwe123', '库佩', '18244593223', 'peikuqwe@qq.com');
INSERT INTO `loginuser` VALUES ('34', 'DiyGod', 'qwe123', '卢富力', '18776564544', '18776564544@163.com');
INSERT INTO `loginuser` VALUES ('35', '柿子', 'qwe123', '周浩', '18334077011', '627261109@qq.com');
INSERT INTO `loginuser` VALUES ('43', 'TXhao', 'qwer123', '余力航', '13667888756', 'lyh233@163.com');
INSERT INTO `loginuser` VALUES ('45', 'RNG_uzi', 'qwe123', '库佩柒', '13554342765', '627345209@qq.com');
INSERT INTO `loginuser` VALUES ('50', '北方柿子', 'qwe123', '李狮', '18776546336', '18776546336@163.com');
INSERT INTO `loginuser` VALUES ('51', 'TXxy', 'qwe123', '徐钰雨', '17566545636', '627261108@163.com');
INSERT INTO `loginuser` VALUES ('52', 'spring', 'qwe123', '李思于', '13566344564', '13566344564@163.com');
INSERT INTO `loginuser` VALUES ('53', 'DG', 'qwe123', '李五', '13566342453', '13566342453@163.com');

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务表',
  `name` varchar(30) DEFAULT NULL,
  `msg` text,
  `money` varchar(50) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES ('1', '自助烧烤', '<p>这里素来有野钓天堂的美名，南岸开阔平坦的河滩似乎是为烧烤特别准备的。河水很静，有时甚至能听到鱼儿在水中翻腾的声音，鱼类品种繁多。你也能享受自钓自拷之乐，这鱼吃起来都会格外的香。<img src=\"http://img.baidu.com/hi/face/i_f13.gif\"/></p><p>1、提供场地（地点：河边）</p><p>2、提供烧烤所需要的设施</p><p>3、免费提供各种蔬菜</p><p>4、优惠提供肉质类一份，如需要需另算价</p><p>5、场地最多容纳20人<br/></p>', '500', '/upload/c5.jpg', '2');
INSERT INTO `service` VALUES ('3', '早餐e', '<p>吃早餐三大原则：<br/>一、必须有丰富的品种类型，均衡饮食，营养全面；<br/>二、必须有碳水化合物，用以补充足够的能量；<br/>三、必须要补充维生素，那是不可忽视的重要营养物质，而且早餐摄入吸收率最高。</p><p>233<br/></p>', '26', '/upload/1519795128299.jpg', '992');
INSERT INTO `service` VALUES ('7', '本地优质土鸡蛋', '<p>远离城市、村庄、工矿企业，农场的土壤、水质、空气从未被污染。全素食谷物喂养，只喂玉米、稻谷、青菜，不添加转基因的豆粕，无鱼粉、骨粉等动物蛋白添加，确保土鸡蛋无激素、药物、重金属等残留。</p><p style=\"text-align:center\"><img src=\"/jiudian//ueditor/jsp/upload/image/20180419/1524105523270018468.jpg\" title=\"1524105523270018468.jpg\" alt=\"09.jpg\"/></p><p>1、每箱20个</p><p>2、39.9包邮送上门<br/></p>', '40', '/upload/1524105539232.jpg', '994');
INSERT INTO `service` VALUES ('8', '测试', '<p>测试<img src=\"http://img.baidu.com/hi/jx2/j_0004.gif\"/></p>', '0.1', '/upload/1524105571024.jpg', '2');
INSERT INTO `service` VALUES ('9', '测试测试', '<p>我是测试君<br/></p>', '0.2', '/upload/1524105582736.png', '1');
INSERT INTO `service` VALUES ('11', '测试', '<p><img src=\"/jiudian//ueditor/jsp/upload/image/20180423/1524471991099058829.png\" title=\"1524471991099058829.png\" alt=\"新版首页.png\"/></p>', '0.1', '/upload/1524472016014.jpg', '999');
INSERT INTO `service` VALUES ('12', '服务测试', '<p>服务测试<img src=\"/jiudian//ueditor/jsp/upload/image/20180425/1524657717854056267.png\" title=\"1524657717854056267.png\" alt=\"aidang #01790.png\"/></p>', '10', '/upload/1524657731646.png', '10');

-- ----------------------------
-- Table structure for shiyainfo
-- ----------------------------
DROP TABLE IF EXISTS `shiyainfo`;
CREATE TABLE `shiyainfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客栈信息',
  `msg` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shiyainfo
-- ----------------------------
INSERT INTO `shiyainfo` VALUES ('1', '<p style=\"text-indent: 2em; text-align: left;\"><strong><span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif;\">诗雅客栈</span></strong><span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif;\">位于贵州省安顺市旧州古镇，</span><span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif;\">旧州古镇建于元朝至正十一年（公元1351年），街道按阴阳五行布局，古城墙为葫芦形结构。城内古寺林立，其中城隍庙藏有乾隆皇帝御书匾额。旧州古镇是贵州省安顺市西秀区所辖的一个镇，位于安顺市东南面，距西秀城区37公里。东邻刘官乡和平坝区，南接东屯乡、双堡镇，西与宁谷镇接壤，北抵七眼桥、大西桥镇，镇域面积11695公顷，其中耕地面积2292.9公顷，是典型的传统农业大镇，也是中国历史文化名镇、中国特色小镇、国家AAAA景区、全国文明乡镇、中国宜居休闲小镇,有着山里江南之称。</span></p><p style=\"text-indent: 2em; text-align: center;\"><span style=\"font-size: 16px; color: rgb(0, 112, 192);\"><strong>视频介绍</strong></span></p><p style=\"text-indent: 2em; text-align: center;\"><span style=\"font-size: 16px;\">地点：安顺市旧州古镇</span><br/></p>');

-- ----------------------------
-- Table structure for tousuinfo
-- ----------------------------
DROP TABLE IF EXISTS `tousuinfo`;
CREATE TABLE `tousuinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投诉建议表',
  `title` varchar(200) DEFAULT NULL,
  `msg` varchar(400) DEFAULT NULL,
  `tsperson` varchar(20) DEFAULT NULL,
  `tstime` varchar(30) DEFAULT NULL,
  `replay` varchar(200) DEFAULT NULL,
  `replaytime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tousuinfo
-- ----------------------------
INSERT INTO `tousuinfo` VALUES ('5', null, '测试', '莉娜', '2018-03-03 15:31:49', '测试回复。。。。....................................aaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2018-04-22 16:20:09');
INSERT INTO `tousuinfo` VALUES ('12', null, '测试4测试4测试4测试4测试4测试4测试4测试4测试4测试4', '莉娜', '2018-03-09 09:25:13', '测试回复', '2018-04-09 10:27:27');
INSERT INTO `tousuinfo` VALUES ('17', null, '我只是个测试', '库佩', '2018-04-15 14:58:37', '回复测试', '2018-04-15 17:12:11');
INSERT INTO `tousuinfo` VALUES ('21', null, '测试测试', 'TXhao', '2018-04-23 16:07:09', null, null);
INSERT INTO `tousuinfo` VALUES ('23', null, '留言测试', '北方柿子', '2018-04-24 11:17:10', '回复留言测试', '2018-04-25 12:13:06');
INSERT INTO `tousuinfo` VALUES ('24', null, '最终测试', 'TXxy', '2018-04-25 19:50:35', '测试回复！', '2018-04-25 19:55:48');
INSERT INTO `tousuinfo` VALUES ('25', null, '测试', 'spring', '2018-04-26 08:43:35', '回复', '2018-04-26 08:48:45');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员表',
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `pwd` varchar(20) DEFAULT NULL,
  `utype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'EU', 'EU', '超级管理员');
INSERT INTO `user` VALUES ('3', 'admin1', 'admin1', '普通管理员');
INSERT INTO `user` VALUES ('5', 'EUREKA', 'eureka', '普通管理员');
INSERT INTO `user` VALUES ('7', 'admin', 'admin', '超级管理员');
INSERT INTO `user` VALUES ('9', 'free', 'qwe123', '普通管理员');
SET FOREIGN_KEY_CHECKS=1;
