/*
 Navicat Premium Data Transfer

 Source Server         : Demo
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : movie_mangement

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 02/12/2022 15:42:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`type`) REFERENCES `movie_type` (`type`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '你好世界 HELLO WORLD', '动漫', '北村匠海、子安武人 ', 'https://img.3dmgame.com/uploads/images/news/20210514/1620955685_428567.jpg', 'http://localhost:8080/MovieManageSystem_war_exploded/images/movie/helloworld.mp4');
INSERT INTO `movie` VALUES (3, '玉子爱情故事', '爱情', '北白川玉子、大路饼藏', 'http://localhost:8080/MovieManageSystem_war_exploded/images/movie/yuzi.png', 'http://localhost:8080/MovieManageSystem_war_exploded/images/movie/yuzi.mp4');
INSERT INTO `movie` VALUES (31, '超体', '科幻', '斯嘉丽·约翰逊', 'http://localhost:8080/MovieManageSystem_war_exploded/images/movie/chaoti.png', 'http://localhost:8080/MovieManageSystem_war_exploded/images/movie/chaoti.mp4');
INSERT INTO `movie` VALUES (38, '日本沉没', '灾难', '石坂浩二', 'https://tse1-mm.cn.bing.net/th/id/OIP-C.KSqLmMLN-0lhfqVIEQq1PwHaFj?pid=ImgDet&rs=1', 'http://localhost:8080/MovieManageSystem_war_exploded/images/movie/rbcm.mp4');

-- ----------------------------
-- Table structure for movie_type
-- ----------------------------
DROP TABLE IF EXISTS `movie_type`;
CREATE TABLE `movie_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie_type
-- ----------------------------
INSERT INTO `movie_type` VALUES (1, '动漫');
INSERT INTO `movie_type` VALUES (2, '喜剧');
INSERT INTO `movie_type` VALUES (3, '惊悚');
INSERT INTO `movie_type` VALUES (4, '灾难');
INSERT INTO `movie_type` VALUES (5, '爱情');
INSERT INTO `movie_type` VALUES (6, '犯罪');
INSERT INTO `movie_type` VALUES (7, '科幻');

-- ----------------------------
-- Table structure for new_type
-- ----------------------------
DROP TABLE IF EXISTS `new_type`;
CREATE TABLE `new_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of new_type
-- ----------------------------
INSERT INTO `new_type` VALUES (2, '体育');
INSERT INTO `new_type` VALUES (4, '军事');
INSERT INTO `new_type` VALUES (3, '历史');
INSERT INTO `new_type` VALUES (5, '娱乐');
INSERT INTO `new_type` VALUES (8, '政治');
INSERT INTO `new_type` VALUES (6, '社会');
INSERT INTO `new_type` VALUES (1, '科学');
INSERT INTO `new_type` VALUES (7, '财经');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `news_ibfk_1`(`type`) USING BTREE,
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`type`) REFERENCES `new_type` (`type`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1017 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '足球世界杯', '体育', '2022年世界杯即将在卡塔尔开启，揭幕战将于当地时间11月20日19时（北京时间11月21日0时）进行。');
INSERT INTO `news` VALUES (2, '【科普】反物质', '科学', '反物质是正常物质的反状态。当正反物质相遇时，双方就会相互湮灭抵消，发生爆炸并产生巨大能量。');
INSERT INTO `news` VALUES (3, '15岁高中生路上离奇失踪一个月', '娱乐', '从宿舍到教学楼不到100米 15岁高中生路上离奇失踪一个月。母亲：人工湖和化粪池都抽干了。胡鑫宇失踪时');
INSERT INTO `news` VALUES (4, '《守望先锋：归来》将暂停服务', '娱乐', '【暴雪娱乐与网易协议即将到期，届时会暂停大部分游戏在中国大陆地区的服务】暴雪娱乐今日宣布，公司与网易所签订的授权协议即将于2023年1月23日到期，届时暴雪将暂定在中国大陆地区的大部分游戏服务。涉及游戏包括：《魔兽世界》《炉石传说》《魔兽争霸3：Reforged》《守望先锋》《暗黑破坏神3》《风暴英雄》《星际争霸》，《暗黑破坏神：不朽》则是两家公司之间的单独协议涵盖了共同开发和发行。总裁Mike Ybarra表示正在寻找替代方案，以便在未来将游戏带回给玩家。');
INSERT INTO `news` VALUES (5, '4个月女婴因郑州120拒绝送医延误导致死亡', '社会', '11月16日，河南省周口市淮阳区居民李宝亮在网上发布求助信称，自己4个月大的女儿在11月14日突然出现剧烈呕吐和腹泻症状，拨打120求助后，12时34分左右120急救车来到，但医护人员连孩子都没有看到，就以“病情不严重”为由拒绝拉走就诊并离开。经过反复沟通，接近晚上11点，他的女儿才被送到了近一百公里之外的登封市阳城医院救治，但遗憾的是在15日凌晨3时抢救无效死亡。李宝亮认为，正是因为以上的各种延误才导致女儿错过最佳治疗救治时间而夭折。');
INSERT INTO `news` VALUES (6, '央视记者王冰冰', '娱乐', '央视频《国之大雅》系列节目，小寒篇大寒篇的简介里出现王冰冰');
INSERT INTO `news` VALUES (7, '腾讯股价暴跌，市值蒸发5万亿', '财经', '腾讯的股价一路跌到了近5年的最低点，今年上半年，腾讯控股收入2695.05亿元，同比下滑1%;净利润420.32亿元，同比重挫53%。其中支撑腾讯增长的金融科技及企业服务业务，二季度斩获收入422亿元，同比仅增长1%，环比下降了10%。');

-- ----------------------------
-- Table structure for news_copy1
-- ----------------------------
DROP TABLE IF EXISTS `news_copy1`;
CREATE TABLE `news_copy1`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `news_ibfk_1`(`type`) USING BTREE,
  CONSTRAINT `news_copy1_ibfk_1` FOREIGN KEY (`type`) REFERENCES `new_type` (`type`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1017 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_copy1
-- ----------------------------
INSERT INTO `news_copy1` VALUES (1, '足球世界杯', '体育', '2022年世界杯即将在卡塔尔开启，揭幕战将于当地时间11月20日19时（北京时间11月21日0时）进行。');
INSERT INTO `news_copy1` VALUES (2, '【科普】反物质', '科学', '反物质是正常物质的反状态。当正反物质相遇时，双方就会相互湮灭抵消，发生爆炸并产生巨大能量。');
INSERT INTO `news_copy1` VALUES (3, '15岁高中生路上离奇失踪一个月', '娱乐', '从宿舍到教学楼不到100米 15岁高中生路上离奇失踪一个月。母亲：人工湖和化粪池都抽干了。胡鑫宇失踪时');
INSERT INTO `news_copy1` VALUES (4, '《守望先锋：归来》将暂停服务', '娱乐', '【暴雪娱乐与网易协议即将到期，届时会暂停大部分游戏在中国大陆地区的服务】暴雪娱乐今日宣布，公司与网易所签订的授权协议即将于2023年1月23日到期，届时暴雪将暂定在中国大陆地区的大部分游戏服务。涉及游戏包括：《魔兽世界》《炉石传说》《魔兽争霸3：Reforged》《守望先锋》《暗黑破坏神3》《风暴英雄》《星际争霸》，《暗黑破坏神：不朽》则是两家公司之间的单独协议涵盖了共同开发和发行。总裁Mike Ybarra表示正在寻找替代方案，以便在未来将游戏带回给玩家。');
INSERT INTO `news_copy1` VALUES (5, '4个月女婴因郑州120拒绝送医延误导致死亡', '社会', '11月16日，河南省周口市淮阳区居民李宝亮在网上发布求助信称，自己4个月大的女儿在11月14日突然出现剧烈呕吐和腹泻症状，拨打120求助后，12时34分左右120急救车来到，但医护人员连孩子都没有看到，就以“病情不严重”为由拒绝拉走就诊并离开。经过反复沟通，接近晚上11点，他的女儿才被送到了近一百公里之外的登封市阳城医院救治，但遗憾的是在15日凌晨3时抢救无效死亡。李宝亮认为，正是因为以上的各种延误才导致女儿错过最佳治疗救治时间而夭折。');
INSERT INTO `news_copy1` VALUES (6, '央视记者王冰冰', '娱乐', '央视频《国之大雅》系列节目，小寒篇大寒篇的简介里出现王冰冰');
INSERT INTO `news_copy1` VALUES (7, '腾讯股价暴跌，市值蒸发5万亿', '财经', '腾讯的股价一路跌到了近5年的最低点，今年上半年，腾讯控股收入2695.05亿元，同比下滑1%;净利润420.32亿元，同比重挫53%。其中支撑腾讯增长的金融科技及企业服务业务，二季度斩获收入422亿元，同比仅增长1%，环比下降了10%。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1', '1');

SET FOREIGN_KEY_CHECKS = 1;
