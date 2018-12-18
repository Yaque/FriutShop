/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : friutshop

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 15/12/2018 17:23:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for fruit
-- ----------------------------
DROP TABLE IF EXISTS `fruit`;
CREATE TABLE `fruit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NOT NULL,
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shape` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit
-- ----------------------------
INSERT INTO `fruit` VALUES (1, '粉黛', '草莓', 1.50, '15g', '整颗');
INSERT INTO `fruit` VALUES (2, '粉黛', '草莓', 1.50, '15g', '片状');
INSERT INTO `fruit` VALUES (3, '粉黛', '石榴', 1.00, '20g', '粒状');
INSERT INTO `fruit` VALUES (4, '蜜汁', '芒果', 2.50, '40g', '片状');
INSERT INTO `fruit` VALUES (5, '蜜汁', '水蜜桃', 2.00, '40g', '片状');

-- ----------------------------
-- Table structure for packingbag
-- ----------------------------
DROP TABLE IF EXISTS `packingbag`;
CREATE TABLE `packingbag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for packingbox
-- ----------------------------
DROP TABLE IF EXISTS `packingbox`;
CREATE TABLE `packingbox`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `capacity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NOT NULL,
  `recycle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of packingbox
-- ----------------------------
INSERT INTO `packingbox` VALUES (1, '一次性塑料包装盒', '方盒形', '大号', 1.00, '0');
INSERT INTO `packingbox` VALUES (2, '环保纸盒（送塑料刀叉）', '圆筒形', '大号', 2.00, '0');
INSERT INTO `packingbox` VALUES (3, '玻璃保鲜盒', '圆形', '大号', 12.00, '1');

-- ----------------------------
-- Table structure for shoppingtrolley
-- ----------------------------
DROP TABLE IF EXISTS `shoppingtrolley`;
CREATE TABLE `shoppingtrolley`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fruits` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `packingBoxs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `packingBags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `yoghurts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sumPrice` double(10, 2) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingtrolley
-- ----------------------------
INSERT INTO `shoppingtrolley` VALUES (22, '18846761497', '粉黛,草莓,1.5元,15g,片状一共 3 份:粉黛,石榴,1.0元,20g,粒状一共 5 份:蜜汁,芒果,2.5元,40g,片状一共 1 份:', '环保纸盒（送塑料刀叉）,圆筒形,大号,2.0元,0,一共 1 个:', '', '君乐宝,2.0元,150ml一共 2 份:', 18.00, '');
INSERT INTO `shoppingtrolley` VALUES (23, '18846428410', '粉黛,草莓,1.5元,15g,整颗一共 1 份:粉黛,草莓,1.5元,15g,片状一共 1 份:粉黛,石榴,1.0元,20g,粒状一共 1 份:蜜汁,芒果,2.5元,40g,片状一共 1 份:蜜汁,水蜜桃,2.0元,40g,片状一共 1 份:', '一次性塑料包装盒,方盒形,大号,1.0元,0,一共 1 个:', '一次性透明塑料袋,0.5元一共 1 个:', '新疆原味酸奶,2.0元,150ml一共 1 份:', 12.00, '');
INSERT INTO `shoppingtrolley` VALUES (24, '18846761497', '蜜汁,水蜜桃,2.0元,40g,片状一共 1 份:', '一次性塑料包装盒,方盒形,大号,1.0元,0,一共 1 个:', '一次性透明塑料袋,0.5元一共 1 个:', '君乐宝,2.0元,150ml一共 1 份:', 5.50, '');

-- ----------------------------
-- Table structure for yoghurt
-- ----------------------------
DROP TABLE IF EXISTS `yoghurt`;
CREATE TABLE `yoghurt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NOT NULL,
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yoghurt
-- ----------------------------
INSERT INTO `yoghurt` VALUES (1, '新疆原味酸奶', 2.00, '150ml');

SET FOREIGN_KEY_CHECKS = 1;
