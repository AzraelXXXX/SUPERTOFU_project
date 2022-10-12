/*
 Navicat Premium Data Transfer

 Source Server         : bendi
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : supertofu

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 12/10/2022 11:04:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `count` int NULL DEFAULT 1,
  `price` int NOT NULL,
  `src` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `del_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES (1, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', 1, 349, '../img/sel1-2.jpg', '红色（现货）;XL', 0);
INSERT INTO `cars` VALUES (2, 'SUPERTOFU(SPTF)AW21新品 音符玫瑰 刺绣图案 270g厚实长袖T恤', 1, 269, '../img/sel9-2.jpg', '白色（现货）;XL', 0);
INSERT INTO `cars` VALUES (3, 'SUPERTOFU(SPTF) AW22 复古版式 骷髅主题刺绣图案 加绒圆领卫衣', 1, 276, '../img/sel14-1.jpg', '浅灰色（现货）;XL', 0);
INSERT INTO `cars` VALUES (4, 'SUPERTOFU(SPTF) SS22 音乐主题 手绘图案 270g面料加厚 短袖T恤', 1, 169, '../img/sel19-1.jpg', '白色（现货）;XL', 0);
INSERT INTO `cars` VALUES (8, 'SUPERTOFU(SPTF)SS21新品 刺绣细节垂感休闲薄款速干无领外套衬衫', 1, 234, '../img/sel13-1.jpg', '天蓝色（现货）;XL', 1);
INSERT INTO `cars` VALUES (9, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', 7, 349, '../img/sel1-1.jpg', '黄色（现货）;XL', 0);

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `num` int NOT NULL,
  `price` int NOT NULL,
  `details_img` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `banner_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `sel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES (1, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', 49, 349, '{\r\n    \"img\": [\r\n        \"../img/de1-1.jpg\",\r\n        \"../img/de1-2.jpg\",\r\n        \"../img/de1-3.jpg\",\r\n        \"../img/de1-4.jpg\",\r\n        \"../img/de1-5.jpg\",\r\n        \"../img/de1-6.jpg\",\r\n        \"../img/de1-7.jpg\",\r\n        \"../img/de1-8.jpg\",\r\n        \"../img/de1-9.jpg\",\r\n        \"../img/de1-10.jpg\",\r\n        \"../img/de1-11.jpg\",\r\n        \"../img/de1-12.jpg\",\r\n        \"../img/de1-13.jpg\",\r\n        \"../img/de1-14.jpg\",\r\n        \"../img/de1-15.jpg\",\r\n        \"../img/de1-16.jpg\",\r\n        \"../img/de1-17.jpg\",\r\n        \"../img/de1-18.jpg\",\r\n        \"../img/de1-19.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner1-1.jpg\",\r\n        \"../img/de-banner1-2.jpg\",\r\n        \"../img/de-banner1-3.jpg\",\r\n        \"../img/de-banner1-4.jpg\",\r\n        \"../img/de-banner1-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"黄色（现货）;XL\",\"src\":\"../img/sel1-1.jpg\"},\r\n        {\"color\": \"红色（现货）;XL\",\"src\":\"../img/sel1-2.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (2, 'SUPERTOFU(SPTF) SS22 主题图案 休闲轻爽 220g卷边无袖背心', 144, 129, '{\r\n    \"img\": [\r\n        \"../img/de2-1.jpg\",\r\n        \"../img/de2-2.jpg\",\r\n        \"../img/de2-3.jpg\",\r\n        \"../img/de2-4.jpg\",\r\n        \"../img/de2-5.jpg\",\r\n        \"../img/de2-6.jpg\",\r\n        \"../img/de2-7.jpg\",\r\n        \"../img/de2-8.jpg\",\r\n        \"../img/de2-9.jpg\",\r\n        \"../img/de2-10.jpg\",\r\n        \"../img/de2-11.jpg\",\r\n        \"../img/de2-12.jpg\",\r\n        \"../img/de2-13.jpg\",\r\n        \"../img/de2-14.jpg\",\r\n        \"../img/de2-15.jpg\",\r\n        \"../img/de2-16.jpg\",\r\n        \"../img/de2-17.jpg\",\r\n        \"../img/de2-18.jpg\",\r\n        \"../img/de2-19.jpg\",\r\n        \"../img/de2-20.jpg\",\r\n        \"../img/de2-21.jpg\",\r\n        \"../img/de2-22.jpg\",\r\n        \"../img/de2-23.jpg\",\r\n        \"../img/de2-24.jpg\",\r\n        \"../img/de2-25.jpg\",\r\n        \"../img/de2-26.jpg\",\r\n        \"../img/de2-27.jpg\",\r\n        \"../img/de2-28.jpg\",\r\n        \"../img/de2-29.jpg\",\r\n        \"../img/de2-30.jpg\",\r\n        \"../img/de2-31.jpg\",\r\n        \"../img/de2-32.jpg\",\r\n        \"../img/de2-33.jpg\",\r\n        \"../img/de2-34.jpg\",\r\n        \"../img/de2-35.jpg\",\r\n        \"../img/de2-36.jpg\",\r\n        \"../img/de2-37.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner2-1.jpg\",\r\n        \"../img/de-banner2-2.jpg\",\r\n        \"../img/de-banner2-3.jpg\",\r\n        \"../img/de-banner2-4.jpg\",\r\n        \"../img/de-banner2-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"白色（现货）;XL\",\"src\":\"../img/sel2-1.jpg\"},\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel2-2.jpg\"},\r\n        {\"color\": \"电光蓝（现货）;XL\",\"src\":\"../img/sel2-3.jpg\"},\r\n        {\"color\": \"藏青色（现货）;XL\",\"src\":\"../img/sel2-4.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (3, 'SUPERTOFU(SPTF) AW22 眼睛椰树手绘图案 袖臂细节 270g长袖TEE', 16, 268, '{\r\n    \"img\": [\r\n        \"../img/de3-1.jpg\",\r\n        \"../img/de3-2.jpg\",\r\n        \"../img/de3-3.jpg\",\r\n        \"../img/de3-4.jpg\",\r\n        \"../img/de3-5.jpg\",\r\n        \"../img/de3-6.jpg\",\r\n        \"../img/de3-7.jpg\",\r\n        \"../img/de3-8.jpg\",\r\n        \"../img/de3-9.jpg\",\r\n        \"../img/de3-10.jpg\",\r\n        \"../img/de3-11.jpg\",\r\n        \"../img/de3-12.jpg\",\r\n        \"../img/de3-13.jpg\",\r\n        \"../img/de3-14.jpg\",\r\n        \"../img/de3-15.jpg\",\r\n        \"../img/de3-16.jpg\",\r\n        \"../img/de3-17.jpg\",\r\n        \"../img/de3-18.jpg\",\r\n        \"../img/de3-19.jpg\",\r\n        \"../img/de3-20.jpg\",\r\n        \"../img/de3-21.jpg\",\r\n        \"../img/de3-22.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner3-1.jpg\",\r\n        \"../img/de-banner3-2.jpg\",\r\n        \"../img/de-banner3-3.jpg\",\r\n        \"../img/de-banner3-4.jpg\",\r\n        \"../img/de-banner3-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"白色（现货）;XL\",\"src\":\"../img/sel3-1.jpg\"},\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel3-2.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (4, 'SUPERTOFU(SPTF)AW21可变长短 造型叠穿 深色蓝绿格纹套头外套', 21, 429, '{\r\n    \"img\": [\r\n        \"../img/de4-1.jpg\",\r\n        \"../img/de4-2.jpg\",\r\n        \"../img/de4-3.jpg\",\r\n        \"../img/de4-4.jpg\",\r\n        \"../img/de4-5.jpg\",\r\n        \"../img/de4-6.jpg\",\r\n        \"../img/de4-7.jpg\",\r\n        \"../img/de4-8.jpg\",\r\n        \"../img/de4-9.jpg\",\r\n        \"../img/de4-10.jpg\",\r\n        \"../img/de4-11.jpg\",\r\n        \"../img/de4-12.jpg\",\r\n        \"../img/de4-13.jpg\",\r\n        \"../img/de4-14.jpg\",\r\n        \"../img/de4-15.jpg\",\r\n        \"../img/de4-16.jpg\",\r\n        \"../img/de4-17.jpg\",\r\n        \"../img/de4-18.jpg\",\r\n        \"../img/de4-19.jpg\",\r\n        \"../img/de4-20.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner4-1.jpg\",\r\n        \"../img/de-banner4-2.jpg\",\r\n        \"../img/de-banner4-3.jpg\",\r\n        \"../img/de-banner4-4.jpg\",\r\n        \"../img/de-banner4-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"蓝绿格纹（现货）;XL\",\"src\":\"../img/sel4-1.jpg\"},\r\n        {\"color\": \"军绿色（现货）;XL\",\"src\":\"../img/sel4-2.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (5, 'SUPERTOFU(SPTF)AW21复古BOX LOGO标语图案  加绒连帽卫衣', 42, 329, '{\r\n    \"img\": [\r\n        \"../img/de5-1.jpg\",\r\n        \"../img/de5-2.jpg\",\r\n        \"../img/de5-3.jpg\",\r\n        \"../img/de5-4.jpg\",\r\n        \"../img/de5-5.jpg\",\r\n        \"../img/de5-6.jpg\",\r\n        \"../img/de5-7.jpg\",\r\n        \"../img/de5-8.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner5-1.jpg\",\r\n        \"../img/de-banner5-2.jpg\",\r\n        \"../img/de-banner5-3.jpg\",\r\n        \"../img/de-banner5-4.jpg\",\r\n        \"../img/de-banner5-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel5-1.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (6, 'SUPERTOFU(SPTF)AW21 复古学院风排版图案 错位拼接 加绒圆领卫衣', 17, 309, '{\r\n    \"img\": [\r\n        \"../img/de6-1.jpg\",\r\n        \"../img/de6-2.jpg\",\r\n        \"../img/de6-3.jpg\",\r\n        \"../img/de6-4.jpg\",\r\n        \"../img/de6-5.jpg\",\r\n        \"../img/de6-6.jpg\",\r\n        \"../img/de6-7.jpg\",\r\n        \"../img/de6-8.jpg\",\r\n        \"../img/de6-9.jpg\",\r\n        \"../img/de6-10.jpg\",\r\n        \"../img/de6-11.jpg\",\r\n        \"../img/de6-12.jpg\",\r\n        \"../img/de6-13.jpg\",\r\n        \"../img/de6-14.jpg\",\r\n        \"../img/de6-15.jpg\",\r\n        \"../img/de6-16.jpg\",\r\n        \"../img/de6-17.jpg\",\r\n        \"../img/de6-18.jpg\",\r\n        \"../img/de6-19.jpg\",\r\n        \"../img/de6-20.jpg\",\r\n        \"../img/de6-21.jpg\",\r\n        \"../img/de6-22.jpg\",\r\n        \"../img/de6-23.jpg\",\r\n        \"../img/de6-24.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner6-1.jpg\",\r\n        \"../img/de-banner6-2.jpg\",\r\n        \"../img/de-banner6-3.jpg\",\r\n        \"../img/de-banner6-4.jpg\",\r\n        \"../img/de-banner6-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel6-1.jpg\"},\r\n        {\"color\": \"浅花灰（现货）;XL\",\"src\":\"../img/sel6-2.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (8, 'SUPERTOFU(SPTF)AW21 复古锁链绣主题图案 短款洗水条纹牛仔夹克', 10, 599, '{\r\n    \"img\": [\r\n        \"../img/de8-1.jpg\",\r\n        \"../img/de8-2.jpg\",\r\n        \"../img/de8-3.jpg\",\r\n        \"../img/de8-4.jpg\",\r\n        \"../img/de8-5.jpg\",\r\n        \"../img/de8-6.jpg\",\r\n        \"../img/de8-7.jpg\",\r\n        \"../img/de8-8.jpg\",\r\n        \"../img/de8-9.jpg\",\r\n        \"../img/de8-10.jpg\",\r\n        \"../img/de8-11.jpg\",\r\n        \"../img/de8-12.jpg\",\r\n        \"../img/de8-13.jpg\",\r\n        \"../img/de8-14.jpg\",\r\n        \"../img/de8-15.jpg\",\r\n        \"../img/de8-16.jpg\",\r\n        \"../img/de8-17.jpg\",\r\n        \"../img/de8-18.jpg\",\r\n        \"../img/de8-19.jpg\",\r\n        \"../img/de8-20.jpg\",\r\n        \"../img/de8-21.jpg\",\r\n        \"../img/de8-22.jpg\",\r\n        \"../img/de8-23.jpg\",\r\n        \"../img/de8-24.jpg\",\r\n        \"../img/de8-25.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner8-1.jpg\",\r\n        \"../img/de-banner8-2.jpg\",\r\n        \"../img/de-banner8-3.jpg\",\r\n        \"../img/de-banner8-4.jpg\",\r\n        \"../img/de-banner8-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"条纹牛仔（现货）;XL\",\"src\":\"../img/sel8-1.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (9, 'SUPERTOFU(SPTF)AW21新品 音符玫瑰 刺绣图案 270g厚实长袖T恤', 24, 269, '{\r\n    \"img\": [\r\n        \"../img/de9-1.jpg\",\r\n        \"../img/de9-2.jpg\",\r\n        \"../img/de9-3.jpg\",\r\n        \"../img/de9-4.jpg\",\r\n        \"../img/de9-5.jpg\",\r\n        \"../img/de9-6.jpg\",\r\n        \"../img/de9-7.jpg\",\r\n        \"../img/de9-8.jpg\",\r\n        \"../img/de9-9.jpg\",\r\n        \"../img/de9-10.jpg\",\r\n        \"../img/de9-11.jpg\",\r\n        \"../img/de9-12.jpg\",\r\n        \"../img/de9-13.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner9-1.jpg\",\r\n        \"../img/de-banner9-2.jpg\",\r\n        \"../img/de-banner9-3.jpg\",\r\n        \"../img/de-banner9-4.jpg\",\r\n        \"../img/de-banner9-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"深灰色（现货）;XL\",\"src\":\"../img/sel9-1.jpg\"},\r\n        {\"color\": \"白色（现货）;XL\",\"src\":\"../img/sel9-2.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (10, 'SUPERTOFU(SPTF)主题复古刺绣图案 竖条纹长袖衬衫', 14, 329, '{\r\n    \"img\": [\r\n        \"../img/de10-1.jpg\",\r\n        \"../img/de10-2.jpg\",\r\n        \"../img/de10-3.jpg\",\r\n        \"../img/de10-4.jpg\",\r\n        \"../img/de10-5.jpg\",\r\n        \"../img/de10-6.jpg\",\r\n        \"../img/de10-7.jpg\",\r\n        \"../img/de10-8.jpg\",\r\n        \"../img/de10-9.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner10-1.jpg\",\r\n        \"../img/de-banner10-2.jpg\",\r\n        \"../img/de-banner10-3.jpg\",\r\n        \"../img/de-banner10-4.jpg\",\r\n        \"../img/de-banner10-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"红色条纹（现货）;XL\",\"src\":\"../img/sel10-1.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (11, 'SUPERTOFU 双摺烫中缝 垂感宽松 百搭休闲 黑色直筒西裤', 10, 293, '{\r\n    \"img\": [\r\n        \"../img/de11-1.jpg\",\r\n        \"../img/de11-2.jpg\",\r\n        \"../img/de11-3.jpg\",\r\n        \"../img/de11-4.jpg\",\r\n        \"../img/de11-5.jpg\",\r\n        \"../img/de11-6.jpg\",\r\n        \"../img/de11-7.jpg\",\r\n        \"../img/de11-8.jpg\",\r\n        \"../img/de11-9.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner11-1.jpg\",\r\n        \"../img/de-banner11-2.jpg\",\r\n        \"../img/de-banner11-3.jpg\",\r\n        \"../img/de-banner11-4.jpg\",\r\n        \"../img/de-banner11-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel11-1.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (12, 'SUPERTOFU(SPTF)原创主题玫瑰图案 宽松ALOHA夏威夷短袖衬衫', 12, 197, '{\r\n    \"img\": [\r\n        \"../img/de12-1.jpg\",\r\n        \"../img/de12-2.jpg\",\r\n        \"../img/de12-3.jpg\",\r\n        \"../img/de12-4.jpg\",\r\n        \"../img/de12-5.jpg\",\r\n        \"../img/de12-6.jpg\",\r\n        \"../img/de12-7.jpg\",\r\n        \"../img/de12-8.jpg\",\r\n        \"../img/de12-9.jpg\",\r\n        \"../img/de12-10.jpg\",\r\n        \"../img/de12-11.jpg\",\r\n        \"../img/de12-12.jpg\",\r\n        \"../img/de12-13.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner12-1.jpg\",\r\n        \"../img/de-banner12-2.jpg\",\r\n        \"../img/de-banner12-3.jpg\",\r\n        \"../img/de-banner12-4.jpg\",\r\n        \"../img/de-banner12-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel12-1.jpg\"},\r\n        {\"color\": \"白色（现货）;XL\",\"src\":\"../img/sel12-2.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (13, 'SUPERTOFU(SPTF)SS21新品 刺绣细节垂感休闲薄款速干无领外套衬衫', 42, 234, '{\r\n    \"img\": [\r\n        \"../img/de13-1.jpg\",\r\n        \"../img/de13-2.jpg\",\r\n        \"../img/de13-3.jpg\",\r\n        \"../img/de13-4.jpg\",\r\n        \"../img/de13-5.jpg\",\r\n        \"../img/de13-6.jpg\",\r\n        \"../img/de13-7.jpg\",\r\n        \"../img/de13-8.jpg\",\r\n        \"../img/de13-9.jpg\",\r\n        \"../img/de13-10.jpg\",\r\n        \"../img/de13-11.jpg\",\r\n        \"../img/de13-12.jpg\",\r\n        \"../img/de13-13.jpg\",\r\n        \"../img/de13-14.jpg\",\r\n        \"../img/de13-15.jpg\",\r\n        \"../img/de13-16.jpg\",\r\n        \"../img/de13-17.jpg\",\r\n        \"../img/de13-18.jpg\",\r\n        \"../img/de13-19.jpg\",\r\n        \"../img/de13-20.jpg\",\r\n        \"../img/de13-21.jpg\",\r\n        \"../img/de13-22.jpg\",\r\n        \"../img/de13-23.jpg\",\r\n        \"../img/de13-24.jpg\",\r\n        \"../img/de13-25.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner13-1.jpg\",\r\n        \"../img/de-banner13-2.jpg\",\r\n        \"../img/de-banner13-3.jpg\",\r\n        \"../img/de-banner13-4.jpg\",\r\n        \"../img/de-banner13-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"天蓝色（现货）;XL\",\"src\":\"../img/sel13-1.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (14, 'SUPERTOFU(SPTF) AW22 复古版式 骷髅主题刺绣图案 加绒圆领卫衣', 6, 276, '{\r\n    \"img\": [\r\n        \"../img/de14-1.jpg\",\r\n        \"../img/de14-2.jpg\",\r\n        \"../img/de14-3.jpg\",\r\n        \"../img/de14-4.jpg\",\r\n        \"../img/de14-5.jpg\",\r\n        \"../img/de14-6.jpg\",\r\n        \"../img/de14-7.jpg\",\r\n        \"../img/de14-8.jpg\",\r\n        \"../img/de14-9.jpg\",\r\n        \"../img/de14-10.jpg\",\r\n        \"../img/de14-11.jpg\",\r\n        \"../img/de14-12.jpg\",\r\n        \"../img/de14-13.jpg\",\r\n        \"../img/de14-14.jpg\",\r\n        \"../img/de14-15.jpg\",\r\n        \"../img/de14-16.jpg\",\r\n        \"../img/de14-17.jpg\",\r\n        \"../img/de14-18.jpg\",\r\n        \"../img/de14-19.jpg\",\r\n        \"../img/de14-20.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner14-1.jpg\",\r\n        \"../img/de-banner14-2.jpg\",\r\n        \"../img/de-banner14-3.jpg\",\r\n        \"../img/de-banner14-4.jpg\",\r\n        \"../img/de-banner14-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"浅灰色（现货）;XL\",\"src\":\"../img/sel14-1.jpg\"},\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel14-2.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (15, 'SUPERTOFU(SPTF)SS22新品 经典P-44工装口袋 紫色宽松条纹衬衫', 3, 276, '{\r\n    \"img\": [\r\n        \"../img/de15-1.jpg\",\r\n        \"../img/de15-2.jpg\",\r\n        \"../img/de15-3.jpg\",\r\n        \"../img/de15-4.jpg\",\r\n        \"../img/de15-5.jpg\",\r\n        \"../img/de15-6.jpg\",\r\n        \"../img/de15-7.jpg\",\r\n        \"../img/de15-8.jpg\",\r\n        \"../img/de15-9.jpg\",\r\n        \"../img/de15-10.jpg\",\r\n        \"../img/de15-11.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner15-1.jpg\",\r\n        \"../img/de-banner15-2.jpg\",\r\n        \"../img/de-banner15-3.jpg\",\r\n        \"../img/de-banner15-4.jpg\",\r\n        \"../img/de-banner15-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"紫色条纹（现货）;XL\",\"src\":\"../img/sel15-1.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (16, 'SUPERTOFU新品LifeWeLive篮球主题眼形图案 微弹速干运动长袖T恤', 127, 186, '{\r\n    \"img\": [\r\n        \"../img/de16-1.jpg\",\r\n        \"../img/de16-2.jpg\",\r\n        \"../img/de16-3.jpg\",\r\n        \"../img/de16-4.jpg\",\r\n        \"../img/de16-5.jpg\",\r\n        \"../img/de16-6.jpg\",\r\n        \"../img/de16-7.jpg\",\r\n        \"../img/de16-8.jpg\",\r\n        \"../img/de16-9.jpg\",\r\n        \"../img/de16-10.jpg\",\r\n        \"../img/de16-11.jpg\",\r\n        \"../img/de16-12.jpg\",\r\n        \"../img/de16-13.jpg\",\r\n        \"../img/de16-14.jpg\",\r\n        \"../img/de16-15.jpg\",\r\n        \"../img/de16-16.jpg\",\r\n        \"../img/de16-17.jpg\",\r\n        \"../img/de16-18.jpg\",\r\n        \"../img/de16-19.jpg\",\r\n        \"../img/de16-20.jpg\",\r\n        \"../img/de16-21.jpg\",\r\n        \"../img/de16-22.jpg\",\r\n        \"../img/de16-23.jpg\",\r\n        \"../img/de16-24.jpg\",\r\n        \"../img/de16-25.jpg\",\r\n        \"../img/de16-26.jpg\",\r\n        \"../img/de16-27.jpg\",\r\n        \"../img/de16-28.jpg\",\r\n        \"../img/de16-29.jpg\",\r\n        \"../img/de16-30.jpg\",\r\n        \"../img/de16-31.jpg\",\r\n        \"../img/de16-32.jpg\",\r\n        \"../img/de16-33.jpg\",\r\n        \"../img/de16-34.jpg\",\r\n        \"../img/de16-35.jpg\",\r\n        \"../img/de16-36.jpg\",\r\n        \"../img/de16-37.jpg\",\r\n        \"../img/de16-38.jpg\",\r\n        \"../img/de16-39.jpg\",\r\n        \"../img/de16-40.jpg\",\r\n        \"../img/de16-41.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner16-1.jpg\",\r\n        \"../img/de-banner16-2.jpg\",\r\n        \"../img/de-banner16-3.jpg\",\r\n        \"../img/de-banner16-4.jpg\",\r\n        \"../img/de-banner16-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"深灰色（现货）;XL\",\"src\":\"../img/sel15-1.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (17, 'SUPERTOFU(SPTF) SS22 原创主题图案细节唛头270g面料加厚短袖T恤', 74, 169, '{\r\n    \"img\": [\r\n        \"../img/de17-1.jpg\",\r\n        \"../img/de17-2.jpg\",\r\n        \"../img/de17-3.jpg\",\r\n        \"../img/de17-4.jpg\",\r\n        \"../img/de17-5.jpg\",\r\n        \"../img/de17-6.jpg\",\r\n        \"../img/de17-7.jpg\",\r\n        \"../img/de17-8.jpg\",\r\n        \"../img/de17-9.jpg\",\r\n        \"../img/de17-10.jpg\",\r\n        \"../img/de17-11.jpg\",\r\n        \"../img/de17-12.jpg\",\r\n        \"../img/de17-13.jpg\",\r\n        \"../img/de17-14.jpg\",\r\n        \"../img/de17-15.jpg\",\r\n        \"../img/de17-16.jpg\",\r\n        \"../img/de17-17.jpg\",\r\n        \"../img/de17-18.jpg\",\r\n        \"../img/de17-19.jpg\",\r\n        \"../img/de17-20.jpg\",\r\n        \"../img/de17-21.jpg\",\r\n        \"../img/de17-22.jpg\",\r\n        \"../img/de17-23.jpg\",\r\n        \"../img/de17-24.jpg\",\r\n        \"../img/de17-25.jpg\",\r\n        \"../img/de17-26.jpg\",\r\n        \"../img/de17-27.jpg\",\r\n        \"../img/de17-28.jpg\",\r\n        \"../img/de17-29.jpg\",\r\n        \"../img/de17-30.jpg\",\r\n        \"../img/de17-31.jpg\",\r\n        \"../img/de17-32.jpg\",\r\n        \"../img/de17-33.jpg\",\r\n        \"../img/de17-34.jpg\",\r\n        \"../img/de17-35.jpg\",\r\n        \"../img/de17-36.jpg\",\r\n        \"../img/de17-37.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner17-1.jpg\",\r\n        \"../img/de-banner17-2.jpg\",\r\n        \"../img/de-banner17-3.jpg\",\r\n        \"../img/de-banner17-4.jpg\",\r\n        \"../img/de-banner17-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"白色（现货）;XL\",\"src\":\"../img/sel17-1.jpg\"},\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel17-2.jpg\"},\r\n        {\"color\": \"深花灰色（现货）;XL\",\"src\":\"../img/sel17-3.jpg\"},\r\n        {\"color\": \"浅蓝色（现货）;XL\",\"src\":\"../img/sel17-4.jpg\"},\r\n        {\"color\": \"棕色（现货）;XL\",\"src\":\"../img/sel17-5.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (18, 'SUPERTOFU(SPTF) 品牌缩写标语 多色可选 270g面料加厚 短袖T恤', 46, 143, '{\r\n    \"img\": [\r\n        \"../img/de18-1.jpg\",\r\n        \"../img/de18-2.jpg\",\r\n        \"../img/de18-3.jpg\",\r\n        \"../img/de18-4.jpg\",\r\n        \"../img/de18-5.jpg\",\r\n        \"../img/de18-6.jpg\",\r\n        \"../img/de18-7.jpg\",\r\n        \"../img/de18-8.jpg\",\r\n        \"../img/de18-9.jpg\",\r\n        \"../img/de18-10.jpg\",\r\n        \"../img/de18-11.jpg\",\r\n        \"../img/de18-12.jpg\",\r\n        \"../img/de18-13.jpg\",\r\n        \"../img/de18-14.jpg\",\r\n        \"../img/de18-15.jpg\",\r\n        \"../img/de18-16.jpg\",\r\n        \"../img/de18-17.jpg\",\r\n        \"../img/de18-18.jpg\",\r\n        \"../img/de18-19.jpg\",\r\n        \"../img/de18-20.jpg\",\r\n        \"../img/de18-21.jpg\",\r\n        \"../img/de18-22.jpg\",\r\n        \"../img/de18-23.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner18-1.jpg\",\r\n        \"../img/de-banner18-2.jpg\",\r\n        \"../img/de-banner18-3.jpg\",\r\n        \"../img/de-banner18-4.jpg\",\r\n        \"../img/de-banner18-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"棕色（现货）;XL\",\"src\":\"../img/sel17-1.jpg\"},\r\n        {\"color\": \"灰绿色（现货）;XL\",\"src\":\"../img/sel17-2.jpg\"},\r\n        {\"color\": \"白色（现货）;XL\",\"src\":\"../img/sel17-3.jpg\"},\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel17-4.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (19, 'SUPERTOFU(SPTF) SS22 音乐主题 手绘图案 270g面料加厚 短袖T恤', 37, 169, '{\r\n    \"img\": [\r\n        \"../img/de19-1.jpg\",\r\n        \"../img/de19-2.jpg\",\r\n        \"../img/de19-3.jpg\",\r\n        \"../img/de19-4.jpg\",\r\n        \"../img/de19-5.jpg\",\r\n        \"../img/de19-6.jpg\",\r\n        \"../img/de19-7.jpg\",\r\n        \"../img/de19-8.jpg\",\r\n        \"../img/de19-9.jpg\",\r\n        \"../img/de19-10.jpg\",\r\n        \"../img/de19-11.jpg\",\r\n        \"../img/de19-12.jpg\",\r\n        \"../img/de19-13.jpg\",\r\n        \"../img/de19-14.jpg\",\r\n        \"../img/de19-15.jpg\",\r\n        \"../img/de19-16.jpg\",\r\n        \"../img/de19-17.jpg\",\r\n        \"../img/de19-18.jpg\",\r\n        \"../img/de19-19.jpg\",\r\n        \"../img/de19-20.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner19-1.jpg\",\r\n        \"../img/de-banner19-2.jpg\",\r\n        \"../img/de-banner19-3.jpg\",\r\n        \"../img/de-banner19-4.jpg\",\r\n        \"../img/de-banner19-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"白色（现货）;XL\",\"src\":\"../img/sel19-1.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (20, 'SUPERTOFU(SPTF) SS22 音乐主题 Sofa company文字排版 短袖T恤', 21, 169, '{\r\n    \"img\": [\r\n        \"../img/de20-1.jpg\",\r\n        \"../img/de20-2.jpg\",\r\n        \"../img/de20-3.jpg\",\r\n        \"../img/de20-4.jpg\",\r\n        \"../img/de20-5.jpg\",\r\n        \"../img/de20-6.jpg\",\r\n        \"../img/de20-7.jpg\",\r\n        \"../img/de20-8.jpg\",\r\n        \"../img/de20-9.jpg\",\r\n        \"../img/de20-10.jpg\",\r\n        \"../img/de20-11.jpg\",\r\n        \"../img/de20-12.jpg\",\r\n        \"../img/de20-13.jpg\",\r\n        \"../img/de20-14.jpg\",\r\n        \"../img/de20-15.jpg\",\r\n        \"../img/de20-16.jpg\",\r\n        \"../img/de20-17.jpg\",\r\n        \"../img/de20-18.jpg\",\r\n        \"../img/de20-19.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner20-1.jpg\",\r\n        \"../img/de-banner20-2.jpg\",\r\n        \"../img/de-banner20-3.jpg\",\r\n        \"../img/de-banner20-4.jpg\",\r\n        \"../img/de-banner20-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"沙色（现货）;XL\",\"src\":\"../img/sel20-1.jpg\"},\r\n        {\"color\": \"黑色（现货）;XL\",\"src\":\"../img/sel20-1.jpg\"}\r\n    ]\r\n}');
INSERT INTO `details` VALUES (21, 'SUPERTOFU(SPTF)AW21白蓝条纹 宽松羊毛混纺针织毛衣', 14, 279, '{\r\n    \"img\": [\r\n        \"../img/de21-1.jpg\",\r\n        \"../img/de21-2.jpg\",\r\n        \"../img/de21-3.jpg\",\r\n        \"../img/de21-4.jpg\",\r\n        \"../img/de21-5.jpg\",\r\n        \"../img/de21-6.jpg\",\r\n        \"../img/de21-7.jpg\",\r\n        \"../img/de21-8.jpg\",\r\n        \"../img/de21-9.jpg\",\r\n        \"../img/de21-10.jpg\",\r\n        \"../img/de21-11.jpg\",\r\n        \"../img/de21-12.jpg\",\r\n        \"../img/de21-13.jpg\",\r\n        \"../img/de21-14.jpg\",\r\n        \"../img/de21-15.jpg\",\r\n        \"../img/de-footer.jpg\"\r\n    ]\r\n}', '{\r\n    \"img\": [\r\n        \"../img/de-banner21-1.jpg\",\r\n        \"../img/de-banner21-2.jpg\",\r\n        \"../img/de-banner21-3.jpg\",\r\n        \"../img/de-banner21-4.jpg\",\r\n        \"../img/de-banner21-5.jpg\"\r\n    ]\r\n}', '{\r\n    \"select\": [\r\n        {\"color\": \"条纹（现货）;XL\",\"src\":\"../img/sel20-1.jpg\"}\r\n    ]\r\n}');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` int NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `num` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', 349, '../img/pb-con-1.jpg', 130);
INSERT INTO `goods` VALUES (2, 'SUPERTOFU(SPTF) SS22 主题图案 休闲轻爽 220g卷边无袖背心', 129, '../img/pb-con-2.jpg', 300);
INSERT INTO `goods` VALUES (3, 'SUPERTOFU(SPTF) AW22 眼睛椰树手绘图案 袖臂细节 270g长袖TEE', 268, '../img/pb-con-3.jpg', 87);
INSERT INTO `goods` VALUES (4, 'SUPERTOFU(SPTF)AW21可变长短 造型叠穿 深色蓝绿格纹套头外套', 429, '../img/pb-con-4.jpg', 112);
INSERT INTO `goods` VALUES (5, 'SUPERTOFU(SPTF)AW21复古BOX LOGO标语图案  加绒连帽卫衣', 329, '../img/pb-con-5.jpg', 160);
INSERT INTO `goods` VALUES (6, 'SUPERTOFU(SPTF)AW21 复古学院风排版图案 错位拼接 加绒圆领卫衣', 309, '../img/pb-con-6.jpg', 107);
INSERT INTO `goods` VALUES (8, 'SUPERTOFU(SPTF)AW21 复古锁链绣主题图案 短款洗水条纹牛仔夹克', 599, '../img/pb-con-8.jpg', 111);
INSERT INTO `goods` VALUES (9, 'SUPERTOFU(SPTF)AW21新品 音符玫瑰 刺绣图案 270g厚实长袖T恤', 269, '../img/pb-con-9.jpg', 161);
INSERT INTO `goods` VALUES (10, 'SUPERTOFU(SPTF)主题复古刺绣图案 竖条纹长袖衬衫', 329, '../img/pb-con-10.jpg', 113);
INSERT INTO `goods` VALUES (11, 'SUPERTOFU 双摺烫中缝 垂感宽松 百搭休闲 黑色直筒西裤', 293, '../img/pb-con-11.jpg', 103);
INSERT INTO `goods` VALUES (12, 'SUPERTOFU(SPTF)原创主题玫瑰图案 宽松ALOHA夏威夷短袖衬衫', 195, '../img/pb-con-12.jpg', 77);
INSERT INTO `goods` VALUES (13, 'SUPERTOFU(SPTF)SS21新品 刺绣细节垂感休闲薄款速干无领外套衬衫', 234, '../img/pb-con-13.jpg', 203);
INSERT INTO `goods` VALUES (14, 'SUPERTOFU(SPTF) AW22 复古版式 骷髅主题刺绣图案 加绒圆领卫衣', 276, '../img/pb-con-14.jpg', 61);
INSERT INTO `goods` VALUES (15, 'SUPERTOFU(SPTF)SS22新品 经典P-44工装口袋 紫色宽松条纹衬衫', 276, '../img/pb-con-15.jpg', 40);
INSERT INTO `goods` VALUES (16, 'SUPERTOFU新品LifeWeLive篮球主题眼形图案 微弹速干运动长袖T恤', 186, '../img/pb-con-16.jpg', 444);
INSERT INTO `goods` VALUES (17, 'SUPERTOFU(SPTF) SS22 原创主题图案细节唛头270g面料加厚短袖T恤', 169, '../img/pb-con-17.jpg', 244);
INSERT INTO `goods` VALUES (18, 'SUPERTOFU(SPTF) 品牌缩写标语 多色可选 270g面料加厚 短袖T恤', 143, '../img/pb-con-18.jpg', 144);
INSERT INTO `goods` VALUES (19, 'SUPERTOFU(SPTF) SS22 音乐主题 手绘图案 270g面料加厚 短袖T恤', 169, '../img/pb-con-19.jpg', 94);
INSERT INTO `goods` VALUES (20, 'SUPERTOFU(SPTF) SS22 音乐主题 Sofa company文字排版 短袖T恤', 169, '../img/pb-con-20.jpg', 84);
INSERT INTO `goods` VALUES (21, 'SUPERTOFU(SPTF)AW21白蓝条纹 宽松羊毛混纺针织毛衣', 279, '../img/pb-con-21.jpg', 71);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `num` int NULL DEFAULT NULL,
  `price` int NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (35, 'SUPERTOFU(SPTF) AW22 复古版式 骷髅主题刺绣图案 加绒圆领卫衣', '../img/sel14-1.jpg', 1, 276, '浅灰色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (36, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-2.jpg', 1, 349, '红色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (39, 'SUPERTOFU(SPTF) SS22 音乐主题 手绘图案 270g面料加厚 短袖T恤', '../img/sel19-1.jpg', 1, 169, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (40, 'SUPERTOFU(SPTF)AW21新品 音符玫瑰 刺绣图案 270g厚实长袖T恤', '../img/sel9-2.jpg', 1, 269, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (41, 'SUPERTOFU(SPTF)SS21新品 刺绣细节垂感休闲薄款速干无领外套衬衫', '../img/sel13-1.jpg', 4, 234, '天蓝色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (42, 'SUPERTOFU(SPTF) SS22 音乐主题 手绘图案 270g面料加厚 短袖T恤', '../img/sel19-1.jpg', 2, 169, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (43, 'SUPERTOFU(SPTF) AW22 复古版式 骷髅主题刺绣图案 加绒圆领卫衣', '../img/sel14-1.jpg', 1, 276, '浅灰色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (44, 'SUPERTOFU(SPTF)AW21新品 音符玫瑰 刺绣图案 270g厚实长袖T恤', '../img/sel9-2.jpg', 1, 269, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (45, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-2.jpg', 1, 349, '红色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (46, 'SUPERTOFU(SPTF)SS21新品 刺绣细节垂感休闲薄款速干无领外套衬衫', '../img/sel13-1.jpg', 1, 234, '天蓝色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (47, 'SUPERTOFU(SPTF)SS21新品 刺绣细节垂感休闲薄款速干无领外套衬衫', '../img/sel13-1.jpg', 1, 234, '天蓝色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (48, 'SUPERTOFU(SPTF)AW21新品 音符玫瑰 刺绣图案 270g厚实长袖T恤', '../img/sel9-2.jpg', 1, 269, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (49, 'SUPERTOFU(SPTF)AW21新品 音符玫瑰 刺绣图案 270g厚实长袖T恤', '../img/sel9-2.jpg', 1, 269, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (50, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-2.jpg', 1, 349, '红色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (51, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-2.jpg', 1, 349, '红色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (52, 'SUPERTOFU(SPTF) SS22 音乐主题 手绘图案 270g面料加厚 短袖T恤', '../img/sel19-1.jpg', 1, 169, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (53, 'SUPERTOFU(SPTF) AW22 复古版式 骷髅主题刺绣图案 加绒圆领卫衣', '../img/sel14-1.jpg', 1, 276, '浅灰色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (54, 'SUPERTOFU(SPTF)AW21新品 音符玫瑰 刺绣图案 270g厚实长袖T恤', '../img/sel9-2.jpg', 1, 269, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (55, 'SUPERTOFU(SPTF) SS22 音乐主题 手绘图案 270g面料加厚 短袖T恤', '../img/sel19-1.jpg', 1, 169, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (56, 'SUPERTOFU(SPTF) AW22 复古版式 骷髅主题刺绣图案 加绒圆领卫衣', '../img/sel14-1.jpg', 1, 276, '浅灰色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (57, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-1.jpg', 1, 349, '黄色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (58, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-2.jpg', 1, 349, '红色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (59, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-2.jpg', 1, 349, '红色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (60, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-1.jpg', 1, 349, '黄色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (61, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-1.jpg', 7, 349, '黄色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (62, 'SUPERTOFU(SPTF) SS22 音乐主题 手绘图案 270g面料加厚 短袖T恤', '../img/sel19-1.jpg', 1, 169, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (63, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-1.jpg', 7, 349, '黄色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (64, 'SUPERTOFU(SPTF)SS22新品 古巴领 宽松垂感法兰绒 长袖格纹衬衫', '../img/sel1-2.jpg', 1, 349, '红色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (65, 'SUPERTOFU(SPTF)AW21 复古学院风排版图案 错位拼接 加绒圆领卫衣', '../img/sel6-2.jpg', 1, 309, '浅花灰（现货）;XL', 0);
INSERT INTO `order_info` VALUES (66, 'SUPERTOFU(SPTF)AW21新品 音符玫瑰 刺绣图案 270g厚实长袖T恤', '../img/sel9-2.jpg', 1, 269, '白色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (67, 'SUPERTOFU(SPTF)AW21 复古学院风排版图案 错位拼接 加绒圆领卫衣', '../img/sel6-1.jpg', 1, 309, '黑色（现货）;XL', 0);
INSERT INTO `order_info` VALUES (68, 'SUPERTOFU(SPTF)AW21 复古学院风排版图案 错位拼接 加绒圆领卫衣', '../img/sel6-2.jpg', 1, 309, '浅花灰（现货）;XL', 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '18348336467', '$2a$10$rYwvSrDeb88kwVRa0.Lrb.Hz2CYsFFMGXg2s0xTquLTxUYTJN0GLW');
INSERT INTO `users` VALUES (2, '15737391305', '$2a$10$IKVGZP/ruXPBumCeSL63oO7Pzrdo1U9Ns/dCmc4V2cLJj19S0rkQ.');

SET FOREIGN_KEY_CHECKS = 1;
