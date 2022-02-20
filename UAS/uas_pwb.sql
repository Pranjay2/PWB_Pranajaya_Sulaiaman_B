/*
 Navicat Premium Data Transfer

 Source Server         : connection
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : uas_pwb

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 20/02/2022 11:25:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for stocks
-- ----------------------------
DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` bigint(255) NOT NULL,
  `_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = in, 0 = out',
  `sekolah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stocks
-- ----------------------------
INSERT INTO `stocks` VALUES (1, 2, 10, 10000, 1, NULL);
INSERT INTO `stocks` VALUES (2, 3, 10, 20000, 1, NULL);
INSERT INTO `stocks` VALUES (3, 2, -2, 0, 0, 'wikrama');
INSERT INTO `stocks` VALUES (4, 3, -3, 0, 0, 'wikrami');

SET FOREIGN_KEY_CHECKS = 1;
