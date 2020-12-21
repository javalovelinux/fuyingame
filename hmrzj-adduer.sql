/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : hmrzj

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-12-19 21:55:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article_categories`
-- ----------------------------
DROP TABLE IF EXISTS `article_categories`;
CREATE TABLE `article_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `des` varchar(500) DEFAULT NULL,
  `is_display` tinyint(1) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of article_categories
-- ----------------------------
INSERT INTO `article_categories` VALUES ('1651', '2017年讲道', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1652', '理财原则培训', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1654', '2017见证专辑', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1655', '2017特会', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1656', '2017儿童老师培训', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1657', '2018年讲道', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1659', '2018年见证', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1660', '职场发光论坛', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1661', '2018儿童老师培训', '2018儿童老师培训', '1', '0');
INSERT INTO `article_categories` VALUES ('1663', '2018婚姻保卫战', '2018婚姻保卫战', '1', '0');
INSERT INTO `article_categories` VALUES ('1664', '2018年国庆营会', '2018年国庆营会', '1', '0');
INSERT INTO `article_categories` VALUES ('1666', '2018医治布道特会', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1667', '教会与职场领袖培训', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1668', '2019年讲道', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1669', '教会观/领袖观/事奉观/增长观', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1670', '2019侍奉与服侍', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1671', '圣经创业课程', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1672', '2019小组长培训', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1673', '2020年讲道', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1674', '2020敬拜', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1675', '儿童主日学聚会视频', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1676', '儿童聚会视频', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1677', '得自由', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1678', '2020小组牧养讲坛', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1679', '基要课程100', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1680', '基要课程200', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1681', '福音电影', '', '1', '1');
INSERT INTO `article_categories` VALUES ('1682', '婚姻视频', '', '1', '1');

-- ----------------------------
-- Table structure for `article_info`
-- ----------------------------
DROP TABLE IF EXISTS `article_info`;
CREATE TABLE `article_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(200) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `excerpt` varchar(5000) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `publish_time` datetime NOT NULL,
  `is_top` tinyint(1) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `img_url` varchar(400) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `reply` int(11) NOT NULL,
  `browse` int(11) NOT NULL,
  `seo_des` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_article_id` (`id`) COMMENT '(null)',
  KEY `app_article_union_id` (`publish_time`,`is_top`,`is_published`) COMMENT '(null)'
) ENGINE=InnoDB AUTO_INCREMENT=7285 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of article_info
-- ----------------------------
INSERT INTO `article_info` VALUES ('6882', '', '2017年主日讲到录音列表', '', '0', '2017-07-01 19:57:00', '1', '1', '', '2017-07-01 19:57:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6883', '', '从《圣经》看理财原则', '', '0', '2017-07-01 20:52:00', '1', '1', '', '2017-07-01 20:52:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6884', '', '修剪中的喜乐', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170101.%E4%BF%AE%E5%89%AA%E4%B8%AD%E7%9A%84%E5%96%9C%E4%B9%90.mp3', '1651', '2017-01-01 10:21:00', '1', '1', '', '2017-01-01 10:21:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6885', '', '珍惜天国的身份', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170108.%E7%8F%8D%E6%83%9C%E5%A4%A9%E5%9B%BD%E7%9A%84%E8%BA%AB%E4%BB%BD.mp3', '1651', '2017-01-08 12:31:00', '1', '1', '', '2017-01-08 12:31:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6886', '', '生根建造 与主同行', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170115.%E7%94%9F%E6%A0%B9%E5%BB%BA%E9%80%A0%EF%BC%8C%E4%B8%8E%E4%B8%BB%E5%90%8C%E8%A1%8C.mp3', '1651', '2017-01-15 12:32:00', '1', '1', '', '2017-01-15 12:32:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6887', '', '合而为一', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170129.%E5%90%88%E8%80%8C%E4%B8%BA%E4%B8%80.mp3', '1651', '2017-01-29 08:23:00', '1', '1', '', '2017-01-29 08:23:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6888', '', '向上结果：哥尼流的榜样', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170212.%E5%90%91%E4%B8%8A%E7%BB%93%E6%9E%9C%EF%BC%9A%E5%93%A5%E5%B0%BC%E6%B5%81%E7%9A%84%E6%A6%9C%E6%A0%B7.mp3', '1651', '2017-02-12 12:34:00', '1', '1', '', '2017-02-12 12:34:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6889', '', '祷告的7个态度', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170219.%E7%A5%B7%E5%91%8A%E7%9A%847%E4%B8%AA%E6%80%81%E5%BA%A6.mp3', '1651', '2017-02-19 12:35:00', '1', '1', '', '2017-02-19 12:35:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6890', '', '谨慎自守的基督徒', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170226.%E8%B0%A8%E6%85%8E%E8%87%AA%E5%AE%88%E7%9A%84%E5%9F%BA%E7%9D%A3%E5%BE%92.mp3', '1651', '2017-02-26 12:35:00', '1', '1', '', '2017-02-26 12:35:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6891', '', '信心：凭信心生活', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170305.%E4%BF%A1%E5%BF%83%EF%BC%9A%E5%87%AD%E4%BF%A1%E5%BF%83%E7%94%9F%E6%B4%BB.mp3', '1651', '2017-03-05 12:36:00', '1', '1', '', '2017-03-05 12:36:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6892', '', '结果的根基：依靠耶和华', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170312.%E7%BB%93%E6%9E%9C%E7%9A%84%E6%A0%B9%E5%9F%BA%EF%BC%9A%E4%BE%9D%E9%9D%A0%E8%80%B6%E5%92%8C%E5%8D%8E.mp3', '1651', '2017-03-12 12:37:00', '1', '1', '', '2017-03-12 12:37:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6893', '', '如何寻求医治', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170326.%E5%A6%82%E4%BD%95%E5%AF%BB%E6%B1%82%E5%8C%BB%E6%B2%BB.mp3', '1651', '2017-03-26 12:37:00', '1', '1', '', '2017-03-26 12:37:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6894', '', '神所爱的枝子', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170402.%E7%A5%9E%E6%89%80%E7%88%B1%E7%9A%84%E6%9E%9D%E5%AD%90.mp3', '1651', '2017-04-02 12:38:00', '1', '1', '', '2017-04-02 12:38:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6895', '', '完全的顺服', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20140423.%E5%AE%8C%E5%85%A8%E7%9A%84%E9%A1%BA%E6%9C%8D.mp3', '1651', '2017-04-23 12:38:00', '1', '1', '', '2017-04-23 12:38:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6896', '', '穿戴神所赐的全副军装', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170430.%E7%A9%BF%E6%88%B4%E7%A5%9E%E6%89%80%E8%B5%90%E7%9A%84%E5%85%A8%E5%89%AF%E5%86%9B%E8%A3%85.mp3', '1651', '2017-04-30 12:39:00', '1', '1', '', '2017-04-30 12:39:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6897', '', '做个忠心有见识的仆人（二）', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170507.%E5%81%9A%E4%B8%AA%E5%BF%A0%E5%BF%83%E6%9C%89%E8%A7%81%E8%AF%86%E7%9A%84%E4%BB%86%E4%BA%BA(%E4%B8%8B).mp3', '1651', '2017-05-07 12:39:00', '1', '1', '', '2017-05-07 12:39:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6898', '', '做个忠心有见识的仆人（一）', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170507.%E5%81%9A%E4%B8%AA%E5%BF%A0%E5%BF%83%E6%9C%89%E8%A7%81%E8%AF%86%E7%9A%84%E4%BB%86%E4%BA%BA(%E4%B8%8A).mp3', '1651', '2017-05-07 12:40:00', '1', '1', '', '2017-05-07 12:40:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6899', '', '天父的心：为父为母', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170514.%E5%A4%A9%E7%88%B6%E7%9A%84%E5%BF%83%EF%BC%9A%E4%B8%BA%E7%88%B6%E4%B8%BA%E6%AF%8D.mp3', '1651', '2017-05-14 12:41:00', '1', '1', '', '2017-05-14 12:41:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6900', '', '天国的盼望', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170521.%E5%A4%A9%E5%9B%BD%E7%9A%84%E7%9B%BC%E6%9C%9B.mp3', '1651', '2017-05-21 12:41:00', '1', '1', '', '2017-05-21 12:41:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6901', '', '给年轻人的信', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170528.%E7%BB%99%E5%B9%B4%E8%BD%BB%E4%BA%BA%E7%9A%84%E4%BF%A1.mp3', '1651', '2017-05-28 12:42:00', '1', '1', '', '2017-05-28 12:42:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6902', '', '十字架：为主受苦忍耐', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170604.%E5%8D%81%E5%AD%97%E6%9E%B6%EF%BC%9A%E4%B8%BA%E4%B8%BB%E5%8F%97%E8%8B%A6%E5%BF%8D%E8%80%90.mp3', '1651', '2017-06-04 12:42:00', '1', '1', '', '2017-06-04 12:42:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6903', '', '靠着基督得真自由', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170611.%E9%9D%A0%E7%9D%80%E5%9F%BA%E7%9D%A3%E5%BE%97%E7%9C%9F%E8%87%AA%E7%94%B1.mp3', '1651', '2017-06-11 12:43:00', '1', '1', '', '2017-06-11 12:43:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6904', '', '蒙福的人生', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170618.%E8%92%99%E7%A6%8F%E7%9A%84%E4%BA%BA%E7%94%9F.mp3', '1651', '2017-06-18 12:43:00', '1', '1', '', '2017-06-18 12:43:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6905', '', '愿你们平安', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/2170625.%E6%84%BF%E4%BD%A0%E4%BB%AC%E5%B9%B3%E5%AE%89.mp3', '1651', '2017-06-25 12:55:00', '1', '1', '', '2017-06-25 12:55:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6906', '', '从神而来的确据与印证', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170702.%E4%BB%8E%E7%A5%9E%E8%80%8C%E6%9D%A5%E7%9A%84%E7%A1%AE%E6%8D%AE%E4%B8%8E%E5%8D%B0%E8%AF%81.mp3', '1651', '2017-07-02 12:55:00', '1', '1', '', '2017-07-02 12:55:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6907', '', '一、理财得自由的基本要素', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/%E7%90%86%E8%B4%A2/%E4%B8%80%E3%80%81%E7%90%86%E8%B4%A2%E5%BE%97%E8%87%AA%E7%94%B1%E7%9A%84%E5%9F%BA%E6%9C%AC%E8%A6%81%E7%B4%A0.mp3', '1652', '2017-07-08 12:59:00', '1', '1', '', '2017-07-08 12:59:00', '0', '32', null);
INSERT INTO `article_info` VALUES ('6908', '', '二、明白神关乎金钱的四项目的', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/%E7%90%86%E8%B4%A2/%E4%BA%8C%E3%80%81%E6%98%8E%E7%99%BD%E7%A5%9E%E5%85%B3%E4%B9%8E%E9%87%91%E9%92%B1%E7%9A%84%E5%9B%9B%E9%A1%B9%E7%9B%AE%E7%9A%84.mp3', '1652', '2017-07-08 13:00:00', '1', '1', '', '2017-07-08 13:00:00', '0', '30', null);
INSERT INTO `article_info` VALUES ('6909', '', '三、辨明并拒绝错误的理财观念', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/%E7%90%86%E8%B4%A2/%E4%B8%89%E3%80%81%E8%BE%A8%E6%98%8E%E5%B9%B6%E6%8B%92%E7%BB%9D%E9%94%99%E8%AF%AF%E7%9A%84%E7%90%86%E8%B4%A2%E8%A7%82%E5%BF%B5.mp3', '1652', '2017-07-08 13:01:00', '1', '1', '', '2017-07-08 13:01:00', '0', '33', null);
INSERT INTO `article_info` VALUES ('6910', '', '四、在财务上认清神的责备', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/%E7%90%86%E8%B4%A2/%E5%9B%9B%E3%80%81%E5%9C%A8%E8%B4%A2%E5%8A%A1%E4%B8%8A%E8%AE%A4%E6%B8%85%E7%A5%9E%E7%9A%84%E8%B4%A3%E5%A4%87.mp3', '1652', '2017-07-08 13:02:00', '1', '1', '', '2017-07-08 13:02:00', '0', '13', null);
INSERT INTO `article_info` VALUES ('6912', '', '五、选择侍奉神而非金钱', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/%E7%90%86%E8%B4%A2/%E4%BA%94%E3%80%81%E9%80%89%E6%8B%A9%E4%BE%8D%E5%A5%89%E7%A5%9E%E8%80%8C%E9%9D%9E%E9%87%91%E9%92%B1.mp3', '1652', '2017-07-08 13:03:00', '1', '1', '', '2017-07-08 13:03:00', '0', '30', null);
INSERT INTO `article_info` VALUES ('6913', '', '六、其他原则', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/%E7%90%86%E8%B4%A2/%E5%85%AD%E3%80%81%E5%85%B6%E4%BB%96%E5%8E%9F%E5%88%99.mp3', '1652', '2017-07-08 13:03:00', '1', '1', '', '2017-07-08 13:03:00', '0', '36', null);
INSERT INTO `article_info` VALUES ('6914', '', '诗篇91章1-16', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170709.%E8%AF%97%E7%AF%8791%E7%AB%A01-16.mp3', '1651', '2017-07-09 13:54:00', '1', '1', '', '2017-07-09 13:54:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6915', '', '圣洁生活与能力', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170709.%E5%9C%A3%E6%B4%81%E7%94%9F%E6%B4%BB%E4%B8%8E%E8%83%BD%E5%8A%9B.mp3', '1651', '2017-07-09 21:10:00', '1', '1', '', '2017-07-09 21:10:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6916', '', '赢兰服侍见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170709.%E8%B5%B5%E8%B5%A2%E5%85%B0%E8%A7%81%E8%AF%81.mp3', '1654', '2017-07-09 21:12:00', '1', '1', '', '2017-07-09 21:12:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6917', '', '进入应许之地（一）', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170716.%E8%BF%9B%E5%85%A5%E5%BA%94%E8%AE%B8%E4%B9%8B%E5%9C%B0%EF%BC%88%E4%B8%80%EF%BC%89.mp3', '1651', '2017-07-16 14:05:00', '1', '1', '', '2017-07-16 14:05:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6918', '', '生命的意义与标杆', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170723.%E7%94%9F%E5%91%BD%E7%9A%84%E6%84%8F%E4%B9%89%E4%B8%8E%E6%A0%87%E6%9D%86.mp3', '1651', '2017-07-23 12:50:00', '1', '1', '', '2017-07-23 12:50:00', '0', '0', null);
INSERT INTO `article_info` VALUES ('6920', '', 'leaf关于母亲的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170514.leaf%E5%85%B3%E4%BA%8E%E6%AF%8D%E4%BA%B2%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1654', '2017-05-04 20:36:00', '1', '1', '', '2017-05-04 20:36:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6921', '', '奇恩的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170514.%E5%A5%87%E6%81%A9%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1654', '2017-05-14 20:38:00', '1', '1', '', '2017-05-14 20:38:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6922', '', '小红见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170521.%E5%B0%8F%E7%BA%A2%E8%A7%81%E8%AF%81.mp3', '1654', '2017-05-21 20:39:00', '1', '1', '', '2017-05-21 20:39:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6923', '', '陈航见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170702.%E9%99%88%E8%88%AA%E8%A7%81%E8%AF%81.mp3', '1654', '2017-07-02 20:40:00', '1', '1', '', '2017-07-02 20:40:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6927', '', '王兰的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170723.%E7%8E%8B%E5%85%B0%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1654', '2017-07-23 20:42:00', '1', '1', '', '2017-07-23 20:42:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6928', '', '段治如的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170730.%E6%AE%B5%E6%B2%BB%E5%A6%82%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1654', '2017-07-30 20:42:00', '1', '1', '', '2017-07-30 20:42:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6929', '', '赵伟见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170730.%E8%B5%B5%E4%BC%9F%E8%A7%81%E8%AF%81.mp3', '1654', '2017-07-30 20:42:00', '1', '1', '', '2017-07-30 20:42:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6930', '', '婚姻之约', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170806.%E5%A9%9A%E5%A7%BB%E4%B9%8B%E7%BA%A6.mp3', '1651', '2017-08-06 22:29:00', '1', '1', '', '2017-08-06 22:29:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170806.%E5%A9%9A%E5%A7%BB%E4%B9%8B%E7%BA%A6.pptx');
INSERT INTO `article_info` VALUES ('6931', '', '曾晓华见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170806.%E6%9B%BE%E6%99%93%E5%8D%8E%E8%A7%81%E8%AF%81.mp3', '1654', '2017-08-06 22:39:00', '1', '1', '', '2017-08-06 22:39:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6932', '', '赵恩惠见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170806.%E8%B5%B5%E6%81%A9%E6%83%A0%E8%A7%81%E8%AF%81.mp3', '1654', '2017-08-06 22:42:00', '1', '1', '', '2017-08-06 22:42:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6933', '', '属灵工程', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170813.%E5%B1%9E%E7%81%B5%E5%B7%A5%E7%A8%8B.mp3', '1651', '2017-08-13 22:48:00', '1', '1', '', '2017-08-13 22:48:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170813.%E5%B1%9E%E7%81%B5%E5%B7%A5%E7%A8%8B.ppt');
INSERT INTO `article_info` VALUES ('6934', '', '数算代价—: 施洗约翰所付的代价', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170730.%E6%95%B0%E7%AE%97%E4%BB%A3%E4%BB%B7%E2%80%94%E6%96%BD%E6%B4%97%E7%BA%A6%E7%BF%B0%E6%89%80%E4%BB%98%E7%9A%84%E4%BB%A3%E4%BB%B7.mp3', '1651', '2017-07-30 22:48:00', '1', '1', '', '2017-07-30 22:48:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6935', '', '崇政见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170813.%E5%B4%87%E6%94%BF%E8%A7%81%E8%AF%81.mp3', '1654', '2017-08-13 22:49:00', '1', '1', '', '2017-08-13 22:49:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6936', '', '王菲的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170813.%E7%8E%8B%E9%9D%9E%E7%9A%84%E8%A7%81%E8%AF%81.lite.mp3', '1654', '2017-08-13 23:04:00', '1', '1', '', '2017-08-13 23:04:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6937', '', '曾晓华见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170820.%E6%9B%BE%E6%99%93%E5%8D%8E%E8%A7%81%E8%AF%81.mp3', '1654', '2017-08-20 21:49:00', '1', '1', '', '2017-08-20 21:49:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6938', '', '属天的真智慧', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170820.%E5%B1%9E%E5%A4%A9%E7%9A%84%E7%9C%9F%E6%99%BA%E6%85%A7.mp3', '1651', '2017-08-20 21:50:00', '1', '1', '', '2017-08-20 21:50:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6940', '', '华人和以色列的关系', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170820.%E5%8D%8E%E4%BA%BA%E5%92%8C%E4%BB%A5%E8%89%B2%E5%88%97%E7%9A%84%E5%85%B3%E7%B3%BB.mp3', '1651', '2017-08-20 21:59:00', '1', '1', '', '2017-08-20 21:59:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6941', '', '2017.08.22.董牧师特会分享', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/20170822.%E7%89%B9%E4%BC%9A%E5%88%86%E4%BA%AB.mp3', '0', '2017-08-22 00:17:00', '1', '1', '', '2017-08-22 00:17:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6942', '', '2017.08.22.特会敬拜', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/20170822.%E7%89%B9%E4%BC%9A%E6%95%AC%E6%8B%9C.mp3', '0', '2017-08-22 00:19:00', '1', '1', '', '2017-08-22 00:19:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6943', '', '何国琼阿姨见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018.08.27.%20%E4%BD%95%E9%98%BF%E5%A7%A8%E8%A7%81%E8%AF%81.mp3', '1654', '2017-08-27 21:26:00', '1', '1', '', '2017-08-27 21:26:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6944', '', '兴起！传福音', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20180827.%20%E5%85%B4%E8%B5%B7%2C%E4%BC%A0%E7%A6%8F%E9%9F%B3.mp3', '1651', '2017-08-27 21:27:00', '1', '1', '', '2017-08-27 21:27:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170827.%E5%85%B4%E8%B5%B7%EF%BC%81%E4%BC%A0%E7%A6%8F%E9%9F%B3.pptx');
INSERT INTO `article_info` VALUES ('6945', '', '莫菲琼的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170903.%E8%8E%AB%E9%9D%9E%E7%90%BC%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1654', '2017-09-03 13:43:00', '1', '1', '', '2017-09-03 13:43:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6946', '', '恒久忍耐', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170903.%E6%81%92%E4%B9%85%E5%BF%8D%E8%80%90.lite.mp3', '1651', '2017-09-03 13:45:00', '1', '1', '', '2017-09-03 13:45:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/2017.09.03%20%E6%81%92%E4%B9%85%E5%BF%8D%E8%80%90.pptx');
INSERT INTO `article_info` VALUES ('6947', '', '倪丽的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170903.%E5%80%AA%E4%B8%BD%E5%A7%90%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1654', '2017-09-03 19:24:00', '1', '1', '', '2017-09-03 19:24:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6948', '', '王者荣耀', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170910.%E7%8E%8B%E8%80%85%E8%8D%A3%E8%80%80.mp3', '1651', '2017-09-10 16:53:00', '1', '1', '', '2017-09-10 16:53:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6949', '', '王兰的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170910.%E7%8E%8B%E5%85%B0%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1654', '2017-09-10 16:54:00', '1', '1', '', '2017-09-10 16:54:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6950', '', '每天传福音(上)', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170917.%E6%AF%8F%E5%A4%A9%E4%BC%A0%E7%A6%8F%E9%9F%B3%EF%BC%88%E4%B8%8A%EF%BC%89.mp3', '0', '2017-09-17 20:08:00', '1', '1', '', '2017-09-17 20:08:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6951', '', '每天传福音(下)', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170917.%E6%AF%8F%E5%A4%A9%E4%BC%A0%E7%A6%8F%E9%9F%B3%EF%BC%88%E4%B8%8B%EF%BC%89.mp3', '0', '2017-09-17 20:09:00', '1', '1', '', '2017-09-17 20:09:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6952', '', '郭曼见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20170924.%E9%83%AD%E6%9B%BC%E8%A7%81%E8%AF%81.mp3', '1654', '2017-09-24 19:32:00', '1', '1', '', '2017-09-24 19:32:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6953', '', '兴起年轻人（上）', 'http://v.hmrzj.cn/主日信息库/2017/20170924.传福音（上午）.mp3', '1651', '2017-09-24 19:39:00', '1', '1', '', '2017-09-24 19:39:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6954', '', '兴起年轻人（下）', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20170924.%E5%85%B4%E8%B5%B7%E5%B9%B4%E8%BD%BB%E4%BA%BA%EF%BC%88%E4%B8%8B%E5%8D%88%EF%BC%89.mp3', '1651', '2017-09-24 19:40:00', '1', '1', '', '2017-09-24 19:40:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6955', '', '复兴特会', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/20170922.%E5%A4%8D%E5%85%B4%E7%89%B9%E4%BC%9A.mp3', '1655', '2017-09-22 19:52:00', '1', '1', '', '2017-09-22 19:52:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6956', '', '沟通的艺术', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/20170919.%E6%B2%9F%E9%80%9A%E7%9A%84%E8%89%BA%E6%9C%AF%EF%BC%88%E5%A9%9A%E5%A7%BB%EF%BC%89.mp3', '1655', '2017-09-19 19:53:00', '1', '1', '', '2017-09-19 19:53:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6957', '', '何鸿媛的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20171001.%E4%BD%95%E9%B8%BF%E5%AA%9B%E7%9A%84%E8%A7%81%E8%AF%81.lite.mp3', '1654', '2017-10-01 12:02:00', '1', '1', '', '2017-10-01 12:02:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6958', '', '忠心有见识的仆人', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171001.%E5%81%9A%E5%BF%A0%E5%BF%83%E6%9C%89%E8%A7%81%E8%AF%81%E7%9A%84%E4%BB%86%E4%BA%BA.lite.mp3', '1651', '2017-10-01 12:02:00', '1', '1', '', '2017-10-01 12:02:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171001.%E5%BF%A0%E5%BF%83%E6%9C%89%E8%A7%81%E8%AF%86%E7%9A%84%E4%BB%86%E4%BA%BA.ppt');
INSERT INTO `article_info` VALUES ('6959', '', '生命低谷中见证主的爱', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171008.%E7%94%9F%E5%91%BD%E4%BD%8E%E8%B0%B7%E4%B8%AD%E8%A7%81%E8%AF%81%E4%B8%BB%E7%9A%84%E7%88%B1.mp3', '1651', '2017-10-08 13:22:00', '1', '1', '', '2017-10-08 13:22:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171008.%E7%94%9F%E5%91%BD%E4%BD%8E%E8%B0%B7%E4%B8%AD%E8%A7%81%E8%AF%81%E4%B8%BB%E7%9A%84%E7%88%B1.pptx');
INSERT INTO `article_info` VALUES ('6960', '', '神圣的托付', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171015.%E7%A5%9E%E5%9C%A3%E7%9A%84%E6%89%98%E4%BB%98.mp3', '1651', '2017-10-15 17:06:00', '1', '1', '', '2017-10-15 17:06:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171015.%E7%A5%9E%E5%9C%A3%E7%9A%84%E6%89%98%E4%BB%98.pptx');
INSERT INTO `article_info` VALUES ('6961', '', '走出属灵生命的低谷', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171022.%E8%B5%B0%E5%87%BA%E5%B1%9E%E7%81%B5%E7%94%9F%E5%91%BD%E7%9A%84%E4%BD%8E%E8%B0%B7.mp3', '1651', '2017-10-22 18:38:00', '1', '1', '', '2017-10-22 18:38:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171022.%E8%B5%B0%E5%87%BA%E5%B1%9E%E7%81%B5%E7%94%9F%E5%91%BD%E7%9A%84%E4%BD%8E%E8%B0%B7.pptx');
INSERT INTO `article_info` VALUES ('6962', '', '王学茹见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20171022.%E7%8E%8B%E5%AD%A6%E8%8C%B9%E8%A7%81%E8%AF%81.mp3', '1654', '2017-10-22 18:41:00', '1', '1', '', '2017-10-22 18:41:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6963', '', '不要埋没上帝给我们的才干', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171029.%E4%B8%8D%E8%A6%81%E5%9F%8B%E6%B2%A1%E4%B8%8A%E5%B8%9D%E7%BB%99%E6%88%91%E4%BB%AC%E7%9A%84%E6%89%8D%E5%B9%B2.mp3', '1651', '2017-10-29 17:15:00', '1', '1', '', '2017-10-29 17:15:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171029.%E4%B8%8D%E8%A6%81%E5%9F%8B%E6%B2%A1%E4%B8%8A%E5%B8%9D%E7%BB%99%E6%88%91%E4%BB%AC%E7%9A%84%E6%89%8D%E5%B9%B2.pptx');
INSERT INTO `article_info` VALUES ('6964', '', '巧薇的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20171112.%E5%B7%A7%E8%96%87%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1654', '2017-11-12 18:08:00', '1', '1', '', '2017-11-12 18:08:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6965', '', '来吧，我们重建', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171112.%E6%9D%A5%E5%90%A7%EF%BC%8C%E6%88%91%E4%BB%AC%E9%87%8D%E5%BB%BA.mp3', '1651', '2017-11-12 18:08:00', '1', '1', '', '2017-11-12 18:08:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6966', '', '儿童主日老师培训（1）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD%EF%BC%881%EF%BC%89.mp3', '1656', '2017-11-18 19:59:00', '1', '1', '', '2017-11-18 19:59:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6967', '', '儿童主日老师培训（2）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD%EF%BC%882%EF%BC%89.mp3', '1656', '2017-11-18 19:59:00', '1', '1', '', '2017-11-18 19:59:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6968', '', '儿童主日老师培训（3）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD%EF%BC%883%EF%BC%89.mp3', '1656', '2017-11-18 19:58:00', '1', '1', '', '2017-11-18 19:58:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6969', '', '儿童主日老师培训（4）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD%EF%BC%884%EF%BC%89.mp3', '1656', '2017-11-18 19:58:00', '1', '1', '', '2017-11-18 19:58:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6970', '', '儿童主日老师培训（5）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD%EF%BC%885%EF%BC%89.mp3', '1656', '2017-11-18 19:57:00', '1', '1', '', '2017-11-18 19:57:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6971', '', ' 儿童主日老师培训（6）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD%EF%BC%886%EF%BC%89.mp3', '1656', '2017-11-18 19:57:00', '1', '1', '', '2017-11-18 19:57:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6972', '', ' 儿童主日老师培训（7）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2017%E7%89%B9%E4%BC%9A/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E8%80%81%E5%B8%88%E5%9F%B9%E8%AE%AD%EF%BC%887%EF%BC%89.mp3', '1656', '2017-11-18 19:57:00', '1', '1', '', '2017-11-18 19:57:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6973', '', '王辉的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20171119.%E7%8E%8B%E8%BE%89%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1654', '2017-11-19 22:21:00', '1', '1', '', '2017-11-19 22:21:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6974', '', '以神为中心的建造', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171119.%E4%BB%A5%E7%A5%9E%E4%B8%BA%E4%B8%AD%E5%BF%83%E7%9A%84%E5%BB%BA%E9%80%A0.mp3', '1651', '2017-11-19 22:22:00', '1', '1', '', '2017-11-19 22:22:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6975', '', '活水江河的秘诀', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171119.%E6%B4%BB%E6%B0%B4%E6%B1%9F%E6%B2%B3%E7%9A%84%E7%A7%98%E8%AF%80.mp3', '1651', '2017-11-19 22:32:00', '1', '1', '', '2017-11-19 22:32:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6976', '', '天国的盼望', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171126.%E5%A4%A9%E5%9B%BD%E7%9A%84%E7%9B%BC%E6%9C%9B.mp3', '1651', '2017-11-26 17:54:00', '1', '1', '', '2017-11-26 17:54:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171126.%E5%A4%A9%E5%9B%BD%E7%9A%84%E7%9B%BC%E6%9C%9B.pptx');
INSERT INTO `article_info` VALUES ('6977', '', '以基督的心为心', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171203.%E4%BB%A5%E5%9F%BA%E7%9D%A3%E7%9A%84%E5%BF%83%E4%B8%BA%E5%BF%83.mp3', '1651', '2017-12-03 17:55:00', '1', '1', '', '2017-12-03 17:55:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171203.%E4%BB%A5%E5%9F%BA%E7%9D%A3%E7%9A%84%E5%BF%83%E4%B8%BA%E5%BF%83.pptx');
INSERT INTO `article_info` VALUES ('6978', '', '跨过信心的约旦河', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171210.%E8%B7%A8%E8%BF%87%E4%BF%A1%E5%BF%83%E7%9A%84%E7%BA%A6%E6%97%A6%E6%B2%B3.mp3', '1651', '2017-12-10 11:43:00', '1', '1', '', '2017-12-10 11:43:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171210.%E8%B7%A8%E8%BF%87%E4%BF%A1%E5%BF%83%E7%9A%84%E7%BA%A6%E6%97%A6%E6%B2%B3.pptx');
INSERT INTO `article_info` VALUES ('6979', '', '定睛看耶稣', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171217.%E5%AE%9A%E7%9D%9B%E7%9C%8B%E8%80%B6%E7%A8%A3.mp3', '1651', '2017-12-17 21:36:00', '1', '1', '', '2017-12-17 21:36:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171217.%E5%AE%9A%E7%9D%9B%E7%9C%8B%E8%80%B6%E7%A8%A3.pptx');
INSERT INTO `article_info` VALUES ('6980', '', '有事新的一年', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171231.%E5%8F%88%E6%98%AF%E4%B8%80%E5%B9%B4%E6%96%B0%E5%BC%80%E5%A7%8B.mp3', '1651', '2017-12-31 11:10:00', '1', '1', '', '2017-12-31 11:10:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6981', '', '与基督一同做王', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2017/20171231.%E4%B8%8E%E5%9F%BA%E7%9D%A3%E4%B8%80%E5%90%8C%E5%81%9A%E7%8E%8B.mp3', '1651', '2017-12-31 16:52:00', '1', '1', '', '2017-12-31 16:52:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6982', '', '兴起，发光', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180107.%E5%85%B4%E8%B5%B7%20%E5%8F%91%E5%85%89.mp3', '1657', '2018-01-07 20:27:00', '1', '1', '', '2018-01-07 20:27:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6983', '', '在神的计划中找到你的位置', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180114.%E5%9C%A8%E7%A5%9E%E7%9A%84%E8%AE%A1%E5%88%92%E4%B8%AD%E6%89%BE%E5%88%B0%E4%BD%A0%E7%9A%84%E4%BD%8D%E7%BD%AE.lite.mp3', '1657', '2018-01-14 21:55:00', '1', '0', '', '2018-01-14 21:55:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6984', '', '活在神的标准中', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180114.%E6%B4%BB%E5%9C%A8%E7%A5%9E%E7%9A%84%E6%A0%87%E5%87%86%E4%B8%AD.mp3', '1657', '2018-01-14 21:56:00', '1', '0', '', '2018-01-14 21:56:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6985', '', '石姊妹的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180114.%E7%9F%B3%E5%A7%8A%E5%A6%B9%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1659', '2018-01-14 22:02:00', '1', '1', '', '2018-01-14 22:02:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6986', '', '神就是光', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180121.%E7%A5%9E%E5%B0%B1%E6%98%AF%E5%85%89.mov', '1657', '2018-01-21 19:08:00', '1', '1', '', '2018-01-21 19:08:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6987', '', '工作中为神而活', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/%E8%81%8C%E5%9C%BA%E5%8F%91%E5%85%89%E8%AE%BA%E5%9D%9B/20180116.%E5%B7%A5%E4%BD%9C%E4%B8%AD%E4%B8%BA%E7%A5%9E%E8%80%8C%E6%B4%BB.lite.mp3', '1660', '2018-01-24 19:09:00', '1', '0', '', '2018-01-24 19:09:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6988', '', '新的生命', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180128.%E6%96%B0%E7%9A%84%E7%94%9F%E5%91%BD.mp3', '1657', '2018-01-28 21:25:00', '1', '1', '', '2018-01-28 21:25:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6989', '', '候葳姊妹见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180128.%E5%80%99%E8%91%B3%E5%A7%8A%E5%A6%B9%E8%A7%81%E8%AF%81.mp3', '1659', '2018-01-28 21:27:00', '1', '1', '', '2018-01-28 21:27:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6990', '', '杨华姊妹见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180128.%E6%9D%A8%E5%8D%8E%E5%A7%8A%E5%A6%B9%E8%A7%81%E8%AF%81.mp3', '1659', '2018-01-28 21:28:00', '1', '1', '', '2018-01-28 21:28:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('6991', '', '兴起发光：温柔非生气', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180204.%E5%85%B4%E8%B5%B7%E5%8F%91%E5%85%89%EF%BC%9A%E6%B8%A9%E6%9F%94%E9%9D%9E%E7%94%9F%E6%B0%94.mp3', '1657', '2018-02-04 21:24:03', '0', '1', '', '2018-02-04 21:37:58', '0', '4', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180204.%E5%85%B4%E8%B5%B7%E5%8F%91%E5%85%89%EF%BC%9A%E6%B8%A9%E6%9F%94%E9%9D%9E%E7%94%9F%E6%B0%94.pptx');
INSERT INTO `article_info` VALUES ('6992', '', '王菲姊妹见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180204.%E7%8E%8B%E8%8F%B2%E5%A7%8A%E5%A6%B9%E8%A7%81%E8%AF%81.mp3', '1659', '2018-02-04 21:25:20', '0', '1', '', '2018-02-04 21:25:35', '0', '0', '');
INSERT INTO `article_info` VALUES ('6993', '', '袁斌弟兄的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180204.%E8%A2%81%E6%96%8C%E5%BC%9F%E5%85%84%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1659', '2018-02-04 21:26:29', '0', '1', '', '2018-02-04 21:26:35', '0', '0', '');
INSERT INTO `article_info` VALUES ('6994', '', '游丽姊妹的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180210.%E6%B8%B8%E4%B8%BD%E5%A7%8A%E5%A6%B9%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1659', '2018-02-10 13:52:13', '0', '1', '', '2018-02-10 13:52:21', '0', '0', '');
INSERT INTO `article_info` VALUES ('6995', '', '当孝敬父母', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180218.%E5%BD%93%E5%AD%9D%E6%95%AC%E7%88%B6%E6%AF%8D.mp3', '1657', '2018-02-18 11:29:34', '0', '1', '', '2018-02-18 11:28:55', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180218.%E5%BD%93%E5%AD%9D%E6%95%AC%E7%88%B6%E6%AF%8D.ppt');
INSERT INTO `article_info` VALUES ('6996', '', '谭姊妹见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180225.%E8%B0%AD%E5%A7%8A%E5%A6%B9%E8%A7%81%E8%AF%81.mp3', '1659', '2018-02-25 11:38:33', '0', '1', '', '2018-02-25 11:37:21', '0', '0', '');
INSERT INTO `article_info` VALUES ('6997', '', '殷勤不可懒惰', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180225.%E6%AE%B7%E5%8B%A4%E4%B8%8D%E5%8F%AF%E6%87%92%E6%83%B0.mp3', '1657', '2018-02-25 11:40:16', '0', '1', '', '2018-02-25 11:39:03', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180225.%E6%AE%B7%E5%8B%A4%E4%B8%8D%E5%8F%AF%E6%87%92%E6%83%B0.ppt');
INSERT INTO `article_info` VALUES ('6998', '', '伯赛大的瞎子', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180304.%E4%BC%AF%E8%B5%9B%E5%A4%A7%E7%9A%84%E7%9E%8E%E5%AD%90.mp3', '1657', '2018-03-04 15:53:50', '0', '1', '', '2018-03-04 15:52:42', '0', '0', '');
INSERT INTO `article_info` VALUES ('6999', '', '长宽见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180304.%E9%95%BF%E5%AE%BD%E8%A7%81%E8%AF%81.mp3', '1659', '2018-03-04 17:22:59', '0', '1', '', '2018-03-04 17:21:38', '0', '0', '');
INSERT INTO `article_info` VALUES ('7000', '', '袁斌弟兄见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180311.%E8%A2%81%E6%96%8C%E5%BC%9F%E5%85%84%E8%A7%81%E8%AF%81.mp3', '1659', '2018-03-11 21:48:43', '0', '1', '', '2018-03-11 21:48:46', '0', '0', '');
INSERT INTO `article_info` VALUES ('7001', '', '对主忠心', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180311.%E5%AF%B9%E4%B8%BB%E5%BF%A0%E5%BF%83.mp3', '1657', '2018-03-11 21:52:50', '0', '1', '', '2018-03-11 21:52:54', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180311.%E5%AF%B9%E4%B8%BB%E5%BF%A0%E5%BF%83.pptx');
INSERT INTO `article_info` VALUES ('7002', '', '操练敬虔', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180318.%E6%93%8D%E7%BB%83%E6%95%AC%E8%99%94.mp3', '1657', '2018-03-18 12:22:04', '0', '1', '', '2018-03-18 22:00:43', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180318.%E6%93%8D%E7%BB%83%E6%95%AC%E8%99%94.ppt');
INSERT INTO `article_info` VALUES ('7003', '', '王弟兄见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180325.%E7%8E%8B%E5%BC%9F%E5%85%84%E8%A7%81%E8%AF%81.mp3', '1659', '2018-03-25 11:43:44', '0', '1', '', '2018-03-25 11:42:16', '0', '281', '');
INSERT INTO `article_info` VALUES ('7004', '', '基督徒的肢体', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180325.%E5%9F%BA%E7%9D%A3%E7%9A%84%E8%82%A2%E4%BD%93.mp3', '1657', '2018-03-25 11:56:27', '0', '1', '', '2018-03-25 11:55:00', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180325.%E5%9F%BA%E7%9D%A3%E7%9A%84%E8%82%A2%E4%BD%93.pptx');
INSERT INTO `article_info` VALUES ('7005', '', '人生最大的胜仗：复活', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180401.%E4%BA%BA%E7%94%9F%E6%9C%80%E5%A4%A7%E7%9A%84%E8%83%9C%E4%BB%97%EF%BC%9A%E5%A4%8D%E6%B4%BB.mp3', '1657', '2018-04-01 11:35:48', '0', '1', '', '2018-04-01 11:34:13', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180401.%E4%BA%BA%E7%94%9F%E6%9C%80%E5%A4%A7%E7%9A%84%E8%83%9C%E4%BB%97%EF%BC%9A%E5%A4%8D%E6%B4%BB.pptx');
INSERT INTO `article_info` VALUES ('7006', ' ', '高翔弟兄的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/2018/20180407.%E9%AB%98%E7%BF%94%E5%BC%9F%E5%85%84%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1659', '2018-04-07 20:24:37', '0', '1', '', '2018-04-08 20:28:07', '0', '0', '');
INSERT INTO `article_info` VALUES ('7007', '  ', '再来接你', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180407.%E5%86%8D%E6%9D%A5%E6%8E%A5%E4%BD%A0.mp3', '1657', '2018-04-07 20:26:18', '0', '1', '', '2018-04-08 20:28:24', '0', '0', '');
INSERT INTO `article_info` VALUES ('7008', ' ', '人生的异象与智慧', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180415.%E4%BA%BA%E7%94%9F%E7%9A%84%E5%BC%82%E8%B1%A1%E4%B8%8E%E6%99%BA%E6%85%A7.mp3', '1657', '2018-04-14 07:17:41', '0', '1', '', '2018-04-16 07:18:59', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180415.%E4%BA%BA%E7%94%9F%E7%9A%84%E5%BC%82%E8%B1%A1%E4%B8%8E%E6%99%BA%E6%85%A7.pptx');
INSERT INTO `article_info` VALUES ('7009', '', '尼希米的祷告', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180422.%E5%B0%BC%E5%B8%8C%E7%B1%B3%E7%9A%84%E7%A5%B7%E5%91%8A.mp3', '1657', '2018-04-22 21:27:10', '0', '1', '', '2018-04-22 21:27:39', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180422.%E5%B0%BC%E5%B8%8C%E7%B1%B3%E7%9A%84%E7%A5%B7%E5%91%8A.pptx');
INSERT INTO `article_info` VALUES ('7010', '', '晚上培训', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%84%BF%E7%AB%A5%E6%9C%8D%E4%BA%8B%E5%9F%B9%E8%AE%AD/20180420.%E6%99%9A%E4%B8%8A%E5%9F%B9%E8%AE%AD.mp3', '1661', '2018-04-20 06:35:38', '0', '1', '', '2018-04-22 21:40:08', '0', '0', '');
INSERT INTO `article_info` VALUES ('7011', '', '晚上问答', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%84%BF%E7%AB%A5%E6%9C%8D%E4%BA%8B%E5%9F%B9%E8%AE%AD/20180420.%E6%99%9A%E4%B8%8A%E9%97%AE%E7%AD%94.mp3', '1661', '2018-04-20 04:35:33', '0', '1', '', '2018-04-22 21:40:46', '0', '0', '');
INSERT INTO `article_info` VALUES ('7012', '', '上午（一）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%84%BF%E7%AB%A5%E6%9C%8D%E4%BA%8B%E5%9F%B9%E8%AE%AD/20180421.%E4%B8%8A%E5%8D%88%EF%BC%88%E4%B8%80%EF%BC%89.mp3', '1661', '2018-04-21 21:35:26', '0', '1', '', '2018-04-22 21:37:09', '0', '0', '');
INSERT INTO `article_info` VALUES ('7013', '', '上午（二）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%84%BF%E7%AB%A5%E6%9C%8D%E4%BA%8B%E5%9F%B9%E8%AE%AD/20180421.%E4%B8%8A%E5%8D%88%EF%BC%88%E4%BA%8C%EF%BC%89.mp3', '1661', '2018-04-21 21:35:21', '0', '1', '', '2018-04-22 21:37:19', '0', '0', '');
INSERT INTO `article_info` VALUES ('7014', '', '下午（一）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%84%BF%E7%AB%A5%E6%9C%8D%E4%BA%8B%E5%9F%B9%E8%AE%AD/20180421.%E4%B8%8B%E5%8D%88%EF%BC%88%E4%B8%80%EF%BC%89.mp3', '1661', '2018-04-21 21:35:14', '0', '1', '', '2018-04-22 21:37:30', '0', '0', '');
INSERT INTO `article_info` VALUES ('7015', '', '下午（二）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%84%BF%E7%AB%A5%E6%9C%8D%E4%BA%8B%E5%9F%B9%E8%AE%AD/20180421.%E4%B8%8B%E5%8D%88%EF%BC%88%E4%BA%8C%EF%BC%89.mp3', '1661', '2018-04-21 21:35:02', '0', '1', '', '2018-04-22 21:37:40', '0', '0', '');
INSERT INTO `article_info` VALUES ('7016', '', '下午（问答）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%84%BF%E7%AB%A5%E6%9C%8D%E4%BA%8B%E5%9F%B9%E8%AE%AD/20180421.%E4%B8%8B%E5%8D%88%EF%BC%88%E9%97%AE%E7%AD%94%EF%BC%89.mp3', '1661', '2018-04-21 21:33:14', '0', '1', '', '2018-04-22 21:37:49', '0', '0', '');
INSERT INTO `article_info` VALUES ('7017', '', '讲道', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180429.%E8%AE%B2%E9%81%93.mp3', '1657', '2018-04-29 08:37:25', '0', '1', '', '2018-04-30 08:37:36', '0', '0', '');
INSERT INTO `article_info` VALUES ('7018', '', '做主的门徒', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180506.%E5%81%9A%E4%B8%BB%E7%9A%84%E9%97%A8%E5%BE%92.mp3', '1657', '2018-05-06 21:45:52', '0', '1', '', '2018-05-06 21:46:24', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/%E4%BD%9C%E4%B8%BB%E9%97%A8%E5%BE%92%EF%BC%88%E4%B8%8A%E5%8D%88%E5%A0%82%EF%BC%89.pptx');
INSERT INTO `article_info` VALUES ('7019', '', '门徒的要素', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180506.%E9%97%A8%E5%BE%92%E7%9A%84%E8%A6%81%E7%B4%A0.mp3', '1657', '2018-05-06 21:47:09', '0', '1', '', '2018-05-06 21:47:12', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/%E9%97%A8%E5%BE%92%E7%9A%84%E8%A6%81%E7%B4%A0%EF%BC%88%E4%B8%8B%E5%8D%88%E5%A0%82%EF%BC%89.pptx');
INSERT INTO `article_info` VALUES ('7020', '', '万勇和朱红夫妇见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20180513.%E6%9C%B1%E7%BA%A2%E7%9A%84%E8%A7%81%E8%AF%81.mp3', '1659', '2018-05-13 19:32:37', '0', '1', '', '2018-05-14 19:30:11', '0', '1', '');
INSERT INTO `article_info` VALUES ('7021', '', '王正芳的见证', 'http://v.hmrzj.cn/%E8%A7%81%E8%AF%81/20180513.%E7%8E%8B%E5%A7%8A%E5%A6%B9%E8%A7%81%E8%AF%81.mp3', '1659', '2018-05-13 19:33:24', '0', '1', '', '2018-05-13 19:35:30', '0', '1', '');
INSERT INTO `article_info` VALUES ('7022', '', '真实的敬拜者', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180513.%E7%9C%9F%E5%AE%9E%E7%9A%84%E6%95%AC%E6%8B%9C%E8%80%85.mp3', '1657', '2018-05-13 19:34:22', '0', '1', '', '2018-05-13 19:35:20', '0', '0', '');
INSERT INTO `article_info` VALUES ('7023', '', '谦卑', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180520.%E8%B0%A6%E5%8D%91.mp3', '1657', '2018-05-20 20:57:22', '0', '1', '', '2018-05-20 20:57:35', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180520.%E8%B0%A6%E5%8D%91.ppt');
INSERT INTO `article_info` VALUES ('7024', '', '上午讲道', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180527.%E4%B8%8A%E5%8D%88%E8%AE%B2%E9%81%93.mp3', '1657', '2018-05-27 19:23:26', '0', '1', '', '2018-05-27 19:23:28', '0', '0', '');
INSERT INTO `article_info` VALUES ('7025', '', '下午讲道', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180527.%E4%B8%8B%E5%8D%88%E8%AE%B2%E9%81%93.mp3', '1657', '2018-05-27 19:23:52', '0', '1', '', '2018-05-27 19:23:57', '0', '0', '');
INSERT INTO `article_info` VALUES ('7026', '', '乐守圣日', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180603.%E4%B9%90%E5%AE%88%E5%9C%A3%E6%97%A5.mp3', '1657', '2018-06-03 22:27:18', '0', '1', '', '2018-06-03 22:28:09', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180603.%E4%B9%90%E5%AE%88%E5%9C%A3%E6%97%A5.ppt');
INSERT INTO `article_info` VALUES ('7027', '', '你在哪里', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180610_%E4%BD%A0%E5%9C%A8%E5%93%AA%E9%87%8C.mp3', '1657', '2018-06-10 17:49:59', '0', '1', '', '2018-06-10 17:51:08', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/%E4%BD%A0%E5%9C%A8%E9%82%A3%E9%87%8C20180610GSH.pptx');
INSERT INTO `article_info` VALUES ('7028', '', '婚姻保卫战 ( 一 )', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%A9%9A%E5%A7%BB%E5%AE%B6%E5%BA%AD/20180609.%E5%A9%9A%E5%A7%BB%E4%BF%9D%E5%8D%AB%E6%88%98.%E4%B8%8A%E5%8D%88.mp3', '1663', '2018-06-11 20:35:43', '0', '1', '', '2018-06-11 20:37:36', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%A9%9A%E5%A7%BB%E5%AE%B6%E5%BA%AD/20180609.%E5%A9%9A%E5%A7%BB%E4%BF%9D%E5%8D%AB%E7%AB%99%E8%AF%BE%E7%A8%8B1.ppt');
INSERT INTO `article_info` VALUES ('7029', '', '婚姻保卫战 ( 二 )', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%A9%9A%E5%A7%BB%E5%AE%B6%E5%BA%AD/20180609.%E5%A9%9A%E5%A7%BB%E4%BF%9D%E5%8D%AB%E6%88%98.%E4%B8%8B%E5%8D%88.mp3', '1663', '2018-06-11 20:37:06', '0', '1', '', '2018-06-11 20:37:21', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%A9%9A%E5%A7%BB%E5%AE%B6%E5%BA%AD/20180609.%E5%A9%9A%E5%A7%BB%E4%BF%9D%E5%8D%AB%E7%AB%99%E8%AF%BE%E7%A8%8B1.ppt');
INSERT INTO `article_info` VALUES ('7030', '', '工作：职场的服事', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180617.%E5%B7%A5%E4%BD%9C%EF%BC%9A%E8%81%8C%E5%9C%BA%E7%9A%84%E6%9C%8D%E4%BA%8B.mp3', '1657', '2018-06-18 00:06:19', '0', '1', '', '2018-06-18 00:06:30', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180617.%E5%B7%A5%E4%BD%9C%EF%BC%9A%E8%81%8C%E5%9C%BA%E7%9A%84%E6%9C%8D%E4%BA%8B.pptx');
INSERT INTO `article_info` VALUES ('7031', '', '米迦的偶像', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180624.%E7%B1%B3%E8%BF%A6%E7%9A%84%E5%81%B6%E5%83%8F.mp3', '1657', '2018-06-24 22:24:33', '0', '1', '', '2018-06-24 22:24:36', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180624.%E7%B1%B3%E8%BF%A6%E7%9A%84%E5%81%B6%E5%83%8F.pptx');
INSERT INTO `article_info` VALUES ('7032', '', '主爱的深度', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180701.%E4%B8%BB%E7%88%B1%E7%9A%84%E6%B7%B1%E5%BA%A6.mp3', '1657', '2018-07-01 20:37:49', '0', '1', '', '2018-07-01 20:37:51', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180701.%E4%B8%BB%E7%88%B1%E7%9A%84%E6%B7%B1%E5%BA%A6.pptx');
INSERT INTO `article_info` VALUES ('7033', '', '带着缺陷去生活与服事', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180708.%E5%B8%A6%E7%9D%80%E7%BC%BA%E9%99%B7%E5%8E%BB%E7%94%9F%E6%B4%BB%E4%B8%8E%E6%9C%8D%E4%BA%8B.mp3', '1657', '2018-07-08 20:31:20', '0', '1', '', '2018-07-08 20:31:48', '0', '1', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180708.%E5%B8%A6%E7%9D%80%E7%BC%BA%E9%99%B7%E5%8E%BB%E7%94%9F%E6%B4%BB%E4%B8%8E%E6%9C%8D%E4%BA%8B.pptx');
INSERT INTO `article_info` VALUES ('7034', '', '论职场服事的一些问题', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/%E8%81%8C%E5%9C%BA%E5%8F%91%E5%85%89%E8%AE%BA%E5%9D%9B/20180710.%E8%AE%BA%E8%81%8C%E5%9C%BA%E6%9C%8D%E4%BA%8B%E7%9A%84%E4%B8%80%E4%BA%9B%E9%97%AE%E9%A2%98.mp3', '1660', '2018-07-10 21:48:36', '0', '1', '', '2018-07-10 21:49:04', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/%E8%81%8C%E5%9C%BA%E5%8F%91%E5%85%89%E8%AE%BA%E5%9D%9B/20180710.%E8%AE%BA%E8%81%8C%E5%9C%BA%E6%9C%8D%E4%BA%8B%E7%9A%84%E4%B8%80%E4%BA%9B%E9%97%AE%E9%A2%98%EF%BC%88%E4%BA%8C%EF%BC%89.pptx');
INSERT INTO `article_info` VALUES ('7035', '', '不可怀随意的心服侍神', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180715%E4%B8%8D%E5%8F%AF%E6%80%80%E9%9A%8F%E6%84%8F%E7%9A%84%E5%BF%83%E6%9C%8D%E4%BE%8D%E7%A5%9E.mp3', '1657', '2018-07-16 07:10:32', '0', '0', '', '2018-07-16 07:10:42', '0', '0', '');
INSERT INTO `article_info` VALUES ('7036', '', '属天的预备', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180722%E8%AE%B2%E9%81%93(%E5%B1%9E%E5%A4%A9%E7%9A%84%E9%A2%84%E5%A4%87).mp3', '1657', '2018-07-22 12:04:48', '0', '1', '', '2018-07-22 12:05:14', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180722%E8%AE%B2%E9%81%93(%E5%B1%9E%E5%A4%A9%E7%9A%84%E9%A2%84%E5%A4%87).ppt');
INSERT INTO `article_info` VALUES ('7037', '', '完全的顺服', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180805_%E5%AE%8C%E5%85%A8%E7%9A%84%E9%A1%BA%E6%9C%8D.mp3', '1657', '2018-08-05 11:41:23', '0', '1', '', '2018-08-05 11:41:34', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180805.%E5%AE%8C%E5%85%A8%E9%A1%BA%E6%9C%8D.pptx');
INSERT INTO `article_info` VALUES ('7038', '', '人生最重要的是什么', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180812-%E8%AE%B2%E9%81%93%EF%BC%88%E4%BA%BA%E7%94%9F%E6%9C%80%E9%87%8D%E8%A6%81%E7%9A%84%E6%98%AF%E4%BB%80%E4%B9%88%EF%BC%89.mp3', '1657', '2018-08-12 18:20:27', '0', '1', '', '2018-08-12 18:20:38', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180812.%E4%BA%BA%E7%94%9F%E6%9C%80%E9%87%8D%E8%A6%81%E7%9A%84%E6%98%AF%E4%BB%80%E4%B9%88.pptx');
INSERT INTO `article_info` VALUES ('7039', '', '失而复得', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180819.%E5%A4%B1%E8%80%8C%E5%A4%8D%E5%BE%97.mp3', '1657', '2018-08-19 18:22:55', '0', '1', '', '2018-08-19 18:23:08', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180819.%E5%A4%B1%E8%80%8C%E5%A4%8D%E5%BE%97.pptx');
INSERT INTO `article_info` VALUES ('7040', '', '专心跟从主', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180826%E8%AE%B2%E9%81%93%28%E4%B8%93%E5%BF%83%E8%B7%9F%E4%BB%8E%E4%B8%BB%29.mp3', '1657', '2018-08-26 19:18:55', '0', '1', '', '2018-08-26 19:19:10', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180826%E8%AE%B2%E9%81%93%28%E4%B8%93%E5%BF%83%E8%B7%9F%E4%BB%8E%E4%B8%BB%29.ppt');
INSERT INTO `article_info` VALUES ('7041', '', '天然人生命的破碎', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180902.%E5%A4%A9%E7%84%B6%E4%BA%BA%E7%94%9F%E5%91%BD%E7%9A%84%E7%A0%B4%E7%A2%8E.mp3', '1657', '2018-09-02 11:59:58', '0', '1', '', '2018-09-02 12:00:08', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180902.%E5%A4%A9%E7%84%B6%E4%BA%BA%E7%94%9F%E5%91%BD%E7%9A%84%E7%A0%B4%E7%A2%8E.pptx');
INSERT INTO `article_info` VALUES ('7042', '', '抹大拉的马利亚', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180909.mp3', '1657', '2018-09-09 12:38:37', '0', '1', '', '2018-09-12 22:58:56', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93%2F2018%2F20180909%20%E6%8A%B9%E5%A4%A7%E6%8B%89%E7%9A%84%E9%A9%AC%E5%88%A9%E4%BA%9A.pptx');
INSERT INTO `article_info` VALUES ('7043', '', '耶稣平静风浪', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180916-%E8%AE%B2%E9%81%93%20Jesus%20Calms%20the%20Storm.mp3', '1657', '2018-09-16 07:45:33', '0', '0', '', '2018-09-23 22:13:21', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180916-Jesus%20Calms%20the%20Storm.pptx');
INSERT INTO `article_info` VALUES ('7044', '', '谁是我们的邻舍', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180916_%E8%AE%B2%E9%81%93%20who%20is%20our%20neighbour.mp3', '1657', '2018-09-16 07:46:36', '0', '0', '', '2018-09-23 22:13:09', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180916-Who%20is%20our%20neighbour.pptx');
INSERT INTO `article_info` VALUES ('7045', '', '职场论坛之做光和做盐', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD%2F%E8%81%8C%E5%9C%BA%E5%8F%91%E5%85%89%E8%AE%BA%E5%9D%9B%2F20180918.%E8%81%8C%E5%9C%BA%E5%8F%91%E5%85%89%E8%AE%BA%E5%9D%9B-%E5%81%9A%E5%85%89%E5%92%8C%E7%9B%90.mp3', '1660', '2018-09-18 21:40:14', '0', '1', '', '2018-09-18 21:46:14', '0', '0', '');
INSERT INTO `article_info` VALUES ('7046', '', '信心与爱（上）', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180923_%E8%AE%B2%E9%81%93%20%E4%BF%A1%E5%BF%83%E4%B8%8E%E7%88%B1%EF%BC%88%E4%B8%8A%EF%BC%89.mp3', '1657', '2018-09-23 21:52:22', '0', '0', '', '2018-09-23 21:53:15', '0', '11', '');
INSERT INTO `article_info` VALUES ('7047', '', '信心与爱（下）', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180923_%E8%AE%B2%E9%81%93%20%E4%BF%A1%E5%BF%83%E4%B8%8E%E7%88%B1%EF%BC%88%E4%B8%8B%EF%BC%89.mp3', '1657', '2018-09-23 21:53:47', '0', '0', '', '2018-09-23 21:54:27', '0', '18', '');
INSERT INTO `article_info` VALUES ('7048', '', '两件外衣（上）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%9B%BD%E5%BA%86%E8%90%A5%E4%BC%9A/20181003-%E4%B8%A4%E4%BB%B6%E5%A4%96%E8%A1%A3%EF%BC%88%E4%B8%8A%EF%BC%89.mp3', '1664', '2018-10-06 21:30:15', '0', '1', '', '2018-10-06 21:30:18', '0', '0', '');
INSERT INTO `article_info` VALUES ('7049', '', '两件外衣（下）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%9B%BD%E5%BA%86%E8%90%A5%E4%BC%9A/20181004-%E4%B8%A4%E4%BB%B6%E5%A4%96%E8%A1%A3%EF%BC%88%E4%B8%8B%EF%BC%89.mp3', '1664', '2018-10-06 21:30:07', '0', '1', '', '2018-10-06 21:30:09', '0', '0', '');
INSERT INTO `article_info` VALUES ('7050', '', '永不回头', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%9B%BD%E5%BA%86%E8%90%A5%E4%BC%9A/20181003-%E6%B0%B8%E4%B8%8D%E5%9B%9E%E5%A4%B4.mp3', '1664', '2018-10-06 21:28:50', '0', '1', '', '2018-10-06 21:28:54', '0', '0', '');
INSERT INTO `article_info` VALUES ('7051', '', '持续不灰心的祷告', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%9B%BD%E5%BA%86%E8%90%A5%E4%BC%9A/20181003-%E6%8C%81%E7%BB%AD%E4%B8%8D%E7%81%B0%E5%BF%83%E7%9A%84%E7%A5%B7%E5%91%8A.mp3', '1664', '2018-10-06 21:29:15', '0', '1', '', '2018-10-06 21:29:19', '0', '0', '');
INSERT INTO `article_info` VALUES ('7052', '', '海的思维VS船的思维', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20180930%E8%AE%B2%E9%81%93%EF%BC%9A%E6%B5%B7%E7%9A%84%E6%80%9D%E7%BB%B4VS%E8%88%B9%E7%9A%84%E6%80%9D%E7%BB%B4.mp3', '1657', '2018-09-30 16:56:57', '0', '1', '', '2018-10-07 16:57:07', '0', '0', '');
INSERT INTO `article_info` VALUES ('7053', '', '开我眼（上）', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181007_%E5%BC%80%E6%88%91%E7%9C%BC%EF%BC%88%E4%B8%8A%EF%BC%89.mp3', '1657', '2018-10-07 21:13:22', '0', '1', '', '2018-10-07 21:13:30', '0', '0', '');
INSERT INTO `article_info` VALUES ('7054', '', '开我眼（下）', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181007_%E5%BC%80%E6%88%91%E7%9C%BC%EF%BC%88%E4%B8%8B%EF%BC%89.mp3', '1657', '2018-10-07 21:13:00', '0', '1', '', '2018-10-07 21:14:01', '0', '0', '');
INSERT INTO `article_info` VALUES ('7055', '', '大能的勇士', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181014%E8%AE%B2%E9%81%93%E5%A4%A7%E8%83%BD%E7%9A%84%E5%8B%87%E5%A3%AB.mp3', '1657', '2018-10-14 12:11:57', '0', '1', '', '2018-10-14 12:12:12', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181014%E8%AE%B2%E9%81%93(%E5%A4%A7%E8%83%BD%E7%9A%84%E5%8B%87%E5%A3%AB).ppt');
INSERT INTO `article_info` VALUES ('7056', '', '火热的心', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181021.%E7%81%AB%E7%83%AD%E7%9A%84%E5%BF%83.mp3', '1657', '2018-10-21 22:42:30', '0', '1', '', '2018-10-21 22:42:33', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181021.%E7%81%AB%E7%83%AD%E7%9A%84%E5%BF%83.pptx');
INSERT INTO `article_info` VALUES ('7057', '', '万物的结局近了', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181028%E4%B8%87%E7%89%A9%E7%9A%84%E7%BB%93%E5%B1%80%E8%BF%91%E4%BA%86.mp3', '1657', '2018-10-28 16:46:25', '0', '1', '', '2018-10-31 10:22:33', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181028%20%20%E4%B8%87%E7%89%A9%E7%9A%84%E7%BB%93%E5%B1%80%E8%BF%91%E4%BA%86.pptx');
INSERT INTO `article_info` VALUES ('7058', '', '在永恒中看自己', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181104%20%E5%9C%A8%E6%B0%B8%E6%81%92%E4%B8%AD%E7%9C%8B%E8%87%AA%E5%B7%B1.mp3', '1657', '2018-11-04 23:37:19', '0', '1', '', '2018-11-04 23:37:48', '0', '0', '');
INSERT INTO `article_info` VALUES ('7059', '', '恩膏：过去与现在', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181111%E6%81%A9%E8%86%8F%EF%BC%9A%E8%BF%87%E5%8E%BB%E4%B8%8E%E7%8E%B0%E5%9C%A8.mp3', '1657', '2018-11-11 21:07:13', '0', '1', '', '2018-11-11 21:07:17', '0', '0', '');
INSERT INTO `article_info` VALUES ('7060', '', '医治布道特会(一)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%8C%BB%E6%B2%BB%E5%B8%83%E9%81%93%E4%BC%9A/%E5%8C%BB%E6%B2%BB%E5%B8%83%E9%81%93%E7%89%B9%E4%BC%9A(%E4%B8%80).mp3', '1657', '2018-11-17 12:29:40', '0', '1', '', '2018-11-26 19:23:05', '0', '17', '');
INSERT INTO `article_info` VALUES ('7061', '', '医治布道特会(三)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%8C%BB%E6%B2%BB%E5%B8%83%E9%81%93%E4%BC%9A/%E5%8C%BB%E6%B2%BB%E5%B8%83%E9%81%93%E7%89%B9%E4%BC%9A(%E4%B8%89).mp3', '1657', '2018-11-17 12:35:23', '0', '1', '', '2018-11-26 15:35:36', '0', '14', '');
INSERT INTO `article_info` VALUES ('7062', '', '医治布道特会(二)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%8C%BB%E6%B2%BB%E5%B8%83%E9%81%93%E4%BC%9A/%E5%8C%BB%E6%B2%BB%E5%B8%83%E9%81%93%E7%89%B9%E4%BC%9A(%E4%BA%8C).mp3', '1657', '2018-11-17 12:31:07', '0', '1', '', '2018-11-26 15:35:29', '0', '9', '');
INSERT INTO `article_info` VALUES ('7063', '', '医治布道特会(四)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%8C%BB%E6%B2%BB%E5%B8%83%E9%81%93%E4%BC%9A/%E5%8C%BB%E6%B2%BB%E5%B8%83%E9%81%93%E7%89%B9%E4%BC%9A(%E5%9B%9B).mp3', '1657', '2018-11-18 17:17:19', '0', '1', '', '2018-11-26 15:35:41', '0', '17', '');
INSERT INTO `article_info` VALUES ('7065', '', '防备法利赛人的酵', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181124(%E9%98%B2%E5%A4%87%E6%B3%95%E5%88%A9%E8%B5%9B%E4%BA%BA%E7%9A%84%E9%85%B5).mp3', '1657', '2018-11-25 12:31:17', '0', '1', '', '2018-11-25 12:31:22', '0', '6', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181124%E8%AE%B2%E9%81%93(%E9%98%B2%E5%A4%87%E6%B3%95%E5%88%A9%E8%B5%9B%E4%BA%BA%E7%9A%84%E9%85%B5).ppt');
INSERT INTO `article_info` VALUES ('7066', '', '教会领袖（一）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%B9%B412%E6%9C%88%E4%BB%BD/20181201%E6%95%99%E4%BC%9A%E9%A2%86%E8%A2%96%EF%BC%88%E4%B8%80%EF%BC%89.mp3', '1667', '2018-12-01 17:14:14', '0', '1', '', '2018-12-01 17:14:27', '0', '5', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%B9%B412%E6%9C%88%E4%BB%BD/20181201%E6%95%99%E4%BC%9A%E9%A2%86%E8%A2%96%EF%BC%88%E4%B8%80%EF%BC%89.pptx');
INSERT INTO `article_info` VALUES ('7067', '', '教会领袖（二）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%B9%B412%E6%9C%88%E4%BB%BD/20181201%E6%95%99%E4%BC%9A%E9%A2%86%E8%A2%96%EF%BC%88%E4%BA%8C%EF%BC%89.mp3', '1667', '2018-12-01 17:15:41', '0', '1', '', '2018-12-01 17:20:19', '0', '3', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%B9%B412%E6%9C%88%E4%BB%BD/20181201%E6%95%99%E4%BC%9A%E9%A2%86%E8%A2%96%EF%BC%88%E4%B8%80%EF%BC%89.pptx');
INSERT INTO `article_info` VALUES ('7068', '', '职场宣教', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%B9%B412%E6%9C%88%E4%BB%BD/20181201%20%E8%81%8C%E5%9C%BA%E5%AE%A3%E6%95%99%20(%E4%B8%80).mp3', '1667', '2018-12-01 17:17:20', '0', '1', '', '2018-12-01 17:18:42', '0', '2', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%B9%B412%E6%9C%88%E4%BB%BD/20181201%20%E8%81%8C%E5%9C%BA%E5%AE%A3%E6%95%99%20(1).pptx');
INSERT INTO `article_info` VALUES ('7069', '', '属灵商企领袖', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%B9%B412%E6%9C%88%E4%BB%BD/20181201%20%E8%81%8C%E5%9C%BA%E5%AE%A3%E6%95%99%EF%BC%88%E4%BA%8C%EF%BC%89.mp3', '1667', '2018-12-01 17:18:24', '0', '1', '', '2018-12-01 17:18:32', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%B9%B412%E6%9C%88%E4%BB%BD/20181201%20%E8%81%8C%E5%9C%BA%E5%AE%A3%E6%95%99%20(2).pptx');
INSERT INTO `article_info` VALUES ('7070', '', '建堂见证', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181202.%E5%BB%BA%E5%A0%82%E8%A7%81%E8%AF%81.mp3', '1657', '2018-12-02 21:03:34', '0', '1', '', '2018-12-02 21:03:38', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181202.%E5%BB%BA%E5%A0%82%E8%A7%81%E8%AF%81.pptx');
INSERT INTO `article_info` VALUES ('7071', '', '建造，更新，成长', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181202.%E5%BB%BA%E9%80%A0%EF%BC%8C%E6%9B%B4%E6%96%B0%EF%BC%8C%E6%88%90%E9%95%BF.mp3', '1657', '2018-12-02 21:04:45', '0', '1', '', '2018-12-02 21:05:46', '0', '3', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181202.%E5%BB%BA%E9%80%A0%EF%BC%8C%E6%9B%B4%E6%96%B0%EF%BC%8C%E6%88%90%E9%95%BF.pptx');
INSERT INTO `article_info` VALUES ('7072', '', '建立大有能力的生命', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181202%E5%BB%BA%E7%AB%8B%E5%A4%A7%E6%9C%89%E8%83%BD%E5%8A%9B%E7%9A%84%E7%94%9F%E5%91%BD.mp3', '1657', '2018-12-02 21:05:28', '0', '1', '', '2018-12-02 21:05:32', '0', '1', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181202%E5%BB%BA%E7%AB%8B%E5%A4%A7%E6%9C%89%E8%83%BD%E5%8A%9B%E7%9A%84%E7%94%9F%E5%91%BD.pptx');
INSERT INTO `article_info` VALUES ('7073', '', '信心的考验', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181219.%E4%BF%A1%E5%BF%83%E7%9A%84%E8%80%83%E9%AA%8C.mp3', '1657', '2018-12-17 09:25:57', '0', '1', '', '2018-12-17 09:26:07', '0', '0', '');
INSERT INTO `article_info` VALUES ('7074', '', '恩赐的发掘', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181216_%E6%81%A9%E8%B5%90%E7%9A%84%E5%8F%91%E6%8E%98.mp3', '1657', '2018-12-16 09:26:40', '0', '1', '', '2018-12-17 09:26:47', '0', '0', '');
INSERT INTO `article_info` VALUES ('7075', '', '你的信救了你', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2018/20181223_%E4%BD%A0%E7%9A%84%E4%BF%A1%E6%95%91%E4%BA%86%E4%BD%A0.mp3', '1657', '2018-12-23 20:45:04', '0', '1', '', '2018-12-23 20:46:43', '0', '0', '');
INSERT INTO `article_info` VALUES ('7076', '', '出去传福音，勇敢建教会', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190106_%E5%87%BA%E5%8E%BB%E4%BC%A0%E7%A6%8F%E9%9F%B3%EF%BC%8C%E5%8B%87%E6%95%A2%E5%BB%BA%E6%95%99%E4%BC%9A.mp3', '1668', '2019-01-06 19:22:11', '0', '1', '', '2019-01-06 19:22:15', '0', '5', '');
INSERT INTO `article_info` VALUES ('7077', '', '为主预备道路', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190113.%E4%B8%BA%E4%B8%BB%E9%A2%84%E5%A4%87%E9%81%93%E8%B7%AF.mp3', '1668', '2019-01-13 21:58:52', '0', '1', '', '2019-01-13 21:59:34', '0', '4', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190113.%E4%B8%BA%E4%B8%BB%E9%A2%84%E5%A4%87%E9%81%93%E8%B7%AF.pptx');
INSERT INTO `article_info` VALUES ('7078', '', '苦难与安慰2', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190120.%E8%8B%A6%E9%9A%BE%E4%B8%8E%E5%AE%89%E6%85%B02.mp3', '1668', '2019-01-20 16:33:24', '0', '1', '', '2019-01-20 16:33:28', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190120.%E8%8B%A6%E9%9A%BE%E4%B8%8E%E5%AE%89%E6%85%B02.pptx');
INSERT INTO `article_info` VALUES ('7079', '', '合神心意的计划1', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190127.%E5%90%88%E7%A5%9E%E5%BF%83%E6%84%8F%E7%9A%84%E8%AE%A1%E5%88%921.mp3', '1668', '2019-01-27 11:46:41', '0', '1', '', '2019-01-27 11:46:44', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190127.%E5%90%88%E7%A5%9E%E5%BF%83%E6%84%8F%E7%9A%84%E8%AE%A1%E5%88%921.pptx');
INSERT INTO `article_info` VALUES ('7080', '', '属灵的福气', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190203.%E5%B1%9E%E7%81%B5%E7%9A%84%E7%A6%8F%E6%B0%94.mp3', '1668', '2019-02-03 11:45:53', '0', '1', '', '2019-02-03 11:46:10', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190203.%E5%B1%9E%E7%81%B5%E7%9A%84%E7%A6%8F%E6%B0%94.pptx');
INSERT INTO `article_info` VALUES ('7082', '', '开始你的新生活', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190217_%E5%BC%80%E5%A7%8B%E4%BD%A0%E7%9A%84%E6%96%B0%E7%94%9F%E6%B4%BB.mp3', '1668', '2019-02-17 09:40:49', '0', '1', '', '2019-02-18 09:40:56', '0', '0', '');
INSERT INTO `article_info` VALUES ('7083', '', '上午', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190224.%E4%B8%8A%E5%8D%88.mp3', '1668', '2019-02-24 18:21:27', '0', '1', '', '2019-02-24 18:21:43', '0', '0', '');
INSERT INTO `article_info` VALUES ('7084', '', '下午', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190224.%E4%B8%8B%E5%8D%88.mp3', '1668', '2019-02-24 10:22:29', '0', '1', '', '2019-02-24 18:22:45', '0', '0', '');
INSERT INTO `article_info` VALUES ('7085', '', '先服事主再服事人', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190303.%E5%85%88%E6%9C%8D%E4%BA%8B%E4%B8%BB%E5%86%8D%E6%9C%8D%E4%BA%8B%E4%BA%BA.mp3', '1668', '2019-03-03 16:59:05', '0', '1', '', '2019-03-03 16:59:15', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190303.%E5%85%88%E6%9C%8D%E4%BA%8B%E4%B8%BB%E5%86%8D%E6%9C%8D%E4%BA%8B%E4%BA%BA.pptx');
INSERT INTO `article_info` VALUES ('7086', '', ' ( 一 )', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%888%E5%8F%B7%20%28%20%E4%B8%80%20%29%20.mp3', '1669', '2019-03-08 22:10:39', '0', '1', '', '2019-03-10 22:24:49', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/1.%20%E6%95%99%E6%9C%83%E8%A7%80.pptx');
INSERT INTO `article_info` VALUES ('7087', '', ' ( 二 ) ', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%888%E5%8F%B7%20%28%20%E4%BA%8C%20%29%20.mp3', '1669', '2019-03-08 22:11:21', '0', '1', '', '2019-03-10 22:24:56', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/1.%20%E6%95%99%E6%9C%83%E8%A7%80.pptx');
INSERT INTO `article_info` VALUES ('7088', '', ' ( 三 ) ', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%888%E5%8F%B7%20%28%20%E4%B8%89%20%29%20.mp3', '1669', '2019-03-08 22:13:15', '0', '1', '', '2019-03-10 22:25:03', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/1.%20%E6%95%99%E6%9C%83%E8%A7%80.pptx');
INSERT INTO `article_info` VALUES ('7089', '', ' ( 四 ) ', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%888%E5%8F%B7%20%28%20%E5%9B%9B%20%29%20.mp3', '1669', '2019-03-08 22:14:00', '0', '1', '', '2019-03-10 22:31:16', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/1.%20%E6%95%99%E6%9C%83%E8%A7%80.pptx');
INSERT INTO `article_info` VALUES ('7090', '', ' ( 五 )', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%888%E5%8F%B7%20%28%20%E4%BA%94%20%29%20.mp3', '1669', '2019-03-08 22:14:30', '0', '1', '', '2019-03-10 22:25:14', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/1.%20%E6%95%99%E6%9C%83%E8%A7%80.pptx');
INSERT INTO `article_info` VALUES ('7091', '', ' ( 一 )', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%889%E5%8F%B7%20%28%20%E4%B8%80%20%29%20.mp3', '1669', '2019-03-09 22:15:53', '0', '1', '', '2019-03-10 22:25:22', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2.%20%E9%A0%98%E8%A2%96%E8%A7%80.pptx');
INSERT INTO `article_info` VALUES ('7092', '', ' ( 二 )', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%889%E5%8F%B7%20%28%20%E4%BA%8C%20%29.mp3', '1669', '2019-03-09 22:16:51', '0', '1', '', '2019-03-10 22:25:27', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2.%20%E9%A0%98%E8%A2%96%E8%A7%80.pptx');
INSERT INTO `article_info` VALUES ('7093', '', ' ( 三 )', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%889%E5%8F%B7%20%28%20%E4%B8%89%20%29.mp3', '1669', '2019-03-09 22:17:43', '0', '1', '', '2019-03-10 22:25:32', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2.%20%E9%A0%98%E8%A2%96%E8%A7%80.pptx');
INSERT INTO `article_info` VALUES ('7094', '', ' ( 四 )', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%889%E5%8F%B7%20%28%20%E5%9B%9B%20%29.mp3', '1669', '2019-03-09 22:18:16', '0', '1', '', '2019-03-10 22:25:37', '0', '0', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/4.%20%E6%81%A9%E8%B3%9C%E4%BA%8B%E5%A5%89%E8%B5%B7%E6%AD%A5j.pptx');
INSERT INTO `article_info` VALUES ('7095', '', '到底我們是什麼「徒」', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%8810%E5%8F%B7%20%28%20%E4%B8%80%20%29.mp3', '1669', '2019-03-10 22:19:26', '0', '1', '', '2019-03-10 22:19:37', '0', '1', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/5.%20%E5%88%B0%E5%BA%95%E6%88%91%E5%80%91%E6%98%AF%E4%BB%80%E9%BA%BC%E3%80%8C%E5%BE%92%E3%80%8D.pptx');
INSERT INTO `article_info` VALUES ('7096', '', '跟隨是甚麼', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/3%E6%9C%8810%E5%8F%B7%20%28%20%E4%BA%8C%20%29.mp3', '1669', '2019-03-10 22:20:18', '0', '1', '', '2019-03-10 22:20:22', '0', '3', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B4%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/6.%20%E8%B7%9F%E9%9A%A8%E6%98%AF%E7%94%9A%E9%BA%BC.pptx');
INSERT INTO `article_info` VALUES ('7098', '', '安静在主里', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190317.%E5%AE%89%E9%9D%99%E5%9C%A8%E4%B8%BB%E9%87%8C.mp3', '1668', '2019-03-17 13:08:47', '0', '1', '', '2019-03-17 13:08:50', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190317.%E5%AE%89%E9%9D%99%E5%9C%A8%E4%B8%BB%E9%87%8C.mp3');
INSERT INTO `article_info` VALUES ('7099', '', '与基督同活', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190324.%E4%B8%8E%E5%9F%BA%E7%9D%A3%E5%90%8C%E6%B4%BB.mp3', '1668', '2019-03-24 21:58:43', '0', '1', '', '2019-03-24 21:58:56', '0', '0', '');
INSERT INTO `article_info` VALUES ('7100', '', '跟从的代价', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190331.%E8%B7%9F%E4%BB%8E%E7%9A%84%E4%BB%A3%E4%BB%B7.mp3', '1668', '2019-03-31 21:10:02', '0', '1', '', '2019-03-31 21:10:06', '0', '1', '');
INSERT INTO `article_info` VALUES ('7101', '', '洁净神的殿', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190407.%E6%B4%81%E5%87%80%E7%A5%9E%E7%9A%84%E6%AE%BF.mp3', '1668', '2019-04-07 11:36:42', '0', '1', '', '2019-04-07 11:36:48', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190407.%E6%B4%81%E5%87%80%E7%A5%9E%E7%9A%84%E6%AE%BF.pptx');
INSERT INTO `article_info` VALUES ('7102', '', '跟随主过程中的试炼与试探', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190414_%E8%B7%9F%E9%9A%8F%E4%B8%BB%E8%BF%87%E7%A8%8B%E4%B8%AD%E7%9A%84%E8%AF%95%E7%82%BC%E4%B8%8E%E8%AF%95%E6%8E%A2.mp3', '1668', '2019-04-14 20:09:47', '0', '1', '', '2019-04-14 20:09:51', '0', '0', '');
INSERT INTO `article_info` VALUES ('7103', '', '不要惧怕', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190421%E4%B8%8D%E8%A6%81%E6%83%A7%E6%80%95.mp3', '1668', '2019-04-21 17:41:27', '0', '1', '', '2019-04-22 17:41:34', '0', '0', '');
INSERT INTO `article_info` VALUES ('7104', '', '侍奉与服侍 (一)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D/20190427%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D1.mp3', '1668', '2019-04-27 19:12:19', '0', '1', '', '2019-04-27 19:16:11', '0', '26', ' ');
INSERT INTO `article_info` VALUES ('7105', '', '侍奉与服侍 (二)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D/20190427%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D2.mp3', '1668', '2019-04-27 19:13:16', '0', '1', '', '2019-04-27 19:16:19', '0', '18', '');
INSERT INTO `article_info` VALUES ('7106', '', '20190426.医治祷告会', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2018%E5%8C%BB%E6%B2%BB%E5%B8%83%E9%81%93%E4%BC%9A/20190426.%E5%8C%BB%E6%B2%BB%E7%A5%B7%E5%91%8A%E4%BC%9A.mp3', '1666', '2019-04-26 16:30:19', '0', '1', '', '2019-04-29 16:30:28', '0', '4', '');
INSERT INTO `article_info` VALUES ('7107', '', '侍奉与服侍 (三)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D/20190430.%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D%E5%A5%893.lite.mp3', '1668', '2019-04-30 18:04:36', '0', '1', '', '2019-05-02 18:04:50', '0', '42', '');
INSERT INTO `article_info` VALUES ('7108', '', '侍奉与服侍 (四)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D/20190501.%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D%E5%A5%894.lite.mp3', '1668', '2019-05-02 18:05:27', '0', '1', '', '2019-05-02 18:05:35', '0', '29', '');
INSERT INTO `article_info` VALUES ('7109', '', '侍奉与服侍 (五)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D/20190501.%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D%E5%A5%895.lite.mp3', '1668', '2019-05-02 18:06:10', '0', '1', '', '2019-05-02 18:06:19', '0', '48', '');
INSERT INTO `article_info` VALUES ('7110', '', '侍奉与服侍 (六)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D/20190501.%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D%E5%A5%896.lite.mp3', '1668', '2019-05-02 18:06:43', '0', '1', '', '2019-05-02 18:06:54', '0', '5', '');
INSERT INTO `article_info` VALUES ('7111', '', '侍奉与服侍 (七)', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D/20190501.%E4%BE%8D%E5%A5%89%E4%B8%8E%E6%9C%8D%E4%BE%8D%E5%A5%897.lite.mp3', '1668', '2019-05-02 18:07:16', '0', '1', '', '2019-05-02 18:07:25', '0', '23', '');
INSERT INTO `article_info` VALUES ('7112', '', '长大成熟', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190504.%E9%95%BF%E5%A4%A7%E6%88%90%E7%86%9F.mp3', '1668', '2019-05-04 17:25:02', '0', '1', '', '2019-05-04 17:25:06', '0', '0', '');
INSERT INTO `article_info` VALUES ('7113', '', '第一讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190516%20%E7%AC%AC%E4%B8%80%E5%A0%82.mp3', '1671', '2019-05-16 12:46:18', '0', '1', '', '2019-05-20 15:27:43', '0', '27', '');
INSERT INTO `article_info` VALUES ('7114', '', '不要效法世界', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190519.%E4%B8%8D%E8%A6%81%E6%95%88%E6%B3%95%E4%B8%96%E7%95%8C.mp3', '1668', '2019-05-19 21:47:09', '0', '1', '', '2019-05-19 21:47:13', '0', '0', '');
INSERT INTO `article_info` VALUES ('7115', '', '第二讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190516%20%E7%AC%AC%E4%BA%8C%E5%A0%82.mp3', '1671', '2019-05-20 15:22:49', '0', '1', '', '2019-05-20 22:54:15', '0', '48', '');
INSERT INTO `article_info` VALUES ('7116', '', '第三讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190516%20%E7%AC%AC%E4%B8%89%E5%A0%82.mp3', '1671', '2019-05-20 15:23:22', '0', '1', '', '2019-05-20 22:54:23', '0', '42', ' ');
INSERT INTO `article_info` VALUES ('7117', '', '第四讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190516%20%E7%AC%AC%E5%9B%9B%E5%A0%82.mp3', '1671', '2019-05-20 15:24:11', '0', '1', '', '2019-05-20 22:54:35', '0', '15', '');
INSERT INTO `article_info` VALUES ('7118', '', '第五讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190516%20%E7%AC%AC%E4%BA%94%E5%A0%82.mp3', '1671', '2019-05-20 15:24:25', '0', '1', '', '2019-05-20 22:54:41', '0', '15', '');
INSERT INTO `article_info` VALUES ('7119', '', '第六讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190516%20%E7%AC%AC%E5%85%AD%E5%A0%82.mp3', '1671', '2019-05-20 15:25:16', '0', '1', '', '2019-05-20 22:55:00', '0', '53', '');
INSERT INTO `article_info` VALUES ('7120', '', '第七讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190517%20%E7%AC%AC%E4%B8%83%E5%A0%82.mp3', '1671', '2019-05-20 15:25:43', '0', '1', '', '2019-05-20 22:55:06', '0', '15', '');
INSERT INTO `article_info` VALUES ('7121', '', '第八讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190517%20%E7%AC%AC%E5%85%AB%E5%A0%82.mp3', '1671', '2019-05-20 15:26:20', '0', '1', '', '2019-05-20 22:55:13', '0', '13', '');
INSERT INTO `article_info` VALUES ('7122', '', ' 第九讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190517%20%E7%AC%AC%E4%B9%9D%E5%A0%82.mp3', '1671', '2019-05-20 15:26:44', '0', '1', '', '2019-05-20 22:55:25', '0', '7', '');
INSERT INTO `article_info` VALUES ('7123', '', '第十讲', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%9C%A3%E7%BB%8F%E5%88%9B%E4%B8%9A/20190517%20%E7%AC%AC%E5%8D%81%E5%A0%82.mp3', '1671', '2019-05-20 15:27:11', '0', '1', '', '2019-05-20 22:55:35', '0', '24', '');
INSERT INTO `article_info` VALUES ('7124', '', '尽忠谨守', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190526.%E5%B0%BD%E5%BF%A0%E8%B0%A8%E5%AE%88.mp3', '1668', '2019-05-26 17:33:46', '0', '1', '', '2019-05-30 09:18:46', '0', '0', '');
INSERT INTO `article_info` VALUES ('7125', '', '参孙的失败与救赎', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190602%E5%8F%82%E5%AD%99%E7%9A%84%E5%A4%B1%E8%B4%A5%E4%B8%8E%E6%95%91%E8%B5%8E.mp3', '1668', '2019-06-02 19:59:15', '0', '1', '', '2019-06-02 19:59:18', '0', '2', '');
INSERT INTO `article_info` VALUES ('7126', '', '约', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190619.%E5%AE%88%E7%BA%A6.mp3', '1668', '2019-06-09 17:08:10', '0', '1', '', '2019-06-09 17:08:13', '0', '5', '');
INSERT INTO `article_info` VALUES ('7127', '', '弟兄姐妹呀 你要听', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190623%20%E5%BC%9F%E5%85%84%E5%A7%90%E5%A6%B9%E5%91%80%20%E4%BD%A0%E8%A6%81%E5%90%AC.mp3', '1668', '2019-06-23 21:51:40', '0', '1', '', '2019-06-23 21:51:44', '0', '0', '');
INSERT INTO `article_info` VALUES ('7128', '', '真理vs谎言', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190630.%E7%9C%9F%E7%90%86vs%20%E8%B0%8E%E8%A8%80.mp3', '1668', '2019-06-30 21:27:38', '0', '1', '', '2019-06-30 21:27:41', '0', '5', '');
INSERT INTO `article_info` VALUES ('7129', '', '牧者与羊群(二)', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190707.%E7%89%A7%E8%80%85%E4%B8%8E%E7%BE%8A%E7%BE%A4.mp3', '1668', '2019-07-08 08:04:54', '0', '1', '', '2019-07-08 08:06:17', '0', '2', '');
INSERT INTO `article_info` VALUES ('7130', '', '牧者与羊群(一)', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190707.%E7%89%A7%E8%80%85%E4%B8%8E%E7%BE%8A%E7%BE%A4%28%E4%B8%80%29.mp3', '1668', '2019-07-08 08:07:49', '0', '1', '', '2019-07-08 08:07:53', '0', '1', '');
INSERT INTO `article_info` VALUES ('7131', '', '感谢与安息', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190724%E6%84%9F%E8%B0%A2%E4%B8%8E%E5%AE%89%E6%81%AF.mp3', '1668', '2019-07-14 16:44:12', '0', '1', '', '2019-07-14 16:44:19', '0', '0', '');
INSERT INTO `article_info` VALUES ('7132', '', '如何探测圣灵恩赐', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B47%E6%9C%88/20190727.%E5%A6%82%E4%BD%95%E6%8E%A2%E6%B5%8B%E5%9C%A3%E7%81%B5%E6%81%A9%E8%B5%90.mp3', '1672', '2019-07-27 16:46:55', '0', '1', '', '2019-07-27 16:50:06', '0', '0', ' ');
INSERT INTO `article_info` VALUES ('7133', '', '与主建立亲密关系', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B47%E6%9C%88/20190727.%E4%B8%8E%E4%B8%BB%E5%BB%BA%E7%AB%8B%E4%BA%B2%E5%AF%86%E5%85%B3%E7%B3%BB.mp3', '1672', '2019-07-27 02:48:19', '0', '1', '', '2019-07-27 16:54:16', '0', '0', '');
INSERT INTO `article_info` VALUES ('7134', '', '小组长培训', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B47%E6%9C%88/20190727%20%E5%B0%8F%E7%BB%84%E9%95%BF%E5%9F%B9%E8%AE%AD.mp3', '1672', '2019-07-27 16:49:06', '0', '1', '', '2019-07-27 16:49:09', '0', '0', '');
INSERT INTO `article_info` VALUES ('7135', '', '圣灵的恩赐', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2019%E5%B9%B47%E6%9C%88/20190727.%E5%9C%A3%E7%81%B5%E7%9A%84%E6%81%A9%E8%B5%90.mp3', '1672', '2019-07-27 10:50:51', '0', '1', '', '2019-07-27 16:51:01', '0', '0', '');
INSERT INTO `article_info` VALUES ('7136', '', '跟耶稣学祷告', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190728.%E8%B7%9F%E8%80%B6%E7%A8%A3%E5%AD%A6%E7%A5%B7%E5%91%8A.mp3', '1668', '2019-07-28 22:32:49', '0', '1', '', '2019-07-28 22:33:09', '0', '9', '');
INSERT INTO `article_info` VALUES ('7137', '', '免我们的债?这是什么债?', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190804.%E5%85%8D%E6%88%91%E4%BB%AC%E7%9A%84%E5%80%BA%3F%E8%BF%99%E6%98%AF%E4%BB%80%E4%B9%88%E5%80%BA%3F.mp3', '1668', '2019-08-04 19:54:21', '0', '1', '', '2019-08-06 18:20:08', '0', '2', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190804.%E5%85%8D%E6%88%91%E4%BB%AC%E7%9A%84%E5%80%BA%3F%E8%BF%99%E6%98%AF%E4%BB%80%E4%B9%88%E5%80%BA%3F.pptx');
INSERT INTO `article_info` VALUES ('7138', '', '惊醒的勇士', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190811.%E6%83%8A%E9%86%92%E7%9A%84%E5%8B%87%E5%A3%AB.mp3', '1668', '2019-08-12 18:18:33', '0', '1', '', '2019-08-12 18:18:36', '0', '0', '');
INSERT INTO `article_info` VALUES ('7139', '', '建造要警醒', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/200818%E5%BB%BA%E9%80%A0%E8%A6%81%E8%AD%A6%E9%86%92.mp3', '1668', '2019-08-18 17:30:31', '0', '1', '', '2019-08-18 17:30:43', '0', '0', '');
INSERT INTO `article_info` VALUES ('7140', '', '合神心意的选择', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190825%E5%92%8C%E7%A5%9E%E5%BF%83%E6%84%8F%E7%9A%84%E9%80%89%E6%8B%A9.mp3', '1668', '2019-08-25 17:24:32', '0', '1', '', '2019-08-25 17:24:34', '0', '1', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190825%E5%92%8C%E7%A5%9E%E5%BF%83%E6%84%8F%E7%9A%84%E9%80%89%E6%8B%A9.ppt');
INSERT INTO `article_info` VALUES ('7141', '', '立石为记', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190902.%E7%AB%8B%E7%9F%B3%E4%B8%BA%E8%AE%B0.mp3', '1668', '2019-09-03 12:28:39', '0', '1', '', '2019-09-03 12:28:43', '0', '3', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190902.%E7%AB%8B%E7%9F%B3%E4%B8%BA%E8%AE%B0.pptx');
INSERT INTO `article_info` VALUES ('7142', '', '耶稣的医治和释放之侍奉', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190915.%E8%80%B6%E7%A8%A3%E7%9A%84%E5%8C%BB%E6%B2%BB%E5%92%8C%E9%87%8A%E6%94%BE%E4%B9%8B%E4%BE%8D%E5%A5%89.mp3', '1668', '2019-09-15 12:20:19', '0', '1', '', '2019-09-15 12:20:22', '0', '1', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190915.%E8%80%B6%E7%A8%A3%E7%9A%84%E5%8C%BB%E6%B2%BB%E5%92%8C%E9%87%8A%E6%94%BE%E4%B9%8B%E4%BE%8D%E5%A5%89.ppt');
INSERT INTO `article_info` VALUES ('7143', '', '效法神饶恕人', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/190922%E6%95%88%E6%B3%95%E7%A5%9E%E9%A5%B6%E6%81%95%E4%BA%BA.mp3', '1668', '2019-09-23 16:11:00', '0', '1', '', '2019-09-23 16:11:16', '0', '0', '');
INSERT INTO `article_info` VALUES ('7144', '', '不冷不热的信徒', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190928%E4%B8%8D%E5%86%B7%E4%B8%8D%E7%83%AD%E7%9A%84%E4%BF%A1%E5%BE%92.mp3', '1668', '2019-09-28 18:19:08', '0', '1', '', '2019-09-28 18:19:13', '0', '5', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20190928%E4%B8%8D%E5%86%B7%E4%B8%8D%E7%83%AD%E7%9A%84%E4%BF%A1%E5%BE%92.ppt');
INSERT INTO `article_info` VALUES ('7145', '', '方舟-拯救之舟', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191006%E6%96%B9%E8%88%9F-%E6%8B%AF%E6%95%91%E4%B9%8B%E8%88%9F.mp3', '1668', '2019-10-06 21:07:57', '0', '1', '', '2019-10-06 21:10:36', '0', '4', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191006%E6%96%B9%E8%88%9F-%E6%8B%AF%E6%95%91%E4%B9%8B%E8%88%9F.pptx');
INSERT INTO `article_info` VALUES ('7146', '', '义人因信得生', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191013.%E4%B9%89%E4%BA%BA%E5%9B%A0%E4%BF%A1%E5%BE%97%E7%94%9F.mp3', '1668', '2019-10-14 09:21:39', '0', '1', '', '2019-10-14 09:23:02', '0', '0', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191013.%E4%B9%89%E4%BA%BA%E5%9B%A0%E4%BF%A1%E5%BE%97%E7%94%9F.ppt');
INSERT INTO `article_info` VALUES ('7147', '', '更新里面的爱', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191020.%E6%9B%B4%E6%96%B0%E9%87%8C%E9%9D%A2%E7%9A%84%E7%88%B1.mp3', '1668', '2019-10-21 20:28:33', '0', '1', '', '2019-10-21 20:28:36', '0', '2', '');
INSERT INTO `article_info` VALUES ('7148', '', '在爱中带门徒', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191020.%E5%9C%A8%E7%88%B1%E4%B8%AD%E5%B8%A6%E9%97%A8%E5%BE%92.mp3', '1668', '2019-10-21 20:29:27', '0', '1', '', '2019-10-21 20:29:30', '0', '0', '');
INSERT INTO `article_info` VALUES ('7149', '', '火热的心', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191027.%E7%81%AB%E7%83%AD%E7%9A%84%E5%BF%83.mp3', '1668', '2019-10-27 20:29:33', '0', '1', '', '2019-10-27 20:29:44', '0', '11', '');
INSERT INTO `article_info` VALUES ('7150', '', '你们要彼此相爱', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191103.%E4%BD%A0%E4%BB%AC%E8%A6%81%E5%BD%BC%E6%AD%A4%E7%9B%B8%E7%88%B1.mp3', '1668', '2019-11-03 17:12:40', '0', '1', '', '2019-11-03 17:12:47', '0', '3', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191103.%E4%BD%A0%E4%BB%AC%E8%A6%81%E5%BD%BC%E6%AD%A4%E7%9B%B8%E7%88%B1.pptx');
INSERT INTO `article_info` VALUES ('7151', '', '不要怕只要信', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191110_%E4%B8%8D%E8%A6%81%E6%80%95%E5%8F%AA%E8%A6%81%E4%BF%A1.mp3', '1668', '2019-11-11 20:57:21', '0', '1', '', '2019-11-11 20:57:23', '0', '5', '');
INSERT INTO `article_info` VALUES ('7152', '', '面对诱惑', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191117%E9%9D%A2%E5%AF%B9%E8%AF%B1%E6%83%91.mp3', '1668', '2019-11-17 18:11:02', '0', '1', '', '2019-11-17 18:11:09', '0', '8', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191117%E9%9D%A2%E5%AF%B9%E8%AF%B1%E6%83%91.ppt');
INSERT INTO `article_info` VALUES ('7153', '', '以基督的心为心', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191124.%E4%BB%A5%E5%9F%BA%E7%9D%A3%E7%9A%84%E5%BF%83%E4%B8%BA%E5%BF%83.mp3', '1668', '2019-11-24 17:38:31', '0', '1', '', '2019-11-24 17:38:38', '0', '3', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/%E4%BB%A5%E5%9F%BA%E7%9D%A3%E7%9A%84%E5%BF%83%E4%B8%BA%E5%BF%83.pptx');
INSERT INTO `article_info` VALUES ('7154', '', '圣诞的破坏者', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191201.%E5%9C%A3%E8%AF%9E%E7%9A%84%E7%A0%B4%E5%9D%8F%E8%80%85.mp3', '1668', '2019-12-01 17:45:36', '0', '1', '', '2019-12-01 17:45:39', '0', '3', '');
INSERT INTO `article_info` VALUES ('7155', '', '真诚的敬拜者', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/201912081.mp3', '1668', '2019-12-08 22:32:26', '0', '1', '', '2019-12-08 22:34:43', '0', '4', '');
INSERT INTO `article_info` VALUES ('7156', '', '拿俄米的归回', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191215.%E6%8B%BF%E4%BF%84%E7%B1%B3%E7%9A%84%E5%BD%92%E5%9B%9E.mp3', '1668', '2019-12-16 08:05:55', '0', '1', '', '2019-12-16 08:05:59', '0', '12', '');
INSERT INTO `article_info` VALUES ('7157', '', '基督与律法', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191222%20%E5%9F%BA%E7%9D%A3%E4%B8%8E%E5%BE%8B%E6%B3%95.mp3', '1668', '2019-12-22 16:48:52', '0', '1', '', '2019-12-22 16:49:25', '0', '10', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191222%20%E5%9F%BA%E7%9D%A3%E4%B8%8E%E5%BE%8B%E6%B3%95.pptx');
INSERT INTO `article_info` VALUES ('7158', '', '忙碌的基督徒', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191229%E5%BF%99%E7%A2%8C%E7%9A%84%E5%9F%BA%E7%9D%A3%E5%BE%92.mp3', '1668', '2019-12-29 16:46:22', '0', '1', '', '2019-12-29 16:46:30', '0', '23', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2019/20191229%E5%BF%99%E7%A2%8C%E7%9A%84%E5%9F%BA%E7%9D%A3%E5%BE%92.ppt');
INSERT INTO `article_info` VALUES ('7159', '', '讲道', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200105_%E8%AE%B2%E9%81%93.mp3', '1673', '2020-01-05 22:27:35', '0', '1', '', '2020-01-05 22:27:38', '0', '13', '');
INSERT INTO `article_info` VALUES ('7160', '', '单独会主--个人读经', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/200112.%E5%8D%95%E7%8B%AC%E4%BC%9A%E4%B8%BB--%E4%B8%AA%E4%BA%BA%E8%AF%BB%E7%BB%8F.mp3', '1673', '2020-01-12 16:49:13', '0', '1', '', '2020-01-12 16:49:21', '0', '13', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200112%E5%8D%95%E7%8B%AC%E4%BC%9A%E4%B8%BB--%E4%B8%AA%E4%BA%BA%E8%AF%BB%E7%BB%8F.pptx');
INSERT INTO `article_info` VALUES ('7161', '', '敬拜神', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/200118.%E6%95%AC%E6%8B%9C%E7%A5%9E.mp3', '1673', '2020-01-19 21:32:51', '0', '1', '', '2020-01-19 21:32:57', '0', '14', '');
INSERT INTO `article_info` VALUES ('7162', '', '单单敬拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200125.%20%E5%8D%95%E5%8D%95%E6%95%AC%E6%8B%9C.mp4', '1674', '2020-01-25 19:17:04', '0', '1', '', '2020-01-25 19:17:07', '0', '77', '');
INSERT INTO `article_info` VALUES ('7163', '', '呼求怜悯', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200125.%20%E5%91%BC%E6%B1%82%E6%80%9C%E6%82%AF.mp4', '1674', '2020-01-25 20:34:33', '0', '1', '', '2020-01-25 20:34:37', '0', '181', '');
INSERT INTO `article_info` VALUES ('7164', '', '医治这地', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200125.%20%E5%8C%BB%E6%B2%BB%E8%BF%99%E5%9C%B0.mp4', '1674', '2020-01-25 20:41:34', '0', '1', '', '2020-01-25 20:41:39', '0', '99', '');
INSERT INTO `article_info` VALUES ('7165', '', '新型冠状病毒可怕吗?', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200125.%E6%96%B0%E5%9E%8B%E5%86%A0%E7%8A%B6%E7%97%85%E6%AF%92%E5%8F%AF%E6%80%95%E5%90%97.mp4', '1673', '2020-01-25 22:53:15', '0', '1', '', '2020-01-25 22:53:20', '0', '341', '');
INSERT INTO `article_info` VALUES ('7166', '', '2月9日主日崇拜聚会', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200209.%E4%B8%BB%E6%97%A5%E8%81%9A%E4%BC%9A.mp4', '1673', '2020-02-09 08:33:56', '0', '1', '', '2020-02-09 08:34:02', '0', '203', '');
INSERT INTO `article_info` VALUES ('7171', '', '0-2岁聚会视频', 'http://v.hmrzj.cn/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E5%AD%A6%E8%81%9A%E4%BC%9A%E8%A7%86%E9%A2%91/TalkLine_202002151004261.mp4', '1676', '2020-02-15 18:11:04', '0', '1', '', '2020-02-15 18:11:15', '0', '0', '');
INSERT INTO `article_info` VALUES ('7172', '', '3-4岁聚会视频', 'http://v.hmrzj.cn/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E5%AD%A6%E8%81%9A%E4%BC%9A%E8%A7%86%E9%A2%91/TalkLine_20200215103104.mp4', '1676', '2020-02-15 18:12:47', '0', '1', '', '2020-02-15 18:12:51', '0', '0', '');
INSERT INTO `article_info` VALUES ('7173', '', '10-12岁聚会视频', 'http://v.hmrzj.cn/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E5%AD%A6%E8%81%9A%E4%BC%9A%E8%A7%86%E9%A2%91/TalkLine_20200215113403.mp4', '1676', '2020-02-15 18:14:26', '0', '1', '', '2020-02-15 18:14:57', '0', '0', '');
INSERT INTO `article_info` VALUES ('7174', '', '5-9岁聚会视频', 'http://v.hmrzj.cn/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E5%AD%A6%E8%81%9A%E4%BC%9A%E8%A7%86%E9%A2%91/TalkLine_20200215150616.mp4', '1676', '2020-02-15 18:15:58', '0', '1', '', '2020-02-15 18:16:02', '0', '0', '');
INSERT INTO `article_info` VALUES ('7175', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200215_%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-02-16 09:31:32', '0', '1', '', '2020-02-16 09:31:38', '0', '249', '');
INSERT INTO `article_info` VALUES ('7176', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200223.%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-02-21 10:37:04', '0', '1', '', '2020-02-21 10:37:20', '0', '215', '');
INSERT INTO `article_info` VALUES ('7177', '', '5-9岁聚会视频', 'http://v.hmrzj.cn//%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E5%AD%A6%E8%81%9A%E4%BC%9A%E8%A7%86%E9%A2%91/TalkLine_20200222150306.mp4', '1676', '2020-02-22 17:29:46', '0', '1', '', '2020-02-22 17:32:35', '0', '0', '');
INSERT INTO `article_info` VALUES ('7178', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200301.%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-02-29 17:31:35', '0', '1', '', '2020-02-29 17:31:42', '0', '209', '');
INSERT INTO `article_info` VALUES ('7179', '', '2020年3月8日', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B43%E6%9C%888%E5%8F%B7%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-03-08 15:07:05', '0', '1', '', '2020-03-06 15:07:13', '0', '152', '');
INSERT INTO `article_info` VALUES ('7180', '', '3月15日主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20203%E6%9C%8815%E5%8F%B7%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-03-14 21:03:34', '0', '1', '', '2020-03-14 21:03:46', '0', '168', '');
INSERT INTO `article_info` VALUES ('7181', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B43%E6%9C%8822%E5%8F%B7.mp4', '1673', '2020-03-22 20:03:02', '0', '1', '', '2020-03-21 20:03:08', '0', '146', '');
INSERT INTO `article_info` VALUES ('7182', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B43%E6%9C%8829%E6%97%A5%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-03-29 13:14:22', '0', '1', '', '2020-03-28 13:14:30', '0', '220', '');
INSERT INTO `article_info` VALUES ('7183', '', '4月5日主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B44%E6%9C%885%E6%97%A5.mp4', '1673', '2020-04-04 23:02:15', '0', '1', '', '2020-04-04 23:02:19', '0', '174', '');
INSERT INTO `article_info` VALUES ('7184', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B44%E6%9C%8812%E6%97%A5.mp4', '1673', '2020-04-11 23:41:34', '0', '1', '', '2020-04-11 23:53:59', '0', '130', '');
INSERT INTO `article_info` VALUES ('7185', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B44%E6%9C%8819%E6%97%A5.mp4', '1673', '2020-04-19 14:35:05', '0', '1', '', '2020-04-18 14:35:25', '0', '159', '');
INSERT INTO `article_info` VALUES ('7186', '', '01', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/01.mp3', '1677', '2020-04-20 09:28:19', '0', '1', '', '2020-04-20 09:30:29', '0', '25', '');
INSERT INTO `article_info` VALUES ('7187', '', '02', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/02.mp3', '1677', '2020-04-20 09:30:57', '0', '1', '', '2020-04-20 09:31:01', '0', '7', '');
INSERT INTO `article_info` VALUES ('7188', '', '03', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/03.mp3', '1677', '2020-04-20 09:31:25', '0', '1', '', '2020-04-20 09:31:33', '0', '6', '');
INSERT INTO `article_info` VALUES ('7189', '', '04', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/04.mp3', '1677', '2020-04-20 09:31:56', '0', '1', '', '2020-04-20 09:32:02', '0', '6', '');
INSERT INTO `article_info` VALUES ('7190', '', '05', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/05.mp3', '1677', '2020-04-20 09:33:07', '0', '1', '', '2020-04-20 09:33:14', '0', '2', '');
INSERT INTO `article_info` VALUES ('7191', '', '06', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/06.mp3', '1677', '2020-04-20 09:33:08', '0', '1', '', '2020-04-20 09:30:29', '0', '7', '');
INSERT INTO `article_info` VALUES ('7192', '', '07', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/07.mp3', '1677', '2020-04-20 09:33:09', '0', '1', '', '2020-04-20 09:31:01', '0', '6', '');
INSERT INTO `article_info` VALUES ('7193', '', '08', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/08.mp3', '1677', '2020-04-20 09:33:10', '0', '1', '', '2020-04-20 09:31:33', '0', '4', '');
INSERT INTO `article_info` VALUES ('7194', '', '09', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/09.mp3', '1677', '2020-04-20 09:33:11', '0', '1', '', '2020-04-20 09:32:02', '0', '5', '');
INSERT INTO `article_info` VALUES ('7195', '', '10', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/10.mp3', '1677', '2020-04-20 09:33:12', '0', '1', '', '2020-04-20 09:33:14', '0', '4', '');
INSERT INTO `article_info` VALUES ('7196', '', '11', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/11.mp3', '1677', '2020-04-20 09:33:13', '0', '1', '', '2020-04-20 09:32:02', '0', '3', '');
INSERT INTO `article_info` VALUES ('7197', '', '12', 'http://v.hmrzj.cn/%E4%B8%B4%E6%97%B6/%E5%BE%97%E8%87%AA%E7%94%B1/12.mp3', '1677', '2020-04-20 09:33:14', '0', '1', '', '2020-04-20 09:33:14', '0', '4', '');
INSERT INTO `article_info` VALUES ('7198', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/4%E6%9C%8825%E6%97%A5%20%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-04-24 22:28:58', '0', '1', '', '2020-04-24 22:29:02', '0', '141', '');
INSERT INTO `article_info` VALUES ('7199', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200503%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-05-02 23:40:42', '0', '1', '', '2020-05-02 23:40:46', '0', '223', '');
INSERT INTO `article_info` VALUES ('7200', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B45%E6%9C%8810%E6%97%A5.mp4', '1673', '2020-05-10 15:10:26', '0', '1', '', '2020-05-09 15:10:33', '0', '147', '');
INSERT INTO `article_info` VALUES ('7201', '', '第1课小组的功能与运作（视频）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2020%E5%B0%8F%E7%BB%84%E7%89%A7%E5%85%BB%E8%AE%B2%E5%9D%9B/%E7%BB%86%E8%83%9E%E5%B0%8F%E7%BB%84%E7%9A%84%E5%8A%9F%E8%83%BD-%E7%BD%97%E8%80%81%E5%B8%88.mp4', '1678', '2020-05-08 21:00:00', '0', '1', '', '2020-05-10 00:07:13', '0', '18', '');
INSERT INTO `article_info` VALUES ('7202', '', '第1课小组的功能与运作（音频）', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2020%E5%B0%8F%E7%BB%84%E7%89%A7%E5%85%BB%E8%AE%B2%E5%9D%9B/%E7%BB%86%E8%83%9E%E5%B0%8F%E7%BB%84%E7%9A%84%E5%8A%9F%E8%83%BD-%E7%BD%97%E8%80%81%E5%B8%88.m4a', '1678', '2020-05-08 21:00:00', '0', '1', '', '2020-05-11 14:14:04', '0', '9', 'http://v.hmrzj.cn/%E7%89%B9%E5%88%AB%E5%9F%B9%E8%AE%AD/2020%E5%B0%8F%E7%BB%84%E7%89%A7%E5%85%BB%E8%AE%B2%E5%9D%9B/%E7%BB%86%E8%83%9E%E5%B0%8F%E7%BB%84%E7%9A%84%E5%8A%9F%E8%83%BD-%E7%BD%97%E8%80%81%E5%B8%88.pptx');
INSERT INTO `article_info` VALUES ('7203', '', '主日敬拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200517%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C_1.mp4', '1673', '2020-05-17 00:19:16', '0', '1', '', '2020-05-17 01:46:09', '0', '139', '');
INSERT INTO `article_info` VALUES ('7204', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200523%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-05-23 23:17:55', '0', '1', '', '2020-05-23 23:18:02', '0', '151', '');
INSERT INTO `article_info` VALUES ('7205', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200531%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-05-31 03:14:55', '0', '1', '', '2020-05-31 03:14:58', '0', '100', '');
INSERT INTO `article_info` VALUES ('7206', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200607%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-06-06 20:24:00', '0', '1', '', '2020-06-06 20:24:05', '0', '88', '');
INSERT INTO `article_info` VALUES ('7207', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200614%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-06-13 23:16:42', '0', '1', '', '2020-06-13 23:16:46', '0', '133', '');
INSERT INTO `article_info` VALUES ('7208', '', '2020年6月21日主日聚会(720x486)', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200621%E4%B8%BB%E6%97%A5%E8%81%9A%E4%BC%9A.mp4', '1673', '2020-06-21 00:44:45', '0', '1', '', '2020-06-21 00:47:32', '0', '15', '');
INSERT INTO `article_info` VALUES ('7209', '', '2020年6月21日主日聚会', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B46%E6%9C%8821%E6%97%A5%E4%B8%BB%E6%97%A5%E8%81%9A%E4%BC%9A.mp4', '1673', '2020-06-21 00:57:01', '0', '1', '', '2020-06-21 01:51:28', '0', '99', '');
INSERT INTO `article_info` VALUES ('7210', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200627.mp4', '1673', '2020-06-26 20:29:20', '0', '1', '', '2020-06-26 20:29:24', '0', '117', '');
INSERT INTO `article_info` VALUES ('7211', '', '2020年7月5日主日聚会', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200705afternoon.mp4', '1673', '2020-07-05 17:00:00', '0', '1', '', '2020-07-12 16:28:36', '0', '12', '');
INSERT INTO `article_info` VALUES ('7212', '', '2020年7月12日主日聚会', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200712%E4%B8%BB%E6%97%A5%E8%81%9A%E4%BC%9A%E4%B8%8B%E5%8D%88%E5%A0%82.mp4', '1673', '2020-07-12 16:29:36', '0', '1', '', '2020-07-12 16:45:43', '0', '87', '');
INSERT INTO `article_info` VALUES ('7213', '', '周六上午崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200718.mp4', '1673', '2020-07-18 15:50:33', '0', '1', '', '2020-07-18 15:50:39', '0', '169', '');
INSERT INTO `article_info` VALUES ('7214', '', '20200719上午崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200719%E4%B8%BB%E6%97%A5%E8%81%9A%E4%BC%9Aa.mp4', '1673', '2020-07-19 11:16:15', '0', '1', '', '2020-07-20 11:17:12', '0', '78', '');
INSERT INTO `article_info` VALUES ('7215', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200726.mp4', '1673', '2020-07-26 17:25:44', '0', '1', '', '2020-07-26 17:26:06', '0', '97', '');
INSERT INTO `article_info` VALUES ('7216', '', '周六崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200725.mp4', '1673', '2020-07-25 15:51:04', '0', '1', '', '2020-07-28 09:55:54', '0', '37', '');
INSERT INTO `article_info` VALUES ('7217', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200802.mp4', '1673', '2020-08-02 17:37:18', '0', '1', '', '2020-08-02 17:37:22', '0', '93', '');
INSERT INTO `article_info` VALUES ('7218', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200801%20%E5%91%A8%E5%85%AD%E4%B8%BB%E6%97%A5%E5%B4%87%E6%8B%9C.mp4', '1673', '2020-08-01 07:40:26', '0', '1', '', '2020-08-03 07:40:34', '0', '54', '');
INSERT INTO `article_info` VALUES ('7219', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200809.mp4', '1673', '2020-08-09 23:21:37', '0', '1', '', '2020-08-09 23:21:41', '0', '131', '');
INSERT INTO `article_info` VALUES ('7220', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/202008\'.16.mp4', '1673', '2020-08-16 17:40:00', '0', '1', '', '2020-08-16 17:40:06', '0', '101', '');
INSERT INTO `article_info` VALUES ('7221', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200823.mp4', '1673', '2020-08-23 18:11:09', '0', '1', '', '2020-08-23 18:11:11', '0', '114', '');
INSERT INTO `article_info` VALUES ('7222', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200830.mp4', '1673', '2020-08-30 17:46:04', '0', '1', '', '2020-08-30 17:46:08', '0', '101', '');
INSERT INTO `article_info` VALUES ('7223', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200906.mp4', '1673', '2020-09-06 17:34:08', '0', '1', '', '2020-09-06 17:34:12', '0', '189', '');
INSERT INTO `article_info` VALUES ('7224', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200913.mp4', '1673', '2020-09-13 17:56:39', '0', '1', '', '2020-09-13 17:56:44', '0', '183', '');
INSERT INTO `article_info` VALUES ('7225', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200920.mp4', '1673', '2020-09-20 17:00:34', '0', '1', '', '2020-09-20 17:00:37', '0', '124', '');
INSERT INTO `article_info` VALUES ('7226', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20200926.mp4', '1673', '2020-09-26 17:49:21', '0', '1', '', '2020-09-26 17:49:25', '0', '333', '');
INSERT INTO `article_info` VALUES ('7227', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B41004.mp4', '1673', '2020-10-04 17:52:08', '0', '1', '', '2020-10-04 17:52:13', '0', '141', '');
INSERT INTO `article_info` VALUES ('7228', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B410%E6%9C%8811%E6%97%A5.mp4', '1673', '2020-10-11 17:36:56', '0', '1', '', '2020-10-11 17:38:40', '0', '182', '');
INSERT INTO `article_info` VALUES ('7230', '郑田利', '如何被圣灵充满', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/100/100-%E5%A6%82%E4%BD%95%E8%A2%AB%E5%9C%A3%E7%81%B5%E5%85%85%E6%BB%A1.mp4', '1679', '2020-10-11 22:23:55', '0', '1', '', '2020-10-11 22:24:32', '0', '62', '');
INSERT INTO `article_info` VALUES ('7231', '以琳', '圣灵论', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/200/200%20%E5%9C%A3%E7%81%B5%E8%AE%BA.mp4', '1680', '2020-10-11 22:33:16', '0', '1', '', '2020-10-11 22:35:14', '0', '12', '');
INSERT INTO `article_info` VALUES ('7232', '王一平牧师', '骨肉之親_02_敬拜是什么', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/iiangdao/%E9%AA%A8%E8%82%89%E4%B9%8B%E8%A6%AA_02_%E6%95%AC%E6%8B%9C%E6%98%AF%E4%BB%80%E4%B9%88_R3.mp4', '1673', '2020-10-12 08:57:40', '0', '1', '', '2020-10-12 08:58:17', '0', '89', '');
INSERT INTO `article_info` VALUES ('7233', '王一平牧师', '敬拜是什么音频版本', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E9%9F%B3%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/zhengdao/%E9%AA%A8%E8%82%89%E4%B9%8B%E8%A6%AA_02_%E6%95%AC%E6%8B%9C%E6%98%AF%E4%BB%80%E4%B9%88_R3%202.m4a', '1673', '2020-10-13 23:48:28', '0', '1', '', '2020-10-13 23:48:56', '0', '3', '');
INSERT INTO `article_info` VALUES ('7234', '王一平牧师', '敬拜是什么音频mp3版本', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E9%9F%B3%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/zhengdao/%E9%AA%A8%E8%82%89%E4%B9%8B%E8%A6%AA_02_%E6%95%AC%E6%8B%9C%E6%98%AF%E4%BB%80%E4%B9%88_R3%202.mp3', '1673', '2020-10-13 23:52:18', '0', '1', '', '2020-10-13 23:53:29', '0', '7', '');
INSERT INTO `article_info` VALUES ('7235', '郑万立', '神如何指引我们读经和祷告', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/100/%E7%A5%9E%E5%A6%82%E4%BD%95%E6%8C%87%E5%BC%95%E6%88%91%E4%BB%AC%E8%AF%BB%E7%BB%8F%E5%92%8C%E7%A5%B7%E5%91%8A.mp4', '1679', '2020-10-18 14:40:44', '0', '1', '', '2020-10-18 14:41:31', '0', '58', '');
INSERT INTO `article_info` VALUES ('7236', '以琳', '天使与撒旦', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/200/%E5%A4%A9%E4%BD%BF%E4%B8%8E%E6%92%92%E6%97%A6.mp4', '1680', '2020-10-18 17:13:42', '0', '1', '', '2020-10-18 17:14:00', '0', '9', '');
INSERT INTO `article_info` VALUES ('7237', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/2020%E5%B9%B410%E6%9C%8818%E6%97%A5.mp4', '1673', '2020-10-18 21:54:54', '0', '1', '', '2020-10-18 21:54:57', '0', '114', '');
INSERT INTO `article_info` VALUES ('7238', '唐鹏 ', '教会的本质', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/100/%E6%95%99%E4%BC%9A%E7%9A%84%E6%9C%AC%E8%B4%A8.mp4', '1679', '2020-10-25 14:19:32', '0', '1', '', '2020-10-25 14:19:42', '0', '27', '');
INSERT INTO `article_info` VALUES ('7239', '好牧人之家', '人论', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/200/%E4%BA%BA%E8%AE%BA.mp4', '1680', '2020-10-25 14:27:11', '0', '1', '', '2020-10-25 14:27:22', '0', '7', '');
INSERT INTO `article_info` VALUES ('7241', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201025%E6%89%93%E7%A0%B4%E9%A6%99%E8%86%8F.mp4', '1673', '2020-10-27 09:31:44', '0', '1', '', '2020-10-27 19:46:56', '0', '144', '');
INSERT INTO `article_info` VALUES ('7242', '福音电影', '上帝未死1电影', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/movies/%E4%B8%8A%E5%B8%9D%E6%9C%AA%E6%AD%BB.BD1280%E9%AB%98%E6%B8%85%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97%E7%89%88.mp4', '1681', '2020-10-27 12:40:32', '0', '1', '', '2020-10-27 12:40:57', '0', '15', '');
INSERT INTO `article_info` VALUES ('7243', '好牧人之家', '天路历程', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/movies/%E5%A4%A9%E8%B7%AF%E5%8E%86%E7%A8%8B.mp4', '1681', '2020-10-28 15:17:47', '0', '1', '', '2020-10-28 15:18:00', '0', '48', '');
INSERT INTO `article_info` VALUES ('7244', '好牧人之家', '罪论', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/200/%E7%BD%AA%E8%AE%BA.mp4', '1680', '2020-11-01 16:18:59', '0', '1', '', '2020-11-01 16:19:34', '0', '4', '');
INSERT INTO `article_info` VALUES ('7245', '好牧人之家-刘伟', '主日和安息日', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/100/%E4%B8%BB%E6%97%A5%E5%92%8C%E5%AE%89%E6%81%AF%E6%97%A5.mp4', '1679', '2020-11-01 16:21:11', '0', '1', '', '2020-11-01 16:21:16', '0', '23', '');
INSERT INTO `article_info` VALUES ('7246', '', '上午讲道', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201101.01.mp4', '1673', '2020-11-01 21:25:49', '0', '1', '', '2020-11-01 21:25:53', '0', '469', '');
INSERT INTO `article_info` VALUES ('7247', '', '下午主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201101.02.mp4', '1673', '2020-11-01 21:26:49', '0', '1', '', '2020-11-01 21:26:56', '0', '210', '');
INSERT INTO `article_info` VALUES ('7248', '好牧人之家', '婚姻祝福', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/LY%26Deborah%20wedding%202020.11.02.mp4', '1682', '2020-11-04 16:49:09', '0', '1', '', '2020-11-04 16:49:20', '0', '19', '');
INSERT INTO `article_info` VALUES ('7249', '唐鹏', '洗礼和圣餐', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/100/%E6%B4%97%E7%A4%BC%E5%92%8C%E5%9C%A3%E9%A4%90.mp4', '1679', '2020-11-08 14:05:10', '0', '1', '', '2020-11-08 14:05:34', '0', '47', '');
INSERT INTO `article_info` VALUES ('7250', '好牧人之家', '基督论', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/200/%E5%9F%BA%E7%9D%A3%E8%AE%BA.mp4', '1680', '2020-11-08 15:04:12', '0', '1', '', '2020-11-08 15:04:22', '0', '19', '');
INSERT INTO `article_info` VALUES ('7251', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201009.mp4', '1673', '2020-11-08 20:59:06', '0', '1', '', '2020-11-08 20:59:10', '0', '205', '');
INSERT INTO `article_info` VALUES ('7253', '王一平牧师', '喜乐是什么', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/iiangdao/%E9%AA%A8%E8%82%89%E4%B9%8B%E8%A6%AA_03_%E5%96%9C%E6%A8%82%E6%98%AF%E4%BB%80%E9%BA%BC_R3.mp4', '1673', '2020-11-11 23:49:54', '0', '1', '', '2020-11-11 23:51:24', '0', '76', '');
INSERT INTO `article_info` VALUES ('7254', '唐鹏', '1114日-活出喜乐', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/iiangdao/%E6%B4%BB%E5%87%BA%E5%96%9C%E4%B9%9020201114.mp4', '1673', '2020-11-15 12:30:56', '0', '1', '', '2020-11-15 12:31:08', '0', '74', '');
INSERT INTO `article_info` VALUES ('7255', '好牧人之家', '大使命与大诫命', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/100/%E5%A4%A7%E4%BD%BF%E5%91%BD%E4%B8%8E%E5%A4%A7%E8%AF%AB%E5%91%BD.mp4', '1679', '2020-11-15 15:40:16', '0', '1', '', '2020-11-15 15:40:27', '0', '24', '');
INSERT INTO `article_info` VALUES ('7256', '好牧人之家', '赦罪论', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/200/%E8%B5%A6%E7%BD%AA%E8%AE%BA.mp4', '1680', '2020-11-15 15:43:50', '0', '1', '', '2020-11-15 15:44:04', '0', '17', '');
INSERT INTO `article_info` VALUES ('7257', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201115.mp4', '1673', '2020-11-15 23:02:33', '0', '1', '', '2020-11-15 23:02:36', '0', '187', '');
INSERT INTO `article_info` VALUES ('7258', '好牧人之家', '11-21主日讲道', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/iiangdao/11.21.mp4', '1673', '2020-11-22 12:07:54', '0', '1', '', '2020-11-22 12:08:03', '0', '45', '');
INSERT INTO `article_info` VALUES ('7259', '好牧人之家', '教会历史', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/200/%E6%95%99%E4%BC%9A%E5%8E%86%E5%8F%B2.mp4', '1680', '2020-11-22 18:11:20', '0', '1', '', '2020-11-22 18:11:46', '0', '18', '');
INSERT INTO `article_info` VALUES ('7260', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201122.mp4', '1673', '2020-11-22 20:22:41', '0', '1', '', '2020-11-22 20:22:48', '0', '201', '');
INSERT INTO `article_info` VALUES ('7261', '李林贵', '永不逝去的爱-林国椿黄裕惠', 'http://transcoding-media-input.oss-cn-shenzhen.aliyuncs.com/%E8%A7%86%E9%A2%91%E5%AD%98%E6%94%BE%E7%9B%AE%E5%BD%95/movies/21%E6%B0%B8%E4%B8%8D%E9%80%9D%E5%8E%BB%E7%9A%84%E7%88%B1-%E6%9E%97%E5%9B%BD%E6%A4%BF%E9%BB%84%E8%A3%95%E6%83%A0.mp4', '1681', '2020-11-25 12:59:55', '0', '1', '', '2020-11-25 13:00:27', '0', '15', '');
INSERT INTO `article_info` VALUES ('7262', '好牧人之家', '基督化的工作观与金钱观', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E5%9F%BA%E7%9D%A3%E5%8C%96%E7%9A%84%E5%B7%A5%E4%BD%9C%E8%A7%82%E4%B8%8E%E9%87%91%E9%92%B1%E8%A7%82.mp4', '1679', '2020-11-29 17:42:18', '0', '1', '', '2020-11-29 22:30:58', '0', '16', '');
INSERT INTO `article_info` VALUES ('7263', '好牧人之家', '永恒论', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E6%B0%B8%E6%81%92%E8%AE%BA.mp4', '1680', '2020-11-29 17:43:42', '0', '1', '', '2020-11-29 22:29:02', '0', '29', '');
INSERT INTO `article_info` VALUES ('7264', '', '主日崇拜', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/20201129.mp4', '1673', '2020-11-29 19:39:03', '0', '1', '', '2020-11-29 19:39:07', '0', '165', '');
INSERT INTO `article_info` VALUES ('7265', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201205sw.mp4', '1673', '2020-02-29 17:31:35', '0', '1', '', '2020-12-06 21:12:32', '0', '0', '');
INSERT INTO `article_info` VALUES ('7266', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201206.mp4', '1673', '2020-12-06 21:12:54', '0', '1', '', '2020-12-06 21:12:57', '0', '60', '');
INSERT INTO `article_info` VALUES ('7267', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201205sw.mp4', '1673', '2020-12-05 21:14:31', '0', '1', '', '2020-12-06 21:17:27', '0', '40', '');
INSERT INTO `article_info` VALUES ('7268', '', '第一课主日学老师的职责', 'http://v.hmrzj.cn/%E5%84%BF%E7%AB%A5%E4%B8%BB%E6%97%A5%E5%AD%A6%E5%9F%B9%E8%AE%AD/20201208.mp4', '1661', '2020-12-09 11:39:19', '0', '1', '', '2020-12-09 11:48:53', '0', '0', '');
INSERT INTO `article_info` VALUES ('7269', '', '主日崇拜', 'http://v.hmrzj.cn/%E4%B8%BB%E6%97%A5%E4%BF%A1%E6%81%AF%E5%BA%93/2020/20201212.mp4', '1673', '2020-12-13 21:10:47', '0', '1', '', '2020-12-13 21:10:50', '0', '97', '');
INSERT INTO `article_info` VALUES ('7270', '好牧人之家', '赦罪论', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E8%B5%A6%E7%BD%AA%E8%AE%BA.mp4', '1680', '2020-12-17 23:55:53', '0', '1', '', '2020-12-17 23:56:21', '0', '4', '');
INSERT INTO `article_info` VALUES ('7271', '好牧人之家', '罪论', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E7%BD%AA%E8%AE%BA.mp4', '1680', '2020-12-18 00:01:25', '0', '1', '', '2020-12-18 00:01:51', '0', '0', '');
INSERT INTO `article_info` VALUES ('7272', '好牧人之家', '神如何指引我们读经和祷告', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E7%A5%9E%E5%A6%82%E4%BD%95%E6%8C%87%E5%BC%95%E6%88%91%E4%BB%AC%E8%AF%BB%E7%BB%8F%E5%92%8C%E7%A5%B7%E5%91%8A.mp4', '1679', '2020-12-18 00:03:20', '0', '1', '', '2020-12-18 00:03:40', '0', '5', '');
INSERT INTO `article_info` VALUES ('7273', '好牧人之家', '洗礼和圣餐', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E6%B4%97%E7%A4%BC%E5%92%8C%E5%9C%A3%E9%A4%90.mp4', '1679', '2020-12-18 00:06:46', '0', '1', '', '2020-12-18 00:07:18', '0', '2', '');
INSERT INTO `article_info` VALUES ('7274', '好牧人之家', '永恒论', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E6%B0%B8%E6%81%92%E8%AE%BA.mp4', '1680', '2020-12-18 00:08:11', '0', '1', '', '2020-12-18 00:08:36', '0', '0', '');
INSERT INTO `article_info` VALUES ('7275', '好牧人之家', '教会的本质', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E6%95%99%E4%BC%9A%E7%9A%84%E6%9C%AC%E8%B4%A8.mp4', '1679', '2020-12-18 00:09:27', '0', '1', '', '2020-12-18 00:09:51', '0', '0', '');
INSERT INTO `article_info` VALUES ('7276', '好牧人之家', '教会历史', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E6%95%99%E4%BC%9A%E5%8E%86%E5%8F%B2.mp4', '1680', '2020-12-18 00:10:40', '0', '1', '', '2020-12-18 00:11:06', '0', '0', '');
INSERT INTO `article_info` VALUES ('7277', '好牧人之家', '天使与撒旦', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E5%A4%A9%E4%BD%BF%E4%B8%8E%E6%92%92%E6%97%A6.mp4', '1680', '2020-12-18 00:13:38', '0', '1', '', '2020-12-18 00:13:59', '0', '0', '');
INSERT INTO `article_info` VALUES ('7278', '好牧人之家', '大诫命与大使命', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E5%A4%A7%E4%BD%BF%E5%91%BD%E4%B8%8E%E5%A4%A7%E8%AF%AB%E5%91%BD.mp4', '1679', '2020-12-18 00:15:00', '0', '1', '', '2020-12-18 00:15:23', '0', '0', '');
INSERT INTO `article_info` VALUES ('7279', '好牧人之家', '基督论', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E5%9F%BA%E7%9D%A3%E8%AE%BA.mp4', '1680', '2020-12-18 00:16:08', '0', '1', '', '2020-12-18 00:16:29', '0', '0', '');
INSERT INTO `article_info` VALUES ('7280', '好牧人之家', '基督化的工作观与金钱观', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E5%9F%BA%E7%9D%A3%E5%8C%96%E7%9A%84%E5%B7%A5%E4%BD%9C%E8%A7%82%E4%B8%8E%E9%87%91%E9%92%B1%E8%A7%82.mp4', '1679', '2020-12-18 00:17:30', '0', '1', '', '2020-12-18 00:17:56', '0', '0', '');
INSERT INTO `article_info` VALUES ('7281', '好牧人之家', '人论', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E4%BA%BA%E8%AE%BA.mp4', '1680', '2020-12-18 00:18:51', '0', '1', '', '2020-12-18 00:19:23', '0', '0', '');
INSERT INTO `article_info` VALUES ('7282', '好牧人之家', '主日和安息日', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/%E4%B8%BB%E6%97%A5%E5%92%8C%E5%AE%89%E6%81%AF%E6%97%A5.mp4', '1679', '2020-12-18 00:20:08', '0', '1', '', '2020-12-18 00:20:31', '0', '0', '');
INSERT INTO `article_info` VALUES ('7283', '好牧人之家', '圣灵论', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/200%20%E5%9C%A3%E7%81%B5%E8%AE%BA.mp4', '1680', '2020-12-18 00:21:33', '0', '1', '', '2020-12-18 00:22:00', '0', '0', '');
INSERT INTO `article_info` VALUES ('7284', '好牧人之家', '如何被圣灵充满', 'http://transcoding-media-output.oss-cn-shenzhen.aliyuncs.com/100-%E5%A6%82%E4%BD%95%E8%A2%AB%E5%9C%A3%E7%81%B5%E5%85%85%E6%BB%A1.mp4', '1679', '2020-12-18 00:23:05', '0', '1', '', '2020-12-18 00:23:28', '0', '0', '');

-- ----------------------------
-- Table structure for `article_info_content`
-- ----------------------------
DROP TABLE IF EXISTS `article_info_content`;
CREATE TABLE `article_info_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_info_id` int(11) NOT NULL,
  `content` longtext,
  PRIMARY KEY (`id`),
  KEY `app_article_content_article_info_id` (`article_info_id`) COMMENT '(null)'
) ENGINE=InnoDB AUTO_INCREMENT=7491 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of article_info_content
-- ----------------------------
INSERT INTO `article_info_content` VALUES ('7070', '6882', '');
INSERT INTO `article_info_content` VALUES ('7071', '6883', '');
INSERT INTO `article_info_content` VALUES ('7072', '6884', '');
INSERT INTO `article_info_content` VALUES ('7073', '6885', '');
INSERT INTO `article_info_content` VALUES ('7074', '6886', '');
INSERT INTO `article_info_content` VALUES ('7075', '6887', '');
INSERT INTO `article_info_content` VALUES ('7076', '6888', '');
INSERT INTO `article_info_content` VALUES ('7077', '6889', '');
INSERT INTO `article_info_content` VALUES ('7078', '6890', '');
INSERT INTO `article_info_content` VALUES ('7079', '6891', '');
INSERT INTO `article_info_content` VALUES ('7080', '6892', '');
INSERT INTO `article_info_content` VALUES ('7081', '6893', '');
INSERT INTO `article_info_content` VALUES ('7082', '6894', '');
INSERT INTO `article_info_content` VALUES ('7083', '6895', '');
INSERT INTO `article_info_content` VALUES ('7084', '6896', '');
INSERT INTO `article_info_content` VALUES ('7085', '6897', '');
INSERT INTO `article_info_content` VALUES ('7086', '6898', '');
INSERT INTO `article_info_content` VALUES ('7087', '6899', '');
INSERT INTO `article_info_content` VALUES ('7088', '6900', '');
INSERT INTO `article_info_content` VALUES ('7089', '6901', '');
INSERT INTO `article_info_content` VALUES ('7090', '6902', '');
INSERT INTO `article_info_content` VALUES ('7091', '6903', '');
INSERT INTO `article_info_content` VALUES ('7092', '6904', '');
INSERT INTO `article_info_content` VALUES ('7093', '6905', '');
INSERT INTO `article_info_content` VALUES ('7094', '6906', '');
INSERT INTO `article_info_content` VALUES ('7095', '6907', '');
INSERT INTO `article_info_content` VALUES ('7096', '6908', '');
INSERT INTO `article_info_content` VALUES ('7097', '6909', '');
INSERT INTO `article_info_content` VALUES ('7098', '6910', '');
INSERT INTO `article_info_content` VALUES ('7099', '6912', '');
INSERT INTO `article_info_content` VALUES ('7100', '6913', '');
INSERT INTO `article_info_content` VALUES ('7101', '6914', '');
INSERT INTO `article_info_content` VALUES ('7102', '6915', '');
INSERT INTO `article_info_content` VALUES ('7103', '6916', '');
INSERT INTO `article_info_content` VALUES ('7104', '6917', '');
INSERT INTO `article_info_content` VALUES ('7105', '6918', '');
INSERT INTO `article_info_content` VALUES ('7106', '6920', '');
INSERT INTO `article_info_content` VALUES ('7107', '6921', '');
INSERT INTO `article_info_content` VALUES ('7108', '6922', '');
INSERT INTO `article_info_content` VALUES ('7109', '6923', '');
INSERT INTO `article_info_content` VALUES ('7110', '6927', '');
INSERT INTO `article_info_content` VALUES ('7111', '6928', '');
INSERT INTO `article_info_content` VALUES ('7112', '6929', '');
INSERT INTO `article_info_content` VALUES ('7113', '6930', '');
INSERT INTO `article_info_content` VALUES ('7114', '6931', '');
INSERT INTO `article_info_content` VALUES ('7115', '6932', '');
INSERT INTO `article_info_content` VALUES ('7116', '6933', '');
INSERT INTO `article_info_content` VALUES ('7117', '6934', '');
INSERT INTO `article_info_content` VALUES ('7118', '6935', '');
INSERT INTO `article_info_content` VALUES ('7119', '6936', '');
INSERT INTO `article_info_content` VALUES ('7120', '6937', '');
INSERT INTO `article_info_content` VALUES ('7121', '6938', '');
INSERT INTO `article_info_content` VALUES ('7122', '6940', '');
INSERT INTO `article_info_content` VALUES ('7123', '6941', '');
INSERT INTO `article_info_content` VALUES ('7124', '6942', '');
INSERT INTO `article_info_content` VALUES ('7125', '6943', '');
INSERT INTO `article_info_content` VALUES ('7126', '6944', '');
INSERT INTO `article_info_content` VALUES ('7127', '6945', '');
INSERT INTO `article_info_content` VALUES ('7128', '6946', '');
INSERT INTO `article_info_content` VALUES ('7129', '6947', '');
INSERT INTO `article_info_content` VALUES ('7130', '6948', '');
INSERT INTO `article_info_content` VALUES ('7131', '6949', '');
INSERT INTO `article_info_content` VALUES ('7132', '6950', '');
INSERT INTO `article_info_content` VALUES ('7133', '6951', '');
INSERT INTO `article_info_content` VALUES ('7134', '6952', '');
INSERT INTO `article_info_content` VALUES ('7135', '6953', '');
INSERT INTO `article_info_content` VALUES ('7136', '6954', '');
INSERT INTO `article_info_content` VALUES ('7137', '6955', '');
INSERT INTO `article_info_content` VALUES ('7138', '6956', '');
INSERT INTO `article_info_content` VALUES ('7139', '6957', '');
INSERT INTO `article_info_content` VALUES ('7140', '6958', '');
INSERT INTO `article_info_content` VALUES ('7141', '6959', '');
INSERT INTO `article_info_content` VALUES ('7142', '6960', '');
INSERT INTO `article_info_content` VALUES ('7143', '6961', '');
INSERT INTO `article_info_content` VALUES ('7144', '6962', '');
INSERT INTO `article_info_content` VALUES ('7145', '6963', '');
INSERT INTO `article_info_content` VALUES ('7146', '6964', '');
INSERT INTO `article_info_content` VALUES ('7147', '6965', '');
INSERT INTO `article_info_content` VALUES ('7148', '6966', '');
INSERT INTO `article_info_content` VALUES ('7149', '6967', '');
INSERT INTO `article_info_content` VALUES ('7150', '6968', '');
INSERT INTO `article_info_content` VALUES ('7151', '6969', '');
INSERT INTO `article_info_content` VALUES ('7152', '6970', '');
INSERT INTO `article_info_content` VALUES ('7153', '6971', '');
INSERT INTO `article_info_content` VALUES ('7154', '6972', '');
INSERT INTO `article_info_content` VALUES ('7155', '6973', '');
INSERT INTO `article_info_content` VALUES ('7156', '6974', '');
INSERT INTO `article_info_content` VALUES ('7157', '6975', '');
INSERT INTO `article_info_content` VALUES ('7158', '6976', '');
INSERT INTO `article_info_content` VALUES ('7159', '6977', '');
INSERT INTO `article_info_content` VALUES ('7160', '6978', '');
INSERT INTO `article_info_content` VALUES ('7161', '6979', '');
INSERT INTO `article_info_content` VALUES ('7162', '6980', '');
INSERT INTO `article_info_content` VALUES ('7163', '6981', '');
INSERT INTO `article_info_content` VALUES ('7164', '6982', '');
INSERT INTO `article_info_content` VALUES ('7165', '6983', '');
INSERT INTO `article_info_content` VALUES ('7166', '6984', '');
INSERT INTO `article_info_content` VALUES ('7167', '6985', '');
INSERT INTO `article_info_content` VALUES ('7168', '6986', '');
INSERT INTO `article_info_content` VALUES ('7169', '6987', '');
INSERT INTO `article_info_content` VALUES ('7170', '6988', '');
INSERT INTO `article_info_content` VALUES ('7171', '6989', '');
INSERT INTO `article_info_content` VALUES ('7172', '6990', '');
INSERT INTO `article_info_content` VALUES ('7197', '6991', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7198', '6992', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7199', '6993', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7200', '6994', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7201', '6995', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7202', '6996', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7203', '6997', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7204', '6998', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7205', '6999', 'v');
INSERT INTO `article_info_content` VALUES ('7206', '7000', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7207', '7001', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7208', '7002', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7209', '7003', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7210', '7004', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7211', '7005', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7212', '7006', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7213', '7007', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7214', '7008', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7215', '7009', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7216', '7010', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7217', '7011', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7218', '7012', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7219', '7013', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7220', '7014', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7221', '7015', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7222', '7016', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7223', '7017', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7224', '7018', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7225', '7019', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7226', '7020', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7227', '7021', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7228', '7022', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7229', '7023', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7230', '7024', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7231', '7025', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7232', '7026', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7233', '7027', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7234', '7028', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7235', '7029', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7236', '7030', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7237', '7031', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7238', '7032', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7239', '7033', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7240', '7034', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7241', '7035', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7242', '7036', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7243', '7037', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7244', '7038', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7245', '7039', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7246', '7040', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7247', '7041', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7248', '7042', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7249', '7043', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7250', '7044', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7251', '7045', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7252', '7046', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7253', '7047', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7254', '7048', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7255', '7049', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7256', '7050', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7257', '7051', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7258', '7052', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7259', '7053', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7260', '7054', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7261', '7055', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7262', '7056', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7263', '7057', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7264', '7058', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7265', '7059', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7266', '7060', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7267', '7061', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7268', '7062', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7269', '7063', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7270', '7064', '<p>\r\n	<span style=\"font-size:14px;\">医治布道特会:</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">1.&nbsp;&nbsp;<a href=\"http://www.hmrzj.cn/article_7060.html\">医治布道特会(1)</a></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">2.&nbsp; <a href=\"http://www.hmrzj.cn/article_7062.html\">医治布道特会(2)</a></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">3.&nbsp; <a href=\"http://www.hmrzj.cn/article_7061.html\">医治布道特会(3)</a></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">4.&nbsp;&nbsp;<a href=\"http://www.hmrzj.cn/article_7063.html\" target=\"_blank\">医治布道特会(4)</a><span></span></span>\r\n</p>');
INSERT INTO `article_info_content` VALUES ('7271', '7065', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7272', '7066', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7273', '7067', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7274', '7068', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7275', '7069', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7276', '7070', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7277', '7071', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7278', '7072', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7279', '7073', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7280', '7074', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7281', '7075', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7282', '7076', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7283', '7077', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7284', '7078', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7285', '7079', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7286', '7080', '&nbsp; &nbsp; &nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7287', '7081', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7288', '7082', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7289', '7083', '&nbsp; &nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7290', '7084', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7291', '7085', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7292', '7086', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7293', '7087', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7294', '7088', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7295', '7089', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7296', '7090', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7297', '7091', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7298', '7092', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7299', '7093', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7300', '7094', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7301', '7095', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7302', '7096', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7303', '7097', '资料较多 <a href=\'http://www.hmrzj.cn/ablum_1669.html\'>点击这里</a>');
INSERT INTO `article_info_content` VALUES ('7304', '7098', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7305', '7099', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7306', '7100', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7307', '7101', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7308', '7102', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7309', '7103', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7310', '7104', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7311', '7105', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7312', '7106', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7313', '7107', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7314', '7108', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7315', '7109', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7316', '7110', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7317', '7111', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7318', '7112', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7319', '7113', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7320', '7114', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7321', '7115', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7322', '7116', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7323', '7117', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7324', '7118', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7325', '7119', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7326', '7120', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7327', '7121', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7328', '7122', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7329', '7123', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7330', '7124', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7331', '7125', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7332', '7126', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7333', '7127', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7334', '7128', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7335', '7129', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7336', '7130', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7337', '7131', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7338', '7132', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7339', '7133', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7340', '7134', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7341', '7135', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7342', '7136', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7343', '7137', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7344', '7138', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7345', '7139', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7346', '7140', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7347', '7141', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7348', '7142', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7349', '7143', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7350', '7144', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7351', '7145', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7352', '7146', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7353', '7147', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7354', '7148', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7355', '7149', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7356', '7150', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7357', '7151', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7358', '7152', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7359', '7153', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7360', '7154', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7361', '7155', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7362', '7156', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7363', '7157', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7364', '7158', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7365', '7159', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7366', '7160', '&nbsp; &nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7367', '7161', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7368', '7162', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7369', '7163', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7370', '7164', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7371', '7165', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7372', '7166', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7373', '7167', '谢谢');
INSERT INTO `article_info_content` VALUES ('7374', '7168', '谢谢');
INSERT INTO `article_info_content` VALUES ('7375', '7169', '谢谢');
INSERT INTO `article_info_content` VALUES ('7376', '7170', '谢谢');
INSERT INTO `article_info_content` VALUES ('7377', '7171', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7378', '7172', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7379', '7173', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7380', '7174', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7381', '7175', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7382', '7176', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7383', '7177', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7384', '7178', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7385', '7179', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7386', '7180', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7387', '7181', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7388', '7182', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7389', '7183', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7390', '7184', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7391', '7185', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7392', '7186', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7393', '7187', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7394', '7188', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7395', '7189', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7396', '7190', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7397', '7191', null);
INSERT INTO `article_info_content` VALUES ('7398', '7192', null);
INSERT INTO `article_info_content` VALUES ('7399', '7193', null);
INSERT INTO `article_info_content` VALUES ('7400', '7194', null);
INSERT INTO `article_info_content` VALUES ('7401', '7195', null);
INSERT INTO `article_info_content` VALUES ('7402', '7196', null);
INSERT INTO `article_info_content` VALUES ('7403', '7197', null);
INSERT INTO `article_info_content` VALUES ('7404', '7198', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7405', '7199', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7406', '7200', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7407', '7201', 'v');
INSERT INTO `article_info_content` VALUES ('7408', '7202', 'v');
INSERT INTO `article_info_content` VALUES ('7409', '7203', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7410', '7204', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7411', '7205', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7412', '7206', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7413', '7207', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7414', '7208', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7415', '7209', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7416', '7210', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7417', '7211', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7418', '7212', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7419', '7213', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7420', '7214', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7421', '7215', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7422', '7216', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7423', '7217', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7424', '7218', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7425', '7219', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7426', '7220', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7427', '7221', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7428', '7222', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7429', '7223', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7430', '7224', '&nbsp; &nbsp;');
INSERT INTO `article_info_content` VALUES ('7431', '7225', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7432', '7226', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7433', '7227', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7434', '7228', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7435', '7229', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7436', '7230', '成人主日学，如何被圣灵充满');
INSERT INTO `article_info_content` VALUES ('7437', '7231', '成人主日学，圣灵论');
INSERT INTO `article_info_content` VALUES ('7438', '7232', '骨肉之親_02_敬拜是什么');
INSERT INTO `article_info_content` VALUES ('7439', '7233', '敬拜是什么音频版本');
INSERT INTO `article_info_content` VALUES ('7440', '7234', '敬拜是什么音频mp3版本');
INSERT INTO `article_info_content` VALUES ('7441', '7235', '<a>神如何指引我们读经和祷告，读经当如吃饭，祷告当如呼吸空气</a>');
INSERT INTO `article_info_content` VALUES ('7442', '7236', '天使与撒旦');
INSERT INTO `article_info_content` VALUES ('7443', '7237', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7444', '7238', '教会的本质');
INSERT INTO `article_info_content` VALUES ('7445', '7239', '人论');
INSERT INTO `article_info_content` VALUES ('7446', '7240', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7447', '7241', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7448', '7242', '上帝未死1电影');
INSERT INTO `article_info_content` VALUES ('7449', '7243', '天路历程');
INSERT INTO `article_info_content` VALUES ('7450', '7244', '罪论');
INSERT INTO `article_info_content` VALUES ('7451', '7245', '主日和安息日');
INSERT INTO `article_info_content` VALUES ('7452', '7246', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7453', '7247', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7454', '7248', '婚姻祝福');
INSERT INTO `article_info_content` VALUES ('7455', '7249', '洗礼和圣餐');
INSERT INTO `article_info_content` VALUES ('7456', '7250', '基督论');
INSERT INTO `article_info_content` VALUES ('7457', '7251', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7458', '7252', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7459', '7253', '喜乐是什么');
INSERT INTO `article_info_content` VALUES ('7460', '7254', '1114日-活出喜乐');
INSERT INTO `article_info_content` VALUES ('7461', '7255', '大使命与大诫命');
INSERT INTO `article_info_content` VALUES ('7462', '7256', '赦罪论');
INSERT INTO `article_info_content` VALUES ('7463', '7257', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7464', '7258', '11-21主日讲道');
INSERT INTO `article_info_content` VALUES ('7465', '7259', '教会历史');
INSERT INTO `article_info_content` VALUES ('7466', '7260', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7467', '7261', '永不逝去的爱-林国椿黄裕惠');
INSERT INTO `article_info_content` VALUES ('7468', '7262', '基督化的工作观与金钱观');
INSERT INTO `article_info_content` VALUES ('7469', '7263', '永恒论');
INSERT INTO `article_info_content` VALUES ('7470', '7264', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7471', '7265', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7472', '7266', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7473', '7267', '&nbsp;&nbsp;');
INSERT INTO `article_info_content` VALUES ('7474', '7268', '&nbsp; &nbsp; dd');
INSERT INTO `article_info_content` VALUES ('7475', '7269', '&nbsp;');
INSERT INTO `article_info_content` VALUES ('7476', '7270', '赦罪论');
INSERT INTO `article_info_content` VALUES ('7477', '7271', '罪论');
INSERT INTO `article_info_content` VALUES ('7478', '7272', '<a>神如何指引我们读经和祷告.mp4</a>');
INSERT INTO `article_info_content` VALUES ('7479', '7273', '洗礼和圣餐');
INSERT INTO `article_info_content` VALUES ('7480', '7274', '永恒论');
INSERT INTO `article_info_content` VALUES ('7481', '7275', '教会的本质');
INSERT INTO `article_info_content` VALUES ('7482', '7276', '教会历史');
INSERT INTO `article_info_content` VALUES ('7483', '7277', '天使与撒旦');
INSERT INTO `article_info_content` VALUES ('7484', '7278', '大诫命与大使命');
INSERT INTO `article_info_content` VALUES ('7485', '7279', '基督论');
INSERT INTO `article_info_content` VALUES ('7486', '7280', '基督化的工作观与金钱观');
INSERT INTO `article_info_content` VALUES ('7487', '7281', '人论');
INSERT INTO `article_info_content` VALUES ('7488', '7282', '主日和安息日');
INSERT INTO `article_info_content` VALUES ('7489', '7283', '圣灵论');
INSERT INTO `article_info_content` VALUES ('7490', '7284', '如何被圣灵充满');

-- ----------------------------
-- Table structure for `sys_power`
-- ----------------------------
DROP TABLE IF EXISTS `sys_power`;
CREATE TABLE `sys_power` (
  `power_id` char(19) NOT NULL COMMENT '权限编号',
  `power_name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `power_type` char(1) DEFAULT NULL COMMENT '权限类型',
  `power_code` char(30) DEFAULT NULL COMMENT '权限标识',
  `power_url` varchar(255) DEFAULT NULL COMMENT '权限路径',
  `open_type` char(10) DEFAULT NULL COMMENT '打开方式',
  `parent_id` char(19) DEFAULT NULL COMMENT '父类编号',
  `icon` char(60) DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` char(19) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` char(19) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `enable` char(1) DEFAULT NULL COMMENT '是否开启',
  PRIMARY KEY (`power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_power
-- ----------------------------
INSERT INTO `sys_power` VALUES ('1', '系统管理', '0', '', '', null, '0', 'layui-icon layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1284020948269268992', '用户列表', '2', 'sys:user:data', '', '', '2', 'layui-icon-username', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1284022967767924736', '用户保存', '2', 'sys:user:add', '', '', '2', 'layui-icon-username', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1302180351979814912', '布局构建', '1', 'generator:from:main', 'component/code/index.html', '_iframe', '442417411065516032', 'layui-icon-senior', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1304387665067507712', '数据字典', '1', 'sys:dictType:main', '/system/dictType/main', '_iframe', '1', 'layui-icon layui-icon layui-icon layui-icon layui-icon-flag', '4', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1304793451996381184', '文件管理', '1', 'sys:file:main', '/system/file/main', '_iframe', '1', 'layui-icon layui-icon layui-icon-read', '5', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1305870685385523200', '百度一下', '1', '', 'http://www.baidu.com', '0', '474356044148117504', 'layui-icon-search', '2', null, null, null, null, null, null);
INSERT INTO `sys_power` VALUES ('1305875436139446272', '百度一下', '1', 'http://www.baidu.com', 'http://www.baidu.com', '0', '451002662209589248', 'layui-icon-search', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1307299332784914432', '系统配置', '1', 'sys:config:main', '/system/config/main', '0', '1', 'layui-icon layui-icon layui-icon-note', '6', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1307562196556840960', '工作流程', '0', '', '', '0', '0', 'layui-icon layui-icon-chat', '5', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1307562519451140096', '模型管理', '1', '/process/model/main', '/process/model/main', '0', '1307562196556840960', 'layui-icon-circle', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1308571483794046976', '流程定义', '1', 'process:defined:main', '/process/defined/main', '0', '1307562196556840960', 'layui-icon-chart-screen', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310206853057085440', '用户修改', '2', 'sys:user:edit', '', '', '2', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310208636370288640', '用户删除', '2', 'sys:user:remove', '', '', '2', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310209696916832256', '角色新增', '2', 'sys:role:add', '', '', '3', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310209900478988288', '角色删除', '2', 'sys:role:remove', '', '', '3', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310210054728712192', '角色修改', '2', 'sys:role:edit', '', '', '3', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310211965188046848', '角色授权', '2', 'sys:role:power', '', '', '3', 'layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310226416867999744', '权限列表', '2', 'sys:power:data', '', '', '4', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310226976593674240', '权限新增', '2', 'sys:power:add', '', '', '4', 'layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310227130998587392', '权限修改', '2', 'sys:power:edit', '', '', '4', 'layui-icon-vercode', '2', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310227300935008256', '权限删除', '2', 'sys:power:remove', '', '', '4', 'layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310232350285627392', '操作日志', '2', 'sys:logging:operateLog', '', '', '450300705362808832', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310232462562951168', '登录日志', '2', 'sys:logging:loginLog', '', '', '450300705362808832', 'layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310238229588344832', '配置列表', '2', 'sys:config:data', '', '', '1307299332784914432', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310238417082122240', '配置新增', '2', 'sys:config:add', '', '', '1307299332784914432', 'layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310238574355939328', '配置修改', '2', 'sys:config:edit', '', '', '1307299332784914432', 'layui-icon-vercode', '2', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310238700705153024', '配置删除', '2', 'sys:config:remove', '', '', '1307299332784914432', 'layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310243862937075712', '文件列表', '2', 'sys:file:data', '', '', '1304793451996381184', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310244103824343040', '文件新增', '2', 'sys:file:add', '', '', '1304793451996381184', 'layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310244248884346880', '文件删除', '2', 'sys:file:remove', '', '', '1304793451996381184', 'layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310390699333517312', '任务列表', '2', 'sch:job:data', '', '', '442650770626711552', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310390994826428416', '任务新增', '2', 'sch:job:add', '', '', '442650770626711552', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310391095670079488', '任务修改', '2', 'sch:job:edit', '', '', '442650770626711552', 'layui-icon-vercode', '2', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310391707069579264', '任务删除', '2', 'sch:job:remove', '', '', '442650770626711552', 'layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310395250908332032', '日志列表', '2', 'sch:log:data', '', '', '442651158935375872', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310397832091402240', '任务恢复', '2', 'sch:job:resume', '', '', '442650770626711552', 'layui-icon-vercode', null, null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310398020692475904', '任务停止', '2', 'sch:job:pause', '', '', '442650770626711552', 'layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310398158974484480', '任务运行', '2', 'sch:job:run', '', '', '442650770626711552', 'layui-icon-vercode', '4', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310402491631796224', '数据类型列表', '2', 'sys:dictType:data', '', '', '1304387665067507712', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310402688881524736', '数据类型新增', '2', 'sys:dictType:add', '', '', '1304387665067507712', 'layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310402817776680960', '数据类型修改', '2', 'sys:dictType:edit', '', '', '1304387665067507712', 'layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310403004406431744', '数据类型删除', '2', 'sys:dictType:remove', '', '', '1304387665067507712', 'layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310404584291696640', '数据字典视图', '2', 'sys:dictData:main', '', '', '1304387665067507712', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310404705934901248', '数据字典列表', '2', 'sys:dictData:data', '', '', '1304387665067507712', 'layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310404831407505408', '数据字典新增', '2', 'sys:dictData:add', '', '', '1304387665067507712', 'layui-icon-vercode', '5', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310404999599095808', '数据字典删除', '2', 'sys:dictData:remove', '', '', '1304387665067507712', 'layui-icon-vercode', '6', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1310405161587310592', '数据字典修改', '2', 'sys:dictData:edit', '', '', '1304387665067507712', 'layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1313142510486290432', '公告列表', '1', 'sys:notice:data', '/system/notice/data', '0', '1313142171393589248', 'layui-icon-notice', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1313482983558086656', '公告新增', '2', 'sys:notice:add', '', '', '1313142171393589248', 'layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1313483090852577280', '公告修改', '2', 'sys:notice:edit', '', '', '1313142171393589248', 'layui-icon-vercode', '2', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1313483189850734592', '公告删除', '2', 'sys:notice:remove', '', '', '1313142171393589248', 'layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1315584471046553600', '部门管理', '1', 'sys:dept:main', '/system/dept/main', '_iframe', '1', 'layui-icon layui-icon layui-icon layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1316558444790022144', '部门新增', '2', 'sys:dept:add', '', '', '1315584471046553600', 'layui-icon layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1316558556102656000', '部门修改', '2', 'sys:dept:edit', '', '', '1315584471046553600', 'layui-icon layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1316558685442408448', '部门删除', '2', 'sys:dept:remove', '', '', '1315584471046553600', 'layui-icon layui-icon-vercode', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1317555660455411712', '部门列表', '2', 'sys:dept:data', '', '', '1315584471046553600', 'layui-icon layui-icon layui-icon layui-icon-vercode', '2', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1318229908526202880', '模型新增', '2', 'pro:model:add', '', '', '1307562519451140096', 'layui-icon layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1318230013262168064', '模型修改', '2', 'pro:model:edit', '', '', '1307562519451140096', 'layui-icon layui-icon-vercode', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1318230265385975808', '模型删除', '2', 'pro:model:remove', '', '', '1307562519451140096', 'layui-icon layui-icon-vercode', '2', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1320969572051845120', '111111', '2', '', '', '', '1284020948269268992', 'layui-icon-login-qq', null, null, null, null, null, null, null);
INSERT INTO `sys_power` VALUES ('1322085079861690368', '用户管理', '1', 'sys:user:main', '/system/user/main', '_iframe', '1', 'layui-icon layui-icon layui-icon layui-icon layui-icon-rate', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1322085270392143872', '用户列表', '2', 'sys:user:data', '', '', '1322085079861690368', 'layui-icon layui-icon layui-icon layui-icon-vercode', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1322085393021009920', '用户新增', '2', 'sys:user:add', '', '', '1322085079861690368', 'layui-icon layui-icon-vercode', null, null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1322085497798918144', '用户修改', '2', 'sys:user:edit', '', '', '1322085079861690368', 'layui-icon layui-icon layui-icon-vercode', '2', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1322085659766161408', '用户删除', '2', 'sys:user:remove', '', '', '1322085079861690368', 'layui-icon layui-icon-rate', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1329349076189184000', '', '1', '', '', '', '451002662209589248', 'layui-icon', null, null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1330865171429588992', '在线用户', '1', 'sys:online:main', '/system/online/main', '_iframe', '694203021537574912', 'layui-icon layui-icon layui-icon-username', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1334755497793814528', '单表字典测试菜单', '1', 'app:test:main', '/app/test/main', '_iframe', '1334754648371757056', 'layui-icon layui-icon-set-fill', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1334755497793814529', '单表字典测试列表', '2', 'app:test:data', '', null, '1334755497793814528', 'layui-icon layui-icon-set-fill', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1334755497793814530', '单表字典测试新增', '2', 'app:test:add', '', null, '1334755497793814528', 'layui-icon layui-icon-set-fill', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1334755497793814531', '单表字典测试修改', '2', 'app:test:edit', '', null, '1334755497793814528', 'layui-icon layui-icon-set-fill', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1334755497793814532', '单表字典测试删除', '2', 'app:test:remove', '', null, '1334755497793814528', 'layui-icon layui-icon-set-fill', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1336315539701628928', '增加', '2', 'sys:role:add', '', '', '1336313032535441408', 'layui-icon', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1336315763081871360', '主页', '1', 'test:main', '/test/main', '_iframe', '1336313032535441408', 'layui-icon layui-icon layui-icon layui-icon', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('2', '用户管理', '2', '', '', '_iframe', '1320969572051845120', 'layui-icon layui-icon layui-icon-username', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('3', '角色管理', '1', 'sys:role:main', '/system/role/main', '_iframe', '1', 'layui-icon layui-icon-user', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('4', '权限管理', '1', 'sys:power:main', '/system/power/main', '_iframe', '1', 'layui-icon layui-icon-vercode', '2', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('442359447487123456', '角色列表', '2', 'sys:role:data', '', '', '3', 'layui-icon layui-icon-rate', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('442417411065516032', '开发工具', '0', '', '', '', '0', 'layui-icon layui-icon layui-icon-senior', '4', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('442418188639145984', '代码生成', '1', 'exp:template:main', '/generator/main', '_iframe', '442417411065516032', 'layui-icon layui-icon-template-1', null, null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('442650770626711552', '定时任务', '1', 'sch:job:main', '/schedule/job/main', '_iframe', '694203021537574912', 'layui-icon layui-icon layui-icon layui-icon  layui-icon-chat', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('442651158935375872', '任务日志', '1', 'sch:log:main', '/schedule/log/main', '_iframe', '694203021537574912', 'layui-icon layui-icon layui-icon  layui-icon-file', '1', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('450300705362808832', '行为日志', '1', 'sys:logging:main', '/system/logging/main', '_iframe', '694203021537574912', 'layui-icon layui-icon layui-icon  layui-icon-chart', '7', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('451002662209589248', '工作空间', '1', '', '', '', '451002662209589248', 'layui-icon layui-icon layui-icon-home', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('451003242072117248', '项目总览', '1', 'process:model:main', '/console', '_iframe', '451002662209589248', 'layui-icon  layui-icon-component', '0', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('474356363552755712', '项目介绍', '1', 'home', '/console', '_iframe', '474356044148117504', 'layui-icon layui-icon-home', '1', null, null, null, null, null, '0');
INSERT INTO `sys_power` VALUES ('694203021537574912', '系统监控', '0', '', '', '', '0', 'layui-icon  layui-icon-console', '3', null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('694203311615639552', '接口文档', '1', '', '/swagger-ui.html', '_iframe', '442417411065516032', 'layui-icon layui-icon layui-icon  layui-icon-chart', '9', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` char(19) NOT NULL COMMENT '角色编号',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(255) DEFAULT NULL COMMENT '角色标识',
  `enable` char(1) DEFAULT NULL COMMENT '是否启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` char(19) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` char(19) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `details` varchar(255) DEFAULT NULL COMMENT '详情',
  `sort` int(255) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1309851245195821056', '超级管理员', 'admin', '0', null, null, null, null, null, '超级管理员', '1');
INSERT INTO `sys_role` VALUES ('1313761100243664896', '普通管理员', 'manager', '0', null, null, null, null, null, '普通管理员', '2');

-- ----------------------------
-- Table structure for `sys_role_power`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_power`;
CREATE TABLE `sys_role_power` (
  `id` char(19) NOT NULL,
  `role_id` char(19) DEFAULT NULL,
  `power_id` char(19) DEFAULT NULL,
  `create_by` char(19) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` char(19) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_power
-- ----------------------------
INSERT INTO `sys_role_power` VALUES ('1284022485632679936', '3', '474356044148117504', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679937', '3', '474356363552755712', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679938', '3', '1', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679939', '3', '3', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679940', '3', '442359447487123456', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679941', '3', '4', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679942', '3', '442722702474743808', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679943', '3', '2', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679944', '3', '1284020948269268992', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679945', '3', '442417411065516032', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679946', '3', '442418188639145984', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679947', '3', '694203021537574912', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679948', '3', '450300705362808832', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679949', '3', '442520236248403968', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679950', '3', '694203311615639552', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679951', '3', '442650387514789888', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679952', '3', '442650770626711552', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679953', '3', '442651158935375872', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679954', '3', '451002662209589248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1284022485632679955', '3', '451003242072117248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650364506112', '2', '474356044148117504', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700416', '2', '474356363552755712', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700417', '2', '2', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700418', '2', '1284020948269268992', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700419', '2', '450300705362808832', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700420', '2', '442417411065516032', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700421', '2', '442418188639145984', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700422', '2', '694203021537574912', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700423', '2', '442520236248403968', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700424', '2', '694203311615639552', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700425', '2', '442650387514789888', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700426', '2', '442650770626711552', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700427', '2', '442651158935375872', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700428', '2', '451002662209589248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1305379650368700429', '2', '451003242072117248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380352', '1', '451002662209589248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380353', '1', '451003242072117248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380354', '1', '1305875436139446272', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380355', '1', '1', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380356', '1', '2', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380357', '1', '1284020948269268992', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380358', '1', '1284022967767924736', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380359', '1', '3', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380360', '1', '442359447487123456', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380361', '1', '4', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380362', '1', '1304387665067507712', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380363', '1', '450300705362808832', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380364', '1', '1304793451996381184', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380365', '1', '1307299332784914432', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380366', '1', '442650387514789888', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380367', '1', '442650770626711552', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380368', '1', '442651158935375872', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380369', '1', '694203021537574912', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380370', '1', '442520236248403968', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380371', '1', '694203311615639552', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380372', '1', '442417411065516032', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380373', '1', '442418188639145984', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380374', '1', '1302180351979814912', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380375', '1', '1307562196556840960', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380376', '1', '1307562519451140096', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1308571532737380377', '1', '1308571483794046976', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897792', '1310215420371795968', '451002662209589248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897793', '1310215420371795968', '1', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897794', '1310215420371795968', '2', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897795', '1310215420371795968', '3', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897796', '1310215420371795968', '4', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897797', '1310215420371795968', '1304387665067507712', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897798', '1310215420371795968', '450300705362808832', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897799', '1310215420371795968', '1304793451996381184', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897800', '1310215420371795968', '1307299332784914432', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897801', '1310215420371795968', '1313142171393589248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897802', '1310215420371795968', '1313142510486290432', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897803', '1310215420371795968', '442650387514789888', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897804', '1310215420371795968', '694203021537574912', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897805', '1310215420371795968', '442417411065516032', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1313147486356897806', '1310215420371795968', '1307562196556840960', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1320969221462556672', '1320969145759563776', '451002662209589248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1320969221462556673', '1320969145759563776', '451003242072117248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1320969221462556674', '1320969145759563776', '1305875436139446272', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962112', '1309851245195821056', '1', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962113', '1309851245195821056', '1322085079861690368', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962114', '1309851245195821056', '1322085393021009920', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962115', '1309851245195821056', '1322085270392143872', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962116', '1309851245195821056', '1322085497798918144', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962117', '1309851245195821056', '1322085659766161408', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962118', '1309851245195821056', '3', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962119', '1309851245195821056', '1310209696916832256', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962120', '1309851245195821056', '1310209900478988288', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962121', '1309851245195821056', '1310210054728712192', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962122', '1309851245195821056', '1310211965188046848', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962123', '1309851245195821056', '442359447487123456', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962124', '1309851245195821056', '4', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962125', '1309851245195821056', '1310226416867999744', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962126', '1309851245195821056', '1310226976593674240', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962127', '1309851245195821056', '1310227130998587392', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962128', '1309851245195821056', '1310227300935008256', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962129', '1309851245195821056', '1315584471046553600', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962130', '1309851245195821056', '1316558444790022144', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962131', '1309851245195821056', '1316558556102656000', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962132', '1309851245195821056', '1317555660455411712', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962133', '1309851245195821056', '1316558685442408448', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962134', '1309851245195821056', '1304387665067507712', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962135', '1309851245195821056', '1310402491631796224', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962136', '1309851245195821056', '1310404584291696640', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962137', '1309851245195821056', '1310405161587310592', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962138', '1309851245195821056', '1310402688881524736', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962139', '1309851245195821056', '1310404705934901248', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962140', '1309851245195821056', '1310402817776680960', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962141', '1309851245195821056', '1310403004406431744', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962142', '1309851245195821056', '1310404831407505408', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962143', '1309851245195821056', '1310404999599095808', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962144', '1309851245195821056', '1304793451996381184', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962145', '1309851245195821056', '1310243862937075712', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962146', '1309851245195821056', '1310244103824343040', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962147', '1309851245195821056', '1310244248884346880', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962148', '1309851245195821056', '1307299332784914432', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962149', '1309851245195821056', '1310238229588344832', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962150', '1309851245195821056', '1310238417082122240', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962151', '1309851245195821056', '1310238574355939328', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962152', '1309851245195821056', '1310238700705153024', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962153', '1309851245195821056', '694203021537574912', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962154', '1309851245195821056', '1330865171429588992', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962155', '1309851245195821056', '442650770626711552', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962156', '1309851245195821056', '1310397832091402240', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962157', '1309851245195821056', '1310390699333517312', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962158', '1309851245195821056', '1310390994826428416', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962159', '1309851245195821056', '1310391095670079488', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962160', '1309851245195821056', '1310391707069579264', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962161', '1309851245195821056', '1310398020692475904', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962162', '1309851245195821056', '1310398158974484480', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962163', '1309851245195821056', '442651158935375872', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962164', '1309851245195821056', '1310395250908332032', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962165', '1309851245195821056', '450300705362808832', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962166', '1309851245195821056', '1310232350285627392', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962167', '1309851245195821056', '1310232462562951168', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962168', '1309851245195821056', '442417411065516032', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962169', '1309851245195821056', '442418188639145984', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962170', '1309851245195821056', '1302180351979814912', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962171', '1309851245195821056', '694203311615639552', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962172', '1309851245195821056', '1307562196556840960', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962173', '1309851245195821056', '1307562519451140096', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962174', '1309851245195821056', '1318229908526202880', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962175', '1309851245195821056', '1318230013262168064', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962176', '1309851245195821056', '1318230265385975808', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962177', '1309851245195821056', '1308571483794046976', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962178', '1309851245195821056', '1336313032535441408', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962179', '1309851245195821056', '1336315539701628928', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('1336318350287962180', '1309851245195821056', '1336315763081871360', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('442062615250866176', '693913251020275712', '1', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('442062615250866177', '693913251020275712', '2', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('442062615250866178', '693913251020275712', '3', null, null, null, null, null);
INSERT INTO `sys_role_power` VALUES ('442062615250866179', '693913251020275712', '4', null, null, null, null, null);

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` char(19) NOT NULL COMMENT '编号',
  `username` char(20) DEFAULT NULL COMMENT '账户',
  `password` char(60) DEFAULT NULL COMMENT '密码',
  `salt` char(10) DEFAULT NULL COMMENT '姓名',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `real_name` char(8) DEFAULT NULL COMMENT '姓名',
  `email` char(20) DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(30) DEFAULT NULL COMMENT '头像',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `phone` char(11) DEFAULT NULL COMMENT '电话',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` char(1) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` char(1) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `enable` char(1) DEFAULT NULL COMMENT '是否启用',
  `login` char(1) DEFAULT NULL COMMENT '是否登录',
  `dept_id` char(19) DEFAULT NULL COMMENT '部门编号',
  `last_time` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1309861917694623744', 'admin', '$2a$10$6T.NGloFO.mD/QOAUelMTOcjAH8N49h34TsXduDVlnNMrASIGBNz6', null, '1', '系统超级管理员', 'email@qq.com', null, '0', '13555555555', '2020-09-26 22:26:32', null, null, null, '被岁月镂空，亦受其雕琢', '1', null, '1', '2020-12-19 16:49:10');
INSERT INTO `sys_user` VALUES ('1340218650107314176', 'gyx', '$2a$10$Fpp4atmZaJxpLXIHqGWFUePIqQV6megegouLwF1XjZ7A5aDOTfXty', null, '1', '龚亦轩', '2328148296@qq.com', null, '0', '15070846513', '2020-12-19 16:53:21', null, null, null, null, '1', null, '1', '2020-12-19 17:14:40');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` char(19) NOT NULL COMMENT '标识',
  `user_id` char(19) DEFAULT NULL COMMENT '用户编号',
  `role_id` char(19) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1302196622322565120', '1302196622007992320', '1');
INSERT INTO `sys_user_role` VALUES ('1304443027040763904', '1304443026482921472', '1');
INSERT INTO `sys_user_role` VALUES ('1304443027044958208', '1304443026482921472', '2');
INSERT INTO `sys_user_role` VALUES ('1304443027044958209', '1304443026482921472', '3');
INSERT INTO `sys_user_role` VALUES ('1304443307404820480', '1304443306888921088', '1');
INSERT INTO `sys_user_role` VALUES ('1304443307404820481', '1304443306888921088', '2');
INSERT INTO `sys_user_role` VALUES ('1305359805342285824', '1305359804906078208', '');
INSERT INTO `sys_user_role` VALUES ('1305359807724650496', '1305359807296831488', '');
INSERT INTO `sys_user_role` VALUES ('1305390235135246336', '1305390234694844416', '');
INSERT INTO `sys_user_role` VALUES ('1306229860422647808', '1306229859755753472', '1');
INSERT INTO `sys_user_role` VALUES ('1306229892144168960', '1306229891624075264', '1');
INSERT INTO `sys_user_role` VALUES ('1306243520893288448', '1306243520482246656', '');
INSERT INTO `sys_user_role` VALUES ('1308074663896678400', '1308074663313670144', '1');
INSERT INTO `sys_user_role` VALUES ('1308074663896678401', '1308074663313670144', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1308074663896678402', '1308074663313670144', '2');
INSERT INTO `sys_user_role` VALUES ('1308075167091523584', '1308075166433017856', '1');
INSERT INTO `sys_user_role` VALUES ('1308075167091523585', '1308075166433017856', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1308075241188098048', '1308074939114323968', '1');
INSERT INTO `sys_user_role` VALUES ('1308075241188098049', '1308074939114323968', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1308075407685189632', '1308075407114764288', '1');
INSERT INTO `sys_user_role` VALUES ('1308075407685189633', '1308075407114764288', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1308075638158000128', '1308075637621129216', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1308328954523811840', '1308328954045661184', '1');
INSERT INTO `sys_user_role` VALUES ('1308328954523811841', '1308328954045661184', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1308328954523811842', '1308328954045661184', '2');
INSERT INTO `sys_user_role` VALUES ('1308571264494862336', '1308076162903179264', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1309445423668133888', '1309444883659882496', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1309445423668133889', '1309444883659882496', '1309121036125470720');
INSERT INTO `sys_user_role` VALUES ('1309445423668133890', '1309444883659882496', '2');
INSERT INTO `sys_user_role` VALUES ('1309752526945386496', '1', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1309752526945386497', '1', '1309121036125470720');
INSERT INTO `sys_user_role` VALUES ('1309752526945386498', '1', '2');
INSERT INTO `sys_user_role` VALUES ('1309860016655695872', '1309860016043327488', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1309860554432577536', '1309860553891512320', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1309861324494209024', '1309861323898617856', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1309861325593116672', '1309861324909445120', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1310080380040118272', '1310080379331280896', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1310080380589572096', '1310080379935260672', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1310080718918909952', '1310080718256209920', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1310080719917154304', '1310080719208316928', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1310082314557980672', '1310082313954000896', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1310082315195514880', '1310082314545397760', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1310083089153654784', '1310083088511926272', '1309121036125470720');
INSERT INTO `sys_user_role` VALUES ('1310083089828937728', '1310083089216569344', '1309121036125470720');
INSERT INTO `sys_user_role` VALUES ('1310083324709961728', '1310083324110176256', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1310208453033066496', '1310208452424892416', '1309121036125470720');
INSERT INTO `sys_user_role` VALUES ('1310209026096627712', '1310209025576534016', '1306230258952830976');
INSERT INTO `sys_user_role` VALUES ('1310209026096627713', '1310209025576534016', '1309121036125470720');
INSERT INTO `sys_user_role` VALUES ('1310381721815875584', '1306229381332467712', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1310424875067768832', '1310421836906889217', '1310421428759166976');
INSERT INTO `sys_user_role` VALUES ('1314015448013996032', '1304491590080790528', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1314410103465574400', '1314410059245027329', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1314416691479838720', '1314416690875858945', '');
INSERT INTO `sys_user_role` VALUES ('1316275764227735552', '1316275763711836161', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1316275764227735553', '1316275763711836161', '1313761100243664896');
INSERT INTO `sys_user_role` VALUES ('1316275899439513600', '1315827004456566785', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1316275899439513601', '1315827004456566785', '1313761100243664896');
INSERT INTO `sys_user_role` VALUES ('1316275930657718272', '1315829324519047169', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1316276059032780800', '1310409555649232897', '');
INSERT INTO `sys_user_role` VALUES ('1316410619078901760', '1306229606205882368', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1316410619078901761', '1306229606205882368', '1313761100243664896');
INSERT INTO `sys_user_role` VALUES ('1316410619078901762', '1306229606205882368', '1316407534105395200');
INSERT INTO `sys_user_role` VALUES ('1316410619078901763', '1306229606205882368', '1316408008376320000');
INSERT INTO `sys_user_role` VALUES ('1318205966671413248', '1318205965996130305', '');
INSERT INTO `sys_user_role` VALUES ('1320899195875360768', '1320899195225243649', '');
INSERT INTO `sys_user_role` VALUES ('1329795580615983104', '1329795579919728641', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1329795580615983105', '1329795579919728641', '1313761100243664896');
INSERT INTO `sys_user_role` VALUES ('1329795614484987904', '1329795613730013185', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1329795688124383232', '1329795687465877505', '1313761100243664896');
INSERT INTO `sys_user_role` VALUES ('1329795704863850496', '1329795703882383361', '1313761100243664896');
INSERT INTO `sys_user_role` VALUES ('1329795716930863104', '1329795716255580161', '1313761100243664896');
INSERT INTO `sys_user_role` VALUES ('1329795741211688960', '1329795740536406017', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1339855817846816768', '1309861917694623744', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1339855817846816769', '1309861917694623744', '1313761100243664896');
INSERT INTO `sys_user_role` VALUES ('1340219055977529344', '1340218650107314176', '1309851245195821056');
INSERT INTO `sys_user_role` VALUES ('1340219055977529345', '1340218650107314176', '1313761100243664896');
INSERT INTO `sys_user_role` VALUES ('442110794142978048', null, '1');
INSERT INTO `sys_user_role` VALUES ('442110794142978049', null, '2');
INSERT INTO `sys_user_role` VALUES ('442110794142978050', null, '3');
INSERT INTO `sys_user_role` VALUES ('442114944884936704', '442114944884936704', '1');
INSERT INTO `sys_user_role` VALUES ('442114944884936705', '442114944884936704', '2');
INSERT INTO `sys_user_role` VALUES ('442114944884936706', '442114944884936704', '3');
INSERT INTO `sys_user_role` VALUES ('442114944884936707', '442114944884936704', '693913251020275712');
INSERT INTO `sys_user_role` VALUES ('442114944884936708', '442114944884936704', '693949793801601024');
INSERT INTO `sys_user_role` VALUES ('442114944884936709', '442114944884936704', '694106517393113088');
INSERT INTO `sys_user_role` VALUES ('442127724396548096', '3', '1');
INSERT INTO `sys_user_role` VALUES ('442127724396548097', '3', '2');
INSERT INTO `sys_user_role` VALUES ('442127724396548098', '3', '3');
INSERT INTO `sys_user_role` VALUES ('445004989551742976', '442492965651353600', '1');
INSERT INTO `sys_user_role` VALUES ('445004989551742977', '442492965651353600', '2');
INSERT INTO `sys_user_role` VALUES ('445005010271604736', '444226209941950464', '1');
INSERT INTO `sys_user_role` VALUES ('445005010271604737', '444226209941950464', '2');
INSERT INTO `sys_user_role` VALUES ('445005010271604738', '444226209941950464', '3');
INSERT INTO `sys_user_role` VALUES ('447196043407396864', '447196042723725312', '1');
INSERT INTO `sys_user_role` VALUES ('447196043407396865', '447196042723725312', '2');
INSERT INTO `sys_user_role` VALUES ('447197132043194368', '447197131518906368', '1');
INSERT INTO `sys_user_role` VALUES ('447197773046091776', '447197772274339840', '1');
INSERT INTO `sys_user_role` VALUES ('447200144400715776', '447199996320813056', '1');
INSERT INTO `sys_user_role` VALUES ('447200144400715777', '447199996320813056', '2');
INSERT INTO `sys_user_role` VALUES ('449248198469488640', '449248198058446848', '3');
INSERT INTO `sys_user_role` VALUES ('463926002653990912', '463926002318446592', '3');
INSERT INTO `sys_user_role` VALUES ('463926371165540352', '442488661347536896', '3');
