/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 114.55.94.250:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 23/11/2019 10:59:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ams_address
-- ----------------------------
DROP TABLE IF EXISTS `ams_address`;
CREATE TABLE `ams_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区',
  `detail_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `receiver_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_default` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '1Y;0N',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_address
-- ----------------------------
INSERT INTO `ams_address` VALUES (9, 11, '上海市', '上海城区', '静安区', '南京西路1206', '倪定波', '18257198894', 'false');
INSERT INTO `ams_address` VALUES (14, 11, '浙江省', '杭州市', '萧山区', '临浦镇', '倪定波', '18257198894', 'true');
INSERT INTO `ams_address` VALUES (15, 3, '北京市', '北京城区', '东城区', '鸟巢', '倪定波', '18257495589', 'true');
INSERT INTO `ams_address` VALUES (16, 48, '辽宁省', '丹东市', '东港市', '天天小区15号楼201', 'ndb', '18257198894', 'true');

-- ----------------------------
-- Table structure for ams_brand
-- ----------------------------
DROP TABLE IF EXISTS `ams_brand`;
CREATE TABLE `ams_brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_letter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(255) NULL DEFAULT 0,
  `status` int(255) NULL DEFAULT 1,
  `is_delete` int(255) NULL DEFAULT 0,
  `show_status` int(255) NULL DEFAULT 1,
  `product_num` int(20) NULL DEFAULT 100,
  `comment_num` int(20) NULL DEFAULT 100,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_brand
-- ----------------------------
INSERT INTO `ams_brand` VALUES (2, '奔驰', '', 'B', 0, 1, 1, 1, 100, 88);
INSERT INTO `ams_brand` VALUES (3, '本田', '', '', 0, 1, 1, 1, 99, 655);
INSERT INTO `ams_brand` VALUES (4, '丰田', '', '', 0, 1, 1, 1, 87, 78);
INSERT INTO `ams_brand` VALUES (5, '奥迪', '', '', 0, 1, 1, 1, 78, 42);
INSERT INTO `ams_brand` VALUES (34, '林肯', '', '', 0, 1, 1, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (58, '大众', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/10-19-13/204-26204982-4592-47a0-9702-7de529eb9c73.png', 'D', 1, 1, 1, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (74, 'test', '', '', 1, 1, 1, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (75, 'test', '', '', 1, 1, 1, 0, 100, 100);
INSERT INTO `ams_brand` VALUES (76, 'test', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/10-16-03/264-ab8aee50-52f8-4a78-9e34-0c7581737f9c.jpg', 'T', 1, 1, 1, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (77, '大众', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/10-30-57/972-c565ff66-54b5-4fcc-b068-99a78c99bc49.jpg', 'D', 99, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (78, '宝马', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/10-35-43/545-9fa10e56-3bd6-4694-b8e0-2fa0609cbf5f.jpg', 'B', 1, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (79, '保时捷', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/10-53-00/744-da6d12ee-3fb5-4b44-877d-bd5850655260.jpg', 'B', 1, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (80, '本田', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-18-58/333-bb505dec-d2b4-4dfd-aa46-2a364975cbdd.jpg', 'B', 1, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (81, '雪佛兰', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-19-17/115-fb84356d-a6e4-4be4-91a1-e7a3dc5627d1.jpg', 'X', 1, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (82, '雷克萨斯', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-19-37/556-50b78ca1-0284-4fb0-b8f9-ce1a3ae77e06.jpg', 'L', 0, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (83, '雪铁龙', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-20-05/999-fdda4c62-bec6-4bd8-9f99-ba484ca5185d.jpg', 'X', 1, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (84, '福特', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-20-41/447-25b452b6-39a4-40b0-854c-2725540df651.jpg', 'F', 1, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (85, '雷诺', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-20-56/075-bcec723d-dec6-4f5e-a7ef-7393abd6af09.jpg', 'L', 1, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (86, '马自达', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-21-21/186-cdcde787-9ac7-47b9-80e7-487f1678d6db.jpg', 'M', 1, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (87, '奥迪', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-23-16/925-1e9b44ce-38d2-4b42-a22b-8ab7f51f3e86.jpg', 'A', 1, 1, 0, 1, 100, 100);
INSERT INTO `ams_brand` VALUES (88, '12', '', '12', 0, 1, 1, 1, 100, 100);

-- ----------------------------
-- Table structure for ams_brand_recommend
-- ----------------------------
DROP TABLE IF EXISTS `ams_brand_recommend`;
CREATE TABLE `ams_brand_recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NULL DEFAULT NULL,
  `is_recomend` int(255) NULL DEFAULT NULL,
  `sort` int(255) NULL DEFAULT 0,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_brand_recommend
-- ----------------------------
INSERT INTO `ams_brand_recommend` VALUES (12, 85, NULL, 5, '雷诺', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-20-56/075-bcec723d-dec6-4f5e-a7ef-7393abd6af09.jpg');
INSERT INTO `ams_brand_recommend` VALUES (14, 77, NULL, 0, '大众', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/10-30-57/972-c565ff66-54b5-4fcc-b068-99a78c99bc49.jpg');
INSERT INTO `ams_brand_recommend` VALUES (15, 87, NULL, 0, '奥迪', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/12-23-16/925-1e9b44ce-38d2-4b42-a22b-8ab7f51f3e86.jpg');
INSERT INTO `ams_brand_recommend` VALUES (16, 78, NULL, 0, '宝马', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-27/10-35-43/545-9fa10e56-3bd6-4694-b8e0-2fa0609cbf5f.jpg');

-- ----------------------------
-- Table structure for ams_cart
-- ----------------------------
DROP TABLE IF EXISTS `ams_cart`;
CREATE TABLE `ams_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `member_id` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `member_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_kind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `is_delete` int(255) NULL DEFAULT 0,
  `checked` int(255) NULL DEFAULT NULL COMMENT '0未选择，1选中',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_cart
-- ----------------------------
INSERT INTO `ams_cart` VALUES (90, 62, 48, 12.00, 1200.00, 100, NULL, NULL, NULL, NULL, 0, NULL, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-10/15-05-09/907-ec5791b9-67db-4810-9111-953055a7ea18.jpg', '大众途观L后排空调出风口保护罩 内饰改装专用途昂途安L途岳配件');
INSERT INTO `ams_cart` VALUES (93, 63, 11, 1.00, 8.00, 8, NULL, NULL, NULL, NULL, 0, NULL, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/09-17-09/513-d473652d-07fe-4b7d-a737-98971afec50a.png', '123');
INSERT INTO `ams_cart` VALUES (94, 64, 3, 22.00, 22.00, 1, NULL, NULL, NULL, NULL, 0, NULL, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/17-04-22/328-94a63a51-f327-4942-827a-baf6658a2f4d.webp', '汽车车衣车罩车套外罩防晒防雨遮阳四季通用隔热专用冬季保暖加厚');
INSERT INTO `ams_cart` VALUES (110, 64, 49, 22.00, 22.00, 1, NULL, NULL, NULL, NULL, 0, NULL, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/17-04-22/328-94a63a51-f327-4942-827a-baf6658a2f4d.webp', '汽车车衣车罩车套外罩防晒防雨遮阳四季通用隔热专用冬季保暖加厚');

-- ----------------------------
-- Table structure for ams_good_recommend
-- ----------------------------
DROP TABLE IF EXISTS `ams_good_recommend`;
CREATE TABLE `ams_good_recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(255) NULL DEFAULT NULL COMMENT '产品id',
  `is_recommend` int(255) NULL DEFAULT NULL COMMENT '0->未推荐；1->已推荐',
  `sort` int(10) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_good_recommend
-- ----------------------------
INSERT INTO `ams_good_recommend` VALUES (1, 42, NULL, 3);
INSERT INTO `ams_good_recommend` VALUES (3, 59, NULL, 0);
INSERT INTO `ams_good_recommend` VALUES (5, 42, NULL, 0);
INSERT INTO `ams_good_recommend` VALUES (6, 43, NULL, 0);

-- ----------------------------
-- Table structure for ams_hot_recommend
-- ----------------------------
DROP TABLE IF EXISTS `ams_hot_recommend`;
CREATE TABLE `ams_hot_recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `is_recommend` int(255) NULL DEFAULT NULL,
  `sort` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_hot_recommend
-- ----------------------------
INSERT INTO `ams_hot_recommend` VALUES (1, 60, NULL, 1);
INSERT INTO `ams_hot_recommend` VALUES (2, 46, NULL, 0);
INSERT INTO `ams_hot_recommend` VALUES (3, 45, NULL, 0);
INSERT INTO `ams_hot_recommend` VALUES (4, 62, NULL, 0);

-- ----------------------------
-- Table structure for ams_kind
-- ----------------------------
DROP TABLE IF EXISTS `ams_kind`;
CREATE TABLE `ams_kind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT 1,
  `sort` int(255) NULL DEFAULT 1,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_kind
-- ----------------------------
INSERT INTO `ams_kind` VALUES (1, '车镜', '车镜', 1, 1, NULL, '件');
INSERT INTO `ams_kind` VALUES (2, '车门', '车门', 1, 1, NULL, '件');
INSERT INTO `ams_kind` VALUES (3, '车内饰', '车内饰', 1, 1, NULL, '件');
INSERT INTO `ams_kind` VALUES (5, '电子防盗系统', '电子防盗系统', 1, 1, NULL, '件');
INSERT INTO `ams_kind` VALUES (6, '汽车影音', '汽车影音', 1, 3, NULL, '件');
INSERT INTO `ams_kind` VALUES (7, '随车工具', '随车工具', 1, 1, NULL, '件');
INSERT INTO `ams_kind` VALUES (12, '车衣', '车衣', 1, 1, NULL, '件');
INSERT INTO `ams_kind` VALUES (13, '轮胎', '轮胎', 1, 1, NULL, '件');
INSERT INTO `ams_kind` VALUES (14, '坐垫', '坐垫', 1, 12, NULL, '件');
INSERT INTO `ams_kind` VALUES (15, '方向盘', '方向盘', 1, 1, NULL, '件');

-- ----------------------------
-- Table structure for ams_member
-- ----------------------------
DROP TABLE IF EXISTS `ams_member`;
CREATE TABLE `ams_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT 0 COMMENT '0正常1冻结',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `growth` int(255) NULL DEFAULT 0 COMMENT '成长值',
  `point` int(255) NULL DEFAULT 0 COMMENT '积分',
  `level_id` int(11) NULL DEFAULT 1 COMMENT '等级id',
  `money` decimal(55, 0) NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_member
-- ----------------------------
INSERT INTO `ams_member` VALUES (1, 11, '倪定波', NULL, '男', 0, '2019-10-07 20:29:15', 237946, 157369, 1, 887715);
INSERT INTO `ams_member` VALUES (2, 48, '孙诚焕', NULL, NULL, 1, '2019-11-13 20:30:30', 0, 0, 1, 0);
INSERT INTO `ams_member` VALUES (3, 49, '唐哲', NULL, NULL, 0, '2019-11-14 17:40:28', 0, 0, 1, 0);
INSERT INTO `ams_member` VALUES (4, 50, '毛宇航', NULL, NULL, 0, '2019-11-14 17:40:43', 0, 0, 1, 0);
INSERT INTO `ams_member` VALUES (5, 51, '潘嘉伟', NULL, NULL, 0, '2019-11-14 17:41:57', 0, 0, 1, 0);

-- ----------------------------
-- Table structure for ams_member_level
-- ----------------------------
DROP TABLE IF EXISTS `ams_member_level`;
CREATE TABLE `ams_member_level`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grouth` int(255) NULL DEFAULT NULL COMMENT '所需成长值',
  `discount` int(255) NULL DEFAULT NULL COMMENT '0-100',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_member_level
-- ----------------------------
INSERT INTO `ams_member_level` VALUES (1, '普通会员', 0, 100);
INSERT INTO `ams_member_level` VALUES (2, '白银会员', 10000, 90);
INSERT INTO `ams_member_level` VALUES (3, '黄金会员', 50000, 80);
INSERT INTO `ams_member_level` VALUES (4, '钻石会员', 100000, 70);

-- ----------------------------
-- Table structure for ams_new_recommend
-- ----------------------------
DROP TABLE IF EXISTS `ams_new_recommend`;
CREATE TABLE `ams_new_recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `is_recommend` int(255) NULL DEFAULT NULL,
  `sort` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_new_recommend
-- ----------------------------
INSERT INTO `ams_new_recommend` VALUES (1, 59, NULL, 0);
INSERT INTO `ams_new_recommend` VALUES (2, 60, NULL, 0);
INSERT INTO `ams_new_recommend` VALUES (3, 46, NULL, 0);
INSERT INTO `ams_new_recommend` VALUES (4, 62, NULL, 0);

-- ----------------------------
-- Table structure for ams_order
-- ----------------------------
DROP TABLE IF EXISTS `ams_order`;
CREATE TABLE `ams_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL,
  `pay_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT 0 COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单;6->已取消；7->已评价；8申请退货中；9退货中；10拒绝退货；11已完成退货',
  `point` int(255) NULL DEFAULT NULL,
  `growth` int(255) NULL DEFAULT NULL,
  `receiver_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_detail_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delivery_time` datetime(0) NULL DEFAULT NULL,
  `receiver_time` datetime(0) NULL DEFAULT NULL,
  `delivery_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_order
-- ----------------------------
INSERT INTO `ams_order` VALUES (4, 11, '2019-10-10 10:17:10', 570.00, '网页支付', 1, 134, 124, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (9, 11, '2019-10-10 10:29:17', 716.00, '网页支付', 1, 246, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (10, 11, '2019-10-10 20:55:50', 3402.00, NULL, 0, 1107, 1107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (11, 11, '2019-10-10 20:59:07', 9.00, NULL, 0, 99, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (12, 11, '2019-10-10 21:00:12', 1.00, NULL, 0, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (13, 11, '2019-10-13 14:09:48', 1472.00, NULL, 0, 492, 492, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (14, 11, '2019-10-13 14:29:38', 2212.00, NULL, 0, 615, 615, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (15, 11, '2019-10-13 15:36:24', 1.00, NULL, 0, 11, 1, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '临浦', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (16, 11, '2019-10-13 20:01:04', 378.00, '网页支付', 1, 123, 123, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (17, 11, '2019-10-14 22:04:43', 7831.00, '网页支付', 2, 2225, 2215, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (18, 11, '2019-10-14 22:10:57', 1306.00, '网页支付', 8, 380, 370, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (19, 11, '2019-10-16 13:30:56', 41958.00, '网页支付', 8, 13653, 13653, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', '2019-10-16 13:31:42', NULL, '天天开心快递公司');
INSERT INTO `ams_order` VALUES (20, 11, '2019-10-17 15:05:56', 6804.00, '网页支付', 1, 2214, 2214, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (21, 3, '2019-10-23 16:40:46', 1520.00, NULL, 0, 413, 373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (22, 3, '2019-10-23 16:40:46', 1520.00, NULL, 0, 413, 373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (23, 3, '2019-10-23 16:42:09', 2268.00, NULL, 0, 738, 738, '倪定波', '123', '北京市', '北京城区', '东城区', '备件', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (24, 11, '2019-10-23 16:45:34', 3972.00, '网页支付', 1, 1241, 1231, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (25, 11, '2019-10-23 16:50:20', 1306.00, '网页支付', 1, 380, 370, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (26, 11, '2019-10-23 16:53:29', 1306.00, '网页支付', 8, 380, 370, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', '2019-10-23 16:56:44', NULL, '天天开心快递公司');
INSERT INTO `ams_order` VALUES (27, 11, '2019-10-24 14:23:05', 358.00, '网页支付', 1, 123, 123, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (28, 3, '2019-10-31 21:02:53', 25.00, NULL, 0, 334, 123, '倪定波', '123', '北京市', '北京城区', '东城区', '备件', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (29, 11, '2019-11-04 20:52:38', 2260.00, '网页支付', 8, 3080, 6157, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', '2019-11-04 20:54:24', NULL, '天天开心快递公司');
INSERT INTO `ams_order` VALUES (30, 11, '2019-11-05 20:39:15', 125.00, '网页支付', 8, 1670, 615, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', '2019-11-05 20:39:35', NULL, '天天开心快递公司');
INSERT INTO `ams_order` VALUES (31, 11, '2019-11-07 20:26:41', 6660.00, '网页支付', 1, 30792, 67956, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (32, 11, '2019-11-09 15:21:23', 125.00, '网页支付', 8, 1670, 615, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', '2019-11-09 15:21:47', NULL, '天天开心快递公司');
INSERT INTO `ams_order` VALUES (33, 3, '2019-11-11 18:06:31', 1689.00, NULL, 0, 7722, 17013, '倪定波', '123', '北京市', '北京城区', '东城区', '备件', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (34, 11, '2019-11-11 18:13:32', 555.00, '网页支付', 1, 2566, 5663, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (35, 3, '2019-11-14 16:36:01', 25.00, NULL, 0, 334, 123, '倪定波', '18257495589', '北京市', '北京城区', '东城区', '鸟巢', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (36, 48, '2019-11-14 16:59:11', 3885.00, NULL, 0, 17962, 39641, 'ndb', '18257198894', '辽宁省', '丹东市', '东港市', '天天小区15号楼201', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (37, 48, '2019-11-14 17:00:37', 3414.00, NULL, 0, 738, 738, 'ndb', '18257198894', '辽宁省', '丹东市', '东港市', '天天小区15号楼201', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (38, 11, '2019-11-14 17:13:44', 4995.00, '网页支付', 2, 23094, 50967, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', '2019-11-14 17:14:33', NULL, '天天开心快递公司');
INSERT INTO `ams_order` VALUES (39, 11, '2019-11-14 17:47:22', 5550.00, '网页支付', 1, 25660, 56630, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (40, 11, '2019-11-15 09:03:12', 1.00, '网页支付', 1, 11, 1, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (41, 11, '2019-11-22 09:44:03', 1138.00, '网页支付', 1, 246, 246, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (42, 11, '2019-11-22 09:44:21', 388.00, NULL, 0, 111, 111, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (43, 11, '2019-11-22 10:31:31', 378.00, NULL, 0, 123, 123, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (44, 49, '2019-11-22 10:50:10', 555.00, NULL, 0, 2566, 5663, '唐哲', '18257198893', '浙江省', '宁波市', '鄞州区', '天上人间', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (45, 11, '2019-11-22 11:17:30', 84.00, NULL, 0, 77, 84, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (46, 11, '2019-11-22 11:21:07', 555.00, '网页支付', 1, 2566, 5663, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (47, 11, '2019-11-22 11:26:40', 258.00, '网页支付', 1, 123, 123, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (48, 11, '2019-11-22 11:28:13', 288.00, '网页支付', 1, 111, 111, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (49, 11, '2019-11-22 11:30:31', 1055.00, '网页支付', 1, 33400, 12300, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (50, 11, '2019-11-22 12:26:51', 39.30, '网页支付', 1, 199, 199, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (51, 11, '2019-11-22 12:27:33', 39.30, '网页支付', 1, 199, 199, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (52, 11, '2019-11-22 12:29:10', 39.30, '网页支付', 1, 199, 199, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (53, 11, '2019-11-22 12:33:08', 555.00, NULL, 0, 2566, 5663, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (54, 11, '2019-11-22 12:36:46', 199.00, NULL, 0, 199, 199, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (55, 11, '2019-11-22 12:52:14', 39.30, '网页支付', 1, 199, 199, '倪定波', '18257198894', '上海市', '上海城区', '静安区', '南京西路1206', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (56, 11, '2019-11-22 13:16:53', 604.20, '网页支付', 1, 933, 592, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (57, 11, '2019-11-22 13:17:46', 1065.50, '网页支付', 1, 7698, 16989, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (58, 49, '2019-11-22 13:23:38', 199.00, NULL, 0, 199, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (59, 49, '2019-11-22 13:30:48', 199.00, NULL, 0, 199, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (60, 49, '2019-11-22 13:37:58', 12.00, NULL, 0, 11, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ams_order` VALUES (61, 11, '2019-11-22 13:38:25', 388.50, '网页支付', 1, 2566, 5663, '倪定波', '18257198894', '浙江省', '杭州市', '萧山区', '临浦镇', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ams_order_item
-- ----------------------------
DROP TABLE IF EXISTS `ams_order_item`;
CREATE TABLE `ams_order_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单id',
  `product_id` int(11) NULL DEFAULT NULL COMMENT '商品',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_order_item
-- ----------------------------
INSERT INTO `ams_order_item` VALUES (6, 4, 43, 1);
INSERT INTO `ams_order_item` VALUES (7, 4, 42, 1);
INSERT INTO `ams_order_item` VALUES (8, 9, 44, 2);
INSERT INTO `ams_order_item` VALUES (9, 10, 45, 9);
INSERT INTO `ams_order_item` VALUES (10, 11, 42, 9);
INSERT INTO `ams_order_item` VALUES (11, 12, 42, 1);
INSERT INTO `ams_order_item` VALUES (12, 13, 45, 2);
INSERT INTO `ams_order_item` VALUES (13, 13, 44, 2);
INSERT INTO `ams_order_item` VALUES (14, 14, 43, 2);
INSERT INTO `ams_order_item` VALUES (15, 14, 44, 3);
INSERT INTO `ams_order_item` VALUES (16, 15, 42, 1);
INSERT INTO `ams_order_item` VALUES (17, 16, 45, 1);
INSERT INTO `ams_order_item` VALUES (18, 17, 45, 6);
INSERT INTO `ams_order_item` VALUES (19, 17, 44, 6);
INSERT INTO `ams_order_item` VALUES (20, 17, 43, 6);
INSERT INTO `ams_order_item` VALUES (21, 17, 42, 1);
INSERT INTO `ams_order_item` VALUES (22, 18, 45, 1);
INSERT INTO `ams_order_item` VALUES (23, 18, 44, 1);
INSERT INTO `ams_order_item` VALUES (24, 18, 43, 1);
INSERT INTO `ams_order_item` VALUES (25, 18, 42, 1);
INSERT INTO `ams_order_item` VALUES (26, 19, 45, 111);
INSERT INTO `ams_order_item` VALUES (27, 20, 45, 18);
INSERT INTO `ams_order_item` VALUES (28, 21, 43, 2);
INSERT INTO `ams_order_item` VALUES (29, 21, 42, 4);
INSERT INTO `ams_order_item` VALUES (30, 21, 45, 1);
INSERT INTO `ams_order_item` VALUES (31, 22, 43, 2);
INSERT INTO `ams_order_item` VALUES (32, 22, 42, 4);
INSERT INTO `ams_order_item` VALUES (33, 22, 45, 1);
INSERT INTO `ams_order_item` VALUES (34, 23, 45, 6);
INSERT INTO `ams_order_item` VALUES (35, 24, 43, 1);
INSERT INTO `ams_order_item` VALUES (36, 24, 42, 1);
INSERT INTO `ams_order_item` VALUES (37, 24, 45, 9);
INSERT INTO `ams_order_item` VALUES (38, 25, 45, 1);
INSERT INTO `ams_order_item` VALUES (39, 25, 44, 1);
INSERT INTO `ams_order_item` VALUES (40, 25, 43, 1);
INSERT INTO `ams_order_item` VALUES (41, 25, 42, 1);
INSERT INTO `ams_order_item` VALUES (42, 26, 45, 1);
INSERT INTO `ams_order_item` VALUES (43, 26, 44, 1);
INSERT INTO `ams_order_item` VALUES (44, 26, 43, 1);
INSERT INTO `ams_order_item` VALUES (45, 26, 42, 1);
INSERT INTO `ams_order_item` VALUES (46, 27, 44, 1);
INSERT INTO `ams_order_item` VALUES (47, 28, 59, 1);
INSERT INTO `ams_order_item` VALUES (48, 29, 43, 1);
INSERT INTO `ams_order_item` VALUES (49, 29, 45, 3);
INSERT INTO `ams_order_item` VALUES (50, 29, 42, 2);
INSERT INTO `ams_order_item` VALUES (51, 29, 60, 1);
INSERT INTO `ams_order_item` VALUES (52, 30, 59, 5);
INSERT INTO `ams_order_item` VALUES (53, 31, 60, 12);
INSERT INTO `ams_order_item` VALUES (54, 32, 59, 5);
INSERT INTO `ams_order_item` VALUES (55, 33, 60, 3);
INSERT INTO `ams_order_item` VALUES (56, 33, 62, 2);
INSERT INTO `ams_order_item` VALUES (57, 34, 60, 1);
INSERT INTO `ams_order_item` VALUES (58, 35, 59, 1);
INSERT INTO `ams_order_item` VALUES (59, 36, 60, 7);
INSERT INTO `ams_order_item` VALUES (60, 37, 43, 6);
INSERT INTO `ams_order_item` VALUES (61, 38, 60, 9);
INSERT INTO `ams_order_item` VALUES (62, 39, 60, 10);
INSERT INTO `ams_order_item` VALUES (63, 40, 42, 1);
INSERT INTO `ams_order_item` VALUES (64, 41, 43, 2);
INSERT INTO `ams_order_item` VALUES (65, 42, 46, 1);
INSERT INTO `ams_order_item` VALUES (66, 43, 45, 1);
INSERT INTO `ams_order_item` VALUES (67, 44, 60, 1);
INSERT INTO `ams_order_item` VALUES (68, 45, 62, 7);
INSERT INTO `ams_order_item` VALUES (69, 46, 60, 1);
INSERT INTO `ams_order_item` VALUES (70, 47, 44, 1);
INSERT INTO `ams_order_item` VALUES (71, 48, 46, 1);
INSERT INTO `ams_order_item` VALUES (72, 49, 59, 100);
INSERT INTO `ams_order_item` VALUES (73, 50, 65, 1);
INSERT INTO `ams_order_item` VALUES (74, 51, 65, 1);
INSERT INTO `ams_order_item` VALUES (75, 52, 65, 1);
INSERT INTO `ams_order_item` VALUES (76, 53, 60, 1);
INSERT INTO `ams_order_item` VALUES (77, 54, 65, 1);
INSERT INTO `ams_order_item` VALUES (78, 55, 65, 1);
INSERT INTO `ams_order_item` VALUES (79, 56, 42, 13);
INSERT INTO `ams_order_item` VALUES (80, 56, 59, 1);
INSERT INTO `ams_order_item` VALUES (81, 56, 46, 3);
INSERT INTO `ams_order_item` VALUES (82, 56, 45, 1);
INSERT INTO `ams_order_item` VALUES (83, 57, 60, 3);
INSERT INTO `ams_order_item` VALUES (84, 58, 65, 1);
INSERT INTO `ams_order_item` VALUES (85, 59, 65, 1);
INSERT INTO `ams_order_item` VALUES (86, 60, 62, 1);
INSERT INTO `ams_order_item` VALUES (87, 61, 60, 1);

-- ----------------------------
-- Table structure for ams_order_return
-- ----------------------------
DROP TABLE IF EXISTS `ams_order_return`;
CREATE TABLE `ams_order_return`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单id',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推货理由',
  `return_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '返还金额',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `apply_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0：待处理；1：退货中；2：已完成；3：已拒绝',
  `handle_time` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  `handle_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理备注',
  `handle_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_order_return
-- ----------------------------
INSERT INTO `ams_order_return` VALUES (7, 18, '不行', 1.00, '2019-10-16 22:06:54', '倪定波', '3', '2019-11-07 21:32:45', NULL, '系统管理员');
INSERT INTO `ams_order_return` VALUES (8, 29, '我去恶趣味', 1.00, '2019-11-05 20:23:42', '倪定波', '3', '2019-11-10 15:56:04', '驱蚊器', '倪定波');
INSERT INTO `ams_order_return` VALUES (9, 26, '阿达', 1.00, '2019-11-05 20:26:36', '倪定波', '0', NULL, NULL, NULL);
INSERT INTO `ams_order_return` VALUES (10, 19, '23123 ', 41958.00, '2019-11-05 20:29:18', '倪定波', '2', '2019-11-07 21:36:48', '撒大大', '系统管理员');
INSERT INTO `ams_order_return` VALUES (11, 30, '不想要', 125.00, '2019-11-05 20:44:52', '倪定波', '3', '2019-11-07 21:38:29', '阿萨大大', '系统管理员');
INSERT INTO `ams_order_return` VALUES (12, 30, '不要脸\n', 125.00, '2019-11-09 15:23:18', '倪定波', '0', NULL, NULL, NULL);
INSERT INTO `ams_order_return` VALUES (13, 32, '啦啦啦啦', 125.00, '2019-11-09 15:29:06', '倪定波', '2', '2019-11-09 15:30:01', '嗯', '倪定波');

-- ----------------------------
-- Table structure for ams_perssion
-- ----------------------------
DROP TABLE IF EXISTS `ams_perssion`;
CREATE TABLE `ams_perssion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL COMMENT '父级id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端路径',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `sort` int(255) NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_perssion
-- ----------------------------
INSERT INTO `ams_perssion` VALUES (1, 0, '根节点', '/', NULL, NULL, '0', 0);
INSERT INTO `ams_perssion` VALUES (2, 1, '商品', 'p', NULL, NULL, '0', 0);
INSERT INTO `ams_perssion` VALUES (3, 2, '商品添加', 'p:add', NULL, NULL, '0', 0);
INSERT INTO `ams_perssion` VALUES (4, 2, '商品列表', 'p:list', NULL, NULL, '0', 0);
INSERT INTO `ams_perssion` VALUES (5, 2, '商品修改', 'p:edit', NULL, NULL, '0', 3);
INSERT INTO `ams_perssion` VALUES (6, 1, '品牌', 'b', NULL, NULL, '0', 1);
INSERT INTO `ams_perssion` VALUES (7, 6, '品牌添加', 'b:add', NULL, NULL, '0', 3);
INSERT INTO `ams_perssion` VALUES (8, 6, '品牌修改', 'b:edit', NULL, NULL, '0', 0);
INSERT INTO `ams_perssion` VALUES (9, 6, '品牌列表', 'b:list', NULL, NULL, '0', 0);
INSERT INTO `ams_perssion` VALUES (10, 9, '列表中的列表', 'b:list:list', NULL, NULL, '0', 0);
INSERT INTO `ams_perssion` VALUES (11, 2, '商品的得得添加', 'p:addsssss', NULL, NULL, '0', 0);
INSERT INTO `ams_perssion` VALUES (12, 1, '运营', 'y', NULL, NULL, '0', 3);

-- ----------------------------
-- Table structure for ams_product
-- ----------------------------
DROP TABLE IF EXISTS `ams_product`;
CREATE TABLE `ams_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '种类',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `is_new` int(255) NULL DEFAULT 0 COMMENT '0-bushi；1-shi，是否是新品',
  `is_public` int(255) NULL DEFAULT 0 COMMENT '0-bushi;1-shi，是否上架',
  `sort` int(255) NULL DEFAULT NULL COMMENT '排序',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '件' COMMENT '单位',
  `gift_growth` int(255) NULL DEFAULT NULL COMMENT '赠送成长值',
  `gift_point` int(255) NULL DEFAULT NULL COMMENT '赠送积分',
  `detail_pic` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详细图片',
  `status` int(255) NULL DEFAULT 0 COMMENT '审核状态0待，1Y，2N，3修改待审核',
  `is_delete` int(255) NULL DEFAULT 0,
  `sales_volume` int(11) NULL DEFAULT 0 COMMENT '销量',
  `comment_num` int(11) NULL DEFAULT 0 COMMENT '评价数',
  `stock` int(255) NULL DEFAULT 0 COMMENT '库存',
  `is_discount` int(255) NULL DEFAULT 0 COMMENT '是否打折0否1是',
  `discount_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '打折后的价格',
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_product
-- ----------------------------
INSERT INTO `ams_product` VALUES (42, '2010-16现代瑞纳扶手箱原装专用北京现代瑞奕中央手扶箱改装配件', '方向盘', '奥迪', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/10-47-55/620-0ddcb075-13d2-4efa-aeb4-ac18c1b54780.jpg', 1, 1, 1, 1.00, '1', 1, 11, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/10-48-00/207-a001f244-8566-44a5-aea9-1ea8d776451c.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/10-48-08/139-608f4bcb-48ee-469f-8150-a2b988330bdc.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/10-48-18/011-11fc6da9-cf64-42d8-a2ad-cc64b832b23e.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/10-48-22/728-4c9d6e7d-b3e8-403a-9764-ef833beaa279.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/10-48-26/196-fcab9c80-5da2-4111-8e0b-5661901245b5.jpg', 1, 0, 18, 0, 6645, 0, 0.00, NULL);
INSERT INTO `ams_product` VALUES (43, '美国固铂轮胎 Discoverer ATS 245/75R16 120/116R LT COOPER', '轮胎', '大众', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-31-50/864-bc841311-e4a3-4abb-a7e4-61fe13907428.jpg', 1, 1, 1, 569.00, '件', 123, 123, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-31-54/414-91a7c179-61db-4710-b152-0fadaec6ad3f.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-32-00/163-ec5579e9-42c2-4f9e-b6ac-955525b3954c.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-32-04/539-4a62fe68-6d9c-4899-b811-a24f732d9149.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-32-07/289-1e38779e-f4f2-4eae-8277-2e207fcef6f4.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-32-10/891-3cef4661-c5d2-4153-a07f-4bd11312fb94.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-32-13/315-83ed50a8-0976-419f-82f1-06ef71270b42.jpg', 1, 0, 11, 0, 6659, 0, 0.00, NULL);
INSERT INTO `ams_product` VALUES (44, '亚麻汽车坐垫冬季毛绒无靠背三件套宝马奔驰专用四季通用单片座垫', '坐垫', '雪佛兰', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-41-20/237-c0f70989-786a-463b-a83a-198117251cad.jpg', 1, 1, 1, 358.00, '件', 123, 123, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-41-26/061-d5901e78-f32f-4a1e-88e3-b8d14d73bf48.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-41-29/090-9cf85e76-b69d-496d-8f9a-142553ddd6c1.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-41-31/697-178f3f7f-f36c-4311-89d6-1b9d73321830.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-41-34/085-3912abe1-9f48-4a6b-913f-ea5cd79b4ef0.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-41-37/946-dee494da-eda2-402d-9a99-930c212ddd7a.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-41-40/706-72b19566-3cd3-4219-a01a-532cedfd06bf.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-41-44/141-e706c575-992a-4add-8bfb-70780f545983.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-41-49/216-f491398b-872e-4e57-9524-9132c21b39c4.jpg', 1, 0, 4, 0, 3327, 0, 0.00, '源自法国 工艺精湛 时尚轻奢 持久芬芳');
INSERT INTO `ams_product` VALUES (45, '全包围汽车座套四季通用18新款19车套皮革专用座垫座椅套坐垫全包', '坐垫', '奥迪', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-48-58/245-d48bff48-3a1a-4f97-b88f-97ff379eee60.jpg', 1, 1, 1, 378.00, '件', 123, 123, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-49-01/281-fe9116c4-f6cd-41e9-b750-aa7ede4732a4.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-49-03/984-94994d62-8c6d-41d1-ae57-5fc2124ad8f8.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-49-06/386-e4a5a618-f8d6-44c7-b2f1-80308bcc69f3.gif,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-49-15/417-c5c6ba94-7205-4679-9e39-3f94662d7690.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-49-23/712-3e9bb4af-391e-4ba0-be8a-b0efd0a3704d.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-49-30/782-9eeb7468-1c27-4e86-92b8-8ee1af9a7b0b.jpg', 1, 0, 7, 0, 3287, 1, 238.00, NULL);
INSERT INTO `ams_product` VALUES (46, '四季通用全包网红汽车坐垫福克斯英朗卡罗拉捷达桑塔纳亚麻座椅套', '坐垫', '雷诺', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-57-53/894-65cbd157-7502-4e75-8f9b-bf7940dafac1.jpg', 1, 1, 1, 388.00, '件', 111, 111, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-57-57/255-38f06baf-7f63-4f5c-b6d6-2a35b9decd49.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-10/118-bd6f833f-f339-41ad-bc4f-dc1ea0a44159.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-13/067-3baefcb9-c7f7-46c9-bc33-a2f3befa9f1f.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-17/646-60117214-68bf-4fef-ac64-f72fb339517e.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-20/373-ea73455c-76a0-4de9-b8e2-bc008b0863fa.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-22/987-2bb6f6d7-d08f-4814-a7eb-14ae5595d4ce.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-25/532-cba21207-b3ee-44c4-8135-1afeb39c8555.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-27/872-bf510ee6-b09b-47aa-ae80-97d3c923572d.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-30/217-1c987e3f-1a68-4ada-b79d-a95c40bb2b9e.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-35/750-7e4b7116-94b0-4183-a07b-b679bc5f7269.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-40/220-4d7c8353-44ff-402d-838d-36ecf8cde5cf.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-09-29/14-58-42/869-de57c581-2a81-4f02-914c-2994e6df9109.jpg', 1, 0, 5, 0, 3568, 1, 111.00, NULL);
INSERT INTO `ams_product` VALUES (59, '北京现代悦动瑞纳索纳塔八ix35起亚K2K5狮跑汽车遥控器改装钥匙壳', '随车工具', '马自达', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-10-04/055-2a456af5-f173-4127-b1bb-899d6ec85d44.webp', 1, 1, 1, 25.00, '件', 123, 334, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-10-13/856-aff9e875-7bfb-47f1-9417-b9e02bfc7729.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-10-16/911-22ccc93b-2798-4490-b8f7-a61177879d29.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-10-23/400-4d71b720-f9c4-4fe5-9840-02ce326146eb.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-10-29/072-1717bc7f-3139-428d-a46a-769d8e135381.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-10-36/106-33ff368b-07ff-4dbb-8c74-b58be41d7881.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-10-38/781-7d15ac6a-8634-4769-a4fb-7fe2e6d348e5.jpg', 1, 0, 107, 0, 4886, 0, 0.00, '全新工艺，超越原装，30天免费换新');
INSERT INTO `ams_product` VALUES (60, '宝马液晶钥匙适用于3系5系X1 X3 X5 无钥匙进入手机控车远程启动', '随车工具', '宝马', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-15-10/557-105eea5e-8507-43e6-9161-59605b85ee7a.webp', 1, 1, 1, 555.00, '件', 5663, 2566, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-15-14/189-a4324f9d-d254-4bbe-a7bf-3618c012a181.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-15-16/859-2e48595e-1bff-431f-9078-4f0dd35327ac.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-15-19/926-656f3117-548c-4631-bc19-e4f423511661.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-15-23/178-a8fd74a2-e6b6-45a7-b3fa-6647f57b86b0.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-15-26/470-0a14e459-ddcc-4500-a5de-f52d34cb84f9.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-10-31/18-15-29/091-3f2fcfc4-abcf-4039-9b28-38448fadb7c9.jpg', 1, 0, 37, 5, 9960, 0, 0.00, '新品上架 功能强大');
INSERT INTO `ams_product` VALUES (62, '大众途观L后排空调出风口保护罩 内饰改装专用途昂途安L途岳配件', '随车工具', '大众', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-10/15-05-09/907-ec5791b9-67db-4810-9111-953055a7ea18.jpg', 1, 1, 1, 12.00, '件', 12, 11, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-10/15-05-16/184-c368ce11-906a-4376-88c1-9ef6d3f4a02e.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-10/15-05-19/348-69c032cb-1468-4267-b77c-6b493e56d8ea.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-10/15-05-22/232-044afd3a-cf58-43a6-8799-70b634263f9b.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-10/15-05-25/265-672ac51d-c459-457b-b2b8-b66a6a7d9ac4.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-10/15-05-28/021-be8d74a3-a457-4a62-a9f6-060e21b307d2.jpg', 1, 0, 10, 0, 21, 1, 9.00, '2017-2018款全系大众途观L 专用');
INSERT INTO `ams_product` VALUES (63, '123', '坐垫', '奥迪', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/09-17-09/513-d473652d-07fe-4b7d-a737-98971afec50a.png', 1, 1, 123, 123.00, '21', 123, 1231, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/09-17-00/861-d1e93eaf-38ff-472c-b64c-cee514a218ac.png', 1, 1, 0, 0, 0, 1, 1.00, '为');
INSERT INTO `ams_product` VALUES (64, '汽车车衣车罩车套外罩防晒防雨遮阳四季通用隔热专用冬季保暖加厚', '车衣', '保时捷', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/17-04-22/328-94a63a51-f327-4942-827a-baf6658a2f4d.webp', 1, 1, 15, 55.00, '件', 55, 55, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/17-04-25/575-3ee17574-ccb1-4a73-b9fc-229a86e03fe6.jpg', 1, 0, 0, 0, 0, 1, 22.00, '专车专用 升级加厚结实耐用 防雨防晒防雪');
INSERT INTO `ams_product` VALUES (65, '2019年新款汽车车衣车罩防晒防雨牛津布车套隔热防冻保暖加厚冬季', '车衣', '福特', 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/17-09-54/522-b9f54797-2f8d-4523-9d8e-cecb801f52ba.webp', 1, 1, 12, 199.00, '件', 199, 199, 'https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/17-10-01/460-b3c4eb7e-a5e7-46b2-a2af-72343f9a51fb.jpg,https://alex-1300169762.cos.ap-chengdu.myqcloud.com/MALL/2019-11-15/17-10-03/819-40e901c8-0ca8-48f0-9e7c-6506ea907cb5.jpg', 1, 0, 7, 0, 3, 0, 0.00, '收藏+加购 享优先发货特权！');

-- ----------------------------
-- Table structure for ams_product_comment
-- ----------------------------
DROP TABLE IF EXISTS `ams_product_comment`;
CREATE TABLE `ams_product_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `user_id` int(255) NULL DEFAULT NULL COMMENT '会员id',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员昵称',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `star` int(10) NULL DEFAULT NULL COMMENT '评价星级',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_product_comment
-- ----------------------------
INSERT INTO `ams_product_comment` VALUES (1, 62, 3, NULL, '系统管理员', '123123', 3, '2019-11-14 14:04:10');
INSERT INTO `ams_product_comment` VALUES (2, 62, 11, NULL, '倪定波', 'eqwreq', 3, '2019-11-14 16:22:06');
INSERT INTO `ams_product_comment` VALUES (3, 62, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', 'lalla ', 5, '2019-11-14 16:24:57');
INSERT INTO `ams_product_comment` VALUES (4, 62, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', '31213', 2, '2019-11-14 16:26:11');
INSERT INTO `ams_product_comment` VALUES (5, 62, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', '2132134132', 4, '2019-11-14 16:26:37');
INSERT INTO `ams_product_comment` VALUES (6, 62, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', '123123', 4, '2019-11-14 16:27:19');
INSERT INTO `ams_product_comment` VALUES (7, 62, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', '1231233124324324', 5, '2019-11-14 16:27:37');
INSERT INTO `ams_product_comment` VALUES (8, 62, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', '我最帅\n', 5, '2019-11-14 16:34:42');
INSERT INTO `ams_product_comment` VALUES (9, 62, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', '我最美', 5, '2019-11-14 16:35:26');
INSERT INTO `ams_product_comment` VALUES (10, 59, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', '啦啦啦', 0, '2019-11-14 16:58:21');
INSERT INTO `ams_product_comment` VALUES (11, 59, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', 'hi', 1, '2019-11-14 16:58:29');
INSERT INTO `ams_product_comment` VALUES (12, 60, 11, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '倪定波', '', 4, '2019-11-14 17:47:03');
INSERT INTO `ams_product_comment` VALUES (13, 63, 3, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '系统管理员', '12312', 4, '2019-11-15 09:47:11');
INSERT INTO `ams_product_comment` VALUES (14, 63, 11, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '倪定波', '我疯了对你有什么好处\n', 4, '2019-11-15 16:32:56');
INSERT INTO `ams_product_comment` VALUES (15, 43, 11, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '倪定波', '123123', 3, '2019-11-18 09:43:38');
INSERT INTO `ams_product_comment` VALUES (16, 60, 11, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '倪定波', 'hi', 4, '2019-11-22 13:38:53');
INSERT INTO `ams_product_comment` VALUES (17, 60, 11, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '倪定波', '213', 3, '2019-11-22 13:47:12');
INSERT INTO `ams_product_comment` VALUES (18, 60, 11, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '倪定波', '132', 3, '2019-11-22 13:47:22');
INSERT INTO `ams_product_comment` VALUES (19, 60, 11, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '倪定波', '321', 4, '2019-11-22 13:48:35');
INSERT INTO `ams_product_comment` VALUES (20, 60, 11, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '倪定波', '13212', NULL, '2019-11-22 13:48:41');
INSERT INTO `ams_product_comment` VALUES (21, 60, 11, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', '倪定波', '23123', NULL, '2019-11-22 13:48:43');

-- ----------------------------
-- Table structure for ams_role
-- ----------------------------
DROP TABLE IF EXISTS `ams_role`;
CREATE TABLE `ams_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(255) NULL DEFAULT 0 COMMENT '是否启用0：启用，1：不启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_role
-- ----------------------------
INSERT INTO `ams_role` VALUES (1, 'admin', '管理员', '2019-09-18 10:05:29', 0);
INSERT INTO `ams_role` VALUES (2, 'shoper', '店员', '2019-09-28 14:39:53', 0);
INSERT INTO `ams_role` VALUES (3, 'member', '顾客', '2019-09-28 14:40:14', 0);

-- ----------------------------
-- Table structure for ams_test
-- ----------------------------
DROP TABLE IF EXISTS `ams_test`;
CREATE TABLE `ams_test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_test
-- ----------------------------
INSERT INTO `ams_test` VALUES (1, '1');
INSERT INTO `ams_test` VALUES (2, '123');
INSERT INTO `ams_test` VALUES (3, '123123');
INSERT INTO `ams_test` VALUES (4, '213');

-- ----------------------------
-- Table structure for ams_user
-- ----------------------------
DROP TABLE IF EXISTS `ams_user`;
CREATE TABLE `ams_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iocn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `is_delete` int(255) NULL DEFAULT 0 COMMENT '是否删除0=>未删除，1=>已删除',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_user
-- ----------------------------
INSERT INTO `ams_user` VALUES (1, 'admin', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', '1', '管理员', 0, '18257197794', 1);
INSERT INTO `ams_user` VALUES (2, 'ndb ', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', '1', 'test', 0, 'test', 1);

-- ----------------------------
-- Table structure for ams_user_log
-- ----------------------------
DROP TABLE IF EXISTS `ams_user_log`;
CREATE TABLE `ams_user_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `log_time` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_user_log
-- ----------------------------
INSERT INTO `ams_user_log` VALUES (2, 11, '2019-10-14 13:49:54', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (3, 11, '2019-10-09 13:51:14', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (4, 12, '2019-10-14 13:54:34', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (5, 11, '2019-10-11 13:54:43', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (6, 11, '2019-10-08 13:54:52', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (7, 12, '2019-10-13 13:55:13', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (8, 3, '2019-10-14 22:13:47', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (9, 3, '2019-10-15 09:03:52', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (10, 3, '2019-10-15 10:50:50', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (11, 3, '2019-10-15 10:50:50', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (12, 3, '2019-10-15 13:55:01', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (13, 3, '2019-10-15 14:41:41', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (14, 3, '2019-10-15 14:41:41', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (15, 3, '2019-10-15 14:41:46', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (16, 3, '2019-10-15 14:49:05', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (17, 11, '2019-10-15 16:46:07', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (18, 11, '2019-10-16 10:45:05', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (19, 11, '2019-10-16 11:14:06', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (20, 11, '2019-10-16 11:28:25', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (21, 3, '2019-10-16 11:29:26', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (22, 11, '2019-10-16 13:28:26', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (23, 11, '2019-10-16 14:05:21', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (24, 11, '2019-10-16 14:05:28', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (25, 11, '2019-10-16 20:44:38', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (26, 11, '2019-10-16 20:47:36', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (27, 11, '2019-10-16 22:33:15', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (28, 11, '2019-10-16 22:33:54', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (29, 11, '2019-10-17 15:04:33', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (30, 11, '2019-10-17 15:04:42', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (31, 11, '2019-10-17 21:59:53', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (32, 11, '2019-10-17 22:00:02', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (33, 3, '2019-10-17 22:40:03', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (34, 3, '2019-10-17 22:40:03', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (35, 3, '2019-10-17 22:40:15', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (36, 3, '2019-10-17 22:45:22', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (37, 3, '2019-10-17 22:47:58', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (38, 11, '2019-10-18 15:16:31', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (39, 11, '2019-10-18 15:16:37', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (40, 11, '2019-10-19 13:12:37', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (41, 11, '2019-10-19 13:12:37', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (42, 3, '2019-10-19 14:18:33', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (43, 3, '2019-10-19 14:40:11', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (44, 3, '2019-10-19 14:40:11', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (45, 3, '2019-10-19 14:40:30', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (46, 3, '2019-10-19 20:56:41', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (47, 3, '2019-10-20 09:19:44', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (48, 3, '2019-10-20 09:19:46', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (49, 3, '2019-10-20 09:19:54', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (50, 3, '2019-10-20 11:44:00', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (51, 3, '2019-10-20 11:47:31', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (52, 3, '2019-10-20 11:47:32', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (53, 3, '2019-10-20 13:22:37', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (54, 3, '2019-10-21 10:08:03', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (55, 3, '2019-10-21 10:08:07', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (56, 3, '2019-10-21 10:18:22', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (57, 3, '2019-10-21 10:41:46', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (58, 3, '2019-10-21 10:46:04', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (59, 3, '2019-10-21 10:46:58', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (60, 3, '2019-10-22 13:56:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (61, 3, '2019-10-22 13:56:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (62, 3, '2019-10-22 13:56:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (63, 3, '2019-10-22 15:52:55', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (64, 3, '2019-10-22 17:17:05', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (65, 3, '2019-10-22 22:10:21', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (66, 3, '2019-10-22 22:28:31', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (67, 3, '2019-10-22 22:28:34', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (68, 3, '2019-10-23 09:23:23', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (69, 3, '2019-10-23 09:34:50', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (70, 3, '2019-10-23 10:34:51', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (71, 3, '2019-10-23 14:06:46', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (72, 3, '2019-10-23 14:09:03', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (73, 1, '2019-10-23 14:10:02', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (74, 3, '2019-10-23 14:12:48', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (75, 3, '2019-10-23 14:57:35', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (76, 11, '2019-10-23 16:45:02', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (77, 11, '2019-10-23 16:49:19', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (78, 3, '2019-10-23 16:58:19', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (79, 3, '2019-10-23 17:09:53', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (80, 3, '2019-10-23 17:10:02', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (81, 3, '2019-10-23 17:10:51', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (82, 3, '2019-10-23 17:31:47', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (83, 3, '2019-10-23 17:32:04', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (84, 3, '2019-10-23 17:36:52', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (85, 3, '2019-10-23 17:40:30', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (86, 3, '2019-10-23 17:40:31', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (87, 3, '2019-10-24 14:11:43', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (88, 11, '2019-10-24 14:22:05', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (89, 3, '2019-10-24 14:28:30', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (90, 11, '2019-10-24 14:28:57', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (91, 11, '2019-10-24 14:29:57', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (92, 3, '2019-10-24 16:55:24', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (93, 3, '2019-10-25 10:59:28', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (94, 3, '2019-10-25 10:59:28', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (95, 11, '2019-10-31 17:58:51', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (96, 11, '2019-10-31 17:58:51', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (97, 11, '2019-10-31 17:58:53', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (98, 3, '2019-10-31 18:01:21', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (99, 3, '2019-10-31 18:33:14', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (100, 3, '2019-10-31 20:50:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (101, 3, '2019-10-31 20:50:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (102, 3, '2019-10-31 20:50:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (103, 3, '2019-10-31 20:50:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (104, 3, '2019-10-31 20:50:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (105, 3, '2019-10-31 20:50:27', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (106, 3, '2019-10-31 20:50:39', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (107, 11, '2019-10-31 21:03:32', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (108, 11, '2019-10-31 21:03:39', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (109, 11, '2019-10-31 21:04:08', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (110, 11, '2019-11-04 20:51:38', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (111, 11, '2019-11-04 20:51:38', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (112, 11, '2019-11-04 20:52:01', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (113, 11, '2019-11-05 20:16:09', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (114, 11, '2019-11-05 20:16:11', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (115, 11, '2019-11-05 20:23:30', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (116, 3, '2019-11-06 13:51:04', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (117, 3, '2019-11-06 13:51:04', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (118, 3, '2019-11-06 13:51:16', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (119, 3, '2019-11-06 14:41:30', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (120, 3, '2019-11-06 15:35:44', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (121, 3, '2019-11-06 15:35:44', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (122, 11, '2019-11-07 20:16:31', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (123, 11, '2019-11-07 20:16:31', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (124, 11, '2019-11-07 20:16:51', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (125, 11, '2019-11-07 20:17:00', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (126, 11, '2019-11-07 20:17:22', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (127, 11, '2019-11-07 20:31:55', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (128, 3, '2019-11-07 21:02:41', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (129, 3, '2019-11-07 21:07:27', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (130, 3, '2019-11-07 21:11:44', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (131, 3, '2019-11-07 21:25:47', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (132, 11, '2019-11-09 15:20:18', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (133, 11, '2019-11-09 15:20:18', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (134, 11, '2019-11-09 15:22:28', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (135, 3, '2019-11-09 22:04:22', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (136, 3, '2019-11-09 22:04:22', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (137, 3, '2019-11-09 22:04:26', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (138, 3, '2019-11-09 22:47:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (139, 3, '2019-11-09 22:52:54', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (140, 3, '2019-11-10 10:19:34', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (141, 3, '2019-11-10 11:56:14', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (142, 3, '2019-11-10 11:56:41', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (143, 3, '2019-11-10 12:16:25', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (144, 3, '2019-11-10 14:48:08', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (145, 3, '2019-11-10 14:48:08', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (146, 3, '2019-11-10 14:48:08', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (147, 3, '2019-11-10 14:56:57', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (148, 3, '2019-11-10 15:00:10', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (149, 11, '2019-11-10 15:35:16', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (150, 3, '2019-11-10 16:48:31', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (151, 3, '2019-11-10 16:59:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (152, 3, '2019-11-10 17:09:10', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (153, 11, '2019-11-10 19:42:38', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (154, 11, '2019-11-11 10:27:00', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (155, 3, '2019-11-11 13:44:30', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (156, 3, '2019-11-11 15:40:07', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (157, 3, '2019-11-11 15:40:07', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (158, 3, '2019-11-11 15:40:08', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (159, 3, '2019-11-11 17:29:11', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (160, 3, '2019-11-11 17:29:12', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (161, 11, '2019-11-11 18:08:38', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (162, 48, '2019-11-13 20:30:57', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (163, 48, '2019-11-13 20:30:57', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (164, 11, '2019-11-14 11:00:15', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (165, 11, '2019-11-14 11:00:29', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (166, 3, '2019-11-14 11:08:21', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (167, 1, '2019-11-14 11:25:14', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (168, 11, '2019-11-14 13:35:28', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (169, 3, '2019-11-14 13:57:58', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (170, 3, '2019-11-14 13:58:02', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (171, 3, '2019-11-14 14:02:27', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (172, 3, '2019-11-14 14:03:07', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (173, 11, '2019-11-14 16:11:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (174, 3, '2019-11-14 16:24:38', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (175, 11, '2019-11-14 16:38:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (176, 3, '2019-11-14 16:49:10', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (177, 48, '2019-11-14 16:59:02', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (178, 11, '2019-11-14 17:13:38', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (179, 11, '2019-11-14 17:22:09', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (180, 11, '2019-11-14 17:23:33', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (181, 11, '2019-11-14 17:24:08', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (182, 11, '2019-11-14 17:27:12', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (183, 11, '2019-11-14 17:27:12', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (184, 3, '2019-11-14 17:27:18', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (185, 11, '2019-11-14 17:27:24', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (186, 11, '2019-11-14 17:27:32', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (187, 11, '2019-11-14 17:27:43', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (188, 11, '2019-11-14 17:32:01', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (189, 11, '2019-11-14 17:32:01', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (190, 11, '2019-11-14 17:32:05', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (191, 3, '2019-11-14 17:32:21', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (192, 11, '2019-11-14 17:32:46', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (193, 11, '2019-11-14 17:32:54', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (194, 3, '2019-11-14 17:33:06', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (195, 49, '2019-11-14 17:37:49', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (196, 48, '2019-11-14 17:43:42', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (197, 50, '2019-11-14 17:43:55', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (198, 11, '2019-11-14 17:44:49', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (199, 11, '2019-11-15 09:03:02', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (200, 3, '2019-11-15 09:16:06', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (201, 3, '2019-11-15 09:46:09', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (202, 11, '2019-11-15 13:23:49', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (203, 11, '2019-11-15 13:23:49', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (204, 11, '2019-11-15 13:23:52', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (205, 11, '2019-11-15 13:26:54', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (206, 11, '2019-11-15 16:38:12', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (207, 11, '2019-11-15 16:39:52', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (208, 11, '2019-11-15 16:40:53', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (209, 3, '2019-11-15 16:48:50', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (210, 11, '2019-11-18 09:43:25', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (211, 11, '2019-11-22 09:43:25', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (212, 11, '2019-11-22 09:43:30', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (213, 11, '2019-11-22 09:43:34', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (214, 11, '2019-11-22 09:43:50', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (215, 11, '2019-11-22 10:31:25', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (216, 11, '2019-11-22 10:48:59', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (217, 48, '2019-11-22 10:49:48', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (218, 49, '2019-11-22 10:49:59', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (219, 11, '2019-11-22 10:52:53', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (220, 11, '2019-11-22 11:17:25', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (221, 11, '2019-11-22 11:30:20', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (222, 3, '2019-11-22 12:06:15', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (223, 11, '2019-11-22 12:26:39', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (224, 3, '2019-11-22 12:52:48', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (225, 11, '2019-11-22 13:15:32', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (226, 49, '2019-11-22 13:23:16', '127.0.0.1');
INSERT INTO `ams_user_log` VALUES (227, 11, '2019-11-22 13:38:14', '127.0.0.1');

-- ----------------------------
-- Table structure for ams_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ams_user_role_relation`;
CREATE TABLE `ams_user_role_relation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ams_user_role_relation
-- ----------------------------
INSERT INTO `ams_user_role_relation` VALUES (1, 3, 1);
INSERT INTO `ams_user_role_relation` VALUES (2, 3, 2);
INSERT INTO `ams_user_role_relation` VALUES (3, 6, 3);
INSERT INTO `ams_user_role_relation` VALUES (8, 11, 3);
INSERT INTO `ams_user_role_relation` VALUES (9, 48, 3);

-- ----------------------------
-- Table structure for cms_help
-- ----------------------------
DROP TABLE IF EXISTS `cms_help`;
CREATE TABLE `cms_help`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NULL DEFAULT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_status` int(1) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `read_count` int(1) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帮助表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_help_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_help_category`;
CREATE TABLE `cms_help_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类图标',
  `help_count` int(11) NULL DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帮助分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_member_report
-- ----------------------------
DROP TABLE IF EXISTS `cms_member_report`;
CREATE TABLE `cms_member_report`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `report_type` int(1) NULL DEFAULT NULL COMMENT '举报类型：0->商品评价；1->话题内容；2->用户评论',
  `report_member_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '举报人',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `report_object` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `report_status` int(1) NULL DEFAULT NULL COMMENT '举报状态：0->未处理；1->已处理',
  `handle_status` int(1) NULL DEFAULT NULL COMMENT '处理结果：0->无效；1->有效；2->恶意',
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户举报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_prefrence_area
-- ----------------------------
DROP TABLE IF EXISTS `cms_prefrence_area`;
CREATE TABLE `cms_prefrence_area`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varbinary(500) NULL DEFAULT NULL COMMENT '展示图片',
  `sort` int(11) NULL DEFAULT NULL,
  `show_status` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优选专区' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_prefrence_area
-- ----------------------------
INSERT INTO `cms_prefrence_area` VALUES (1, '让音质更出众', '音质不打折 完美现场感', NULL, NULL, 1);
INSERT INTO `cms_prefrence_area` VALUES (2, '让音质更出众22', '让音质更出众22', NULL, NULL, NULL);
INSERT INTO `cms_prefrence_area` VALUES (3, '让音质更出众33', NULL, NULL, NULL, NULL);
INSERT INTO `cms_prefrence_area` VALUES (4, '让音质更出众44', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cms_prefrence_area_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `cms_prefrence_area_product_relation`;
CREATE TABLE `cms_prefrence_area_product_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prefrence_area_id` bigint(20) NULL DEFAULT NULL,
  `product_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优选专区和产品关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_prefrence_area_product_relation
-- ----------------------------
INSERT INTO `cms_prefrence_area_product_relation` VALUES (1, 1, 12);
INSERT INTO `cms_prefrence_area_product_relation` VALUES (2, 1, 13);
INSERT INTO `cms_prefrence_area_product_relation` VALUES (3, 1, 14);
INSERT INTO `cms_prefrence_area_product_relation` VALUES (4, 1, 18);
INSERT INTO `cms_prefrence_area_product_relation` VALUES (5, 1, 7);
INSERT INTO `cms_prefrence_area_product_relation` VALUES (6, 2, 7);
INSERT INTO `cms_prefrence_area_product_relation` VALUES (7, 1, 22);
INSERT INTO `cms_prefrence_area_product_relation` VALUES (24, 1, 23);

-- ----------------------------
-- Table structure for cms_subject
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject`;
CREATE TABLE `cms_subject`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专题主图',
  `product_count` int(11) NULL DEFAULT NULL COMMENT '关联产品数量',
  `recommend_status` int(1) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `collect_count` int(11) NULL DEFAULT NULL,
  `read_count` int(11) NULL DEFAULT NULL,
  `comment_count` int(11) NULL DEFAULT NULL,
  `album_pics` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '画册图片用逗号分割',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_status` int(1) NULL DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `forward_count` int(11) NULL DEFAULT NULL COMMENT '转发数',
  `category_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专题分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_subject
-- ----------------------------
INSERT INTO `cms_subject` VALUES (1, 1, '轮廓分明，双摄手机映现细腻美照', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t26434/217/1381240043/254214/290f9d5b/5bc6c11cN54567a27.jpg!q70.jpg', NULL, 1, '2018-11-11 13:26:55', 100, 1000, 100, NULL, '手机对于拍照党来说，已经不仅仅是通讯工具那么简单了。因为有时TA还充当着“单反”的角色，来不断地带给那些喜欢拍照的人惊喜。所以，在这里准备一波高颜值的双摄手机来给大家。让TA们灵敏捕捉影像的能力，为你展现出轮廓更加分明、且画质更加细腻的美照。', 1, NULL, NULL, '精选专题');
INSERT INTO `cms_subject` VALUES (2, 1, '交通拥挤有妙招，电动车小巧穿行无障碍', 'https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t14224/229/529700229/74868/a1cc7364/5a314f85N5bfd22c7.jpg!q70.jpg', NULL, 1, '2018-11-12 13:27:00', 100, 1000, 100, NULL, '随着人们消费水平的提高，公路上的小车是越来越多了，导致每到上下班高峰期的时候，大路的车辆堵了一环又一环，而且你根本不知道它到底会塞多久，所以我们需要变通一下，不妨骑上电动车来个绿色出行，它够小巧玲珑，即使交通再怎么拥挤，也总有它可以通过的地方。', 1, NULL, NULL, '精选专题');
INSERT INTO `cms_subject` VALUES (3, 1, '无酒不成席，甘香白酒开怀助兴', 'https://img12.360buyimg.com/mobilecms/s1500x600_jfs/t1/881/4/12265/114011/5bd1446fEc71114bf/68925bfb4a2adc44.jpg!q70.jpg', NULL, 1, '2018-11-13 13:27:05', 100, 1000, 100, NULL, '白酒是由各种优质的高粱，小麦，大米等谷物为原料，经过传统工艺的长时间酿造，酒液在这样的环境中慢慢发酵，最终变成清香浓郁的白酒，被摆上人们的餐桌，供人畅饮，是一种受到大众喜爱的绝佳饮品。', 1, NULL, NULL, '精选专题');
INSERT INTO `cms_subject` VALUES (4, 2, '真规划不盲扫，全域清洁净无尘', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t15205/35/2539924281/429185/72fa7857/5aab2c4bN6a32a6c5.png', NULL, 1, '2018-11-01 13:27:09', 100, 1000, 100, NULL, '科技时代，聪明女人会选择用智慧来减负，和繁琐的家务挥手再见，才能腾出更多休闲时间。规划式扫地机器人设计个性化，它能够跟据房间布置呈现清扫路线，实现规划式覆盖性清洁，少遗漏不盲扫，从而大幅度降低损耗，侦测技术遇到家具及时避让，杜绝猛烈撞击，任它灵巧穿梭于低矮空间，坐享居家净无尘。', 1, NULL, NULL, '家电专题');
INSERT INTO `cms_subject` VALUES (5, 2, '抑菌更纯净，直饮净水保家人健康', 'https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t11428/340/1504074828/20474/1e8cab1e/5a0305d3Nb1e7a762.jpg!q70.jpg', NULL, 1, '2018-11-06 13:27:18', 100, 1000, 100, NULL, '在城里居住，首先要担心的是饮水问题。桶装水太贵不够经济，还不一定是干净的。自己去干净的水源地取水也不切实际。此时只有选择在家里安装一台净水器才实在。装上一台直饮式的净水器，方便安全，关键是水质过滤得比较纯净，很大限度地处理了大部分的废弃物，留下健康的矿物质水。好生活，从一口干净的纯净水开始。', 1, NULL, NULL, '家电专题');
INSERT INTO `cms_subject` VALUES (6, 2, '储鲜冷冻灵活变，多门无霜更贴心', 'https://img12.360buyimg.com/mobilecms/s1500x600_jfs/t13015/356/2397552584/605232/46c88e6e/5a5321bcN6a8866f0.png', NULL, 1, '2018-11-07 13:27:21', 100, 1000, 100, NULL, '春节临近，每个家庭都要储备不少食材，但各种食材的保鲜方式与温度不尽相同，而多门风冷冰箱能轻松满足您。它们容积大占地小，拥有多个可以独立调节温度的温区，满足对不同类食材的存放需求，同时省去除霜烦恼，还可以通过温度调节满足您对大冷藏及大冷冻的需求变化，从而带来更好的保鲜冷冻体验，为新年宴请保驾护航。', 1, NULL, NULL, '家电专题');
INSERT INTO `cms_subject` VALUES (7, 2, '想喝健康水，就用304不锈钢热水壶', 'https://img13.360buyimg.com/mobilecms/s1500x600_jfs/t12541/90/443985343/33603/65d6e884/5a0bb77aNff08550a.jpg!q70.jpg', NULL, 1, '2019-01-29 11:21:55', 100, 1000, 100, NULL, '大冬天的喝一口热水，不仅能够暧身还可以给身体补充足够的水份，但是对于热水壶的购买却是需要慎之又慎，材质不好的热水壶在烧水的过程当中极容易产生对身体不利的有害物，极大影响人们的身体健康。304不锈钢热水壶选用食品级不不锈钢，确保水质安全，烧水健康好水，为您的饮水健康保驾护航。', 1, NULL, NULL, '家电专题');
INSERT INTO `cms_subject` VALUES (8, 2, '你尽情赖床！早餐“煲”在它身上', 'https://img14.360buyimg.com/mobilecms/s1500x600_jfs/t15949/363/1450937723/89513/7d8c1219/5a531d28N2aaec2a6.jpg!q70.jpg', NULL, 1, '2019-01-29 13:07:13', 100, 1000, 100, NULL, '赖床不想起，饿了的时候想吃饭又要现做等待简直饥肠辘辘让人心烦，所以一款带有预约功能的电饭煲简直不要太贴心，你睡懒觉的时候它已经给你做好了香滑软糯的粥，起床就能享美味是不是很贴心呐。', 1, NULL, NULL, '家电专题');
INSERT INTO `cms_subject` VALUES (9, 2, '小白变大厨，微波炉为实力加持', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t1/8774/21/11460/38908/5c2cbfcfEdab1ef03/d5800f0f7cf05b38.jpg!q70.jpg', NULL, 1, '2019-01-29 13:08:18', 100, 1000, 100, NULL, '对于厨艺小白而言，没有什么能比掌握好火候更来得困难的了！毕竟烹饪出食物的味道好坏，很大程度上还是对火候的掌控，想要轻松掌握火候，当然少不了一款微波炉的撑场，内设多功能，满足不同的烹饪需求，简单方便易操作，让厨艺小白秒变大师！', 1, NULL, NULL, '家电专题');
INSERT INTO `cms_subject` VALUES (10, 2, '十秒鲜榨，冬日把爱浓缩成杯果汁', 'https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t13708/126/308291722/542847/26ee6edd/5a07dc72N3252a9e0.png', NULL, 1, '2019-01-29 13:10:02', 100, 1000, 100, NULL, '寒瑟冬日女友不喜欢吃水果，用便携迷你果汁机，撩妹又养胃。一按一转，碾压切割，简单快速制作，压榨出纯原味果汁。一键启动，十秒出汁，保留食物营养，轻轻松松粉碎食物，营养在手，说走就走。', 1, NULL, NULL, '家电专题');
INSERT INTO `cms_subject` VALUES (11, 3, '饭点未到肚已空？美味饼干先充饥', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t13240/79/443357432/38567/94792c4c/5a0ba054N89388654.jpg!q70.jpg', NULL, 1, '2019-01-29 13:10:45', 100, 1000, 100, NULL, '一上午都把精力集中在工作中，刚闲下来就发现自己已是饥肠辘辘了，可饭点却还没到，怎么办呢？不妨让这些美味饼干先帮你充充饥吧！酥香松脆有营养，每一口都让人回味无穷，既能满足你挑剔的味蕾又能起到果腹效果，快快为自己备上吧！', 1, NULL, NULL, '美食专题');
INSERT INTO `cms_subject` VALUES (12, 3, '赖床无罪，香酥面包营养又便捷', 'https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t9775/33/1197239610/38547/34899011/59ddbd01N0bd693bb.jpg!q70.jpg', NULL, 1, '2019-01-29 13:11:41', 100, 1000, 100, NULL, '赖床是很多年轻人的通病，特别是秋冬季节，都会恋恋不舍温暖的被窝。对于苦逼的上班族来说，就算再多睡几分钟，还是要起床的，甚至来不及吃早餐。面包营养丰富，能快速饱腹，且携带方便，再搭配一盒牛奶，一顿简单而不失营养的早餐能提供一天的能量，让赖床族多睡几分钟也无妨。', 1, NULL, NULL, '美食专题');
INSERT INTO `cms_subject` VALUES (13, 3, '夹心饼干，予多重滋味交织舌尖', 'https://img12.360buyimg.com/mobilecms/s1500x600_jfs/t18877/139/652452758/27262/36e6ed6e/5a9d5b6dN327150e8.jpg!q70.jpg', NULL, 1, '2019-01-29 13:12:38', 100, 1000, 100, NULL, '饼干味道香脆可口，深受不少人的青睐。饼干的种类多样，而夹心饼干就是其中一种，相比普通饼干而言，夹心饼干有着更丰富的口感，当肚子空空如也的时候，来一些美味的夹心饼干，既能解馋，又能扛饿。下面就为大家推荐一组好吃的夹心饼干，作为办公室小零食非常不错。', 1, NULL, NULL, '美食专题');
INSERT INTO `cms_subject` VALUES (14, 4, '户外Party，便携音箱烘气氛', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t17125/265/644948348/42066/6f2dc610/5a9c9da1N9a95ee2c.jpg!q70.jpg', NULL, 1, '2019-01-29 13:13:53', 100, 1000, 100, NULL, '初春的季节，除了户外的各种踏青旅行，在户外开异常Party也是很惬意。户外派对，气氛的烘托肯定不能离开音箱的衬托，选择一款户外的便携音箱，无线蓝牙连接，免去有线的束缚，携带使用更方便。', 1, NULL, NULL, '数码专题');
INSERT INTO `cms_subject` VALUES (15, 5, '今冬潮包look，凹出绚丽女王范', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t8365/191/1901440450/575969/c71560c9/59c3144dNe6d8dd2f.png', NULL, 1, '2019-01-29 13:15:12', 100, 1000, 100, NULL, '潮流时尚的美包，搭配潮服，会让你魅力一直在线。因为潮包一直是女性出游扮美的秘籍，它不仅能够帮你收纳日常小物件，还能让你解放双手，这里推荐的时尚美包，随意搭配一件服饰，都可以让你潮范十足，凹出绚丽女王范。', 1, NULL, NULL, '服饰专题');

-- ----------------------------
-- Table structure for cms_subject_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_category`;
CREATE TABLE `cms_subject_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类图标',
  `subject_count` int(11) NULL DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_subject_category
-- ----------------------------
INSERT INTO `cms_subject_category` VALUES (1, '精选专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jingxuan.png', 3, 1, 100);
INSERT INTO `cms_subject_category` VALUES (2, '家电专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png', 7, 1, 0);
INSERT INTO `cms_subject_category` VALUES (3, '美食专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_meishi.png', 3, 1, 0);
INSERT INTO `cms_subject_category` VALUES (4, '数码专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_shouji.png', 1, 1, 0);
INSERT INTO `cms_subject_category` VALUES (5, '服饰专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_waitao.png', 1, 1, 0);

-- ----------------------------
-- Table structure for cms_subject_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_comment`;
CREATE TABLE `cms_subject_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) NULL DEFAULT NULL,
  `member_nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `show_status` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_subject_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_product_relation`;
CREATE TABLE `cms_subject_product_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) NULL DEFAULT NULL,
  `product_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题商品关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_subject_product_relation
-- ----------------------------
INSERT INTO `cms_subject_product_relation` VALUES (1, 1, 26);
INSERT INTO `cms_subject_product_relation` VALUES (2, 1, 27);
INSERT INTO `cms_subject_product_relation` VALUES (3, 1, 28);
INSERT INTO `cms_subject_product_relation` VALUES (4, 1, 29);
INSERT INTO `cms_subject_product_relation` VALUES (6, 2, 31);
INSERT INTO `cms_subject_product_relation` VALUES (7, 2, 35);
INSERT INTO `cms_subject_product_relation` VALUES (29, 2, 36);
INSERT INTO `cms_subject_product_relation` VALUES (30, 2, 32);
INSERT INTO `cms_subject_product_relation` VALUES (31, 3, 33);
INSERT INTO `cms_subject_product_relation` VALUES (38, 3, 34);
INSERT INTO `cms_subject_product_relation` VALUES (39, 1, 37);
INSERT INTO `cms_subject_product_relation` VALUES (40, 2, 30);

-- ----------------------------
-- Table structure for cms_topic
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic`;
CREATE TABLE `cms_topic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `attend_count` int(11) NULL DEFAULT NULL COMMENT '参与人数',
  `attention_count` int(11) NULL DEFAULT NULL COMMENT '关注人数',
  `read_count` int(11) NULL DEFAULT NULL,
  `award_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖品名称',
  `attend_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参与方式',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '话题内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '话题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_topic_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic_category`;
CREATE TABLE `cms_topic_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类图标',
  `subject_count` int(11) NULL DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '话题分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_topic_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic_comment`;
CREATE TABLE `cms_topic_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `topic_id` bigint(20) NULL DEFAULT NULL,
  `member_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `show_status` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oms_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `oms_cart_item`;
CREATE TABLE `oms_cart_item`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `product_sku_id` bigint(20) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL COMMENT '购买数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '添加到购物车的价格',
  `sp1` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售属性1',
  `sp2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售属性2',
  `sp3` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售属性3',
  `product_pic` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品主图',
  `product_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_sub_title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品副标题（卖点）',
  `product_sku_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品sku条码',
  `member_nickname` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员昵称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_date` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `delete_status` int(1) NULL DEFAULT 0 COMMENT '是否删除',
  `product_category_id` bigint(20) NULL DEFAULT NULL COMMENT '商品分类',
  `product_brand` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_sn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_attr` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品销售属性:[{\"key\":\"颜色\",\"value\":\"颜色\"},{\"key\":\"容量\",\"value\":\"4G\"}]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oms_cart_item
-- ----------------------------
INSERT INTO `oms_cart_item` VALUES (12, 26, 90, 1, 1, 3788.00, '金色', '16G', NULL, NULL, '华为 HUAWEI P20', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2018-08-27 16:53:44', NULL, 0, 19, NULL, NULL, NULL);
INSERT INTO `oms_cart_item` VALUES (13, 27, 98, 1, 3, 2699.00, '黑色', '32G', NULL, NULL, '小米8', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2018-08-27 17:11:53', NULL, 0, 19, NULL, NULL, NULL);
INSERT INTO `oms_cart_item` VALUES (14, 28, 102, 1, 1, 649.00, '金色', '16G', NULL, NULL, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-27 17:18:02', NULL, 0, 19, NULL, NULL, NULL);
INSERT INTO `oms_cart_item` VALUES (15, 28, 103, 1, 1, 699.00, '金色', '32G', NULL, NULL, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-28 10:22:45', NULL, 0, 19, NULL, NULL, NULL);
INSERT INTO `oms_cart_item` VALUES (16, 29, 106, 1, 1, 5499.00, '金色', '32G', NULL, NULL, 'Apple iPhone 8 Plus', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '201808270029001', 'windir', '2018-08-28 10:50:50', NULL, 0, 19, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for oms_company_address
-- ----------------------------
DROP TABLE IF EXISTS `oms_company_address`;
CREATE TABLE `oms_company_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址名称',
  `send_status` int(1) NULL DEFAULT NULL COMMENT '默认发货地址：0->否；1->是',
  `receive_status` int(1) NULL DEFAULT NULL COMMENT '是否默认收货地址：0->否；1->是',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收发货人姓名',
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人电话',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省/直辖市',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `region` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区',
  `detail_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司收发货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oms_company_address
-- ----------------------------
INSERT INTO `oms_company_address` VALUES (1, '深圳发货点', 1, 1, '大梨', '18000000000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO `oms_company_address` VALUES (2, '北京发货点', 0, 0, '大梨', '18000000000', '北京市', NULL, '南山区', '科兴科学园');
INSERT INTO `oms_company_address` VALUES (3, '南京发货点', 0, 0, '大梨', '18000000000', '江苏省', '南京市', '南山区', '科兴科学园');

-- ----------------------------
-- Table structure for oms_order
-- ----------------------------
DROP TABLE IF EXISTS `oms_order`;
CREATE TABLE `oms_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `member_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) NULL DEFAULT NULL,
  `order_sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '提交时间',
  `member_username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户帐号',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单总金额',
  `pay_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '应付金额（实际支付金额）',
  `freight_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '运费金额',
  `promotion_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '促销优化金额（促销价、满减、阶梯价）',
  `integration_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '积分抵扣金额',
  `coupon_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '优惠券抵扣金额',
  `discount_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '管理员后台调整订单使用的折扣金额',
  `pay_type` int(1) NULL DEFAULT NULL COMMENT '支付方式：0->未支付；1->支付宝；2->微信',
  `source_type` int(1) NULL DEFAULT NULL COMMENT '订单来源：0->PC订单；1->app订单',
  `status` int(1) NULL DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `order_type` int(1) NULL DEFAULT NULL COMMENT '订单类型：0->正常订单；1->秒杀订单',
  `delivery_company` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流公司(配送方式)',
  `delivery_sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `auto_confirm_day` int(11) NULL DEFAULT NULL COMMENT '自动确认时间（天）',
  `integration` int(11) NULL DEFAULT NULL COMMENT '可以获得的积分',
  `growth` int(11) NULL DEFAULT NULL COMMENT '可以活动的成长值',
  `promotion_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动信息',
  `bill_type` int(1) NULL DEFAULT NULL COMMENT '发票类型：0->不开发票；1->电子发票；2->纸质发票',
  `bill_header` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票抬头',
  `bill_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票内容',
  `bill_receiver_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收票人电话',
  `bill_receiver_email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收票人邮箱',
  `receiver_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人姓名',
  `receiver_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人电话',
  `receiver_post_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人邮编',
  `receiver_province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份/直辖市',
  `receiver_city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `receiver_region` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区',
  `receiver_detail_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `confirm_status` int(1) NULL DEFAULT NULL COMMENT '确认收货状态：0->未确认；1->已确认',
  `delete_status` int(1) NOT NULL DEFAULT 0 COMMENT '删除状态：0->未删除；1->已删除',
  `use_integration` int(11) NULL DEFAULT NULL COMMENT '下单时使用的积分',
  `payment_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `delivery_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `receive_time` datetime(0) NULL DEFAULT NULL COMMENT '确认收货时间',
  `comment_time` datetime(0) NULL DEFAULT NULL COMMENT '评价时间',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oms_order
-- ----------------------------
INSERT INTO `oms_order` VALUES (12, 1, 2, '201809150101000001', '2018-09-15 12:24:27', 'test', 18732.00, 16377.75, 20.00, 2344.25, 0.00, 10.00, 10.00, 0, 1, 4, 0, '', '', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '江苏省', '常州市', '天宁区', '东晓街道', 'xxx', 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-10-30 14:43:49');
INSERT INTO `oms_order` VALUES (13, 1, 2, '201809150102000002', '2018-09-15 14:24:29', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 1, 0, '', '', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', '请问？？？\n', 0, 0, 1000, '2018-10-11 14:04:19', NULL, NULL, NULL, '2019-09-11 13:03:15');
INSERT INTO `oms_order` VALUES (14, 1, 2, '201809130101000001', '2018-09-13 16:57:40', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 2, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, NULL, '2018-10-13 13:44:04', '2018-10-16 13:43:41', NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (15, 1, 2, '201809130102000002', '2018-09-13 17:03:00', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 3, 0, '顺丰快递', '201707196398346', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 1, 0, NULL, '2018-10-13 13:44:54', '2018-10-16 13:45:01', '2018-10-18 14:05:31', NULL, NULL);
INSERT INTO `oms_order` VALUES (16, 1, 2, '201809140101000001', '2018-09-14 16:16:16', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 4, 0, NULL, NULL, 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (17, 1, 2, '201809150101000003', '2018-09-15 12:24:27', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 0, 1, 4, 0, '顺丰快递', '201707196398345', 15, NULL, NULL, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, NULL, NULL, '2018-10-12 14:01:28', NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (18, 1, 2, '201809150102000004', '2018-09-15 14:24:29', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 1, 0, '圆通快递', 'xx', 15, NULL, NULL, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, 1000, NULL, '2018-10-16 14:42:17', NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (19, 1, 2, '201809130101000003', '2018-09-13 16:57:40', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 2, 0, NULL, NULL, 15, NULL, NULL, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (20, 1, 2, '201809130102000004', '2018-09-13 17:03:00', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 3, 0, NULL, NULL, 15, NULL, NULL, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (21, 1, 2, '201809140101000002', '2018-09-14 16:16:16', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 4, 0, NULL, NULL, 15, 18682, 18682, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (22, 1, 2, '201809150101000005', '2018-09-15 12:24:27', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 0, 1, 4, 0, '顺丰快递', '201707196398345', 15, 0, 0, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, NULL, NULL, '2018-10-12 14:01:28', NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (23, 1, 2, '201809150102000006', '2018-09-15 14:24:29', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 1, 0, '顺丰快递', 'xxx', 15, 0, 0, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, 1000, NULL, '2018-10-16 14:41:28', NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (24, 1, 2, '201809130101000005', '2018-09-13 16:57:40', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 2, 0, NULL, NULL, 15, 18682, 18682, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order` VALUES (25, 1, 2, '201809130102000006', '2018-09-13 17:03:00', 'test', 18732.00, 16377.75, 10.00, 2344.25, 0.00, 10.00, 5.00, 1, 1, 4, 0, NULL, NULL, 15, 18682, 18682, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨22', '18033441849', '518000', '北京市', '北京城区', '东城区', '东城街道', 'xxx', 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-10-30 15:08:31');
INSERT INTO `oms_order` VALUES (26, 1, 2, '201809140101000003', '2018-09-14 16:16:16', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 0, 1, 4, 0, NULL, NULL, 15, 18682, 18682, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', NULL, NULL, NULL, NULL, NULL, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for oms_order_item
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item`;
CREATE TABLE `oms_order_item`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单id',
  `order_sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `product_id` bigint(20) NULL DEFAULT NULL,
  `product_pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_brand` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '销售价格',
  `product_quantity` int(11) NULL DEFAULT NULL COMMENT '购买数量',
  `product_sku_id` bigint(20) NULL DEFAULT NULL COMMENT '商品sku编号',
  `product_sku_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品sku条码',
  `product_category_id` bigint(20) NULL DEFAULT NULL COMMENT '商品分类id',
  `sp1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品的销售属性',
  `sp2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `promotion_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品促销名称',
  `promotion_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品促销分解金额',
  `coupon_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '优惠券优惠分解金额',
  `integration_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '积分优惠分解金额',
  `real_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '该商品经过优惠后的分解金额',
  `gift_integration` int(11) NULL DEFAULT 0,
  `gift_growth` int(11) NULL DEFAULT 0,
  `product_attr` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品销售属性:[{\"key\":\"颜色\",\"value\":\"颜色\"},{\"key\":\"容量\",\"value\":\"4G\"}]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单中所包含的商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oms_order_item
-- ----------------------------
INSERT INTO `oms_order_item` VALUES (21, 12, '201809150101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, NULL, NULL, NULL, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (22, 12, '201809150101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, NULL, NULL, NULL, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (23, 12, '201809150101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (24, 12, '201809150101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (25, 12, '201809150101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, NULL, NULL, NULL, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (26, 13, '201809150102000002', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, NULL, NULL, NULL, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (27, 13, '201809150102000002', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, NULL, NULL, NULL, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (28, 13, '201809150102000002', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (29, 13, '201809150102000002', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (30, 13, '201809150102000002', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, NULL, NULL, NULL, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (31, 14, '201809130101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, NULL, NULL, NULL, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (32, 14, '201809130101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, NULL, NULL, NULL, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (33, 14, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (34, 14, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (35, 14, '201809130101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, NULL, NULL, NULL, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (36, 15, '201809130101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, NULL, NULL, NULL, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (37, 15, '201809130101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, NULL, NULL, NULL, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (38, 15, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (39, 15, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (40, 15, '201809130101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, NULL, NULL, NULL, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (41, 16, '201809140101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, NULL, NULL, NULL, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (42, 16, '201809140101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, NULL, NULL, NULL, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (43, 16, '201809140101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES (44, 16, '201809140101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, NULL, NULL, NULL, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES (45, 16, '201809140101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, NULL, NULL, NULL, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');

-- ----------------------------
-- Table structure for oms_order_operate_history
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_operate_history`;
CREATE TABLE `oms_order_operate_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单id',
  `operate_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人：用户；系统；后台管理员',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `order_status` int(1) NULL DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单操作历史记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oms_order_operate_history
-- ----------------------------
INSERT INTO `oms_order_operate_history` VALUES (5, 12, '后台管理员', '2018-10-12 14:01:29', 2, '完成发货');
INSERT INTO `oms_order_operate_history` VALUES (6, 13, '后台管理员', '2018-10-12 14:01:29', 2, '完成发货');
INSERT INTO `oms_order_operate_history` VALUES (7, 12, '后台管理员', '2018-10-12 14:13:10', 4, '订单关闭:买家退货');
INSERT INTO `oms_order_operate_history` VALUES (8, 13, '后台管理员', '2018-10-12 14:13:10', 4, '订单关闭:买家退货');
INSERT INTO `oms_order_operate_history` VALUES (9, 22, '后台管理员', '2018-10-15 16:31:48', 4, '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES (10, 22, '后台管理员', '2018-10-15 16:35:08', 4, '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES (11, 22, '后台管理员', '2018-10-15 16:35:59', 4, '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES (12, 17, '后台管理员', '2018-10-15 16:43:40', 4, '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES (13, 25, '后台管理员', '2018-10-15 16:52:14', 4, '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES (14, 26, '后台管理员', '2018-10-15 16:52:14', 4, '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES (15, 23, '后台管理员', '2018-10-16 14:41:28', 2, '完成发货');
INSERT INTO `oms_order_operate_history` VALUES (16, 13, '后台管理员', '2018-10-16 14:42:17', 2, '完成发货');
INSERT INTO `oms_order_operate_history` VALUES (17, 18, '后台管理员', '2018-10-16 14:42:17', 2, '完成发货');
INSERT INTO `oms_order_operate_history` VALUES (18, 26, '后台管理员', '2018-10-30 14:37:44', 4, '订单关闭:关闭订单');
INSERT INTO `oms_order_operate_history` VALUES (19, 25, '后台管理员', '2018-10-30 15:07:01', 0, '修改收货人信息');
INSERT INTO `oms_order_operate_history` VALUES (20, 25, '后台管理员', '2018-10-30 15:08:13', 0, '修改费用信息');
INSERT INTO `oms_order_operate_history` VALUES (21, 25, '后台管理员', '2018-10-30 15:08:31', 0, '修改备注信息：xxx');
INSERT INTO `oms_order_operate_history` VALUES (22, 25, '后台管理员', '2018-10-30 15:08:39', 4, '订单关闭:2222');
INSERT INTO `oms_order_operate_history` VALUES (23, 13, '后台管理员', '2019-09-11 13:03:03', 1, '修改备注信息：请问');
INSERT INTO `oms_order_operate_history` VALUES (24, 13, '后台管理员', '2019-09-11 13:03:15', 1, '修改备注信息：请问？？？\n');

-- ----------------------------
-- Table structure for oms_order_return_apply
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_return_apply`;
CREATE TABLE `oms_order_return_apply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单id',
  `company_address_id` bigint(20) NULL DEFAULT NULL COMMENT '收货地址表id',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '退货商品id',
  `order_sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `member_username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员用户名',
  `return_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '退款金额',
  `return_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退货人姓名',
  `return_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退货人电话',
  `status` int(1) NULL DEFAULT NULL COMMENT '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
  `handle_time` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  `product_pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `product_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_brand` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品品牌',
  `product_attr` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品销售属性：颜色：红色；尺码：xl;',
  `product_count` int(11) NULL DEFAULT NULL COMMENT '退货数量',
  `product_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品单价',
  `product_real_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品实际支付单价',
  `reason` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原因',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `proof_pics` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '凭证图片，以逗号隔开',
  `handle_note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理备注',
  `handle_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理人员',
  `receive_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `receive_time` datetime(0) NULL DEFAULT NULL COMMENT '收货时间',
  `receive_note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单退货申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oms_order_return_apply
-- ----------------------------
INSERT INTO `oms_order_return_apply` VALUES (3, 12, NULL, 26, '201809150101000001', '2018-10-17 14:34:57', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (4, 12, 2, 27, '201809150101000001', '2018-10-17 14:40:21', 'test', 3585.98, '大梨', '18000000000', 1, '2018-10-18 13:54:10', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', '已经处理了', 'admin', NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (5, 12, 3, 28, '201809150101000001', '2018-10-17 14:44:18', 'test', 3585.98, '大梨', '18000000000', 2, '2018-10-18 13:55:28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', '已经处理了', 'admin', 'admin', '2018-10-18 13:55:58', '已经处理了');
INSERT INTO `oms_order_return_apply` VALUES (8, 13, NULL, 28, '201809150102000002', '2018-10-17 14:44:18', 'test', NULL, '大梨', '18000000000', 3, '2018-10-18 13:57:12', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', '理由不够充分', 'admin', NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (9, 14, 2, 26, '201809130101000001', '2018-10-17 14:34:57', 'test', 3500.00, '大梨', '18000000000', 2, '2018-10-24 15:44:56', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', '呵呵', 'admin', 'admin', '2018-10-24 15:46:35', '收货了');
INSERT INTO `oms_order_return_apply` VALUES (10, 14, NULL, 27, '201809130101000001', '2018-10-17 14:40:21', 'test', NULL, '大梨', '18000000000', 3, '2018-10-24 15:46:57', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', '就是不退', 'admin', NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (11, 14, 2, 28, '201809130101000001', '2018-10-17 14:44:18', 'test', 591.05, '大梨', '18000000000', 1, '2018-10-24 17:09:04', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', '可以退款', 'admin', NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (12, 15, 3, 26, '201809130102000002', '2018-10-17 14:34:57', 'test', 3500.00, '大梨', '18000000000', 2, '2018-10-24 17:22:54', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', '退货了', 'admin', 'admin', '2018-10-24 17:23:06', '收货了');
INSERT INTO `oms_order_return_apply` VALUES (13, 15, NULL, 27, '201809130102000002', '2018-10-17 14:40:21', 'test', NULL, '大梨', '18000000000', 3, '2018-10-24 17:23:30', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', '无法退货', 'admin', NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (15, 16, NULL, 26, '201809140101000001', '2018-10-17 14:34:57', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (16, 16, NULL, 27, '201809140101000001', '2018-10-17 14:40:21', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (17, 16, NULL, 28, '201809140101000001', '2018-10-17 14:44:18', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (18, 17, NULL, 26, '201809150101000003', '2018-10-17 14:34:57', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (19, 17, NULL, 27, '201809150101000003', '2018-10-17 14:40:21', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (20, 17, NULL, 28, '201809150101000003', '2018-10-17 14:44:18', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (21, 18, NULL, 26, '201809150102000004', '2018-10-17 14:34:57', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (22, 18, NULL, 27, '201809150102000004', '2018-10-17 14:40:21', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (23, 18, NULL, 28, '201809150102000004', '2018-10-17 14:44:18', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (24, 19, NULL, 26, '201809130101000003', '2018-10-17 14:34:57', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (25, 19, NULL, 27, '201809130101000003', '2018-10-17 14:40:21', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oms_order_return_apply` VALUES (26, 19, NULL, 28, '201809130101000003', '2018-10-17 14:44:18', 'test', NULL, '大梨', '18000000000', 0, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for oms_order_return_reason
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_return_reason`;
CREATE TABLE `oms_order_return_reason`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退货类型',
  `sort` int(11) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL COMMENT '状态：0->不启用；1->启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退货原因表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oms_order_return_reason
-- ----------------------------
INSERT INTO `oms_order_return_reason` VALUES (1, '质量问题', 1, 0, '2018-10-17 10:00:45');
INSERT INTO `oms_order_return_reason` VALUES (2, '尺码太大', 1, 1, '2018-10-17 10:01:03');
INSERT INTO `oms_order_return_reason` VALUES (3, '颜色不喜欢', 1, 1, '2018-10-17 10:01:13');
INSERT INTO `oms_order_return_reason` VALUES (4, '7天无理由退货', 1, 1, '2018-10-17 10:01:47');
INSERT INTO `oms_order_return_reason` VALUES (5, '价格问题', 1, 0, '2018-10-17 10:01:57');
INSERT INTO `oms_order_return_reason` VALUES (12, '发票问题', 0, 1, '2018-10-19 16:28:36');
INSERT INTO `oms_order_return_reason` VALUES (13, '其他问题', 0, 1, '2018-10-19 16:28:51');
INSERT INTO `oms_order_return_reason` VALUES (14, '物流问题', 0, 1, '2018-10-19 16:29:01');
INSERT INTO `oms_order_return_reason` VALUES (15, '售后问题', 0, 1, '2018-10-19 16:29:11');

-- ----------------------------
-- Table structure for oms_order_setting
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_setting`;
CREATE TABLE `oms_order_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flash_order_overtime` int(11) NULL DEFAULT NULL COMMENT '秒杀订单超时关闭时间(分)',
  `normal_order_overtime` int(11) NULL DEFAULT NULL COMMENT '正常订单超时时间(分)',
  `confirm_overtime` int(11) NULL DEFAULT NULL COMMENT '发货后自动确认收货时间（天）',
  `finish_overtime` int(11) NULL DEFAULT NULL COMMENT '自动完成交易时间，不能申请售后（天）',
  `comment_overtime` int(11) NULL DEFAULT NULL COMMENT '订单完成后自动好评时间（天）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oms_order_setting
-- ----------------------------
INSERT INTO `oms_order_setting` VALUES (1, 60, 120, 15, 7, 7);

-- ----------------------------
-- Table structure for pms_album
-- ----------------------------
DROP TABLE IF EXISTS `pms_album`;
CREATE TABLE `pms_album`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover_pic` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic_count` int(11) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '相册表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pms_album_pic
-- ----------------------------
DROP TABLE IF EXISTS `pms_album_pic`;
CREATE TABLE `pms_album_pic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NULL DEFAULT NULL,
  `pic` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '画册图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pms_brand
-- ----------------------------
DROP TABLE IF EXISTS `pms_brand`;
CREATE TABLE `pms_brand`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_letter` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首字母',
  `sort` int(11) NULL DEFAULT NULL,
  `factory_status` int(1) NULL DEFAULT NULL COMMENT '是否为品牌制造商：0->不是；1->是',
  `show_status` int(1) NULL DEFAULT NULL,
  `product_count` int(11) NULL DEFAULT NULL COMMENT '产品数量',
  `product_comment_count` int(11) NULL DEFAULT NULL COMMENT '产品评论数量',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌logo',
  `big_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专区大图',
  `brand_story` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '品牌故事',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_brand
-- ----------------------------
INSERT INTO `pms_brand` VALUES (1, '万和', 'W', 0, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(5).jpg', '', 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES (2, '三星', 'S', 100, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (1).jpg', NULL, '三星的故事');
INSERT INTO `pms_brand` VALUES (3, '华为', 'H', 100, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/17f2dd9756d9d333bee8e60ce8c03e4c_222_222.jpg', NULL, 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES (4, '格力', 'G', 30, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/dc794e7e74121272bbe3ce9bc41ec8c3_222_222.jpg', NULL, 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES (5, '方太', 'F', 20, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (4).jpg', NULL, 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES (6, '小米', 'M', 500, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/1e34aef2a409119018a4c6258e39ecfb_222_222.png', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5afd7778Nf7800b75.jpg', '小米手机的故事');
INSERT INTO `pms_brand` VALUES (21, 'OPPO', 'O', 0, 1, 1, 88, 500, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(6).jpg', '', 'string');
INSERT INTO `pms_brand` VALUES (49, '七匹狼', 'S', 200, 1, 1, 77, 400, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/18d8bc3eb13533fab466d702a0d3fd1f40345bcd.jpg', NULL, 'BOOB的故事');
INSERT INTO `pms_brand` VALUES (50, '海澜之家', 'H', 200, 1, 1, 66, 300, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/99d3279f1029d32b929343b09d3c72de_222_222.jpg', '', '海澜之家的故事');
INSERT INTO `pms_brand` VALUES (51, '苹果', 'A', 200, 1, 1, 55, 200, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', NULL, '苹果的故事');
INSERT INTO `pms_brand` VALUES (58, 'NIKE', 'N', 0, 1, 1, 33, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/timg (51).jpg', '', 'NIKE的故事');

-- ----------------------------
-- Table structure for pms_comment
-- ----------------------------
DROP TABLE IF EXISTS `pms_comment`;
CREATE TABLE `pms_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `member_nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `star` int(3) NULL DEFAULT NULL COMMENT '评价星数：0->5',
  `member_ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价的ip',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `show_status` int(1) NULL DEFAULT NULL,
  `product_attribute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购买时的商品属性',
  `collect_couont` int(11) NULL DEFAULT NULL,
  `read_count` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pics` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传图片地址，以逗号隔开',
  `member_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论用户头像',
  `replay_count` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品评价表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pms_comment_replay
-- ----------------------------
DROP TABLE IF EXISTS `pms_comment_replay`;
CREATE TABLE `pms_comment_replay`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) NULL DEFAULT NULL,
  `member_nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `type` int(1) NULL DEFAULT NULL COMMENT '评论人员类型；0->会员；1->管理员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品评价回复表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pms_feight_template
-- ----------------------------
DROP TABLE IF EXISTS `pms_feight_template`;
CREATE TABLE `pms_feight_template`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `charge_type` int(1) NULL DEFAULT NULL COMMENT '计费类型:0->按重量；1->按件数',
  `first_weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '首重kg',
  `first_fee` decimal(10, 2) NULL DEFAULT NULL COMMENT '首费（元）',
  `continue_weight` decimal(10, 2) NULL DEFAULT NULL,
  `continme_fee` decimal(10, 2) NULL DEFAULT NULL,
  `dest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目的地（省、市）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '运费模版' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pms_member_price
-- ----------------------------
DROP TABLE IF EXISTS `pms_member_price`;
CREATE TABLE `pms_member_price`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `member_level_id` bigint(20) NULL DEFAULT NULL,
  `member_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '会员价格',
  `member_level_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品会员价格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_member_price
-- ----------------------------
INSERT INTO `pms_member_price` VALUES (26, 7, 1, 500.00, NULL);
INSERT INTO `pms_member_price` VALUES (27, 8, 1, 500.00, NULL);
INSERT INTO `pms_member_price` VALUES (28, 9, 1, 500.00, NULL);
INSERT INTO `pms_member_price` VALUES (29, 10, 1, 500.00, NULL);
INSERT INTO `pms_member_price` VALUES (30, 11, 1, 500.00, NULL);
INSERT INTO `pms_member_price` VALUES (31, 12, 1, 500.00, NULL);
INSERT INTO `pms_member_price` VALUES (32, 13, 1, 500.00, NULL);
INSERT INTO `pms_member_price` VALUES (33, 14, 1, 500.00, NULL);
INSERT INTO `pms_member_price` VALUES (37, 18, 1, 500.00, NULL);
INSERT INTO `pms_member_price` VALUES (44, 7, 2, 480.00, NULL);
INSERT INTO `pms_member_price` VALUES (45, 7, 3, 450.00, NULL);
INSERT INTO `pms_member_price` VALUES (52, 22, 1, NULL, NULL);
INSERT INTO `pms_member_price` VALUES (53, 22, 2, NULL, NULL);
INSERT INTO `pms_member_price` VALUES (54, 22, 3, NULL, NULL);
INSERT INTO `pms_member_price` VALUES (58, 24, 1, NULL, NULL);
INSERT INTO `pms_member_price` VALUES (59, 24, 2, NULL, NULL);
INSERT INTO `pms_member_price` VALUES (60, 24, 3, NULL, NULL);
INSERT INTO `pms_member_price` VALUES (112, 23, 1, 88.00, '黄金会员');
INSERT INTO `pms_member_price` VALUES (113, 23, 2, 88.00, '白金会员');
INSERT INTO `pms_member_price` VALUES (114, 23, 3, 66.00, '钻石会员');
INSERT INTO `pms_member_price` VALUES (142, 31, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (143, 31, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (144, 31, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (148, 32, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (149, 32, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (150, 32, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (154, 33, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (155, 33, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (156, 33, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (169, 36, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (170, 36, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (171, 36, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (172, 35, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (173, 35, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (174, 35, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (175, 34, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (176, 34, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (177, 34, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (186, 26, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (187, 26, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (188, 26, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (192, 27, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (193, 27, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (194, 27, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (195, 28, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (196, 28, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (197, 28, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (198, 29, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (199, 29, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (200, 29, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (201, 37, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (202, 37, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (203, 37, 3, NULL, '钻石会员');
INSERT INTO `pms_member_price` VALUES (204, 30, 1, NULL, '黄金会员');
INSERT INTO `pms_member_price` VALUES (205, 30, 2, NULL, '白金会员');
INSERT INTO `pms_member_price` VALUES (206, 30, 3, NULL, '钻石会员');

-- ----------------------------
-- Table structure for pms_product
-- ----------------------------
DROP TABLE IF EXISTS `pms_product`;
CREATE TABLE `pms_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) NULL DEFAULT NULL,
  `product_category_id` bigint(20) NULL DEFAULT NULL,
  `feight_template_id` bigint(20) NULL DEFAULT NULL,
  `product_attribute_category_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_sn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货号',
  `delete_status` int(1) NULL DEFAULT NULL COMMENT '删除状态：0->未删除；1->已删除',
  `publish_status` int(1) NULL DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
  `new_status` int(1) NULL DEFAULT NULL COMMENT '新品状态:0->不是新品；1->新品',
  `recommand_status` int(1) NULL DEFAULT NULL COMMENT '推荐状态；0->不推荐；1->推荐',
  `verify_status` int(1) NULL DEFAULT NULL COMMENT '审核状态：0->未审核；1->审核通过',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sale` int(11) NULL DEFAULT NULL COMMENT '销量',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `promotion_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '促销价格',
  `gift_growth` int(11) NULL DEFAULT 0 COMMENT '赠送的成长值',
  `gift_point` int(11) NULL DEFAULT 0 COMMENT '赠送的积分',
  `use_point_limit` int(11) NULL DEFAULT NULL COMMENT '限制使用的积分数',
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品描述',
  `original_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '市场价',
  `stock` int(11) NULL DEFAULT NULL COMMENT '库存',
  `low_stock` int(11) NULL DEFAULT NULL COMMENT '库存预警值',
  `unit` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品重量，默认为克',
  `preview_status` int(1) NULL DEFAULT NULL COMMENT '是否为预告商品：0->不是；1->是',
  `service_ids` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `album_pics` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '画册图片，连产品图片限制为5张，以逗号分割',
  `detail_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `detail_html` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品详情网页内容',
  `detail_mobile_html` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '移动端网页详情',
  `promotion_start_time` datetime(0) NULL DEFAULT NULL COMMENT '促销开始时间',
  `promotion_end_time` datetime(0) NULL DEFAULT NULL COMMENT '促销结束时间',
  `promotion_per_limit` int(11) NULL DEFAULT NULL COMMENT '活动限购数量',
  `promotion_type` int(1) NULL DEFAULT NULL COMMENT '促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌名称',
  `product_category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_product
-- ----------------------------
INSERT INTO `pms_product` VALUES (1, 49, 7, 0, 0, '银色星芒刺绣网纱底裤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 1, 1, 1, 100, 0, 100.00, NULL, 0, 100, NULL, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, NULL, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', NULL, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', NULL, NULL, NULL, 0, '七匹狼', '外套');
INSERT INTO `pms_product` VALUES (2, 49, 7, 0, 0, '银色星芒刺绣网纱底裤2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86578', 1, 1, 1, 1, 1, 1, 0, 100.00, NULL, 0, 100, NULL, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, NULL, '银色星芒刺绣网纱底裤2', '银色星芒刺绣网纱底裤', NULL, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '<p>银色星芒刺绣网纱底裤</p>', '<p>银色星芒刺绣网纱底裤</p>', NULL, NULL, NULL, 0, '七匹狼', '外套');
INSERT INTO `pms_product` VALUES (3, 1, 7, 0, 0, '银色星芒刺绣网纱底裤3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86579', 1, 1, 1, 1, 1, 1, 0, 100.00, NULL, 0, 100, NULL, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, NULL, '银色星芒刺绣网纱底裤3', '银色星芒刺绣网纱底裤', NULL, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', NULL, NULL, NULL, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (4, 1, 7, 0, 0, '银色星芒刺绣网纱底裤4', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86580', 1, 1, 1, 1, 1, 1, 0, 100.00, NULL, 0, 100, NULL, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, NULL, '银色星芒刺绣网纱底裤4', '银色星芒刺绣网纱底裤', NULL, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', NULL, NULL, NULL, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (5, 1, 7, 0, 0, '银色星芒刺绣网纱底裤5', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86581', 1, 0, 1, 1, 1, 1, 0, 100.00, NULL, 0, 100, NULL, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, NULL, '银色星芒刺绣网纱底裤5', '银色星芒刺绣网纱底裤', NULL, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', NULL, NULL, NULL, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (6, 1, 7, 0, 0, '银色星芒刺绣网纱底裤6', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86582', 1, 1, 1, 1, 1, 1, 0, 100.00, NULL, 0, 100, NULL, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, NULL, '银色星芒刺绣网纱底裤6', '银色星芒刺绣网纱底裤', NULL, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', NULL, NULL, NULL, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (7, 1, 7, 0, 1, '女式超柔软拉毛运动开衫', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 0, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (8, 1, 7, 0, 1, '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 0, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (9, 1, 7, 0, 1, '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 0, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (10, 1, 7, 0, 1, '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 0, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (11, 1, 7, 0, 1, '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (12, 1, 7, 0, 1, '女式超柔软拉毛运动开衫2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (13, 1, 7, 0, 1, '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (14, 1, 7, 0, 1, '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (18, 1, 7, 0, 1, '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO `pms_product` VALUES (22, 6, 7, 0, 1, 'test', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', '', 1, 1, 0, 0, 0, 0, 0, 0.00, NULL, 0, 0, 0, 'test', '', 0.00, 100, 0, '', 0.00, 1, '1,2', '', '', '', '', '', '', '', NULL, NULL, 0, 0, '小米', '外套');
INSERT INTO `pms_product` VALUES (23, 6, 19, 0, 1, '毛衫测试', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', 'NO.1098', 1, 1, 1, 1, 0, 0, 0, 99.00, NULL, 99, 99, 1000, '毛衫测试11', 'xxx', 109.00, 100, 0, '件', 1000.00, 1, '1,2,3', '毛衫测试', '毛衫测试', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', '毛衫测试', '毛衫测试', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/155x54.bmp\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录bg1080.jpg\" width=\"500\" height=\"500\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录界面.jpg\" width=\"500\" height=\"500\" /></p>', '', NULL, NULL, 0, 2, '小米', '手机通讯');
INSERT INTO `pms_product` VALUES (24, 6, 7, 0, NULL, 'xxx', '', '', 1, 0, 0, 0, 0, 0, 0, 0.00, NULL, 0, 0, 0, 'xxx', '', 0.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 0, '小米', '外套');
INSERT INTO `pms_product` VALUES (26, 3, 19, 0, 3, '华为 HUAWEI P20 ', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '6946605', 1, 1, 1, 1, 0, 100, 0, 3788.00, NULL, 3788, 3788, 0, 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '', 4288.00, 1000, 0, '件', 0.00, 1, '2,3,1', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ab46a3cN616bdc41.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf5fN2522b9dc.jpg', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44f1cNf51f3bb0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa8Nfcf71c10.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa9N40e78ee0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f4N1c94bdda.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f5Nd30de41d.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5b10fb0eN0eb053fb.jpg\" /></p>', '', NULL, NULL, 0, 1, '华为', '手机通讯');
INSERT INTO `pms_product` VALUES (27, 6, 19, 0, 3, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '7437788', 0, 0, 0, 1, 0, 0, 0, 2699.00, NULL, 2699, 2699, 0, '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 2699.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b2254e8N414e6d3a.jpg\" width=\"500\" /></p>', '', NULL, NULL, 0, 3, '小米', '手机通讯');
INSERT INTO `pms_product` VALUES (28, 6, 19, 0, 3, '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '7437789', 1, 0, 1, 0, 0, 0, 0, 649.00, NULL, 649, 649, 0, '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '', 649.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 4, '小米', '手机通讯');
INSERT INTO `pms_product` VALUES (29, 51, 19, 0, 3, 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', '7437799', 1, 0, 1, 0, 0, 0, 0, 5499.00, NULL, 5499, 5499, 0, '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '', 5499.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 0, '苹果', '手机通讯');
INSERT INTO `pms_product` VALUES (30, 49, 8, 0, 1, 'HLA海澜之家简约动物印花短袖T恤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ad83a4fN6ff67ecd.jpg!cc_350x449.jpg', 'HNTBJ2E042A', 0, 1, 1, 1, 0, 0, 0, 98.00, NULL, 0, 0, 0, '2018夏季新品微弹舒适新款短T男生 6月6日-6月20日，满300减30，参与互动赢百元礼券，立即分享赢大奖', '', 98.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 0, '七匹狼', 'T恤');
INSERT INTO `pms_product` VALUES (31, 50, 8, 0, 1, 'HLA海澜之家蓝灰花纹圆领针织布短袖T恤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ac98b64N70acd82f.jpg!cc_350x449.jpg', 'HNTBJ2E080A', 1, 1, 0, 0, 0, 0, 0, 98.00, NULL, 0, 0, 0, '2018夏季新品短袖T恤男HNTBJ2E080A 蓝灰花纹80 175/92A/L80A 蓝灰花纹80 175/92A/L', '', 98.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 0, '海澜之家', 'T恤');
INSERT INTO `pms_product` VALUES (32, 50, 8, 0, NULL, 'HLA海澜之家短袖T恤男基础款', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a51eb88Na4797877.jpg', 'HNTBJ2E153A', 0, 1, 0, 1, 0, 0, 0, 68.00, NULL, 0, 0, 0, 'HLA海澜之家短袖T恤男基础款简约圆领HNTBJ2E153A藏青(F3)175/92A(50)', '', 68.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 0, '海澜之家', 'T恤');
INSERT INTO `pms_product` VALUES (33, 6, 35, 0, NULL, '小米（MI）小米电视4A ', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b02804dN66004d73.jpg', '4609652', 1, 1, 0, 0, 0, 0, 0, 2499.00, NULL, 0, 0, 0, '小米（MI）小米电视4A 55英寸 L55M5-AZ/L55M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', 2499.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 0, '小米', '手机数码');
INSERT INTO `pms_product` VALUES (34, 6, 35, 0, NULL, '小米（MI）小米电视4A 65英寸', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b028530N51eee7d4.jpg', '4609660', 0, 1, 0, 1, 0, 0, 0, 3999.00, NULL, 0, 0, 0, ' L65M5-AZ/L65M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', 3999.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 0, '小米', '手机数码');
INSERT INTO `pms_product` VALUES (35, 58, 29, 0, NULL, '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg', '6799342', 0, 1, 0, 1, 0, 0, 0, 369.00, NULL, 0, 0, 0, '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', '', 369.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 0, 'NIKE', '男鞋');
INSERT INTO `pms_product` VALUES (36, 58, 29, 0, NULL, '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '6799345', 0, 1, 1, 1, 0, 0, 0, 499.00, NULL, 0, 0, 0, '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '', 499.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', NULL, NULL, 0, 0, 'NIKE', '男鞋');
INSERT INTO `pms_product` VALUES (37, 6, 7, 0, NULL, 'wqe', '', '', 0, 1, 0, 0, 0, 0, 0, 0.00, NULL, 0, 0, 0, 'qwe', '', 0.00, 0, 0, '', 0.00, 1, '', '', '', '', '', '', '', '<p style=\"padding-left: 30px;\">we<a href=\"http://www.baid.com\" target=\"_blank\" rel=\"noopener\">www.baid.com</a></p>', NULL, NULL, 0, 0, '小米', '外套');

-- ----------------------------
-- Table structure for pms_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute`;
CREATE TABLE `pms_product_attribute`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_attribute_category_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `select_type` int(1) NULL DEFAULT NULL COMMENT '属性选择类型：0->唯一；1->单选；2->多选',
  `input_type` int(1) NULL DEFAULT NULL COMMENT '属性录入方式：0->手工录入；1->从列表中选取',
  `input_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可选值列表，以逗号隔开',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序字段：最高的可以单独上传图片',
  `filter_type` int(1) NULL DEFAULT NULL COMMENT '分类筛选样式：1->普通；1->颜色',
  `search_type` int(1) NULL DEFAULT NULL COMMENT '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
  `related_status` int(1) NULL DEFAULT NULL COMMENT '相同属性产品是否关联；0->不关联；1->关联',
  `hand_add_status` int(1) NULL DEFAULT NULL COMMENT '是否支持手动新增；0->不支持；1->支持',
  `type` int(1) NULL DEFAULT NULL COMMENT '属性的类型；0->规格；1->参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品属性参数表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_product_attribute
-- ----------------------------
INSERT INTO `pms_product_attribute` VALUES (1, 1, '尺寸', 2, 1, 'M,X,XL,2XL,3XL,4XL', 0, 0, 0, 0, 0, 0);
INSERT INTO `pms_product_attribute` VALUES (7, 1, '颜色', 2, 1, '黑色,红色,白色,粉色', 100, 0, 0, 0, 1, 0);
INSERT INTO `pms_product_attribute` VALUES (13, 0, '上市年份', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (14, 0, '上市年份1', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (15, 0, '上市年份2', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (16, 0, '上市年份3', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (17, 0, '上市年份4', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (18, 0, '上市年份5', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (19, 0, '适用对象', 1, 1, '青年女性,中年女性', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (20, 0, '适用对象1', 2, 1, '青年女性,中年女性', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (21, 0, '适用对象3', 2, 1, '青年女性,中年女性', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (24, 1, '商品编号', 1, 0, '', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (25, 1, '适用季节', 1, 1, '春季,夏季,秋季,冬季', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (32, 2, '适用人群', 0, 1, '老年,青年,中年', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (33, 2, '风格', 0, 1, '嘻哈风格,基础大众,商务正装', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (35, 2, '颜色', 0, 0, '', 100, 0, 0, 0, 1, 0);
INSERT INTO `pms_product_attribute` VALUES (37, 1, '适用人群', 1, 1, '儿童,青年,中年,老年', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (38, 1, '上市时间', 1, 1, '2017年秋,2017年冬,2018年春,2018年夏', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (39, 1, '袖长', 1, 1, '短袖,长袖,中袖', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (40, 2, '尺码', 0, 1, '29,30,31,32,33,34', 0, 0, 0, 0, 0, 0);
INSERT INTO `pms_product_attribute` VALUES (41, 2, '适用场景', 0, 1, '居家,运动,正装', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (42, 2, '上市时间', 0, 1, '2018年春,2018年夏', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (43, 3, '颜色', 0, 0, '', 100, 0, 0, 0, 1, 0);
INSERT INTO `pms_product_attribute` VALUES (44, 3, '容量', 0, 1, '16G,32G,64G,128G', 0, 0, 0, 0, 0, 0);
INSERT INTO `pms_product_attribute` VALUES (45, 3, '屏幕尺寸', 0, 0, '', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (46, 3, '网络', 0, 1, '3G,4G', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (47, 3, '系统', 0, 1, 'Android,IOS', 0, 0, 0, 0, 0, 1);
INSERT INTO `pms_product_attribute` VALUES (48, 3, '电池容量', 0, 0, '', 0, 0, 0, 0, 0, 1);

-- ----------------------------
-- Table structure for pms_product_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_category`;
CREATE TABLE `pms_product_attribute_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attribute_count` int(11) NULL DEFAULT 0 COMMENT '属性数量',
  `param_count` int(11) NULL DEFAULT 0 COMMENT '参数数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品属性分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_product_attribute_category
-- ----------------------------
INSERT INTO `pms_product_attribute_category` VALUES (1, '服装-T恤', 2, 5);
INSERT INTO `pms_product_attribute_category` VALUES (2, '服装-裤装', 2, 4);
INSERT INTO `pms_product_attribute_category` VALUES (3, '手机数码-手机通讯', 2, 4);
INSERT INTO `pms_product_attribute_category` VALUES (4, '配件', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (5, '居家', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (6, '洗护', 0, 0);
INSERT INTO `pms_product_attribute_category` VALUES (10, '测试分类', 0, 0);

-- ----------------------------
-- Table structure for pms_product_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_value`;
CREATE TABLE `pms_product_attribute_value`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `product_attribute_id` bigint(20) NULL DEFAULT NULL,
  `value` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储产品参数信息的表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_product_attribute_value
-- ----------------------------
INSERT INTO `pms_product_attribute_value` VALUES (1, 9, 1, 'X');
INSERT INTO `pms_product_attribute_value` VALUES (2, 10, 1, 'X');
INSERT INTO `pms_product_attribute_value` VALUES (3, 11, 1, 'X');
INSERT INTO `pms_product_attribute_value` VALUES (4, 12, 1, 'X');
INSERT INTO `pms_product_attribute_value` VALUES (5, 13, 1, 'X');
INSERT INTO `pms_product_attribute_value` VALUES (6, 14, 1, 'X');
INSERT INTO `pms_product_attribute_value` VALUES (7, 18, 1, 'X');
INSERT INTO `pms_product_attribute_value` VALUES (8, 7, 1, 'X');
INSERT INTO `pms_product_attribute_value` VALUES (9, 7, 1, 'XL');
INSERT INTO `pms_product_attribute_value` VALUES (10, 7, 1, 'XXL');
INSERT INTO `pms_product_attribute_value` VALUES (11, 22, 7, 'x,xx');
INSERT INTO `pms_product_attribute_value` VALUES (12, 22, 24, 'no110');
INSERT INTO `pms_product_attribute_value` VALUES (13, 22, 25, '春季');
INSERT INTO `pms_product_attribute_value` VALUES (14, 22, 37, '青年');
INSERT INTO `pms_product_attribute_value` VALUES (15, 22, 38, '2018年春');
INSERT INTO `pms_product_attribute_value` VALUES (16, 22, 39, '长袖');
INSERT INTO `pms_product_attribute_value` VALUES (124, 23, 7, '米白色,浅黄色');
INSERT INTO `pms_product_attribute_value` VALUES (125, 23, 24, 'no1098');
INSERT INTO `pms_product_attribute_value` VALUES (126, 23, 25, '春季');
INSERT INTO `pms_product_attribute_value` VALUES (127, 23, 37, '青年');
INSERT INTO `pms_product_attribute_value` VALUES (128, 23, 38, '2018年春');
INSERT INTO `pms_product_attribute_value` VALUES (129, 23, 39, '长袖');
INSERT INTO `pms_product_attribute_value` VALUES (130, 1, 13, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (131, 1, 14, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (132, 1, 15, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (133, 1, 16, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (134, 1, 17, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (135, 1, 18, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (136, 1, 19, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (137, 1, 20, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (138, 1, 21, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (139, 2, 13, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (140, 2, 14, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (141, 2, 15, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (142, 2, 16, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (143, 2, 17, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (144, 2, 18, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (145, 2, 19, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (146, 2, 20, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (147, 2, 21, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (183, 31, 24, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (184, 31, 25, '夏季');
INSERT INTO `pms_product_attribute_value` VALUES (185, 31, 37, '青年');
INSERT INTO `pms_product_attribute_value` VALUES (186, 31, 38, '2018年夏');
INSERT INTO `pms_product_attribute_value` VALUES (187, 31, 39, '短袖');
INSERT INTO `pms_product_attribute_value` VALUES (203, 26, 43, '金色,银色');
INSERT INTO `pms_product_attribute_value` VALUES (204, 26, 45, '5.0');
INSERT INTO `pms_product_attribute_value` VALUES (205, 26, 46, '4G');
INSERT INTO `pms_product_attribute_value` VALUES (206, 26, 47, 'Android');
INSERT INTO `pms_product_attribute_value` VALUES (207, 26, 48, '3000');
INSERT INTO `pms_product_attribute_value` VALUES (213, 27, 43, '黑色,蓝色');
INSERT INTO `pms_product_attribute_value` VALUES (214, 27, 45, '5.8');
INSERT INTO `pms_product_attribute_value` VALUES (215, 27, 46, '4G');
INSERT INTO `pms_product_attribute_value` VALUES (216, 27, 47, 'Android');
INSERT INTO `pms_product_attribute_value` VALUES (217, 27, 48, '3000ml');
INSERT INTO `pms_product_attribute_value` VALUES (218, 28, 43, '金色,银色');
INSERT INTO `pms_product_attribute_value` VALUES (219, 28, 45, '5.0');
INSERT INTO `pms_product_attribute_value` VALUES (220, 28, 46, '4G');
INSERT INTO `pms_product_attribute_value` VALUES (221, 28, 47, 'Android');
INSERT INTO `pms_product_attribute_value` VALUES (222, 28, 48, '2800ml');
INSERT INTO `pms_product_attribute_value` VALUES (223, 29, 43, '金色,银色');
INSERT INTO `pms_product_attribute_value` VALUES (224, 29, 45, '4.7');
INSERT INTO `pms_product_attribute_value` VALUES (225, 29, 46, '4G');
INSERT INTO `pms_product_attribute_value` VALUES (226, 29, 47, 'IOS');
INSERT INTO `pms_product_attribute_value` VALUES (227, 29, 48, '1960ml');
INSERT INTO `pms_product_attribute_value` VALUES (228, 30, 24, NULL);
INSERT INTO `pms_product_attribute_value` VALUES (229, 30, 25, '夏季');
INSERT INTO `pms_product_attribute_value` VALUES (230, 30, 37, '青年');
INSERT INTO `pms_product_attribute_value` VALUES (231, 30, 38, '2018年夏');
INSERT INTO `pms_product_attribute_value` VALUES (232, 30, 39, '短袖');

-- ----------------------------
-- Table structure for pms_product_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category`;
CREATE TABLE `pms_product_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上机分类的编号：0表示一级分类',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(1) NULL DEFAULT NULL COMMENT '分类级别：0->1级；1->2级',
  `product_count` int(11) NULL DEFAULT NULL,
  `product_unit` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nav_status` int(1) NULL DEFAULT NULL COMMENT '是否显示在导航栏：0->不显示；1->显示',
  `show_status` int(1) NULL DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `sort` int(11) NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_product_category
-- ----------------------------
INSERT INTO `pms_product_category` VALUES (1, 0, '服装', 0, 100, '件', 1, 1, 1, NULL, '服装', '服装分类');
INSERT INTO `pms_product_category` VALUES (2, 0, '手机数码', 0, 100, '件', 1, 1, 1, NULL, '手机数码', '手机数码');
INSERT INTO `pms_product_category` VALUES (3, 0, '家用电器', 0, 100, '件', 1, 1, 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png', '家用电器', '家用电器');
INSERT INTO `pms_product_category` VALUES (4, 0, '家具家装', 0, 100, '件', 1, 1, 1, NULL, '家具家装', '家具家装');
INSERT INTO `pms_product_category` VALUES (5, 0, '汽车用品', 0, 100, '件', 1, 1, 1, NULL, '汽车用品', '汽车用品');
INSERT INTO `pms_product_category` VALUES (7, 1, '外套', 1, 100, '件', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_waitao.png', '外套', '外套');
INSERT INTO `pms_product_category` VALUES (8, 1, 'T恤', 1, 100, '件', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_tshirt.png', 'T恤', 'T恤');
INSERT INTO `pms_product_category` VALUES (9, 1, '休闲裤', 1, 100, '件', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_xiuxianku.png', '休闲裤', '休闲裤');
INSERT INTO `pms_product_category` VALUES (10, 1, '牛仔裤', 1, 100, '件', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_niuzaiku.png', '牛仔裤', '牛仔裤');
INSERT INTO `pms_product_category` VALUES (11, 1, '衬衫', 1, 100, '件', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_chenshan.png', '衬衫', '衬衫分类');
INSERT INTO `pms_product_category` VALUES (13, 12, '家电子分类1', 1, 1, 'string', 0, 1, 0, 'string', 'string', 'string');
INSERT INTO `pms_product_category` VALUES (14, 12, '家电子分类2', 1, 1, 'string', 0, 1, 0, 'string', 'string', 'string');
INSERT INTO `pms_product_category` VALUES (19, 2, '手机通讯', 1, 0, '件', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_shouji.png', '手机通讯', '手机通讯');
INSERT INTO `pms_product_category` VALUES (29, 1, '男鞋', 1, 0, '', 0, 0, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_xie.png', '', '');
INSERT INTO `pms_product_category` VALUES (30, 2, '手机配件', 1, 0, '', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_peijian.png', '手机配件', '手机配件');
INSERT INTO `pms_product_category` VALUES (31, 2, '摄影摄像', 1, 0, '', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_sheying.png', '', '');
INSERT INTO `pms_product_category` VALUES (32, 2, '影音娱乐', 1, 0, '', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_yule.png', '', '');
INSERT INTO `pms_product_category` VALUES (33, 2, '数码配件', 1, 0, '', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_yule.png', '', '');
INSERT INTO `pms_product_category` VALUES (34, 2, '智能设备', 1, 0, '', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_zhineng.png', '', '');
INSERT INTO `pms_product_category` VALUES (35, 3, '电视', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (36, 3, '空调', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (37, 3, '洗衣机', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (38, 3, '冰箱', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (39, 3, '厨卫大电', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (40, 3, '厨房小电', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (41, 3, '生活电器', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (42, 3, '个护健康', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (43, 4, '厨房卫浴', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (44, 4, '灯饰照明', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (45, 4, '五金工具', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (46, 4, '卧室家具', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (47, 4, '客厅家具', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (48, 5, '全新整车', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (49, 5, '车载电器', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (50, 5, '维修保养', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (51, 5, '汽车装饰', 1, 0, '', 1, 1, 0, '', '', '');
INSERT INTO `pms_product_category` VALUES (52, 11, '啦啦啦啦啦', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pms_product_category_attribute_relation
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category_attribute_relation`;
CREATE TABLE `pms_product_category_attribute_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint(20) NULL DEFAULT NULL,
  `product_attribute_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_product_category_attribute_relation
-- ----------------------------
INSERT INTO `pms_product_category_attribute_relation` VALUES (1, 24, 24);
INSERT INTO `pms_product_category_attribute_relation` VALUES (5, 26, 24);
INSERT INTO `pms_product_category_attribute_relation` VALUES (7, 28, 24);
INSERT INTO `pms_product_category_attribute_relation` VALUES (9, 25, 24);
INSERT INTO `pms_product_category_attribute_relation` VALUES (10, 25, 25);
INSERT INTO `pms_product_category_attribute_relation` VALUES (11, 1, 32);

-- ----------------------------
-- Table structure for pms_product_full_reduction
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_full_reduction`;
CREATE TABLE `pms_product_full_reduction`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `full_price` decimal(10, 2) NULL DEFAULT NULL,
  `reduce_price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品满减表(只针对同商品)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_product_full_reduction
-- ----------------------------
INSERT INTO `pms_product_full_reduction` VALUES (1, 7, 100.00, 20.00);
INSERT INTO `pms_product_full_reduction` VALUES (2, 8, 100.00, 20.00);
INSERT INTO `pms_product_full_reduction` VALUES (3, 9, 100.00, 20.00);
INSERT INTO `pms_product_full_reduction` VALUES (4, 10, 100.00, 20.00);
INSERT INTO `pms_product_full_reduction` VALUES (5, 11, 100.00, 20.00);
INSERT INTO `pms_product_full_reduction` VALUES (6, 12, 100.00, 20.00);
INSERT INTO `pms_product_full_reduction` VALUES (7, 13, 100.00, 20.00);
INSERT INTO `pms_product_full_reduction` VALUES (8, 14, 100.00, 20.00);
INSERT INTO `pms_product_full_reduction` VALUES (9, 18, 100.00, 20.00);
INSERT INTO `pms_product_full_reduction` VALUES (10, 7, 200.00, 50.00);
INSERT INTO `pms_product_full_reduction` VALUES (11, 7, 300.00, 100.00);
INSERT INTO `pms_product_full_reduction` VALUES (14, 22, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (16, 24, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (34, 23, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (44, 31, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (46, 32, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (48, 33, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (53, 36, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (54, 35, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (55, 34, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (57, 26, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (59, 27, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (60, 28, 500.00, 50.00);
INSERT INTO `pms_product_full_reduction` VALUES (61, 28, 1000.00, 120.00);
INSERT INTO `pms_product_full_reduction` VALUES (62, 29, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (63, 37, 0.00, 0.00);
INSERT INTO `pms_product_full_reduction` VALUES (64, 30, 0.00, 0.00);

-- ----------------------------
-- Table structure for pms_product_ladder
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_ladder`;
CREATE TABLE `pms_product_ladder`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL COMMENT '满足的商品数量',
  `discount` decimal(10, 2) NULL DEFAULT NULL COMMENT '折扣',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '折后价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品阶梯价格表(只针对同商品)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_product_ladder
-- ----------------------------
INSERT INTO `pms_product_ladder` VALUES (1, 7, 3, 0.70, 0.00);
INSERT INTO `pms_product_ladder` VALUES (2, 8, 3, 0.70, 0.00);
INSERT INTO `pms_product_ladder` VALUES (3, 9, 3, 0.70, 0.00);
INSERT INTO `pms_product_ladder` VALUES (4, 10, 3, 0.70, 0.00);
INSERT INTO `pms_product_ladder` VALUES (5, 11, 3, 0.70, 0.00);
INSERT INTO `pms_product_ladder` VALUES (6, 12, 3, 0.70, 0.00);
INSERT INTO `pms_product_ladder` VALUES (7, 13, 3, 0.70, 0.00);
INSERT INTO `pms_product_ladder` VALUES (8, 14, 3, 0.70, 0.00);
INSERT INTO `pms_product_ladder` VALUES (12, 18, 3, 0.70, 0.00);
INSERT INTO `pms_product_ladder` VALUES (14, 7, 4, 0.60, 0.00);
INSERT INTO `pms_product_ladder` VALUES (15, 7, 5, 0.50, 0.00);
INSERT INTO `pms_product_ladder` VALUES (18, 22, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (20, 24, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (38, 23, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (48, 31, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (50, 32, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (52, 33, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (57, 36, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (58, 35, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (59, 34, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (61, 26, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (64, 27, 2, 0.80, 0.00);
INSERT INTO `pms_product_ladder` VALUES (65, 27, 3, 0.75, 0.00);
INSERT INTO `pms_product_ladder` VALUES (66, 28, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (67, 29, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (68, 37, 0, 0.00, 0.00);
INSERT INTO `pms_product_ladder` VALUES (69, 30, 0, 0.00, 0.00);

-- ----------------------------
-- Table structure for pms_product_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_operate_log`;
CREATE TABLE `pms_product_operate_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `price_old` decimal(10, 2) NULL DEFAULT NULL,
  `price_new` decimal(10, 2) NULL DEFAULT NULL,
  `sale_price_old` decimal(10, 2) NULL DEFAULT NULL,
  `sale_price_new` decimal(10, 2) NULL DEFAULT NULL,
  `gift_point_old` int(11) NULL DEFAULT NULL COMMENT '赠送的积分',
  `gift_point_new` int(11) NULL DEFAULT NULL,
  `use_point_limit_old` int(11) NULL DEFAULT NULL,
  `use_point_limit_new` int(11) NULL DEFAULT NULL,
  `operate_man` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pms_product_vertify_record
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_vertify_record`;
CREATE TABLE `pms_product_vertify_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `vertify_man` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `status` int(1) NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '反馈详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品审核记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_product_vertify_record
-- ----------------------------
INSERT INTO `pms_product_vertify_record` VALUES (1, 1, '2018-04-27 16:36:41', 'test', 1, '验证通过');
INSERT INTO `pms_product_vertify_record` VALUES (2, 2, '2018-04-27 16:36:41', 'test', 1, '验证通过');

-- ----------------------------
-- Table structure for pms_sku_stock
-- ----------------------------
DROP TABLE IF EXISTS `pms_sku_stock`;
CREATE TABLE `pms_sku_stock`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `sku_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sku编码',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT 0 COMMENT '库存',
  `low_stock` int(11) NULL DEFAULT NULL COMMENT '预警库存',
  `sp1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售属性1',
  `sp2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sp3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '展示图片',
  `sale` int(11) NULL DEFAULT NULL COMMENT '销量',
  `promotion_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单品促销价格',
  `lock_stock` int(11) NULL DEFAULT 0 COMMENT '锁定库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sku的库存' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_sku_stock
-- ----------------------------
INSERT INTO `pms_sku_stock` VALUES (1, 7, 'string', 100.00, 0, 5, 'string', 'string', 'string', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (2, 8, 'string', 100.00, 0, 5, 'string', 'string', 'string', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (3, 9, 'string', 100.00, 0, 5, 'string', 'string', 'string', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (4, 10, 'string', 100.00, 0, 5, 'string', 'string', 'string', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (5, 11, 'string', 100.00, 0, 5, 'string', 'string', 'string', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (6, 12, 'string', 100.00, 0, 5, 'string', 'string', 'string', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (7, 13, 'string', 100.00, 0, 5, 'string', 'string', 'string', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (8, 14, 'string', 100.00, 0, 5, 'string', 'string', 'string', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (9, 18, 'string', 100.00, 0, 5, 'string', 'string', 'string', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (10, 7, 'string', 0.00, 0, 0, 'string', 'string', 'sp3', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (11, 7, 'string', 0.00, 0, 0, 'string', 'string', 'sp33', 'string', 0, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (12, 22, '111', 99.00, 0, NULL, 'x', 'M', NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (13, 22, '112', 99.00, 0, NULL, 'xx', 'M', NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/2018032614134591_20180326141345650 (4).png', NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (78, 23, '201806070023001', 99.00, 0, NULL, '米白色', 'M', NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (79, 23, '201806070023002', 99.00, 0, NULL, '米白色', 'X', NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (80, 23, '201806070023003', 99.00, 0, NULL, '浅黄色', 'M', NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/2017091716493787_20170917164937650 (1).png', NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (81, 23, '201806070023004', 99.00, 0, NULL, '浅黄色', 'X', NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/2017091716493787_20170917164937650 (1).png', NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (90, 26, '201806070026001', 3788.00, 499, NULL, '金色', '16G', NULL, NULL, NULL, 3588.00, -8);
INSERT INTO `pms_sku_stock` VALUES (91, 26, '201806070026002', 3999.00, 500, NULL, '金色', '32G', NULL, NULL, NULL, 3799.00, 0);
INSERT INTO `pms_sku_stock` VALUES (92, 26, '201806070026003', 3788.00, 500, NULL, '银色', '16G', NULL, NULL, NULL, 3588.00, 0);
INSERT INTO `pms_sku_stock` VALUES (93, 26, '201806070026004', 3999.00, 500, NULL, '银色', '32G', NULL, NULL, NULL, 3799.00, 0);
INSERT INTO `pms_sku_stock` VALUES (98, 27, '201808270027001', 2699.00, 97, NULL, '黑色', '32G', NULL, NULL, NULL, NULL, -24);
INSERT INTO `pms_sku_stock` VALUES (99, 27, '201808270027002', 2999.00, 100, NULL, '黑色', '64G', NULL, NULL, NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (100, 27, '201808270027003', 2699.00, 100, NULL, '蓝色', '32G', NULL, NULL, NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (101, 27, '201808270027004', 2999.00, 100, NULL, '蓝色', '64G', NULL, NULL, NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (102, 28, '201808270028001', 649.00, 99, NULL, '金色', '16G', NULL, NULL, NULL, NULL, -8);
INSERT INTO `pms_sku_stock` VALUES (103, 28, '201808270028002', 699.00, 99, NULL, '金色', '32G', NULL, NULL, NULL, NULL, -8);
INSERT INTO `pms_sku_stock` VALUES (104, 28, '201808270028003', 649.00, 100, NULL, '银色', '16G', NULL, NULL, NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (105, 28, '201808270028004', 699.00, 100, NULL, '银色', '32G', NULL, NULL, NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (106, 29, '201808270029001', 5499.00, 99, NULL, '金色', '32G', NULL, NULL, NULL, NULL, -8);
INSERT INTO `pms_sku_stock` VALUES (107, 29, '201808270029002', 6299.00, 100, NULL, '金色', '64G', NULL, NULL, NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (108, 29, '201808270029003', 5499.00, 100, NULL, '银色', '32G', NULL, NULL, NULL, NULL, 0);
INSERT INTO `pms_sku_stock` VALUES (109, 29, '201808270029004', 6299.00, 100, NULL, '银色', '64G', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for sms_coupon
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon`;
CREATE TABLE `sms_coupon`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(1) NULL DEFAULT NULL COMMENT '优惠卷类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` int(1) NULL DEFAULT NULL COMMENT '使用平台：0->全部；1->移动；2->PC',
  `count` int(11) NULL DEFAULT NULL COMMENT '数量',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `per_limit` int(11) NULL DEFAULT NULL COMMENT '每人限领张数',
  `min_point` decimal(10, 2) NULL DEFAULT NULL COMMENT '使用门槛；0表示无门槛',
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `use_type` int(1) NULL DEFAULT NULL COMMENT '使用类型：0->全场通用；1->指定分类；2->指定商品',
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `publish_count` int(11) NULL DEFAULT NULL COMMENT '发行数量',
  `use_count` int(11) NULL DEFAULT NULL COMMENT '已使用数量',
  `receive_count` int(11) NULL DEFAULT NULL COMMENT '领取数量',
  `enable_time` datetime(0) NULL DEFAULT NULL COMMENT '可以领取的日期',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠码',
  `member_level` int(1) NULL DEFAULT NULL COMMENT '可领取的会员类型：0->无限时',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠卷表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_coupon
-- ----------------------------
INSERT INTO `sms_coupon` VALUES (2, 0, '全品类通用券', 0, 92, 10.00, 1, 100.00, '2018-08-27 16:40:47', '2018-11-23 16:40:47', 0, '满100减10', 100, 0, 8, '2018-08-27 16:40:47', NULL, NULL);
INSERT INTO `sms_coupon` VALUES (3, 0, '小米手机专用券', 0, 92, 50.00, 1, 1000.00, '2018-08-27 16:40:47', '2018-11-16 16:40:47', 2, '小米手机专用优惠券', 100, 0, 8, '2018-08-27 16:40:47', NULL, NULL);
INSERT INTO `sms_coupon` VALUES (4, 0, '手机品类专用券', 0, 92, 300.00, 1, 2000.00, '2018-08-27 16:40:47', '2018-09-15 16:40:47', 1, '手机分类专用优惠券', 100, 0, 8, '2018-08-27 16:40:47', NULL, NULL);
INSERT INTO `sms_coupon` VALUES (7, 0, 'T恤分类专用优惠券', 0, 93, 50.00, 1, 500.00, '2018-08-27 16:40:47', '2018-08-15 16:40:47', 1, '满500减50', 100, 0, 7, '2018-08-27 16:40:47', NULL, NULL);
INSERT INTO `sms_coupon` VALUES (8, 0, '新优惠券', 0, 100, 100.00, 1, 1000.00, '2018-11-08 00:00:00', '2018-11-27 00:00:00', 0, '测试', 100, 0, 1, NULL, NULL, NULL);
INSERT INTO `sms_coupon` VALUES (9, 0, '全品类通用券', 0, 100, 5.00, 1, 100.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, NULL, 100, 0, 1, NULL, NULL, NULL);
INSERT INTO `sms_coupon` VALUES (10, 0, '全品类通用券', 0, 100, 15.00, 1, 200.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, NULL, 100, 0, 1, NULL, NULL, NULL);
INSERT INTO `sms_coupon` VALUES (11, 0, '全品类通用券', 0, 1000, 50.00, 1, 1000.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, NULL, 1000, 0, 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon` VALUES (12, 0, '移动端全品类通用券', 1, 1, 10.00, 1, 100.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, NULL, 100, 0, 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon` VALUES (19, 0, '手机分类专用', 0, 100, 100.00, 1, 1000.00, '2018-11-09 00:00:00', '2018-11-17 00:00:00', 1, '手机分类专用', 100, 0, 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon` VALUES (20, 0, '小米手机专用', 0, 100, 200.00, 1, 1000.00, '2018-11-09 00:00:00', '2018-11-24 00:00:00', 2, '小米手机专用', 100, 0, 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon` VALUES (21, 0, 'xxx', 0, 100, 10.00, 1, 100.00, '2018-11-09 00:00:00', '2018-11-30 00:00:00', 2, NULL, 100, 0, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sms_coupon_history
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_history`;
CREATE TABLE `sms_coupon_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) NULL DEFAULT NULL,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `coupon_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '领取人昵称',
  `get_type` int(1) NULL DEFAULT NULL COMMENT '获取类型：0->后台赠送；1->主动获取',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `use_status` int(1) NULL DEFAULT NULL COMMENT '使用状态：0->未使用；1->已使用；2->已过期',
  `use_time` datetime(0) NULL DEFAULT NULL COMMENT '使用时间',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单编号',
  `order_sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号码',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_member_id`(`member_id`) USING BTREE,
  INDEX `idx_coupon_id`(`coupon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券使用、领取历史表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_coupon_history
-- ----------------------------
INSERT INTO `sms_coupon_history` VALUES (2, 2, 1, '4931048380330002', 'windir', 1, '2018-08-29 14:04:12', 0, '2019-03-21 15:03:40', 12, '201809150101000001');
INSERT INTO `sms_coupon_history` VALUES (3, 3, 1, '4931048380330003', 'windir', 1, '2018-08-29 14:04:29', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (4, 4, 1, '4931048380330004', 'windir', 1, '2018-08-29 14:04:32', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (11, 7, 1, '4931048380330001', 'windir', 1, '2018-09-04 16:21:50', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (12, 2, 4, '0340981248320004', 'zhensan', 1, '2018-11-12 14:16:50', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (13, 3, 4, '0342977234360004', 'zhensan', 1, '2018-11-12 14:17:10', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (14, 4, 4, '0343342928830004', 'zhensan', 1, '2018-11-12 14:17:13', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (15, 2, 5, '0351883832180005', 'lisi', 1, '2018-11-12 14:18:39', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (16, 3, 5, '0352201672680005', 'lisi', 1, '2018-11-12 14:18:42', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (17, 4, 5, '0352505810180005', 'lisi', 1, '2018-11-12 14:18:45', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (18, 2, 6, '0356114588380006', 'wangwu', 1, '2018-11-12 14:19:21', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (19, 3, 6, '0356382856920006', 'wangwu', 1, '2018-11-12 14:19:24', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (20, 4, 6, '0356656798470006', 'wangwu', 1, '2018-11-12 14:19:27', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (21, 2, 3, '0363644984620003', 'windy', 1, '2018-11-12 14:20:36', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (22, 3, 3, '0363932820300003', 'windy', 1, '2018-11-12 14:20:39', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (23, 4, 3, '0364238275840003', 'windy', 1, '2018-11-12 14:20:42', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (24, 2, 7, '0385034833070007', 'lion', 1, '2018-11-12 14:24:10', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (25, 3, 7, '0385350208650007', 'lion', 1, '2018-11-12 14:24:13', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (26, 4, 7, '0385632733900007', 'lion', 1, '2018-11-12 14:24:16', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (27, 2, 8, '0388779132990008', 'shari', 1, '2018-11-12 14:24:48', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (28, 3, 8, '0388943658810008', 'shari', 1, '2018-11-12 14:24:49', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (29, 4, 8, '0389069398320008', 'shari', 1, '2018-11-12 14:24:51', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (30, 2, 9, '0390753935250009', 'aewen', 1, '2018-11-12 14:25:08', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (31, 3, 9, '0390882954470009', 'aewen', 1, '2018-11-12 14:25:09', 0, NULL, NULL, NULL);
INSERT INTO `sms_coupon_history` VALUES (32, 4, 9, '0391025542810009', 'aewen', 1, '2018-11-12 14:25:10', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sms_coupon_product_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_product_category_relation`;
CREATE TABLE `sms_coupon_product_category_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) NULL DEFAULT NULL,
  `product_category_id` bigint(20) NULL DEFAULT NULL,
  `product_category_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品分类名称',
  `parent_category_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券和产品分类关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_coupon_product_category_relation
-- ----------------------------
INSERT INTO `sms_coupon_product_category_relation` VALUES (4, 19, 30, '手机配件', '手机数码');

-- ----------------------------
-- Table structure for sms_coupon_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_product_relation`;
CREATE TABLE `sms_coupon_product_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) NULL DEFAULT NULL,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `product_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_sn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券和产品的关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_coupon_product_relation
-- ----------------------------
INSERT INTO `sms_coupon_product_relation` VALUES (9, 21, 33, '小米（MI）小米电视4A ', '4609652');

-- ----------------------------
-- Table structure for sms_flash_promotion
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion`;
CREATE TABLE `sms_flash_promotion`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL COMMENT '开始日期',
  `end_date` date NULL DEFAULT NULL COMMENT '结束日期',
  `status` int(1) NULL DEFAULT NULL COMMENT '上下线状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '秒杀时间段名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '限时购表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_flash_promotion
-- ----------------------------
INSERT INTO `sms_flash_promotion` VALUES (2, '春季家电家具疯狂秒杀1', '2019-01-28', '2019-01-15', 0, '2018-11-16 11:12:13');
INSERT INTO `sms_flash_promotion` VALUES (3, '前端测试专用活动', '2018-11-03', '2019-02-28', 1, '2018-11-16 11:11:31');
INSERT INTO `sms_flash_promotion` VALUES (4, '春季家电家具疯狂秒杀3', '2018-11-24', '2018-11-25', 0, '2018-11-16 11:12:19');
INSERT INTO `sms_flash_promotion` VALUES (5, '春季家电家具疯狂秒杀4', '2018-11-16', '2018-11-16', 0, '2018-11-16 11:12:24');
INSERT INTO `sms_flash_promotion` VALUES (6, '春季家电家具疯狂秒杀5', '2018-11-16', '2018-11-16', 0, '2018-11-16 11:12:31');
INSERT INTO `sms_flash_promotion` VALUES (7, '春季家电家具疯狂秒杀6', '2018-11-16', '2018-11-16', 0, '2018-11-16 11:12:35');
INSERT INTO `sms_flash_promotion` VALUES (8, '春季家电家具疯狂秒杀7', '2018-11-16', '2018-11-16', 0, '2018-11-16 11:12:39');
INSERT INTO `sms_flash_promotion` VALUES (9, '春季家电家具疯狂秒杀8', '2018-11-16', '2018-11-16', 0, '2018-11-16 11:12:42');
INSERT INTO `sms_flash_promotion` VALUES (13, '测试', '2018-11-01', '2018-11-30', 0, '2018-11-19 10:34:24');

-- ----------------------------
-- Table structure for sms_flash_promotion_log
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_log`;
CREATE TABLE `sms_flash_promotion_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NULL DEFAULT NULL,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `member_phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subscribe_time` datetime(0) NULL DEFAULT NULL COMMENT '会员订阅时间',
  `send_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '限时购通知记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sms_flash_promotion_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_product_relation`;
CREATE TABLE `sms_flash_promotion_product_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `flash_promotion_id` bigint(20) NULL DEFAULT NULL,
  `flash_promotion_session_id` bigint(20) NULL DEFAULT NULL COMMENT '编号',
  `product_id` bigint(20) NULL DEFAULT NULL,
  `flash_promotion_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '限时购价格',
  `flash_promotion_count` int(11) NULL DEFAULT NULL COMMENT '限时购数量',
  `flash_promotion_limit` int(11) NULL DEFAULT NULL COMMENT '每人限购数量',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品限时购与商品关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_flash_promotion_product_relation
-- ----------------------------
INSERT INTO `sms_flash_promotion_product_relation` VALUES (1, 2, 1, 26, 3000.00, 10, 1, 0);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (2, 2, 1, 27, 2000.00, 10, 1, 20);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (3, 2, 1, 28, 599.00, 19, 1, 0);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (4, 2, 1, 29, 4999.00, 10, 1, 100);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (9, 2, 2, 26, 2999.00, 100, 1, 0);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (10, 2, 2, 27, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (11, 2, 2, 28, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (12, 2, 2, 29, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (13, 2, 2, 30, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (14, 2, 3, 31, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (15, 2, 3, 32, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (16, 2, 4, 33, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (17, 2, 4, 34, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (18, 2, 5, 36, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (19, 2, 6, 33, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (20, 2, 6, 34, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (21, 3, 1, 26, 3000.00, 100, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (22, 3, 1, 27, 1999.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (23, 3, 1, 28, 599.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (24, 3, 1, 29, 4999.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (25, 3, 2, 31, 90.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (26, 3, 2, 32, 60.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (27, 3, 2, 33, 2299.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (28, 3, 2, 34, 3888.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (29, 3, 3, 36, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (30, 3, 3, 35, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (31, 3, 3, 31, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (32, 3, 3, 32, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (33, 3, 4, 26, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (34, 3, 4, 27, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (35, 3, 4, 28, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (36, 3, 4, 29, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (37, 3, 5, 26, 3688.00, 100, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (38, 3, 5, 27, 2599.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (39, 3, 5, 28, 599.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (40, 3, 5, 29, 4999.00, 10, 1, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (41, 3, 6, 26, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (42, 3, 6, 27, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (43, 3, 6, 28, NULL, NULL, NULL, NULL);
INSERT INTO `sms_flash_promotion_product_relation` VALUES (44, 3, 6, 29, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sms_flash_promotion_session
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_session`;
CREATE TABLE `sms_flash_promotion_session`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '场次名称',
  `start_time` time(0) NULL DEFAULT NULL COMMENT '每日开始时间',
  `end_time` time(0) NULL DEFAULT NULL COMMENT '每日结束时间',
  `status` int(1) NULL DEFAULT NULL COMMENT '启用状态：0->不启用；1->启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '限时购场次表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_flash_promotion_session
-- ----------------------------
INSERT INTO `sms_flash_promotion_session` VALUES (1, '8:00', '08:00:00', '10:00:33', 1, '2018-11-16 13:22:17');
INSERT INTO `sms_flash_promotion_session` VALUES (2, '10:00', '10:00:00', '12:00:00', 1, '2018-11-16 13:22:34');
INSERT INTO `sms_flash_promotion_session` VALUES (3, '12:00', '12:00:00', '14:00:00', 1, '2018-11-16 13:22:37');
INSERT INTO `sms_flash_promotion_session` VALUES (4, '14:00', '14:00:00', '16:00:00', 1, '2018-11-16 13:22:41');
INSERT INTO `sms_flash_promotion_session` VALUES (5, '16:00', '16:00:00', '18:00:00', 1, '2018-11-16 13:22:45');
INSERT INTO `sms_flash_promotion_session` VALUES (6, '18:00', '18:00:00', '20:00:00', 1, '2018-11-16 13:21:34');
INSERT INTO `sms_flash_promotion_session` VALUES (7, '20:00', '20:00:33', '21:00:33', 0, '2018-11-16 13:22:55');

-- ----------------------------
-- Table structure for sms_home_advertise
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_advertise`;
CREATE TABLE `sms_home_advertise`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(1) NULL DEFAULT NULL COMMENT '轮播位置：0->PC首页轮播；1->app首页轮播',
  `pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL COMMENT '上下线状态：0->下线；1->上线',
  `click_count` int(11) NULL DEFAULT NULL COMMENT '点击数',
  `order_count` int(11) NULL DEFAULT NULL COMMENT '下单数',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页轮播广告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_home_advertise
-- ----------------------------
INSERT INTO `sms_home_advertise` VALUES (2, '夏季大热促销', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '2018-11-01 14:01:37', '2018-11-15 14:01:37', 0, 0, 0, NULL, '夏季大热促销', 0);
INSERT INTO `sms_home_advertise` VALUES (3, '夏季大热促销1', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', 0, 0, 0, NULL, '夏季大热促销1', 0);
INSERT INTO `sms_home_advertise` VALUES (4, '夏季大热促销2', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', 1, 0, 0, NULL, '夏季大热促销2', 0);
INSERT INTO `sms_home_advertise` VALUES (9, '电影推荐广告', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/movie_ad.jpg', '2018-11-01 00:00:00', '2018-11-24 00:00:00', 1, 0, 0, 'www.baidu.com', '电影推荐广告', 100);
INSERT INTO `sms_home_advertise` VALUES (10, '汽车促销广告', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad.jpg', '2018-11-13 00:00:00', '2018-11-24 00:00:00', 1, 0, 0, 'xxx', NULL, 99);
INSERT INTO `sms_home_advertise` VALUES (11, '汽车推荐广告', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad2.jpg', '2018-11-13 00:00:00', '2018-11-30 00:00:00', 1, 0, 0, 'xxx', NULL, 98);

-- ----------------------------
-- Table structure for sms_home_brand
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_brand`;
CREATE TABLE `sms_home_brand`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) NULL DEFAULT NULL,
  `brand_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recommend_status` int(1) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页推荐品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_home_brand
-- ----------------------------
INSERT INTO `sms_home_brand` VALUES (1, 1, '万和', 0, 21);
INSERT INTO `sms_home_brand` VALUES (2, 2, '三星', 0, 22);
INSERT INTO `sms_home_brand` VALUES (6, 6, '小米', 0, 999);
INSERT INTO `sms_home_brand` VALUES (8, 5, '方太', 0, 100);
INSERT INTO `sms_home_brand` VALUES (32, 50, '海澜之家', 0, 0);
INSERT INTO `sms_home_brand` VALUES (33, 51, '苹果', 1, 0);
INSERT INTO `sms_home_brand` VALUES (35, 3, '华为', 1, 0);
INSERT INTO `sms_home_brand` VALUES (36, 4, '格力', 1, 0);
INSERT INTO `sms_home_brand` VALUES (37, 5, '方太', 1, 0);
INSERT INTO `sms_home_brand` VALUES (38, 1, '万和', 1, 0);
INSERT INTO `sms_home_brand` VALUES (39, 21, 'OPPO', 1, 999);

-- ----------------------------
-- Table structure for sms_home_new_product
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_new_product`;
CREATE TABLE `sms_home_new_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `product_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recommend_status` int(1) NULL DEFAULT NULL,
  `sort` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新鲜好物表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_home_new_product
-- ----------------------------
INSERT INTO `sms_home_new_product` VALUES (2, 27, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 1, 200);
INSERT INTO `sms_home_new_product` VALUES (8, 26, '华为 HUAWEI P20 ', 1, 0);
INSERT INTO `sms_home_new_product` VALUES (9, 27, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 1, 0);
INSERT INTO `sms_home_new_product` VALUES (10, 28, '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 1, 0);
INSERT INTO `sms_home_new_product` VALUES (11, 29, 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 1, 0);
INSERT INTO `sms_home_new_product` VALUES (12, 30, 'HLA海澜之家简约动物印花短袖T恤', 1, 0);

-- ----------------------------
-- Table structure for sms_home_recommend_product
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_recommend_product`;
CREATE TABLE `sms_home_recommend_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `product_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recommend_status` int(1) NULL DEFAULT NULL,
  `sort` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '人气推荐商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_home_recommend_product
-- ----------------------------
INSERT INTO `sms_home_recommend_product` VALUES (3, 26, '华为 HUAWEI P20 ', 1, 0);
INSERT INTO `sms_home_recommend_product` VALUES (4, 27, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 1, 0);
INSERT INTO `sms_home_recommend_product` VALUES (5, 28, '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 1, 0);
INSERT INTO `sms_home_recommend_product` VALUES (6, 29, 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 1, 0);
INSERT INTO `sms_home_recommend_product` VALUES (7, 30, 'HLA海澜之家简约动物印花短袖T恤', 1, 100);

-- ----------------------------
-- Table structure for sms_home_recommend_subject
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_recommend_subject`;
CREATE TABLE `sms_home_recommend_subject`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) NULL DEFAULT NULL,
  `subject_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recommend_status` int(1) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页推荐专题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_home_recommend_subject
-- ----------------------------
INSERT INTO `sms_home_recommend_subject` VALUES (14, 1, 'polo衬衫的也时尚', 1, 0);
INSERT INTO `sms_home_recommend_subject` VALUES (15, 2, '大牌手机低价秒', 1, 0);
INSERT INTO `sms_home_recommend_subject` VALUES (16, 3, '晓龙845新品上市', 1, 0);
INSERT INTO `sms_home_recommend_subject` VALUES (17, 4, '夏天应该穿什么', 1, 0);
INSERT INTO `sms_home_recommend_subject` VALUES (18, 5, '夏季精选', 1, 100);
INSERT INTO `sms_home_recommend_subject` VALUES (19, 6, '品牌手机降价', 1, 0);

-- ----------------------------
-- Table structure for t_sys_calendar
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_calendar`;
CREATE TABLE `t_sys_calendar`  (
  `f_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日期：yyyy-mm-dd',
  `fdate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期：yyyymmdd',
  `f_year` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在年',
  `f_month` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在月',
  `f_day` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在日',
  `f_week` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '星期几',
  `week_of_year` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第几周',
  `year_quarter` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在季度',
  `year_week` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年周',
  `year_and_month` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年月',
  `week_begin` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '周开始日期',
  `week_end` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '周结束日期',
  `is_Legal_hday` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否法定假日：0 否 ，1 是',
  PRIMARY KEY (`f_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_calendar
-- ----------------------------
INSERT INTO `t_sys_calendar` VALUES ('2018-01-01', '20180101', '2018', '01', '01', '星期一', '01', '20181', '2018-01', '201801', '20180101', '20180107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-02', '20180102', '2018', '01', '02', '星期二', '01', '20181', '2018-01', '201801', '20180101', '20180107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-03', '20180103', '2018', '01', '03', '星期三', '01', '20181', '2018-01', '201801', '20180101', '20180107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-04', '20180104', '2018', '01', '04', '星期四', '01', '20181', '2018-01', '201801', '20180101', '20180107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-05', '20180105', '2018', '01', '05', '星期五', '01', '20181', '2018-01', '201801', '20180101', '20180107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-06', '20180106', '2018', '01', '06', '星期六', '01', '20181', '2018-01', '201801', '20180101', '20180107', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-07', '20180107', '2018', '01', '07', '星期日', '01', '20181', '2018-01', '201801', '20180108', '20180114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-08', '20180108', '2018', '01', '08', '星期一', '02', '20181', '2018-02', '201801', '20180108', '20180114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-09', '20180109', '2018', '01', '09', '星期二', '02', '20181', '2018-02', '201801', '20180108', '20180114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-10', '20180110', '2018', '01', '10', '星期三', '02', '20181', '2018-02', '201801', '20180108', '20180114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-11', '20180111', '2018', '01', '11', '星期四', '02', '20181', '2018-02', '201801', '20180108', '20180114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-12', '20180112', '2018', '01', '12', '星期五', '02', '20181', '2018-02', '201801', '20180108', '20180114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-13', '20180113', '2018', '01', '13', '星期六', '02', '20181', '2018-02', '201801', '20180108', '20180114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-14', '20180114', '2018', '01', '14', '星期日', '02', '20181', '2018-02', '201801', '20180115', '20180121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-15', '20180115', '2018', '01', '15', '星期一', '03', '20181', '2018-03', '201801', '20180115', '20180121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-16', '20180116', '2018', '01', '16', '星期二', '03', '20181', '2018-03', '201801', '20180115', '20180121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-17', '20180117', '2018', '01', '17', '星期三', '03', '20181', '2018-03', '201801', '20180115', '20180121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-18', '20180118', '2018', '01', '18', '星期四', '03', '20181', '2018-03', '201801', '20180115', '20180121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-19', '20180119', '2018', '01', '19', '星期五', '03', '20181', '2018-03', '201801', '20180115', '20180121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-20', '20180120', '2018', '01', '20', '星期六', '03', '20181', '2018-03', '201801', '20180115', '20180121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-21', '20180121', '2018', '01', '21', '星期日', '03', '20181', '2018-03', '201801', '20180122', '20180128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-22', '20180122', '2018', '01', '22', '星期一', '04', '20181', '2018-04', '201801', '20180122', '20180128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-23', '20180123', '2018', '01', '23', '星期二', '04', '20181', '2018-04', '201801', '20180122', '20180128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-24', '20180124', '2018', '01', '24', '星期三', '04', '20181', '2018-04', '201801', '20180122', '20180128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-25', '20180125', '2018', '01', '25', '星期四', '04', '20181', '2018-04', '201801', '20180122', '20180128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-26', '20180126', '2018', '01', '26', '星期五', '04', '20181', '2018-04', '201801', '20180122', '20180128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-27', '20180127', '2018', '01', '27', '星期六', '04', '20181', '2018-04', '201801', '20180122', '20180128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-28', '20180128', '2018', '01', '28', '星期日', '04', '20181', '2018-04', '201801', '20180129', '20180204', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-29', '20180129', '2018', '01', '29', '星期一', '05', '20181', '2018-05', '201801', '20180129', '20180204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-30', '20180130', '2018', '01', '30', '星期二', '05', '20181', '2018-05', '201801', '20180129', '20180204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-01-31', '20180131', '2018', '01', '31', '星期三', '05', '20181', '2018-05', '201801', '20180129', '20180204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-01', '20180201', '2018', '02', '01', '星期四', '05', '20181', '2018-05', '201802', '20180129', '20180204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-02', '20180202', '2018', '02', '02', '星期五', '05', '20181', '2018-05', '201802', '20180129', '20180204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-03', '20180203', '2018', '02', '03', '星期六', '05', '20181', '2018-05', '201802', '20180129', '20180204', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-04', '20180204', '2018', '02', '04', '星期日', '05', '20181', '2018-05', '201802', '20180205', '20180211', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-05', '20180205', '2018', '02', '05', '星期一', '06', '20181', '2018-06', '201802', '20180205', '20180211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-06', '20180206', '2018', '02', '06', '星期二', '06', '20181', '2018-06', '201802', '20180205', '20180211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-07', '20180207', '2018', '02', '07', '星期三', '06', '20181', '2018-06', '201802', '20180205', '20180211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-08', '20180208', '2018', '02', '08', '星期四', '06', '20181', '2018-06', '201802', '20180205', '20180211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-09', '20180209', '2018', '02', '09', '星期五', '06', '20181', '2018-06', '201802', '20180205', '20180211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-10', '20180210', '2018', '02', '10', '星期六', '06', '20181', '2018-06', '201802', '20180205', '20180211', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-11', '20180211', '2018', '02', '11', '星期日', '06', '20181', '2018-06', '201802', '20180212', '20180218', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-12', '20180212', '2018', '02', '12', '星期一', '07', '20181', '2018-07', '201802', '20180212', '20180218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-13', '20180213', '2018', '02', '13', '星期二', '07', '20181', '2018-07', '201802', '20180212', '20180218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-14', '20180214', '2018', '02', '14', '星期三', '07', '20181', '2018-07', '201802', '20180212', '20180218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-15', '20180215', '2018', '02', '15', '星期四', '07', '20181', '2018-07', '201802', '20180212', '20180218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-16', '20180216', '2018', '02', '16', '星期五', '07', '20181', '2018-07', '201802', '20180212', '20180218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-17', '20180217', '2018', '02', '17', '星期六', '07', '20181', '2018-07', '201802', '20180212', '20180218', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-18', '20180218', '2018', '02', '18', '星期日', '07', '20181', '2018-07', '201802', '20180219', '20180225', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-19', '20180219', '2018', '02', '19', '星期一', '08', '20181', '2018-08', '201802', '20180219', '20180225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-20', '20180220', '2018', '02', '20', '星期二', '08', '20181', '2018-08', '201802', '20180219', '20180225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-21', '20180221', '2018', '02', '21', '星期三', '08', '20181', '2018-08', '201802', '20180219', '20180225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-22', '20180222', '2018', '02', '22', '星期四', '08', '20181', '2018-08', '201802', '20180219', '20180225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-23', '20180223', '2018', '02', '23', '星期五', '08', '20181', '2018-08', '201802', '20180219', '20180225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-24', '20180224', '2018', '02', '24', '星期六', '08', '20181', '2018-08', '201802', '20180219', '20180225', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-25', '20180225', '2018', '02', '25', '星期日', '08', '20181', '2018-08', '201802', '20180226', '20180304', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-26', '20180226', '2018', '02', '26', '星期一', '09', '20181', '2018-09', '201802', '20180226', '20180304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-27', '20180227', '2018', '02', '27', '星期二', '09', '20181', '2018-09', '201802', '20180226', '20180304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-02-28', '20180228', '2018', '02', '28', '星期三', '09', '20181', '2018-09', '201802', '20180226', '20180304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-01', '20180301', '2018', '03', '01', '星期四', '09', '20181', '2018-09', '201803', '20180226', '20180304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-02', '20180302', '2018', '03', '02', '星期五', '09', '20181', '2018-09', '201803', '20180226', '20180304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-03', '20180303', '2018', '03', '03', '星期六', '09', '20181', '2018-09', '201803', '20180226', '20180304', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-04', '20180304', '2018', '03', '04', '星期日', '09', '20181', '2018-09', '201803', '20180305', '20180311', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-05', '20180305', '2018', '03', '05', '星期一', '10', '20181', '2018-10', '201803', '20180305', '20180311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-06', '20180306', '2018', '03', '06', '星期二', '10', '20181', '2018-10', '201803', '20180305', '20180311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-07', '20180307', '2018', '03', '07', '星期三', '10', '20181', '2018-10', '201803', '20180305', '20180311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-08', '20180308', '2018', '03', '08', '星期四', '10', '20181', '2018-10', '201803', '20180305', '20180311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-09', '20180309', '2018', '03', '09', '星期五', '10', '20181', '2018-10', '201803', '20180305', '20180311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-10', '20180310', '2018', '03', '10', '星期六', '10', '20181', '2018-10', '201803', '20180305', '20180311', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-11', '20180311', '2018', '03', '11', '星期日', '10', '20181', '2018-10', '201803', '20180312', '20180318', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-12', '20180312', '2018', '03', '12', '星期一', '11', '20181', '2018-11', '201803', '20180312', '20180318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-13', '20180313', '2018', '03', '13', '星期二', '11', '20181', '2018-11', '201803', '20180312', '20180318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-14', '20180314', '2018', '03', '14', '星期三', '11', '20181', '2018-11', '201803', '20180312', '20180318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-15', '20180315', '2018', '03', '15', '星期四', '11', '20181', '2018-11', '201803', '20180312', '20180318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-16', '20180316', '2018', '03', '16', '星期五', '11', '20181', '2018-11', '201803', '20180312', '20180318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-17', '20180317', '2018', '03', '17', '星期六', '11', '20181', '2018-11', '201803', '20180312', '20180318', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-18', '20180318', '2018', '03', '18', '星期日', '11', '20181', '2018-11', '201803', '20180319', '20180325', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-19', '20180319', '2018', '03', '19', '星期一', '12', '20181', '2018-12', '201803', '20180319', '20180325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-20', '20180320', '2018', '03', '20', '星期二', '12', '20181', '2018-12', '201803', '20180319', '20180325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-21', '20180321', '2018', '03', '21', '星期三', '12', '20181', '2018-12', '201803', '20180319', '20180325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-22', '20180322', '2018', '03', '22', '星期四', '12', '20181', '2018-12', '201803', '20180319', '20180325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-23', '20180323', '2018', '03', '23', '星期五', '12', '20181', '2018-12', '201803', '20180319', '20180325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-24', '20180324', '2018', '03', '24', '星期六', '12', '20181', '2018-12', '201803', '20180319', '20180325', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-25', '20180325', '2018', '03', '25', '星期日', '12', '20181', '2018-12', '201803', '20180326', '20180401', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-26', '20180326', '2018', '03', '26', '星期一', '13', '20181', '2018-13', '201803', '20180326', '20180401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-27', '20180327', '2018', '03', '27', '星期二', '13', '20181', '2018-13', '201803', '20180326', '20180401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-28', '20180328', '2018', '03', '28', '星期三', '13', '20181', '2018-13', '201803', '20180326', '20180401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-29', '20180329', '2018', '03', '29', '星期四', '13', '20181', '2018-13', '201803', '20180326', '20180401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-30', '20180330', '2018', '03', '30', '星期五', '13', '20181', '2018-13', '201803', '20180326', '20180401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-03-31', '20180331', '2018', '03', '31', '星期六', '13', '20181', '2018-13', '201803', '20180326', '20180401', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-01', '20180401', '2018', '04', '01', '星期日', '13', '20182', '2018-13', '201804', '20180402', '20180408', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-02', '20180402', '2018', '04', '02', '星期一', '14', '20182', '2018-14', '201804', '20180402', '20180408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-03', '20180403', '2018', '04', '03', '星期二', '14', '20182', '2018-14', '201804', '20180402', '20180408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-04', '20180404', '2018', '04', '04', '星期三', '14', '20182', '2018-14', '201804', '20180402', '20180408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-05', '20180405', '2018', '04', '05', '星期四', '14', '20182', '2018-14', '201804', '20180402', '20180408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-06', '20180406', '2018', '04', '06', '星期五', '14', '20182', '2018-14', '201804', '20180402', '20180408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-07', '20180407', '2018', '04', '07', '星期六', '14', '20182', '2018-14', '201804', '20180402', '20180408', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-08', '20180408', '2018', '04', '08', '星期日', '14', '20182', '2018-14', '201804', '20180409', '20180415', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-09', '20180409', '2018', '04', '09', '星期一', '15', '20182', '2018-15', '201804', '20180409', '20180415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-10', '20180410', '2018', '04', '10', '星期二', '15', '20182', '2018-15', '201804', '20180409', '20180415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-11', '20180411', '2018', '04', '11', '星期三', '15', '20182', '2018-15', '201804', '20180409', '20180415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-12', '20180412', '2018', '04', '12', '星期四', '15', '20182', '2018-15', '201804', '20180409', '20180415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-13', '20180413', '2018', '04', '13', '星期五', '15', '20182', '2018-15', '201804', '20180409', '20180415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-14', '20180414', '2018', '04', '14', '星期六', '15', '20182', '2018-15', '201804', '20180409', '20180415', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-15', '20180415', '2018', '04', '15', '星期日', '15', '20182', '2018-15', '201804', '20180416', '20180422', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-16', '20180416', '2018', '04', '16', '星期一', '16', '20182', '2018-16', '201804', '20180416', '20180422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-17', '20180417', '2018', '04', '17', '星期二', '16', '20182', '2018-16', '201804', '20180416', '20180422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-18', '20180418', '2018', '04', '18', '星期三', '16', '20182', '2018-16', '201804', '20180416', '20180422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-19', '20180419', '2018', '04', '19', '星期四', '16', '20182', '2018-16', '201804', '20180416', '20180422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-20', '20180420', '2018', '04', '20', '星期五', '16', '20182', '2018-16', '201804', '20180416', '20180422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-21', '20180421', '2018', '04', '21', '星期六', '16', '20182', '2018-16', '201804', '20180416', '20180422', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-22', '20180422', '2018', '04', '22', '星期日', '16', '20182', '2018-16', '201804', '20180423', '20180429', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-23', '20180423', '2018', '04', '23', '星期一', '17', '20182', '2018-17', '201804', '20180423', '20180429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-24', '20180424', '2018', '04', '24', '星期二', '17', '20182', '2018-17', '201804', '20180423', '20180429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-25', '20180425', '2018', '04', '25', '星期三', '17', '20182', '2018-17', '201804', '20180423', '20180429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-26', '20180426', '2018', '04', '26', '星期四', '17', '20182', '2018-17', '201804', '20180423', '20180429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-27', '20180427', '2018', '04', '27', '星期五', '17', '20182', '2018-17', '201804', '20180423', '20180429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-28', '20180428', '2018', '04', '28', '星期六', '17', '20182', '2018-17', '201804', '20180423', '20180429', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-29', '20180429', '2018', '04', '29', '星期日', '17', '20182', '2018-17', '201804', '20180430', '20180506', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-04-30', '20180430', '2018', '04', '30', '星期一', '18', '20182', '2018-18', '201804', '20180430', '20180506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-01', '20180501', '2018', '05', '01', '星期二', '18', '20182', '2018-18', '201805', '20180430', '20180506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-02', '20180502', '2018', '05', '02', '星期三', '18', '20182', '2018-18', '201805', '20180430', '20180506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-03', '20180503', '2018', '05', '03', '星期四', '18', '20182', '2018-18', '201805', '20180430', '20180506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-04', '20180504', '2018', '05', '04', '星期五', '18', '20182', '2018-18', '201805', '20180430', '20180506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-05', '20180505', '2018', '05', '05', '星期六', '18', '20182', '2018-18', '201805', '20180430', '20180506', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-06', '20180506', '2018', '05', '06', '星期日', '18', '20182', '2018-18', '201805', '20180507', '20180513', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-07', '20180507', '2018', '05', '07', '星期一', '19', '20182', '2018-19', '201805', '20180507', '20180513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-08', '20180508', '2018', '05', '08', '星期二', '19', '20182', '2018-19', '201805', '20180507', '20180513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-09', '20180509', '2018', '05', '09', '星期三', '19', '20182', '2018-19', '201805', '20180507', '20180513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-10', '20180510', '2018', '05', '10', '星期四', '19', '20182', '2018-19', '201805', '20180507', '20180513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-11', '20180511', '2018', '05', '11', '星期五', '19', '20182', '2018-19', '201805', '20180507', '20180513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-12', '20180512', '2018', '05', '12', '星期六', '19', '20182', '2018-19', '201805', '20180507', '20180513', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-13', '20180513', '2018', '05', '13', '星期日', '19', '20182', '2018-19', '201805', '20180514', '20180520', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-14', '20180514', '2018', '05', '14', '星期一', '20', '20182', '2018-20', '201805', '20180514', '20180520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-15', '20180515', '2018', '05', '15', '星期二', '20', '20182', '2018-20', '201805', '20180514', '20180520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-16', '20180516', '2018', '05', '16', '星期三', '20', '20182', '2018-20', '201805', '20180514', '20180520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-17', '20180517', '2018', '05', '17', '星期四', '20', '20182', '2018-20', '201805', '20180514', '20180520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-18', '20180518', '2018', '05', '18', '星期五', '20', '20182', '2018-20', '201805', '20180514', '20180520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-19', '20180519', '2018', '05', '19', '星期六', '20', '20182', '2018-20', '201805', '20180514', '20180520', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-20', '20180520', '2018', '05', '20', '星期日', '20', '20182', '2018-20', '201805', '20180521', '20180527', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-21', '20180521', '2018', '05', '21', '星期一', '21', '20182', '2018-21', '201805', '20180521', '20180527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-22', '20180522', '2018', '05', '22', '星期二', '21', '20182', '2018-21', '201805', '20180521', '20180527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-23', '20180523', '2018', '05', '23', '星期三', '21', '20182', '2018-21', '201805', '20180521', '20180527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-24', '20180524', '2018', '05', '24', '星期四', '21', '20182', '2018-21', '201805', '20180521', '20180527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-25', '20180525', '2018', '05', '25', '星期五', '21', '20182', '2018-21', '201805', '20180521', '20180527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-26', '20180526', '2018', '05', '26', '星期六', '21', '20182', '2018-21', '201805', '20180521', '20180527', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-27', '20180527', '2018', '05', '27', '星期日', '21', '20182', '2018-21', '201805', '20180528', '20180603', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-28', '20180528', '2018', '05', '28', '星期一', '22', '20182', '2018-22', '201805', '20180528', '20180603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-29', '20180529', '2018', '05', '29', '星期二', '22', '20182', '2018-22', '201805', '20180528', '20180603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-30', '20180530', '2018', '05', '30', '星期三', '22', '20182', '2018-22', '201805', '20180528', '20180603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-05-31', '20180531', '2018', '05', '31', '星期四', '22', '20182', '2018-22', '201805', '20180528', '20180603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-01', '20180601', '2018', '06', '01', '星期五', '22', '20182', '2018-22', '201806', '20180528', '20180603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-02', '20180602', '2018', '06', '02', '星期六', '22', '20182', '2018-22', '201806', '20180528', '20180603', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-03', '20180603', '2018', '06', '03', '星期日', '22', '20182', '2018-22', '201806', '20180604', '20180610', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-04', '20180604', '2018', '06', '04', '星期一', '23', '20182', '2018-23', '201806', '20180604', '20180610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-05', '20180605', '2018', '06', '05', '星期二', '23', '20182', '2018-23', '201806', '20180604', '20180610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-06', '20180606', '2018', '06', '06', '星期三', '23', '20182', '2018-23', '201806', '20180604', '20180610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-07', '20180607', '2018', '06', '07', '星期四', '23', '20182', '2018-23', '201806', '20180604', '20180610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-08', '20180608', '2018', '06', '08', '星期五', '23', '20182', '2018-23', '201806', '20180604', '20180610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-09', '20180609', '2018', '06', '09', '星期六', '23', '20182', '2018-23', '201806', '20180604', '20180610', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-10', '20180610', '2018', '06', '10', '星期日', '23', '20182', '2018-23', '201806', '20180611', '20180617', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-11', '20180611', '2018', '06', '11', '星期一', '24', '20182', '2018-24', '201806', '20180611', '20180617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-12', '20180612', '2018', '06', '12', '星期二', '24', '20182', '2018-24', '201806', '20180611', '20180617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-13', '20180613', '2018', '06', '13', '星期三', '24', '20182', '2018-24', '201806', '20180611', '20180617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-14', '20180614', '2018', '06', '14', '星期四', '24', '20182', '2018-24', '201806', '20180611', '20180617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-15', '20180615', '2018', '06', '15', '星期五', '24', '20182', '2018-24', '201806', '20180611', '20180617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-16', '20180616', '2018', '06', '16', '星期六', '24', '20182', '2018-24', '201806', '20180611', '20180617', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-17', '20180617', '2018', '06', '17', '星期日', '24', '20182', '2018-24', '201806', '20180618', '20180624', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-18', '20180618', '2018', '06', '18', '星期一', '25', '20182', '2018-25', '201806', '20180618', '20180624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-19', '20180619', '2018', '06', '19', '星期二', '25', '20182', '2018-25', '201806', '20180618', '20180624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-20', '20180620', '2018', '06', '20', '星期三', '25', '20182', '2018-25', '201806', '20180618', '20180624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-21', '20180621', '2018', '06', '21', '星期四', '25', '20182', '2018-25', '201806', '20180618', '20180624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-22', '20180622', '2018', '06', '22', '星期五', '25', '20182', '2018-25', '201806', '20180618', '20180624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-23', '20180623', '2018', '06', '23', '星期六', '25', '20182', '2018-25', '201806', '20180618', '20180624', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-24', '20180624', '2018', '06', '24', '星期日', '25', '20182', '2018-25', '201806', '20180625', '20180701', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-25', '20180625', '2018', '06', '25', '星期一', '26', '20182', '2018-26', '201806', '20180625', '20180701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-26', '20180626', '2018', '06', '26', '星期二', '26', '20182', '2018-26', '201806', '20180625', '20180701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-27', '20180627', '2018', '06', '27', '星期三', '26', '20182', '2018-26', '201806', '20180625', '20180701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-28', '20180628', '2018', '06', '28', '星期四', '26', '20182', '2018-26', '201806', '20180625', '20180701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-29', '20180629', '2018', '06', '29', '星期五', '26', '20182', '2018-26', '201806', '20180625', '20180701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-06-30', '20180630', '2018', '06', '30', '星期六', '26', '20182', '2018-26', '201806', '20180625', '20180701', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-01', '20180701', '2018', '07', '01', '星期日', '26', '20183', '2018-26', '201807', '20180702', '20180708', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-02', '20180702', '2018', '07', '02', '星期一', '27', '20183', '2018-27', '201807', '20180702', '20180708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-03', '20180703', '2018', '07', '03', '星期二', '27', '20183', '2018-27', '201807', '20180702', '20180708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-04', '20180704', '2018', '07', '04', '星期三', '27', '20183', '2018-27', '201807', '20180702', '20180708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-05', '20180705', '2018', '07', '05', '星期四', '27', '20183', '2018-27', '201807', '20180702', '20180708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-06', '20180706', '2018', '07', '06', '星期五', '27', '20183', '2018-27', '201807', '20180702', '20180708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-07', '20180707', '2018', '07', '07', '星期六', '27', '20183', '2018-27', '201807', '20180702', '20180708', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-08', '20180708', '2018', '07', '08', '星期日', '27', '20183', '2018-27', '201807', '20180709', '20180715', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-09', '20180709', '2018', '07', '09', '星期一', '28', '20183', '2018-28', '201807', '20180709', '20180715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-10', '20180710', '2018', '07', '10', '星期二', '28', '20183', '2018-28', '201807', '20180709', '20180715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-11', '20180711', '2018', '07', '11', '星期三', '28', '20183', '2018-28', '201807', '20180709', '20180715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-12', '20180712', '2018', '07', '12', '星期四', '28', '20183', '2018-28', '201807', '20180709', '20180715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-13', '20180713', '2018', '07', '13', '星期五', '28', '20183', '2018-28', '201807', '20180709', '20180715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-14', '20180714', '2018', '07', '14', '星期六', '28', '20183', '2018-28', '201807', '20180709', '20180715', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-15', '20180715', '2018', '07', '15', '星期日', '28', '20183', '2018-28', '201807', '20180716', '20180722', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-16', '20180716', '2018', '07', '16', '星期一', '29', '20183', '2018-29', '201807', '20180716', '20180722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-17', '20180717', '2018', '07', '17', '星期二', '29', '20183', '2018-29', '201807', '20180716', '20180722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-18', '20180718', '2018', '07', '18', '星期三', '29', '20183', '2018-29', '201807', '20180716', '20180722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-19', '20180719', '2018', '07', '19', '星期四', '29', '20183', '2018-29', '201807', '20180716', '20180722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-20', '20180720', '2018', '07', '20', '星期五', '29', '20183', '2018-29', '201807', '20180716', '20180722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-21', '20180721', '2018', '07', '21', '星期六', '29', '20183', '2018-29', '201807', '20180716', '20180722', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-22', '20180722', '2018', '07', '22', '星期日', '29', '20183', '2018-29', '201807', '20180723', '20180729', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-23', '20180723', '2018', '07', '23', '星期一', '30', '20183', '2018-30', '201807', '20180723', '20180729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-24', '20180724', '2018', '07', '24', '星期二', '30', '20183', '2018-30', '201807', '20180723', '20180729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-25', '20180725', '2018', '07', '25', '星期三', '30', '20183', '2018-30', '201807', '20180723', '20180729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-26', '20180726', '2018', '07', '26', '星期四', '30', '20183', '2018-30', '201807', '20180723', '20180729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-27', '20180727', '2018', '07', '27', '星期五', '30', '20183', '2018-30', '201807', '20180723', '20180729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-28', '20180728', '2018', '07', '28', '星期六', '30', '20183', '2018-30', '201807', '20180723', '20180729', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-29', '20180729', '2018', '07', '29', '星期日', '30', '20183', '2018-30', '201807', '20180730', '20180805', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-30', '20180730', '2018', '07', '30', '星期一', '31', '20183', '2018-31', '201807', '20180730', '20180805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-07-31', '20180731', '2018', '07', '31', '星期二', '31', '20183', '2018-31', '201807', '20180730', '20180805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-01', '20180801', '2018', '08', '01', '星期三', '31', '20183', '2018-31', '201808', '20180730', '20180805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-02', '20180802', '2018', '08', '02', '星期四', '31', '20183', '2018-31', '201808', '20180730', '20180805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-03', '20180803', '2018', '08', '03', '星期五', '31', '20183', '2018-31', '201808', '20180730', '20180805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-04', '20180804', '2018', '08', '04', '星期六', '31', '20183', '2018-31', '201808', '20180730', '20180805', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-05', '20180805', '2018', '08', '05', '星期日', '31', '20183', '2018-31', '201808', '20180806', '20180812', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-06', '20180806', '2018', '08', '06', '星期一', '32', '20183', '2018-32', '201808', '20180806', '20180812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-07', '20180807', '2018', '08', '07', '星期二', '32', '20183', '2018-32', '201808', '20180806', '20180812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-08', '20180808', '2018', '08', '08', '星期三', '32', '20183', '2018-32', '201808', '20180806', '20180812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-09', '20180809', '2018', '08', '09', '星期四', '32', '20183', '2018-32', '201808', '20180806', '20180812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-10', '20180810', '2018', '08', '10', '星期五', '32', '20183', '2018-32', '201808', '20180806', '20180812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-11', '20180811', '2018', '08', '11', '星期六', '32', '20183', '2018-32', '201808', '20180806', '20180812', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-12', '20180812', '2018', '08', '12', '星期日', '32', '20183', '2018-32', '201808', '20180813', '20180819', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-13', '20180813', '2018', '08', '13', '星期一', '33', '20183', '2018-33', '201808', '20180813', '20180819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-14', '20180814', '2018', '08', '14', '星期二', '33', '20183', '2018-33', '201808', '20180813', '20180819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-15', '20180815', '2018', '08', '15', '星期三', '33', '20183', '2018-33', '201808', '20180813', '20180819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-16', '20180816', '2018', '08', '16', '星期四', '33', '20183', '2018-33', '201808', '20180813', '20180819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-17', '20180817', '2018', '08', '17', '星期五', '33', '20183', '2018-33', '201808', '20180813', '20180819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-18', '20180818', '2018', '08', '18', '星期六', '33', '20183', '2018-33', '201808', '20180813', '20180819', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-19', '20180819', '2018', '08', '19', '星期日', '33', '20183', '2018-33', '201808', '20180820', '20180826', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-20', '20180820', '2018', '08', '20', '星期一', '34', '20183', '2018-34', '201808', '20180820', '20180826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-21', '20180821', '2018', '08', '21', '星期二', '34', '20183', '2018-34', '201808', '20180820', '20180826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-22', '20180822', '2018', '08', '22', '星期三', '34', '20183', '2018-34', '201808', '20180820', '20180826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-23', '20180823', '2018', '08', '23', '星期四', '34', '20183', '2018-34', '201808', '20180820', '20180826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-24', '20180824', '2018', '08', '24', '星期五', '34', '20183', '2018-34', '201808', '20180820', '20180826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-25', '20180825', '2018', '08', '25', '星期六', '34', '20183', '2018-34', '201808', '20180820', '20180826', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-26', '20180826', '2018', '08', '26', '星期日', '34', '20183', '2018-34', '201808', '20180827', '20180902', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-27', '20180827', '2018', '08', '27', '星期一', '35', '20183', '2018-35', '201808', '20180827', '20180902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-28', '20180828', '2018', '08', '28', '星期二', '35', '20183', '2018-35', '201808', '20180827', '20180902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-29', '20180829', '2018', '08', '29', '星期三', '35', '20183', '2018-35', '201808', '20180827', '20180902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-30', '20180830', '2018', '08', '30', '星期四', '35', '20183', '2018-35', '201808', '20180827', '20180902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-08-31', '20180831', '2018', '08', '31', '星期五', '35', '20183', '2018-35', '201808', '20180827', '20180902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-01', '20180901', '2018', '09', '01', '星期六', '35', '20183', '2018-35', '201809', '20180827', '20180902', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-02', '20180902', '2018', '09', '02', '星期日', '35', '20183', '2018-35', '201809', '20180903', '20180909', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-03', '20180903', '2018', '09', '03', '星期一', '36', '20183', '2018-36', '201809', '20180903', '20180909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-04', '20180904', '2018', '09', '04', '星期二', '36', '20183', '2018-36', '201809', '20180903', '20180909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-05', '20180905', '2018', '09', '05', '星期三', '36', '20183', '2018-36', '201809', '20180903', '20180909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-06', '20180906', '2018', '09', '06', '星期四', '36', '20183', '2018-36', '201809', '20180903', '20180909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-07', '20180907', '2018', '09', '07', '星期五', '36', '20183', '2018-36', '201809', '20180903', '20180909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-08', '20180908', '2018', '09', '08', '星期六', '36', '20183', '2018-36', '201809', '20180903', '20180909', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-09', '20180909', '2018', '09', '09', '星期日', '36', '20183', '2018-36', '201809', '20180910', '20180916', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-10', '20180910', '2018', '09', '10', '星期一', '37', '20183', '2018-37', '201809', '20180910', '20180916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-11', '20180911', '2018', '09', '11', '星期二', '37', '20183', '2018-37', '201809', '20180910', '20180916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-12', '20180912', '2018', '09', '12', '星期三', '37', '20183', '2018-37', '201809', '20180910', '20180916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-13', '20180913', '2018', '09', '13', '星期四', '37', '20183', '2018-37', '201809', '20180910', '20180916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-14', '20180914', '2018', '09', '14', '星期五', '37', '20183', '2018-37', '201809', '20180910', '20180916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-15', '20180915', '2018', '09', '15', '星期六', '37', '20183', '2018-37', '201809', '20180910', '20180916', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-16', '20180916', '2018', '09', '16', '星期日', '37', '20183', '2018-37', '201809', '20180917', '20180923', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-17', '20180917', '2018', '09', '17', '星期一', '38', '20183', '2018-38', '201809', '20180917', '20180923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-18', '20180918', '2018', '09', '18', '星期二', '38', '20183', '2018-38', '201809', '20180917', '20180923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-19', '20180919', '2018', '09', '19', '星期三', '38', '20183', '2018-38', '201809', '20180917', '20180923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-20', '20180920', '2018', '09', '20', '星期四', '38', '20183', '2018-38', '201809', '20180917', '20180923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-21', '20180921', '2018', '09', '21', '星期五', '38', '20183', '2018-38', '201809', '20180917', '20180923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-22', '20180922', '2018', '09', '22', '星期六', '38', '20183', '2018-38', '201809', '20180917', '20180923', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-23', '20180923', '2018', '09', '23', '星期日', '38', '20183', '2018-38', '201809', '20180924', '20180930', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-24', '20180924', '2018', '09', '24', '星期一', '39', '20183', '2018-39', '201809', '20180924', '20180930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-25', '20180925', '2018', '09', '25', '星期二', '39', '20183', '2018-39', '201809', '20180924', '20180930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-26', '20180926', '2018', '09', '26', '星期三', '39', '20183', '2018-39', '201809', '20180924', '20180930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-27', '20180927', '2018', '09', '27', '星期四', '39', '20183', '2018-39', '201809', '20180924', '20180930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-28', '20180928', '2018', '09', '28', '星期五', '39', '20183', '2018-39', '201809', '20180924', '20180930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-29', '20180929', '2018', '09', '29', '星期六', '39', '20183', '2018-39', '201809', '20180924', '20180930', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-09-30', '20180930', '2018', '09', '30', '星期日', '39', '20183', '2018-39', '201809', '20181001', '20181007', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-01', '20181001', '2018', '10', '01', '星期一', '40', '20184', '2018-40', '201810', '20181001', '20181007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-02', '20181002', '2018', '10', '02', '星期二', '40', '20184', '2018-40', '201810', '20181001', '20181007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-03', '20181003', '2018', '10', '03', '星期三', '40', '20184', '2018-40', '201810', '20181001', '20181007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-04', '20181004', '2018', '10', '04', '星期四', '40', '20184', '2018-40', '201810', '20181001', '20181007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-05', '20181005', '2018', '10', '05', '星期五', '40', '20184', '2018-40', '201810', '20181001', '20181007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-06', '20181006', '2018', '10', '06', '星期六', '40', '20184', '2018-40', '201810', '20181001', '20181007', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-07', '20181007', '2018', '10', '07', '星期日', '40', '20184', '2018-40', '201810', '20181008', '20181014', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-08', '20181008', '2018', '10', '08', '星期一', '41', '20184', '2018-41', '201810', '20181008', '20181014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-09', '20181009', '2018', '10', '09', '星期二', '41', '20184', '2018-41', '201810', '20181008', '20181014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-10', '20181010', '2018', '10', '10', '星期三', '41', '20184', '2018-41', '201810', '20181008', '20181014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-11', '20181011', '2018', '10', '11', '星期四', '41', '20184', '2018-41', '201810', '20181008', '20181014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-12', '20181012', '2018', '10', '12', '星期五', '41', '20184', '2018-41', '201810', '20181008', '20181014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-13', '20181013', '2018', '10', '13', '星期六', '41', '20184', '2018-41', '201810', '20181008', '20181014', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-14', '20181014', '2018', '10', '14', '星期日', '41', '20184', '2018-41', '201810', '20181015', '20181021', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-15', '20181015', '2018', '10', '15', '星期一', '42', '20184', '2018-42', '201810', '20181015', '20181021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-16', '20181016', '2018', '10', '16', '星期二', '42', '20184', '2018-42', '201810', '20181015', '20181021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-17', '20181017', '2018', '10', '17', '星期三', '42', '20184', '2018-42', '201810', '20181015', '20181021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-18', '20181018', '2018', '10', '18', '星期四', '42', '20184', '2018-42', '201810', '20181015', '20181021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-19', '20181019', '2018', '10', '19', '星期五', '42', '20184', '2018-42', '201810', '20181015', '20181021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-20', '20181020', '2018', '10', '20', '星期六', '42', '20184', '2018-42', '201810', '20181015', '20181021', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-21', '20181021', '2018', '10', '21', '星期日', '42', '20184', '2018-42', '201810', '20181022', '20181028', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-22', '20181022', '2018', '10', '22', '星期一', '43', '20184', '2018-43', '201810', '20181022', '20181028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-23', '20181023', '2018', '10', '23', '星期二', '43', '20184', '2018-43', '201810', '20181022', '20181028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-24', '20181024', '2018', '10', '24', '星期三', '43', '20184', '2018-43', '201810', '20181022', '20181028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-25', '20181025', '2018', '10', '25', '星期四', '43', '20184', '2018-43', '201810', '20181022', '20181028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-26', '20181026', '2018', '10', '26', '星期五', '43', '20184', '2018-43', '201810', '20181022', '20181028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-27', '20181027', '2018', '10', '27', '星期六', '43', '20184', '2018-43', '201810', '20181022', '20181028', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-28', '20181028', '2018', '10', '28', '星期日', '43', '20184', '2018-43', '201810', '20181029', '20181104', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-29', '20181029', '2018', '10', '29', '星期一', '44', '20184', '2018-44', '201810', '20181029', '20181104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-30', '20181030', '2018', '10', '30', '星期二', '44', '20184', '2018-44', '201810', '20181029', '20181104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-10-31', '20181031', '2018', '10', '31', '星期三', '44', '20184', '2018-44', '201810', '20181029', '20181104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-01', '20181101', '2018', '11', '01', '星期四', '44', '20184', '2018-44', '201811', '20181029', '20181104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-02', '20181102', '2018', '11', '02', '星期五', '44', '20184', '2018-44', '201811', '20181029', '20181104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-03', '20181103', '2018', '11', '03', '星期六', '44', '20184', '2018-44', '201811', '20181029', '20181104', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-04', '20181104', '2018', '11', '04', '星期日', '44', '20184', '2018-44', '201811', '20181105', '20181111', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-05', '20181105', '2018', '11', '05', '星期一', '45', '20184', '2018-45', '201811', '20181105', '20181111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-06', '20181106', '2018', '11', '06', '星期二', '45', '20184', '2018-45', '201811', '20181105', '20181111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-07', '20181107', '2018', '11', '07', '星期三', '45', '20184', '2018-45', '201811', '20181105', '20181111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-08', '20181108', '2018', '11', '08', '星期四', '45', '20184', '2018-45', '201811', '20181105', '20181111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-09', '20181109', '2018', '11', '09', '星期五', '45', '20184', '2018-45', '201811', '20181105', '20181111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-10', '20181110', '2018', '11', '10', '星期六', '45', '20184', '2018-45', '201811', '20181105', '20181111', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-11', '20181111', '2018', '11', '11', '星期日', '45', '20184', '2018-45', '201811', '20181112', '20181118', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-12', '20181112', '2018', '11', '12', '星期一', '46', '20184', '2018-46', '201811', '20181112', '20181118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-13', '20181113', '2018', '11', '13', '星期二', '46', '20184', '2018-46', '201811', '20181112', '20181118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-14', '20181114', '2018', '11', '14', '星期三', '46', '20184', '2018-46', '201811', '20181112', '20181118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-15', '20181115', '2018', '11', '15', '星期四', '46', '20184', '2018-46', '201811', '20181112', '20181118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-16', '20181116', '2018', '11', '16', '星期五', '46', '20184', '2018-46', '201811', '20181112', '20181118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-17', '20181117', '2018', '11', '17', '星期六', '46', '20184', '2018-46', '201811', '20181112', '20181118', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-18', '20181118', '2018', '11', '18', '星期日', '46', '20184', '2018-46', '201811', '20181119', '20181125', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-19', '20181119', '2018', '11', '19', '星期一', '47', '20184', '2018-47', '201811', '20181119', '20181125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-20', '20181120', '2018', '11', '20', '星期二', '47', '20184', '2018-47', '201811', '20181119', '20181125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-21', '20181121', '2018', '11', '21', '星期三', '47', '20184', '2018-47', '201811', '20181119', '20181125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-22', '20181122', '2018', '11', '22', '星期四', '47', '20184', '2018-47', '201811', '20181119', '20181125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-23', '20181123', '2018', '11', '23', '星期五', '47', '20184', '2018-47', '201811', '20181119', '20181125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-24', '20181124', '2018', '11', '24', '星期六', '47', '20184', '2018-47', '201811', '20181119', '20181125', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-25', '20181125', '2018', '11', '25', '星期日', '47', '20184', '2018-47', '201811', '20181126', '20181202', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-26', '20181126', '2018', '11', '26', '星期一', '48', '20184', '2018-48', '201811', '20181126', '20181202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-27', '20181127', '2018', '11', '27', '星期二', '48', '20184', '2018-48', '201811', '20181126', '20181202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-28', '20181128', '2018', '11', '28', '星期三', '48', '20184', '2018-48', '201811', '20181126', '20181202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-29', '20181129', '2018', '11', '29', '星期四', '48', '20184', '2018-48', '201811', '20181126', '20181202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-11-30', '20181130', '2018', '11', '30', '星期五', '48', '20184', '2018-48', '201811', '20181126', '20181202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-01', '20181201', '2018', '12', '01', '星期六', '48', '20184', '2018-48', '201812', '20181126', '20181202', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-02', '20181202', '2018', '12', '02', '星期日', '48', '20184', '2018-48', '201812', '20181203', '20181209', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-03', '20181203', '2018', '12', '03', '星期一', '49', '20184', '2018-49', '201812', '20181203', '20181209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-04', '20181204', '2018', '12', '04', '星期二', '49', '20184', '2018-49', '201812', '20181203', '20181209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-05', '20181205', '2018', '12', '05', '星期三', '49', '20184', '2018-49', '201812', '20181203', '20181209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-06', '20181206', '2018', '12', '06', '星期四', '49', '20184', '2018-49', '201812', '20181203', '20181209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-07', '20181207', '2018', '12', '07', '星期五', '49', '20184', '2018-49', '201812', '20181203', '20181209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-08', '20181208', '2018', '12', '08', '星期六', '49', '20184', '2018-49', '201812', '20181203', '20181209', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-09', '20181209', '2018', '12', '09', '星期日', '49', '20184', '2018-49', '201812', '20181210', '20181216', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-10', '20181210', '2018', '12', '10', '星期一', '50', '20184', '2018-50', '201812', '20181210', '20181216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-11', '20181211', '2018', '12', '11', '星期二', '50', '20184', '2018-50', '201812', '20181210', '20181216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-12', '20181212', '2018', '12', '12', '星期三', '50', '20184', '2018-50', '201812', '20181210', '20181216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-13', '20181213', '2018', '12', '13', '星期四', '50', '20184', '2018-50', '201812', '20181210', '20181216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-14', '20181214', '2018', '12', '14', '星期五', '50', '20184', '2018-50', '201812', '20181210', '20181216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-15', '20181215', '2018', '12', '15', '星期六', '50', '20184', '2018-50', '201812', '20181210', '20181216', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-16', '20181216', '2018', '12', '16', '星期日', '50', '20184', '2018-50', '201812', '20181217', '20181223', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-17', '20181217', '2018', '12', '17', '星期一', '51', '20184', '2018-51', '201812', '20181217', '20181223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-18', '20181218', '2018', '12', '18', '星期二', '51', '20184', '2018-51', '201812', '20181217', '20181223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-19', '20181219', '2018', '12', '19', '星期三', '51', '20184', '2018-51', '201812', '20181217', '20181223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-20', '20181220', '2018', '12', '20', '星期四', '51', '20184', '2018-51', '201812', '20181217', '20181223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-21', '20181221', '2018', '12', '21', '星期五', '51', '20184', '2018-51', '201812', '20181217', '20181223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-22', '20181222', '2018', '12', '22', '星期六', '51', '20184', '2018-51', '201812', '20181217', '20181223', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-23', '20181223', '2018', '12', '23', '星期日', '51', '20184', '2018-51', '201812', '20181224', '20181230', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-24', '20181224', '2018', '12', '24', '星期一', '52', '20184', '2018-52', '201812', '20181224', '20181230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-25', '20181225', '2018', '12', '25', '星期二', '52', '20184', '2018-52', '201812', '20181224', '20181230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-26', '20181226', '2018', '12', '26', '星期三', '52', '20184', '2018-52', '201812', '20181224', '20181230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-27', '20181227', '2018', '12', '27', '星期四', '52', '20184', '2018-52', '201812', '20181224', '20181230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-28', '20181228', '2018', '12', '28', '星期五', '52', '20184', '2018-52', '201812', '20181224', '20181230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-29', '20181229', '2018', '12', '29', '星期六', '52', '20184', '2018-52', '201812', '20181224', '20181230', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-30', '20181230', '2018', '12', '30', '星期日', '52', '20184', '2018-52', '201812', '20181231', '20190106', '1');
INSERT INTO `t_sys_calendar` VALUES ('2018-12-31', '20181231', '2018', '12', '31', '星期一', '53', '20184', '2018-53', '201812', '20181231', '20190106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-01', '20190101', '2019', '01', '01', '星期二', '01', '20191', '2019-01', '201901', '20181231', '20190106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-02', '20190102', '2019', '01', '02', '星期三', '01', '20191', '2019-01', '201901', '20181231', '20190106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-03', '20190103', '2019', '01', '03', '星期四', '01', '20191', '2019-01', '201901', '20181231', '20190106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-04', '20190104', '2019', '01', '04', '星期五', '01', '20191', '2019-01', '201901', '20181231', '20190106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-05', '20190105', '2019', '01', '05', '星期六', '01', '20191', '2019-01', '201901', '20181231', '20190106', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-06', '20190106', '2019', '01', '06', '星期日', '01', '20191', '2019-01', '201901', '20190107', '20190113', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-07', '20190107', '2019', '01', '07', '星期一', '02', '20191', '2019-02', '201901', '20190107', '20190113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-08', '20190108', '2019', '01', '08', '星期二', '02', '20191', '2019-02', '201901', '20190107', '20190113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-09', '20190109', '2019', '01', '09', '星期三', '02', '20191', '2019-02', '201901', '20190107', '20190113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-10', '20190110', '2019', '01', '10', '星期四', '02', '20191', '2019-02', '201901', '20190107', '20190113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-11', '20190111', '2019', '01', '11', '星期五', '02', '20191', '2019-02', '201901', '20190107', '20190113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-12', '20190112', '2019', '01', '12', '星期六', '02', '20191', '2019-02', '201901', '20190107', '20190113', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-13', '20190113', '2019', '01', '13', '星期日', '02', '20191', '2019-02', '201901', '20190114', '20190120', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-14', '20190114', '2019', '01', '14', '星期一', '03', '20191', '2019-03', '201901', '20190114', '20190120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-15', '20190115', '2019', '01', '15', '星期二', '03', '20191', '2019-03', '201901', '20190114', '20190120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-16', '20190116', '2019', '01', '16', '星期三', '03', '20191', '2019-03', '201901', '20190114', '20190120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-17', '20190117', '2019', '01', '17', '星期四', '03', '20191', '2019-03', '201901', '20190114', '20190120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-18', '20190118', '2019', '01', '18', '星期五', '03', '20191', '2019-03', '201901', '20190114', '20190120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-19', '20190119', '2019', '01', '19', '星期六', '03', '20191', '2019-03', '201901', '20190114', '20190120', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-20', '20190120', '2019', '01', '20', '星期日', '03', '20191', '2019-03', '201901', '20190121', '20190127', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-21', '20190121', '2019', '01', '21', '星期一', '04', '20191', '2019-04', '201901', '20190121', '20190127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-22', '20190122', '2019', '01', '22', '星期二', '04', '20191', '2019-04', '201901', '20190121', '20190127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-23', '20190123', '2019', '01', '23', '星期三', '04', '20191', '2019-04', '201901', '20190121', '20190127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-24', '20190124', '2019', '01', '24', '星期四', '04', '20191', '2019-04', '201901', '20190121', '20190127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-25', '20190125', '2019', '01', '25', '星期五', '04', '20191', '2019-04', '201901', '20190121', '20190127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-26', '20190126', '2019', '01', '26', '星期六', '04', '20191', '2019-04', '201901', '20190121', '20190127', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-27', '20190127', '2019', '01', '27', '星期日', '04', '20191', '2019-04', '201901', '20190128', '20190203', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-28', '20190128', '2019', '01', '28', '星期一', '05', '20191', '2019-05', '201901', '20190128', '20190203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-29', '20190129', '2019', '01', '29', '星期二', '05', '20191', '2019-05', '201901', '20190128', '20190203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-30', '20190130', '2019', '01', '30', '星期三', '05', '20191', '2019-05', '201901', '20190128', '20190203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-01-31', '20190131', '2019', '01', '31', '星期四', '05', '20191', '2019-05', '201901', '20190128', '20190203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-01', '20190201', '2019', '02', '01', '星期五', '05', '20191', '2019-05', '201902', '20190128', '20190203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-02', '20190202', '2019', '02', '02', '星期六', '05', '20191', '2019-05', '201902', '20190128', '20190203', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-03', '20190203', '2019', '02', '03', '星期日', '05', '20191', '2019-05', '201902', '20190204', '20190210', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-04', '20190204', '2019', '02', '04', '星期一', '06', '20191', '2019-06', '201902', '20190204', '20190210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-05', '20190205', '2019', '02', '05', '星期二', '06', '20191', '2019-06', '201902', '20190204', '20190210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-06', '20190206', '2019', '02', '06', '星期三', '06', '20191', '2019-06', '201902', '20190204', '20190210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-07', '20190207', '2019', '02', '07', '星期四', '06', '20191', '2019-06', '201902', '20190204', '20190210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-08', '20190208', '2019', '02', '08', '星期五', '06', '20191', '2019-06', '201902', '20190204', '20190210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-09', '20190209', '2019', '02', '09', '星期六', '06', '20191', '2019-06', '201902', '20190204', '20190210', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-10', '20190210', '2019', '02', '10', '星期日', '06', '20191', '2019-06', '201902', '20190211', '20190217', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-11', '20190211', '2019', '02', '11', '星期一', '07', '20191', '2019-07', '201902', '20190211', '20190217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-12', '20190212', '2019', '02', '12', '星期二', '07', '20191', '2019-07', '201902', '20190211', '20190217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-13', '20190213', '2019', '02', '13', '星期三', '07', '20191', '2019-07', '201902', '20190211', '20190217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-14', '20190214', '2019', '02', '14', '星期四', '07', '20191', '2019-07', '201902', '20190211', '20190217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-15', '20190215', '2019', '02', '15', '星期五', '07', '20191', '2019-07', '201902', '20190211', '20190217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-16', '20190216', '2019', '02', '16', '星期六', '07', '20191', '2019-07', '201902', '20190211', '20190217', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-17', '20190217', '2019', '02', '17', '星期日', '07', '20191', '2019-07', '201902', '20190218', '20190224', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-18', '20190218', '2019', '02', '18', '星期一', '08', '20191', '2019-08', '201902', '20190218', '20190224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-19', '20190219', '2019', '02', '19', '星期二', '08', '20191', '2019-08', '201902', '20190218', '20190224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-20', '20190220', '2019', '02', '20', '星期三', '08', '20191', '2019-08', '201902', '20190218', '20190224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-21', '20190221', '2019', '02', '21', '星期四', '08', '20191', '2019-08', '201902', '20190218', '20190224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-22', '20190222', '2019', '02', '22', '星期五', '08', '20191', '2019-08', '201902', '20190218', '20190224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-23', '20190223', '2019', '02', '23', '星期六', '08', '20191', '2019-08', '201902', '20190218', '20190224', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-24', '20190224', '2019', '02', '24', '星期日', '08', '20191', '2019-08', '201902', '20190225', '20190303', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-25', '20190225', '2019', '02', '25', '星期一', '09', '20191', '2019-09', '201902', '20190225', '20190303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-26', '20190226', '2019', '02', '26', '星期二', '09', '20191', '2019-09', '201902', '20190225', '20190303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-27', '20190227', '2019', '02', '27', '星期三', '09', '20191', '2019-09', '201902', '20190225', '20190303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-02-28', '20190228', '2019', '02', '28', '星期四', '09', '20191', '2019-09', '201902', '20190225', '20190303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-01', '20190301', '2019', '03', '01', '星期五', '09', '20191', '2019-09', '201903', '20190225', '20190303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-02', '20190302', '2019', '03', '02', '星期六', '09', '20191', '2019-09', '201903', '20190225', '20190303', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-03', '20190303', '2019', '03', '03', '星期日', '09', '20191', '2019-09', '201903', '20190304', '20190310', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-04', '20190304', '2019', '03', '04', '星期一', '10', '20191', '2019-10', '201903', '20190304', '20190310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-05', '20190305', '2019', '03', '05', '星期二', '10', '20191', '2019-10', '201903', '20190304', '20190310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-06', '20190306', '2019', '03', '06', '星期三', '10', '20191', '2019-10', '201903', '20190304', '20190310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-07', '20190307', '2019', '03', '07', '星期四', '10', '20191', '2019-10', '201903', '20190304', '20190310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-08', '20190308', '2019', '03', '08', '星期五', '10', '20191', '2019-10', '201903', '20190304', '20190310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-09', '20190309', '2019', '03', '09', '星期六', '10', '20191', '2019-10', '201903', '20190304', '20190310', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-10', '20190310', '2019', '03', '10', '星期日', '10', '20191', '2019-10', '201903', '20190311', '20190317', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-11', '20190311', '2019', '03', '11', '星期一', '11', '20191', '2019-11', '201903', '20190311', '20190317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-12', '20190312', '2019', '03', '12', '星期二', '11', '20191', '2019-11', '201903', '20190311', '20190317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-13', '20190313', '2019', '03', '13', '星期三', '11', '20191', '2019-11', '201903', '20190311', '20190317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-14', '20190314', '2019', '03', '14', '星期四', '11', '20191', '2019-11', '201903', '20190311', '20190317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-15', '20190315', '2019', '03', '15', '星期五', '11', '20191', '2019-11', '201903', '20190311', '20190317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-16', '20190316', '2019', '03', '16', '星期六', '11', '20191', '2019-11', '201903', '20190311', '20190317', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-17', '20190317', '2019', '03', '17', '星期日', '11', '20191', '2019-11', '201903', '20190318', '20190324', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-18', '20190318', '2019', '03', '18', '星期一', '12', '20191', '2019-12', '201903', '20190318', '20190324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-19', '20190319', '2019', '03', '19', '星期二', '12', '20191', '2019-12', '201903', '20190318', '20190324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-20', '20190320', '2019', '03', '20', '星期三', '12', '20191', '2019-12', '201903', '20190318', '20190324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-21', '20190321', '2019', '03', '21', '星期四', '12', '20191', '2019-12', '201903', '20190318', '20190324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-22', '20190322', '2019', '03', '22', '星期五', '12', '20191', '2019-12', '201903', '20190318', '20190324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-23', '20190323', '2019', '03', '23', '星期六', '12', '20191', '2019-12', '201903', '20190318', '20190324', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-24', '20190324', '2019', '03', '24', '星期日', '12', '20191', '2019-12', '201903', '20190325', '20190331', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-25', '20190325', '2019', '03', '25', '星期一', '13', '20191', '2019-13', '201903', '20190325', '20190331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-26', '20190326', '2019', '03', '26', '星期二', '13', '20191', '2019-13', '201903', '20190325', '20190331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-27', '20190327', '2019', '03', '27', '星期三', '13', '20191', '2019-13', '201903', '20190325', '20190331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-28', '20190328', '2019', '03', '28', '星期四', '13', '20191', '2019-13', '201903', '20190325', '20190331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-29', '20190329', '2019', '03', '29', '星期五', '13', '20191', '2019-13', '201903', '20190325', '20190331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-30', '20190330', '2019', '03', '30', '星期六', '13', '20191', '2019-13', '201903', '20190325', '20190331', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-03-31', '20190331', '2019', '03', '31', '星期日', '13', '20191', '2019-13', '201903', '20190401', '20190407', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-01', '20190401', '2019', '04', '01', '星期一', '14', '20192', '2019-14', '201904', '20190401', '20190407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-02', '20190402', '2019', '04', '02', '星期二', '14', '20192', '2019-14', '201904', '20190401', '20190407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-03', '20190403', '2019', '04', '03', '星期三', '14', '20192', '2019-14', '201904', '20190401', '20190407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-04', '20190404', '2019', '04', '04', '星期四', '14', '20192', '2019-14', '201904', '20190401', '20190407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-05', '20190405', '2019', '04', '05', '星期五', '14', '20192', '2019-14', '201904', '20190401', '20190407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-06', '20190406', '2019', '04', '06', '星期六', '14', '20192', '2019-14', '201904', '20190401', '20190407', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-07', '20190407', '2019', '04', '07', '星期日', '14', '20192', '2019-14', '201904', '20190408', '20190414', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-08', '20190408', '2019', '04', '08', '星期一', '15', '20192', '2019-15', '201904', '20190408', '20190414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-09', '20190409', '2019', '04', '09', '星期二', '15', '20192', '2019-15', '201904', '20190408', '20190414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-10', '20190410', '2019', '04', '10', '星期三', '15', '20192', '2019-15', '201904', '20190408', '20190414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-11', '20190411', '2019', '04', '11', '星期四', '15', '20192', '2019-15', '201904', '20190408', '20190414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-12', '20190412', '2019', '04', '12', '星期五', '15', '20192', '2019-15', '201904', '20190408', '20190414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-13', '20190413', '2019', '04', '13', '星期六', '15', '20192', '2019-15', '201904', '20190408', '20190414', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-14', '20190414', '2019', '04', '14', '星期日', '15', '20192', '2019-15', '201904', '20190415', '20190421', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-15', '20190415', '2019', '04', '15', '星期一', '16', '20192', '2019-16', '201904', '20190415', '20190421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-16', '20190416', '2019', '04', '16', '星期二', '16', '20192', '2019-16', '201904', '20190415', '20190421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-17', '20190417', '2019', '04', '17', '星期三', '16', '20192', '2019-16', '201904', '20190415', '20190421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-18', '20190418', '2019', '04', '18', '星期四', '16', '20192', '2019-16', '201904', '20190415', '20190421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-19', '20190419', '2019', '04', '19', '星期五', '16', '20192', '2019-16', '201904', '20190415', '20190421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-20', '20190420', '2019', '04', '20', '星期六', '16', '20192', '2019-16', '201904', '20190415', '20190421', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-21', '20190421', '2019', '04', '21', '星期日', '16', '20192', '2019-16', '201904', '20190422', '20190428', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-22', '20190422', '2019', '04', '22', '星期一', '17', '20192', '2019-17', '201904', '20190422', '20190428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-23', '20190423', '2019', '04', '23', '星期二', '17', '20192', '2019-17', '201904', '20190422', '20190428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-24', '20190424', '2019', '04', '24', '星期三', '17', '20192', '2019-17', '201904', '20190422', '20190428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-25', '20190425', '2019', '04', '25', '星期四', '17', '20192', '2019-17', '201904', '20190422', '20190428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-26', '20190426', '2019', '04', '26', '星期五', '17', '20192', '2019-17', '201904', '20190422', '20190428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-27', '20190427', '2019', '04', '27', '星期六', '17', '20192', '2019-17', '201904', '20190422', '20190428', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-28', '20190428', '2019', '04', '28', '星期日', '17', '20192', '2019-17', '201904', '20190429', '20190505', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-29', '20190429', '2019', '04', '29', '星期一', '18', '20192', '2019-18', '201904', '20190429', '20190505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-04-30', '20190430', '2019', '04', '30', '星期二', '18', '20192', '2019-18', '201904', '20190429', '20190505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-01', '20190501', '2019', '05', '01', '星期三', '18', '20192', '2019-18', '201905', '20190429', '20190505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-02', '20190502', '2019', '05', '02', '星期四', '18', '20192', '2019-18', '201905', '20190429', '20190505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-03', '20190503', '2019', '05', '03', '星期五', '18', '20192', '2019-18', '201905', '20190429', '20190505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-04', '20190504', '2019', '05', '04', '星期六', '18', '20192', '2019-18', '201905', '20190429', '20190505', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-05', '20190505', '2019', '05', '05', '星期日', '18', '20192', '2019-18', '201905', '20190506', '20190512', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-06', '20190506', '2019', '05', '06', '星期一', '19', '20192', '2019-19', '201905', '20190506', '20190512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-07', '20190507', '2019', '05', '07', '星期二', '19', '20192', '2019-19', '201905', '20190506', '20190512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-08', '20190508', '2019', '05', '08', '星期三', '19', '20192', '2019-19', '201905', '20190506', '20190512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-09', '20190509', '2019', '05', '09', '星期四', '19', '20192', '2019-19', '201905', '20190506', '20190512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-10', '20190510', '2019', '05', '10', '星期五', '19', '20192', '2019-19', '201905', '20190506', '20190512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-11', '20190511', '2019', '05', '11', '星期六', '19', '20192', '2019-19', '201905', '20190506', '20190512', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-12', '20190512', '2019', '05', '12', '星期日', '19', '20192', '2019-19', '201905', '20190513', '20190519', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-13', '20190513', '2019', '05', '13', '星期一', '20', '20192', '2019-20', '201905', '20190513', '20190519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-14', '20190514', '2019', '05', '14', '星期二', '20', '20192', '2019-20', '201905', '20190513', '20190519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-15', '20190515', '2019', '05', '15', '星期三', '20', '20192', '2019-20', '201905', '20190513', '20190519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-16', '20190516', '2019', '05', '16', '星期四', '20', '20192', '2019-20', '201905', '20190513', '20190519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-17', '20190517', '2019', '05', '17', '星期五', '20', '20192', '2019-20', '201905', '20190513', '20190519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-18', '20190518', '2019', '05', '18', '星期六', '20', '20192', '2019-20', '201905', '20190513', '20190519', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-19', '20190519', '2019', '05', '19', '星期日', '20', '20192', '2019-20', '201905', '20190520', '20190526', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-20', '20190520', '2019', '05', '20', '星期一', '21', '20192', '2019-21', '201905', '20190520', '20190526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-21', '20190521', '2019', '05', '21', '星期二', '21', '20192', '2019-21', '201905', '20190520', '20190526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-22', '20190522', '2019', '05', '22', '星期三', '21', '20192', '2019-21', '201905', '20190520', '20190526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-23', '20190523', '2019', '05', '23', '星期四', '21', '20192', '2019-21', '201905', '20190520', '20190526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-24', '20190524', '2019', '05', '24', '星期五', '21', '20192', '2019-21', '201905', '20190520', '20190526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-25', '20190525', '2019', '05', '25', '星期六', '21', '20192', '2019-21', '201905', '20190520', '20190526', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-26', '20190526', '2019', '05', '26', '星期日', '21', '20192', '2019-21', '201905', '20190527', '20190602', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-27', '20190527', '2019', '05', '27', '星期一', '22', '20192', '2019-22', '201905', '20190527', '20190602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-28', '20190528', '2019', '05', '28', '星期二', '22', '20192', '2019-22', '201905', '20190527', '20190602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-29', '20190529', '2019', '05', '29', '星期三', '22', '20192', '2019-22', '201905', '20190527', '20190602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-30', '20190530', '2019', '05', '30', '星期四', '22', '20192', '2019-22', '201905', '20190527', '20190602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-05-31', '20190531', '2019', '05', '31', '星期五', '22', '20192', '2019-22', '201905', '20190527', '20190602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-01', '20190601', '2019', '06', '01', '星期六', '22', '20192', '2019-22', '201906', '20190527', '20190602', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-02', '20190602', '2019', '06', '02', '星期日', '22', '20192', '2019-22', '201906', '20190603', '20190609', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-03', '20190603', '2019', '06', '03', '星期一', '23', '20192', '2019-23', '201906', '20190603', '20190609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-04', '20190604', '2019', '06', '04', '星期二', '23', '20192', '2019-23', '201906', '20190603', '20190609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-05', '20190605', '2019', '06', '05', '星期三', '23', '20192', '2019-23', '201906', '20190603', '20190609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-06', '20190606', '2019', '06', '06', '星期四', '23', '20192', '2019-23', '201906', '20190603', '20190609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-07', '20190607', '2019', '06', '07', '星期五', '23', '20192', '2019-23', '201906', '20190603', '20190609', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-08', '20190608', '2019', '06', '08', '星期六', '23', '20192', '2019-23', '201906', '20190603', '20190609', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-09', '20190609', '2019', '06', '09', '星期日', '23', '20192', '2019-23', '201906', '20190610', '20190616', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-10', '20190610', '2019', '06', '10', '星期一', '24', '20192', '2019-24', '201906', '20190610', '20190616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-11', '20190611', '2019', '06', '11', '星期二', '24', '20192', '2019-24', '201906', '20190610', '20190616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-12', '20190612', '2019', '06', '12', '星期三', '24', '20192', '2019-24', '201906', '20190610', '20190616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-13', '20190613', '2019', '06', '13', '星期四', '24', '20192', '2019-24', '201906', '20190610', '20190616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-14', '20190614', '2019', '06', '14', '星期五', '24', '20192', '2019-24', '201906', '20190610', '20190616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-15', '20190615', '2019', '06', '15', '星期六', '24', '20192', '2019-24', '201906', '20190610', '20190616', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-16', '20190616', '2019', '06', '16', '星期日', '24', '20192', '2019-24', '201906', '20190617', '20190623', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-17', '20190617', '2019', '06', '17', '星期一', '25', '20192', '2019-25', '201906', '20190617', '20190623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-18', '20190618', '2019', '06', '18', '星期二', '25', '20192', '2019-25', '201906', '20190617', '20190623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-19', '20190619', '2019', '06', '19', '星期三', '25', '20192', '2019-25', '201906', '20190617', '20190623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-20', '20190620', '2019', '06', '20', '星期四', '25', '20192', '2019-25', '201906', '20190617', '20190623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-21', '20190621', '2019', '06', '21', '星期五', '25', '20192', '2019-25', '201906', '20190617', '20190623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-22', '20190622', '2019', '06', '22', '星期六', '25', '20192', '2019-25', '201906', '20190617', '20190623', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-23', '20190623', '2019', '06', '23', '星期日', '25', '20192', '2019-25', '201906', '20190624', '20190630', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-24', '20190624', '2019', '06', '24', '星期一', '26', '20192', '2019-26', '201906', '20190624', '20190630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-25', '20190625', '2019', '06', '25', '星期二', '26', '20192', '2019-26', '201906', '20190624', '20190630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-26', '20190626', '2019', '06', '26', '星期三', '26', '20192', '2019-26', '201906', '20190624', '20190630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-27', '20190627', '2019', '06', '27', '星期四', '26', '20192', '2019-26', '201906', '20190624', '20190630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-28', '20190628', '2019', '06', '28', '星期五', '26', '20192', '2019-26', '201906', '20190624', '20190630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-29', '20190629', '2019', '06', '29', '星期六', '26', '20192', '2019-26', '201906', '20190624', '20190630', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-06-30', '20190630', '2019', '06', '30', '星期日', '26', '20192', '2019-26', '201906', '20190701', '20190707', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-01', '20190701', '2019', '07', '01', '星期一', '27', '20193', '2019-27', '201907', '20190701', '20190707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-02', '20190702', '2019', '07', '02', '星期二', '27', '20193', '2019-27', '201907', '20190701', '20190707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-03', '20190703', '2019', '07', '03', '星期三', '27', '20193', '2019-27', '201907', '20190701', '20190707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-04', '20190704', '2019', '07', '04', '星期四', '27', '20193', '2019-27', '201907', '20190701', '20190707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-05', '20190705', '2019', '07', '05', '星期五', '27', '20193', '2019-27', '201907', '20190701', '20190707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-06', '20190706', '2019', '07', '06', '星期六', '27', '20193', '2019-27', '201907', '20190701', '20190707', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-07', '20190707', '2019', '07', '07', '星期日', '27', '20193', '2019-27', '201907', '20190708', '20190714', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-08', '20190708', '2019', '07', '08', '星期一', '28', '20193', '2019-28', '201907', '20190708', '20190714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-09', '20190709', '2019', '07', '09', '星期二', '28', '20193', '2019-28', '201907', '20190708', '20190714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-10', '20190710', '2019', '07', '10', '星期三', '28', '20193', '2019-28', '201907', '20190708', '20190714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-11', '20190711', '2019', '07', '11', '星期四', '28', '20193', '2019-28', '201907', '20190708', '20190714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-12', '20190712', '2019', '07', '12', '星期五', '28', '20193', '2019-28', '201907', '20190708', '20190714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-13', '20190713', '2019', '07', '13', '星期六', '28', '20193', '2019-28', '201907', '20190708', '20190714', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-14', '20190714', '2019', '07', '14', '星期日', '28', '20193', '2019-28', '201907', '20190715', '20190721', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-15', '20190715', '2019', '07', '15', '星期一', '29', '20193', '2019-29', '201907', '20190715', '20190721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-16', '20190716', '2019', '07', '16', '星期二', '29', '20193', '2019-29', '201907', '20190715', '20190721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-17', '20190717', '2019', '07', '17', '星期三', '29', '20193', '2019-29', '201907', '20190715', '20190721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-18', '20190718', '2019', '07', '18', '星期四', '29', '20193', '2019-29', '201907', '20190715', '20190721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-19', '20190719', '2019', '07', '19', '星期五', '29', '20193', '2019-29', '201907', '20190715', '20190721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-20', '20190720', '2019', '07', '20', '星期六', '29', '20193', '2019-29', '201907', '20190715', '20190721', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-21', '20190721', '2019', '07', '21', '星期日', '29', '20193', '2019-29', '201907', '20190722', '20190728', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-22', '20190722', '2019', '07', '22', '星期一', '30', '20193', '2019-30', '201907', '20190722', '20190728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-23', '20190723', '2019', '07', '23', '星期二', '30', '20193', '2019-30', '201907', '20190722', '20190728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-24', '20190724', '2019', '07', '24', '星期三', '30', '20193', '2019-30', '201907', '20190722', '20190728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-25', '20190725', '2019', '07', '25', '星期四', '30', '20193', '2019-30', '201907', '20190722', '20190728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-26', '20190726', '2019', '07', '26', '星期五', '30', '20193', '2019-30', '201907', '20190722', '20190728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-27', '20190727', '2019', '07', '27', '星期六', '30', '20193', '2019-30', '201907', '20190722', '20190728', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-28', '20190728', '2019', '07', '28', '星期日', '30', '20193', '2019-30', '201907', '20190729', '20190804', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-29', '20190729', '2019', '07', '29', '星期一', '31', '20193', '2019-31', '201907', '20190729', '20190804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-30', '20190730', '2019', '07', '30', '星期二', '31', '20193', '2019-31', '201907', '20190729', '20190804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-07-31', '20190731', '2019', '07', '31', '星期三', '31', '20193', '2019-31', '201907', '20190729', '20190804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-01', '20190801', '2019', '08', '01', '星期四', '31', '20193', '2019-31', '201908', '20190729', '20190804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-02', '20190802', '2019', '08', '02', '星期五', '31', '20193', '2019-31', '201908', '20190729', '20190804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-03', '20190803', '2019', '08', '03', '星期六', '31', '20193', '2019-31', '201908', '20190729', '20190804', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-04', '20190804', '2019', '08', '04', '星期日', '31', '20193', '2019-31', '201908', '20190805', '20190811', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-05', '20190805', '2019', '08', '05', '星期一', '32', '20193', '2019-32', '201908', '20190805', '20190811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-06', '20190806', '2019', '08', '06', '星期二', '32', '20193', '2019-32', '201908', '20190805', '20190811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-07', '20190807', '2019', '08', '07', '星期三', '32', '20193', '2019-32', '201908', '20190805', '20190811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-08', '20190808', '2019', '08', '08', '星期四', '32', '20193', '2019-32', '201908', '20190805', '20190811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-09', '20190809', '2019', '08', '09', '星期五', '32', '20193', '2019-32', '201908', '20190805', '20190811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-10', '20190810', '2019', '08', '10', '星期六', '32', '20193', '2019-32', '201908', '20190805', '20190811', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-11', '20190811', '2019', '08', '11', '星期日', '32', '20193', '2019-32', '201908', '20190812', '20190818', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-12', '20190812', '2019', '08', '12', '星期一', '33', '20193', '2019-33', '201908', '20190812', '20190818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-13', '20190813', '2019', '08', '13', '星期二', '33', '20193', '2019-33', '201908', '20190812', '20190818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-14', '20190814', '2019', '08', '14', '星期三', '33', '20193', '2019-33', '201908', '20190812', '20190818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-15', '20190815', '2019', '08', '15', '星期四', '33', '20193', '2019-33', '201908', '20190812', '20190818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-16', '20190816', '2019', '08', '16', '星期五', '33', '20193', '2019-33', '201908', '20190812', '20190818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-17', '20190817', '2019', '08', '17', '星期六', '33', '20193', '2019-33', '201908', '20190812', '20190818', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-18', '20190818', '2019', '08', '18', '星期日', '33', '20193', '2019-33', '201908', '20190819', '20190825', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-19', '20190819', '2019', '08', '19', '星期一', '34', '20193', '2019-34', '201908', '20190819', '20190825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-20', '20190820', '2019', '08', '20', '星期二', '34', '20193', '2019-34', '201908', '20190819', '20190825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-21', '20190821', '2019', '08', '21', '星期三', '34', '20193', '2019-34', '201908', '20190819', '20190825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-22', '20190822', '2019', '08', '22', '星期四', '34', '20193', '2019-34', '201908', '20190819', '20190825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-23', '20190823', '2019', '08', '23', '星期五', '34', '20193', '2019-34', '201908', '20190819', '20190825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-24', '20190824', '2019', '08', '24', '星期六', '34', '20193', '2019-34', '201908', '20190819', '20190825', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-25', '20190825', '2019', '08', '25', '星期日', '34', '20193', '2019-34', '201908', '20190826', '20190901', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-26', '20190826', '2019', '08', '26', '星期一', '35', '20193', '2019-35', '201908', '20190826', '20190901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-27', '20190827', '2019', '08', '27', '星期二', '35', '20193', '2019-35', '201908', '20190826', '20190901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-28', '20190828', '2019', '08', '28', '星期三', '35', '20193', '2019-35', '201908', '20190826', '20190901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-29', '20190829', '2019', '08', '29', '星期四', '35', '20193', '2019-35', '201908', '20190826', '20190901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-30', '20190830', '2019', '08', '30', '星期五', '35', '20193', '2019-35', '201908', '20190826', '20190901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-08-31', '20190831', '2019', '08', '31', '星期六', '35', '20193', '2019-35', '201908', '20190826', '20190901', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-01', '20190901', '2019', '09', '01', '星期日', '35', '20193', '2019-35', '201909', '20190902', '20190908', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-02', '20190902', '2019', '09', '02', '星期一', '36', '20193', '2019-36', '201909', '20190902', '20190908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-03', '20190903', '2019', '09', '03', '星期二', '36', '20193', '2019-36', '201909', '20190902', '20190908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-04', '20190904', '2019', '09', '04', '星期三', '36', '20193', '2019-36', '201909', '20190902', '20190908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-05', '20190905', '2019', '09', '05', '星期四', '36', '20193', '2019-36', '201909', '20190902', '20190908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-06', '20190906', '2019', '09', '06', '星期五', '36', '20193', '2019-36', '201909', '20190902', '20190908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-07', '20190907', '2019', '09', '07', '星期六', '36', '20193', '2019-36', '201909', '20190902', '20190908', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-08', '20190908', '2019', '09', '08', '星期日', '36', '20193', '2019-36', '201909', '20190909', '20190915', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-09', '20190909', '2019', '09', '09', '星期一', '37', '20193', '2019-37', '201909', '20190909', '20190915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-10', '20190910', '2019', '09', '10', '星期二', '37', '20193', '2019-37', '201909', '20190909', '20190915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-11', '20190911', '2019', '09', '11', '星期三', '37', '20193', '2019-37', '201909', '20190909', '20190915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-12', '20190912', '2019', '09', '12', '星期四', '37', '20193', '2019-37', '201909', '20190909', '20190915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-13', '20190913', '2019', '09', '13', '星期五', '37', '20193', '2019-37', '201909', '20190909', '20190915', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-14', '20190914', '2019', '09', '14', '星期六', '37', '20193', '2019-37', '201909', '20190909', '20190915', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-15', '20190915', '2019', '09', '15', '星期日', '37', '20193', '2019-37', '201909', '20190916', '20190922', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-16', '20190916', '2019', '09', '16', '星期一', '38', '20193', '2019-38', '201909', '20190916', '20190922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-17', '20190917', '2019', '09', '17', '星期二', '38', '20193', '2019-38', '201909', '20190916', '20190922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-18', '20190918', '2019', '09', '18', '星期三', '38', '20193', '2019-38', '201909', '20190916', '20190922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-19', '20190919', '2019', '09', '19', '星期四', '38', '20193', '2019-38', '201909', '20190916', '20190922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-20', '20190920', '2019', '09', '20', '星期五', '38', '20193', '2019-38', '201909', '20190916', '20190922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-21', '20190921', '2019', '09', '21', '星期六', '38', '20193', '2019-38', '201909', '20190916', '20190922', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-22', '20190922', '2019', '09', '22', '星期日', '38', '20193', '2019-38', '201909', '20190923', '20190929', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-23', '20190923', '2019', '09', '23', '星期一', '39', '20193', '2019-39', '201909', '20190923', '20190929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-24', '20190924', '2019', '09', '24', '星期二', '39', '20193', '2019-39', '201909', '20190923', '20190929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-25', '20190925', '2019', '09', '25', '星期三', '39', '20193', '2019-39', '201909', '20190923', '20190929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-26', '20190926', '2019', '09', '26', '星期四', '39', '20193', '2019-39', '201909', '20190923', '20190929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-27', '20190927', '2019', '09', '27', '星期五', '39', '20193', '2019-39', '201909', '20190923', '20190929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-28', '20190928', '2019', '09', '28', '星期六', '39', '20193', '2019-39', '201909', '20190923', '20190929', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-29', '20190929', '2019', '09', '29', '星期日', '39', '20193', '2019-39', '201909', '20190930', '20191006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-09-30', '20190930', '2019', '09', '30', '星期一', '40', '20193', '2019-40', '201909', '20190930', '20191006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-01', '20191001', '2019', '10', '01', '星期二', '40', '20194', '2019-40', '201910', '20190930', '20191006', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-02', '20191002', '2019', '10', '02', '星期三', '40', '20194', '2019-40', '201910', '20190930', '20191006', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-03', '20191003', '2019', '10', '03', '星期四', '40', '20194', '2019-40', '201910', '20190930', '20191006', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-04', '20191004', '2019', '10', '04', '星期五', '40', '20194', '2019-40', '201910', '20190930', '20191006', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-05', '20191005', '2019', '10', '05', '星期六', '40', '20194', '2019-40', '201910', '20190930', '20191006', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-06', '20191006', '2019', '10', '06', '星期日', '40', '20194', '2019-40', '201910', '20191007', '20191013', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-07', '20191007', '2019', '10', '07', '星期一', '41', '20194', '2019-41', '201910', '20191007', '20191013', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-08', '20191008', '2019', '10', '08', '星期二', '41', '20194', '2019-41', '201910', '20191007', '20191013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-09', '20191009', '2019', '10', '09', '星期三', '41', '20194', '2019-41', '201910', '20191007', '20191013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-10', '20191010', '2019', '10', '10', '星期四', '41', '20194', '2019-41', '201910', '20191007', '20191013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-11', '20191011', '2019', '10', '11', '星期五', '41', '20194', '2019-41', '201910', '20191007', '20191013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-12', '20191012', '2019', '10', '12', '星期六', '41', '20194', '2019-41', '201910', '20191007', '20191013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-13', '20191013', '2019', '10', '13', '星期日', '41', '20194', '2019-41', '201910', '20191014', '20191020', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-14', '20191014', '2019', '10', '14', '星期一', '42', '20194', '2019-42', '201910', '20191014', '20191020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-15', '20191015', '2019', '10', '15', '星期二', '42', '20194', '2019-42', '201910', '20191014', '20191020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-16', '20191016', '2019', '10', '16', '星期三', '42', '20194', '2019-42', '201910', '20191014', '20191020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-17', '20191017', '2019', '10', '17', '星期四', '42', '20194', '2019-42', '201910', '20191014', '20191020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-18', '20191018', '2019', '10', '18', '星期五', '42', '20194', '2019-42', '201910', '20191014', '20191020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-19', '20191019', '2019', '10', '19', '星期六', '42', '20194', '2019-42', '201910', '20191014', '20191020', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-20', '20191020', '2019', '10', '20', '星期日', '42', '20194', '2019-42', '201910', '20191021', '20191027', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-21', '20191021', '2019', '10', '21', '星期一', '43', '20194', '2019-43', '201910', '20191021', '20191027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-22', '20191022', '2019', '10', '22', '星期二', '43', '20194', '2019-43', '201910', '20191021', '20191027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-23', '20191023', '2019', '10', '23', '星期三', '43', '20194', '2019-43', '201910', '20191021', '20191027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-24', '20191024', '2019', '10', '24', '星期四', '43', '20194', '2019-43', '201910', '20191021', '20191027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-25', '20191025', '2019', '10', '25', '星期五', '43', '20194', '2019-43', '201910', '20191021', '20191027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-26', '20191026', '2019', '10', '26', '星期六', '43', '20194', '2019-43', '201910', '20191021', '20191027', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-27', '20191027', '2019', '10', '27', '星期日', '43', '20194', '2019-43', '201910', '20191028', '20191103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-28', '20191028', '2019', '10', '28', '星期一', '44', '20194', '2019-44', '201910', '20191028', '20191103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-29', '20191029', '2019', '10', '29', '星期二', '44', '20194', '2019-44', '201910', '20191028', '20191103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-30', '20191030', '2019', '10', '30', '星期三', '44', '20194', '2019-44', '201910', '20191028', '20191103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-10-31', '20191031', '2019', '10', '31', '星期四', '44', '20194', '2019-44', '201910', '20191028', '20191103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-01', '20191101', '2019', '11', '01', '星期五', '44', '20194', '2019-44', '201911', '20191028', '20191103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-02', '20191102', '2019', '11', '02', '星期六', '44', '20194', '2019-44', '201911', '20191028', '20191103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-03', '20191103', '2019', '11', '03', '星期日', '44', '20194', '2019-44', '201911', '20191104', '20191110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-04', '20191104', '2019', '11', '04', '星期一', '45', '20194', '2019-45', '201911', '20191104', '20191110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-05', '20191105', '2019', '11', '05', '星期二', '45', '20194', '2019-45', '201911', '20191104', '20191110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-06', '20191106', '2019', '11', '06', '星期三', '45', '20194', '2019-45', '201911', '20191104', '20191110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-07', '20191107', '2019', '11', '07', '星期四', '45', '20194', '2019-45', '201911', '20191104', '20191110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-08', '20191108', '2019', '11', '08', '星期五', '45', '20194', '2019-45', '201911', '20191104', '20191110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-09', '20191109', '2019', '11', '09', '星期六', '45', '20194', '2019-45', '201911', '20191104', '20191110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-10', '20191110', '2019', '11', '10', '星期日', '45', '20194', '2019-45', '201911', '20191111', '20191117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-11', '20191111', '2019', '11', '11', '星期一', '46', '20194', '2019-46', '201911', '20191111', '20191117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-12', '20191112', '2019', '11', '12', '星期二', '46', '20194', '2019-46', '201911', '20191111', '20191117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-13', '20191113', '2019', '11', '13', '星期三', '46', '20194', '2019-46', '201911', '20191111', '20191117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-14', '20191114', '2019', '11', '14', '星期四', '46', '20194', '2019-46', '201911', '20191111', '20191117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-15', '20191115', '2019', '11', '15', '星期五', '46', '20194', '2019-46', '201911', '20191111', '20191117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-16', '20191116', '2019', '11', '16', '星期六', '46', '20194', '2019-46', '201911', '20191111', '20191117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-17', '20191117', '2019', '11', '17', '星期日', '46', '20194', '2019-46', '201911', '20191118', '20191124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-18', '20191118', '2019', '11', '18', '星期一', '47', '20194', '2019-47', '201911', '20191118', '20191124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-19', '20191119', '2019', '11', '19', '星期二', '47', '20194', '2019-47', '201911', '20191118', '20191124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-20', '20191120', '2019', '11', '20', '星期三', '47', '20194', '2019-47', '201911', '20191118', '20191124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-21', '20191121', '2019', '11', '21', '星期四', '47', '20194', '2019-47', '201911', '20191118', '20191124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-22', '20191122', '2019', '11', '22', '星期五', '47', '20194', '2019-47', '201911', '20191118', '20191124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-23', '20191123', '2019', '11', '23', '星期六', '47', '20194', '2019-47', '201911', '20191118', '20191124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-24', '20191124', '2019', '11', '24', '星期日', '47', '20194', '2019-47', '201911', '20191125', '20191201', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-25', '20191125', '2019', '11', '25', '星期一', '48', '20194', '2019-48', '201911', '20191125', '20191201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-26', '20191126', '2019', '11', '26', '星期二', '48', '20194', '2019-48', '201911', '20191125', '20191201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-27', '20191127', '2019', '11', '27', '星期三', '48', '20194', '2019-48', '201911', '20191125', '20191201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-28', '20191128', '2019', '11', '28', '星期四', '48', '20194', '2019-48', '201911', '20191125', '20191201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-29', '20191129', '2019', '11', '29', '星期五', '48', '20194', '2019-48', '201911', '20191125', '20191201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-11-30', '20191130', '2019', '11', '30', '星期六', '48', '20194', '2019-48', '201911', '20191125', '20191201', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-01', '20191201', '2019', '12', '01', '星期日', '48', '20194', '2019-48', '201912', '20191202', '20191208', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-02', '20191202', '2019', '12', '02', '星期一', '49', '20194', '2019-49', '201912', '20191202', '20191208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-03', '20191203', '2019', '12', '03', '星期二', '49', '20194', '2019-49', '201912', '20191202', '20191208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-04', '20191204', '2019', '12', '04', '星期三', '49', '20194', '2019-49', '201912', '20191202', '20191208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-05', '20191205', '2019', '12', '05', '星期四', '49', '20194', '2019-49', '201912', '20191202', '20191208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-06', '20191206', '2019', '12', '06', '星期五', '49', '20194', '2019-49', '201912', '20191202', '20191208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-07', '20191207', '2019', '12', '07', '星期六', '49', '20194', '2019-49', '201912', '20191202', '20191208', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-08', '20191208', '2019', '12', '08', '星期日', '49', '20194', '2019-49', '201912', '20191209', '20191215', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-09', '20191209', '2019', '12', '09', '星期一', '50', '20194', '2019-50', '201912', '20191209', '20191215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-10', '20191210', '2019', '12', '10', '星期二', '50', '20194', '2019-50', '201912', '20191209', '20191215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-11', '20191211', '2019', '12', '11', '星期三', '50', '20194', '2019-50', '201912', '20191209', '20191215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-12', '20191212', '2019', '12', '12', '星期四', '50', '20194', '2019-50', '201912', '20191209', '20191215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-13', '20191213', '2019', '12', '13', '星期五', '50', '20194', '2019-50', '201912', '20191209', '20191215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-14', '20191214', '2019', '12', '14', '星期六', '50', '20194', '2019-50', '201912', '20191209', '20191215', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-15', '20191215', '2019', '12', '15', '星期日', '50', '20194', '2019-50', '201912', '20191216', '20191222', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-16', '20191216', '2019', '12', '16', '星期一', '51', '20194', '2019-51', '201912', '20191216', '20191222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-17', '20191217', '2019', '12', '17', '星期二', '51', '20194', '2019-51', '201912', '20191216', '20191222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-18', '20191218', '2019', '12', '18', '星期三', '51', '20194', '2019-51', '201912', '20191216', '20191222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-19', '20191219', '2019', '12', '19', '星期四', '51', '20194', '2019-51', '201912', '20191216', '20191222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-20', '20191220', '2019', '12', '20', '星期五', '51', '20194', '2019-51', '201912', '20191216', '20191222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-21', '20191221', '2019', '12', '21', '星期六', '51', '20194', '2019-51', '201912', '20191216', '20191222', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-22', '20191222', '2019', '12', '22', '星期日', '51', '20194', '2019-51', '201912', '20191223', '20191229', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-23', '20191223', '2019', '12', '23', '星期一', '52', '20194', '2019-52', '201912', '20191223', '20191229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-24', '20191224', '2019', '12', '24', '星期二', '52', '20194', '2019-52', '201912', '20191223', '20191229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-25', '20191225', '2019', '12', '25', '星期三', '52', '20194', '2019-52', '201912', '20191223', '20191229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-26', '20191226', '2019', '12', '26', '星期四', '52', '20194', '2019-52', '201912', '20191223', '20191229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-27', '20191227', '2019', '12', '27', '星期五', '52', '20194', '2019-52', '201912', '20191223', '20191229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-28', '20191228', '2019', '12', '28', '星期六', '52', '20194', '2019-52', '201912', '20191223', '20191229', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-29', '20191229', '2019', '12', '29', '星期日', '52', '20194', '2019-52', '201912', '20191230', '20200105', '1');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-30', '20191230', '2019', '12', '30', '星期一', '53', '20194', '2019-53', '201912', '20191230', '20200105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2019-12-31', '20191231', '2019', '12', '31', '星期二', '53', '20194', '2019-53', '201912', '20191230', '20200105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-01', '20200101', '2020', '01', '01', '星期三', '01', '20201', '2020-01', '202001', '20191230', '20200105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-02', '20200102', '2020', '01', '02', '星期四', '01', '20201', '2020-01', '202001', '20191230', '20200105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-03', '20200103', '2020', '01', '03', '星期五', '01', '20201', '2020-01', '202001', '20191230', '20200105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-04', '20200104', '2020', '01', '04', '星期六', '01', '20201', '2020-01', '202001', '20191230', '20200105', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-05', '20200105', '2020', '01', '05', '星期日', '01', '20201', '2020-01', '202001', '20200106', '20200112', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-06', '20200106', '2020', '01', '06', '星期一', '02', '20201', '2020-02', '202001', '20200106', '20200112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-07', '20200107', '2020', '01', '07', '星期二', '02', '20201', '2020-02', '202001', '20200106', '20200112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-08', '20200108', '2020', '01', '08', '星期三', '02', '20201', '2020-02', '202001', '20200106', '20200112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-09', '20200109', '2020', '01', '09', '星期四', '02', '20201', '2020-02', '202001', '20200106', '20200112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-10', '20200110', '2020', '01', '10', '星期五', '02', '20201', '2020-02', '202001', '20200106', '20200112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-11', '20200111', '2020', '01', '11', '星期六', '02', '20201', '2020-02', '202001', '20200106', '20200112', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-12', '20200112', '2020', '01', '12', '星期日', '02', '20201', '2020-02', '202001', '20200113', '20200119', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-13', '20200113', '2020', '01', '13', '星期一', '03', '20201', '2020-03', '202001', '20200113', '20200119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-14', '20200114', '2020', '01', '14', '星期二', '03', '20201', '2020-03', '202001', '20200113', '20200119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-15', '20200115', '2020', '01', '15', '星期三', '03', '20201', '2020-03', '202001', '20200113', '20200119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-16', '20200116', '2020', '01', '16', '星期四', '03', '20201', '2020-03', '202001', '20200113', '20200119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-17', '20200117', '2020', '01', '17', '星期五', '03', '20201', '2020-03', '202001', '20200113', '20200119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-18', '20200118', '2020', '01', '18', '星期六', '03', '20201', '2020-03', '202001', '20200113', '20200119', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-19', '20200119', '2020', '01', '19', '星期日', '03', '20201', '2020-03', '202001', '20200120', '20200126', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-20', '20200120', '2020', '01', '20', '星期一', '04', '20201', '2020-04', '202001', '20200120', '20200126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-21', '20200121', '2020', '01', '21', '星期二', '04', '20201', '2020-04', '202001', '20200120', '20200126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-22', '20200122', '2020', '01', '22', '星期三', '04', '20201', '2020-04', '202001', '20200120', '20200126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-23', '20200123', '2020', '01', '23', '星期四', '04', '20201', '2020-04', '202001', '20200120', '20200126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-24', '20200124', '2020', '01', '24', '星期五', '04', '20201', '2020-04', '202001', '20200120', '20200126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-25', '20200125', '2020', '01', '25', '星期六', '04', '20201', '2020-04', '202001', '20200120', '20200126', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-26', '20200126', '2020', '01', '26', '星期日', '04', '20201', '2020-04', '202001', '20200127', '20200202', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-27', '20200127', '2020', '01', '27', '星期一', '05', '20201', '2020-05', '202001', '20200127', '20200202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-28', '20200128', '2020', '01', '28', '星期二', '05', '20201', '2020-05', '202001', '20200127', '20200202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-29', '20200129', '2020', '01', '29', '星期三', '05', '20201', '2020-05', '202001', '20200127', '20200202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-30', '20200130', '2020', '01', '30', '星期四', '05', '20201', '2020-05', '202001', '20200127', '20200202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-01-31', '20200131', '2020', '01', '31', '星期五', '05', '20201', '2020-05', '202001', '20200127', '20200202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-01', '20200201', '2020', '02', '01', '星期六', '05', '20201', '2020-05', '202002', '20200127', '20200202', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-02', '20200202', '2020', '02', '02', '星期日', '05', '20201', '2020-05', '202002', '20200203', '20200209', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-03', '20200203', '2020', '02', '03', '星期一', '06', '20201', '2020-06', '202002', '20200203', '20200209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-04', '20200204', '2020', '02', '04', '星期二', '06', '20201', '2020-06', '202002', '20200203', '20200209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-05', '20200205', '2020', '02', '05', '星期三', '06', '20201', '2020-06', '202002', '20200203', '20200209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-06', '20200206', '2020', '02', '06', '星期四', '06', '20201', '2020-06', '202002', '20200203', '20200209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-07', '20200207', '2020', '02', '07', '星期五', '06', '20201', '2020-06', '202002', '20200203', '20200209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-08', '20200208', '2020', '02', '08', '星期六', '06', '20201', '2020-06', '202002', '20200203', '20200209', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-09', '20200209', '2020', '02', '09', '星期日', '06', '20201', '2020-06', '202002', '20200210', '20200216', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-10', '20200210', '2020', '02', '10', '星期一', '07', '20201', '2020-07', '202002', '20200210', '20200216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-11', '20200211', '2020', '02', '11', '星期二', '07', '20201', '2020-07', '202002', '20200210', '20200216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-12', '20200212', '2020', '02', '12', '星期三', '07', '20201', '2020-07', '202002', '20200210', '20200216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-13', '20200213', '2020', '02', '13', '星期四', '07', '20201', '2020-07', '202002', '20200210', '20200216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-14', '20200214', '2020', '02', '14', '星期五', '07', '20201', '2020-07', '202002', '20200210', '20200216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-15', '20200215', '2020', '02', '15', '星期六', '07', '20201', '2020-07', '202002', '20200210', '20200216', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-16', '20200216', '2020', '02', '16', '星期日', '07', '20201', '2020-07', '202002', '20200217', '20200223', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-17', '20200217', '2020', '02', '17', '星期一', '08', '20201', '2020-08', '202002', '20200217', '20200223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-18', '20200218', '2020', '02', '18', '星期二', '08', '20201', '2020-08', '202002', '20200217', '20200223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-19', '20200219', '2020', '02', '19', '星期三', '08', '20201', '2020-08', '202002', '20200217', '20200223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-20', '20200220', '2020', '02', '20', '星期四', '08', '20201', '2020-08', '202002', '20200217', '20200223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-21', '20200221', '2020', '02', '21', '星期五', '08', '20201', '2020-08', '202002', '20200217', '20200223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-22', '20200222', '2020', '02', '22', '星期六', '08', '20201', '2020-08', '202002', '20200217', '20200223', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-23', '20200223', '2020', '02', '23', '星期日', '08', '20201', '2020-08', '202002', '20200224', '20200301', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-24', '20200224', '2020', '02', '24', '星期一', '09', '20201', '2020-09', '202002', '20200224', '20200301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-25', '20200225', '2020', '02', '25', '星期二', '09', '20201', '2020-09', '202002', '20200224', '20200301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-26', '20200226', '2020', '02', '26', '星期三', '09', '20201', '2020-09', '202002', '20200224', '20200301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-27', '20200227', '2020', '02', '27', '星期四', '09', '20201', '2020-09', '202002', '20200224', '20200301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-28', '20200228', '2020', '02', '28', '星期五', '09', '20201', '2020-09', '202002', '20200224', '20200301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-02-29', '20200229', '2020', '02', '29', '星期六', '09', '20201', '2020-09', '202002', '20200224', '20200301', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-01', '20200301', '2020', '03', '01', '星期日', '09', '20201', '2020-09', '202003', '20200302', '20200308', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-02', '20200302', '2020', '03', '02', '星期一', '10', '20201', '2020-10', '202003', '20200302', '20200308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-03', '20200303', '2020', '03', '03', '星期二', '10', '20201', '2020-10', '202003', '20200302', '20200308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-04', '20200304', '2020', '03', '04', '星期三', '10', '20201', '2020-10', '202003', '20200302', '20200308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-05', '20200305', '2020', '03', '05', '星期四', '10', '20201', '2020-10', '202003', '20200302', '20200308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-06', '20200306', '2020', '03', '06', '星期五', '10', '20201', '2020-10', '202003', '20200302', '20200308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-07', '20200307', '2020', '03', '07', '星期六', '10', '20201', '2020-10', '202003', '20200302', '20200308', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-08', '20200308', '2020', '03', '08', '星期日', '10', '20201', '2020-10', '202003', '20200309', '20200315', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-09', '20200309', '2020', '03', '09', '星期一', '11', '20201', '2020-11', '202003', '20200309', '20200315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-10', '20200310', '2020', '03', '10', '星期二', '11', '20201', '2020-11', '202003', '20200309', '20200315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-11', '20200311', '2020', '03', '11', '星期三', '11', '20201', '2020-11', '202003', '20200309', '20200315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-12', '20200312', '2020', '03', '12', '星期四', '11', '20201', '2020-11', '202003', '20200309', '20200315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-13', '20200313', '2020', '03', '13', '星期五', '11', '20201', '2020-11', '202003', '20200309', '20200315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-14', '20200314', '2020', '03', '14', '星期六', '11', '20201', '2020-11', '202003', '20200309', '20200315', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-15', '20200315', '2020', '03', '15', '星期日', '11', '20201', '2020-11', '202003', '20200316', '20200322', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-16', '20200316', '2020', '03', '16', '星期一', '12', '20201', '2020-12', '202003', '20200316', '20200322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-17', '20200317', '2020', '03', '17', '星期二', '12', '20201', '2020-12', '202003', '20200316', '20200322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-18', '20200318', '2020', '03', '18', '星期三', '12', '20201', '2020-12', '202003', '20200316', '20200322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-19', '20200319', '2020', '03', '19', '星期四', '12', '20201', '2020-12', '202003', '20200316', '20200322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-20', '20200320', '2020', '03', '20', '星期五', '12', '20201', '2020-12', '202003', '20200316', '20200322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-21', '20200321', '2020', '03', '21', '星期六', '12', '20201', '2020-12', '202003', '20200316', '20200322', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-22', '20200322', '2020', '03', '22', '星期日', '12', '20201', '2020-12', '202003', '20200323', '20200329', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-23', '20200323', '2020', '03', '23', '星期一', '13', '20201', '2020-13', '202003', '20200323', '20200329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-24', '20200324', '2020', '03', '24', '星期二', '13', '20201', '2020-13', '202003', '20200323', '20200329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-25', '20200325', '2020', '03', '25', '星期三', '13', '20201', '2020-13', '202003', '20200323', '20200329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-26', '20200326', '2020', '03', '26', '星期四', '13', '20201', '2020-13', '202003', '20200323', '20200329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-27', '20200327', '2020', '03', '27', '星期五', '13', '20201', '2020-13', '202003', '20200323', '20200329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-28', '20200328', '2020', '03', '28', '星期六', '13', '20201', '2020-13', '202003', '20200323', '20200329', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-29', '20200329', '2020', '03', '29', '星期日', '13', '20201', '2020-13', '202003', '20200330', '20200405', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-30', '20200330', '2020', '03', '30', '星期一', '14', '20201', '2020-14', '202003', '20200330', '20200405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-03-31', '20200331', '2020', '03', '31', '星期二', '14', '20201', '2020-14', '202003', '20200330', '20200405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-01', '20200401', '2020', '04', '01', '星期三', '14', '20202', '2020-14', '202004', '20200330', '20200405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-02', '20200402', '2020', '04', '02', '星期四', '14', '20202', '2020-14', '202004', '20200330', '20200405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-03', '20200403', '2020', '04', '03', '星期五', '14', '20202', '2020-14', '202004', '20200330', '20200405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-04', '20200404', '2020', '04', '04', '星期六', '14', '20202', '2020-14', '202004', '20200330', '20200405', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-05', '20200405', '2020', '04', '05', '星期日', '14', '20202', '2020-14', '202004', '20200406', '20200412', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-06', '20200406', '2020', '04', '06', '星期一', '15', '20202', '2020-15', '202004', '20200406', '20200412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-07', '20200407', '2020', '04', '07', '星期二', '15', '20202', '2020-15', '202004', '20200406', '20200412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-08', '20200408', '2020', '04', '08', '星期三', '15', '20202', '2020-15', '202004', '20200406', '20200412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-09', '20200409', '2020', '04', '09', '星期四', '15', '20202', '2020-15', '202004', '20200406', '20200412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-10', '20200410', '2020', '04', '10', '星期五', '15', '20202', '2020-15', '202004', '20200406', '20200412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-11', '20200411', '2020', '04', '11', '星期六', '15', '20202', '2020-15', '202004', '20200406', '20200412', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-12', '20200412', '2020', '04', '12', '星期日', '15', '20202', '2020-15', '202004', '20200413', '20200419', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-13', '20200413', '2020', '04', '13', '星期一', '16', '20202', '2020-16', '202004', '20200413', '20200419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-14', '20200414', '2020', '04', '14', '星期二', '16', '20202', '2020-16', '202004', '20200413', '20200419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-15', '20200415', '2020', '04', '15', '星期三', '16', '20202', '2020-16', '202004', '20200413', '20200419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-16', '20200416', '2020', '04', '16', '星期四', '16', '20202', '2020-16', '202004', '20200413', '20200419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-17', '20200417', '2020', '04', '17', '星期五', '16', '20202', '2020-16', '202004', '20200413', '20200419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-18', '20200418', '2020', '04', '18', '星期六', '16', '20202', '2020-16', '202004', '20200413', '20200419', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-19', '20200419', '2020', '04', '19', '星期日', '16', '20202', '2020-16', '202004', '20200420', '20200426', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-20', '20200420', '2020', '04', '20', '星期一', '17', '20202', '2020-17', '202004', '20200420', '20200426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-21', '20200421', '2020', '04', '21', '星期二', '17', '20202', '2020-17', '202004', '20200420', '20200426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-22', '20200422', '2020', '04', '22', '星期三', '17', '20202', '2020-17', '202004', '20200420', '20200426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-23', '20200423', '2020', '04', '23', '星期四', '17', '20202', '2020-17', '202004', '20200420', '20200426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-24', '20200424', '2020', '04', '24', '星期五', '17', '20202', '2020-17', '202004', '20200420', '20200426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-25', '20200425', '2020', '04', '25', '星期六', '17', '20202', '2020-17', '202004', '20200420', '20200426', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-26', '20200426', '2020', '04', '26', '星期日', '17', '20202', '2020-17', '202004', '20200427', '20200503', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-27', '20200427', '2020', '04', '27', '星期一', '18', '20202', '2020-18', '202004', '20200427', '20200503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-28', '20200428', '2020', '04', '28', '星期二', '18', '20202', '2020-18', '202004', '20200427', '20200503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-29', '20200429', '2020', '04', '29', '星期三', '18', '20202', '2020-18', '202004', '20200427', '20200503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-04-30', '20200430', '2020', '04', '30', '星期四', '18', '20202', '2020-18', '202004', '20200427', '20200503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-01', '20200501', '2020', '05', '01', '星期五', '18', '20202', '2020-18', '202005', '20200427', '20200503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-02', '20200502', '2020', '05', '02', '星期六', '18', '20202', '2020-18', '202005', '20200427', '20200503', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-03', '20200503', '2020', '05', '03', '星期日', '18', '20202', '2020-18', '202005', '20200504', '20200510', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-04', '20200504', '2020', '05', '04', '星期一', '19', '20202', '2020-19', '202005', '20200504', '20200510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-05', '20200505', '2020', '05', '05', '星期二', '19', '20202', '2020-19', '202005', '20200504', '20200510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-06', '20200506', '2020', '05', '06', '星期三', '19', '20202', '2020-19', '202005', '20200504', '20200510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-07', '20200507', '2020', '05', '07', '星期四', '19', '20202', '2020-19', '202005', '20200504', '20200510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-08', '20200508', '2020', '05', '08', '星期五', '19', '20202', '2020-19', '202005', '20200504', '20200510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-09', '20200509', '2020', '05', '09', '星期六', '19', '20202', '2020-19', '202005', '20200504', '20200510', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-10', '20200510', '2020', '05', '10', '星期日', '19', '20202', '2020-19', '202005', '20200511', '20200517', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-11', '20200511', '2020', '05', '11', '星期一', '20', '20202', '2020-20', '202005', '20200511', '20200517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-12', '20200512', '2020', '05', '12', '星期二', '20', '20202', '2020-20', '202005', '20200511', '20200517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-13', '20200513', '2020', '05', '13', '星期三', '20', '20202', '2020-20', '202005', '20200511', '20200517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-14', '20200514', '2020', '05', '14', '星期四', '20', '20202', '2020-20', '202005', '20200511', '20200517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-15', '20200515', '2020', '05', '15', '星期五', '20', '20202', '2020-20', '202005', '20200511', '20200517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-16', '20200516', '2020', '05', '16', '星期六', '20', '20202', '2020-20', '202005', '20200511', '20200517', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-17', '20200517', '2020', '05', '17', '星期日', '20', '20202', '2020-20', '202005', '20200518', '20200524', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-18', '20200518', '2020', '05', '18', '星期一', '21', '20202', '2020-21', '202005', '20200518', '20200524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-19', '20200519', '2020', '05', '19', '星期二', '21', '20202', '2020-21', '202005', '20200518', '20200524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-20', '20200520', '2020', '05', '20', '星期三', '21', '20202', '2020-21', '202005', '20200518', '20200524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-21', '20200521', '2020', '05', '21', '星期四', '21', '20202', '2020-21', '202005', '20200518', '20200524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-22', '20200522', '2020', '05', '22', '星期五', '21', '20202', '2020-21', '202005', '20200518', '20200524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-23', '20200523', '2020', '05', '23', '星期六', '21', '20202', '2020-21', '202005', '20200518', '20200524', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-24', '20200524', '2020', '05', '24', '星期日', '21', '20202', '2020-21', '202005', '20200525', '20200531', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-25', '20200525', '2020', '05', '25', '星期一', '22', '20202', '2020-22', '202005', '20200525', '20200531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-26', '20200526', '2020', '05', '26', '星期二', '22', '20202', '2020-22', '202005', '20200525', '20200531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-27', '20200527', '2020', '05', '27', '星期三', '22', '20202', '2020-22', '202005', '20200525', '20200531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-28', '20200528', '2020', '05', '28', '星期四', '22', '20202', '2020-22', '202005', '20200525', '20200531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-29', '20200529', '2020', '05', '29', '星期五', '22', '20202', '2020-22', '202005', '20200525', '20200531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-30', '20200530', '2020', '05', '30', '星期六', '22', '20202', '2020-22', '202005', '20200525', '20200531', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-05-31', '20200531', '2020', '05', '31', '星期日', '22', '20202', '2020-22', '202005', '20200601', '20200607', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-01', '20200601', '2020', '06', '01', '星期一', '23', '20202', '2020-23', '202006', '20200601', '20200607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-02', '20200602', '2020', '06', '02', '星期二', '23', '20202', '2020-23', '202006', '20200601', '20200607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-03', '20200603', '2020', '06', '03', '星期三', '23', '20202', '2020-23', '202006', '20200601', '20200607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-04', '20200604', '2020', '06', '04', '星期四', '23', '20202', '2020-23', '202006', '20200601', '20200607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-05', '20200605', '2020', '06', '05', '星期五', '23', '20202', '2020-23', '202006', '20200601', '20200607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-06', '20200606', '2020', '06', '06', '星期六', '23', '20202', '2020-23', '202006', '20200601', '20200607', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-07', '20200607', '2020', '06', '07', '星期日', '23', '20202', '2020-23', '202006', '20200608', '20200614', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-08', '20200608', '2020', '06', '08', '星期一', '24', '20202', '2020-24', '202006', '20200608', '20200614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-09', '20200609', '2020', '06', '09', '星期二', '24', '20202', '2020-24', '202006', '20200608', '20200614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-10', '20200610', '2020', '06', '10', '星期三', '24', '20202', '2020-24', '202006', '20200608', '20200614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-11', '20200611', '2020', '06', '11', '星期四', '24', '20202', '2020-24', '202006', '20200608', '20200614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-12', '20200612', '2020', '06', '12', '星期五', '24', '20202', '2020-24', '202006', '20200608', '20200614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-13', '20200613', '2020', '06', '13', '星期六', '24', '20202', '2020-24', '202006', '20200608', '20200614', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-14', '20200614', '2020', '06', '14', '星期日', '24', '20202', '2020-24', '202006', '20200615', '20200621', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-15', '20200615', '2020', '06', '15', '星期一', '25', '20202', '2020-25', '202006', '20200615', '20200621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-16', '20200616', '2020', '06', '16', '星期二', '25', '20202', '2020-25', '202006', '20200615', '20200621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-17', '20200617', '2020', '06', '17', '星期三', '25', '20202', '2020-25', '202006', '20200615', '20200621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-18', '20200618', '2020', '06', '18', '星期四', '25', '20202', '2020-25', '202006', '20200615', '20200621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-19', '20200619', '2020', '06', '19', '星期五', '25', '20202', '2020-25', '202006', '20200615', '20200621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-20', '20200620', '2020', '06', '20', '星期六', '25', '20202', '2020-25', '202006', '20200615', '20200621', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-21', '20200621', '2020', '06', '21', '星期日', '25', '20202', '2020-25', '202006', '20200622', '20200628', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-22', '20200622', '2020', '06', '22', '星期一', '26', '20202', '2020-26', '202006', '20200622', '20200628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-23', '20200623', '2020', '06', '23', '星期二', '26', '20202', '2020-26', '202006', '20200622', '20200628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-24', '20200624', '2020', '06', '24', '星期三', '26', '20202', '2020-26', '202006', '20200622', '20200628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-25', '20200625', '2020', '06', '25', '星期四', '26', '20202', '2020-26', '202006', '20200622', '20200628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-26', '20200626', '2020', '06', '26', '星期五', '26', '20202', '2020-26', '202006', '20200622', '20200628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-27', '20200627', '2020', '06', '27', '星期六', '26', '20202', '2020-26', '202006', '20200622', '20200628', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-28', '20200628', '2020', '06', '28', '星期日', '26', '20202', '2020-26', '202006', '20200629', '20200705', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-29', '20200629', '2020', '06', '29', '星期一', '27', '20202', '2020-27', '202006', '20200629', '20200705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-06-30', '20200630', '2020', '06', '30', '星期二', '27', '20202', '2020-27', '202006', '20200629', '20200705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-01', '20200701', '2020', '07', '01', '星期三', '27', '20203', '2020-27', '202007', '20200629', '20200705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-02', '20200702', '2020', '07', '02', '星期四', '27', '20203', '2020-27', '202007', '20200629', '20200705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-03', '20200703', '2020', '07', '03', '星期五', '27', '20203', '2020-27', '202007', '20200629', '20200705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-04', '20200704', '2020', '07', '04', '星期六', '27', '20203', '2020-27', '202007', '20200629', '20200705', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-05', '20200705', '2020', '07', '05', '星期日', '27', '20203', '2020-27', '202007', '20200706', '20200712', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-06', '20200706', '2020', '07', '06', '星期一', '28', '20203', '2020-28', '202007', '20200706', '20200712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-07', '20200707', '2020', '07', '07', '星期二', '28', '20203', '2020-28', '202007', '20200706', '20200712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-08', '20200708', '2020', '07', '08', '星期三', '28', '20203', '2020-28', '202007', '20200706', '20200712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-09', '20200709', '2020', '07', '09', '星期四', '28', '20203', '2020-28', '202007', '20200706', '20200712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-10', '20200710', '2020', '07', '10', '星期五', '28', '20203', '2020-28', '202007', '20200706', '20200712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-11', '20200711', '2020', '07', '11', '星期六', '28', '20203', '2020-28', '202007', '20200706', '20200712', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-12', '20200712', '2020', '07', '12', '星期日', '28', '20203', '2020-28', '202007', '20200713', '20200719', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-13', '20200713', '2020', '07', '13', '星期一', '29', '20203', '2020-29', '202007', '20200713', '20200719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-14', '20200714', '2020', '07', '14', '星期二', '29', '20203', '2020-29', '202007', '20200713', '20200719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-15', '20200715', '2020', '07', '15', '星期三', '29', '20203', '2020-29', '202007', '20200713', '20200719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-16', '20200716', '2020', '07', '16', '星期四', '29', '20203', '2020-29', '202007', '20200713', '20200719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-17', '20200717', '2020', '07', '17', '星期五', '29', '20203', '2020-29', '202007', '20200713', '20200719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-18', '20200718', '2020', '07', '18', '星期六', '29', '20203', '2020-29', '202007', '20200713', '20200719', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-19', '20200719', '2020', '07', '19', '星期日', '29', '20203', '2020-29', '202007', '20200720', '20200726', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-20', '20200720', '2020', '07', '20', '星期一', '30', '20203', '2020-30', '202007', '20200720', '20200726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-21', '20200721', '2020', '07', '21', '星期二', '30', '20203', '2020-30', '202007', '20200720', '20200726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-22', '20200722', '2020', '07', '22', '星期三', '30', '20203', '2020-30', '202007', '20200720', '20200726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-23', '20200723', '2020', '07', '23', '星期四', '30', '20203', '2020-30', '202007', '20200720', '20200726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-24', '20200724', '2020', '07', '24', '星期五', '30', '20203', '2020-30', '202007', '20200720', '20200726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-25', '20200725', '2020', '07', '25', '星期六', '30', '20203', '2020-30', '202007', '20200720', '20200726', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-26', '20200726', '2020', '07', '26', '星期日', '30', '20203', '2020-30', '202007', '20200727', '20200802', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-27', '20200727', '2020', '07', '27', '星期一', '31', '20203', '2020-31', '202007', '20200727', '20200802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-28', '20200728', '2020', '07', '28', '星期二', '31', '20203', '2020-31', '202007', '20200727', '20200802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-29', '20200729', '2020', '07', '29', '星期三', '31', '20203', '2020-31', '202007', '20200727', '20200802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-30', '20200730', '2020', '07', '30', '星期四', '31', '20203', '2020-31', '202007', '20200727', '20200802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-07-31', '20200731', '2020', '07', '31', '星期五', '31', '20203', '2020-31', '202007', '20200727', '20200802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-01', '20200801', '2020', '08', '01', '星期六', '31', '20203', '2020-31', '202008', '20200727', '20200802', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-02', '20200802', '2020', '08', '02', '星期日', '31', '20203', '2020-31', '202008', '20200803', '20200809', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-03', '20200803', '2020', '08', '03', '星期一', '32', '20203', '2020-32', '202008', '20200803', '20200809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-04', '20200804', '2020', '08', '04', '星期二', '32', '20203', '2020-32', '202008', '20200803', '20200809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-05', '20200805', '2020', '08', '05', '星期三', '32', '20203', '2020-32', '202008', '20200803', '20200809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-06', '20200806', '2020', '08', '06', '星期四', '32', '20203', '2020-32', '202008', '20200803', '20200809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-07', '20200807', '2020', '08', '07', '星期五', '32', '20203', '2020-32', '202008', '20200803', '20200809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-08', '20200808', '2020', '08', '08', '星期六', '32', '20203', '2020-32', '202008', '20200803', '20200809', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-09', '20200809', '2020', '08', '09', '星期日', '32', '20203', '2020-32', '202008', '20200810', '20200816', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-10', '20200810', '2020', '08', '10', '星期一', '33', '20203', '2020-33', '202008', '20200810', '20200816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-11', '20200811', '2020', '08', '11', '星期二', '33', '20203', '2020-33', '202008', '20200810', '20200816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-12', '20200812', '2020', '08', '12', '星期三', '33', '20203', '2020-33', '202008', '20200810', '20200816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-13', '20200813', '2020', '08', '13', '星期四', '33', '20203', '2020-33', '202008', '20200810', '20200816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-14', '20200814', '2020', '08', '14', '星期五', '33', '20203', '2020-33', '202008', '20200810', '20200816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-15', '20200815', '2020', '08', '15', '星期六', '33', '20203', '2020-33', '202008', '20200810', '20200816', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-16', '20200816', '2020', '08', '16', '星期日', '33', '20203', '2020-33', '202008', '20200817', '20200823', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-17', '20200817', '2020', '08', '17', '星期一', '34', '20203', '2020-34', '202008', '20200817', '20200823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-18', '20200818', '2020', '08', '18', '星期二', '34', '20203', '2020-34', '202008', '20200817', '20200823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-19', '20200819', '2020', '08', '19', '星期三', '34', '20203', '2020-34', '202008', '20200817', '20200823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-20', '20200820', '2020', '08', '20', '星期四', '34', '20203', '2020-34', '202008', '20200817', '20200823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-21', '20200821', '2020', '08', '21', '星期五', '34', '20203', '2020-34', '202008', '20200817', '20200823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-22', '20200822', '2020', '08', '22', '星期六', '34', '20203', '2020-34', '202008', '20200817', '20200823', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-23', '20200823', '2020', '08', '23', '星期日', '34', '20203', '2020-34', '202008', '20200824', '20200830', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-24', '20200824', '2020', '08', '24', '星期一', '35', '20203', '2020-35', '202008', '20200824', '20200830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-25', '20200825', '2020', '08', '25', '星期二', '35', '20203', '2020-35', '202008', '20200824', '20200830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-26', '20200826', '2020', '08', '26', '星期三', '35', '20203', '2020-35', '202008', '20200824', '20200830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-27', '20200827', '2020', '08', '27', '星期四', '35', '20203', '2020-35', '202008', '20200824', '20200830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-28', '20200828', '2020', '08', '28', '星期五', '35', '20203', '2020-35', '202008', '20200824', '20200830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-29', '20200829', '2020', '08', '29', '星期六', '35', '20203', '2020-35', '202008', '20200824', '20200830', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-30', '20200830', '2020', '08', '30', '星期日', '35', '20203', '2020-35', '202008', '20200831', '20200906', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-08-31', '20200831', '2020', '08', '31', '星期一', '36', '20203', '2020-36', '202008', '20200831', '20200906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-01', '20200901', '2020', '09', '01', '星期二', '36', '20203', '2020-36', '202009', '20200831', '20200906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-02', '20200902', '2020', '09', '02', '星期三', '36', '20203', '2020-36', '202009', '20200831', '20200906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-03', '20200903', '2020', '09', '03', '星期四', '36', '20203', '2020-36', '202009', '20200831', '20200906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-04', '20200904', '2020', '09', '04', '星期五', '36', '20203', '2020-36', '202009', '20200831', '20200906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-05', '20200905', '2020', '09', '05', '星期六', '36', '20203', '2020-36', '202009', '20200831', '20200906', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-06', '20200906', '2020', '09', '06', '星期日', '36', '20203', '2020-36', '202009', '20200907', '20200913', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-07', '20200907', '2020', '09', '07', '星期一', '37', '20203', '2020-37', '202009', '20200907', '20200913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-08', '20200908', '2020', '09', '08', '星期二', '37', '20203', '2020-37', '202009', '20200907', '20200913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-09', '20200909', '2020', '09', '09', '星期三', '37', '20203', '2020-37', '202009', '20200907', '20200913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-10', '20200910', '2020', '09', '10', '星期四', '37', '20203', '2020-37', '202009', '20200907', '20200913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-11', '20200911', '2020', '09', '11', '星期五', '37', '20203', '2020-37', '202009', '20200907', '20200913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-12', '20200912', '2020', '09', '12', '星期六', '37', '20203', '2020-37', '202009', '20200907', '20200913', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-13', '20200913', '2020', '09', '13', '星期日', '37', '20203', '2020-37', '202009', '20200914', '20200920', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-14', '20200914', '2020', '09', '14', '星期一', '38', '20203', '2020-38', '202009', '20200914', '20200920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-15', '20200915', '2020', '09', '15', '星期二', '38', '20203', '2020-38', '202009', '20200914', '20200920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-16', '20200916', '2020', '09', '16', '星期三', '38', '20203', '2020-38', '202009', '20200914', '20200920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-17', '20200917', '2020', '09', '17', '星期四', '38', '20203', '2020-38', '202009', '20200914', '20200920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-18', '20200918', '2020', '09', '18', '星期五', '38', '20203', '2020-38', '202009', '20200914', '20200920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-19', '20200919', '2020', '09', '19', '星期六', '38', '20203', '2020-38', '202009', '20200914', '20200920', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-20', '20200920', '2020', '09', '20', '星期日', '38', '20203', '2020-38', '202009', '20200921', '20200927', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-21', '20200921', '2020', '09', '21', '星期一', '39', '20203', '2020-39', '202009', '20200921', '20200927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-22', '20200922', '2020', '09', '22', '星期二', '39', '20203', '2020-39', '202009', '20200921', '20200927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-23', '20200923', '2020', '09', '23', '星期三', '39', '20203', '2020-39', '202009', '20200921', '20200927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-24', '20200924', '2020', '09', '24', '星期四', '39', '20203', '2020-39', '202009', '20200921', '20200927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-25', '20200925', '2020', '09', '25', '星期五', '39', '20203', '2020-39', '202009', '20200921', '20200927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-26', '20200926', '2020', '09', '26', '星期六', '39', '20203', '2020-39', '202009', '20200921', '20200927', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-27', '20200927', '2020', '09', '27', '星期日', '39', '20203', '2020-39', '202009', '20200928', '20201004', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-28', '20200928', '2020', '09', '28', '星期一', '40', '20203', '2020-40', '202009', '20200928', '20201004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-29', '20200929', '2020', '09', '29', '星期二', '40', '20203', '2020-40', '202009', '20200928', '20201004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-09-30', '20200930', '2020', '09', '30', '星期三', '40', '20203', '2020-40', '202009', '20200928', '20201004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-01', '20201001', '2020', '10', '01', '星期四', '40', '20204', '2020-40', '202010', '20200928', '20201004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-02', '20201002', '2020', '10', '02', '星期五', '40', '20204', '2020-40', '202010', '20200928', '20201004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-03', '20201003', '2020', '10', '03', '星期六', '40', '20204', '2020-40', '202010', '20200928', '20201004', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-04', '20201004', '2020', '10', '04', '星期日', '40', '20204', '2020-40', '202010', '20201005', '20201011', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-05', '20201005', '2020', '10', '05', '星期一', '41', '20204', '2020-41', '202010', '20201005', '20201011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-06', '20201006', '2020', '10', '06', '星期二', '41', '20204', '2020-41', '202010', '20201005', '20201011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-07', '20201007', '2020', '10', '07', '星期三', '41', '20204', '2020-41', '202010', '20201005', '20201011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-08', '20201008', '2020', '10', '08', '星期四', '41', '20204', '2020-41', '202010', '20201005', '20201011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-09', '20201009', '2020', '10', '09', '星期五', '41', '20204', '2020-41', '202010', '20201005', '20201011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-10', '20201010', '2020', '10', '10', '星期六', '41', '20204', '2020-41', '202010', '20201005', '20201011', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-11', '20201011', '2020', '10', '11', '星期日', '41', '20204', '2020-41', '202010', '20201012', '20201018', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-12', '20201012', '2020', '10', '12', '星期一', '42', '20204', '2020-42', '202010', '20201012', '20201018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-13', '20201013', '2020', '10', '13', '星期二', '42', '20204', '2020-42', '202010', '20201012', '20201018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-14', '20201014', '2020', '10', '14', '星期三', '42', '20204', '2020-42', '202010', '20201012', '20201018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-15', '20201015', '2020', '10', '15', '星期四', '42', '20204', '2020-42', '202010', '20201012', '20201018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-16', '20201016', '2020', '10', '16', '星期五', '42', '20204', '2020-42', '202010', '20201012', '20201018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-17', '20201017', '2020', '10', '17', '星期六', '42', '20204', '2020-42', '202010', '20201012', '20201018', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-18', '20201018', '2020', '10', '18', '星期日', '42', '20204', '2020-42', '202010', '20201019', '20201025', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-19', '20201019', '2020', '10', '19', '星期一', '43', '20204', '2020-43', '202010', '20201019', '20201025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-20', '20201020', '2020', '10', '20', '星期二', '43', '20204', '2020-43', '202010', '20201019', '20201025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-21', '20201021', '2020', '10', '21', '星期三', '43', '20204', '2020-43', '202010', '20201019', '20201025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-22', '20201022', '2020', '10', '22', '星期四', '43', '20204', '2020-43', '202010', '20201019', '20201025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-23', '20201023', '2020', '10', '23', '星期五', '43', '20204', '2020-43', '202010', '20201019', '20201025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-24', '20201024', '2020', '10', '24', '星期六', '43', '20204', '2020-43', '202010', '20201019', '20201025', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-25', '20201025', '2020', '10', '25', '星期日', '43', '20204', '2020-43', '202010', '20201026', '20201101', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-26', '20201026', '2020', '10', '26', '星期一', '44', '20204', '2020-44', '202010', '20201026', '20201101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-27', '20201027', '2020', '10', '27', '星期二', '44', '20204', '2020-44', '202010', '20201026', '20201101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-28', '20201028', '2020', '10', '28', '星期三', '44', '20204', '2020-44', '202010', '20201026', '20201101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-29', '20201029', '2020', '10', '29', '星期四', '44', '20204', '2020-44', '202010', '20201026', '20201101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-30', '20201030', '2020', '10', '30', '星期五', '44', '20204', '2020-44', '202010', '20201026', '20201101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-10-31', '20201031', '2020', '10', '31', '星期六', '44', '20204', '2020-44', '202010', '20201026', '20201101', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-01', '20201101', '2020', '11', '01', '星期日', '44', '20204', '2020-44', '202011', '20201102', '20201108', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-02', '20201102', '2020', '11', '02', '星期一', '45', '20204', '2020-45', '202011', '20201102', '20201108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-03', '20201103', '2020', '11', '03', '星期二', '45', '20204', '2020-45', '202011', '20201102', '20201108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-04', '20201104', '2020', '11', '04', '星期三', '45', '20204', '2020-45', '202011', '20201102', '20201108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-05', '20201105', '2020', '11', '05', '星期四', '45', '20204', '2020-45', '202011', '20201102', '20201108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-06', '20201106', '2020', '11', '06', '星期五', '45', '20204', '2020-45', '202011', '20201102', '20201108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-07', '20201107', '2020', '11', '07', '星期六', '45', '20204', '2020-45', '202011', '20201102', '20201108', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-08', '20201108', '2020', '11', '08', '星期日', '45', '20204', '2020-45', '202011', '20201109', '20201115', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-09', '20201109', '2020', '11', '09', '星期一', '46', '20204', '2020-46', '202011', '20201109', '20201115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-10', '20201110', '2020', '11', '10', '星期二', '46', '20204', '2020-46', '202011', '20201109', '20201115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-11', '20201111', '2020', '11', '11', '星期三', '46', '20204', '2020-46', '202011', '20201109', '20201115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-12', '20201112', '2020', '11', '12', '星期四', '46', '20204', '2020-46', '202011', '20201109', '20201115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-13', '20201113', '2020', '11', '13', '星期五', '46', '20204', '2020-46', '202011', '20201109', '20201115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-14', '20201114', '2020', '11', '14', '星期六', '46', '20204', '2020-46', '202011', '20201109', '20201115', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-15', '20201115', '2020', '11', '15', '星期日', '46', '20204', '2020-46', '202011', '20201116', '20201122', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-16', '20201116', '2020', '11', '16', '星期一', '47', '20204', '2020-47', '202011', '20201116', '20201122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-17', '20201117', '2020', '11', '17', '星期二', '47', '20204', '2020-47', '202011', '20201116', '20201122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-18', '20201118', '2020', '11', '18', '星期三', '47', '20204', '2020-47', '202011', '20201116', '20201122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-19', '20201119', '2020', '11', '19', '星期四', '47', '20204', '2020-47', '202011', '20201116', '20201122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-20', '20201120', '2020', '11', '20', '星期五', '47', '20204', '2020-47', '202011', '20201116', '20201122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-21', '20201121', '2020', '11', '21', '星期六', '47', '20204', '2020-47', '202011', '20201116', '20201122', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-22', '20201122', '2020', '11', '22', '星期日', '47', '20204', '2020-47', '202011', '20201123', '20201129', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-23', '20201123', '2020', '11', '23', '星期一', '48', '20204', '2020-48', '202011', '20201123', '20201129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-24', '20201124', '2020', '11', '24', '星期二', '48', '20204', '2020-48', '202011', '20201123', '20201129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-25', '20201125', '2020', '11', '25', '星期三', '48', '20204', '2020-48', '202011', '20201123', '20201129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-26', '20201126', '2020', '11', '26', '星期四', '48', '20204', '2020-48', '202011', '20201123', '20201129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-27', '20201127', '2020', '11', '27', '星期五', '48', '20204', '2020-48', '202011', '20201123', '20201129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-28', '20201128', '2020', '11', '28', '星期六', '48', '20204', '2020-48', '202011', '20201123', '20201129', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-29', '20201129', '2020', '11', '29', '星期日', '48', '20204', '2020-48', '202011', '20201130', '20201206', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-11-30', '20201130', '2020', '11', '30', '星期一', '49', '20204', '2020-49', '202011', '20201130', '20201206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-01', '20201201', '2020', '12', '01', '星期二', '49', '20204', '2020-49', '202012', '20201130', '20201206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-02', '20201202', '2020', '12', '02', '星期三', '49', '20204', '2020-49', '202012', '20201130', '20201206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-03', '20201203', '2020', '12', '03', '星期四', '49', '20204', '2020-49', '202012', '20201130', '20201206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-04', '20201204', '2020', '12', '04', '星期五', '49', '20204', '2020-49', '202012', '20201130', '20201206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-05', '20201205', '2020', '12', '05', '星期六', '49', '20204', '2020-49', '202012', '20201130', '20201206', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-06', '20201206', '2020', '12', '06', '星期日', '49', '20204', '2020-49', '202012', '20201207', '20201213', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-07', '20201207', '2020', '12', '07', '星期一', '50', '20204', '2020-50', '202012', '20201207', '20201213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-08', '20201208', '2020', '12', '08', '星期二', '50', '20204', '2020-50', '202012', '20201207', '20201213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-09', '20201209', '2020', '12', '09', '星期三', '50', '20204', '2020-50', '202012', '20201207', '20201213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-10', '20201210', '2020', '12', '10', '星期四', '50', '20204', '2020-50', '202012', '20201207', '20201213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-11', '20201211', '2020', '12', '11', '星期五', '50', '20204', '2020-50', '202012', '20201207', '20201213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-12', '20201212', '2020', '12', '12', '星期六', '50', '20204', '2020-50', '202012', '20201207', '20201213', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-13', '20201213', '2020', '12', '13', '星期日', '50', '20204', '2020-50', '202012', '20201214', '20201220', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-14', '20201214', '2020', '12', '14', '星期一', '51', '20204', '2020-51', '202012', '20201214', '20201220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-15', '20201215', '2020', '12', '15', '星期二', '51', '20204', '2020-51', '202012', '20201214', '20201220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-16', '20201216', '2020', '12', '16', '星期三', '51', '20204', '2020-51', '202012', '20201214', '20201220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-17', '20201217', '2020', '12', '17', '星期四', '51', '20204', '2020-51', '202012', '20201214', '20201220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-18', '20201218', '2020', '12', '18', '星期五', '51', '20204', '2020-51', '202012', '20201214', '20201220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-19', '20201219', '2020', '12', '19', '星期六', '51', '20204', '2020-51', '202012', '20201214', '20201220', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-20', '20201220', '2020', '12', '20', '星期日', '51', '20204', '2020-51', '202012', '20201221', '20201227', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-21', '20201221', '2020', '12', '21', '星期一', '52', '20204', '2020-52', '202012', '20201221', '20201227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-22', '20201222', '2020', '12', '22', '星期二', '52', '20204', '2020-52', '202012', '20201221', '20201227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-23', '20201223', '2020', '12', '23', '星期三', '52', '20204', '2020-52', '202012', '20201221', '20201227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-24', '20201224', '2020', '12', '24', '星期四', '52', '20204', '2020-52', '202012', '20201221', '20201227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-25', '20201225', '2020', '12', '25', '星期五', '52', '20204', '2020-52', '202012', '20201221', '20201227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-26', '20201226', '2020', '12', '26', '星期六', '52', '20204', '2020-52', '202012', '20201221', '20201227', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-27', '20201227', '2020', '12', '27', '星期日', '52', '20204', '2020-52', '202012', '20201228', '20210103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-28', '20201228', '2020', '12', '28', '星期一', '53', '20204', '2020-53', '202012', '20201228', '20210103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-29', '20201229', '2020', '12', '29', '星期二', '53', '20204', '2020-53', '202012', '20201228', '20210103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-30', '20201230', '2020', '12', '30', '星期三', '53', '20204', '2020-53', '202012', '20201228', '20210103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2020-12-31', '20201231', '2020', '12', '31', '星期四', '53', '20204', '2020-53', '202012', '20201228', '20210103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-01', '20210101', '2021', '01', '01', '星期五', '00', '20211', '2021-00', '202101', '20201228', '20210103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-02', '20210102', '2021', '01', '02', '星期六', '00', '20211', '2021-00', '202101', '20201228', '20210103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-03', '20210103', '2021', '01', '03', '星期日', '00', '20211', '2021-00', '202101', '20210104', '20210110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-04', '20210104', '2021', '01', '04', '星期一', '01', '20211', '2021-01', '202101', '20210104', '20210110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-05', '20210105', '2021', '01', '05', '星期二', '01', '20211', '2021-01', '202101', '20210104', '20210110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-06', '20210106', '2021', '01', '06', '星期三', '01', '20211', '2021-01', '202101', '20210104', '20210110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-07', '20210107', '2021', '01', '07', '星期四', '01', '20211', '2021-01', '202101', '20210104', '20210110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-08', '20210108', '2021', '01', '08', '星期五', '01', '20211', '2021-01', '202101', '20210104', '20210110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-09', '20210109', '2021', '01', '09', '星期六', '01', '20211', '2021-01', '202101', '20210104', '20210110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-10', '20210110', '2021', '01', '10', '星期日', '01', '20211', '2021-01', '202101', '20210111', '20210117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-11', '20210111', '2021', '01', '11', '星期一', '02', '20211', '2021-02', '202101', '20210111', '20210117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-12', '20210112', '2021', '01', '12', '星期二', '02', '20211', '2021-02', '202101', '20210111', '20210117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-13', '20210113', '2021', '01', '13', '星期三', '02', '20211', '2021-02', '202101', '20210111', '20210117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-14', '20210114', '2021', '01', '14', '星期四', '02', '20211', '2021-02', '202101', '20210111', '20210117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-15', '20210115', '2021', '01', '15', '星期五', '02', '20211', '2021-02', '202101', '20210111', '20210117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-16', '20210116', '2021', '01', '16', '星期六', '02', '20211', '2021-02', '202101', '20210111', '20210117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-17', '20210117', '2021', '01', '17', '星期日', '02', '20211', '2021-02', '202101', '20210118', '20210124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-18', '20210118', '2021', '01', '18', '星期一', '03', '20211', '2021-03', '202101', '20210118', '20210124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-19', '20210119', '2021', '01', '19', '星期二', '03', '20211', '2021-03', '202101', '20210118', '20210124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-20', '20210120', '2021', '01', '20', '星期三', '03', '20211', '2021-03', '202101', '20210118', '20210124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-21', '20210121', '2021', '01', '21', '星期四', '03', '20211', '2021-03', '202101', '20210118', '20210124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-22', '20210122', '2021', '01', '22', '星期五', '03', '20211', '2021-03', '202101', '20210118', '20210124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-23', '20210123', '2021', '01', '23', '星期六', '03', '20211', '2021-03', '202101', '20210118', '20210124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-24', '20210124', '2021', '01', '24', '星期日', '03', '20211', '2021-03', '202101', '20210125', '20210131', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-25', '20210125', '2021', '01', '25', '星期一', '04', '20211', '2021-04', '202101', '20210125', '20210131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-26', '20210126', '2021', '01', '26', '星期二', '04', '20211', '2021-04', '202101', '20210125', '20210131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-27', '20210127', '2021', '01', '27', '星期三', '04', '20211', '2021-04', '202101', '20210125', '20210131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-28', '20210128', '2021', '01', '28', '星期四', '04', '20211', '2021-04', '202101', '20210125', '20210131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-29', '20210129', '2021', '01', '29', '星期五', '04', '20211', '2021-04', '202101', '20210125', '20210131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-30', '20210130', '2021', '01', '30', '星期六', '04', '20211', '2021-04', '202101', '20210125', '20210131', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-01-31', '20210131', '2021', '01', '31', '星期日', '04', '20211', '2021-04', '202101', '20210201', '20210207', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-01', '20210201', '2021', '02', '01', '星期一', '05', '20211', '2021-05', '202102', '20210201', '20210207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-02', '20210202', '2021', '02', '02', '星期二', '05', '20211', '2021-05', '202102', '20210201', '20210207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-03', '20210203', '2021', '02', '03', '星期三', '05', '20211', '2021-05', '202102', '20210201', '20210207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-04', '20210204', '2021', '02', '04', '星期四', '05', '20211', '2021-05', '202102', '20210201', '20210207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-05', '20210205', '2021', '02', '05', '星期五', '05', '20211', '2021-05', '202102', '20210201', '20210207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-06', '20210206', '2021', '02', '06', '星期六', '05', '20211', '2021-05', '202102', '20210201', '20210207', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-07', '20210207', '2021', '02', '07', '星期日', '05', '20211', '2021-05', '202102', '20210208', '20210214', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-08', '20210208', '2021', '02', '08', '星期一', '06', '20211', '2021-06', '202102', '20210208', '20210214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-09', '20210209', '2021', '02', '09', '星期二', '06', '20211', '2021-06', '202102', '20210208', '20210214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-10', '20210210', '2021', '02', '10', '星期三', '06', '20211', '2021-06', '202102', '20210208', '20210214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-11', '20210211', '2021', '02', '11', '星期四', '06', '20211', '2021-06', '202102', '20210208', '20210214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-12', '20210212', '2021', '02', '12', '星期五', '06', '20211', '2021-06', '202102', '20210208', '20210214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-13', '20210213', '2021', '02', '13', '星期六', '06', '20211', '2021-06', '202102', '20210208', '20210214', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-14', '20210214', '2021', '02', '14', '星期日', '06', '20211', '2021-06', '202102', '20210215', '20210221', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-15', '20210215', '2021', '02', '15', '星期一', '07', '20211', '2021-07', '202102', '20210215', '20210221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-16', '20210216', '2021', '02', '16', '星期二', '07', '20211', '2021-07', '202102', '20210215', '20210221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-17', '20210217', '2021', '02', '17', '星期三', '07', '20211', '2021-07', '202102', '20210215', '20210221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-18', '20210218', '2021', '02', '18', '星期四', '07', '20211', '2021-07', '202102', '20210215', '20210221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-19', '20210219', '2021', '02', '19', '星期五', '07', '20211', '2021-07', '202102', '20210215', '20210221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-20', '20210220', '2021', '02', '20', '星期六', '07', '20211', '2021-07', '202102', '20210215', '20210221', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-21', '20210221', '2021', '02', '21', '星期日', '07', '20211', '2021-07', '202102', '20210222', '20210228', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-22', '20210222', '2021', '02', '22', '星期一', '08', '20211', '2021-08', '202102', '20210222', '20210228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-23', '20210223', '2021', '02', '23', '星期二', '08', '20211', '2021-08', '202102', '20210222', '20210228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-24', '20210224', '2021', '02', '24', '星期三', '08', '20211', '2021-08', '202102', '20210222', '20210228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-25', '20210225', '2021', '02', '25', '星期四', '08', '20211', '2021-08', '202102', '20210222', '20210228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-26', '20210226', '2021', '02', '26', '星期五', '08', '20211', '2021-08', '202102', '20210222', '20210228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-27', '20210227', '2021', '02', '27', '星期六', '08', '20211', '2021-08', '202102', '20210222', '20210228', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-02-28', '20210228', '2021', '02', '28', '星期日', '08', '20211', '2021-08', '202102', '20210301', '20210307', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-01', '20210301', '2021', '03', '01', '星期一', '09', '20211', '2021-09', '202103', '20210301', '20210307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-02', '20210302', '2021', '03', '02', '星期二', '09', '20211', '2021-09', '202103', '20210301', '20210307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-03', '20210303', '2021', '03', '03', '星期三', '09', '20211', '2021-09', '202103', '20210301', '20210307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-04', '20210304', '2021', '03', '04', '星期四', '09', '20211', '2021-09', '202103', '20210301', '20210307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-05', '20210305', '2021', '03', '05', '星期五', '09', '20211', '2021-09', '202103', '20210301', '20210307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-06', '20210306', '2021', '03', '06', '星期六', '09', '20211', '2021-09', '202103', '20210301', '20210307', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-07', '20210307', '2021', '03', '07', '星期日', '09', '20211', '2021-09', '202103', '20210308', '20210314', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-08', '20210308', '2021', '03', '08', '星期一', '10', '20211', '2021-10', '202103', '20210308', '20210314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-09', '20210309', '2021', '03', '09', '星期二', '10', '20211', '2021-10', '202103', '20210308', '20210314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-10', '20210310', '2021', '03', '10', '星期三', '10', '20211', '2021-10', '202103', '20210308', '20210314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-11', '20210311', '2021', '03', '11', '星期四', '10', '20211', '2021-10', '202103', '20210308', '20210314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-12', '20210312', '2021', '03', '12', '星期五', '10', '20211', '2021-10', '202103', '20210308', '20210314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-13', '20210313', '2021', '03', '13', '星期六', '10', '20211', '2021-10', '202103', '20210308', '20210314', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-14', '20210314', '2021', '03', '14', '星期日', '10', '20211', '2021-10', '202103', '20210315', '20210321', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-15', '20210315', '2021', '03', '15', '星期一', '11', '20211', '2021-11', '202103', '20210315', '20210321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-16', '20210316', '2021', '03', '16', '星期二', '11', '20211', '2021-11', '202103', '20210315', '20210321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-17', '20210317', '2021', '03', '17', '星期三', '11', '20211', '2021-11', '202103', '20210315', '20210321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-18', '20210318', '2021', '03', '18', '星期四', '11', '20211', '2021-11', '202103', '20210315', '20210321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-19', '20210319', '2021', '03', '19', '星期五', '11', '20211', '2021-11', '202103', '20210315', '20210321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-20', '20210320', '2021', '03', '20', '星期六', '11', '20211', '2021-11', '202103', '20210315', '20210321', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-21', '20210321', '2021', '03', '21', '星期日', '11', '20211', '2021-11', '202103', '20210322', '20210328', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-22', '20210322', '2021', '03', '22', '星期一', '12', '20211', '2021-12', '202103', '20210322', '20210328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-23', '20210323', '2021', '03', '23', '星期二', '12', '20211', '2021-12', '202103', '20210322', '20210328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-24', '20210324', '2021', '03', '24', '星期三', '12', '20211', '2021-12', '202103', '20210322', '20210328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-25', '20210325', '2021', '03', '25', '星期四', '12', '20211', '2021-12', '202103', '20210322', '20210328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-26', '20210326', '2021', '03', '26', '星期五', '12', '20211', '2021-12', '202103', '20210322', '20210328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-27', '20210327', '2021', '03', '27', '星期六', '12', '20211', '2021-12', '202103', '20210322', '20210328', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-28', '20210328', '2021', '03', '28', '星期日', '12', '20211', '2021-12', '202103', '20210329', '20210404', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-29', '20210329', '2021', '03', '29', '星期一', '13', '20211', '2021-13', '202103', '20210329', '20210404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-30', '20210330', '2021', '03', '30', '星期二', '13', '20211', '2021-13', '202103', '20210329', '20210404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-03-31', '20210331', '2021', '03', '31', '星期三', '13', '20211', '2021-13', '202103', '20210329', '20210404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-01', '20210401', '2021', '04', '01', '星期四', '13', '20212', '2021-13', '202104', '20210329', '20210404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-02', '20210402', '2021', '04', '02', '星期五', '13', '20212', '2021-13', '202104', '20210329', '20210404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-03', '20210403', '2021', '04', '03', '星期六', '13', '20212', '2021-13', '202104', '20210329', '20210404', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-04', '20210404', '2021', '04', '04', '星期日', '13', '20212', '2021-13', '202104', '20210405', '20210411', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-05', '20210405', '2021', '04', '05', '星期一', '14', '20212', '2021-14', '202104', '20210405', '20210411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-06', '20210406', '2021', '04', '06', '星期二', '14', '20212', '2021-14', '202104', '20210405', '20210411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-07', '20210407', '2021', '04', '07', '星期三', '14', '20212', '2021-14', '202104', '20210405', '20210411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-08', '20210408', '2021', '04', '08', '星期四', '14', '20212', '2021-14', '202104', '20210405', '20210411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-09', '20210409', '2021', '04', '09', '星期五', '14', '20212', '2021-14', '202104', '20210405', '20210411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-10', '20210410', '2021', '04', '10', '星期六', '14', '20212', '2021-14', '202104', '20210405', '20210411', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-11', '20210411', '2021', '04', '11', '星期日', '14', '20212', '2021-14', '202104', '20210412', '20210418', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-12', '20210412', '2021', '04', '12', '星期一', '15', '20212', '2021-15', '202104', '20210412', '20210418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-13', '20210413', '2021', '04', '13', '星期二', '15', '20212', '2021-15', '202104', '20210412', '20210418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-14', '20210414', '2021', '04', '14', '星期三', '15', '20212', '2021-15', '202104', '20210412', '20210418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-15', '20210415', '2021', '04', '15', '星期四', '15', '20212', '2021-15', '202104', '20210412', '20210418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-16', '20210416', '2021', '04', '16', '星期五', '15', '20212', '2021-15', '202104', '20210412', '20210418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-17', '20210417', '2021', '04', '17', '星期六', '15', '20212', '2021-15', '202104', '20210412', '20210418', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-18', '20210418', '2021', '04', '18', '星期日', '15', '20212', '2021-15', '202104', '20210419', '20210425', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-19', '20210419', '2021', '04', '19', '星期一', '16', '20212', '2021-16', '202104', '20210419', '20210425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-20', '20210420', '2021', '04', '20', '星期二', '16', '20212', '2021-16', '202104', '20210419', '20210425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-21', '20210421', '2021', '04', '21', '星期三', '16', '20212', '2021-16', '202104', '20210419', '20210425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-22', '20210422', '2021', '04', '22', '星期四', '16', '20212', '2021-16', '202104', '20210419', '20210425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-23', '20210423', '2021', '04', '23', '星期五', '16', '20212', '2021-16', '202104', '20210419', '20210425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-24', '20210424', '2021', '04', '24', '星期六', '16', '20212', '2021-16', '202104', '20210419', '20210425', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-25', '20210425', '2021', '04', '25', '星期日', '16', '20212', '2021-16', '202104', '20210426', '20210502', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-26', '20210426', '2021', '04', '26', '星期一', '17', '20212', '2021-17', '202104', '20210426', '20210502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-27', '20210427', '2021', '04', '27', '星期二', '17', '20212', '2021-17', '202104', '20210426', '20210502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-28', '20210428', '2021', '04', '28', '星期三', '17', '20212', '2021-17', '202104', '20210426', '20210502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-29', '20210429', '2021', '04', '29', '星期四', '17', '20212', '2021-17', '202104', '20210426', '20210502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-04-30', '20210430', '2021', '04', '30', '星期五', '17', '20212', '2021-17', '202104', '20210426', '20210502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-01', '20210501', '2021', '05', '01', '星期六', '17', '20212', '2021-17', '202105', '20210426', '20210502', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-02', '20210502', '2021', '05', '02', '星期日', '17', '20212', '2021-17', '202105', '20210503', '20210509', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-03', '20210503', '2021', '05', '03', '星期一', '18', '20212', '2021-18', '202105', '20210503', '20210509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-04', '20210504', '2021', '05', '04', '星期二', '18', '20212', '2021-18', '202105', '20210503', '20210509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-05', '20210505', '2021', '05', '05', '星期三', '18', '20212', '2021-18', '202105', '20210503', '20210509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-06', '20210506', '2021', '05', '06', '星期四', '18', '20212', '2021-18', '202105', '20210503', '20210509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-07', '20210507', '2021', '05', '07', '星期五', '18', '20212', '2021-18', '202105', '20210503', '20210509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-08', '20210508', '2021', '05', '08', '星期六', '18', '20212', '2021-18', '202105', '20210503', '20210509', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-09', '20210509', '2021', '05', '09', '星期日', '18', '20212', '2021-18', '202105', '20210510', '20210516', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-10', '20210510', '2021', '05', '10', '星期一', '19', '20212', '2021-19', '202105', '20210510', '20210516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-11', '20210511', '2021', '05', '11', '星期二', '19', '20212', '2021-19', '202105', '20210510', '20210516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-12', '20210512', '2021', '05', '12', '星期三', '19', '20212', '2021-19', '202105', '20210510', '20210516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-13', '20210513', '2021', '05', '13', '星期四', '19', '20212', '2021-19', '202105', '20210510', '20210516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-14', '20210514', '2021', '05', '14', '星期五', '19', '20212', '2021-19', '202105', '20210510', '20210516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-15', '20210515', '2021', '05', '15', '星期六', '19', '20212', '2021-19', '202105', '20210510', '20210516', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-16', '20210516', '2021', '05', '16', '星期日', '19', '20212', '2021-19', '202105', '20210517', '20210523', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-17', '20210517', '2021', '05', '17', '星期一', '20', '20212', '2021-20', '202105', '20210517', '20210523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-18', '20210518', '2021', '05', '18', '星期二', '20', '20212', '2021-20', '202105', '20210517', '20210523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-19', '20210519', '2021', '05', '19', '星期三', '20', '20212', '2021-20', '202105', '20210517', '20210523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-20', '20210520', '2021', '05', '20', '星期四', '20', '20212', '2021-20', '202105', '20210517', '20210523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-21', '20210521', '2021', '05', '21', '星期五', '20', '20212', '2021-20', '202105', '20210517', '20210523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-22', '20210522', '2021', '05', '22', '星期六', '20', '20212', '2021-20', '202105', '20210517', '20210523', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-23', '20210523', '2021', '05', '23', '星期日', '20', '20212', '2021-20', '202105', '20210524', '20210530', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-24', '20210524', '2021', '05', '24', '星期一', '21', '20212', '2021-21', '202105', '20210524', '20210530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-25', '20210525', '2021', '05', '25', '星期二', '21', '20212', '2021-21', '202105', '20210524', '20210530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-26', '20210526', '2021', '05', '26', '星期三', '21', '20212', '2021-21', '202105', '20210524', '20210530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-27', '20210527', '2021', '05', '27', '星期四', '21', '20212', '2021-21', '202105', '20210524', '20210530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-28', '20210528', '2021', '05', '28', '星期五', '21', '20212', '2021-21', '202105', '20210524', '20210530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-29', '20210529', '2021', '05', '29', '星期六', '21', '20212', '2021-21', '202105', '20210524', '20210530', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-30', '20210530', '2021', '05', '30', '星期日', '21', '20212', '2021-21', '202105', '20210531', '20210606', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-05-31', '20210531', '2021', '05', '31', '星期一', '22', '20212', '2021-22', '202105', '20210531', '20210606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-01', '20210601', '2021', '06', '01', '星期二', '22', '20212', '2021-22', '202106', '20210531', '20210606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-02', '20210602', '2021', '06', '02', '星期三', '22', '20212', '2021-22', '202106', '20210531', '20210606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-03', '20210603', '2021', '06', '03', '星期四', '22', '20212', '2021-22', '202106', '20210531', '20210606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-04', '20210604', '2021', '06', '04', '星期五', '22', '20212', '2021-22', '202106', '20210531', '20210606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-05', '20210605', '2021', '06', '05', '星期六', '22', '20212', '2021-22', '202106', '20210531', '20210606', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-06', '20210606', '2021', '06', '06', '星期日', '22', '20212', '2021-22', '202106', '20210607', '20210613', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-07', '20210607', '2021', '06', '07', '星期一', '23', '20212', '2021-23', '202106', '20210607', '20210613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-08', '20210608', '2021', '06', '08', '星期二', '23', '20212', '2021-23', '202106', '20210607', '20210613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-09', '20210609', '2021', '06', '09', '星期三', '23', '20212', '2021-23', '202106', '20210607', '20210613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-10', '20210610', '2021', '06', '10', '星期四', '23', '20212', '2021-23', '202106', '20210607', '20210613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-11', '20210611', '2021', '06', '11', '星期五', '23', '20212', '2021-23', '202106', '20210607', '20210613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-12', '20210612', '2021', '06', '12', '星期六', '23', '20212', '2021-23', '202106', '20210607', '20210613', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-13', '20210613', '2021', '06', '13', '星期日', '23', '20212', '2021-23', '202106', '20210614', '20210620', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-14', '20210614', '2021', '06', '14', '星期一', '24', '20212', '2021-24', '202106', '20210614', '20210620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-15', '20210615', '2021', '06', '15', '星期二', '24', '20212', '2021-24', '202106', '20210614', '20210620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-16', '20210616', '2021', '06', '16', '星期三', '24', '20212', '2021-24', '202106', '20210614', '20210620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-17', '20210617', '2021', '06', '17', '星期四', '24', '20212', '2021-24', '202106', '20210614', '20210620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-18', '20210618', '2021', '06', '18', '星期五', '24', '20212', '2021-24', '202106', '20210614', '20210620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-19', '20210619', '2021', '06', '19', '星期六', '24', '20212', '2021-24', '202106', '20210614', '20210620', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-20', '20210620', '2021', '06', '20', '星期日', '24', '20212', '2021-24', '202106', '20210621', '20210627', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-21', '20210621', '2021', '06', '21', '星期一', '25', '20212', '2021-25', '202106', '20210621', '20210627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-22', '20210622', '2021', '06', '22', '星期二', '25', '20212', '2021-25', '202106', '20210621', '20210627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-23', '20210623', '2021', '06', '23', '星期三', '25', '20212', '2021-25', '202106', '20210621', '20210627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-24', '20210624', '2021', '06', '24', '星期四', '25', '20212', '2021-25', '202106', '20210621', '20210627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-25', '20210625', '2021', '06', '25', '星期五', '25', '20212', '2021-25', '202106', '20210621', '20210627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-26', '20210626', '2021', '06', '26', '星期六', '25', '20212', '2021-25', '202106', '20210621', '20210627', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-27', '20210627', '2021', '06', '27', '星期日', '25', '20212', '2021-25', '202106', '20210628', '20210704', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-28', '20210628', '2021', '06', '28', '星期一', '26', '20212', '2021-26', '202106', '20210628', '20210704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-29', '20210629', '2021', '06', '29', '星期二', '26', '20212', '2021-26', '202106', '20210628', '20210704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-06-30', '20210630', '2021', '06', '30', '星期三', '26', '20212', '2021-26', '202106', '20210628', '20210704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-01', '20210701', '2021', '07', '01', '星期四', '26', '20213', '2021-26', '202107', '20210628', '20210704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-02', '20210702', '2021', '07', '02', '星期五', '26', '20213', '2021-26', '202107', '20210628', '20210704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-03', '20210703', '2021', '07', '03', '星期六', '26', '20213', '2021-26', '202107', '20210628', '20210704', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-04', '20210704', '2021', '07', '04', '星期日', '26', '20213', '2021-26', '202107', '20210705', '20210711', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-05', '20210705', '2021', '07', '05', '星期一', '27', '20213', '2021-27', '202107', '20210705', '20210711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-06', '20210706', '2021', '07', '06', '星期二', '27', '20213', '2021-27', '202107', '20210705', '20210711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-07', '20210707', '2021', '07', '07', '星期三', '27', '20213', '2021-27', '202107', '20210705', '20210711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-08', '20210708', '2021', '07', '08', '星期四', '27', '20213', '2021-27', '202107', '20210705', '20210711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-09', '20210709', '2021', '07', '09', '星期五', '27', '20213', '2021-27', '202107', '20210705', '20210711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-10', '20210710', '2021', '07', '10', '星期六', '27', '20213', '2021-27', '202107', '20210705', '20210711', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-11', '20210711', '2021', '07', '11', '星期日', '27', '20213', '2021-27', '202107', '20210712', '20210718', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-12', '20210712', '2021', '07', '12', '星期一', '28', '20213', '2021-28', '202107', '20210712', '20210718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-13', '20210713', '2021', '07', '13', '星期二', '28', '20213', '2021-28', '202107', '20210712', '20210718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-14', '20210714', '2021', '07', '14', '星期三', '28', '20213', '2021-28', '202107', '20210712', '20210718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-15', '20210715', '2021', '07', '15', '星期四', '28', '20213', '2021-28', '202107', '20210712', '20210718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-16', '20210716', '2021', '07', '16', '星期五', '28', '20213', '2021-28', '202107', '20210712', '20210718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-17', '20210717', '2021', '07', '17', '星期六', '28', '20213', '2021-28', '202107', '20210712', '20210718', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-18', '20210718', '2021', '07', '18', '星期日', '28', '20213', '2021-28', '202107', '20210719', '20210725', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-19', '20210719', '2021', '07', '19', '星期一', '29', '20213', '2021-29', '202107', '20210719', '20210725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-20', '20210720', '2021', '07', '20', '星期二', '29', '20213', '2021-29', '202107', '20210719', '20210725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-21', '20210721', '2021', '07', '21', '星期三', '29', '20213', '2021-29', '202107', '20210719', '20210725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-22', '20210722', '2021', '07', '22', '星期四', '29', '20213', '2021-29', '202107', '20210719', '20210725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-23', '20210723', '2021', '07', '23', '星期五', '29', '20213', '2021-29', '202107', '20210719', '20210725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-24', '20210724', '2021', '07', '24', '星期六', '29', '20213', '2021-29', '202107', '20210719', '20210725', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-25', '20210725', '2021', '07', '25', '星期日', '29', '20213', '2021-29', '202107', '20210726', '20210801', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-26', '20210726', '2021', '07', '26', '星期一', '30', '20213', '2021-30', '202107', '20210726', '20210801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-27', '20210727', '2021', '07', '27', '星期二', '30', '20213', '2021-30', '202107', '20210726', '20210801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-28', '20210728', '2021', '07', '28', '星期三', '30', '20213', '2021-30', '202107', '20210726', '20210801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-29', '20210729', '2021', '07', '29', '星期四', '30', '20213', '2021-30', '202107', '20210726', '20210801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-30', '20210730', '2021', '07', '30', '星期五', '30', '20213', '2021-30', '202107', '20210726', '20210801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-07-31', '20210731', '2021', '07', '31', '星期六', '30', '20213', '2021-30', '202107', '20210726', '20210801', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-01', '20210801', '2021', '08', '01', '星期日', '30', '20213', '2021-30', '202108', '20210802', '20210808', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-02', '20210802', '2021', '08', '02', '星期一', '31', '20213', '2021-31', '202108', '20210802', '20210808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-03', '20210803', '2021', '08', '03', '星期二', '31', '20213', '2021-31', '202108', '20210802', '20210808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-04', '20210804', '2021', '08', '04', '星期三', '31', '20213', '2021-31', '202108', '20210802', '20210808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-05', '20210805', '2021', '08', '05', '星期四', '31', '20213', '2021-31', '202108', '20210802', '20210808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-06', '20210806', '2021', '08', '06', '星期五', '31', '20213', '2021-31', '202108', '20210802', '20210808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-07', '20210807', '2021', '08', '07', '星期六', '31', '20213', '2021-31', '202108', '20210802', '20210808', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-08', '20210808', '2021', '08', '08', '星期日', '31', '20213', '2021-31', '202108', '20210809', '20210815', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-09', '20210809', '2021', '08', '09', '星期一', '32', '20213', '2021-32', '202108', '20210809', '20210815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-10', '20210810', '2021', '08', '10', '星期二', '32', '20213', '2021-32', '202108', '20210809', '20210815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-11', '20210811', '2021', '08', '11', '星期三', '32', '20213', '2021-32', '202108', '20210809', '20210815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-12', '20210812', '2021', '08', '12', '星期四', '32', '20213', '2021-32', '202108', '20210809', '20210815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-13', '20210813', '2021', '08', '13', '星期五', '32', '20213', '2021-32', '202108', '20210809', '20210815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-14', '20210814', '2021', '08', '14', '星期六', '32', '20213', '2021-32', '202108', '20210809', '20210815', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-15', '20210815', '2021', '08', '15', '星期日', '32', '20213', '2021-32', '202108', '20210816', '20210822', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-16', '20210816', '2021', '08', '16', '星期一', '33', '20213', '2021-33', '202108', '20210816', '20210822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-17', '20210817', '2021', '08', '17', '星期二', '33', '20213', '2021-33', '202108', '20210816', '20210822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-18', '20210818', '2021', '08', '18', '星期三', '33', '20213', '2021-33', '202108', '20210816', '20210822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-19', '20210819', '2021', '08', '19', '星期四', '33', '20213', '2021-33', '202108', '20210816', '20210822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-20', '20210820', '2021', '08', '20', '星期五', '33', '20213', '2021-33', '202108', '20210816', '20210822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-21', '20210821', '2021', '08', '21', '星期六', '33', '20213', '2021-33', '202108', '20210816', '20210822', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-22', '20210822', '2021', '08', '22', '星期日', '33', '20213', '2021-33', '202108', '20210823', '20210829', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-23', '20210823', '2021', '08', '23', '星期一', '34', '20213', '2021-34', '202108', '20210823', '20210829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-24', '20210824', '2021', '08', '24', '星期二', '34', '20213', '2021-34', '202108', '20210823', '20210829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-25', '20210825', '2021', '08', '25', '星期三', '34', '20213', '2021-34', '202108', '20210823', '20210829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-26', '20210826', '2021', '08', '26', '星期四', '34', '20213', '2021-34', '202108', '20210823', '20210829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-27', '20210827', '2021', '08', '27', '星期五', '34', '20213', '2021-34', '202108', '20210823', '20210829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-28', '20210828', '2021', '08', '28', '星期六', '34', '20213', '2021-34', '202108', '20210823', '20210829', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-29', '20210829', '2021', '08', '29', '星期日', '34', '20213', '2021-34', '202108', '20210830', '20210905', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-30', '20210830', '2021', '08', '30', '星期一', '35', '20213', '2021-35', '202108', '20210830', '20210905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-08-31', '20210831', '2021', '08', '31', '星期二', '35', '20213', '2021-35', '202108', '20210830', '20210905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-01', '20210901', '2021', '09', '01', '星期三', '35', '20213', '2021-35', '202109', '20210830', '20210905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-02', '20210902', '2021', '09', '02', '星期四', '35', '20213', '2021-35', '202109', '20210830', '20210905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-03', '20210903', '2021', '09', '03', '星期五', '35', '20213', '2021-35', '202109', '20210830', '20210905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-04', '20210904', '2021', '09', '04', '星期六', '35', '20213', '2021-35', '202109', '20210830', '20210905', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-05', '20210905', '2021', '09', '05', '星期日', '35', '20213', '2021-35', '202109', '20210906', '20210912', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-06', '20210906', '2021', '09', '06', '星期一', '36', '20213', '2021-36', '202109', '20210906', '20210912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-07', '20210907', '2021', '09', '07', '星期二', '36', '20213', '2021-36', '202109', '20210906', '20210912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-08', '20210908', '2021', '09', '08', '星期三', '36', '20213', '2021-36', '202109', '20210906', '20210912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-09', '20210909', '2021', '09', '09', '星期四', '36', '20213', '2021-36', '202109', '20210906', '20210912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-10', '20210910', '2021', '09', '10', '星期五', '36', '20213', '2021-36', '202109', '20210906', '20210912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-11', '20210911', '2021', '09', '11', '星期六', '36', '20213', '2021-36', '202109', '20210906', '20210912', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-12', '20210912', '2021', '09', '12', '星期日', '36', '20213', '2021-36', '202109', '20210913', '20210919', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-13', '20210913', '2021', '09', '13', '星期一', '37', '20213', '2021-37', '202109', '20210913', '20210919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-14', '20210914', '2021', '09', '14', '星期二', '37', '20213', '2021-37', '202109', '20210913', '20210919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-15', '20210915', '2021', '09', '15', '星期三', '37', '20213', '2021-37', '202109', '20210913', '20210919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-16', '20210916', '2021', '09', '16', '星期四', '37', '20213', '2021-37', '202109', '20210913', '20210919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-17', '20210917', '2021', '09', '17', '星期五', '37', '20213', '2021-37', '202109', '20210913', '20210919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-18', '20210918', '2021', '09', '18', '星期六', '37', '20213', '2021-37', '202109', '20210913', '20210919', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-19', '20210919', '2021', '09', '19', '星期日', '37', '20213', '2021-37', '202109', '20210920', '20210926', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-20', '20210920', '2021', '09', '20', '星期一', '38', '20213', '2021-38', '202109', '20210920', '20210926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-21', '20210921', '2021', '09', '21', '星期二', '38', '20213', '2021-38', '202109', '20210920', '20210926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-22', '20210922', '2021', '09', '22', '星期三', '38', '20213', '2021-38', '202109', '20210920', '20210926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-23', '20210923', '2021', '09', '23', '星期四', '38', '20213', '2021-38', '202109', '20210920', '20210926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-24', '20210924', '2021', '09', '24', '星期五', '38', '20213', '2021-38', '202109', '20210920', '20210926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-25', '20210925', '2021', '09', '25', '星期六', '38', '20213', '2021-38', '202109', '20210920', '20210926', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-26', '20210926', '2021', '09', '26', '星期日', '38', '20213', '2021-38', '202109', '20210927', '20211003', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-27', '20210927', '2021', '09', '27', '星期一', '39', '20213', '2021-39', '202109', '20210927', '20211003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-28', '20210928', '2021', '09', '28', '星期二', '39', '20213', '2021-39', '202109', '20210927', '20211003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-29', '20210929', '2021', '09', '29', '星期三', '39', '20213', '2021-39', '202109', '20210927', '20211003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-09-30', '20210930', '2021', '09', '30', '星期四', '39', '20213', '2021-39', '202109', '20210927', '20211003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-01', '20211001', '2021', '10', '01', '星期五', '39', '20214', '2021-39', '202110', '20210927', '20211003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-02', '20211002', '2021', '10', '02', '星期六', '39', '20214', '2021-39', '202110', '20210927', '20211003', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-03', '20211003', '2021', '10', '03', '星期日', '39', '20214', '2021-39', '202110', '20211004', '20211010', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-04', '20211004', '2021', '10', '04', '星期一', '40', '20214', '2021-40', '202110', '20211004', '20211010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-05', '20211005', '2021', '10', '05', '星期二', '40', '20214', '2021-40', '202110', '20211004', '20211010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-06', '20211006', '2021', '10', '06', '星期三', '40', '20214', '2021-40', '202110', '20211004', '20211010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-07', '20211007', '2021', '10', '07', '星期四', '40', '20214', '2021-40', '202110', '20211004', '20211010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-08', '20211008', '2021', '10', '08', '星期五', '40', '20214', '2021-40', '202110', '20211004', '20211010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-09', '20211009', '2021', '10', '09', '星期六', '40', '20214', '2021-40', '202110', '20211004', '20211010', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-10', '20211010', '2021', '10', '10', '星期日', '40', '20214', '2021-40', '202110', '20211011', '20211017', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-11', '20211011', '2021', '10', '11', '星期一', '41', '20214', '2021-41', '202110', '20211011', '20211017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-12', '20211012', '2021', '10', '12', '星期二', '41', '20214', '2021-41', '202110', '20211011', '20211017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-13', '20211013', '2021', '10', '13', '星期三', '41', '20214', '2021-41', '202110', '20211011', '20211017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-14', '20211014', '2021', '10', '14', '星期四', '41', '20214', '2021-41', '202110', '20211011', '20211017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-15', '20211015', '2021', '10', '15', '星期五', '41', '20214', '2021-41', '202110', '20211011', '20211017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-16', '20211016', '2021', '10', '16', '星期六', '41', '20214', '2021-41', '202110', '20211011', '20211017', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-17', '20211017', '2021', '10', '17', '星期日', '41', '20214', '2021-41', '202110', '20211018', '20211024', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-18', '20211018', '2021', '10', '18', '星期一', '42', '20214', '2021-42', '202110', '20211018', '20211024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-19', '20211019', '2021', '10', '19', '星期二', '42', '20214', '2021-42', '202110', '20211018', '20211024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-20', '20211020', '2021', '10', '20', '星期三', '42', '20214', '2021-42', '202110', '20211018', '20211024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-21', '20211021', '2021', '10', '21', '星期四', '42', '20214', '2021-42', '202110', '20211018', '20211024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-22', '20211022', '2021', '10', '22', '星期五', '42', '20214', '2021-42', '202110', '20211018', '20211024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-23', '20211023', '2021', '10', '23', '星期六', '42', '20214', '2021-42', '202110', '20211018', '20211024', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-24', '20211024', '2021', '10', '24', '星期日', '42', '20214', '2021-42', '202110', '20211025', '20211031', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-25', '20211025', '2021', '10', '25', '星期一', '43', '20214', '2021-43', '202110', '20211025', '20211031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-26', '20211026', '2021', '10', '26', '星期二', '43', '20214', '2021-43', '202110', '20211025', '20211031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-27', '20211027', '2021', '10', '27', '星期三', '43', '20214', '2021-43', '202110', '20211025', '20211031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-28', '20211028', '2021', '10', '28', '星期四', '43', '20214', '2021-43', '202110', '20211025', '20211031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-29', '20211029', '2021', '10', '29', '星期五', '43', '20214', '2021-43', '202110', '20211025', '20211031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-30', '20211030', '2021', '10', '30', '星期六', '43', '20214', '2021-43', '202110', '20211025', '20211031', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-10-31', '20211031', '2021', '10', '31', '星期日', '43', '20214', '2021-43', '202110', '20211101', '20211107', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-01', '20211101', '2021', '11', '01', '星期一', '44', '20214', '2021-44', '202111', '20211101', '20211107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-02', '20211102', '2021', '11', '02', '星期二', '44', '20214', '2021-44', '202111', '20211101', '20211107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-03', '20211103', '2021', '11', '03', '星期三', '44', '20214', '2021-44', '202111', '20211101', '20211107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-04', '20211104', '2021', '11', '04', '星期四', '44', '20214', '2021-44', '202111', '20211101', '20211107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-05', '20211105', '2021', '11', '05', '星期五', '44', '20214', '2021-44', '202111', '20211101', '20211107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-06', '20211106', '2021', '11', '06', '星期六', '44', '20214', '2021-44', '202111', '20211101', '20211107', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-07', '20211107', '2021', '11', '07', '星期日', '44', '20214', '2021-44', '202111', '20211108', '20211114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-08', '20211108', '2021', '11', '08', '星期一', '45', '20214', '2021-45', '202111', '20211108', '20211114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-09', '20211109', '2021', '11', '09', '星期二', '45', '20214', '2021-45', '202111', '20211108', '20211114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-10', '20211110', '2021', '11', '10', '星期三', '45', '20214', '2021-45', '202111', '20211108', '20211114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-11', '20211111', '2021', '11', '11', '星期四', '45', '20214', '2021-45', '202111', '20211108', '20211114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-12', '20211112', '2021', '11', '12', '星期五', '45', '20214', '2021-45', '202111', '20211108', '20211114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-13', '20211113', '2021', '11', '13', '星期六', '45', '20214', '2021-45', '202111', '20211108', '20211114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-14', '20211114', '2021', '11', '14', '星期日', '45', '20214', '2021-45', '202111', '20211115', '20211121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-15', '20211115', '2021', '11', '15', '星期一', '46', '20214', '2021-46', '202111', '20211115', '20211121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-16', '20211116', '2021', '11', '16', '星期二', '46', '20214', '2021-46', '202111', '20211115', '20211121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-17', '20211117', '2021', '11', '17', '星期三', '46', '20214', '2021-46', '202111', '20211115', '20211121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-18', '20211118', '2021', '11', '18', '星期四', '46', '20214', '2021-46', '202111', '20211115', '20211121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-19', '20211119', '2021', '11', '19', '星期五', '46', '20214', '2021-46', '202111', '20211115', '20211121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-20', '20211120', '2021', '11', '20', '星期六', '46', '20214', '2021-46', '202111', '20211115', '20211121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-21', '20211121', '2021', '11', '21', '星期日', '46', '20214', '2021-46', '202111', '20211122', '20211128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-22', '20211122', '2021', '11', '22', '星期一', '47', '20214', '2021-47', '202111', '20211122', '20211128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-23', '20211123', '2021', '11', '23', '星期二', '47', '20214', '2021-47', '202111', '20211122', '20211128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-24', '20211124', '2021', '11', '24', '星期三', '47', '20214', '2021-47', '202111', '20211122', '20211128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-25', '20211125', '2021', '11', '25', '星期四', '47', '20214', '2021-47', '202111', '20211122', '20211128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-26', '20211126', '2021', '11', '26', '星期五', '47', '20214', '2021-47', '202111', '20211122', '20211128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-27', '20211127', '2021', '11', '27', '星期六', '47', '20214', '2021-47', '202111', '20211122', '20211128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-28', '20211128', '2021', '11', '28', '星期日', '47', '20214', '2021-47', '202111', '20211129', '20211205', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-29', '20211129', '2021', '11', '29', '星期一', '48', '20214', '2021-48', '202111', '20211129', '20211205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-11-30', '20211130', '2021', '11', '30', '星期二', '48', '20214', '2021-48', '202111', '20211129', '20211205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-01', '20211201', '2021', '12', '01', '星期三', '48', '20214', '2021-48', '202112', '20211129', '20211205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-02', '20211202', '2021', '12', '02', '星期四', '48', '20214', '2021-48', '202112', '20211129', '20211205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-03', '20211203', '2021', '12', '03', '星期五', '48', '20214', '2021-48', '202112', '20211129', '20211205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-04', '20211204', '2021', '12', '04', '星期六', '48', '20214', '2021-48', '202112', '20211129', '20211205', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-05', '20211205', '2021', '12', '05', '星期日', '48', '20214', '2021-48', '202112', '20211206', '20211212', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-06', '20211206', '2021', '12', '06', '星期一', '49', '20214', '2021-49', '202112', '20211206', '20211212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-07', '20211207', '2021', '12', '07', '星期二', '49', '20214', '2021-49', '202112', '20211206', '20211212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-08', '20211208', '2021', '12', '08', '星期三', '49', '20214', '2021-49', '202112', '20211206', '20211212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-09', '20211209', '2021', '12', '09', '星期四', '49', '20214', '2021-49', '202112', '20211206', '20211212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-10', '20211210', '2021', '12', '10', '星期五', '49', '20214', '2021-49', '202112', '20211206', '20211212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-11', '20211211', '2021', '12', '11', '星期六', '49', '20214', '2021-49', '202112', '20211206', '20211212', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-12', '20211212', '2021', '12', '12', '星期日', '49', '20214', '2021-49', '202112', '20211213', '20211219', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-13', '20211213', '2021', '12', '13', '星期一', '50', '20214', '2021-50', '202112', '20211213', '20211219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-14', '20211214', '2021', '12', '14', '星期二', '50', '20214', '2021-50', '202112', '20211213', '20211219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-15', '20211215', '2021', '12', '15', '星期三', '50', '20214', '2021-50', '202112', '20211213', '20211219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-16', '20211216', '2021', '12', '16', '星期四', '50', '20214', '2021-50', '202112', '20211213', '20211219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-17', '20211217', '2021', '12', '17', '星期五', '50', '20214', '2021-50', '202112', '20211213', '20211219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-18', '20211218', '2021', '12', '18', '星期六', '50', '20214', '2021-50', '202112', '20211213', '20211219', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-19', '20211219', '2021', '12', '19', '星期日', '50', '20214', '2021-50', '202112', '20211220', '20211226', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-20', '20211220', '2021', '12', '20', '星期一', '51', '20214', '2021-51', '202112', '20211220', '20211226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-21', '20211221', '2021', '12', '21', '星期二', '51', '20214', '2021-51', '202112', '20211220', '20211226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-22', '20211222', '2021', '12', '22', '星期三', '51', '20214', '2021-51', '202112', '20211220', '20211226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-23', '20211223', '2021', '12', '23', '星期四', '51', '20214', '2021-51', '202112', '20211220', '20211226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-24', '20211224', '2021', '12', '24', '星期五', '51', '20214', '2021-51', '202112', '20211220', '20211226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-25', '20211225', '2021', '12', '25', '星期六', '51', '20214', '2021-51', '202112', '20211220', '20211226', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-26', '20211226', '2021', '12', '26', '星期日', '51', '20214', '2021-51', '202112', '20211227', '20220102', '1');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-27', '20211227', '2021', '12', '27', '星期一', '52', '20214', '2021-52', '202112', '20211227', '20220102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-28', '20211228', '2021', '12', '28', '星期二', '52', '20214', '2021-52', '202112', '20211227', '20220102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-29', '20211229', '2021', '12', '29', '星期三', '52', '20214', '2021-52', '202112', '20211227', '20220102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-30', '20211230', '2021', '12', '30', '星期四', '52', '20214', '2021-52', '202112', '20211227', '20220102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2021-12-31', '20211231', '2021', '12', '31', '星期五', '52', '20214', '2021-52', '202112', '20211227', '20220102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-01', '20220101', '2022', '01', '01', '星期六', '00', '20221', '2022-00', '202201', '20211227', '20220102', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-02', '20220102', '2022', '01', '02', '星期日', '00', '20221', '2022-00', '202201', '20220103', '20220109', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-03', '20220103', '2022', '01', '03', '星期一', '01', '20221', '2022-01', '202201', '20220103', '20220109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-04', '20220104', '2022', '01', '04', '星期二', '01', '20221', '2022-01', '202201', '20220103', '20220109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-05', '20220105', '2022', '01', '05', '星期三', '01', '20221', '2022-01', '202201', '20220103', '20220109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-06', '20220106', '2022', '01', '06', '星期四', '01', '20221', '2022-01', '202201', '20220103', '20220109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-07', '20220107', '2022', '01', '07', '星期五', '01', '20221', '2022-01', '202201', '20220103', '20220109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-08', '20220108', '2022', '01', '08', '星期六', '01', '20221', '2022-01', '202201', '20220103', '20220109', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-09', '20220109', '2022', '01', '09', '星期日', '01', '20221', '2022-01', '202201', '20220110', '20220116', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-10', '20220110', '2022', '01', '10', '星期一', '02', '20221', '2022-02', '202201', '20220110', '20220116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-11', '20220111', '2022', '01', '11', '星期二', '02', '20221', '2022-02', '202201', '20220110', '20220116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-12', '20220112', '2022', '01', '12', '星期三', '02', '20221', '2022-02', '202201', '20220110', '20220116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-13', '20220113', '2022', '01', '13', '星期四', '02', '20221', '2022-02', '202201', '20220110', '20220116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-14', '20220114', '2022', '01', '14', '星期五', '02', '20221', '2022-02', '202201', '20220110', '20220116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-15', '20220115', '2022', '01', '15', '星期六', '02', '20221', '2022-02', '202201', '20220110', '20220116', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-16', '20220116', '2022', '01', '16', '星期日', '02', '20221', '2022-02', '202201', '20220117', '20220123', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-17', '20220117', '2022', '01', '17', '星期一', '03', '20221', '2022-03', '202201', '20220117', '20220123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-18', '20220118', '2022', '01', '18', '星期二', '03', '20221', '2022-03', '202201', '20220117', '20220123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-19', '20220119', '2022', '01', '19', '星期三', '03', '20221', '2022-03', '202201', '20220117', '20220123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-20', '20220120', '2022', '01', '20', '星期四', '03', '20221', '2022-03', '202201', '20220117', '20220123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-21', '20220121', '2022', '01', '21', '星期五', '03', '20221', '2022-03', '202201', '20220117', '20220123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-22', '20220122', '2022', '01', '22', '星期六', '03', '20221', '2022-03', '202201', '20220117', '20220123', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-23', '20220123', '2022', '01', '23', '星期日', '03', '20221', '2022-03', '202201', '20220124', '20220130', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-24', '20220124', '2022', '01', '24', '星期一', '04', '20221', '2022-04', '202201', '20220124', '20220130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-25', '20220125', '2022', '01', '25', '星期二', '04', '20221', '2022-04', '202201', '20220124', '20220130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-26', '20220126', '2022', '01', '26', '星期三', '04', '20221', '2022-04', '202201', '20220124', '20220130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-27', '20220127', '2022', '01', '27', '星期四', '04', '20221', '2022-04', '202201', '20220124', '20220130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-28', '20220128', '2022', '01', '28', '星期五', '04', '20221', '2022-04', '202201', '20220124', '20220130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-29', '20220129', '2022', '01', '29', '星期六', '04', '20221', '2022-04', '202201', '20220124', '20220130', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-30', '20220130', '2022', '01', '30', '星期日', '04', '20221', '2022-04', '202201', '20220131', '20220206', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-01-31', '20220131', '2022', '01', '31', '星期一', '05', '20221', '2022-05', '202201', '20220131', '20220206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-01', '20220201', '2022', '02', '01', '星期二', '05', '20221', '2022-05', '202202', '20220131', '20220206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-02', '20220202', '2022', '02', '02', '星期三', '05', '20221', '2022-05', '202202', '20220131', '20220206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-03', '20220203', '2022', '02', '03', '星期四', '05', '20221', '2022-05', '202202', '20220131', '20220206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-04', '20220204', '2022', '02', '04', '星期五', '05', '20221', '2022-05', '202202', '20220131', '20220206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-05', '20220205', '2022', '02', '05', '星期六', '05', '20221', '2022-05', '202202', '20220131', '20220206', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-06', '20220206', '2022', '02', '06', '星期日', '05', '20221', '2022-05', '202202', '20220207', '20220213', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-07', '20220207', '2022', '02', '07', '星期一', '06', '20221', '2022-06', '202202', '20220207', '20220213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-08', '20220208', '2022', '02', '08', '星期二', '06', '20221', '2022-06', '202202', '20220207', '20220213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-09', '20220209', '2022', '02', '09', '星期三', '06', '20221', '2022-06', '202202', '20220207', '20220213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-10', '20220210', '2022', '02', '10', '星期四', '06', '20221', '2022-06', '202202', '20220207', '20220213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-11', '20220211', '2022', '02', '11', '星期五', '06', '20221', '2022-06', '202202', '20220207', '20220213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-12', '20220212', '2022', '02', '12', '星期六', '06', '20221', '2022-06', '202202', '20220207', '20220213', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-13', '20220213', '2022', '02', '13', '星期日', '06', '20221', '2022-06', '202202', '20220214', '20220220', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-14', '20220214', '2022', '02', '14', '星期一', '07', '20221', '2022-07', '202202', '20220214', '20220220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-15', '20220215', '2022', '02', '15', '星期二', '07', '20221', '2022-07', '202202', '20220214', '20220220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-16', '20220216', '2022', '02', '16', '星期三', '07', '20221', '2022-07', '202202', '20220214', '20220220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-17', '20220217', '2022', '02', '17', '星期四', '07', '20221', '2022-07', '202202', '20220214', '20220220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-18', '20220218', '2022', '02', '18', '星期五', '07', '20221', '2022-07', '202202', '20220214', '20220220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-19', '20220219', '2022', '02', '19', '星期六', '07', '20221', '2022-07', '202202', '20220214', '20220220', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-20', '20220220', '2022', '02', '20', '星期日', '07', '20221', '2022-07', '202202', '20220221', '20220227', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-21', '20220221', '2022', '02', '21', '星期一', '08', '20221', '2022-08', '202202', '20220221', '20220227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-22', '20220222', '2022', '02', '22', '星期二', '08', '20221', '2022-08', '202202', '20220221', '20220227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-23', '20220223', '2022', '02', '23', '星期三', '08', '20221', '2022-08', '202202', '20220221', '20220227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-24', '20220224', '2022', '02', '24', '星期四', '08', '20221', '2022-08', '202202', '20220221', '20220227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-25', '20220225', '2022', '02', '25', '星期五', '08', '20221', '2022-08', '202202', '20220221', '20220227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-26', '20220226', '2022', '02', '26', '星期六', '08', '20221', '2022-08', '202202', '20220221', '20220227', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-27', '20220227', '2022', '02', '27', '星期日', '08', '20221', '2022-08', '202202', '20220228', '20220306', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-02-28', '20220228', '2022', '02', '28', '星期一', '09', '20221', '2022-09', '202202', '20220228', '20220306', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-01', '20220301', '2022', '03', '01', '星期二', '09', '20221', '2022-09', '202203', '20220228', '20220306', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-02', '20220302', '2022', '03', '02', '星期三', '09', '20221', '2022-09', '202203', '20220228', '20220306', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-03', '20220303', '2022', '03', '03', '星期四', '09', '20221', '2022-09', '202203', '20220228', '20220306', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-04', '20220304', '2022', '03', '04', '星期五', '09', '20221', '2022-09', '202203', '20220228', '20220306', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-05', '20220305', '2022', '03', '05', '星期六', '09', '20221', '2022-09', '202203', '20220228', '20220306', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-06', '20220306', '2022', '03', '06', '星期日', '09', '20221', '2022-09', '202203', '20220307', '20220313', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-07', '20220307', '2022', '03', '07', '星期一', '10', '20221', '2022-10', '202203', '20220307', '20220313', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-08', '20220308', '2022', '03', '08', '星期二', '10', '20221', '2022-10', '202203', '20220307', '20220313', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-09', '20220309', '2022', '03', '09', '星期三', '10', '20221', '2022-10', '202203', '20220307', '20220313', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-10', '20220310', '2022', '03', '10', '星期四', '10', '20221', '2022-10', '202203', '20220307', '20220313', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-11', '20220311', '2022', '03', '11', '星期五', '10', '20221', '2022-10', '202203', '20220307', '20220313', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-12', '20220312', '2022', '03', '12', '星期六', '10', '20221', '2022-10', '202203', '20220307', '20220313', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-13', '20220313', '2022', '03', '13', '星期日', '10', '20221', '2022-10', '202203', '20220314', '20220320', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-14', '20220314', '2022', '03', '14', '星期一', '11', '20221', '2022-11', '202203', '20220314', '20220320', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-15', '20220315', '2022', '03', '15', '星期二', '11', '20221', '2022-11', '202203', '20220314', '20220320', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-16', '20220316', '2022', '03', '16', '星期三', '11', '20221', '2022-11', '202203', '20220314', '20220320', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-17', '20220317', '2022', '03', '17', '星期四', '11', '20221', '2022-11', '202203', '20220314', '20220320', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-18', '20220318', '2022', '03', '18', '星期五', '11', '20221', '2022-11', '202203', '20220314', '20220320', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-19', '20220319', '2022', '03', '19', '星期六', '11', '20221', '2022-11', '202203', '20220314', '20220320', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-20', '20220320', '2022', '03', '20', '星期日', '11', '20221', '2022-11', '202203', '20220321', '20220327', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-21', '20220321', '2022', '03', '21', '星期一', '12', '20221', '2022-12', '202203', '20220321', '20220327', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-22', '20220322', '2022', '03', '22', '星期二', '12', '20221', '2022-12', '202203', '20220321', '20220327', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-23', '20220323', '2022', '03', '23', '星期三', '12', '20221', '2022-12', '202203', '20220321', '20220327', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-24', '20220324', '2022', '03', '24', '星期四', '12', '20221', '2022-12', '202203', '20220321', '20220327', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-25', '20220325', '2022', '03', '25', '星期五', '12', '20221', '2022-12', '202203', '20220321', '20220327', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-26', '20220326', '2022', '03', '26', '星期六', '12', '20221', '2022-12', '202203', '20220321', '20220327', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-27', '20220327', '2022', '03', '27', '星期日', '12', '20221', '2022-12', '202203', '20220328', '20220403', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-28', '20220328', '2022', '03', '28', '星期一', '13', '20221', '2022-13', '202203', '20220328', '20220403', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-29', '20220329', '2022', '03', '29', '星期二', '13', '20221', '2022-13', '202203', '20220328', '20220403', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-30', '20220330', '2022', '03', '30', '星期三', '13', '20221', '2022-13', '202203', '20220328', '20220403', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-03-31', '20220331', '2022', '03', '31', '星期四', '13', '20221', '2022-13', '202203', '20220328', '20220403', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-01', '20220401', '2022', '04', '01', '星期五', '13', '20222', '2022-13', '202204', '20220328', '20220403', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-02', '20220402', '2022', '04', '02', '星期六', '13', '20222', '2022-13', '202204', '20220328', '20220403', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-03', '20220403', '2022', '04', '03', '星期日', '13', '20222', '2022-13', '202204', '20220404', '20220410', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-04', '20220404', '2022', '04', '04', '星期一', '14', '20222', '2022-14', '202204', '20220404', '20220410', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-05', '20220405', '2022', '04', '05', '星期二', '14', '20222', '2022-14', '202204', '20220404', '20220410', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-06', '20220406', '2022', '04', '06', '星期三', '14', '20222', '2022-14', '202204', '20220404', '20220410', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-07', '20220407', '2022', '04', '07', '星期四', '14', '20222', '2022-14', '202204', '20220404', '20220410', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-08', '20220408', '2022', '04', '08', '星期五', '14', '20222', '2022-14', '202204', '20220404', '20220410', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-09', '20220409', '2022', '04', '09', '星期六', '14', '20222', '2022-14', '202204', '20220404', '20220410', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-10', '20220410', '2022', '04', '10', '星期日', '14', '20222', '2022-14', '202204', '20220411', '20220417', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-11', '20220411', '2022', '04', '11', '星期一', '15', '20222', '2022-15', '202204', '20220411', '20220417', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-12', '20220412', '2022', '04', '12', '星期二', '15', '20222', '2022-15', '202204', '20220411', '20220417', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-13', '20220413', '2022', '04', '13', '星期三', '15', '20222', '2022-15', '202204', '20220411', '20220417', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-14', '20220414', '2022', '04', '14', '星期四', '15', '20222', '2022-15', '202204', '20220411', '20220417', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-15', '20220415', '2022', '04', '15', '星期五', '15', '20222', '2022-15', '202204', '20220411', '20220417', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-16', '20220416', '2022', '04', '16', '星期六', '15', '20222', '2022-15', '202204', '20220411', '20220417', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-17', '20220417', '2022', '04', '17', '星期日', '15', '20222', '2022-15', '202204', '20220418', '20220424', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-18', '20220418', '2022', '04', '18', '星期一', '16', '20222', '2022-16', '202204', '20220418', '20220424', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-19', '20220419', '2022', '04', '19', '星期二', '16', '20222', '2022-16', '202204', '20220418', '20220424', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-20', '20220420', '2022', '04', '20', '星期三', '16', '20222', '2022-16', '202204', '20220418', '20220424', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-21', '20220421', '2022', '04', '21', '星期四', '16', '20222', '2022-16', '202204', '20220418', '20220424', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-22', '20220422', '2022', '04', '22', '星期五', '16', '20222', '2022-16', '202204', '20220418', '20220424', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-23', '20220423', '2022', '04', '23', '星期六', '16', '20222', '2022-16', '202204', '20220418', '20220424', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-24', '20220424', '2022', '04', '24', '星期日', '16', '20222', '2022-16', '202204', '20220425', '20220501', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-25', '20220425', '2022', '04', '25', '星期一', '17', '20222', '2022-17', '202204', '20220425', '20220501', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-26', '20220426', '2022', '04', '26', '星期二', '17', '20222', '2022-17', '202204', '20220425', '20220501', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-27', '20220427', '2022', '04', '27', '星期三', '17', '20222', '2022-17', '202204', '20220425', '20220501', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-28', '20220428', '2022', '04', '28', '星期四', '17', '20222', '2022-17', '202204', '20220425', '20220501', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-29', '20220429', '2022', '04', '29', '星期五', '17', '20222', '2022-17', '202204', '20220425', '20220501', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-04-30', '20220430', '2022', '04', '30', '星期六', '17', '20222', '2022-17', '202204', '20220425', '20220501', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-01', '20220501', '2022', '05', '01', '星期日', '17', '20222', '2022-17', '202205', '20220502', '20220508', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-02', '20220502', '2022', '05', '02', '星期一', '18', '20222', '2022-18', '202205', '20220502', '20220508', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-03', '20220503', '2022', '05', '03', '星期二', '18', '20222', '2022-18', '202205', '20220502', '20220508', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-04', '20220504', '2022', '05', '04', '星期三', '18', '20222', '2022-18', '202205', '20220502', '20220508', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-05', '20220505', '2022', '05', '05', '星期四', '18', '20222', '2022-18', '202205', '20220502', '20220508', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-06', '20220506', '2022', '05', '06', '星期五', '18', '20222', '2022-18', '202205', '20220502', '20220508', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-07', '20220507', '2022', '05', '07', '星期六', '18', '20222', '2022-18', '202205', '20220502', '20220508', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-08', '20220508', '2022', '05', '08', '星期日', '18', '20222', '2022-18', '202205', '20220509', '20220515', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-09', '20220509', '2022', '05', '09', '星期一', '19', '20222', '2022-19', '202205', '20220509', '20220515', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-10', '20220510', '2022', '05', '10', '星期二', '19', '20222', '2022-19', '202205', '20220509', '20220515', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-11', '20220511', '2022', '05', '11', '星期三', '19', '20222', '2022-19', '202205', '20220509', '20220515', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-12', '20220512', '2022', '05', '12', '星期四', '19', '20222', '2022-19', '202205', '20220509', '20220515', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-13', '20220513', '2022', '05', '13', '星期五', '19', '20222', '2022-19', '202205', '20220509', '20220515', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-14', '20220514', '2022', '05', '14', '星期六', '19', '20222', '2022-19', '202205', '20220509', '20220515', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-15', '20220515', '2022', '05', '15', '星期日', '19', '20222', '2022-19', '202205', '20220516', '20220522', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-16', '20220516', '2022', '05', '16', '星期一', '20', '20222', '2022-20', '202205', '20220516', '20220522', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-17', '20220517', '2022', '05', '17', '星期二', '20', '20222', '2022-20', '202205', '20220516', '20220522', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-18', '20220518', '2022', '05', '18', '星期三', '20', '20222', '2022-20', '202205', '20220516', '20220522', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-19', '20220519', '2022', '05', '19', '星期四', '20', '20222', '2022-20', '202205', '20220516', '20220522', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-20', '20220520', '2022', '05', '20', '星期五', '20', '20222', '2022-20', '202205', '20220516', '20220522', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-21', '20220521', '2022', '05', '21', '星期六', '20', '20222', '2022-20', '202205', '20220516', '20220522', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-22', '20220522', '2022', '05', '22', '星期日', '20', '20222', '2022-20', '202205', '20220523', '20220529', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-23', '20220523', '2022', '05', '23', '星期一', '21', '20222', '2022-21', '202205', '20220523', '20220529', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-24', '20220524', '2022', '05', '24', '星期二', '21', '20222', '2022-21', '202205', '20220523', '20220529', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-25', '20220525', '2022', '05', '25', '星期三', '21', '20222', '2022-21', '202205', '20220523', '20220529', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-26', '20220526', '2022', '05', '26', '星期四', '21', '20222', '2022-21', '202205', '20220523', '20220529', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-27', '20220527', '2022', '05', '27', '星期五', '21', '20222', '2022-21', '202205', '20220523', '20220529', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-28', '20220528', '2022', '05', '28', '星期六', '21', '20222', '2022-21', '202205', '20220523', '20220529', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-29', '20220529', '2022', '05', '29', '星期日', '21', '20222', '2022-21', '202205', '20220530', '20220605', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-30', '20220530', '2022', '05', '30', '星期一', '22', '20222', '2022-22', '202205', '20220530', '20220605', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-05-31', '20220531', '2022', '05', '31', '星期二', '22', '20222', '2022-22', '202205', '20220530', '20220605', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-01', '20220601', '2022', '06', '01', '星期三', '22', '20222', '2022-22', '202206', '20220530', '20220605', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-02', '20220602', '2022', '06', '02', '星期四', '22', '20222', '2022-22', '202206', '20220530', '20220605', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-03', '20220603', '2022', '06', '03', '星期五', '22', '20222', '2022-22', '202206', '20220530', '20220605', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-04', '20220604', '2022', '06', '04', '星期六', '22', '20222', '2022-22', '202206', '20220530', '20220605', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-05', '20220605', '2022', '06', '05', '星期日', '22', '20222', '2022-22', '202206', '20220606', '20220612', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-06', '20220606', '2022', '06', '06', '星期一', '23', '20222', '2022-23', '202206', '20220606', '20220612', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-07', '20220607', '2022', '06', '07', '星期二', '23', '20222', '2022-23', '202206', '20220606', '20220612', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-08', '20220608', '2022', '06', '08', '星期三', '23', '20222', '2022-23', '202206', '20220606', '20220612', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-09', '20220609', '2022', '06', '09', '星期四', '23', '20222', '2022-23', '202206', '20220606', '20220612', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-10', '20220610', '2022', '06', '10', '星期五', '23', '20222', '2022-23', '202206', '20220606', '20220612', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-11', '20220611', '2022', '06', '11', '星期六', '23', '20222', '2022-23', '202206', '20220606', '20220612', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-12', '20220612', '2022', '06', '12', '星期日', '23', '20222', '2022-23', '202206', '20220613', '20220619', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-13', '20220613', '2022', '06', '13', '星期一', '24', '20222', '2022-24', '202206', '20220613', '20220619', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-14', '20220614', '2022', '06', '14', '星期二', '24', '20222', '2022-24', '202206', '20220613', '20220619', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-15', '20220615', '2022', '06', '15', '星期三', '24', '20222', '2022-24', '202206', '20220613', '20220619', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-16', '20220616', '2022', '06', '16', '星期四', '24', '20222', '2022-24', '202206', '20220613', '20220619', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-17', '20220617', '2022', '06', '17', '星期五', '24', '20222', '2022-24', '202206', '20220613', '20220619', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-18', '20220618', '2022', '06', '18', '星期六', '24', '20222', '2022-24', '202206', '20220613', '20220619', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-19', '20220619', '2022', '06', '19', '星期日', '24', '20222', '2022-24', '202206', '20220620', '20220626', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-20', '20220620', '2022', '06', '20', '星期一', '25', '20222', '2022-25', '202206', '20220620', '20220626', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-21', '20220621', '2022', '06', '21', '星期二', '25', '20222', '2022-25', '202206', '20220620', '20220626', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-22', '20220622', '2022', '06', '22', '星期三', '25', '20222', '2022-25', '202206', '20220620', '20220626', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-23', '20220623', '2022', '06', '23', '星期四', '25', '20222', '2022-25', '202206', '20220620', '20220626', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-24', '20220624', '2022', '06', '24', '星期五', '25', '20222', '2022-25', '202206', '20220620', '20220626', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-25', '20220625', '2022', '06', '25', '星期六', '25', '20222', '2022-25', '202206', '20220620', '20220626', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-26', '20220626', '2022', '06', '26', '星期日', '25', '20222', '2022-25', '202206', '20220627', '20220703', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-27', '20220627', '2022', '06', '27', '星期一', '26', '20222', '2022-26', '202206', '20220627', '20220703', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-28', '20220628', '2022', '06', '28', '星期二', '26', '20222', '2022-26', '202206', '20220627', '20220703', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-29', '20220629', '2022', '06', '29', '星期三', '26', '20222', '2022-26', '202206', '20220627', '20220703', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-06-30', '20220630', '2022', '06', '30', '星期四', '26', '20222', '2022-26', '202206', '20220627', '20220703', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-01', '20220701', '2022', '07', '01', '星期五', '26', '20223', '2022-26', '202207', '20220627', '20220703', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-02', '20220702', '2022', '07', '02', '星期六', '26', '20223', '2022-26', '202207', '20220627', '20220703', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-03', '20220703', '2022', '07', '03', '星期日', '26', '20223', '2022-26', '202207', '20220704', '20220710', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-04', '20220704', '2022', '07', '04', '星期一', '27', '20223', '2022-27', '202207', '20220704', '20220710', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-05', '20220705', '2022', '07', '05', '星期二', '27', '20223', '2022-27', '202207', '20220704', '20220710', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-06', '20220706', '2022', '07', '06', '星期三', '27', '20223', '2022-27', '202207', '20220704', '20220710', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-07', '20220707', '2022', '07', '07', '星期四', '27', '20223', '2022-27', '202207', '20220704', '20220710', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-08', '20220708', '2022', '07', '08', '星期五', '27', '20223', '2022-27', '202207', '20220704', '20220710', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-09', '20220709', '2022', '07', '09', '星期六', '27', '20223', '2022-27', '202207', '20220704', '20220710', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-10', '20220710', '2022', '07', '10', '星期日', '27', '20223', '2022-27', '202207', '20220711', '20220717', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-11', '20220711', '2022', '07', '11', '星期一', '28', '20223', '2022-28', '202207', '20220711', '20220717', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-12', '20220712', '2022', '07', '12', '星期二', '28', '20223', '2022-28', '202207', '20220711', '20220717', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-13', '20220713', '2022', '07', '13', '星期三', '28', '20223', '2022-28', '202207', '20220711', '20220717', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-14', '20220714', '2022', '07', '14', '星期四', '28', '20223', '2022-28', '202207', '20220711', '20220717', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-15', '20220715', '2022', '07', '15', '星期五', '28', '20223', '2022-28', '202207', '20220711', '20220717', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-16', '20220716', '2022', '07', '16', '星期六', '28', '20223', '2022-28', '202207', '20220711', '20220717', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-17', '20220717', '2022', '07', '17', '星期日', '28', '20223', '2022-28', '202207', '20220718', '20220724', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-18', '20220718', '2022', '07', '18', '星期一', '29', '20223', '2022-29', '202207', '20220718', '20220724', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-19', '20220719', '2022', '07', '19', '星期二', '29', '20223', '2022-29', '202207', '20220718', '20220724', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-20', '20220720', '2022', '07', '20', '星期三', '29', '20223', '2022-29', '202207', '20220718', '20220724', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-21', '20220721', '2022', '07', '21', '星期四', '29', '20223', '2022-29', '202207', '20220718', '20220724', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-22', '20220722', '2022', '07', '22', '星期五', '29', '20223', '2022-29', '202207', '20220718', '20220724', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-23', '20220723', '2022', '07', '23', '星期六', '29', '20223', '2022-29', '202207', '20220718', '20220724', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-24', '20220724', '2022', '07', '24', '星期日', '29', '20223', '2022-29', '202207', '20220725', '20220731', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-25', '20220725', '2022', '07', '25', '星期一', '30', '20223', '2022-30', '202207', '20220725', '20220731', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-26', '20220726', '2022', '07', '26', '星期二', '30', '20223', '2022-30', '202207', '20220725', '20220731', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-27', '20220727', '2022', '07', '27', '星期三', '30', '20223', '2022-30', '202207', '20220725', '20220731', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-28', '20220728', '2022', '07', '28', '星期四', '30', '20223', '2022-30', '202207', '20220725', '20220731', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-29', '20220729', '2022', '07', '29', '星期五', '30', '20223', '2022-30', '202207', '20220725', '20220731', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-30', '20220730', '2022', '07', '30', '星期六', '30', '20223', '2022-30', '202207', '20220725', '20220731', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-07-31', '20220731', '2022', '07', '31', '星期日', '30', '20223', '2022-30', '202207', '20220801', '20220807', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-01', '20220801', '2022', '08', '01', '星期一', '31', '20223', '2022-31', '202208', '20220801', '20220807', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-02', '20220802', '2022', '08', '02', '星期二', '31', '20223', '2022-31', '202208', '20220801', '20220807', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-03', '20220803', '2022', '08', '03', '星期三', '31', '20223', '2022-31', '202208', '20220801', '20220807', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-04', '20220804', '2022', '08', '04', '星期四', '31', '20223', '2022-31', '202208', '20220801', '20220807', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-05', '20220805', '2022', '08', '05', '星期五', '31', '20223', '2022-31', '202208', '20220801', '20220807', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-06', '20220806', '2022', '08', '06', '星期六', '31', '20223', '2022-31', '202208', '20220801', '20220807', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-07', '20220807', '2022', '08', '07', '星期日', '31', '20223', '2022-31', '202208', '20220808', '20220814', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-08', '20220808', '2022', '08', '08', '星期一', '32', '20223', '2022-32', '202208', '20220808', '20220814', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-09', '20220809', '2022', '08', '09', '星期二', '32', '20223', '2022-32', '202208', '20220808', '20220814', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-10', '20220810', '2022', '08', '10', '星期三', '32', '20223', '2022-32', '202208', '20220808', '20220814', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-11', '20220811', '2022', '08', '11', '星期四', '32', '20223', '2022-32', '202208', '20220808', '20220814', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-12', '20220812', '2022', '08', '12', '星期五', '32', '20223', '2022-32', '202208', '20220808', '20220814', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-13', '20220813', '2022', '08', '13', '星期六', '32', '20223', '2022-32', '202208', '20220808', '20220814', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-14', '20220814', '2022', '08', '14', '星期日', '32', '20223', '2022-32', '202208', '20220815', '20220821', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-15', '20220815', '2022', '08', '15', '星期一', '33', '20223', '2022-33', '202208', '20220815', '20220821', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-16', '20220816', '2022', '08', '16', '星期二', '33', '20223', '2022-33', '202208', '20220815', '20220821', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-17', '20220817', '2022', '08', '17', '星期三', '33', '20223', '2022-33', '202208', '20220815', '20220821', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-18', '20220818', '2022', '08', '18', '星期四', '33', '20223', '2022-33', '202208', '20220815', '20220821', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-19', '20220819', '2022', '08', '19', '星期五', '33', '20223', '2022-33', '202208', '20220815', '20220821', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-20', '20220820', '2022', '08', '20', '星期六', '33', '20223', '2022-33', '202208', '20220815', '20220821', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-21', '20220821', '2022', '08', '21', '星期日', '33', '20223', '2022-33', '202208', '20220822', '20220828', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-22', '20220822', '2022', '08', '22', '星期一', '34', '20223', '2022-34', '202208', '20220822', '20220828', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-23', '20220823', '2022', '08', '23', '星期二', '34', '20223', '2022-34', '202208', '20220822', '20220828', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-24', '20220824', '2022', '08', '24', '星期三', '34', '20223', '2022-34', '202208', '20220822', '20220828', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-25', '20220825', '2022', '08', '25', '星期四', '34', '20223', '2022-34', '202208', '20220822', '20220828', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-26', '20220826', '2022', '08', '26', '星期五', '34', '20223', '2022-34', '202208', '20220822', '20220828', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-27', '20220827', '2022', '08', '27', '星期六', '34', '20223', '2022-34', '202208', '20220822', '20220828', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-28', '20220828', '2022', '08', '28', '星期日', '34', '20223', '2022-34', '202208', '20220829', '20220904', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-29', '20220829', '2022', '08', '29', '星期一', '35', '20223', '2022-35', '202208', '20220829', '20220904', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-30', '20220830', '2022', '08', '30', '星期二', '35', '20223', '2022-35', '202208', '20220829', '20220904', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-08-31', '20220831', '2022', '08', '31', '星期三', '35', '20223', '2022-35', '202208', '20220829', '20220904', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-01', '20220901', '2022', '09', '01', '星期四', '35', '20223', '2022-35', '202209', '20220829', '20220904', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-02', '20220902', '2022', '09', '02', '星期五', '35', '20223', '2022-35', '202209', '20220829', '20220904', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-03', '20220903', '2022', '09', '03', '星期六', '35', '20223', '2022-35', '202209', '20220829', '20220904', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-04', '20220904', '2022', '09', '04', '星期日', '35', '20223', '2022-35', '202209', '20220905', '20220911', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-05', '20220905', '2022', '09', '05', '星期一', '36', '20223', '2022-36', '202209', '20220905', '20220911', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-06', '20220906', '2022', '09', '06', '星期二', '36', '20223', '2022-36', '202209', '20220905', '20220911', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-07', '20220907', '2022', '09', '07', '星期三', '36', '20223', '2022-36', '202209', '20220905', '20220911', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-08', '20220908', '2022', '09', '08', '星期四', '36', '20223', '2022-36', '202209', '20220905', '20220911', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-09', '20220909', '2022', '09', '09', '星期五', '36', '20223', '2022-36', '202209', '20220905', '20220911', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-10', '20220910', '2022', '09', '10', '星期六', '36', '20223', '2022-36', '202209', '20220905', '20220911', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-11', '20220911', '2022', '09', '11', '星期日', '36', '20223', '2022-36', '202209', '20220912', '20220918', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-12', '20220912', '2022', '09', '12', '星期一', '37', '20223', '2022-37', '202209', '20220912', '20220918', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-13', '20220913', '2022', '09', '13', '星期二', '37', '20223', '2022-37', '202209', '20220912', '20220918', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-14', '20220914', '2022', '09', '14', '星期三', '37', '20223', '2022-37', '202209', '20220912', '20220918', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-15', '20220915', '2022', '09', '15', '星期四', '37', '20223', '2022-37', '202209', '20220912', '20220918', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-16', '20220916', '2022', '09', '16', '星期五', '37', '20223', '2022-37', '202209', '20220912', '20220918', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-17', '20220917', '2022', '09', '17', '星期六', '37', '20223', '2022-37', '202209', '20220912', '20220918', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-18', '20220918', '2022', '09', '18', '星期日', '37', '20223', '2022-37', '202209', '20220919', '20220925', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-19', '20220919', '2022', '09', '19', '星期一', '38', '20223', '2022-38', '202209', '20220919', '20220925', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-20', '20220920', '2022', '09', '20', '星期二', '38', '20223', '2022-38', '202209', '20220919', '20220925', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-21', '20220921', '2022', '09', '21', '星期三', '38', '20223', '2022-38', '202209', '20220919', '20220925', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-22', '20220922', '2022', '09', '22', '星期四', '38', '20223', '2022-38', '202209', '20220919', '20220925', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-23', '20220923', '2022', '09', '23', '星期五', '38', '20223', '2022-38', '202209', '20220919', '20220925', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-24', '20220924', '2022', '09', '24', '星期六', '38', '20223', '2022-38', '202209', '20220919', '20220925', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-25', '20220925', '2022', '09', '25', '星期日', '38', '20223', '2022-38', '202209', '20220926', '20221002', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-26', '20220926', '2022', '09', '26', '星期一', '39', '20223', '2022-39', '202209', '20220926', '20221002', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-27', '20220927', '2022', '09', '27', '星期二', '39', '20223', '2022-39', '202209', '20220926', '20221002', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-28', '20220928', '2022', '09', '28', '星期三', '39', '20223', '2022-39', '202209', '20220926', '20221002', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-29', '20220929', '2022', '09', '29', '星期四', '39', '20223', '2022-39', '202209', '20220926', '20221002', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-09-30', '20220930', '2022', '09', '30', '星期五', '39', '20223', '2022-39', '202209', '20220926', '20221002', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-01', '20221001', '2022', '10', '01', '星期六', '39', '20224', '2022-39', '202210', '20220926', '20221002', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-02', '20221002', '2022', '10', '02', '星期日', '39', '20224', '2022-39', '202210', '20221003', '20221009', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-03', '20221003', '2022', '10', '03', '星期一', '40', '20224', '2022-40', '202210', '20221003', '20221009', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-04', '20221004', '2022', '10', '04', '星期二', '40', '20224', '2022-40', '202210', '20221003', '20221009', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-05', '20221005', '2022', '10', '05', '星期三', '40', '20224', '2022-40', '202210', '20221003', '20221009', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-06', '20221006', '2022', '10', '06', '星期四', '40', '20224', '2022-40', '202210', '20221003', '20221009', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-07', '20221007', '2022', '10', '07', '星期五', '40', '20224', '2022-40', '202210', '20221003', '20221009', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-08', '20221008', '2022', '10', '08', '星期六', '40', '20224', '2022-40', '202210', '20221003', '20221009', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-09', '20221009', '2022', '10', '09', '星期日', '40', '20224', '2022-40', '202210', '20221010', '20221016', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-10', '20221010', '2022', '10', '10', '星期一', '41', '20224', '2022-41', '202210', '20221010', '20221016', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-11', '20221011', '2022', '10', '11', '星期二', '41', '20224', '2022-41', '202210', '20221010', '20221016', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-12', '20221012', '2022', '10', '12', '星期三', '41', '20224', '2022-41', '202210', '20221010', '20221016', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-13', '20221013', '2022', '10', '13', '星期四', '41', '20224', '2022-41', '202210', '20221010', '20221016', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-14', '20221014', '2022', '10', '14', '星期五', '41', '20224', '2022-41', '202210', '20221010', '20221016', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-15', '20221015', '2022', '10', '15', '星期六', '41', '20224', '2022-41', '202210', '20221010', '20221016', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-16', '20221016', '2022', '10', '16', '星期日', '41', '20224', '2022-41', '202210', '20221017', '20221023', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-17', '20221017', '2022', '10', '17', '星期一', '42', '20224', '2022-42', '202210', '20221017', '20221023', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-18', '20221018', '2022', '10', '18', '星期二', '42', '20224', '2022-42', '202210', '20221017', '20221023', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-19', '20221019', '2022', '10', '19', '星期三', '42', '20224', '2022-42', '202210', '20221017', '20221023', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-20', '20221020', '2022', '10', '20', '星期四', '42', '20224', '2022-42', '202210', '20221017', '20221023', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-21', '20221021', '2022', '10', '21', '星期五', '42', '20224', '2022-42', '202210', '20221017', '20221023', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-22', '20221022', '2022', '10', '22', '星期六', '42', '20224', '2022-42', '202210', '20221017', '20221023', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-23', '20221023', '2022', '10', '23', '星期日', '42', '20224', '2022-42', '202210', '20221024', '20221030', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-24', '20221024', '2022', '10', '24', '星期一', '43', '20224', '2022-43', '202210', '20221024', '20221030', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-25', '20221025', '2022', '10', '25', '星期二', '43', '20224', '2022-43', '202210', '20221024', '20221030', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-26', '20221026', '2022', '10', '26', '星期三', '43', '20224', '2022-43', '202210', '20221024', '20221030', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-27', '20221027', '2022', '10', '27', '星期四', '43', '20224', '2022-43', '202210', '20221024', '20221030', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-28', '20221028', '2022', '10', '28', '星期五', '43', '20224', '2022-43', '202210', '20221024', '20221030', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-29', '20221029', '2022', '10', '29', '星期六', '43', '20224', '2022-43', '202210', '20221024', '20221030', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-30', '20221030', '2022', '10', '30', '星期日', '43', '20224', '2022-43', '202210', '20221031', '20221106', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-10-31', '20221031', '2022', '10', '31', '星期一', '44', '20224', '2022-44', '202210', '20221031', '20221106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-01', '20221101', '2022', '11', '01', '星期二', '44', '20224', '2022-44', '202211', '20221031', '20221106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-02', '20221102', '2022', '11', '02', '星期三', '44', '20224', '2022-44', '202211', '20221031', '20221106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-03', '20221103', '2022', '11', '03', '星期四', '44', '20224', '2022-44', '202211', '20221031', '20221106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-04', '20221104', '2022', '11', '04', '星期五', '44', '20224', '2022-44', '202211', '20221031', '20221106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-05', '20221105', '2022', '11', '05', '星期六', '44', '20224', '2022-44', '202211', '20221031', '20221106', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-06', '20221106', '2022', '11', '06', '星期日', '44', '20224', '2022-44', '202211', '20221107', '20221113', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-07', '20221107', '2022', '11', '07', '星期一', '45', '20224', '2022-45', '202211', '20221107', '20221113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-08', '20221108', '2022', '11', '08', '星期二', '45', '20224', '2022-45', '202211', '20221107', '20221113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-09', '20221109', '2022', '11', '09', '星期三', '45', '20224', '2022-45', '202211', '20221107', '20221113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-10', '20221110', '2022', '11', '10', '星期四', '45', '20224', '2022-45', '202211', '20221107', '20221113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-11', '20221111', '2022', '11', '11', '星期五', '45', '20224', '2022-45', '202211', '20221107', '20221113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-12', '20221112', '2022', '11', '12', '星期六', '45', '20224', '2022-45', '202211', '20221107', '20221113', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-13', '20221113', '2022', '11', '13', '星期日', '45', '20224', '2022-45', '202211', '20221114', '20221120', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-14', '20221114', '2022', '11', '14', '星期一', '46', '20224', '2022-46', '202211', '20221114', '20221120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-15', '20221115', '2022', '11', '15', '星期二', '46', '20224', '2022-46', '202211', '20221114', '20221120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-16', '20221116', '2022', '11', '16', '星期三', '46', '20224', '2022-46', '202211', '20221114', '20221120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-17', '20221117', '2022', '11', '17', '星期四', '46', '20224', '2022-46', '202211', '20221114', '20221120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-18', '20221118', '2022', '11', '18', '星期五', '46', '20224', '2022-46', '202211', '20221114', '20221120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-19', '20221119', '2022', '11', '19', '星期六', '46', '20224', '2022-46', '202211', '20221114', '20221120', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-20', '20221120', '2022', '11', '20', '星期日', '46', '20224', '2022-46', '202211', '20221121', '20221127', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-21', '20221121', '2022', '11', '21', '星期一', '47', '20224', '2022-47', '202211', '20221121', '20221127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-22', '20221122', '2022', '11', '22', '星期二', '47', '20224', '2022-47', '202211', '20221121', '20221127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-23', '20221123', '2022', '11', '23', '星期三', '47', '20224', '2022-47', '202211', '20221121', '20221127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-24', '20221124', '2022', '11', '24', '星期四', '47', '20224', '2022-47', '202211', '20221121', '20221127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-25', '20221125', '2022', '11', '25', '星期五', '47', '20224', '2022-47', '202211', '20221121', '20221127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-26', '20221126', '2022', '11', '26', '星期六', '47', '20224', '2022-47', '202211', '20221121', '20221127', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-27', '20221127', '2022', '11', '27', '星期日', '47', '20224', '2022-47', '202211', '20221128', '20221204', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-28', '20221128', '2022', '11', '28', '星期一', '48', '20224', '2022-48', '202211', '20221128', '20221204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-29', '20221129', '2022', '11', '29', '星期二', '48', '20224', '2022-48', '202211', '20221128', '20221204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-11-30', '20221130', '2022', '11', '30', '星期三', '48', '20224', '2022-48', '202211', '20221128', '20221204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-01', '20221201', '2022', '12', '01', '星期四', '48', '20224', '2022-48', '202212', '20221128', '20221204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-02', '20221202', '2022', '12', '02', '星期五', '48', '20224', '2022-48', '202212', '20221128', '20221204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-03', '20221203', '2022', '12', '03', '星期六', '48', '20224', '2022-48', '202212', '20221128', '20221204', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-04', '20221204', '2022', '12', '04', '星期日', '48', '20224', '2022-48', '202212', '20221205', '20221211', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-05', '20221205', '2022', '12', '05', '星期一', '49', '20224', '2022-49', '202212', '20221205', '20221211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-06', '20221206', '2022', '12', '06', '星期二', '49', '20224', '2022-49', '202212', '20221205', '20221211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-07', '20221207', '2022', '12', '07', '星期三', '49', '20224', '2022-49', '202212', '20221205', '20221211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-08', '20221208', '2022', '12', '08', '星期四', '49', '20224', '2022-49', '202212', '20221205', '20221211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-09', '20221209', '2022', '12', '09', '星期五', '49', '20224', '2022-49', '202212', '20221205', '20221211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-10', '20221210', '2022', '12', '10', '星期六', '49', '20224', '2022-49', '202212', '20221205', '20221211', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-11', '20221211', '2022', '12', '11', '星期日', '49', '20224', '2022-49', '202212', '20221212', '20221218', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-12', '20221212', '2022', '12', '12', '星期一', '50', '20224', '2022-50', '202212', '20221212', '20221218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-13', '20221213', '2022', '12', '13', '星期二', '50', '20224', '2022-50', '202212', '20221212', '20221218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-14', '20221214', '2022', '12', '14', '星期三', '50', '20224', '2022-50', '202212', '20221212', '20221218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-15', '20221215', '2022', '12', '15', '星期四', '50', '20224', '2022-50', '202212', '20221212', '20221218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-16', '20221216', '2022', '12', '16', '星期五', '50', '20224', '2022-50', '202212', '20221212', '20221218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-17', '20221217', '2022', '12', '17', '星期六', '50', '20224', '2022-50', '202212', '20221212', '20221218', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-18', '20221218', '2022', '12', '18', '星期日', '50', '20224', '2022-50', '202212', '20221219', '20221225', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-19', '20221219', '2022', '12', '19', '星期一', '51', '20224', '2022-51', '202212', '20221219', '20221225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-20', '20221220', '2022', '12', '20', '星期二', '51', '20224', '2022-51', '202212', '20221219', '20221225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-21', '20221221', '2022', '12', '21', '星期三', '51', '20224', '2022-51', '202212', '20221219', '20221225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-22', '20221222', '2022', '12', '22', '星期四', '51', '20224', '2022-51', '202212', '20221219', '20221225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-23', '20221223', '2022', '12', '23', '星期五', '51', '20224', '2022-51', '202212', '20221219', '20221225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-24', '20221224', '2022', '12', '24', '星期六', '51', '20224', '2022-51', '202212', '20221219', '20221225', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-25', '20221225', '2022', '12', '25', '星期日', '51', '20224', '2022-51', '202212', '20221226', '20230101', '1');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-26', '20221226', '2022', '12', '26', '星期一', '52', '20224', '2022-52', '202212', '20221226', '20230101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-27', '20221227', '2022', '12', '27', '星期二', '52', '20224', '2022-52', '202212', '20221226', '20230101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-28', '20221228', '2022', '12', '28', '星期三', '52', '20224', '2022-52', '202212', '20221226', '20230101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-29', '20221229', '2022', '12', '29', '星期四', '52', '20224', '2022-52', '202212', '20221226', '20230101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-30', '20221230', '2022', '12', '30', '星期五', '52', '20224', '2022-52', '202212', '20221226', '20230101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2022-12-31', '20221231', '2022', '12', '31', '星期六', '52', '20224', '2022-52', '202212', '20221226', '20230101', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-01', '20230101', '2023', '01', '01', '星期日', '00', '20231', '2023-00', '202301', '20230102', '20230108', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-02', '20230102', '2023', '01', '02', '星期一', '01', '20231', '2023-01', '202301', '20230102', '20230108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-03', '20230103', '2023', '01', '03', '星期二', '01', '20231', '2023-01', '202301', '20230102', '20230108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-04', '20230104', '2023', '01', '04', '星期三', '01', '20231', '2023-01', '202301', '20230102', '20230108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-05', '20230105', '2023', '01', '05', '星期四', '01', '20231', '2023-01', '202301', '20230102', '20230108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-06', '20230106', '2023', '01', '06', '星期五', '01', '20231', '2023-01', '202301', '20230102', '20230108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-07', '20230107', '2023', '01', '07', '星期六', '01', '20231', '2023-01', '202301', '20230102', '20230108', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-08', '20230108', '2023', '01', '08', '星期日', '01', '20231', '2023-01', '202301', '20230109', '20230115', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-09', '20230109', '2023', '01', '09', '星期一', '02', '20231', '2023-02', '202301', '20230109', '20230115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-10', '20230110', '2023', '01', '10', '星期二', '02', '20231', '2023-02', '202301', '20230109', '20230115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-11', '20230111', '2023', '01', '11', '星期三', '02', '20231', '2023-02', '202301', '20230109', '20230115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-12', '20230112', '2023', '01', '12', '星期四', '02', '20231', '2023-02', '202301', '20230109', '20230115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-13', '20230113', '2023', '01', '13', '星期五', '02', '20231', '2023-02', '202301', '20230109', '20230115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-14', '20230114', '2023', '01', '14', '星期六', '02', '20231', '2023-02', '202301', '20230109', '20230115', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-15', '20230115', '2023', '01', '15', '星期日', '02', '20231', '2023-02', '202301', '20230116', '20230122', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-16', '20230116', '2023', '01', '16', '星期一', '03', '20231', '2023-03', '202301', '20230116', '20230122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-17', '20230117', '2023', '01', '17', '星期二', '03', '20231', '2023-03', '202301', '20230116', '20230122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-18', '20230118', '2023', '01', '18', '星期三', '03', '20231', '2023-03', '202301', '20230116', '20230122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-19', '20230119', '2023', '01', '19', '星期四', '03', '20231', '2023-03', '202301', '20230116', '20230122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-20', '20230120', '2023', '01', '20', '星期五', '03', '20231', '2023-03', '202301', '20230116', '20230122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-21', '20230121', '2023', '01', '21', '星期六', '03', '20231', '2023-03', '202301', '20230116', '20230122', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-22', '20230122', '2023', '01', '22', '星期日', '03', '20231', '2023-03', '202301', '20230123', '20230129', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-23', '20230123', '2023', '01', '23', '星期一', '04', '20231', '2023-04', '202301', '20230123', '20230129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-24', '20230124', '2023', '01', '24', '星期二', '04', '20231', '2023-04', '202301', '20230123', '20230129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-25', '20230125', '2023', '01', '25', '星期三', '04', '20231', '2023-04', '202301', '20230123', '20230129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-26', '20230126', '2023', '01', '26', '星期四', '04', '20231', '2023-04', '202301', '20230123', '20230129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-27', '20230127', '2023', '01', '27', '星期五', '04', '20231', '2023-04', '202301', '20230123', '20230129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-28', '20230128', '2023', '01', '28', '星期六', '04', '20231', '2023-04', '202301', '20230123', '20230129', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-29', '20230129', '2023', '01', '29', '星期日', '04', '20231', '2023-04', '202301', '20230130', '20230205', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-30', '20230130', '2023', '01', '30', '星期一', '05', '20231', '2023-05', '202301', '20230130', '20230205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-01-31', '20230131', '2023', '01', '31', '星期二', '05', '20231', '2023-05', '202301', '20230130', '20230205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-01', '20230201', '2023', '02', '01', '星期三', '05', '20231', '2023-05', '202302', '20230130', '20230205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-02', '20230202', '2023', '02', '02', '星期四', '05', '20231', '2023-05', '202302', '20230130', '20230205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-03', '20230203', '2023', '02', '03', '星期五', '05', '20231', '2023-05', '202302', '20230130', '20230205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-04', '20230204', '2023', '02', '04', '星期六', '05', '20231', '2023-05', '202302', '20230130', '20230205', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-05', '20230205', '2023', '02', '05', '星期日', '05', '20231', '2023-05', '202302', '20230206', '20230212', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-06', '20230206', '2023', '02', '06', '星期一', '06', '20231', '2023-06', '202302', '20230206', '20230212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-07', '20230207', '2023', '02', '07', '星期二', '06', '20231', '2023-06', '202302', '20230206', '20230212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-08', '20230208', '2023', '02', '08', '星期三', '06', '20231', '2023-06', '202302', '20230206', '20230212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-09', '20230209', '2023', '02', '09', '星期四', '06', '20231', '2023-06', '202302', '20230206', '20230212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-10', '20230210', '2023', '02', '10', '星期五', '06', '20231', '2023-06', '202302', '20230206', '20230212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-11', '20230211', '2023', '02', '11', '星期六', '06', '20231', '2023-06', '202302', '20230206', '20230212', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-12', '20230212', '2023', '02', '12', '星期日', '06', '20231', '2023-06', '202302', '20230213', '20230219', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-13', '20230213', '2023', '02', '13', '星期一', '07', '20231', '2023-07', '202302', '20230213', '20230219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-14', '20230214', '2023', '02', '14', '星期二', '07', '20231', '2023-07', '202302', '20230213', '20230219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-15', '20230215', '2023', '02', '15', '星期三', '07', '20231', '2023-07', '202302', '20230213', '20230219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-16', '20230216', '2023', '02', '16', '星期四', '07', '20231', '2023-07', '202302', '20230213', '20230219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-17', '20230217', '2023', '02', '17', '星期五', '07', '20231', '2023-07', '202302', '20230213', '20230219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-18', '20230218', '2023', '02', '18', '星期六', '07', '20231', '2023-07', '202302', '20230213', '20230219', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-19', '20230219', '2023', '02', '19', '星期日', '07', '20231', '2023-07', '202302', '20230220', '20230226', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-20', '20230220', '2023', '02', '20', '星期一', '08', '20231', '2023-08', '202302', '20230220', '20230226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-21', '20230221', '2023', '02', '21', '星期二', '08', '20231', '2023-08', '202302', '20230220', '20230226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-22', '20230222', '2023', '02', '22', '星期三', '08', '20231', '2023-08', '202302', '20230220', '20230226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-23', '20230223', '2023', '02', '23', '星期四', '08', '20231', '2023-08', '202302', '20230220', '20230226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-24', '20230224', '2023', '02', '24', '星期五', '08', '20231', '2023-08', '202302', '20230220', '20230226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-25', '20230225', '2023', '02', '25', '星期六', '08', '20231', '2023-08', '202302', '20230220', '20230226', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-26', '20230226', '2023', '02', '26', '星期日', '08', '20231', '2023-08', '202302', '20230227', '20230305', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-27', '20230227', '2023', '02', '27', '星期一', '09', '20231', '2023-09', '202302', '20230227', '20230305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-02-28', '20230228', '2023', '02', '28', '星期二', '09', '20231', '2023-09', '202302', '20230227', '20230305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-01', '20230301', '2023', '03', '01', '星期三', '09', '20231', '2023-09', '202303', '20230227', '20230305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-02', '20230302', '2023', '03', '02', '星期四', '09', '20231', '2023-09', '202303', '20230227', '20230305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-03', '20230303', '2023', '03', '03', '星期五', '09', '20231', '2023-09', '202303', '20230227', '20230305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-04', '20230304', '2023', '03', '04', '星期六', '09', '20231', '2023-09', '202303', '20230227', '20230305', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-05', '20230305', '2023', '03', '05', '星期日', '09', '20231', '2023-09', '202303', '20230306', '20230312', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-06', '20230306', '2023', '03', '06', '星期一', '10', '20231', '2023-10', '202303', '20230306', '20230312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-07', '20230307', '2023', '03', '07', '星期二', '10', '20231', '2023-10', '202303', '20230306', '20230312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-08', '20230308', '2023', '03', '08', '星期三', '10', '20231', '2023-10', '202303', '20230306', '20230312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-09', '20230309', '2023', '03', '09', '星期四', '10', '20231', '2023-10', '202303', '20230306', '20230312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-10', '20230310', '2023', '03', '10', '星期五', '10', '20231', '2023-10', '202303', '20230306', '20230312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-11', '20230311', '2023', '03', '11', '星期六', '10', '20231', '2023-10', '202303', '20230306', '20230312', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-12', '20230312', '2023', '03', '12', '星期日', '10', '20231', '2023-10', '202303', '20230313', '20230319', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-13', '20230313', '2023', '03', '13', '星期一', '11', '20231', '2023-11', '202303', '20230313', '20230319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-14', '20230314', '2023', '03', '14', '星期二', '11', '20231', '2023-11', '202303', '20230313', '20230319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-15', '20230315', '2023', '03', '15', '星期三', '11', '20231', '2023-11', '202303', '20230313', '20230319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-16', '20230316', '2023', '03', '16', '星期四', '11', '20231', '2023-11', '202303', '20230313', '20230319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-17', '20230317', '2023', '03', '17', '星期五', '11', '20231', '2023-11', '202303', '20230313', '20230319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-18', '20230318', '2023', '03', '18', '星期六', '11', '20231', '2023-11', '202303', '20230313', '20230319', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-19', '20230319', '2023', '03', '19', '星期日', '11', '20231', '2023-11', '202303', '20230320', '20230326', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-20', '20230320', '2023', '03', '20', '星期一', '12', '20231', '2023-12', '202303', '20230320', '20230326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-21', '20230321', '2023', '03', '21', '星期二', '12', '20231', '2023-12', '202303', '20230320', '20230326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-22', '20230322', '2023', '03', '22', '星期三', '12', '20231', '2023-12', '202303', '20230320', '20230326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-23', '20230323', '2023', '03', '23', '星期四', '12', '20231', '2023-12', '202303', '20230320', '20230326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-24', '20230324', '2023', '03', '24', '星期五', '12', '20231', '2023-12', '202303', '20230320', '20230326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-25', '20230325', '2023', '03', '25', '星期六', '12', '20231', '2023-12', '202303', '20230320', '20230326', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-26', '20230326', '2023', '03', '26', '星期日', '12', '20231', '2023-12', '202303', '20230327', '20230402', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-27', '20230327', '2023', '03', '27', '星期一', '13', '20231', '2023-13', '202303', '20230327', '20230402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-28', '20230328', '2023', '03', '28', '星期二', '13', '20231', '2023-13', '202303', '20230327', '20230402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-29', '20230329', '2023', '03', '29', '星期三', '13', '20231', '2023-13', '202303', '20230327', '20230402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-30', '20230330', '2023', '03', '30', '星期四', '13', '20231', '2023-13', '202303', '20230327', '20230402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-03-31', '20230331', '2023', '03', '31', '星期五', '13', '20231', '2023-13', '202303', '20230327', '20230402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-01', '20230401', '2023', '04', '01', '星期六', '13', '20232', '2023-13', '202304', '20230327', '20230402', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-02', '20230402', '2023', '04', '02', '星期日', '13', '20232', '2023-13', '202304', '20230403', '20230409', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-03', '20230403', '2023', '04', '03', '星期一', '14', '20232', '2023-14', '202304', '20230403', '20230409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-04', '20230404', '2023', '04', '04', '星期二', '14', '20232', '2023-14', '202304', '20230403', '20230409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-05', '20230405', '2023', '04', '05', '星期三', '14', '20232', '2023-14', '202304', '20230403', '20230409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-06', '20230406', '2023', '04', '06', '星期四', '14', '20232', '2023-14', '202304', '20230403', '20230409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-07', '20230407', '2023', '04', '07', '星期五', '14', '20232', '2023-14', '202304', '20230403', '20230409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-08', '20230408', '2023', '04', '08', '星期六', '14', '20232', '2023-14', '202304', '20230403', '20230409', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-09', '20230409', '2023', '04', '09', '星期日', '14', '20232', '2023-14', '202304', '20230410', '20230416', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-10', '20230410', '2023', '04', '10', '星期一', '15', '20232', '2023-15', '202304', '20230410', '20230416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-11', '20230411', '2023', '04', '11', '星期二', '15', '20232', '2023-15', '202304', '20230410', '20230416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-12', '20230412', '2023', '04', '12', '星期三', '15', '20232', '2023-15', '202304', '20230410', '20230416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-13', '20230413', '2023', '04', '13', '星期四', '15', '20232', '2023-15', '202304', '20230410', '20230416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-14', '20230414', '2023', '04', '14', '星期五', '15', '20232', '2023-15', '202304', '20230410', '20230416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-15', '20230415', '2023', '04', '15', '星期六', '15', '20232', '2023-15', '202304', '20230410', '20230416', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-16', '20230416', '2023', '04', '16', '星期日', '15', '20232', '2023-15', '202304', '20230417', '20230423', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-17', '20230417', '2023', '04', '17', '星期一', '16', '20232', '2023-16', '202304', '20230417', '20230423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-18', '20230418', '2023', '04', '18', '星期二', '16', '20232', '2023-16', '202304', '20230417', '20230423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-19', '20230419', '2023', '04', '19', '星期三', '16', '20232', '2023-16', '202304', '20230417', '20230423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-20', '20230420', '2023', '04', '20', '星期四', '16', '20232', '2023-16', '202304', '20230417', '20230423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-21', '20230421', '2023', '04', '21', '星期五', '16', '20232', '2023-16', '202304', '20230417', '20230423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-22', '20230422', '2023', '04', '22', '星期六', '16', '20232', '2023-16', '202304', '20230417', '20230423', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-23', '20230423', '2023', '04', '23', '星期日', '16', '20232', '2023-16', '202304', '20230424', '20230430', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-24', '20230424', '2023', '04', '24', '星期一', '17', '20232', '2023-17', '202304', '20230424', '20230430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-25', '20230425', '2023', '04', '25', '星期二', '17', '20232', '2023-17', '202304', '20230424', '20230430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-26', '20230426', '2023', '04', '26', '星期三', '17', '20232', '2023-17', '202304', '20230424', '20230430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-27', '20230427', '2023', '04', '27', '星期四', '17', '20232', '2023-17', '202304', '20230424', '20230430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-28', '20230428', '2023', '04', '28', '星期五', '17', '20232', '2023-17', '202304', '20230424', '20230430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-29', '20230429', '2023', '04', '29', '星期六', '17', '20232', '2023-17', '202304', '20230424', '20230430', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-04-30', '20230430', '2023', '04', '30', '星期日', '17', '20232', '2023-17', '202304', '20230501', '20230507', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-01', '20230501', '2023', '05', '01', '星期一', '18', '20232', '2023-18', '202305', '20230501', '20230507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-02', '20230502', '2023', '05', '02', '星期二', '18', '20232', '2023-18', '202305', '20230501', '20230507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-03', '20230503', '2023', '05', '03', '星期三', '18', '20232', '2023-18', '202305', '20230501', '20230507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-04', '20230504', '2023', '05', '04', '星期四', '18', '20232', '2023-18', '202305', '20230501', '20230507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-05', '20230505', '2023', '05', '05', '星期五', '18', '20232', '2023-18', '202305', '20230501', '20230507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-06', '20230506', '2023', '05', '06', '星期六', '18', '20232', '2023-18', '202305', '20230501', '20230507', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-07', '20230507', '2023', '05', '07', '星期日', '18', '20232', '2023-18', '202305', '20230508', '20230514', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-08', '20230508', '2023', '05', '08', '星期一', '19', '20232', '2023-19', '202305', '20230508', '20230514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-09', '20230509', '2023', '05', '09', '星期二', '19', '20232', '2023-19', '202305', '20230508', '20230514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-10', '20230510', '2023', '05', '10', '星期三', '19', '20232', '2023-19', '202305', '20230508', '20230514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-11', '20230511', '2023', '05', '11', '星期四', '19', '20232', '2023-19', '202305', '20230508', '20230514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-12', '20230512', '2023', '05', '12', '星期五', '19', '20232', '2023-19', '202305', '20230508', '20230514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-13', '20230513', '2023', '05', '13', '星期六', '19', '20232', '2023-19', '202305', '20230508', '20230514', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-14', '20230514', '2023', '05', '14', '星期日', '19', '20232', '2023-19', '202305', '20230515', '20230521', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-15', '20230515', '2023', '05', '15', '星期一', '20', '20232', '2023-20', '202305', '20230515', '20230521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-16', '20230516', '2023', '05', '16', '星期二', '20', '20232', '2023-20', '202305', '20230515', '20230521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-17', '20230517', '2023', '05', '17', '星期三', '20', '20232', '2023-20', '202305', '20230515', '20230521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-18', '20230518', '2023', '05', '18', '星期四', '20', '20232', '2023-20', '202305', '20230515', '20230521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-19', '20230519', '2023', '05', '19', '星期五', '20', '20232', '2023-20', '202305', '20230515', '20230521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-20', '20230520', '2023', '05', '20', '星期六', '20', '20232', '2023-20', '202305', '20230515', '20230521', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-21', '20230521', '2023', '05', '21', '星期日', '20', '20232', '2023-20', '202305', '20230522', '20230528', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-22', '20230522', '2023', '05', '22', '星期一', '21', '20232', '2023-21', '202305', '20230522', '20230528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-23', '20230523', '2023', '05', '23', '星期二', '21', '20232', '2023-21', '202305', '20230522', '20230528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-24', '20230524', '2023', '05', '24', '星期三', '21', '20232', '2023-21', '202305', '20230522', '20230528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-25', '20230525', '2023', '05', '25', '星期四', '21', '20232', '2023-21', '202305', '20230522', '20230528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-26', '20230526', '2023', '05', '26', '星期五', '21', '20232', '2023-21', '202305', '20230522', '20230528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-27', '20230527', '2023', '05', '27', '星期六', '21', '20232', '2023-21', '202305', '20230522', '20230528', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-28', '20230528', '2023', '05', '28', '星期日', '21', '20232', '2023-21', '202305', '20230529', '20230604', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-29', '20230529', '2023', '05', '29', '星期一', '22', '20232', '2023-22', '202305', '20230529', '20230604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-30', '20230530', '2023', '05', '30', '星期二', '22', '20232', '2023-22', '202305', '20230529', '20230604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-05-31', '20230531', '2023', '05', '31', '星期三', '22', '20232', '2023-22', '202305', '20230529', '20230604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-01', '20230601', '2023', '06', '01', '星期四', '22', '20232', '2023-22', '202306', '20230529', '20230604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-02', '20230602', '2023', '06', '02', '星期五', '22', '20232', '2023-22', '202306', '20230529', '20230604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-03', '20230603', '2023', '06', '03', '星期六', '22', '20232', '2023-22', '202306', '20230529', '20230604', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-04', '20230604', '2023', '06', '04', '星期日', '22', '20232', '2023-22', '202306', '20230605', '20230611', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-05', '20230605', '2023', '06', '05', '星期一', '23', '20232', '2023-23', '202306', '20230605', '20230611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-06', '20230606', '2023', '06', '06', '星期二', '23', '20232', '2023-23', '202306', '20230605', '20230611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-07', '20230607', '2023', '06', '07', '星期三', '23', '20232', '2023-23', '202306', '20230605', '20230611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-08', '20230608', '2023', '06', '08', '星期四', '23', '20232', '2023-23', '202306', '20230605', '20230611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-09', '20230609', '2023', '06', '09', '星期五', '23', '20232', '2023-23', '202306', '20230605', '20230611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-10', '20230610', '2023', '06', '10', '星期六', '23', '20232', '2023-23', '202306', '20230605', '20230611', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-11', '20230611', '2023', '06', '11', '星期日', '23', '20232', '2023-23', '202306', '20230612', '20230618', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-12', '20230612', '2023', '06', '12', '星期一', '24', '20232', '2023-24', '202306', '20230612', '20230618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-13', '20230613', '2023', '06', '13', '星期二', '24', '20232', '2023-24', '202306', '20230612', '20230618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-14', '20230614', '2023', '06', '14', '星期三', '24', '20232', '2023-24', '202306', '20230612', '20230618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-15', '20230615', '2023', '06', '15', '星期四', '24', '20232', '2023-24', '202306', '20230612', '20230618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-16', '20230616', '2023', '06', '16', '星期五', '24', '20232', '2023-24', '202306', '20230612', '20230618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-17', '20230617', '2023', '06', '17', '星期六', '24', '20232', '2023-24', '202306', '20230612', '20230618', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-18', '20230618', '2023', '06', '18', '星期日', '24', '20232', '2023-24', '202306', '20230619', '20230625', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-19', '20230619', '2023', '06', '19', '星期一', '25', '20232', '2023-25', '202306', '20230619', '20230625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-20', '20230620', '2023', '06', '20', '星期二', '25', '20232', '2023-25', '202306', '20230619', '20230625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-21', '20230621', '2023', '06', '21', '星期三', '25', '20232', '2023-25', '202306', '20230619', '20230625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-22', '20230622', '2023', '06', '22', '星期四', '25', '20232', '2023-25', '202306', '20230619', '20230625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-23', '20230623', '2023', '06', '23', '星期五', '25', '20232', '2023-25', '202306', '20230619', '20230625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-24', '20230624', '2023', '06', '24', '星期六', '25', '20232', '2023-25', '202306', '20230619', '20230625', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-25', '20230625', '2023', '06', '25', '星期日', '25', '20232', '2023-25', '202306', '20230626', '20230702', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-26', '20230626', '2023', '06', '26', '星期一', '26', '20232', '2023-26', '202306', '20230626', '20230702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-27', '20230627', '2023', '06', '27', '星期二', '26', '20232', '2023-26', '202306', '20230626', '20230702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-28', '20230628', '2023', '06', '28', '星期三', '26', '20232', '2023-26', '202306', '20230626', '20230702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-29', '20230629', '2023', '06', '29', '星期四', '26', '20232', '2023-26', '202306', '20230626', '20230702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-06-30', '20230630', '2023', '06', '30', '星期五', '26', '20232', '2023-26', '202306', '20230626', '20230702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-01', '20230701', '2023', '07', '01', '星期六', '26', '20233', '2023-26', '202307', '20230626', '20230702', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-02', '20230702', '2023', '07', '02', '星期日', '26', '20233', '2023-26', '202307', '20230703', '20230709', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-03', '20230703', '2023', '07', '03', '星期一', '27', '20233', '2023-27', '202307', '20230703', '20230709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-04', '20230704', '2023', '07', '04', '星期二', '27', '20233', '2023-27', '202307', '20230703', '20230709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-05', '20230705', '2023', '07', '05', '星期三', '27', '20233', '2023-27', '202307', '20230703', '20230709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-06', '20230706', '2023', '07', '06', '星期四', '27', '20233', '2023-27', '202307', '20230703', '20230709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-07', '20230707', '2023', '07', '07', '星期五', '27', '20233', '2023-27', '202307', '20230703', '20230709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-08', '20230708', '2023', '07', '08', '星期六', '27', '20233', '2023-27', '202307', '20230703', '20230709', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-09', '20230709', '2023', '07', '09', '星期日', '27', '20233', '2023-27', '202307', '20230710', '20230716', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-10', '20230710', '2023', '07', '10', '星期一', '28', '20233', '2023-28', '202307', '20230710', '20230716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-11', '20230711', '2023', '07', '11', '星期二', '28', '20233', '2023-28', '202307', '20230710', '20230716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-12', '20230712', '2023', '07', '12', '星期三', '28', '20233', '2023-28', '202307', '20230710', '20230716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-13', '20230713', '2023', '07', '13', '星期四', '28', '20233', '2023-28', '202307', '20230710', '20230716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-14', '20230714', '2023', '07', '14', '星期五', '28', '20233', '2023-28', '202307', '20230710', '20230716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-15', '20230715', '2023', '07', '15', '星期六', '28', '20233', '2023-28', '202307', '20230710', '20230716', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-16', '20230716', '2023', '07', '16', '星期日', '28', '20233', '2023-28', '202307', '20230717', '20230723', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-17', '20230717', '2023', '07', '17', '星期一', '29', '20233', '2023-29', '202307', '20230717', '20230723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-18', '20230718', '2023', '07', '18', '星期二', '29', '20233', '2023-29', '202307', '20230717', '20230723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-19', '20230719', '2023', '07', '19', '星期三', '29', '20233', '2023-29', '202307', '20230717', '20230723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-20', '20230720', '2023', '07', '20', '星期四', '29', '20233', '2023-29', '202307', '20230717', '20230723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-21', '20230721', '2023', '07', '21', '星期五', '29', '20233', '2023-29', '202307', '20230717', '20230723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-22', '20230722', '2023', '07', '22', '星期六', '29', '20233', '2023-29', '202307', '20230717', '20230723', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-23', '20230723', '2023', '07', '23', '星期日', '29', '20233', '2023-29', '202307', '20230724', '20230730', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-24', '20230724', '2023', '07', '24', '星期一', '30', '20233', '2023-30', '202307', '20230724', '20230730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-25', '20230725', '2023', '07', '25', '星期二', '30', '20233', '2023-30', '202307', '20230724', '20230730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-26', '20230726', '2023', '07', '26', '星期三', '30', '20233', '2023-30', '202307', '20230724', '20230730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-27', '20230727', '2023', '07', '27', '星期四', '30', '20233', '2023-30', '202307', '20230724', '20230730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-28', '20230728', '2023', '07', '28', '星期五', '30', '20233', '2023-30', '202307', '20230724', '20230730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-29', '20230729', '2023', '07', '29', '星期六', '30', '20233', '2023-30', '202307', '20230724', '20230730', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-30', '20230730', '2023', '07', '30', '星期日', '30', '20233', '2023-30', '202307', '20230731', '20230806', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-07-31', '20230731', '2023', '07', '31', '星期一', '31', '20233', '2023-31', '202307', '20230731', '20230806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-01', '20230801', '2023', '08', '01', '星期二', '31', '20233', '2023-31', '202308', '20230731', '20230806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-02', '20230802', '2023', '08', '02', '星期三', '31', '20233', '2023-31', '202308', '20230731', '20230806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-03', '20230803', '2023', '08', '03', '星期四', '31', '20233', '2023-31', '202308', '20230731', '20230806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-04', '20230804', '2023', '08', '04', '星期五', '31', '20233', '2023-31', '202308', '20230731', '20230806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-05', '20230805', '2023', '08', '05', '星期六', '31', '20233', '2023-31', '202308', '20230731', '20230806', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-06', '20230806', '2023', '08', '06', '星期日', '31', '20233', '2023-31', '202308', '20230807', '20230813', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-07', '20230807', '2023', '08', '07', '星期一', '32', '20233', '2023-32', '202308', '20230807', '20230813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-08', '20230808', '2023', '08', '08', '星期二', '32', '20233', '2023-32', '202308', '20230807', '20230813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-09', '20230809', '2023', '08', '09', '星期三', '32', '20233', '2023-32', '202308', '20230807', '20230813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-10', '20230810', '2023', '08', '10', '星期四', '32', '20233', '2023-32', '202308', '20230807', '20230813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-11', '20230811', '2023', '08', '11', '星期五', '32', '20233', '2023-32', '202308', '20230807', '20230813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-12', '20230812', '2023', '08', '12', '星期六', '32', '20233', '2023-32', '202308', '20230807', '20230813', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-13', '20230813', '2023', '08', '13', '星期日', '32', '20233', '2023-32', '202308', '20230814', '20230820', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-14', '20230814', '2023', '08', '14', '星期一', '33', '20233', '2023-33', '202308', '20230814', '20230820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-15', '20230815', '2023', '08', '15', '星期二', '33', '20233', '2023-33', '202308', '20230814', '20230820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-16', '20230816', '2023', '08', '16', '星期三', '33', '20233', '2023-33', '202308', '20230814', '20230820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-17', '20230817', '2023', '08', '17', '星期四', '33', '20233', '2023-33', '202308', '20230814', '20230820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-18', '20230818', '2023', '08', '18', '星期五', '33', '20233', '2023-33', '202308', '20230814', '20230820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-19', '20230819', '2023', '08', '19', '星期六', '33', '20233', '2023-33', '202308', '20230814', '20230820', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-20', '20230820', '2023', '08', '20', '星期日', '33', '20233', '2023-33', '202308', '20230821', '20230827', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-21', '20230821', '2023', '08', '21', '星期一', '34', '20233', '2023-34', '202308', '20230821', '20230827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-22', '20230822', '2023', '08', '22', '星期二', '34', '20233', '2023-34', '202308', '20230821', '20230827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-23', '20230823', '2023', '08', '23', '星期三', '34', '20233', '2023-34', '202308', '20230821', '20230827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-24', '20230824', '2023', '08', '24', '星期四', '34', '20233', '2023-34', '202308', '20230821', '20230827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-25', '20230825', '2023', '08', '25', '星期五', '34', '20233', '2023-34', '202308', '20230821', '20230827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-26', '20230826', '2023', '08', '26', '星期六', '34', '20233', '2023-34', '202308', '20230821', '20230827', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-27', '20230827', '2023', '08', '27', '星期日', '34', '20233', '2023-34', '202308', '20230828', '20230903', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-28', '20230828', '2023', '08', '28', '星期一', '35', '20233', '2023-35', '202308', '20230828', '20230903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-29', '20230829', '2023', '08', '29', '星期二', '35', '20233', '2023-35', '202308', '20230828', '20230903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-30', '20230830', '2023', '08', '30', '星期三', '35', '20233', '2023-35', '202308', '20230828', '20230903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-08-31', '20230831', '2023', '08', '31', '星期四', '35', '20233', '2023-35', '202308', '20230828', '20230903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-01', '20230901', '2023', '09', '01', '星期五', '35', '20233', '2023-35', '202309', '20230828', '20230903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-02', '20230902', '2023', '09', '02', '星期六', '35', '20233', '2023-35', '202309', '20230828', '20230903', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-03', '20230903', '2023', '09', '03', '星期日', '35', '20233', '2023-35', '202309', '20230904', '20230910', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-04', '20230904', '2023', '09', '04', '星期一', '36', '20233', '2023-36', '202309', '20230904', '20230910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-05', '20230905', '2023', '09', '05', '星期二', '36', '20233', '2023-36', '202309', '20230904', '20230910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-06', '20230906', '2023', '09', '06', '星期三', '36', '20233', '2023-36', '202309', '20230904', '20230910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-07', '20230907', '2023', '09', '07', '星期四', '36', '20233', '2023-36', '202309', '20230904', '20230910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-08', '20230908', '2023', '09', '08', '星期五', '36', '20233', '2023-36', '202309', '20230904', '20230910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-09', '20230909', '2023', '09', '09', '星期六', '36', '20233', '2023-36', '202309', '20230904', '20230910', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-10', '20230910', '2023', '09', '10', '星期日', '36', '20233', '2023-36', '202309', '20230911', '20230917', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-11', '20230911', '2023', '09', '11', '星期一', '37', '20233', '2023-37', '202309', '20230911', '20230917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-12', '20230912', '2023', '09', '12', '星期二', '37', '20233', '2023-37', '202309', '20230911', '20230917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-13', '20230913', '2023', '09', '13', '星期三', '37', '20233', '2023-37', '202309', '20230911', '20230917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-14', '20230914', '2023', '09', '14', '星期四', '37', '20233', '2023-37', '202309', '20230911', '20230917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-15', '20230915', '2023', '09', '15', '星期五', '37', '20233', '2023-37', '202309', '20230911', '20230917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-16', '20230916', '2023', '09', '16', '星期六', '37', '20233', '2023-37', '202309', '20230911', '20230917', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-17', '20230917', '2023', '09', '17', '星期日', '37', '20233', '2023-37', '202309', '20230918', '20230924', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-18', '20230918', '2023', '09', '18', '星期一', '38', '20233', '2023-38', '202309', '20230918', '20230924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-19', '20230919', '2023', '09', '19', '星期二', '38', '20233', '2023-38', '202309', '20230918', '20230924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-20', '20230920', '2023', '09', '20', '星期三', '38', '20233', '2023-38', '202309', '20230918', '20230924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-21', '20230921', '2023', '09', '21', '星期四', '38', '20233', '2023-38', '202309', '20230918', '20230924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-22', '20230922', '2023', '09', '22', '星期五', '38', '20233', '2023-38', '202309', '20230918', '20230924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-23', '20230923', '2023', '09', '23', '星期六', '38', '20233', '2023-38', '202309', '20230918', '20230924', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-24', '20230924', '2023', '09', '24', '星期日', '38', '20233', '2023-38', '202309', '20230925', '20231001', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-25', '20230925', '2023', '09', '25', '星期一', '39', '20233', '2023-39', '202309', '20230925', '20231001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-26', '20230926', '2023', '09', '26', '星期二', '39', '20233', '2023-39', '202309', '20230925', '20231001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-27', '20230927', '2023', '09', '27', '星期三', '39', '20233', '2023-39', '202309', '20230925', '20231001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-28', '20230928', '2023', '09', '28', '星期四', '39', '20233', '2023-39', '202309', '20230925', '20231001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-29', '20230929', '2023', '09', '29', '星期五', '39', '20233', '2023-39', '202309', '20230925', '20231001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-09-30', '20230930', '2023', '09', '30', '星期六', '39', '20233', '2023-39', '202309', '20230925', '20231001', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-01', '20231001', '2023', '10', '01', '星期日', '39', '20234', '2023-39', '202310', '20231002', '20231008', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-02', '20231002', '2023', '10', '02', '星期一', '40', '20234', '2023-40', '202310', '20231002', '20231008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-03', '20231003', '2023', '10', '03', '星期二', '40', '20234', '2023-40', '202310', '20231002', '20231008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-04', '20231004', '2023', '10', '04', '星期三', '40', '20234', '2023-40', '202310', '20231002', '20231008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-05', '20231005', '2023', '10', '05', '星期四', '40', '20234', '2023-40', '202310', '20231002', '20231008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-06', '20231006', '2023', '10', '06', '星期五', '40', '20234', '2023-40', '202310', '20231002', '20231008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-07', '20231007', '2023', '10', '07', '星期六', '40', '20234', '2023-40', '202310', '20231002', '20231008', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-08', '20231008', '2023', '10', '08', '星期日', '40', '20234', '2023-40', '202310', '20231009', '20231015', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-09', '20231009', '2023', '10', '09', '星期一', '41', '20234', '2023-41', '202310', '20231009', '20231015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-10', '20231010', '2023', '10', '10', '星期二', '41', '20234', '2023-41', '202310', '20231009', '20231015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-11', '20231011', '2023', '10', '11', '星期三', '41', '20234', '2023-41', '202310', '20231009', '20231015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-12', '20231012', '2023', '10', '12', '星期四', '41', '20234', '2023-41', '202310', '20231009', '20231015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-13', '20231013', '2023', '10', '13', '星期五', '41', '20234', '2023-41', '202310', '20231009', '20231015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-14', '20231014', '2023', '10', '14', '星期六', '41', '20234', '2023-41', '202310', '20231009', '20231015', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-15', '20231015', '2023', '10', '15', '星期日', '41', '20234', '2023-41', '202310', '20231016', '20231022', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-16', '20231016', '2023', '10', '16', '星期一', '42', '20234', '2023-42', '202310', '20231016', '20231022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-17', '20231017', '2023', '10', '17', '星期二', '42', '20234', '2023-42', '202310', '20231016', '20231022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-18', '20231018', '2023', '10', '18', '星期三', '42', '20234', '2023-42', '202310', '20231016', '20231022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-19', '20231019', '2023', '10', '19', '星期四', '42', '20234', '2023-42', '202310', '20231016', '20231022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-20', '20231020', '2023', '10', '20', '星期五', '42', '20234', '2023-42', '202310', '20231016', '20231022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-21', '20231021', '2023', '10', '21', '星期六', '42', '20234', '2023-42', '202310', '20231016', '20231022', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-22', '20231022', '2023', '10', '22', '星期日', '42', '20234', '2023-42', '202310', '20231023', '20231029', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-23', '20231023', '2023', '10', '23', '星期一', '43', '20234', '2023-43', '202310', '20231023', '20231029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-24', '20231024', '2023', '10', '24', '星期二', '43', '20234', '2023-43', '202310', '20231023', '20231029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-25', '20231025', '2023', '10', '25', '星期三', '43', '20234', '2023-43', '202310', '20231023', '20231029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-26', '20231026', '2023', '10', '26', '星期四', '43', '20234', '2023-43', '202310', '20231023', '20231029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-27', '20231027', '2023', '10', '27', '星期五', '43', '20234', '2023-43', '202310', '20231023', '20231029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-28', '20231028', '2023', '10', '28', '星期六', '43', '20234', '2023-43', '202310', '20231023', '20231029', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-29', '20231029', '2023', '10', '29', '星期日', '43', '20234', '2023-43', '202310', '20231030', '20231105', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-30', '20231030', '2023', '10', '30', '星期一', '44', '20234', '2023-44', '202310', '20231030', '20231105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-10-31', '20231031', '2023', '10', '31', '星期二', '44', '20234', '2023-44', '202310', '20231030', '20231105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-01', '20231101', '2023', '11', '01', '星期三', '44', '20234', '2023-44', '202311', '20231030', '20231105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-02', '20231102', '2023', '11', '02', '星期四', '44', '20234', '2023-44', '202311', '20231030', '20231105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-03', '20231103', '2023', '11', '03', '星期五', '44', '20234', '2023-44', '202311', '20231030', '20231105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-04', '20231104', '2023', '11', '04', '星期六', '44', '20234', '2023-44', '202311', '20231030', '20231105', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-05', '20231105', '2023', '11', '05', '星期日', '44', '20234', '2023-44', '202311', '20231106', '20231112', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-06', '20231106', '2023', '11', '06', '星期一', '45', '20234', '2023-45', '202311', '20231106', '20231112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-07', '20231107', '2023', '11', '07', '星期二', '45', '20234', '2023-45', '202311', '20231106', '20231112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-08', '20231108', '2023', '11', '08', '星期三', '45', '20234', '2023-45', '202311', '20231106', '20231112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-09', '20231109', '2023', '11', '09', '星期四', '45', '20234', '2023-45', '202311', '20231106', '20231112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-10', '20231110', '2023', '11', '10', '星期五', '45', '20234', '2023-45', '202311', '20231106', '20231112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-11', '20231111', '2023', '11', '11', '星期六', '45', '20234', '2023-45', '202311', '20231106', '20231112', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-12', '20231112', '2023', '11', '12', '星期日', '45', '20234', '2023-45', '202311', '20231113', '20231119', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-13', '20231113', '2023', '11', '13', '星期一', '46', '20234', '2023-46', '202311', '20231113', '20231119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-14', '20231114', '2023', '11', '14', '星期二', '46', '20234', '2023-46', '202311', '20231113', '20231119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-15', '20231115', '2023', '11', '15', '星期三', '46', '20234', '2023-46', '202311', '20231113', '20231119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-16', '20231116', '2023', '11', '16', '星期四', '46', '20234', '2023-46', '202311', '20231113', '20231119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-17', '20231117', '2023', '11', '17', '星期五', '46', '20234', '2023-46', '202311', '20231113', '20231119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-18', '20231118', '2023', '11', '18', '星期六', '46', '20234', '2023-46', '202311', '20231113', '20231119', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-19', '20231119', '2023', '11', '19', '星期日', '46', '20234', '2023-46', '202311', '20231120', '20231126', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-20', '20231120', '2023', '11', '20', '星期一', '47', '20234', '2023-47', '202311', '20231120', '20231126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-21', '20231121', '2023', '11', '21', '星期二', '47', '20234', '2023-47', '202311', '20231120', '20231126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-22', '20231122', '2023', '11', '22', '星期三', '47', '20234', '2023-47', '202311', '20231120', '20231126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-23', '20231123', '2023', '11', '23', '星期四', '47', '20234', '2023-47', '202311', '20231120', '20231126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-24', '20231124', '2023', '11', '24', '星期五', '47', '20234', '2023-47', '202311', '20231120', '20231126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-25', '20231125', '2023', '11', '25', '星期六', '47', '20234', '2023-47', '202311', '20231120', '20231126', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-26', '20231126', '2023', '11', '26', '星期日', '47', '20234', '2023-47', '202311', '20231127', '20231203', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-27', '20231127', '2023', '11', '27', '星期一', '48', '20234', '2023-48', '202311', '20231127', '20231203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-28', '20231128', '2023', '11', '28', '星期二', '48', '20234', '2023-48', '202311', '20231127', '20231203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-29', '20231129', '2023', '11', '29', '星期三', '48', '20234', '2023-48', '202311', '20231127', '20231203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-11-30', '20231130', '2023', '11', '30', '星期四', '48', '20234', '2023-48', '202311', '20231127', '20231203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-01', '20231201', '2023', '12', '01', '星期五', '48', '20234', '2023-48', '202312', '20231127', '20231203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-02', '20231202', '2023', '12', '02', '星期六', '48', '20234', '2023-48', '202312', '20231127', '20231203', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-03', '20231203', '2023', '12', '03', '星期日', '48', '20234', '2023-48', '202312', '20231204', '20231210', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-04', '20231204', '2023', '12', '04', '星期一', '49', '20234', '2023-49', '202312', '20231204', '20231210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-05', '20231205', '2023', '12', '05', '星期二', '49', '20234', '2023-49', '202312', '20231204', '20231210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-06', '20231206', '2023', '12', '06', '星期三', '49', '20234', '2023-49', '202312', '20231204', '20231210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-07', '20231207', '2023', '12', '07', '星期四', '49', '20234', '2023-49', '202312', '20231204', '20231210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-08', '20231208', '2023', '12', '08', '星期五', '49', '20234', '2023-49', '202312', '20231204', '20231210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-09', '20231209', '2023', '12', '09', '星期六', '49', '20234', '2023-49', '202312', '20231204', '20231210', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-10', '20231210', '2023', '12', '10', '星期日', '49', '20234', '2023-49', '202312', '20231211', '20231217', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-11', '20231211', '2023', '12', '11', '星期一', '50', '20234', '2023-50', '202312', '20231211', '20231217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-12', '20231212', '2023', '12', '12', '星期二', '50', '20234', '2023-50', '202312', '20231211', '20231217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-13', '20231213', '2023', '12', '13', '星期三', '50', '20234', '2023-50', '202312', '20231211', '20231217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-14', '20231214', '2023', '12', '14', '星期四', '50', '20234', '2023-50', '202312', '20231211', '20231217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-15', '20231215', '2023', '12', '15', '星期五', '50', '20234', '2023-50', '202312', '20231211', '20231217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-16', '20231216', '2023', '12', '16', '星期六', '50', '20234', '2023-50', '202312', '20231211', '20231217', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-17', '20231217', '2023', '12', '17', '星期日', '50', '20234', '2023-50', '202312', '20231218', '20231224', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-18', '20231218', '2023', '12', '18', '星期一', '51', '20234', '2023-51', '202312', '20231218', '20231224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-19', '20231219', '2023', '12', '19', '星期二', '51', '20234', '2023-51', '202312', '20231218', '20231224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-20', '20231220', '2023', '12', '20', '星期三', '51', '20234', '2023-51', '202312', '20231218', '20231224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-21', '20231221', '2023', '12', '21', '星期四', '51', '20234', '2023-51', '202312', '20231218', '20231224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-22', '20231222', '2023', '12', '22', '星期五', '51', '20234', '2023-51', '202312', '20231218', '20231224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-23', '20231223', '2023', '12', '23', '星期六', '51', '20234', '2023-51', '202312', '20231218', '20231224', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-24', '20231224', '2023', '12', '24', '星期日', '51', '20234', '2023-51', '202312', '20231225', '20231231', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-25', '20231225', '2023', '12', '25', '星期一', '52', '20234', '2023-52', '202312', '20231225', '20231231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-26', '20231226', '2023', '12', '26', '星期二', '52', '20234', '2023-52', '202312', '20231225', '20231231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-27', '20231227', '2023', '12', '27', '星期三', '52', '20234', '2023-52', '202312', '20231225', '20231231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-28', '20231228', '2023', '12', '28', '星期四', '52', '20234', '2023-52', '202312', '20231225', '20231231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-29', '20231229', '2023', '12', '29', '星期五', '52', '20234', '2023-52', '202312', '20231225', '20231231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-30', '20231230', '2023', '12', '30', '星期六', '52', '20234', '2023-52', '202312', '20231225', '20231231', '1');
INSERT INTO `t_sys_calendar` VALUES ('2023-12-31', '20231231', '2023', '12', '31', '星期日', '52', '20234', '2023-52', '202312', '20240101', '20240107', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-01', '20240101', '2024', '01', '01', '星期一', '01', '20241', '2024-01', '202401', '20240101', '20240107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-02', '20240102', '2024', '01', '02', '星期二', '01', '20241', '2024-01', '202401', '20240101', '20240107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-03', '20240103', '2024', '01', '03', '星期三', '01', '20241', '2024-01', '202401', '20240101', '20240107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-04', '20240104', '2024', '01', '04', '星期四', '01', '20241', '2024-01', '202401', '20240101', '20240107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-05', '20240105', '2024', '01', '05', '星期五', '01', '20241', '2024-01', '202401', '20240101', '20240107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-06', '20240106', '2024', '01', '06', '星期六', '01', '20241', '2024-01', '202401', '20240101', '20240107', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-07', '20240107', '2024', '01', '07', '星期日', '01', '20241', '2024-01', '202401', '20240108', '20240114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-08', '20240108', '2024', '01', '08', '星期一', '02', '20241', '2024-02', '202401', '20240108', '20240114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-09', '20240109', '2024', '01', '09', '星期二', '02', '20241', '2024-02', '202401', '20240108', '20240114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-10', '20240110', '2024', '01', '10', '星期三', '02', '20241', '2024-02', '202401', '20240108', '20240114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-11', '20240111', '2024', '01', '11', '星期四', '02', '20241', '2024-02', '202401', '20240108', '20240114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-12', '20240112', '2024', '01', '12', '星期五', '02', '20241', '2024-02', '202401', '20240108', '20240114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-13', '20240113', '2024', '01', '13', '星期六', '02', '20241', '2024-02', '202401', '20240108', '20240114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-14', '20240114', '2024', '01', '14', '星期日', '02', '20241', '2024-02', '202401', '20240115', '20240121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-15', '20240115', '2024', '01', '15', '星期一', '03', '20241', '2024-03', '202401', '20240115', '20240121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-16', '20240116', '2024', '01', '16', '星期二', '03', '20241', '2024-03', '202401', '20240115', '20240121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-17', '20240117', '2024', '01', '17', '星期三', '03', '20241', '2024-03', '202401', '20240115', '20240121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-18', '20240118', '2024', '01', '18', '星期四', '03', '20241', '2024-03', '202401', '20240115', '20240121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-19', '20240119', '2024', '01', '19', '星期五', '03', '20241', '2024-03', '202401', '20240115', '20240121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-20', '20240120', '2024', '01', '20', '星期六', '03', '20241', '2024-03', '202401', '20240115', '20240121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-21', '20240121', '2024', '01', '21', '星期日', '03', '20241', '2024-03', '202401', '20240122', '20240128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-22', '20240122', '2024', '01', '22', '星期一', '04', '20241', '2024-04', '202401', '20240122', '20240128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-23', '20240123', '2024', '01', '23', '星期二', '04', '20241', '2024-04', '202401', '20240122', '20240128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-24', '20240124', '2024', '01', '24', '星期三', '04', '20241', '2024-04', '202401', '20240122', '20240128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-25', '20240125', '2024', '01', '25', '星期四', '04', '20241', '2024-04', '202401', '20240122', '20240128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-26', '20240126', '2024', '01', '26', '星期五', '04', '20241', '2024-04', '202401', '20240122', '20240128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-27', '20240127', '2024', '01', '27', '星期六', '04', '20241', '2024-04', '202401', '20240122', '20240128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-28', '20240128', '2024', '01', '28', '星期日', '04', '20241', '2024-04', '202401', '20240129', '20240204', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-29', '20240129', '2024', '01', '29', '星期一', '05', '20241', '2024-05', '202401', '20240129', '20240204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-30', '20240130', '2024', '01', '30', '星期二', '05', '20241', '2024-05', '202401', '20240129', '20240204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-01-31', '20240131', '2024', '01', '31', '星期三', '05', '20241', '2024-05', '202401', '20240129', '20240204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-01', '20240201', '2024', '02', '01', '星期四', '05', '20241', '2024-05', '202402', '20240129', '20240204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-02', '20240202', '2024', '02', '02', '星期五', '05', '20241', '2024-05', '202402', '20240129', '20240204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-03', '20240203', '2024', '02', '03', '星期六', '05', '20241', '2024-05', '202402', '20240129', '20240204', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-04', '20240204', '2024', '02', '04', '星期日', '05', '20241', '2024-05', '202402', '20240205', '20240211', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-05', '20240205', '2024', '02', '05', '星期一', '06', '20241', '2024-06', '202402', '20240205', '20240211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-06', '20240206', '2024', '02', '06', '星期二', '06', '20241', '2024-06', '202402', '20240205', '20240211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-07', '20240207', '2024', '02', '07', '星期三', '06', '20241', '2024-06', '202402', '20240205', '20240211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-08', '20240208', '2024', '02', '08', '星期四', '06', '20241', '2024-06', '202402', '20240205', '20240211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-09', '20240209', '2024', '02', '09', '星期五', '06', '20241', '2024-06', '202402', '20240205', '20240211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-10', '20240210', '2024', '02', '10', '星期六', '06', '20241', '2024-06', '202402', '20240205', '20240211', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-11', '20240211', '2024', '02', '11', '星期日', '06', '20241', '2024-06', '202402', '20240212', '20240218', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-12', '20240212', '2024', '02', '12', '星期一', '07', '20241', '2024-07', '202402', '20240212', '20240218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-13', '20240213', '2024', '02', '13', '星期二', '07', '20241', '2024-07', '202402', '20240212', '20240218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-14', '20240214', '2024', '02', '14', '星期三', '07', '20241', '2024-07', '202402', '20240212', '20240218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-15', '20240215', '2024', '02', '15', '星期四', '07', '20241', '2024-07', '202402', '20240212', '20240218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-16', '20240216', '2024', '02', '16', '星期五', '07', '20241', '2024-07', '202402', '20240212', '20240218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-17', '20240217', '2024', '02', '17', '星期六', '07', '20241', '2024-07', '202402', '20240212', '20240218', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-18', '20240218', '2024', '02', '18', '星期日', '07', '20241', '2024-07', '202402', '20240219', '20240225', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-19', '20240219', '2024', '02', '19', '星期一', '08', '20241', '2024-08', '202402', '20240219', '20240225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-20', '20240220', '2024', '02', '20', '星期二', '08', '20241', '2024-08', '202402', '20240219', '20240225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-21', '20240221', '2024', '02', '21', '星期三', '08', '20241', '2024-08', '202402', '20240219', '20240225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-22', '20240222', '2024', '02', '22', '星期四', '08', '20241', '2024-08', '202402', '20240219', '20240225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-23', '20240223', '2024', '02', '23', '星期五', '08', '20241', '2024-08', '202402', '20240219', '20240225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-24', '20240224', '2024', '02', '24', '星期六', '08', '20241', '2024-08', '202402', '20240219', '20240225', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-25', '20240225', '2024', '02', '25', '星期日', '08', '20241', '2024-08', '202402', '20240226', '20240303', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-26', '20240226', '2024', '02', '26', '星期一', '09', '20241', '2024-09', '202402', '20240226', '20240303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-27', '20240227', '2024', '02', '27', '星期二', '09', '20241', '2024-09', '202402', '20240226', '20240303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-28', '20240228', '2024', '02', '28', '星期三', '09', '20241', '2024-09', '202402', '20240226', '20240303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-02-29', '20240229', '2024', '02', '29', '星期四', '09', '20241', '2024-09', '202402', '20240226', '20240303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-01', '20240301', '2024', '03', '01', '星期五', '09', '20241', '2024-09', '202403', '20240226', '20240303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-02', '20240302', '2024', '03', '02', '星期六', '09', '20241', '2024-09', '202403', '20240226', '20240303', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-03', '20240303', '2024', '03', '03', '星期日', '09', '20241', '2024-09', '202403', '20240304', '20240310', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-04', '20240304', '2024', '03', '04', '星期一', '10', '20241', '2024-10', '202403', '20240304', '20240310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-05', '20240305', '2024', '03', '05', '星期二', '10', '20241', '2024-10', '202403', '20240304', '20240310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-06', '20240306', '2024', '03', '06', '星期三', '10', '20241', '2024-10', '202403', '20240304', '20240310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-07', '20240307', '2024', '03', '07', '星期四', '10', '20241', '2024-10', '202403', '20240304', '20240310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-08', '20240308', '2024', '03', '08', '星期五', '10', '20241', '2024-10', '202403', '20240304', '20240310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-09', '20240309', '2024', '03', '09', '星期六', '10', '20241', '2024-10', '202403', '20240304', '20240310', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-10', '20240310', '2024', '03', '10', '星期日', '10', '20241', '2024-10', '202403', '20240311', '20240317', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-11', '20240311', '2024', '03', '11', '星期一', '11', '20241', '2024-11', '202403', '20240311', '20240317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-12', '20240312', '2024', '03', '12', '星期二', '11', '20241', '2024-11', '202403', '20240311', '20240317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-13', '20240313', '2024', '03', '13', '星期三', '11', '20241', '2024-11', '202403', '20240311', '20240317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-14', '20240314', '2024', '03', '14', '星期四', '11', '20241', '2024-11', '202403', '20240311', '20240317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-15', '20240315', '2024', '03', '15', '星期五', '11', '20241', '2024-11', '202403', '20240311', '20240317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-16', '20240316', '2024', '03', '16', '星期六', '11', '20241', '2024-11', '202403', '20240311', '20240317', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-17', '20240317', '2024', '03', '17', '星期日', '11', '20241', '2024-11', '202403', '20240318', '20240324', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-18', '20240318', '2024', '03', '18', '星期一', '12', '20241', '2024-12', '202403', '20240318', '20240324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-19', '20240319', '2024', '03', '19', '星期二', '12', '20241', '2024-12', '202403', '20240318', '20240324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-20', '20240320', '2024', '03', '20', '星期三', '12', '20241', '2024-12', '202403', '20240318', '20240324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-21', '20240321', '2024', '03', '21', '星期四', '12', '20241', '2024-12', '202403', '20240318', '20240324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-22', '20240322', '2024', '03', '22', '星期五', '12', '20241', '2024-12', '202403', '20240318', '20240324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-23', '20240323', '2024', '03', '23', '星期六', '12', '20241', '2024-12', '202403', '20240318', '20240324', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-24', '20240324', '2024', '03', '24', '星期日', '12', '20241', '2024-12', '202403', '20240325', '20240331', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-25', '20240325', '2024', '03', '25', '星期一', '13', '20241', '2024-13', '202403', '20240325', '20240331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-26', '20240326', '2024', '03', '26', '星期二', '13', '20241', '2024-13', '202403', '20240325', '20240331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-27', '20240327', '2024', '03', '27', '星期三', '13', '20241', '2024-13', '202403', '20240325', '20240331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-28', '20240328', '2024', '03', '28', '星期四', '13', '20241', '2024-13', '202403', '20240325', '20240331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-29', '20240329', '2024', '03', '29', '星期五', '13', '20241', '2024-13', '202403', '20240325', '20240331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-30', '20240330', '2024', '03', '30', '星期六', '13', '20241', '2024-13', '202403', '20240325', '20240331', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-03-31', '20240331', '2024', '03', '31', '星期日', '13', '20241', '2024-13', '202403', '20240401', '20240407', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-01', '20240401', '2024', '04', '01', '星期一', '14', '20242', '2024-14', '202404', '20240401', '20240407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-02', '20240402', '2024', '04', '02', '星期二', '14', '20242', '2024-14', '202404', '20240401', '20240407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-03', '20240403', '2024', '04', '03', '星期三', '14', '20242', '2024-14', '202404', '20240401', '20240407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-04', '20240404', '2024', '04', '04', '星期四', '14', '20242', '2024-14', '202404', '20240401', '20240407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-05', '20240405', '2024', '04', '05', '星期五', '14', '20242', '2024-14', '202404', '20240401', '20240407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-06', '20240406', '2024', '04', '06', '星期六', '14', '20242', '2024-14', '202404', '20240401', '20240407', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-07', '20240407', '2024', '04', '07', '星期日', '14', '20242', '2024-14', '202404', '20240408', '20240414', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-08', '20240408', '2024', '04', '08', '星期一', '15', '20242', '2024-15', '202404', '20240408', '20240414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-09', '20240409', '2024', '04', '09', '星期二', '15', '20242', '2024-15', '202404', '20240408', '20240414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-10', '20240410', '2024', '04', '10', '星期三', '15', '20242', '2024-15', '202404', '20240408', '20240414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-11', '20240411', '2024', '04', '11', '星期四', '15', '20242', '2024-15', '202404', '20240408', '20240414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-12', '20240412', '2024', '04', '12', '星期五', '15', '20242', '2024-15', '202404', '20240408', '20240414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-13', '20240413', '2024', '04', '13', '星期六', '15', '20242', '2024-15', '202404', '20240408', '20240414', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-14', '20240414', '2024', '04', '14', '星期日', '15', '20242', '2024-15', '202404', '20240415', '20240421', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-15', '20240415', '2024', '04', '15', '星期一', '16', '20242', '2024-16', '202404', '20240415', '20240421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-16', '20240416', '2024', '04', '16', '星期二', '16', '20242', '2024-16', '202404', '20240415', '20240421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-17', '20240417', '2024', '04', '17', '星期三', '16', '20242', '2024-16', '202404', '20240415', '20240421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-18', '20240418', '2024', '04', '18', '星期四', '16', '20242', '2024-16', '202404', '20240415', '20240421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-19', '20240419', '2024', '04', '19', '星期五', '16', '20242', '2024-16', '202404', '20240415', '20240421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-20', '20240420', '2024', '04', '20', '星期六', '16', '20242', '2024-16', '202404', '20240415', '20240421', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-21', '20240421', '2024', '04', '21', '星期日', '16', '20242', '2024-16', '202404', '20240422', '20240428', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-22', '20240422', '2024', '04', '22', '星期一', '17', '20242', '2024-17', '202404', '20240422', '20240428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-23', '20240423', '2024', '04', '23', '星期二', '17', '20242', '2024-17', '202404', '20240422', '20240428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-24', '20240424', '2024', '04', '24', '星期三', '17', '20242', '2024-17', '202404', '20240422', '20240428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-25', '20240425', '2024', '04', '25', '星期四', '17', '20242', '2024-17', '202404', '20240422', '20240428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-26', '20240426', '2024', '04', '26', '星期五', '17', '20242', '2024-17', '202404', '20240422', '20240428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-27', '20240427', '2024', '04', '27', '星期六', '17', '20242', '2024-17', '202404', '20240422', '20240428', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-28', '20240428', '2024', '04', '28', '星期日', '17', '20242', '2024-17', '202404', '20240429', '20240505', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-29', '20240429', '2024', '04', '29', '星期一', '18', '20242', '2024-18', '202404', '20240429', '20240505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-04-30', '20240430', '2024', '04', '30', '星期二', '18', '20242', '2024-18', '202404', '20240429', '20240505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-01', '20240501', '2024', '05', '01', '星期三', '18', '20242', '2024-18', '202405', '20240429', '20240505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-02', '20240502', '2024', '05', '02', '星期四', '18', '20242', '2024-18', '202405', '20240429', '20240505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-03', '20240503', '2024', '05', '03', '星期五', '18', '20242', '2024-18', '202405', '20240429', '20240505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-04', '20240504', '2024', '05', '04', '星期六', '18', '20242', '2024-18', '202405', '20240429', '20240505', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-05', '20240505', '2024', '05', '05', '星期日', '18', '20242', '2024-18', '202405', '20240506', '20240512', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-06', '20240506', '2024', '05', '06', '星期一', '19', '20242', '2024-19', '202405', '20240506', '20240512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-07', '20240507', '2024', '05', '07', '星期二', '19', '20242', '2024-19', '202405', '20240506', '20240512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-08', '20240508', '2024', '05', '08', '星期三', '19', '20242', '2024-19', '202405', '20240506', '20240512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-09', '20240509', '2024', '05', '09', '星期四', '19', '20242', '2024-19', '202405', '20240506', '20240512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-10', '20240510', '2024', '05', '10', '星期五', '19', '20242', '2024-19', '202405', '20240506', '20240512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-11', '20240511', '2024', '05', '11', '星期六', '19', '20242', '2024-19', '202405', '20240506', '20240512', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-12', '20240512', '2024', '05', '12', '星期日', '19', '20242', '2024-19', '202405', '20240513', '20240519', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-13', '20240513', '2024', '05', '13', '星期一', '20', '20242', '2024-20', '202405', '20240513', '20240519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-14', '20240514', '2024', '05', '14', '星期二', '20', '20242', '2024-20', '202405', '20240513', '20240519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-15', '20240515', '2024', '05', '15', '星期三', '20', '20242', '2024-20', '202405', '20240513', '20240519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-16', '20240516', '2024', '05', '16', '星期四', '20', '20242', '2024-20', '202405', '20240513', '20240519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-17', '20240517', '2024', '05', '17', '星期五', '20', '20242', '2024-20', '202405', '20240513', '20240519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-18', '20240518', '2024', '05', '18', '星期六', '20', '20242', '2024-20', '202405', '20240513', '20240519', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-19', '20240519', '2024', '05', '19', '星期日', '20', '20242', '2024-20', '202405', '20240520', '20240526', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-20', '20240520', '2024', '05', '20', '星期一', '21', '20242', '2024-21', '202405', '20240520', '20240526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-21', '20240521', '2024', '05', '21', '星期二', '21', '20242', '2024-21', '202405', '20240520', '20240526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-22', '20240522', '2024', '05', '22', '星期三', '21', '20242', '2024-21', '202405', '20240520', '20240526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-23', '20240523', '2024', '05', '23', '星期四', '21', '20242', '2024-21', '202405', '20240520', '20240526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-24', '20240524', '2024', '05', '24', '星期五', '21', '20242', '2024-21', '202405', '20240520', '20240526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-25', '20240525', '2024', '05', '25', '星期六', '21', '20242', '2024-21', '202405', '20240520', '20240526', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-26', '20240526', '2024', '05', '26', '星期日', '21', '20242', '2024-21', '202405', '20240527', '20240602', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-27', '20240527', '2024', '05', '27', '星期一', '22', '20242', '2024-22', '202405', '20240527', '20240602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-28', '20240528', '2024', '05', '28', '星期二', '22', '20242', '2024-22', '202405', '20240527', '20240602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-29', '20240529', '2024', '05', '29', '星期三', '22', '20242', '2024-22', '202405', '20240527', '20240602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-30', '20240530', '2024', '05', '30', '星期四', '22', '20242', '2024-22', '202405', '20240527', '20240602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-05-31', '20240531', '2024', '05', '31', '星期五', '22', '20242', '2024-22', '202405', '20240527', '20240602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-01', '20240601', '2024', '06', '01', '星期六', '22', '20242', '2024-22', '202406', '20240527', '20240602', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-02', '20240602', '2024', '06', '02', '星期日', '22', '20242', '2024-22', '202406', '20240603', '20240609', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-03', '20240603', '2024', '06', '03', '星期一', '23', '20242', '2024-23', '202406', '20240603', '20240609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-04', '20240604', '2024', '06', '04', '星期二', '23', '20242', '2024-23', '202406', '20240603', '20240609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-05', '20240605', '2024', '06', '05', '星期三', '23', '20242', '2024-23', '202406', '20240603', '20240609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-06', '20240606', '2024', '06', '06', '星期四', '23', '20242', '2024-23', '202406', '20240603', '20240609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-07', '20240607', '2024', '06', '07', '星期五', '23', '20242', '2024-23', '202406', '20240603', '20240609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-08', '20240608', '2024', '06', '08', '星期六', '23', '20242', '2024-23', '202406', '20240603', '20240609', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-09', '20240609', '2024', '06', '09', '星期日', '23', '20242', '2024-23', '202406', '20240610', '20240616', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-10', '20240610', '2024', '06', '10', '星期一', '24', '20242', '2024-24', '202406', '20240610', '20240616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-11', '20240611', '2024', '06', '11', '星期二', '24', '20242', '2024-24', '202406', '20240610', '20240616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-12', '20240612', '2024', '06', '12', '星期三', '24', '20242', '2024-24', '202406', '20240610', '20240616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-13', '20240613', '2024', '06', '13', '星期四', '24', '20242', '2024-24', '202406', '20240610', '20240616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-14', '20240614', '2024', '06', '14', '星期五', '24', '20242', '2024-24', '202406', '20240610', '20240616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-15', '20240615', '2024', '06', '15', '星期六', '24', '20242', '2024-24', '202406', '20240610', '20240616', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-16', '20240616', '2024', '06', '16', '星期日', '24', '20242', '2024-24', '202406', '20240617', '20240623', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-17', '20240617', '2024', '06', '17', '星期一', '25', '20242', '2024-25', '202406', '20240617', '20240623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-18', '20240618', '2024', '06', '18', '星期二', '25', '20242', '2024-25', '202406', '20240617', '20240623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-19', '20240619', '2024', '06', '19', '星期三', '25', '20242', '2024-25', '202406', '20240617', '20240623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-20', '20240620', '2024', '06', '20', '星期四', '25', '20242', '2024-25', '202406', '20240617', '20240623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-21', '20240621', '2024', '06', '21', '星期五', '25', '20242', '2024-25', '202406', '20240617', '20240623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-22', '20240622', '2024', '06', '22', '星期六', '25', '20242', '2024-25', '202406', '20240617', '20240623', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-23', '20240623', '2024', '06', '23', '星期日', '25', '20242', '2024-25', '202406', '20240624', '20240630', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-24', '20240624', '2024', '06', '24', '星期一', '26', '20242', '2024-26', '202406', '20240624', '20240630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-25', '20240625', '2024', '06', '25', '星期二', '26', '20242', '2024-26', '202406', '20240624', '20240630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-26', '20240626', '2024', '06', '26', '星期三', '26', '20242', '2024-26', '202406', '20240624', '20240630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-27', '20240627', '2024', '06', '27', '星期四', '26', '20242', '2024-26', '202406', '20240624', '20240630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-28', '20240628', '2024', '06', '28', '星期五', '26', '20242', '2024-26', '202406', '20240624', '20240630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-29', '20240629', '2024', '06', '29', '星期六', '26', '20242', '2024-26', '202406', '20240624', '20240630', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-06-30', '20240630', '2024', '06', '30', '星期日', '26', '20242', '2024-26', '202406', '20240701', '20240707', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-01', '20240701', '2024', '07', '01', '星期一', '27', '20243', '2024-27', '202407', '20240701', '20240707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-02', '20240702', '2024', '07', '02', '星期二', '27', '20243', '2024-27', '202407', '20240701', '20240707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-03', '20240703', '2024', '07', '03', '星期三', '27', '20243', '2024-27', '202407', '20240701', '20240707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-04', '20240704', '2024', '07', '04', '星期四', '27', '20243', '2024-27', '202407', '20240701', '20240707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-05', '20240705', '2024', '07', '05', '星期五', '27', '20243', '2024-27', '202407', '20240701', '20240707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-06', '20240706', '2024', '07', '06', '星期六', '27', '20243', '2024-27', '202407', '20240701', '20240707', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-07', '20240707', '2024', '07', '07', '星期日', '27', '20243', '2024-27', '202407', '20240708', '20240714', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-08', '20240708', '2024', '07', '08', '星期一', '28', '20243', '2024-28', '202407', '20240708', '20240714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-09', '20240709', '2024', '07', '09', '星期二', '28', '20243', '2024-28', '202407', '20240708', '20240714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-10', '20240710', '2024', '07', '10', '星期三', '28', '20243', '2024-28', '202407', '20240708', '20240714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-11', '20240711', '2024', '07', '11', '星期四', '28', '20243', '2024-28', '202407', '20240708', '20240714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-12', '20240712', '2024', '07', '12', '星期五', '28', '20243', '2024-28', '202407', '20240708', '20240714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-13', '20240713', '2024', '07', '13', '星期六', '28', '20243', '2024-28', '202407', '20240708', '20240714', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-14', '20240714', '2024', '07', '14', '星期日', '28', '20243', '2024-28', '202407', '20240715', '20240721', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-15', '20240715', '2024', '07', '15', '星期一', '29', '20243', '2024-29', '202407', '20240715', '20240721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-16', '20240716', '2024', '07', '16', '星期二', '29', '20243', '2024-29', '202407', '20240715', '20240721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-17', '20240717', '2024', '07', '17', '星期三', '29', '20243', '2024-29', '202407', '20240715', '20240721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-18', '20240718', '2024', '07', '18', '星期四', '29', '20243', '2024-29', '202407', '20240715', '20240721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-19', '20240719', '2024', '07', '19', '星期五', '29', '20243', '2024-29', '202407', '20240715', '20240721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-20', '20240720', '2024', '07', '20', '星期六', '29', '20243', '2024-29', '202407', '20240715', '20240721', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-21', '20240721', '2024', '07', '21', '星期日', '29', '20243', '2024-29', '202407', '20240722', '20240728', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-22', '20240722', '2024', '07', '22', '星期一', '30', '20243', '2024-30', '202407', '20240722', '20240728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-23', '20240723', '2024', '07', '23', '星期二', '30', '20243', '2024-30', '202407', '20240722', '20240728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-24', '20240724', '2024', '07', '24', '星期三', '30', '20243', '2024-30', '202407', '20240722', '20240728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-25', '20240725', '2024', '07', '25', '星期四', '30', '20243', '2024-30', '202407', '20240722', '20240728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-26', '20240726', '2024', '07', '26', '星期五', '30', '20243', '2024-30', '202407', '20240722', '20240728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-27', '20240727', '2024', '07', '27', '星期六', '30', '20243', '2024-30', '202407', '20240722', '20240728', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-28', '20240728', '2024', '07', '28', '星期日', '30', '20243', '2024-30', '202407', '20240729', '20240804', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-29', '20240729', '2024', '07', '29', '星期一', '31', '20243', '2024-31', '202407', '20240729', '20240804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-30', '20240730', '2024', '07', '30', '星期二', '31', '20243', '2024-31', '202407', '20240729', '20240804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-07-31', '20240731', '2024', '07', '31', '星期三', '31', '20243', '2024-31', '202407', '20240729', '20240804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-01', '20240801', '2024', '08', '01', '星期四', '31', '20243', '2024-31', '202408', '20240729', '20240804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-02', '20240802', '2024', '08', '02', '星期五', '31', '20243', '2024-31', '202408', '20240729', '20240804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-03', '20240803', '2024', '08', '03', '星期六', '31', '20243', '2024-31', '202408', '20240729', '20240804', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-04', '20240804', '2024', '08', '04', '星期日', '31', '20243', '2024-31', '202408', '20240805', '20240811', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-05', '20240805', '2024', '08', '05', '星期一', '32', '20243', '2024-32', '202408', '20240805', '20240811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-06', '20240806', '2024', '08', '06', '星期二', '32', '20243', '2024-32', '202408', '20240805', '20240811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-07', '20240807', '2024', '08', '07', '星期三', '32', '20243', '2024-32', '202408', '20240805', '20240811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-08', '20240808', '2024', '08', '08', '星期四', '32', '20243', '2024-32', '202408', '20240805', '20240811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-09', '20240809', '2024', '08', '09', '星期五', '32', '20243', '2024-32', '202408', '20240805', '20240811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-10', '20240810', '2024', '08', '10', '星期六', '32', '20243', '2024-32', '202408', '20240805', '20240811', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-11', '20240811', '2024', '08', '11', '星期日', '32', '20243', '2024-32', '202408', '20240812', '20240818', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-12', '20240812', '2024', '08', '12', '星期一', '33', '20243', '2024-33', '202408', '20240812', '20240818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-13', '20240813', '2024', '08', '13', '星期二', '33', '20243', '2024-33', '202408', '20240812', '20240818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-14', '20240814', '2024', '08', '14', '星期三', '33', '20243', '2024-33', '202408', '20240812', '20240818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-15', '20240815', '2024', '08', '15', '星期四', '33', '20243', '2024-33', '202408', '20240812', '20240818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-16', '20240816', '2024', '08', '16', '星期五', '33', '20243', '2024-33', '202408', '20240812', '20240818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-17', '20240817', '2024', '08', '17', '星期六', '33', '20243', '2024-33', '202408', '20240812', '20240818', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-18', '20240818', '2024', '08', '18', '星期日', '33', '20243', '2024-33', '202408', '20240819', '20240825', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-19', '20240819', '2024', '08', '19', '星期一', '34', '20243', '2024-34', '202408', '20240819', '20240825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-20', '20240820', '2024', '08', '20', '星期二', '34', '20243', '2024-34', '202408', '20240819', '20240825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-21', '20240821', '2024', '08', '21', '星期三', '34', '20243', '2024-34', '202408', '20240819', '20240825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-22', '20240822', '2024', '08', '22', '星期四', '34', '20243', '2024-34', '202408', '20240819', '20240825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-23', '20240823', '2024', '08', '23', '星期五', '34', '20243', '2024-34', '202408', '20240819', '20240825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-24', '20240824', '2024', '08', '24', '星期六', '34', '20243', '2024-34', '202408', '20240819', '20240825', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-25', '20240825', '2024', '08', '25', '星期日', '34', '20243', '2024-34', '202408', '20240826', '20240901', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-26', '20240826', '2024', '08', '26', '星期一', '35', '20243', '2024-35', '202408', '20240826', '20240901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-27', '20240827', '2024', '08', '27', '星期二', '35', '20243', '2024-35', '202408', '20240826', '20240901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-28', '20240828', '2024', '08', '28', '星期三', '35', '20243', '2024-35', '202408', '20240826', '20240901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-29', '20240829', '2024', '08', '29', '星期四', '35', '20243', '2024-35', '202408', '20240826', '20240901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-30', '20240830', '2024', '08', '30', '星期五', '35', '20243', '2024-35', '202408', '20240826', '20240901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-08-31', '20240831', '2024', '08', '31', '星期六', '35', '20243', '2024-35', '202408', '20240826', '20240901', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-01', '20240901', '2024', '09', '01', '星期日', '35', '20243', '2024-35', '202409', '20240902', '20240908', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-02', '20240902', '2024', '09', '02', '星期一', '36', '20243', '2024-36', '202409', '20240902', '20240908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-03', '20240903', '2024', '09', '03', '星期二', '36', '20243', '2024-36', '202409', '20240902', '20240908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-04', '20240904', '2024', '09', '04', '星期三', '36', '20243', '2024-36', '202409', '20240902', '20240908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-05', '20240905', '2024', '09', '05', '星期四', '36', '20243', '2024-36', '202409', '20240902', '20240908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-06', '20240906', '2024', '09', '06', '星期五', '36', '20243', '2024-36', '202409', '20240902', '20240908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-07', '20240907', '2024', '09', '07', '星期六', '36', '20243', '2024-36', '202409', '20240902', '20240908', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-08', '20240908', '2024', '09', '08', '星期日', '36', '20243', '2024-36', '202409', '20240909', '20240915', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-09', '20240909', '2024', '09', '09', '星期一', '37', '20243', '2024-37', '202409', '20240909', '20240915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-10', '20240910', '2024', '09', '10', '星期二', '37', '20243', '2024-37', '202409', '20240909', '20240915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-11', '20240911', '2024', '09', '11', '星期三', '37', '20243', '2024-37', '202409', '20240909', '20240915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-12', '20240912', '2024', '09', '12', '星期四', '37', '20243', '2024-37', '202409', '20240909', '20240915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-13', '20240913', '2024', '09', '13', '星期五', '37', '20243', '2024-37', '202409', '20240909', '20240915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-14', '20240914', '2024', '09', '14', '星期六', '37', '20243', '2024-37', '202409', '20240909', '20240915', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-15', '20240915', '2024', '09', '15', '星期日', '37', '20243', '2024-37', '202409', '20240916', '20240922', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-16', '20240916', '2024', '09', '16', '星期一', '38', '20243', '2024-38', '202409', '20240916', '20240922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-17', '20240917', '2024', '09', '17', '星期二', '38', '20243', '2024-38', '202409', '20240916', '20240922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-18', '20240918', '2024', '09', '18', '星期三', '38', '20243', '2024-38', '202409', '20240916', '20240922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-19', '20240919', '2024', '09', '19', '星期四', '38', '20243', '2024-38', '202409', '20240916', '20240922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-20', '20240920', '2024', '09', '20', '星期五', '38', '20243', '2024-38', '202409', '20240916', '20240922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-21', '20240921', '2024', '09', '21', '星期六', '38', '20243', '2024-38', '202409', '20240916', '20240922', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-22', '20240922', '2024', '09', '22', '星期日', '38', '20243', '2024-38', '202409', '20240923', '20240929', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-23', '20240923', '2024', '09', '23', '星期一', '39', '20243', '2024-39', '202409', '20240923', '20240929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-24', '20240924', '2024', '09', '24', '星期二', '39', '20243', '2024-39', '202409', '20240923', '20240929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-25', '20240925', '2024', '09', '25', '星期三', '39', '20243', '2024-39', '202409', '20240923', '20240929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-26', '20240926', '2024', '09', '26', '星期四', '39', '20243', '2024-39', '202409', '20240923', '20240929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-27', '20240927', '2024', '09', '27', '星期五', '39', '20243', '2024-39', '202409', '20240923', '20240929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-28', '20240928', '2024', '09', '28', '星期六', '39', '20243', '2024-39', '202409', '20240923', '20240929', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-29', '20240929', '2024', '09', '29', '星期日', '39', '20243', '2024-39', '202409', '20240930', '20241006', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-09-30', '20240930', '2024', '09', '30', '星期一', '40', '20243', '2024-40', '202409', '20240930', '20241006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-01', '20241001', '2024', '10', '01', '星期二', '40', '20244', '2024-40', '202410', '20240930', '20241006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-02', '20241002', '2024', '10', '02', '星期三', '40', '20244', '2024-40', '202410', '20240930', '20241006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-03', '20241003', '2024', '10', '03', '星期四', '40', '20244', '2024-40', '202410', '20240930', '20241006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-04', '20241004', '2024', '10', '04', '星期五', '40', '20244', '2024-40', '202410', '20240930', '20241006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-05', '20241005', '2024', '10', '05', '星期六', '40', '20244', '2024-40', '202410', '20240930', '20241006', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-06', '20241006', '2024', '10', '06', '星期日', '40', '20244', '2024-40', '202410', '20241007', '20241013', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-07', '20241007', '2024', '10', '07', '星期一', '41', '20244', '2024-41', '202410', '20241007', '20241013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-08', '20241008', '2024', '10', '08', '星期二', '41', '20244', '2024-41', '202410', '20241007', '20241013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-09', '20241009', '2024', '10', '09', '星期三', '41', '20244', '2024-41', '202410', '20241007', '20241013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-10', '20241010', '2024', '10', '10', '星期四', '41', '20244', '2024-41', '202410', '20241007', '20241013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-11', '20241011', '2024', '10', '11', '星期五', '41', '20244', '2024-41', '202410', '20241007', '20241013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-12', '20241012', '2024', '10', '12', '星期六', '41', '20244', '2024-41', '202410', '20241007', '20241013', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-13', '20241013', '2024', '10', '13', '星期日', '41', '20244', '2024-41', '202410', '20241014', '20241020', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-14', '20241014', '2024', '10', '14', '星期一', '42', '20244', '2024-42', '202410', '20241014', '20241020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-15', '20241015', '2024', '10', '15', '星期二', '42', '20244', '2024-42', '202410', '20241014', '20241020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-16', '20241016', '2024', '10', '16', '星期三', '42', '20244', '2024-42', '202410', '20241014', '20241020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-17', '20241017', '2024', '10', '17', '星期四', '42', '20244', '2024-42', '202410', '20241014', '20241020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-18', '20241018', '2024', '10', '18', '星期五', '42', '20244', '2024-42', '202410', '20241014', '20241020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-19', '20241019', '2024', '10', '19', '星期六', '42', '20244', '2024-42', '202410', '20241014', '20241020', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-20', '20241020', '2024', '10', '20', '星期日', '42', '20244', '2024-42', '202410', '20241021', '20241027', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-21', '20241021', '2024', '10', '21', '星期一', '43', '20244', '2024-43', '202410', '20241021', '20241027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-22', '20241022', '2024', '10', '22', '星期二', '43', '20244', '2024-43', '202410', '20241021', '20241027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-23', '20241023', '2024', '10', '23', '星期三', '43', '20244', '2024-43', '202410', '20241021', '20241027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-24', '20241024', '2024', '10', '24', '星期四', '43', '20244', '2024-43', '202410', '20241021', '20241027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-25', '20241025', '2024', '10', '25', '星期五', '43', '20244', '2024-43', '202410', '20241021', '20241027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-26', '20241026', '2024', '10', '26', '星期六', '43', '20244', '2024-43', '202410', '20241021', '20241027', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-27', '20241027', '2024', '10', '27', '星期日', '43', '20244', '2024-43', '202410', '20241028', '20241103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-28', '20241028', '2024', '10', '28', '星期一', '44', '20244', '2024-44', '202410', '20241028', '20241103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-29', '20241029', '2024', '10', '29', '星期二', '44', '20244', '2024-44', '202410', '20241028', '20241103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-30', '20241030', '2024', '10', '30', '星期三', '44', '20244', '2024-44', '202410', '20241028', '20241103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-10-31', '20241031', '2024', '10', '31', '星期四', '44', '20244', '2024-44', '202410', '20241028', '20241103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-01', '20241101', '2024', '11', '01', '星期五', '44', '20244', '2024-44', '202411', '20241028', '20241103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-02', '20241102', '2024', '11', '02', '星期六', '44', '20244', '2024-44', '202411', '20241028', '20241103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-03', '20241103', '2024', '11', '03', '星期日', '44', '20244', '2024-44', '202411', '20241104', '20241110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-04', '20241104', '2024', '11', '04', '星期一', '45', '20244', '2024-45', '202411', '20241104', '20241110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-05', '20241105', '2024', '11', '05', '星期二', '45', '20244', '2024-45', '202411', '20241104', '20241110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-06', '20241106', '2024', '11', '06', '星期三', '45', '20244', '2024-45', '202411', '20241104', '20241110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-07', '20241107', '2024', '11', '07', '星期四', '45', '20244', '2024-45', '202411', '20241104', '20241110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-08', '20241108', '2024', '11', '08', '星期五', '45', '20244', '2024-45', '202411', '20241104', '20241110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-09', '20241109', '2024', '11', '09', '星期六', '45', '20244', '2024-45', '202411', '20241104', '20241110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-10', '20241110', '2024', '11', '10', '星期日', '45', '20244', '2024-45', '202411', '20241111', '20241117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-11', '20241111', '2024', '11', '11', '星期一', '46', '20244', '2024-46', '202411', '20241111', '20241117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-12', '20241112', '2024', '11', '12', '星期二', '46', '20244', '2024-46', '202411', '20241111', '20241117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-13', '20241113', '2024', '11', '13', '星期三', '46', '20244', '2024-46', '202411', '20241111', '20241117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-14', '20241114', '2024', '11', '14', '星期四', '46', '20244', '2024-46', '202411', '20241111', '20241117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-15', '20241115', '2024', '11', '15', '星期五', '46', '20244', '2024-46', '202411', '20241111', '20241117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-16', '20241116', '2024', '11', '16', '星期六', '46', '20244', '2024-46', '202411', '20241111', '20241117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-17', '20241117', '2024', '11', '17', '星期日', '46', '20244', '2024-46', '202411', '20241118', '20241124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-18', '20241118', '2024', '11', '18', '星期一', '47', '20244', '2024-47', '202411', '20241118', '20241124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-19', '20241119', '2024', '11', '19', '星期二', '47', '20244', '2024-47', '202411', '20241118', '20241124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-20', '20241120', '2024', '11', '20', '星期三', '47', '20244', '2024-47', '202411', '20241118', '20241124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-21', '20241121', '2024', '11', '21', '星期四', '47', '20244', '2024-47', '202411', '20241118', '20241124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-22', '20241122', '2024', '11', '22', '星期五', '47', '20244', '2024-47', '202411', '20241118', '20241124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-23', '20241123', '2024', '11', '23', '星期六', '47', '20244', '2024-47', '202411', '20241118', '20241124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-24', '20241124', '2024', '11', '24', '星期日', '47', '20244', '2024-47', '202411', '20241125', '20241201', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-25', '20241125', '2024', '11', '25', '星期一', '48', '20244', '2024-48', '202411', '20241125', '20241201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-26', '20241126', '2024', '11', '26', '星期二', '48', '20244', '2024-48', '202411', '20241125', '20241201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-27', '20241127', '2024', '11', '27', '星期三', '48', '20244', '2024-48', '202411', '20241125', '20241201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-28', '20241128', '2024', '11', '28', '星期四', '48', '20244', '2024-48', '202411', '20241125', '20241201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-29', '20241129', '2024', '11', '29', '星期五', '48', '20244', '2024-48', '202411', '20241125', '20241201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-11-30', '20241130', '2024', '11', '30', '星期六', '48', '20244', '2024-48', '202411', '20241125', '20241201', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-01', '20241201', '2024', '12', '01', '星期日', '48', '20244', '2024-48', '202412', '20241202', '20241208', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-02', '20241202', '2024', '12', '02', '星期一', '49', '20244', '2024-49', '202412', '20241202', '20241208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-03', '20241203', '2024', '12', '03', '星期二', '49', '20244', '2024-49', '202412', '20241202', '20241208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-04', '20241204', '2024', '12', '04', '星期三', '49', '20244', '2024-49', '202412', '20241202', '20241208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-05', '20241205', '2024', '12', '05', '星期四', '49', '20244', '2024-49', '202412', '20241202', '20241208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-06', '20241206', '2024', '12', '06', '星期五', '49', '20244', '2024-49', '202412', '20241202', '20241208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-07', '20241207', '2024', '12', '07', '星期六', '49', '20244', '2024-49', '202412', '20241202', '20241208', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-08', '20241208', '2024', '12', '08', '星期日', '49', '20244', '2024-49', '202412', '20241209', '20241215', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-09', '20241209', '2024', '12', '09', '星期一', '50', '20244', '2024-50', '202412', '20241209', '20241215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-10', '20241210', '2024', '12', '10', '星期二', '50', '20244', '2024-50', '202412', '20241209', '20241215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-11', '20241211', '2024', '12', '11', '星期三', '50', '20244', '2024-50', '202412', '20241209', '20241215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-12', '20241212', '2024', '12', '12', '星期四', '50', '20244', '2024-50', '202412', '20241209', '20241215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-13', '20241213', '2024', '12', '13', '星期五', '50', '20244', '2024-50', '202412', '20241209', '20241215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-14', '20241214', '2024', '12', '14', '星期六', '50', '20244', '2024-50', '202412', '20241209', '20241215', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-15', '20241215', '2024', '12', '15', '星期日', '50', '20244', '2024-50', '202412', '20241216', '20241222', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-16', '20241216', '2024', '12', '16', '星期一', '51', '20244', '2024-51', '202412', '20241216', '20241222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-17', '20241217', '2024', '12', '17', '星期二', '51', '20244', '2024-51', '202412', '20241216', '20241222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-18', '20241218', '2024', '12', '18', '星期三', '51', '20244', '2024-51', '202412', '20241216', '20241222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-19', '20241219', '2024', '12', '19', '星期四', '51', '20244', '2024-51', '202412', '20241216', '20241222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-20', '20241220', '2024', '12', '20', '星期五', '51', '20244', '2024-51', '202412', '20241216', '20241222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-21', '20241221', '2024', '12', '21', '星期六', '51', '20244', '2024-51', '202412', '20241216', '20241222', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-22', '20241222', '2024', '12', '22', '星期日', '51', '20244', '2024-51', '202412', '20241223', '20241229', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-23', '20241223', '2024', '12', '23', '星期一', '52', '20244', '2024-52', '202412', '20241223', '20241229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-24', '20241224', '2024', '12', '24', '星期二', '52', '20244', '2024-52', '202412', '20241223', '20241229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-25', '20241225', '2024', '12', '25', '星期三', '52', '20244', '2024-52', '202412', '20241223', '20241229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-26', '20241226', '2024', '12', '26', '星期四', '52', '20244', '2024-52', '202412', '20241223', '20241229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-27', '20241227', '2024', '12', '27', '星期五', '52', '20244', '2024-52', '202412', '20241223', '20241229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-28', '20241228', '2024', '12', '28', '星期六', '52', '20244', '2024-52', '202412', '20241223', '20241229', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-29', '20241229', '2024', '12', '29', '星期日', '52', '20244', '2024-52', '202412', '20241230', '20250105', '1');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-30', '20241230', '2024', '12', '30', '星期一', '53', '20244', '2024-53', '202412', '20241230', '20250105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2024-12-31', '20241231', '2024', '12', '31', '星期二', '53', '20244', '2024-53', '202412', '20241230', '20250105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-01', '20250101', '2025', '01', '01', '星期三', '01', '20251', '2025-01', '202501', '20241230', '20250105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-02', '20250102', '2025', '01', '02', '星期四', '01', '20251', '2025-01', '202501', '20241230', '20250105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-03', '20250103', '2025', '01', '03', '星期五', '01', '20251', '2025-01', '202501', '20241230', '20250105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-04', '20250104', '2025', '01', '04', '星期六', '01', '20251', '2025-01', '202501', '20241230', '20250105', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-05', '20250105', '2025', '01', '05', '星期日', '01', '20251', '2025-01', '202501', '20250106', '20250112', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-06', '20250106', '2025', '01', '06', '星期一', '02', '20251', '2025-02', '202501', '20250106', '20250112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-07', '20250107', '2025', '01', '07', '星期二', '02', '20251', '2025-02', '202501', '20250106', '20250112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-08', '20250108', '2025', '01', '08', '星期三', '02', '20251', '2025-02', '202501', '20250106', '20250112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-09', '20250109', '2025', '01', '09', '星期四', '02', '20251', '2025-02', '202501', '20250106', '20250112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-10', '20250110', '2025', '01', '10', '星期五', '02', '20251', '2025-02', '202501', '20250106', '20250112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-11', '20250111', '2025', '01', '11', '星期六', '02', '20251', '2025-02', '202501', '20250106', '20250112', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-12', '20250112', '2025', '01', '12', '星期日', '02', '20251', '2025-02', '202501', '20250113', '20250119', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-13', '20250113', '2025', '01', '13', '星期一', '03', '20251', '2025-03', '202501', '20250113', '20250119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-14', '20250114', '2025', '01', '14', '星期二', '03', '20251', '2025-03', '202501', '20250113', '20250119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-15', '20250115', '2025', '01', '15', '星期三', '03', '20251', '2025-03', '202501', '20250113', '20250119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-16', '20250116', '2025', '01', '16', '星期四', '03', '20251', '2025-03', '202501', '20250113', '20250119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-17', '20250117', '2025', '01', '17', '星期五', '03', '20251', '2025-03', '202501', '20250113', '20250119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-18', '20250118', '2025', '01', '18', '星期六', '03', '20251', '2025-03', '202501', '20250113', '20250119', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-19', '20250119', '2025', '01', '19', '星期日', '03', '20251', '2025-03', '202501', '20250120', '20250126', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-20', '20250120', '2025', '01', '20', '星期一', '04', '20251', '2025-04', '202501', '20250120', '20250126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-21', '20250121', '2025', '01', '21', '星期二', '04', '20251', '2025-04', '202501', '20250120', '20250126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-22', '20250122', '2025', '01', '22', '星期三', '04', '20251', '2025-04', '202501', '20250120', '20250126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-23', '20250123', '2025', '01', '23', '星期四', '04', '20251', '2025-04', '202501', '20250120', '20250126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-24', '20250124', '2025', '01', '24', '星期五', '04', '20251', '2025-04', '202501', '20250120', '20250126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-25', '20250125', '2025', '01', '25', '星期六', '04', '20251', '2025-04', '202501', '20250120', '20250126', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-26', '20250126', '2025', '01', '26', '星期日', '04', '20251', '2025-04', '202501', '20250127', '20250202', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-27', '20250127', '2025', '01', '27', '星期一', '05', '20251', '2025-05', '202501', '20250127', '20250202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-28', '20250128', '2025', '01', '28', '星期二', '05', '20251', '2025-05', '202501', '20250127', '20250202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-29', '20250129', '2025', '01', '29', '星期三', '05', '20251', '2025-05', '202501', '20250127', '20250202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-30', '20250130', '2025', '01', '30', '星期四', '05', '20251', '2025-05', '202501', '20250127', '20250202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-01-31', '20250131', '2025', '01', '31', '星期五', '05', '20251', '2025-05', '202501', '20250127', '20250202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-01', '20250201', '2025', '02', '01', '星期六', '05', '20251', '2025-05', '202502', '20250127', '20250202', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-02', '20250202', '2025', '02', '02', '星期日', '05', '20251', '2025-05', '202502', '20250203', '20250209', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-03', '20250203', '2025', '02', '03', '星期一', '06', '20251', '2025-06', '202502', '20250203', '20250209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-04', '20250204', '2025', '02', '04', '星期二', '06', '20251', '2025-06', '202502', '20250203', '20250209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-05', '20250205', '2025', '02', '05', '星期三', '06', '20251', '2025-06', '202502', '20250203', '20250209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-06', '20250206', '2025', '02', '06', '星期四', '06', '20251', '2025-06', '202502', '20250203', '20250209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-07', '20250207', '2025', '02', '07', '星期五', '06', '20251', '2025-06', '202502', '20250203', '20250209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-08', '20250208', '2025', '02', '08', '星期六', '06', '20251', '2025-06', '202502', '20250203', '20250209', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-09', '20250209', '2025', '02', '09', '星期日', '06', '20251', '2025-06', '202502', '20250210', '20250216', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-10', '20250210', '2025', '02', '10', '星期一', '07', '20251', '2025-07', '202502', '20250210', '20250216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-11', '20250211', '2025', '02', '11', '星期二', '07', '20251', '2025-07', '202502', '20250210', '20250216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-12', '20250212', '2025', '02', '12', '星期三', '07', '20251', '2025-07', '202502', '20250210', '20250216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-13', '20250213', '2025', '02', '13', '星期四', '07', '20251', '2025-07', '202502', '20250210', '20250216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-14', '20250214', '2025', '02', '14', '星期五', '07', '20251', '2025-07', '202502', '20250210', '20250216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-15', '20250215', '2025', '02', '15', '星期六', '07', '20251', '2025-07', '202502', '20250210', '20250216', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-16', '20250216', '2025', '02', '16', '星期日', '07', '20251', '2025-07', '202502', '20250217', '20250223', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-17', '20250217', '2025', '02', '17', '星期一', '08', '20251', '2025-08', '202502', '20250217', '20250223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-18', '20250218', '2025', '02', '18', '星期二', '08', '20251', '2025-08', '202502', '20250217', '20250223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-19', '20250219', '2025', '02', '19', '星期三', '08', '20251', '2025-08', '202502', '20250217', '20250223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-20', '20250220', '2025', '02', '20', '星期四', '08', '20251', '2025-08', '202502', '20250217', '20250223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-21', '20250221', '2025', '02', '21', '星期五', '08', '20251', '2025-08', '202502', '20250217', '20250223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-22', '20250222', '2025', '02', '22', '星期六', '08', '20251', '2025-08', '202502', '20250217', '20250223', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-23', '20250223', '2025', '02', '23', '星期日', '08', '20251', '2025-08', '202502', '20250224', '20250302', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-24', '20250224', '2025', '02', '24', '星期一', '09', '20251', '2025-09', '202502', '20250224', '20250302', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-25', '20250225', '2025', '02', '25', '星期二', '09', '20251', '2025-09', '202502', '20250224', '20250302', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-26', '20250226', '2025', '02', '26', '星期三', '09', '20251', '2025-09', '202502', '20250224', '20250302', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-27', '20250227', '2025', '02', '27', '星期四', '09', '20251', '2025-09', '202502', '20250224', '20250302', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-02-28', '20250228', '2025', '02', '28', '星期五', '09', '20251', '2025-09', '202502', '20250224', '20250302', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-01', '20250301', '2025', '03', '01', '星期六', '09', '20251', '2025-09', '202503', '20250224', '20250302', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-02', '20250302', '2025', '03', '02', '星期日', '09', '20251', '2025-09', '202503', '20250303', '20250309', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-03', '20250303', '2025', '03', '03', '星期一', '10', '20251', '2025-10', '202503', '20250303', '20250309', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-04', '20250304', '2025', '03', '04', '星期二', '10', '20251', '2025-10', '202503', '20250303', '20250309', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-05', '20250305', '2025', '03', '05', '星期三', '10', '20251', '2025-10', '202503', '20250303', '20250309', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-06', '20250306', '2025', '03', '06', '星期四', '10', '20251', '2025-10', '202503', '20250303', '20250309', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-07', '20250307', '2025', '03', '07', '星期五', '10', '20251', '2025-10', '202503', '20250303', '20250309', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-08', '20250308', '2025', '03', '08', '星期六', '10', '20251', '2025-10', '202503', '20250303', '20250309', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-09', '20250309', '2025', '03', '09', '星期日', '10', '20251', '2025-10', '202503', '20250310', '20250316', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-10', '20250310', '2025', '03', '10', '星期一', '11', '20251', '2025-11', '202503', '20250310', '20250316', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-11', '20250311', '2025', '03', '11', '星期二', '11', '20251', '2025-11', '202503', '20250310', '20250316', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-12', '20250312', '2025', '03', '12', '星期三', '11', '20251', '2025-11', '202503', '20250310', '20250316', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-13', '20250313', '2025', '03', '13', '星期四', '11', '20251', '2025-11', '202503', '20250310', '20250316', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-14', '20250314', '2025', '03', '14', '星期五', '11', '20251', '2025-11', '202503', '20250310', '20250316', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-15', '20250315', '2025', '03', '15', '星期六', '11', '20251', '2025-11', '202503', '20250310', '20250316', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-16', '20250316', '2025', '03', '16', '星期日', '11', '20251', '2025-11', '202503', '20250317', '20250323', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-17', '20250317', '2025', '03', '17', '星期一', '12', '20251', '2025-12', '202503', '20250317', '20250323', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-18', '20250318', '2025', '03', '18', '星期二', '12', '20251', '2025-12', '202503', '20250317', '20250323', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-19', '20250319', '2025', '03', '19', '星期三', '12', '20251', '2025-12', '202503', '20250317', '20250323', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-20', '20250320', '2025', '03', '20', '星期四', '12', '20251', '2025-12', '202503', '20250317', '20250323', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-21', '20250321', '2025', '03', '21', '星期五', '12', '20251', '2025-12', '202503', '20250317', '20250323', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-22', '20250322', '2025', '03', '22', '星期六', '12', '20251', '2025-12', '202503', '20250317', '20250323', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-23', '20250323', '2025', '03', '23', '星期日', '12', '20251', '2025-12', '202503', '20250324', '20250330', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-24', '20250324', '2025', '03', '24', '星期一', '13', '20251', '2025-13', '202503', '20250324', '20250330', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-25', '20250325', '2025', '03', '25', '星期二', '13', '20251', '2025-13', '202503', '20250324', '20250330', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-26', '20250326', '2025', '03', '26', '星期三', '13', '20251', '2025-13', '202503', '20250324', '20250330', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-27', '20250327', '2025', '03', '27', '星期四', '13', '20251', '2025-13', '202503', '20250324', '20250330', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-28', '20250328', '2025', '03', '28', '星期五', '13', '20251', '2025-13', '202503', '20250324', '20250330', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-29', '20250329', '2025', '03', '29', '星期六', '13', '20251', '2025-13', '202503', '20250324', '20250330', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-30', '20250330', '2025', '03', '30', '星期日', '13', '20251', '2025-13', '202503', '20250331', '20250406', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-03-31', '20250331', '2025', '03', '31', '星期一', '14', '20251', '2025-14', '202503', '20250331', '20250406', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-01', '20250401', '2025', '04', '01', '星期二', '14', '20252', '2025-14', '202504', '20250331', '20250406', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-02', '20250402', '2025', '04', '02', '星期三', '14', '20252', '2025-14', '202504', '20250331', '20250406', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-03', '20250403', '2025', '04', '03', '星期四', '14', '20252', '2025-14', '202504', '20250331', '20250406', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-04', '20250404', '2025', '04', '04', '星期五', '14', '20252', '2025-14', '202504', '20250331', '20250406', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-05', '20250405', '2025', '04', '05', '星期六', '14', '20252', '2025-14', '202504', '20250331', '20250406', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-06', '20250406', '2025', '04', '06', '星期日', '14', '20252', '2025-14', '202504', '20250407', '20250413', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-07', '20250407', '2025', '04', '07', '星期一', '15', '20252', '2025-15', '202504', '20250407', '20250413', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-08', '20250408', '2025', '04', '08', '星期二', '15', '20252', '2025-15', '202504', '20250407', '20250413', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-09', '20250409', '2025', '04', '09', '星期三', '15', '20252', '2025-15', '202504', '20250407', '20250413', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-10', '20250410', '2025', '04', '10', '星期四', '15', '20252', '2025-15', '202504', '20250407', '20250413', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-11', '20250411', '2025', '04', '11', '星期五', '15', '20252', '2025-15', '202504', '20250407', '20250413', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-12', '20250412', '2025', '04', '12', '星期六', '15', '20252', '2025-15', '202504', '20250407', '20250413', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-13', '20250413', '2025', '04', '13', '星期日', '15', '20252', '2025-15', '202504', '20250414', '20250420', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-14', '20250414', '2025', '04', '14', '星期一', '16', '20252', '2025-16', '202504', '20250414', '20250420', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-15', '20250415', '2025', '04', '15', '星期二', '16', '20252', '2025-16', '202504', '20250414', '20250420', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-16', '20250416', '2025', '04', '16', '星期三', '16', '20252', '2025-16', '202504', '20250414', '20250420', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-17', '20250417', '2025', '04', '17', '星期四', '16', '20252', '2025-16', '202504', '20250414', '20250420', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-18', '20250418', '2025', '04', '18', '星期五', '16', '20252', '2025-16', '202504', '20250414', '20250420', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-19', '20250419', '2025', '04', '19', '星期六', '16', '20252', '2025-16', '202504', '20250414', '20250420', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-20', '20250420', '2025', '04', '20', '星期日', '16', '20252', '2025-16', '202504', '20250421', '20250427', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-21', '20250421', '2025', '04', '21', '星期一', '17', '20252', '2025-17', '202504', '20250421', '20250427', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-22', '20250422', '2025', '04', '22', '星期二', '17', '20252', '2025-17', '202504', '20250421', '20250427', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-23', '20250423', '2025', '04', '23', '星期三', '17', '20252', '2025-17', '202504', '20250421', '20250427', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-24', '20250424', '2025', '04', '24', '星期四', '17', '20252', '2025-17', '202504', '20250421', '20250427', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-25', '20250425', '2025', '04', '25', '星期五', '17', '20252', '2025-17', '202504', '20250421', '20250427', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-26', '20250426', '2025', '04', '26', '星期六', '17', '20252', '2025-17', '202504', '20250421', '20250427', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-27', '20250427', '2025', '04', '27', '星期日', '17', '20252', '2025-17', '202504', '20250428', '20250504', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-28', '20250428', '2025', '04', '28', '星期一', '18', '20252', '2025-18', '202504', '20250428', '20250504', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-29', '20250429', '2025', '04', '29', '星期二', '18', '20252', '2025-18', '202504', '20250428', '20250504', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-04-30', '20250430', '2025', '04', '30', '星期三', '18', '20252', '2025-18', '202504', '20250428', '20250504', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-01', '20250501', '2025', '05', '01', '星期四', '18', '20252', '2025-18', '202505', '20250428', '20250504', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-02', '20250502', '2025', '05', '02', '星期五', '18', '20252', '2025-18', '202505', '20250428', '20250504', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-03', '20250503', '2025', '05', '03', '星期六', '18', '20252', '2025-18', '202505', '20250428', '20250504', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-04', '20250504', '2025', '05', '04', '星期日', '18', '20252', '2025-18', '202505', '20250505', '20250511', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-05', '20250505', '2025', '05', '05', '星期一', '19', '20252', '2025-19', '202505', '20250505', '20250511', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-06', '20250506', '2025', '05', '06', '星期二', '19', '20252', '2025-19', '202505', '20250505', '20250511', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-07', '20250507', '2025', '05', '07', '星期三', '19', '20252', '2025-19', '202505', '20250505', '20250511', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-08', '20250508', '2025', '05', '08', '星期四', '19', '20252', '2025-19', '202505', '20250505', '20250511', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-09', '20250509', '2025', '05', '09', '星期五', '19', '20252', '2025-19', '202505', '20250505', '20250511', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-10', '20250510', '2025', '05', '10', '星期六', '19', '20252', '2025-19', '202505', '20250505', '20250511', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-11', '20250511', '2025', '05', '11', '星期日', '19', '20252', '2025-19', '202505', '20250512', '20250518', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-12', '20250512', '2025', '05', '12', '星期一', '20', '20252', '2025-20', '202505', '20250512', '20250518', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-13', '20250513', '2025', '05', '13', '星期二', '20', '20252', '2025-20', '202505', '20250512', '20250518', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-14', '20250514', '2025', '05', '14', '星期三', '20', '20252', '2025-20', '202505', '20250512', '20250518', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-15', '20250515', '2025', '05', '15', '星期四', '20', '20252', '2025-20', '202505', '20250512', '20250518', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-16', '20250516', '2025', '05', '16', '星期五', '20', '20252', '2025-20', '202505', '20250512', '20250518', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-17', '20250517', '2025', '05', '17', '星期六', '20', '20252', '2025-20', '202505', '20250512', '20250518', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-18', '20250518', '2025', '05', '18', '星期日', '20', '20252', '2025-20', '202505', '20250519', '20250525', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-19', '20250519', '2025', '05', '19', '星期一', '21', '20252', '2025-21', '202505', '20250519', '20250525', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-20', '20250520', '2025', '05', '20', '星期二', '21', '20252', '2025-21', '202505', '20250519', '20250525', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-21', '20250521', '2025', '05', '21', '星期三', '21', '20252', '2025-21', '202505', '20250519', '20250525', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-22', '20250522', '2025', '05', '22', '星期四', '21', '20252', '2025-21', '202505', '20250519', '20250525', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-23', '20250523', '2025', '05', '23', '星期五', '21', '20252', '2025-21', '202505', '20250519', '20250525', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-24', '20250524', '2025', '05', '24', '星期六', '21', '20252', '2025-21', '202505', '20250519', '20250525', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-25', '20250525', '2025', '05', '25', '星期日', '21', '20252', '2025-21', '202505', '20250526', '20250601', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-26', '20250526', '2025', '05', '26', '星期一', '22', '20252', '2025-22', '202505', '20250526', '20250601', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-27', '20250527', '2025', '05', '27', '星期二', '22', '20252', '2025-22', '202505', '20250526', '20250601', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-28', '20250528', '2025', '05', '28', '星期三', '22', '20252', '2025-22', '202505', '20250526', '20250601', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-29', '20250529', '2025', '05', '29', '星期四', '22', '20252', '2025-22', '202505', '20250526', '20250601', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-30', '20250530', '2025', '05', '30', '星期五', '22', '20252', '2025-22', '202505', '20250526', '20250601', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-05-31', '20250531', '2025', '05', '31', '星期六', '22', '20252', '2025-22', '202505', '20250526', '20250601', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-01', '20250601', '2025', '06', '01', '星期日', '22', '20252', '2025-22', '202506', '20250602', '20250608', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-02', '20250602', '2025', '06', '02', '星期一', '23', '20252', '2025-23', '202506', '20250602', '20250608', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-03', '20250603', '2025', '06', '03', '星期二', '23', '20252', '2025-23', '202506', '20250602', '20250608', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-04', '20250604', '2025', '06', '04', '星期三', '23', '20252', '2025-23', '202506', '20250602', '20250608', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-05', '20250605', '2025', '06', '05', '星期四', '23', '20252', '2025-23', '202506', '20250602', '20250608', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-06', '20250606', '2025', '06', '06', '星期五', '23', '20252', '2025-23', '202506', '20250602', '20250608', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-07', '20250607', '2025', '06', '07', '星期六', '23', '20252', '2025-23', '202506', '20250602', '20250608', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-08', '20250608', '2025', '06', '08', '星期日', '23', '20252', '2025-23', '202506', '20250609', '20250615', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-09', '20250609', '2025', '06', '09', '星期一', '24', '20252', '2025-24', '202506', '20250609', '20250615', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-10', '20250610', '2025', '06', '10', '星期二', '24', '20252', '2025-24', '202506', '20250609', '20250615', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-11', '20250611', '2025', '06', '11', '星期三', '24', '20252', '2025-24', '202506', '20250609', '20250615', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-12', '20250612', '2025', '06', '12', '星期四', '24', '20252', '2025-24', '202506', '20250609', '20250615', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-13', '20250613', '2025', '06', '13', '星期五', '24', '20252', '2025-24', '202506', '20250609', '20250615', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-14', '20250614', '2025', '06', '14', '星期六', '24', '20252', '2025-24', '202506', '20250609', '20250615', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-15', '20250615', '2025', '06', '15', '星期日', '24', '20252', '2025-24', '202506', '20250616', '20250622', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-16', '20250616', '2025', '06', '16', '星期一', '25', '20252', '2025-25', '202506', '20250616', '20250622', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-17', '20250617', '2025', '06', '17', '星期二', '25', '20252', '2025-25', '202506', '20250616', '20250622', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-18', '20250618', '2025', '06', '18', '星期三', '25', '20252', '2025-25', '202506', '20250616', '20250622', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-19', '20250619', '2025', '06', '19', '星期四', '25', '20252', '2025-25', '202506', '20250616', '20250622', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-20', '20250620', '2025', '06', '20', '星期五', '25', '20252', '2025-25', '202506', '20250616', '20250622', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-21', '20250621', '2025', '06', '21', '星期六', '25', '20252', '2025-25', '202506', '20250616', '20250622', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-22', '20250622', '2025', '06', '22', '星期日', '25', '20252', '2025-25', '202506', '20250623', '20250629', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-23', '20250623', '2025', '06', '23', '星期一', '26', '20252', '2025-26', '202506', '20250623', '20250629', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-24', '20250624', '2025', '06', '24', '星期二', '26', '20252', '2025-26', '202506', '20250623', '20250629', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-25', '20250625', '2025', '06', '25', '星期三', '26', '20252', '2025-26', '202506', '20250623', '20250629', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-26', '20250626', '2025', '06', '26', '星期四', '26', '20252', '2025-26', '202506', '20250623', '20250629', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-27', '20250627', '2025', '06', '27', '星期五', '26', '20252', '2025-26', '202506', '20250623', '20250629', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-28', '20250628', '2025', '06', '28', '星期六', '26', '20252', '2025-26', '202506', '20250623', '20250629', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-29', '20250629', '2025', '06', '29', '星期日', '26', '20252', '2025-26', '202506', '20250630', '20250706', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-06-30', '20250630', '2025', '06', '30', '星期一', '27', '20252', '2025-27', '202506', '20250630', '20250706', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-01', '20250701', '2025', '07', '01', '星期二', '27', '20253', '2025-27', '202507', '20250630', '20250706', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-02', '20250702', '2025', '07', '02', '星期三', '27', '20253', '2025-27', '202507', '20250630', '20250706', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-03', '20250703', '2025', '07', '03', '星期四', '27', '20253', '2025-27', '202507', '20250630', '20250706', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-04', '20250704', '2025', '07', '04', '星期五', '27', '20253', '2025-27', '202507', '20250630', '20250706', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-05', '20250705', '2025', '07', '05', '星期六', '27', '20253', '2025-27', '202507', '20250630', '20250706', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-06', '20250706', '2025', '07', '06', '星期日', '27', '20253', '2025-27', '202507', '20250707', '20250713', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-07', '20250707', '2025', '07', '07', '星期一', '28', '20253', '2025-28', '202507', '20250707', '20250713', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-08', '20250708', '2025', '07', '08', '星期二', '28', '20253', '2025-28', '202507', '20250707', '20250713', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-09', '20250709', '2025', '07', '09', '星期三', '28', '20253', '2025-28', '202507', '20250707', '20250713', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-10', '20250710', '2025', '07', '10', '星期四', '28', '20253', '2025-28', '202507', '20250707', '20250713', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-11', '20250711', '2025', '07', '11', '星期五', '28', '20253', '2025-28', '202507', '20250707', '20250713', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-12', '20250712', '2025', '07', '12', '星期六', '28', '20253', '2025-28', '202507', '20250707', '20250713', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-13', '20250713', '2025', '07', '13', '星期日', '28', '20253', '2025-28', '202507', '20250714', '20250720', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-14', '20250714', '2025', '07', '14', '星期一', '29', '20253', '2025-29', '202507', '20250714', '20250720', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-15', '20250715', '2025', '07', '15', '星期二', '29', '20253', '2025-29', '202507', '20250714', '20250720', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-16', '20250716', '2025', '07', '16', '星期三', '29', '20253', '2025-29', '202507', '20250714', '20250720', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-17', '20250717', '2025', '07', '17', '星期四', '29', '20253', '2025-29', '202507', '20250714', '20250720', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-18', '20250718', '2025', '07', '18', '星期五', '29', '20253', '2025-29', '202507', '20250714', '20250720', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-19', '20250719', '2025', '07', '19', '星期六', '29', '20253', '2025-29', '202507', '20250714', '20250720', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-20', '20250720', '2025', '07', '20', '星期日', '29', '20253', '2025-29', '202507', '20250721', '20250727', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-21', '20250721', '2025', '07', '21', '星期一', '30', '20253', '2025-30', '202507', '20250721', '20250727', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-22', '20250722', '2025', '07', '22', '星期二', '30', '20253', '2025-30', '202507', '20250721', '20250727', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-23', '20250723', '2025', '07', '23', '星期三', '30', '20253', '2025-30', '202507', '20250721', '20250727', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-24', '20250724', '2025', '07', '24', '星期四', '30', '20253', '2025-30', '202507', '20250721', '20250727', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-25', '20250725', '2025', '07', '25', '星期五', '30', '20253', '2025-30', '202507', '20250721', '20250727', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-26', '20250726', '2025', '07', '26', '星期六', '30', '20253', '2025-30', '202507', '20250721', '20250727', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-27', '20250727', '2025', '07', '27', '星期日', '30', '20253', '2025-30', '202507', '20250728', '20250803', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-28', '20250728', '2025', '07', '28', '星期一', '31', '20253', '2025-31', '202507', '20250728', '20250803', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-29', '20250729', '2025', '07', '29', '星期二', '31', '20253', '2025-31', '202507', '20250728', '20250803', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-30', '20250730', '2025', '07', '30', '星期三', '31', '20253', '2025-31', '202507', '20250728', '20250803', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-07-31', '20250731', '2025', '07', '31', '星期四', '31', '20253', '2025-31', '202507', '20250728', '20250803', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-01', '20250801', '2025', '08', '01', '星期五', '31', '20253', '2025-31', '202508', '20250728', '20250803', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-02', '20250802', '2025', '08', '02', '星期六', '31', '20253', '2025-31', '202508', '20250728', '20250803', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-03', '20250803', '2025', '08', '03', '星期日', '31', '20253', '2025-31', '202508', '20250804', '20250810', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-04', '20250804', '2025', '08', '04', '星期一', '32', '20253', '2025-32', '202508', '20250804', '20250810', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-05', '20250805', '2025', '08', '05', '星期二', '32', '20253', '2025-32', '202508', '20250804', '20250810', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-06', '20250806', '2025', '08', '06', '星期三', '32', '20253', '2025-32', '202508', '20250804', '20250810', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-07', '20250807', '2025', '08', '07', '星期四', '32', '20253', '2025-32', '202508', '20250804', '20250810', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-08', '20250808', '2025', '08', '08', '星期五', '32', '20253', '2025-32', '202508', '20250804', '20250810', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-09', '20250809', '2025', '08', '09', '星期六', '32', '20253', '2025-32', '202508', '20250804', '20250810', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-10', '20250810', '2025', '08', '10', '星期日', '32', '20253', '2025-32', '202508', '20250811', '20250817', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-11', '20250811', '2025', '08', '11', '星期一', '33', '20253', '2025-33', '202508', '20250811', '20250817', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-12', '20250812', '2025', '08', '12', '星期二', '33', '20253', '2025-33', '202508', '20250811', '20250817', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-13', '20250813', '2025', '08', '13', '星期三', '33', '20253', '2025-33', '202508', '20250811', '20250817', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-14', '20250814', '2025', '08', '14', '星期四', '33', '20253', '2025-33', '202508', '20250811', '20250817', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-15', '20250815', '2025', '08', '15', '星期五', '33', '20253', '2025-33', '202508', '20250811', '20250817', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-16', '20250816', '2025', '08', '16', '星期六', '33', '20253', '2025-33', '202508', '20250811', '20250817', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-17', '20250817', '2025', '08', '17', '星期日', '33', '20253', '2025-33', '202508', '20250818', '20250824', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-18', '20250818', '2025', '08', '18', '星期一', '34', '20253', '2025-34', '202508', '20250818', '20250824', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-19', '20250819', '2025', '08', '19', '星期二', '34', '20253', '2025-34', '202508', '20250818', '20250824', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-20', '20250820', '2025', '08', '20', '星期三', '34', '20253', '2025-34', '202508', '20250818', '20250824', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-21', '20250821', '2025', '08', '21', '星期四', '34', '20253', '2025-34', '202508', '20250818', '20250824', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-22', '20250822', '2025', '08', '22', '星期五', '34', '20253', '2025-34', '202508', '20250818', '20250824', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-23', '20250823', '2025', '08', '23', '星期六', '34', '20253', '2025-34', '202508', '20250818', '20250824', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-24', '20250824', '2025', '08', '24', '星期日', '34', '20253', '2025-34', '202508', '20250825', '20250831', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-25', '20250825', '2025', '08', '25', '星期一', '35', '20253', '2025-35', '202508', '20250825', '20250831', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-26', '20250826', '2025', '08', '26', '星期二', '35', '20253', '2025-35', '202508', '20250825', '20250831', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-27', '20250827', '2025', '08', '27', '星期三', '35', '20253', '2025-35', '202508', '20250825', '20250831', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-28', '20250828', '2025', '08', '28', '星期四', '35', '20253', '2025-35', '202508', '20250825', '20250831', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-29', '20250829', '2025', '08', '29', '星期五', '35', '20253', '2025-35', '202508', '20250825', '20250831', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-30', '20250830', '2025', '08', '30', '星期六', '35', '20253', '2025-35', '202508', '20250825', '20250831', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-08-31', '20250831', '2025', '08', '31', '星期日', '35', '20253', '2025-35', '202508', '20250901', '20250907', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-01', '20250901', '2025', '09', '01', '星期一', '36', '20253', '2025-36', '202509', '20250901', '20250907', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-02', '20250902', '2025', '09', '02', '星期二', '36', '20253', '2025-36', '202509', '20250901', '20250907', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-03', '20250903', '2025', '09', '03', '星期三', '36', '20253', '2025-36', '202509', '20250901', '20250907', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-04', '20250904', '2025', '09', '04', '星期四', '36', '20253', '2025-36', '202509', '20250901', '20250907', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-05', '20250905', '2025', '09', '05', '星期五', '36', '20253', '2025-36', '202509', '20250901', '20250907', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-06', '20250906', '2025', '09', '06', '星期六', '36', '20253', '2025-36', '202509', '20250901', '20250907', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-07', '20250907', '2025', '09', '07', '星期日', '36', '20253', '2025-36', '202509', '20250908', '20250914', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-08', '20250908', '2025', '09', '08', '星期一', '37', '20253', '2025-37', '202509', '20250908', '20250914', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-09', '20250909', '2025', '09', '09', '星期二', '37', '20253', '2025-37', '202509', '20250908', '20250914', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-10', '20250910', '2025', '09', '10', '星期三', '37', '20253', '2025-37', '202509', '20250908', '20250914', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-11', '20250911', '2025', '09', '11', '星期四', '37', '20253', '2025-37', '202509', '20250908', '20250914', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-12', '20250912', '2025', '09', '12', '星期五', '37', '20253', '2025-37', '202509', '20250908', '20250914', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-13', '20250913', '2025', '09', '13', '星期六', '37', '20253', '2025-37', '202509', '20250908', '20250914', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-14', '20250914', '2025', '09', '14', '星期日', '37', '20253', '2025-37', '202509', '20250915', '20250921', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-15', '20250915', '2025', '09', '15', '星期一', '38', '20253', '2025-38', '202509', '20250915', '20250921', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-16', '20250916', '2025', '09', '16', '星期二', '38', '20253', '2025-38', '202509', '20250915', '20250921', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-17', '20250917', '2025', '09', '17', '星期三', '38', '20253', '2025-38', '202509', '20250915', '20250921', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-18', '20250918', '2025', '09', '18', '星期四', '38', '20253', '2025-38', '202509', '20250915', '20250921', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-19', '20250919', '2025', '09', '19', '星期五', '38', '20253', '2025-38', '202509', '20250915', '20250921', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-20', '20250920', '2025', '09', '20', '星期六', '38', '20253', '2025-38', '202509', '20250915', '20250921', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-21', '20250921', '2025', '09', '21', '星期日', '38', '20253', '2025-38', '202509', '20250922', '20250928', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-22', '20250922', '2025', '09', '22', '星期一', '39', '20253', '2025-39', '202509', '20250922', '20250928', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-23', '20250923', '2025', '09', '23', '星期二', '39', '20253', '2025-39', '202509', '20250922', '20250928', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-24', '20250924', '2025', '09', '24', '星期三', '39', '20253', '2025-39', '202509', '20250922', '20250928', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-25', '20250925', '2025', '09', '25', '星期四', '39', '20253', '2025-39', '202509', '20250922', '20250928', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-26', '20250926', '2025', '09', '26', '星期五', '39', '20253', '2025-39', '202509', '20250922', '20250928', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-27', '20250927', '2025', '09', '27', '星期六', '39', '20253', '2025-39', '202509', '20250922', '20250928', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-28', '20250928', '2025', '09', '28', '星期日', '39', '20253', '2025-39', '202509', '20250929', '20251005', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-29', '20250929', '2025', '09', '29', '星期一', '40', '20253', '2025-40', '202509', '20250929', '20251005', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-09-30', '20250930', '2025', '09', '30', '星期二', '40', '20253', '2025-40', '202509', '20250929', '20251005', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-01', '20251001', '2025', '10', '01', '星期三', '40', '20254', '2025-40', '202510', '20250929', '20251005', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-02', '20251002', '2025', '10', '02', '星期四', '40', '20254', '2025-40', '202510', '20250929', '20251005', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-03', '20251003', '2025', '10', '03', '星期五', '40', '20254', '2025-40', '202510', '20250929', '20251005', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-04', '20251004', '2025', '10', '04', '星期六', '40', '20254', '2025-40', '202510', '20250929', '20251005', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-05', '20251005', '2025', '10', '05', '星期日', '40', '20254', '2025-40', '202510', '20251006', '20251012', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-06', '20251006', '2025', '10', '06', '星期一', '41', '20254', '2025-41', '202510', '20251006', '20251012', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-07', '20251007', '2025', '10', '07', '星期二', '41', '20254', '2025-41', '202510', '20251006', '20251012', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-08', '20251008', '2025', '10', '08', '星期三', '41', '20254', '2025-41', '202510', '20251006', '20251012', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-09', '20251009', '2025', '10', '09', '星期四', '41', '20254', '2025-41', '202510', '20251006', '20251012', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-10', '20251010', '2025', '10', '10', '星期五', '41', '20254', '2025-41', '202510', '20251006', '20251012', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-11', '20251011', '2025', '10', '11', '星期六', '41', '20254', '2025-41', '202510', '20251006', '20251012', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-12', '20251012', '2025', '10', '12', '星期日', '41', '20254', '2025-41', '202510', '20251013', '20251019', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-13', '20251013', '2025', '10', '13', '星期一', '42', '20254', '2025-42', '202510', '20251013', '20251019', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-14', '20251014', '2025', '10', '14', '星期二', '42', '20254', '2025-42', '202510', '20251013', '20251019', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-15', '20251015', '2025', '10', '15', '星期三', '42', '20254', '2025-42', '202510', '20251013', '20251019', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-16', '20251016', '2025', '10', '16', '星期四', '42', '20254', '2025-42', '202510', '20251013', '20251019', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-17', '20251017', '2025', '10', '17', '星期五', '42', '20254', '2025-42', '202510', '20251013', '20251019', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-18', '20251018', '2025', '10', '18', '星期六', '42', '20254', '2025-42', '202510', '20251013', '20251019', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-19', '20251019', '2025', '10', '19', '星期日', '42', '20254', '2025-42', '202510', '20251020', '20251026', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-20', '20251020', '2025', '10', '20', '星期一', '43', '20254', '2025-43', '202510', '20251020', '20251026', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-21', '20251021', '2025', '10', '21', '星期二', '43', '20254', '2025-43', '202510', '20251020', '20251026', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-22', '20251022', '2025', '10', '22', '星期三', '43', '20254', '2025-43', '202510', '20251020', '20251026', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-23', '20251023', '2025', '10', '23', '星期四', '43', '20254', '2025-43', '202510', '20251020', '20251026', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-24', '20251024', '2025', '10', '24', '星期五', '43', '20254', '2025-43', '202510', '20251020', '20251026', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-25', '20251025', '2025', '10', '25', '星期六', '43', '20254', '2025-43', '202510', '20251020', '20251026', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-26', '20251026', '2025', '10', '26', '星期日', '43', '20254', '2025-43', '202510', '20251027', '20251102', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-27', '20251027', '2025', '10', '27', '星期一', '44', '20254', '2025-44', '202510', '20251027', '20251102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-28', '20251028', '2025', '10', '28', '星期二', '44', '20254', '2025-44', '202510', '20251027', '20251102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-29', '20251029', '2025', '10', '29', '星期三', '44', '20254', '2025-44', '202510', '20251027', '20251102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-30', '20251030', '2025', '10', '30', '星期四', '44', '20254', '2025-44', '202510', '20251027', '20251102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-10-31', '20251031', '2025', '10', '31', '星期五', '44', '20254', '2025-44', '202510', '20251027', '20251102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-01', '20251101', '2025', '11', '01', '星期六', '44', '20254', '2025-44', '202511', '20251027', '20251102', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-02', '20251102', '2025', '11', '02', '星期日', '44', '20254', '2025-44', '202511', '20251103', '20251109', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-03', '20251103', '2025', '11', '03', '星期一', '45', '20254', '2025-45', '202511', '20251103', '20251109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-04', '20251104', '2025', '11', '04', '星期二', '45', '20254', '2025-45', '202511', '20251103', '20251109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-05', '20251105', '2025', '11', '05', '星期三', '45', '20254', '2025-45', '202511', '20251103', '20251109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-06', '20251106', '2025', '11', '06', '星期四', '45', '20254', '2025-45', '202511', '20251103', '20251109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-07', '20251107', '2025', '11', '07', '星期五', '45', '20254', '2025-45', '202511', '20251103', '20251109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-08', '20251108', '2025', '11', '08', '星期六', '45', '20254', '2025-45', '202511', '20251103', '20251109', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-09', '20251109', '2025', '11', '09', '星期日', '45', '20254', '2025-45', '202511', '20251110', '20251116', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-10', '20251110', '2025', '11', '10', '星期一', '46', '20254', '2025-46', '202511', '20251110', '20251116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-11', '20251111', '2025', '11', '11', '星期二', '46', '20254', '2025-46', '202511', '20251110', '20251116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-12', '20251112', '2025', '11', '12', '星期三', '46', '20254', '2025-46', '202511', '20251110', '20251116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-13', '20251113', '2025', '11', '13', '星期四', '46', '20254', '2025-46', '202511', '20251110', '20251116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-14', '20251114', '2025', '11', '14', '星期五', '46', '20254', '2025-46', '202511', '20251110', '20251116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-15', '20251115', '2025', '11', '15', '星期六', '46', '20254', '2025-46', '202511', '20251110', '20251116', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-16', '20251116', '2025', '11', '16', '星期日', '46', '20254', '2025-46', '202511', '20251117', '20251123', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-17', '20251117', '2025', '11', '17', '星期一', '47', '20254', '2025-47', '202511', '20251117', '20251123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-18', '20251118', '2025', '11', '18', '星期二', '47', '20254', '2025-47', '202511', '20251117', '20251123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-19', '20251119', '2025', '11', '19', '星期三', '47', '20254', '2025-47', '202511', '20251117', '20251123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-20', '20251120', '2025', '11', '20', '星期四', '47', '20254', '2025-47', '202511', '20251117', '20251123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-21', '20251121', '2025', '11', '21', '星期五', '47', '20254', '2025-47', '202511', '20251117', '20251123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-22', '20251122', '2025', '11', '22', '星期六', '47', '20254', '2025-47', '202511', '20251117', '20251123', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-23', '20251123', '2025', '11', '23', '星期日', '47', '20254', '2025-47', '202511', '20251124', '20251130', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-24', '20251124', '2025', '11', '24', '星期一', '48', '20254', '2025-48', '202511', '20251124', '20251130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-25', '20251125', '2025', '11', '25', '星期二', '48', '20254', '2025-48', '202511', '20251124', '20251130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-26', '20251126', '2025', '11', '26', '星期三', '48', '20254', '2025-48', '202511', '20251124', '20251130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-27', '20251127', '2025', '11', '27', '星期四', '48', '20254', '2025-48', '202511', '20251124', '20251130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-28', '20251128', '2025', '11', '28', '星期五', '48', '20254', '2025-48', '202511', '20251124', '20251130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-29', '20251129', '2025', '11', '29', '星期六', '48', '20254', '2025-48', '202511', '20251124', '20251130', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-11-30', '20251130', '2025', '11', '30', '星期日', '48', '20254', '2025-48', '202511', '20251201', '20251207', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-01', '20251201', '2025', '12', '01', '星期一', '49', '20254', '2025-49', '202512', '20251201', '20251207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-02', '20251202', '2025', '12', '02', '星期二', '49', '20254', '2025-49', '202512', '20251201', '20251207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-03', '20251203', '2025', '12', '03', '星期三', '49', '20254', '2025-49', '202512', '20251201', '20251207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-04', '20251204', '2025', '12', '04', '星期四', '49', '20254', '2025-49', '202512', '20251201', '20251207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-05', '20251205', '2025', '12', '05', '星期五', '49', '20254', '2025-49', '202512', '20251201', '20251207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-06', '20251206', '2025', '12', '06', '星期六', '49', '20254', '2025-49', '202512', '20251201', '20251207', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-07', '20251207', '2025', '12', '07', '星期日', '49', '20254', '2025-49', '202512', '20251208', '20251214', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-08', '20251208', '2025', '12', '08', '星期一', '50', '20254', '2025-50', '202512', '20251208', '20251214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-09', '20251209', '2025', '12', '09', '星期二', '50', '20254', '2025-50', '202512', '20251208', '20251214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-10', '20251210', '2025', '12', '10', '星期三', '50', '20254', '2025-50', '202512', '20251208', '20251214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-11', '20251211', '2025', '12', '11', '星期四', '50', '20254', '2025-50', '202512', '20251208', '20251214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-12', '20251212', '2025', '12', '12', '星期五', '50', '20254', '2025-50', '202512', '20251208', '20251214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-13', '20251213', '2025', '12', '13', '星期六', '50', '20254', '2025-50', '202512', '20251208', '20251214', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-14', '20251214', '2025', '12', '14', '星期日', '50', '20254', '2025-50', '202512', '20251215', '20251221', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-15', '20251215', '2025', '12', '15', '星期一', '51', '20254', '2025-51', '202512', '20251215', '20251221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-16', '20251216', '2025', '12', '16', '星期二', '51', '20254', '2025-51', '202512', '20251215', '20251221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-17', '20251217', '2025', '12', '17', '星期三', '51', '20254', '2025-51', '202512', '20251215', '20251221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-18', '20251218', '2025', '12', '18', '星期四', '51', '20254', '2025-51', '202512', '20251215', '20251221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-19', '20251219', '2025', '12', '19', '星期五', '51', '20254', '2025-51', '202512', '20251215', '20251221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-20', '20251220', '2025', '12', '20', '星期六', '51', '20254', '2025-51', '202512', '20251215', '20251221', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-21', '20251221', '2025', '12', '21', '星期日', '51', '20254', '2025-51', '202512', '20251222', '20251228', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-22', '20251222', '2025', '12', '22', '星期一', '52', '20254', '2025-52', '202512', '20251222', '20251228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-23', '20251223', '2025', '12', '23', '星期二', '52', '20254', '2025-52', '202512', '20251222', '20251228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-24', '20251224', '2025', '12', '24', '星期三', '52', '20254', '2025-52', '202512', '20251222', '20251228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-25', '20251225', '2025', '12', '25', '星期四', '52', '20254', '2025-52', '202512', '20251222', '20251228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-26', '20251226', '2025', '12', '26', '星期五', '52', '20254', '2025-52', '202512', '20251222', '20251228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-27', '20251227', '2025', '12', '27', '星期六', '52', '20254', '2025-52', '202512', '20251222', '20251228', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-28', '20251228', '2025', '12', '28', '星期日', '52', '20254', '2025-52', '202512', '20251229', '20260104', '1');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-29', '20251229', '2025', '12', '29', '星期一', '53', '20254', '2025-53', '202512', '20251229', '20260104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-30', '20251230', '2025', '12', '30', '星期二', '53', '20254', '2025-53', '202512', '20251229', '20260104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2025-12-31', '20251231', '2025', '12', '31', '星期三', '53', '20254', '2025-53', '202512', '20251229', '20260104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-01', '20260101', '2026', '01', '01', '星期四', '01', '20261', '2026-01', '202601', '20251229', '20260104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-02', '20260102', '2026', '01', '02', '星期五', '01', '20261', '2026-01', '202601', '20251229', '20260104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-03', '20260103', '2026', '01', '03', '星期六', '01', '20261', '2026-01', '202601', '20251229', '20260104', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-04', '20260104', '2026', '01', '04', '星期日', '01', '20261', '2026-01', '202601', '20260105', '20260111', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-05', '20260105', '2026', '01', '05', '星期一', '02', '20261', '2026-02', '202601', '20260105', '20260111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-06', '20260106', '2026', '01', '06', '星期二', '02', '20261', '2026-02', '202601', '20260105', '20260111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-07', '20260107', '2026', '01', '07', '星期三', '02', '20261', '2026-02', '202601', '20260105', '20260111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-08', '20260108', '2026', '01', '08', '星期四', '02', '20261', '2026-02', '202601', '20260105', '20260111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-09', '20260109', '2026', '01', '09', '星期五', '02', '20261', '2026-02', '202601', '20260105', '20260111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-10', '20260110', '2026', '01', '10', '星期六', '02', '20261', '2026-02', '202601', '20260105', '20260111', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-11', '20260111', '2026', '01', '11', '星期日', '02', '20261', '2026-02', '202601', '20260112', '20260118', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-12', '20260112', '2026', '01', '12', '星期一', '03', '20261', '2026-03', '202601', '20260112', '20260118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-13', '20260113', '2026', '01', '13', '星期二', '03', '20261', '2026-03', '202601', '20260112', '20260118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-14', '20260114', '2026', '01', '14', '星期三', '03', '20261', '2026-03', '202601', '20260112', '20260118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-15', '20260115', '2026', '01', '15', '星期四', '03', '20261', '2026-03', '202601', '20260112', '20260118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-16', '20260116', '2026', '01', '16', '星期五', '03', '20261', '2026-03', '202601', '20260112', '20260118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-17', '20260117', '2026', '01', '17', '星期六', '03', '20261', '2026-03', '202601', '20260112', '20260118', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-18', '20260118', '2026', '01', '18', '星期日', '03', '20261', '2026-03', '202601', '20260119', '20260125', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-19', '20260119', '2026', '01', '19', '星期一', '04', '20261', '2026-04', '202601', '20260119', '20260125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-20', '20260120', '2026', '01', '20', '星期二', '04', '20261', '2026-04', '202601', '20260119', '20260125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-21', '20260121', '2026', '01', '21', '星期三', '04', '20261', '2026-04', '202601', '20260119', '20260125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-22', '20260122', '2026', '01', '22', '星期四', '04', '20261', '2026-04', '202601', '20260119', '20260125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-23', '20260123', '2026', '01', '23', '星期五', '04', '20261', '2026-04', '202601', '20260119', '20260125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-24', '20260124', '2026', '01', '24', '星期六', '04', '20261', '2026-04', '202601', '20260119', '20260125', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-25', '20260125', '2026', '01', '25', '星期日', '04', '20261', '2026-04', '202601', '20260126', '20260201', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-26', '20260126', '2026', '01', '26', '星期一', '05', '20261', '2026-05', '202601', '20260126', '20260201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-27', '20260127', '2026', '01', '27', '星期二', '05', '20261', '2026-05', '202601', '20260126', '20260201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-28', '20260128', '2026', '01', '28', '星期三', '05', '20261', '2026-05', '202601', '20260126', '20260201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-29', '20260129', '2026', '01', '29', '星期四', '05', '20261', '2026-05', '202601', '20260126', '20260201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-30', '20260130', '2026', '01', '30', '星期五', '05', '20261', '2026-05', '202601', '20260126', '20260201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-01-31', '20260131', '2026', '01', '31', '星期六', '05', '20261', '2026-05', '202601', '20260126', '20260201', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-01', '20260201', '2026', '02', '01', '星期日', '05', '20261', '2026-05', '202602', '20260202', '20260208', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-02', '20260202', '2026', '02', '02', '星期一', '06', '20261', '2026-06', '202602', '20260202', '20260208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-03', '20260203', '2026', '02', '03', '星期二', '06', '20261', '2026-06', '202602', '20260202', '20260208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-04', '20260204', '2026', '02', '04', '星期三', '06', '20261', '2026-06', '202602', '20260202', '20260208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-05', '20260205', '2026', '02', '05', '星期四', '06', '20261', '2026-06', '202602', '20260202', '20260208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-06', '20260206', '2026', '02', '06', '星期五', '06', '20261', '2026-06', '202602', '20260202', '20260208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-07', '20260207', '2026', '02', '07', '星期六', '06', '20261', '2026-06', '202602', '20260202', '20260208', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-08', '20260208', '2026', '02', '08', '星期日', '06', '20261', '2026-06', '202602', '20260209', '20260215', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-09', '20260209', '2026', '02', '09', '星期一', '07', '20261', '2026-07', '202602', '20260209', '20260215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-10', '20260210', '2026', '02', '10', '星期二', '07', '20261', '2026-07', '202602', '20260209', '20260215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-11', '20260211', '2026', '02', '11', '星期三', '07', '20261', '2026-07', '202602', '20260209', '20260215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-12', '20260212', '2026', '02', '12', '星期四', '07', '20261', '2026-07', '202602', '20260209', '20260215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-13', '20260213', '2026', '02', '13', '星期五', '07', '20261', '2026-07', '202602', '20260209', '20260215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-14', '20260214', '2026', '02', '14', '星期六', '07', '20261', '2026-07', '202602', '20260209', '20260215', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-15', '20260215', '2026', '02', '15', '星期日', '07', '20261', '2026-07', '202602', '20260216', '20260222', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-16', '20260216', '2026', '02', '16', '星期一', '08', '20261', '2026-08', '202602', '20260216', '20260222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-17', '20260217', '2026', '02', '17', '星期二', '08', '20261', '2026-08', '202602', '20260216', '20260222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-18', '20260218', '2026', '02', '18', '星期三', '08', '20261', '2026-08', '202602', '20260216', '20260222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-19', '20260219', '2026', '02', '19', '星期四', '08', '20261', '2026-08', '202602', '20260216', '20260222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-20', '20260220', '2026', '02', '20', '星期五', '08', '20261', '2026-08', '202602', '20260216', '20260222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-21', '20260221', '2026', '02', '21', '星期六', '08', '20261', '2026-08', '202602', '20260216', '20260222', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-22', '20260222', '2026', '02', '22', '星期日', '08', '20261', '2026-08', '202602', '20260223', '20260301', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-23', '20260223', '2026', '02', '23', '星期一', '09', '20261', '2026-09', '202602', '20260223', '20260301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-24', '20260224', '2026', '02', '24', '星期二', '09', '20261', '2026-09', '202602', '20260223', '20260301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-25', '20260225', '2026', '02', '25', '星期三', '09', '20261', '2026-09', '202602', '20260223', '20260301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-26', '20260226', '2026', '02', '26', '星期四', '09', '20261', '2026-09', '202602', '20260223', '20260301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-27', '20260227', '2026', '02', '27', '星期五', '09', '20261', '2026-09', '202602', '20260223', '20260301', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-02-28', '20260228', '2026', '02', '28', '星期六', '09', '20261', '2026-09', '202602', '20260223', '20260301', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-01', '20260301', '2026', '03', '01', '星期日', '09', '20261', '2026-09', '202603', '20260302', '20260308', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-02', '20260302', '2026', '03', '02', '星期一', '10', '20261', '2026-10', '202603', '20260302', '20260308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-03', '20260303', '2026', '03', '03', '星期二', '10', '20261', '2026-10', '202603', '20260302', '20260308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-04', '20260304', '2026', '03', '04', '星期三', '10', '20261', '2026-10', '202603', '20260302', '20260308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-05', '20260305', '2026', '03', '05', '星期四', '10', '20261', '2026-10', '202603', '20260302', '20260308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-06', '20260306', '2026', '03', '06', '星期五', '10', '20261', '2026-10', '202603', '20260302', '20260308', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-07', '20260307', '2026', '03', '07', '星期六', '10', '20261', '2026-10', '202603', '20260302', '20260308', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-08', '20260308', '2026', '03', '08', '星期日', '10', '20261', '2026-10', '202603', '20260309', '20260315', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-09', '20260309', '2026', '03', '09', '星期一', '11', '20261', '2026-11', '202603', '20260309', '20260315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-10', '20260310', '2026', '03', '10', '星期二', '11', '20261', '2026-11', '202603', '20260309', '20260315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-11', '20260311', '2026', '03', '11', '星期三', '11', '20261', '2026-11', '202603', '20260309', '20260315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-12', '20260312', '2026', '03', '12', '星期四', '11', '20261', '2026-11', '202603', '20260309', '20260315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-13', '20260313', '2026', '03', '13', '星期五', '11', '20261', '2026-11', '202603', '20260309', '20260315', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-14', '20260314', '2026', '03', '14', '星期六', '11', '20261', '2026-11', '202603', '20260309', '20260315', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-15', '20260315', '2026', '03', '15', '星期日', '11', '20261', '2026-11', '202603', '20260316', '20260322', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-16', '20260316', '2026', '03', '16', '星期一', '12', '20261', '2026-12', '202603', '20260316', '20260322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-17', '20260317', '2026', '03', '17', '星期二', '12', '20261', '2026-12', '202603', '20260316', '20260322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-18', '20260318', '2026', '03', '18', '星期三', '12', '20261', '2026-12', '202603', '20260316', '20260322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-19', '20260319', '2026', '03', '19', '星期四', '12', '20261', '2026-12', '202603', '20260316', '20260322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-20', '20260320', '2026', '03', '20', '星期五', '12', '20261', '2026-12', '202603', '20260316', '20260322', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-21', '20260321', '2026', '03', '21', '星期六', '12', '20261', '2026-12', '202603', '20260316', '20260322', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-22', '20260322', '2026', '03', '22', '星期日', '12', '20261', '2026-12', '202603', '20260323', '20260329', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-23', '20260323', '2026', '03', '23', '星期一', '13', '20261', '2026-13', '202603', '20260323', '20260329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-24', '20260324', '2026', '03', '24', '星期二', '13', '20261', '2026-13', '202603', '20260323', '20260329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-25', '20260325', '2026', '03', '25', '星期三', '13', '20261', '2026-13', '202603', '20260323', '20260329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-26', '20260326', '2026', '03', '26', '星期四', '13', '20261', '2026-13', '202603', '20260323', '20260329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-27', '20260327', '2026', '03', '27', '星期五', '13', '20261', '2026-13', '202603', '20260323', '20260329', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-28', '20260328', '2026', '03', '28', '星期六', '13', '20261', '2026-13', '202603', '20260323', '20260329', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-29', '20260329', '2026', '03', '29', '星期日', '13', '20261', '2026-13', '202603', '20260330', '20260405', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-30', '20260330', '2026', '03', '30', '星期一', '14', '20261', '2026-14', '202603', '20260330', '20260405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-03-31', '20260331', '2026', '03', '31', '星期二', '14', '20261', '2026-14', '202603', '20260330', '20260405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-01', '20260401', '2026', '04', '01', '星期三', '14', '20262', '2026-14', '202604', '20260330', '20260405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-02', '20260402', '2026', '04', '02', '星期四', '14', '20262', '2026-14', '202604', '20260330', '20260405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-03', '20260403', '2026', '04', '03', '星期五', '14', '20262', '2026-14', '202604', '20260330', '20260405', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-04', '20260404', '2026', '04', '04', '星期六', '14', '20262', '2026-14', '202604', '20260330', '20260405', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-05', '20260405', '2026', '04', '05', '星期日', '14', '20262', '2026-14', '202604', '20260406', '20260412', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-06', '20260406', '2026', '04', '06', '星期一', '15', '20262', '2026-15', '202604', '20260406', '20260412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-07', '20260407', '2026', '04', '07', '星期二', '15', '20262', '2026-15', '202604', '20260406', '20260412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-08', '20260408', '2026', '04', '08', '星期三', '15', '20262', '2026-15', '202604', '20260406', '20260412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-09', '20260409', '2026', '04', '09', '星期四', '15', '20262', '2026-15', '202604', '20260406', '20260412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-10', '20260410', '2026', '04', '10', '星期五', '15', '20262', '2026-15', '202604', '20260406', '20260412', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-11', '20260411', '2026', '04', '11', '星期六', '15', '20262', '2026-15', '202604', '20260406', '20260412', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-12', '20260412', '2026', '04', '12', '星期日', '15', '20262', '2026-15', '202604', '20260413', '20260419', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-13', '20260413', '2026', '04', '13', '星期一', '16', '20262', '2026-16', '202604', '20260413', '20260419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-14', '20260414', '2026', '04', '14', '星期二', '16', '20262', '2026-16', '202604', '20260413', '20260419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-15', '20260415', '2026', '04', '15', '星期三', '16', '20262', '2026-16', '202604', '20260413', '20260419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-16', '20260416', '2026', '04', '16', '星期四', '16', '20262', '2026-16', '202604', '20260413', '20260419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-17', '20260417', '2026', '04', '17', '星期五', '16', '20262', '2026-16', '202604', '20260413', '20260419', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-18', '20260418', '2026', '04', '18', '星期六', '16', '20262', '2026-16', '202604', '20260413', '20260419', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-19', '20260419', '2026', '04', '19', '星期日', '16', '20262', '2026-16', '202604', '20260420', '20260426', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-20', '20260420', '2026', '04', '20', '星期一', '17', '20262', '2026-17', '202604', '20260420', '20260426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-21', '20260421', '2026', '04', '21', '星期二', '17', '20262', '2026-17', '202604', '20260420', '20260426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-22', '20260422', '2026', '04', '22', '星期三', '17', '20262', '2026-17', '202604', '20260420', '20260426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-23', '20260423', '2026', '04', '23', '星期四', '17', '20262', '2026-17', '202604', '20260420', '20260426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-24', '20260424', '2026', '04', '24', '星期五', '17', '20262', '2026-17', '202604', '20260420', '20260426', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-25', '20260425', '2026', '04', '25', '星期六', '17', '20262', '2026-17', '202604', '20260420', '20260426', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-26', '20260426', '2026', '04', '26', '星期日', '17', '20262', '2026-17', '202604', '20260427', '20260503', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-27', '20260427', '2026', '04', '27', '星期一', '18', '20262', '2026-18', '202604', '20260427', '20260503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-28', '20260428', '2026', '04', '28', '星期二', '18', '20262', '2026-18', '202604', '20260427', '20260503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-29', '20260429', '2026', '04', '29', '星期三', '18', '20262', '2026-18', '202604', '20260427', '20260503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-04-30', '20260430', '2026', '04', '30', '星期四', '18', '20262', '2026-18', '202604', '20260427', '20260503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-01', '20260501', '2026', '05', '01', '星期五', '18', '20262', '2026-18', '202605', '20260427', '20260503', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-02', '20260502', '2026', '05', '02', '星期六', '18', '20262', '2026-18', '202605', '20260427', '20260503', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-03', '20260503', '2026', '05', '03', '星期日', '18', '20262', '2026-18', '202605', '20260504', '20260510', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-04', '20260504', '2026', '05', '04', '星期一', '19', '20262', '2026-19', '202605', '20260504', '20260510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-05', '20260505', '2026', '05', '05', '星期二', '19', '20262', '2026-19', '202605', '20260504', '20260510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-06', '20260506', '2026', '05', '06', '星期三', '19', '20262', '2026-19', '202605', '20260504', '20260510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-07', '20260507', '2026', '05', '07', '星期四', '19', '20262', '2026-19', '202605', '20260504', '20260510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-08', '20260508', '2026', '05', '08', '星期五', '19', '20262', '2026-19', '202605', '20260504', '20260510', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-09', '20260509', '2026', '05', '09', '星期六', '19', '20262', '2026-19', '202605', '20260504', '20260510', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-10', '20260510', '2026', '05', '10', '星期日', '19', '20262', '2026-19', '202605', '20260511', '20260517', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-11', '20260511', '2026', '05', '11', '星期一', '20', '20262', '2026-20', '202605', '20260511', '20260517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-12', '20260512', '2026', '05', '12', '星期二', '20', '20262', '2026-20', '202605', '20260511', '20260517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-13', '20260513', '2026', '05', '13', '星期三', '20', '20262', '2026-20', '202605', '20260511', '20260517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-14', '20260514', '2026', '05', '14', '星期四', '20', '20262', '2026-20', '202605', '20260511', '20260517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-15', '20260515', '2026', '05', '15', '星期五', '20', '20262', '2026-20', '202605', '20260511', '20260517', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-16', '20260516', '2026', '05', '16', '星期六', '20', '20262', '2026-20', '202605', '20260511', '20260517', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-17', '20260517', '2026', '05', '17', '星期日', '20', '20262', '2026-20', '202605', '20260518', '20260524', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-18', '20260518', '2026', '05', '18', '星期一', '21', '20262', '2026-21', '202605', '20260518', '20260524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-19', '20260519', '2026', '05', '19', '星期二', '21', '20262', '2026-21', '202605', '20260518', '20260524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-20', '20260520', '2026', '05', '20', '星期三', '21', '20262', '2026-21', '202605', '20260518', '20260524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-21', '20260521', '2026', '05', '21', '星期四', '21', '20262', '2026-21', '202605', '20260518', '20260524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-22', '20260522', '2026', '05', '22', '星期五', '21', '20262', '2026-21', '202605', '20260518', '20260524', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-23', '20260523', '2026', '05', '23', '星期六', '21', '20262', '2026-21', '202605', '20260518', '20260524', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-24', '20260524', '2026', '05', '24', '星期日', '21', '20262', '2026-21', '202605', '20260525', '20260531', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-25', '20260525', '2026', '05', '25', '星期一', '22', '20262', '2026-22', '202605', '20260525', '20260531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-26', '20260526', '2026', '05', '26', '星期二', '22', '20262', '2026-22', '202605', '20260525', '20260531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-27', '20260527', '2026', '05', '27', '星期三', '22', '20262', '2026-22', '202605', '20260525', '20260531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-28', '20260528', '2026', '05', '28', '星期四', '22', '20262', '2026-22', '202605', '20260525', '20260531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-29', '20260529', '2026', '05', '29', '星期五', '22', '20262', '2026-22', '202605', '20260525', '20260531', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-30', '20260530', '2026', '05', '30', '星期六', '22', '20262', '2026-22', '202605', '20260525', '20260531', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-05-31', '20260531', '2026', '05', '31', '星期日', '22', '20262', '2026-22', '202605', '20260601', '20260607', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-01', '20260601', '2026', '06', '01', '星期一', '23', '20262', '2026-23', '202606', '20260601', '20260607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-02', '20260602', '2026', '06', '02', '星期二', '23', '20262', '2026-23', '202606', '20260601', '20260607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-03', '20260603', '2026', '06', '03', '星期三', '23', '20262', '2026-23', '202606', '20260601', '20260607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-04', '20260604', '2026', '06', '04', '星期四', '23', '20262', '2026-23', '202606', '20260601', '20260607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-05', '20260605', '2026', '06', '05', '星期五', '23', '20262', '2026-23', '202606', '20260601', '20260607', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-06', '20260606', '2026', '06', '06', '星期六', '23', '20262', '2026-23', '202606', '20260601', '20260607', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-07', '20260607', '2026', '06', '07', '星期日', '23', '20262', '2026-23', '202606', '20260608', '20260614', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-08', '20260608', '2026', '06', '08', '星期一', '24', '20262', '2026-24', '202606', '20260608', '20260614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-09', '20260609', '2026', '06', '09', '星期二', '24', '20262', '2026-24', '202606', '20260608', '20260614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-10', '20260610', '2026', '06', '10', '星期三', '24', '20262', '2026-24', '202606', '20260608', '20260614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-11', '20260611', '2026', '06', '11', '星期四', '24', '20262', '2026-24', '202606', '20260608', '20260614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-12', '20260612', '2026', '06', '12', '星期五', '24', '20262', '2026-24', '202606', '20260608', '20260614', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-13', '20260613', '2026', '06', '13', '星期六', '24', '20262', '2026-24', '202606', '20260608', '20260614', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-14', '20260614', '2026', '06', '14', '星期日', '24', '20262', '2026-24', '202606', '20260615', '20260621', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-15', '20260615', '2026', '06', '15', '星期一', '25', '20262', '2026-25', '202606', '20260615', '20260621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-16', '20260616', '2026', '06', '16', '星期二', '25', '20262', '2026-25', '202606', '20260615', '20260621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-17', '20260617', '2026', '06', '17', '星期三', '25', '20262', '2026-25', '202606', '20260615', '20260621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-18', '20260618', '2026', '06', '18', '星期四', '25', '20262', '2026-25', '202606', '20260615', '20260621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-19', '20260619', '2026', '06', '19', '星期五', '25', '20262', '2026-25', '202606', '20260615', '20260621', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-20', '20260620', '2026', '06', '20', '星期六', '25', '20262', '2026-25', '202606', '20260615', '20260621', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-21', '20260621', '2026', '06', '21', '星期日', '25', '20262', '2026-25', '202606', '20260622', '20260628', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-22', '20260622', '2026', '06', '22', '星期一', '26', '20262', '2026-26', '202606', '20260622', '20260628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-23', '20260623', '2026', '06', '23', '星期二', '26', '20262', '2026-26', '202606', '20260622', '20260628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-24', '20260624', '2026', '06', '24', '星期三', '26', '20262', '2026-26', '202606', '20260622', '20260628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-25', '20260625', '2026', '06', '25', '星期四', '26', '20262', '2026-26', '202606', '20260622', '20260628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-26', '20260626', '2026', '06', '26', '星期五', '26', '20262', '2026-26', '202606', '20260622', '20260628', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-27', '20260627', '2026', '06', '27', '星期六', '26', '20262', '2026-26', '202606', '20260622', '20260628', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-28', '20260628', '2026', '06', '28', '星期日', '26', '20262', '2026-26', '202606', '20260629', '20260705', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-29', '20260629', '2026', '06', '29', '星期一', '27', '20262', '2026-27', '202606', '20260629', '20260705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-06-30', '20260630', '2026', '06', '30', '星期二', '27', '20262', '2026-27', '202606', '20260629', '20260705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-01', '20260701', '2026', '07', '01', '星期三', '27', '20263', '2026-27', '202607', '20260629', '20260705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-02', '20260702', '2026', '07', '02', '星期四', '27', '20263', '2026-27', '202607', '20260629', '20260705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-03', '20260703', '2026', '07', '03', '星期五', '27', '20263', '2026-27', '202607', '20260629', '20260705', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-04', '20260704', '2026', '07', '04', '星期六', '27', '20263', '2026-27', '202607', '20260629', '20260705', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-05', '20260705', '2026', '07', '05', '星期日', '27', '20263', '2026-27', '202607', '20260706', '20260712', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-06', '20260706', '2026', '07', '06', '星期一', '28', '20263', '2026-28', '202607', '20260706', '20260712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-07', '20260707', '2026', '07', '07', '星期二', '28', '20263', '2026-28', '202607', '20260706', '20260712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-08', '20260708', '2026', '07', '08', '星期三', '28', '20263', '2026-28', '202607', '20260706', '20260712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-09', '20260709', '2026', '07', '09', '星期四', '28', '20263', '2026-28', '202607', '20260706', '20260712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-10', '20260710', '2026', '07', '10', '星期五', '28', '20263', '2026-28', '202607', '20260706', '20260712', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-11', '20260711', '2026', '07', '11', '星期六', '28', '20263', '2026-28', '202607', '20260706', '20260712', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-12', '20260712', '2026', '07', '12', '星期日', '28', '20263', '2026-28', '202607', '20260713', '20260719', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-13', '20260713', '2026', '07', '13', '星期一', '29', '20263', '2026-29', '202607', '20260713', '20260719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-14', '20260714', '2026', '07', '14', '星期二', '29', '20263', '2026-29', '202607', '20260713', '20260719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-15', '20260715', '2026', '07', '15', '星期三', '29', '20263', '2026-29', '202607', '20260713', '20260719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-16', '20260716', '2026', '07', '16', '星期四', '29', '20263', '2026-29', '202607', '20260713', '20260719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-17', '20260717', '2026', '07', '17', '星期五', '29', '20263', '2026-29', '202607', '20260713', '20260719', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-18', '20260718', '2026', '07', '18', '星期六', '29', '20263', '2026-29', '202607', '20260713', '20260719', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-19', '20260719', '2026', '07', '19', '星期日', '29', '20263', '2026-29', '202607', '20260720', '20260726', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-20', '20260720', '2026', '07', '20', '星期一', '30', '20263', '2026-30', '202607', '20260720', '20260726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-21', '20260721', '2026', '07', '21', '星期二', '30', '20263', '2026-30', '202607', '20260720', '20260726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-22', '20260722', '2026', '07', '22', '星期三', '30', '20263', '2026-30', '202607', '20260720', '20260726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-23', '20260723', '2026', '07', '23', '星期四', '30', '20263', '2026-30', '202607', '20260720', '20260726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-24', '20260724', '2026', '07', '24', '星期五', '30', '20263', '2026-30', '202607', '20260720', '20260726', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-25', '20260725', '2026', '07', '25', '星期六', '30', '20263', '2026-30', '202607', '20260720', '20260726', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-26', '20260726', '2026', '07', '26', '星期日', '30', '20263', '2026-30', '202607', '20260727', '20260802', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-27', '20260727', '2026', '07', '27', '星期一', '31', '20263', '2026-31', '202607', '20260727', '20260802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-28', '20260728', '2026', '07', '28', '星期二', '31', '20263', '2026-31', '202607', '20260727', '20260802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-29', '20260729', '2026', '07', '29', '星期三', '31', '20263', '2026-31', '202607', '20260727', '20260802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-30', '20260730', '2026', '07', '30', '星期四', '31', '20263', '2026-31', '202607', '20260727', '20260802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-07-31', '20260731', '2026', '07', '31', '星期五', '31', '20263', '2026-31', '202607', '20260727', '20260802', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-01', '20260801', '2026', '08', '01', '星期六', '31', '20263', '2026-31', '202608', '20260727', '20260802', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-02', '20260802', '2026', '08', '02', '星期日', '31', '20263', '2026-31', '202608', '20260803', '20260809', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-03', '20260803', '2026', '08', '03', '星期一', '32', '20263', '2026-32', '202608', '20260803', '20260809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-04', '20260804', '2026', '08', '04', '星期二', '32', '20263', '2026-32', '202608', '20260803', '20260809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-05', '20260805', '2026', '08', '05', '星期三', '32', '20263', '2026-32', '202608', '20260803', '20260809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-06', '20260806', '2026', '08', '06', '星期四', '32', '20263', '2026-32', '202608', '20260803', '20260809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-07', '20260807', '2026', '08', '07', '星期五', '32', '20263', '2026-32', '202608', '20260803', '20260809', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-08', '20260808', '2026', '08', '08', '星期六', '32', '20263', '2026-32', '202608', '20260803', '20260809', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-09', '20260809', '2026', '08', '09', '星期日', '32', '20263', '2026-32', '202608', '20260810', '20260816', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-10', '20260810', '2026', '08', '10', '星期一', '33', '20263', '2026-33', '202608', '20260810', '20260816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-11', '20260811', '2026', '08', '11', '星期二', '33', '20263', '2026-33', '202608', '20260810', '20260816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-12', '20260812', '2026', '08', '12', '星期三', '33', '20263', '2026-33', '202608', '20260810', '20260816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-13', '20260813', '2026', '08', '13', '星期四', '33', '20263', '2026-33', '202608', '20260810', '20260816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-14', '20260814', '2026', '08', '14', '星期五', '33', '20263', '2026-33', '202608', '20260810', '20260816', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-15', '20260815', '2026', '08', '15', '星期六', '33', '20263', '2026-33', '202608', '20260810', '20260816', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-16', '20260816', '2026', '08', '16', '星期日', '33', '20263', '2026-33', '202608', '20260817', '20260823', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-17', '20260817', '2026', '08', '17', '星期一', '34', '20263', '2026-34', '202608', '20260817', '20260823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-18', '20260818', '2026', '08', '18', '星期二', '34', '20263', '2026-34', '202608', '20260817', '20260823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-19', '20260819', '2026', '08', '19', '星期三', '34', '20263', '2026-34', '202608', '20260817', '20260823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-20', '20260820', '2026', '08', '20', '星期四', '34', '20263', '2026-34', '202608', '20260817', '20260823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-21', '20260821', '2026', '08', '21', '星期五', '34', '20263', '2026-34', '202608', '20260817', '20260823', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-22', '20260822', '2026', '08', '22', '星期六', '34', '20263', '2026-34', '202608', '20260817', '20260823', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-23', '20260823', '2026', '08', '23', '星期日', '34', '20263', '2026-34', '202608', '20260824', '20260830', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-24', '20260824', '2026', '08', '24', '星期一', '35', '20263', '2026-35', '202608', '20260824', '20260830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-25', '20260825', '2026', '08', '25', '星期二', '35', '20263', '2026-35', '202608', '20260824', '20260830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-26', '20260826', '2026', '08', '26', '星期三', '35', '20263', '2026-35', '202608', '20260824', '20260830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-27', '20260827', '2026', '08', '27', '星期四', '35', '20263', '2026-35', '202608', '20260824', '20260830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-28', '20260828', '2026', '08', '28', '星期五', '35', '20263', '2026-35', '202608', '20260824', '20260830', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-29', '20260829', '2026', '08', '29', '星期六', '35', '20263', '2026-35', '202608', '20260824', '20260830', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-30', '20260830', '2026', '08', '30', '星期日', '35', '20263', '2026-35', '202608', '20260831', '20260906', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-08-31', '20260831', '2026', '08', '31', '星期一', '36', '20263', '2026-36', '202608', '20260831', '20260906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-01', '20260901', '2026', '09', '01', '星期二', '36', '20263', '2026-36', '202609', '20260831', '20260906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-02', '20260902', '2026', '09', '02', '星期三', '36', '20263', '2026-36', '202609', '20260831', '20260906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-03', '20260903', '2026', '09', '03', '星期四', '36', '20263', '2026-36', '202609', '20260831', '20260906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-04', '20260904', '2026', '09', '04', '星期五', '36', '20263', '2026-36', '202609', '20260831', '20260906', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-05', '20260905', '2026', '09', '05', '星期六', '36', '20263', '2026-36', '202609', '20260831', '20260906', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-06', '20260906', '2026', '09', '06', '星期日', '36', '20263', '2026-36', '202609', '20260907', '20260913', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-07', '20260907', '2026', '09', '07', '星期一', '37', '20263', '2026-37', '202609', '20260907', '20260913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-08', '20260908', '2026', '09', '08', '星期二', '37', '20263', '2026-37', '202609', '20260907', '20260913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-09', '20260909', '2026', '09', '09', '星期三', '37', '20263', '2026-37', '202609', '20260907', '20260913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-10', '20260910', '2026', '09', '10', '星期四', '37', '20263', '2026-37', '202609', '20260907', '20260913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-11', '20260911', '2026', '09', '11', '星期五', '37', '20263', '2026-37', '202609', '20260907', '20260913', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-12', '20260912', '2026', '09', '12', '星期六', '37', '20263', '2026-37', '202609', '20260907', '20260913', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-13', '20260913', '2026', '09', '13', '星期日', '37', '20263', '2026-37', '202609', '20260914', '20260920', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-14', '20260914', '2026', '09', '14', '星期一', '38', '20263', '2026-38', '202609', '20260914', '20260920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-15', '20260915', '2026', '09', '15', '星期二', '38', '20263', '2026-38', '202609', '20260914', '20260920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-16', '20260916', '2026', '09', '16', '星期三', '38', '20263', '2026-38', '202609', '20260914', '20260920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-17', '20260917', '2026', '09', '17', '星期四', '38', '20263', '2026-38', '202609', '20260914', '20260920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-18', '20260918', '2026', '09', '18', '星期五', '38', '20263', '2026-38', '202609', '20260914', '20260920', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-19', '20260919', '2026', '09', '19', '星期六', '38', '20263', '2026-38', '202609', '20260914', '20260920', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-20', '20260920', '2026', '09', '20', '星期日', '38', '20263', '2026-38', '202609', '20260921', '20260927', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-21', '20260921', '2026', '09', '21', '星期一', '39', '20263', '2026-39', '202609', '20260921', '20260927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-22', '20260922', '2026', '09', '22', '星期二', '39', '20263', '2026-39', '202609', '20260921', '20260927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-23', '20260923', '2026', '09', '23', '星期三', '39', '20263', '2026-39', '202609', '20260921', '20260927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-24', '20260924', '2026', '09', '24', '星期四', '39', '20263', '2026-39', '202609', '20260921', '20260927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-25', '20260925', '2026', '09', '25', '星期五', '39', '20263', '2026-39', '202609', '20260921', '20260927', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-26', '20260926', '2026', '09', '26', '星期六', '39', '20263', '2026-39', '202609', '20260921', '20260927', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-27', '20260927', '2026', '09', '27', '星期日', '39', '20263', '2026-39', '202609', '20260928', '20261004', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-28', '20260928', '2026', '09', '28', '星期一', '40', '20263', '2026-40', '202609', '20260928', '20261004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-29', '20260929', '2026', '09', '29', '星期二', '40', '20263', '2026-40', '202609', '20260928', '20261004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-09-30', '20260930', '2026', '09', '30', '星期三', '40', '20263', '2026-40', '202609', '20260928', '20261004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-01', '20261001', '2026', '10', '01', '星期四', '40', '20264', '2026-40', '202610', '20260928', '20261004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-02', '20261002', '2026', '10', '02', '星期五', '40', '20264', '2026-40', '202610', '20260928', '20261004', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-03', '20261003', '2026', '10', '03', '星期六', '40', '20264', '2026-40', '202610', '20260928', '20261004', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-04', '20261004', '2026', '10', '04', '星期日', '40', '20264', '2026-40', '202610', '20261005', '20261011', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-05', '20261005', '2026', '10', '05', '星期一', '41', '20264', '2026-41', '202610', '20261005', '20261011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-06', '20261006', '2026', '10', '06', '星期二', '41', '20264', '2026-41', '202610', '20261005', '20261011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-07', '20261007', '2026', '10', '07', '星期三', '41', '20264', '2026-41', '202610', '20261005', '20261011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-08', '20261008', '2026', '10', '08', '星期四', '41', '20264', '2026-41', '202610', '20261005', '20261011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-09', '20261009', '2026', '10', '09', '星期五', '41', '20264', '2026-41', '202610', '20261005', '20261011', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-10', '20261010', '2026', '10', '10', '星期六', '41', '20264', '2026-41', '202610', '20261005', '20261011', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-11', '20261011', '2026', '10', '11', '星期日', '41', '20264', '2026-41', '202610', '20261012', '20261018', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-12', '20261012', '2026', '10', '12', '星期一', '42', '20264', '2026-42', '202610', '20261012', '20261018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-13', '20261013', '2026', '10', '13', '星期二', '42', '20264', '2026-42', '202610', '20261012', '20261018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-14', '20261014', '2026', '10', '14', '星期三', '42', '20264', '2026-42', '202610', '20261012', '20261018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-15', '20261015', '2026', '10', '15', '星期四', '42', '20264', '2026-42', '202610', '20261012', '20261018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-16', '20261016', '2026', '10', '16', '星期五', '42', '20264', '2026-42', '202610', '20261012', '20261018', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-17', '20261017', '2026', '10', '17', '星期六', '42', '20264', '2026-42', '202610', '20261012', '20261018', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-18', '20261018', '2026', '10', '18', '星期日', '42', '20264', '2026-42', '202610', '20261019', '20261025', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-19', '20261019', '2026', '10', '19', '星期一', '43', '20264', '2026-43', '202610', '20261019', '20261025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-20', '20261020', '2026', '10', '20', '星期二', '43', '20264', '2026-43', '202610', '20261019', '20261025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-21', '20261021', '2026', '10', '21', '星期三', '43', '20264', '2026-43', '202610', '20261019', '20261025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-22', '20261022', '2026', '10', '22', '星期四', '43', '20264', '2026-43', '202610', '20261019', '20261025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-23', '20261023', '2026', '10', '23', '星期五', '43', '20264', '2026-43', '202610', '20261019', '20261025', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-24', '20261024', '2026', '10', '24', '星期六', '43', '20264', '2026-43', '202610', '20261019', '20261025', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-25', '20261025', '2026', '10', '25', '星期日', '43', '20264', '2026-43', '202610', '20261026', '20261101', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-26', '20261026', '2026', '10', '26', '星期一', '44', '20264', '2026-44', '202610', '20261026', '20261101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-27', '20261027', '2026', '10', '27', '星期二', '44', '20264', '2026-44', '202610', '20261026', '20261101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-28', '20261028', '2026', '10', '28', '星期三', '44', '20264', '2026-44', '202610', '20261026', '20261101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-29', '20261029', '2026', '10', '29', '星期四', '44', '20264', '2026-44', '202610', '20261026', '20261101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-30', '20261030', '2026', '10', '30', '星期五', '44', '20264', '2026-44', '202610', '20261026', '20261101', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-10-31', '20261031', '2026', '10', '31', '星期六', '44', '20264', '2026-44', '202610', '20261026', '20261101', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-01', '20261101', '2026', '11', '01', '星期日', '44', '20264', '2026-44', '202611', '20261102', '20261108', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-02', '20261102', '2026', '11', '02', '星期一', '45', '20264', '2026-45', '202611', '20261102', '20261108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-03', '20261103', '2026', '11', '03', '星期二', '45', '20264', '2026-45', '202611', '20261102', '20261108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-04', '20261104', '2026', '11', '04', '星期三', '45', '20264', '2026-45', '202611', '20261102', '20261108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-05', '20261105', '2026', '11', '05', '星期四', '45', '20264', '2026-45', '202611', '20261102', '20261108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-06', '20261106', '2026', '11', '06', '星期五', '45', '20264', '2026-45', '202611', '20261102', '20261108', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-07', '20261107', '2026', '11', '07', '星期六', '45', '20264', '2026-45', '202611', '20261102', '20261108', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-08', '20261108', '2026', '11', '08', '星期日', '45', '20264', '2026-45', '202611', '20261109', '20261115', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-09', '20261109', '2026', '11', '09', '星期一', '46', '20264', '2026-46', '202611', '20261109', '20261115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-10', '20261110', '2026', '11', '10', '星期二', '46', '20264', '2026-46', '202611', '20261109', '20261115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-11', '20261111', '2026', '11', '11', '星期三', '46', '20264', '2026-46', '202611', '20261109', '20261115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-12', '20261112', '2026', '11', '12', '星期四', '46', '20264', '2026-46', '202611', '20261109', '20261115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-13', '20261113', '2026', '11', '13', '星期五', '46', '20264', '2026-46', '202611', '20261109', '20261115', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-14', '20261114', '2026', '11', '14', '星期六', '46', '20264', '2026-46', '202611', '20261109', '20261115', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-15', '20261115', '2026', '11', '15', '星期日', '46', '20264', '2026-46', '202611', '20261116', '20261122', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-16', '20261116', '2026', '11', '16', '星期一', '47', '20264', '2026-47', '202611', '20261116', '20261122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-17', '20261117', '2026', '11', '17', '星期二', '47', '20264', '2026-47', '202611', '20261116', '20261122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-18', '20261118', '2026', '11', '18', '星期三', '47', '20264', '2026-47', '202611', '20261116', '20261122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-19', '20261119', '2026', '11', '19', '星期四', '47', '20264', '2026-47', '202611', '20261116', '20261122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-20', '20261120', '2026', '11', '20', '星期五', '47', '20264', '2026-47', '202611', '20261116', '20261122', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-21', '20261121', '2026', '11', '21', '星期六', '47', '20264', '2026-47', '202611', '20261116', '20261122', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-22', '20261122', '2026', '11', '22', '星期日', '47', '20264', '2026-47', '202611', '20261123', '20261129', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-23', '20261123', '2026', '11', '23', '星期一', '48', '20264', '2026-48', '202611', '20261123', '20261129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-24', '20261124', '2026', '11', '24', '星期二', '48', '20264', '2026-48', '202611', '20261123', '20261129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-25', '20261125', '2026', '11', '25', '星期三', '48', '20264', '2026-48', '202611', '20261123', '20261129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-26', '20261126', '2026', '11', '26', '星期四', '48', '20264', '2026-48', '202611', '20261123', '20261129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-27', '20261127', '2026', '11', '27', '星期五', '48', '20264', '2026-48', '202611', '20261123', '20261129', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-28', '20261128', '2026', '11', '28', '星期六', '48', '20264', '2026-48', '202611', '20261123', '20261129', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-29', '20261129', '2026', '11', '29', '星期日', '48', '20264', '2026-48', '202611', '20261130', '20261206', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-11-30', '20261130', '2026', '11', '30', '星期一', '49', '20264', '2026-49', '202611', '20261130', '20261206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-01', '20261201', '2026', '12', '01', '星期二', '49', '20264', '2026-49', '202612', '20261130', '20261206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-02', '20261202', '2026', '12', '02', '星期三', '49', '20264', '2026-49', '202612', '20261130', '20261206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-03', '20261203', '2026', '12', '03', '星期四', '49', '20264', '2026-49', '202612', '20261130', '20261206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-04', '20261204', '2026', '12', '04', '星期五', '49', '20264', '2026-49', '202612', '20261130', '20261206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-05', '20261205', '2026', '12', '05', '星期六', '49', '20264', '2026-49', '202612', '20261130', '20261206', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-06', '20261206', '2026', '12', '06', '星期日', '49', '20264', '2026-49', '202612', '20261207', '20261213', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-07', '20261207', '2026', '12', '07', '星期一', '50', '20264', '2026-50', '202612', '20261207', '20261213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-08', '20261208', '2026', '12', '08', '星期二', '50', '20264', '2026-50', '202612', '20261207', '20261213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-09', '20261209', '2026', '12', '09', '星期三', '50', '20264', '2026-50', '202612', '20261207', '20261213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-10', '20261210', '2026', '12', '10', '星期四', '50', '20264', '2026-50', '202612', '20261207', '20261213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-11', '20261211', '2026', '12', '11', '星期五', '50', '20264', '2026-50', '202612', '20261207', '20261213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-12', '20261212', '2026', '12', '12', '星期六', '50', '20264', '2026-50', '202612', '20261207', '20261213', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-13', '20261213', '2026', '12', '13', '星期日', '50', '20264', '2026-50', '202612', '20261214', '20261220', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-14', '20261214', '2026', '12', '14', '星期一', '51', '20264', '2026-51', '202612', '20261214', '20261220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-15', '20261215', '2026', '12', '15', '星期二', '51', '20264', '2026-51', '202612', '20261214', '20261220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-16', '20261216', '2026', '12', '16', '星期三', '51', '20264', '2026-51', '202612', '20261214', '20261220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-17', '20261217', '2026', '12', '17', '星期四', '51', '20264', '2026-51', '202612', '20261214', '20261220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-18', '20261218', '2026', '12', '18', '星期五', '51', '20264', '2026-51', '202612', '20261214', '20261220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-19', '20261219', '2026', '12', '19', '星期六', '51', '20264', '2026-51', '202612', '20261214', '20261220', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-20', '20261220', '2026', '12', '20', '星期日', '51', '20264', '2026-51', '202612', '20261221', '20261227', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-21', '20261221', '2026', '12', '21', '星期一', '52', '20264', '2026-52', '202612', '20261221', '20261227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-22', '20261222', '2026', '12', '22', '星期二', '52', '20264', '2026-52', '202612', '20261221', '20261227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-23', '20261223', '2026', '12', '23', '星期三', '52', '20264', '2026-52', '202612', '20261221', '20261227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-24', '20261224', '2026', '12', '24', '星期四', '52', '20264', '2026-52', '202612', '20261221', '20261227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-25', '20261225', '2026', '12', '25', '星期五', '52', '20264', '2026-52', '202612', '20261221', '20261227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-26', '20261226', '2026', '12', '26', '星期六', '52', '20264', '2026-52', '202612', '20261221', '20261227', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-27', '20261227', '2026', '12', '27', '星期日', '52', '20264', '2026-52', '202612', '20261228', '20270103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-28', '20261228', '2026', '12', '28', '星期一', '53', '20264', '2026-53', '202612', '20261228', '20270103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-29', '20261229', '2026', '12', '29', '星期二', '53', '20264', '2026-53', '202612', '20261228', '20270103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-30', '20261230', '2026', '12', '30', '星期三', '53', '20264', '2026-53', '202612', '20261228', '20270103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2026-12-31', '20261231', '2026', '12', '31', '星期四', '53', '20264', '2026-53', '202612', '20261228', '20270103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-01', '20270101', '2027', '01', '01', '星期五', '00', '20271', '2027-00', '202701', '20261228', '20270103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-02', '20270102', '2027', '01', '02', '星期六', '00', '20271', '2027-00', '202701', '20261228', '20270103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-03', '20270103', '2027', '01', '03', '星期日', '00', '20271', '2027-00', '202701', '20270104', '20270110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-04', '20270104', '2027', '01', '04', '星期一', '01', '20271', '2027-01', '202701', '20270104', '20270110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-05', '20270105', '2027', '01', '05', '星期二', '01', '20271', '2027-01', '202701', '20270104', '20270110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-06', '20270106', '2027', '01', '06', '星期三', '01', '20271', '2027-01', '202701', '20270104', '20270110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-07', '20270107', '2027', '01', '07', '星期四', '01', '20271', '2027-01', '202701', '20270104', '20270110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-08', '20270108', '2027', '01', '08', '星期五', '01', '20271', '2027-01', '202701', '20270104', '20270110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-09', '20270109', '2027', '01', '09', '星期六', '01', '20271', '2027-01', '202701', '20270104', '20270110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-10', '20270110', '2027', '01', '10', '星期日', '01', '20271', '2027-01', '202701', '20270111', '20270117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-11', '20270111', '2027', '01', '11', '星期一', '02', '20271', '2027-02', '202701', '20270111', '20270117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-12', '20270112', '2027', '01', '12', '星期二', '02', '20271', '2027-02', '202701', '20270111', '20270117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-13', '20270113', '2027', '01', '13', '星期三', '02', '20271', '2027-02', '202701', '20270111', '20270117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-14', '20270114', '2027', '01', '14', '星期四', '02', '20271', '2027-02', '202701', '20270111', '20270117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-15', '20270115', '2027', '01', '15', '星期五', '02', '20271', '2027-02', '202701', '20270111', '20270117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-16', '20270116', '2027', '01', '16', '星期六', '02', '20271', '2027-02', '202701', '20270111', '20270117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-17', '20270117', '2027', '01', '17', '星期日', '02', '20271', '2027-02', '202701', '20270118', '20270124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-18', '20270118', '2027', '01', '18', '星期一', '03', '20271', '2027-03', '202701', '20270118', '20270124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-19', '20270119', '2027', '01', '19', '星期二', '03', '20271', '2027-03', '202701', '20270118', '20270124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-20', '20270120', '2027', '01', '20', '星期三', '03', '20271', '2027-03', '202701', '20270118', '20270124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-21', '20270121', '2027', '01', '21', '星期四', '03', '20271', '2027-03', '202701', '20270118', '20270124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-22', '20270122', '2027', '01', '22', '星期五', '03', '20271', '2027-03', '202701', '20270118', '20270124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-23', '20270123', '2027', '01', '23', '星期六', '03', '20271', '2027-03', '202701', '20270118', '20270124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-24', '20270124', '2027', '01', '24', '星期日', '03', '20271', '2027-03', '202701', '20270125', '20270131', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-25', '20270125', '2027', '01', '25', '星期一', '04', '20271', '2027-04', '202701', '20270125', '20270131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-26', '20270126', '2027', '01', '26', '星期二', '04', '20271', '2027-04', '202701', '20270125', '20270131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-27', '20270127', '2027', '01', '27', '星期三', '04', '20271', '2027-04', '202701', '20270125', '20270131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-28', '20270128', '2027', '01', '28', '星期四', '04', '20271', '2027-04', '202701', '20270125', '20270131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-29', '20270129', '2027', '01', '29', '星期五', '04', '20271', '2027-04', '202701', '20270125', '20270131', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-30', '20270130', '2027', '01', '30', '星期六', '04', '20271', '2027-04', '202701', '20270125', '20270131', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-01-31', '20270131', '2027', '01', '31', '星期日', '04', '20271', '2027-04', '202701', '20270201', '20270207', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-01', '20270201', '2027', '02', '01', '星期一', '05', '20271', '2027-05', '202702', '20270201', '20270207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-02', '20270202', '2027', '02', '02', '星期二', '05', '20271', '2027-05', '202702', '20270201', '20270207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-03', '20270203', '2027', '02', '03', '星期三', '05', '20271', '2027-05', '202702', '20270201', '20270207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-04', '20270204', '2027', '02', '04', '星期四', '05', '20271', '2027-05', '202702', '20270201', '20270207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-05', '20270205', '2027', '02', '05', '星期五', '05', '20271', '2027-05', '202702', '20270201', '20270207', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-06', '20270206', '2027', '02', '06', '星期六', '05', '20271', '2027-05', '202702', '20270201', '20270207', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-07', '20270207', '2027', '02', '07', '星期日', '05', '20271', '2027-05', '202702', '20270208', '20270214', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-08', '20270208', '2027', '02', '08', '星期一', '06', '20271', '2027-06', '202702', '20270208', '20270214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-09', '20270209', '2027', '02', '09', '星期二', '06', '20271', '2027-06', '202702', '20270208', '20270214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-10', '20270210', '2027', '02', '10', '星期三', '06', '20271', '2027-06', '202702', '20270208', '20270214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-11', '20270211', '2027', '02', '11', '星期四', '06', '20271', '2027-06', '202702', '20270208', '20270214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-12', '20270212', '2027', '02', '12', '星期五', '06', '20271', '2027-06', '202702', '20270208', '20270214', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-13', '20270213', '2027', '02', '13', '星期六', '06', '20271', '2027-06', '202702', '20270208', '20270214', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-14', '20270214', '2027', '02', '14', '星期日', '06', '20271', '2027-06', '202702', '20270215', '20270221', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-15', '20270215', '2027', '02', '15', '星期一', '07', '20271', '2027-07', '202702', '20270215', '20270221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-16', '20270216', '2027', '02', '16', '星期二', '07', '20271', '2027-07', '202702', '20270215', '20270221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-17', '20270217', '2027', '02', '17', '星期三', '07', '20271', '2027-07', '202702', '20270215', '20270221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-18', '20270218', '2027', '02', '18', '星期四', '07', '20271', '2027-07', '202702', '20270215', '20270221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-19', '20270219', '2027', '02', '19', '星期五', '07', '20271', '2027-07', '202702', '20270215', '20270221', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-20', '20270220', '2027', '02', '20', '星期六', '07', '20271', '2027-07', '202702', '20270215', '20270221', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-21', '20270221', '2027', '02', '21', '星期日', '07', '20271', '2027-07', '202702', '20270222', '20270228', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-22', '20270222', '2027', '02', '22', '星期一', '08', '20271', '2027-08', '202702', '20270222', '20270228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-23', '20270223', '2027', '02', '23', '星期二', '08', '20271', '2027-08', '202702', '20270222', '20270228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-24', '20270224', '2027', '02', '24', '星期三', '08', '20271', '2027-08', '202702', '20270222', '20270228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-25', '20270225', '2027', '02', '25', '星期四', '08', '20271', '2027-08', '202702', '20270222', '20270228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-26', '20270226', '2027', '02', '26', '星期五', '08', '20271', '2027-08', '202702', '20270222', '20270228', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-27', '20270227', '2027', '02', '27', '星期六', '08', '20271', '2027-08', '202702', '20270222', '20270228', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-02-28', '20270228', '2027', '02', '28', '星期日', '08', '20271', '2027-08', '202702', '20270301', '20270307', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-01', '20270301', '2027', '03', '01', '星期一', '09', '20271', '2027-09', '202703', '20270301', '20270307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-02', '20270302', '2027', '03', '02', '星期二', '09', '20271', '2027-09', '202703', '20270301', '20270307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-03', '20270303', '2027', '03', '03', '星期三', '09', '20271', '2027-09', '202703', '20270301', '20270307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-04', '20270304', '2027', '03', '04', '星期四', '09', '20271', '2027-09', '202703', '20270301', '20270307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-05', '20270305', '2027', '03', '05', '星期五', '09', '20271', '2027-09', '202703', '20270301', '20270307', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-06', '20270306', '2027', '03', '06', '星期六', '09', '20271', '2027-09', '202703', '20270301', '20270307', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-07', '20270307', '2027', '03', '07', '星期日', '09', '20271', '2027-09', '202703', '20270308', '20270314', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-08', '20270308', '2027', '03', '08', '星期一', '10', '20271', '2027-10', '202703', '20270308', '20270314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-09', '20270309', '2027', '03', '09', '星期二', '10', '20271', '2027-10', '202703', '20270308', '20270314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-10', '20270310', '2027', '03', '10', '星期三', '10', '20271', '2027-10', '202703', '20270308', '20270314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-11', '20270311', '2027', '03', '11', '星期四', '10', '20271', '2027-10', '202703', '20270308', '20270314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-12', '20270312', '2027', '03', '12', '星期五', '10', '20271', '2027-10', '202703', '20270308', '20270314', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-13', '20270313', '2027', '03', '13', '星期六', '10', '20271', '2027-10', '202703', '20270308', '20270314', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-14', '20270314', '2027', '03', '14', '星期日', '10', '20271', '2027-10', '202703', '20270315', '20270321', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-15', '20270315', '2027', '03', '15', '星期一', '11', '20271', '2027-11', '202703', '20270315', '20270321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-16', '20270316', '2027', '03', '16', '星期二', '11', '20271', '2027-11', '202703', '20270315', '20270321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-17', '20270317', '2027', '03', '17', '星期三', '11', '20271', '2027-11', '202703', '20270315', '20270321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-18', '20270318', '2027', '03', '18', '星期四', '11', '20271', '2027-11', '202703', '20270315', '20270321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-19', '20270319', '2027', '03', '19', '星期五', '11', '20271', '2027-11', '202703', '20270315', '20270321', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-20', '20270320', '2027', '03', '20', '星期六', '11', '20271', '2027-11', '202703', '20270315', '20270321', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-21', '20270321', '2027', '03', '21', '星期日', '11', '20271', '2027-11', '202703', '20270322', '20270328', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-22', '20270322', '2027', '03', '22', '星期一', '12', '20271', '2027-12', '202703', '20270322', '20270328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-23', '20270323', '2027', '03', '23', '星期二', '12', '20271', '2027-12', '202703', '20270322', '20270328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-24', '20270324', '2027', '03', '24', '星期三', '12', '20271', '2027-12', '202703', '20270322', '20270328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-25', '20270325', '2027', '03', '25', '星期四', '12', '20271', '2027-12', '202703', '20270322', '20270328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-26', '20270326', '2027', '03', '26', '星期五', '12', '20271', '2027-12', '202703', '20270322', '20270328', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-27', '20270327', '2027', '03', '27', '星期六', '12', '20271', '2027-12', '202703', '20270322', '20270328', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-28', '20270328', '2027', '03', '28', '星期日', '12', '20271', '2027-12', '202703', '20270329', '20270404', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-29', '20270329', '2027', '03', '29', '星期一', '13', '20271', '2027-13', '202703', '20270329', '20270404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-30', '20270330', '2027', '03', '30', '星期二', '13', '20271', '2027-13', '202703', '20270329', '20270404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-03-31', '20270331', '2027', '03', '31', '星期三', '13', '20271', '2027-13', '202703', '20270329', '20270404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-01', '20270401', '2027', '04', '01', '星期四', '13', '20272', '2027-13', '202704', '20270329', '20270404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-02', '20270402', '2027', '04', '02', '星期五', '13', '20272', '2027-13', '202704', '20270329', '20270404', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-03', '20270403', '2027', '04', '03', '星期六', '13', '20272', '2027-13', '202704', '20270329', '20270404', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-04', '20270404', '2027', '04', '04', '星期日', '13', '20272', '2027-13', '202704', '20270405', '20270411', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-05', '20270405', '2027', '04', '05', '星期一', '14', '20272', '2027-14', '202704', '20270405', '20270411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-06', '20270406', '2027', '04', '06', '星期二', '14', '20272', '2027-14', '202704', '20270405', '20270411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-07', '20270407', '2027', '04', '07', '星期三', '14', '20272', '2027-14', '202704', '20270405', '20270411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-08', '20270408', '2027', '04', '08', '星期四', '14', '20272', '2027-14', '202704', '20270405', '20270411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-09', '20270409', '2027', '04', '09', '星期五', '14', '20272', '2027-14', '202704', '20270405', '20270411', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-10', '20270410', '2027', '04', '10', '星期六', '14', '20272', '2027-14', '202704', '20270405', '20270411', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-11', '20270411', '2027', '04', '11', '星期日', '14', '20272', '2027-14', '202704', '20270412', '20270418', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-12', '20270412', '2027', '04', '12', '星期一', '15', '20272', '2027-15', '202704', '20270412', '20270418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-13', '20270413', '2027', '04', '13', '星期二', '15', '20272', '2027-15', '202704', '20270412', '20270418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-14', '20270414', '2027', '04', '14', '星期三', '15', '20272', '2027-15', '202704', '20270412', '20270418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-15', '20270415', '2027', '04', '15', '星期四', '15', '20272', '2027-15', '202704', '20270412', '20270418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-16', '20270416', '2027', '04', '16', '星期五', '15', '20272', '2027-15', '202704', '20270412', '20270418', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-17', '20270417', '2027', '04', '17', '星期六', '15', '20272', '2027-15', '202704', '20270412', '20270418', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-18', '20270418', '2027', '04', '18', '星期日', '15', '20272', '2027-15', '202704', '20270419', '20270425', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-19', '20270419', '2027', '04', '19', '星期一', '16', '20272', '2027-16', '202704', '20270419', '20270425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-20', '20270420', '2027', '04', '20', '星期二', '16', '20272', '2027-16', '202704', '20270419', '20270425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-21', '20270421', '2027', '04', '21', '星期三', '16', '20272', '2027-16', '202704', '20270419', '20270425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-22', '20270422', '2027', '04', '22', '星期四', '16', '20272', '2027-16', '202704', '20270419', '20270425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-23', '20270423', '2027', '04', '23', '星期五', '16', '20272', '2027-16', '202704', '20270419', '20270425', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-24', '20270424', '2027', '04', '24', '星期六', '16', '20272', '2027-16', '202704', '20270419', '20270425', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-25', '20270425', '2027', '04', '25', '星期日', '16', '20272', '2027-16', '202704', '20270426', '20270502', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-26', '20270426', '2027', '04', '26', '星期一', '17', '20272', '2027-17', '202704', '20270426', '20270502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-27', '20270427', '2027', '04', '27', '星期二', '17', '20272', '2027-17', '202704', '20270426', '20270502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-28', '20270428', '2027', '04', '28', '星期三', '17', '20272', '2027-17', '202704', '20270426', '20270502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-29', '20270429', '2027', '04', '29', '星期四', '17', '20272', '2027-17', '202704', '20270426', '20270502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-04-30', '20270430', '2027', '04', '30', '星期五', '17', '20272', '2027-17', '202704', '20270426', '20270502', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-01', '20270501', '2027', '05', '01', '星期六', '17', '20272', '2027-17', '202705', '20270426', '20270502', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-02', '20270502', '2027', '05', '02', '星期日', '17', '20272', '2027-17', '202705', '20270503', '20270509', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-03', '20270503', '2027', '05', '03', '星期一', '18', '20272', '2027-18', '202705', '20270503', '20270509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-04', '20270504', '2027', '05', '04', '星期二', '18', '20272', '2027-18', '202705', '20270503', '20270509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-05', '20270505', '2027', '05', '05', '星期三', '18', '20272', '2027-18', '202705', '20270503', '20270509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-06', '20270506', '2027', '05', '06', '星期四', '18', '20272', '2027-18', '202705', '20270503', '20270509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-07', '20270507', '2027', '05', '07', '星期五', '18', '20272', '2027-18', '202705', '20270503', '20270509', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-08', '20270508', '2027', '05', '08', '星期六', '18', '20272', '2027-18', '202705', '20270503', '20270509', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-09', '20270509', '2027', '05', '09', '星期日', '18', '20272', '2027-18', '202705', '20270510', '20270516', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-10', '20270510', '2027', '05', '10', '星期一', '19', '20272', '2027-19', '202705', '20270510', '20270516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-11', '20270511', '2027', '05', '11', '星期二', '19', '20272', '2027-19', '202705', '20270510', '20270516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-12', '20270512', '2027', '05', '12', '星期三', '19', '20272', '2027-19', '202705', '20270510', '20270516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-13', '20270513', '2027', '05', '13', '星期四', '19', '20272', '2027-19', '202705', '20270510', '20270516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-14', '20270514', '2027', '05', '14', '星期五', '19', '20272', '2027-19', '202705', '20270510', '20270516', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-15', '20270515', '2027', '05', '15', '星期六', '19', '20272', '2027-19', '202705', '20270510', '20270516', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-16', '20270516', '2027', '05', '16', '星期日', '19', '20272', '2027-19', '202705', '20270517', '20270523', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-17', '20270517', '2027', '05', '17', '星期一', '20', '20272', '2027-20', '202705', '20270517', '20270523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-18', '20270518', '2027', '05', '18', '星期二', '20', '20272', '2027-20', '202705', '20270517', '20270523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-19', '20270519', '2027', '05', '19', '星期三', '20', '20272', '2027-20', '202705', '20270517', '20270523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-20', '20270520', '2027', '05', '20', '星期四', '20', '20272', '2027-20', '202705', '20270517', '20270523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-21', '20270521', '2027', '05', '21', '星期五', '20', '20272', '2027-20', '202705', '20270517', '20270523', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-22', '20270522', '2027', '05', '22', '星期六', '20', '20272', '2027-20', '202705', '20270517', '20270523', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-23', '20270523', '2027', '05', '23', '星期日', '20', '20272', '2027-20', '202705', '20270524', '20270530', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-24', '20270524', '2027', '05', '24', '星期一', '21', '20272', '2027-21', '202705', '20270524', '20270530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-25', '20270525', '2027', '05', '25', '星期二', '21', '20272', '2027-21', '202705', '20270524', '20270530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-26', '20270526', '2027', '05', '26', '星期三', '21', '20272', '2027-21', '202705', '20270524', '20270530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-27', '20270527', '2027', '05', '27', '星期四', '21', '20272', '2027-21', '202705', '20270524', '20270530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-28', '20270528', '2027', '05', '28', '星期五', '21', '20272', '2027-21', '202705', '20270524', '20270530', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-29', '20270529', '2027', '05', '29', '星期六', '21', '20272', '2027-21', '202705', '20270524', '20270530', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-30', '20270530', '2027', '05', '30', '星期日', '21', '20272', '2027-21', '202705', '20270531', '20270606', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-05-31', '20270531', '2027', '05', '31', '星期一', '22', '20272', '2027-22', '202705', '20270531', '20270606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-01', '20270601', '2027', '06', '01', '星期二', '22', '20272', '2027-22', '202706', '20270531', '20270606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-02', '20270602', '2027', '06', '02', '星期三', '22', '20272', '2027-22', '202706', '20270531', '20270606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-03', '20270603', '2027', '06', '03', '星期四', '22', '20272', '2027-22', '202706', '20270531', '20270606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-04', '20270604', '2027', '06', '04', '星期五', '22', '20272', '2027-22', '202706', '20270531', '20270606', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-05', '20270605', '2027', '06', '05', '星期六', '22', '20272', '2027-22', '202706', '20270531', '20270606', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-06', '20270606', '2027', '06', '06', '星期日', '22', '20272', '2027-22', '202706', '20270607', '20270613', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-07', '20270607', '2027', '06', '07', '星期一', '23', '20272', '2027-23', '202706', '20270607', '20270613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-08', '20270608', '2027', '06', '08', '星期二', '23', '20272', '2027-23', '202706', '20270607', '20270613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-09', '20270609', '2027', '06', '09', '星期三', '23', '20272', '2027-23', '202706', '20270607', '20270613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-10', '20270610', '2027', '06', '10', '星期四', '23', '20272', '2027-23', '202706', '20270607', '20270613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-11', '20270611', '2027', '06', '11', '星期五', '23', '20272', '2027-23', '202706', '20270607', '20270613', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-12', '20270612', '2027', '06', '12', '星期六', '23', '20272', '2027-23', '202706', '20270607', '20270613', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-13', '20270613', '2027', '06', '13', '星期日', '23', '20272', '2027-23', '202706', '20270614', '20270620', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-14', '20270614', '2027', '06', '14', '星期一', '24', '20272', '2027-24', '202706', '20270614', '20270620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-15', '20270615', '2027', '06', '15', '星期二', '24', '20272', '2027-24', '202706', '20270614', '20270620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-16', '20270616', '2027', '06', '16', '星期三', '24', '20272', '2027-24', '202706', '20270614', '20270620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-17', '20270617', '2027', '06', '17', '星期四', '24', '20272', '2027-24', '202706', '20270614', '20270620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-18', '20270618', '2027', '06', '18', '星期五', '24', '20272', '2027-24', '202706', '20270614', '20270620', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-19', '20270619', '2027', '06', '19', '星期六', '24', '20272', '2027-24', '202706', '20270614', '20270620', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-20', '20270620', '2027', '06', '20', '星期日', '24', '20272', '2027-24', '202706', '20270621', '20270627', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-21', '20270621', '2027', '06', '21', '星期一', '25', '20272', '2027-25', '202706', '20270621', '20270627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-22', '20270622', '2027', '06', '22', '星期二', '25', '20272', '2027-25', '202706', '20270621', '20270627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-23', '20270623', '2027', '06', '23', '星期三', '25', '20272', '2027-25', '202706', '20270621', '20270627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-24', '20270624', '2027', '06', '24', '星期四', '25', '20272', '2027-25', '202706', '20270621', '20270627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-25', '20270625', '2027', '06', '25', '星期五', '25', '20272', '2027-25', '202706', '20270621', '20270627', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-26', '20270626', '2027', '06', '26', '星期六', '25', '20272', '2027-25', '202706', '20270621', '20270627', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-27', '20270627', '2027', '06', '27', '星期日', '25', '20272', '2027-25', '202706', '20270628', '20270704', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-28', '20270628', '2027', '06', '28', '星期一', '26', '20272', '2027-26', '202706', '20270628', '20270704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-29', '20270629', '2027', '06', '29', '星期二', '26', '20272', '2027-26', '202706', '20270628', '20270704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-06-30', '20270630', '2027', '06', '30', '星期三', '26', '20272', '2027-26', '202706', '20270628', '20270704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-01', '20270701', '2027', '07', '01', '星期四', '26', '20273', '2027-26', '202707', '20270628', '20270704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-02', '20270702', '2027', '07', '02', '星期五', '26', '20273', '2027-26', '202707', '20270628', '20270704', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-03', '20270703', '2027', '07', '03', '星期六', '26', '20273', '2027-26', '202707', '20270628', '20270704', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-04', '20270704', '2027', '07', '04', '星期日', '26', '20273', '2027-26', '202707', '20270705', '20270711', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-05', '20270705', '2027', '07', '05', '星期一', '27', '20273', '2027-27', '202707', '20270705', '20270711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-06', '20270706', '2027', '07', '06', '星期二', '27', '20273', '2027-27', '202707', '20270705', '20270711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-07', '20270707', '2027', '07', '07', '星期三', '27', '20273', '2027-27', '202707', '20270705', '20270711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-08', '20270708', '2027', '07', '08', '星期四', '27', '20273', '2027-27', '202707', '20270705', '20270711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-09', '20270709', '2027', '07', '09', '星期五', '27', '20273', '2027-27', '202707', '20270705', '20270711', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-10', '20270710', '2027', '07', '10', '星期六', '27', '20273', '2027-27', '202707', '20270705', '20270711', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-11', '20270711', '2027', '07', '11', '星期日', '27', '20273', '2027-27', '202707', '20270712', '20270718', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-12', '20270712', '2027', '07', '12', '星期一', '28', '20273', '2027-28', '202707', '20270712', '20270718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-13', '20270713', '2027', '07', '13', '星期二', '28', '20273', '2027-28', '202707', '20270712', '20270718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-14', '20270714', '2027', '07', '14', '星期三', '28', '20273', '2027-28', '202707', '20270712', '20270718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-15', '20270715', '2027', '07', '15', '星期四', '28', '20273', '2027-28', '202707', '20270712', '20270718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-16', '20270716', '2027', '07', '16', '星期五', '28', '20273', '2027-28', '202707', '20270712', '20270718', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-17', '20270717', '2027', '07', '17', '星期六', '28', '20273', '2027-28', '202707', '20270712', '20270718', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-18', '20270718', '2027', '07', '18', '星期日', '28', '20273', '2027-28', '202707', '20270719', '20270725', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-19', '20270719', '2027', '07', '19', '星期一', '29', '20273', '2027-29', '202707', '20270719', '20270725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-20', '20270720', '2027', '07', '20', '星期二', '29', '20273', '2027-29', '202707', '20270719', '20270725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-21', '20270721', '2027', '07', '21', '星期三', '29', '20273', '2027-29', '202707', '20270719', '20270725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-22', '20270722', '2027', '07', '22', '星期四', '29', '20273', '2027-29', '202707', '20270719', '20270725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-23', '20270723', '2027', '07', '23', '星期五', '29', '20273', '2027-29', '202707', '20270719', '20270725', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-24', '20270724', '2027', '07', '24', '星期六', '29', '20273', '2027-29', '202707', '20270719', '20270725', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-25', '20270725', '2027', '07', '25', '星期日', '29', '20273', '2027-29', '202707', '20270726', '20270801', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-26', '20270726', '2027', '07', '26', '星期一', '30', '20273', '2027-30', '202707', '20270726', '20270801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-27', '20270727', '2027', '07', '27', '星期二', '30', '20273', '2027-30', '202707', '20270726', '20270801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-28', '20270728', '2027', '07', '28', '星期三', '30', '20273', '2027-30', '202707', '20270726', '20270801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-29', '20270729', '2027', '07', '29', '星期四', '30', '20273', '2027-30', '202707', '20270726', '20270801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-30', '20270730', '2027', '07', '30', '星期五', '30', '20273', '2027-30', '202707', '20270726', '20270801', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-07-31', '20270731', '2027', '07', '31', '星期六', '30', '20273', '2027-30', '202707', '20270726', '20270801', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-01', '20270801', '2027', '08', '01', '星期日', '30', '20273', '2027-30', '202708', '20270802', '20270808', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-02', '20270802', '2027', '08', '02', '星期一', '31', '20273', '2027-31', '202708', '20270802', '20270808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-03', '20270803', '2027', '08', '03', '星期二', '31', '20273', '2027-31', '202708', '20270802', '20270808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-04', '20270804', '2027', '08', '04', '星期三', '31', '20273', '2027-31', '202708', '20270802', '20270808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-05', '20270805', '2027', '08', '05', '星期四', '31', '20273', '2027-31', '202708', '20270802', '20270808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-06', '20270806', '2027', '08', '06', '星期五', '31', '20273', '2027-31', '202708', '20270802', '20270808', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-07', '20270807', '2027', '08', '07', '星期六', '31', '20273', '2027-31', '202708', '20270802', '20270808', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-08', '20270808', '2027', '08', '08', '星期日', '31', '20273', '2027-31', '202708', '20270809', '20270815', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-09', '20270809', '2027', '08', '09', '星期一', '32', '20273', '2027-32', '202708', '20270809', '20270815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-10', '20270810', '2027', '08', '10', '星期二', '32', '20273', '2027-32', '202708', '20270809', '20270815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-11', '20270811', '2027', '08', '11', '星期三', '32', '20273', '2027-32', '202708', '20270809', '20270815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-12', '20270812', '2027', '08', '12', '星期四', '32', '20273', '2027-32', '202708', '20270809', '20270815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-13', '20270813', '2027', '08', '13', '星期五', '32', '20273', '2027-32', '202708', '20270809', '20270815', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-14', '20270814', '2027', '08', '14', '星期六', '32', '20273', '2027-32', '202708', '20270809', '20270815', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-15', '20270815', '2027', '08', '15', '星期日', '32', '20273', '2027-32', '202708', '20270816', '20270822', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-16', '20270816', '2027', '08', '16', '星期一', '33', '20273', '2027-33', '202708', '20270816', '20270822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-17', '20270817', '2027', '08', '17', '星期二', '33', '20273', '2027-33', '202708', '20270816', '20270822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-18', '20270818', '2027', '08', '18', '星期三', '33', '20273', '2027-33', '202708', '20270816', '20270822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-19', '20270819', '2027', '08', '19', '星期四', '33', '20273', '2027-33', '202708', '20270816', '20270822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-20', '20270820', '2027', '08', '20', '星期五', '33', '20273', '2027-33', '202708', '20270816', '20270822', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-21', '20270821', '2027', '08', '21', '星期六', '33', '20273', '2027-33', '202708', '20270816', '20270822', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-22', '20270822', '2027', '08', '22', '星期日', '33', '20273', '2027-33', '202708', '20270823', '20270829', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-23', '20270823', '2027', '08', '23', '星期一', '34', '20273', '2027-34', '202708', '20270823', '20270829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-24', '20270824', '2027', '08', '24', '星期二', '34', '20273', '2027-34', '202708', '20270823', '20270829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-25', '20270825', '2027', '08', '25', '星期三', '34', '20273', '2027-34', '202708', '20270823', '20270829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-26', '20270826', '2027', '08', '26', '星期四', '34', '20273', '2027-34', '202708', '20270823', '20270829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-27', '20270827', '2027', '08', '27', '星期五', '34', '20273', '2027-34', '202708', '20270823', '20270829', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-28', '20270828', '2027', '08', '28', '星期六', '34', '20273', '2027-34', '202708', '20270823', '20270829', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-29', '20270829', '2027', '08', '29', '星期日', '34', '20273', '2027-34', '202708', '20270830', '20270905', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-30', '20270830', '2027', '08', '30', '星期一', '35', '20273', '2027-35', '202708', '20270830', '20270905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-08-31', '20270831', '2027', '08', '31', '星期二', '35', '20273', '2027-35', '202708', '20270830', '20270905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-01', '20270901', '2027', '09', '01', '星期三', '35', '20273', '2027-35', '202709', '20270830', '20270905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-02', '20270902', '2027', '09', '02', '星期四', '35', '20273', '2027-35', '202709', '20270830', '20270905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-03', '20270903', '2027', '09', '03', '星期五', '35', '20273', '2027-35', '202709', '20270830', '20270905', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-04', '20270904', '2027', '09', '04', '星期六', '35', '20273', '2027-35', '202709', '20270830', '20270905', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-05', '20270905', '2027', '09', '05', '星期日', '35', '20273', '2027-35', '202709', '20270906', '20270912', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-06', '20270906', '2027', '09', '06', '星期一', '36', '20273', '2027-36', '202709', '20270906', '20270912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-07', '20270907', '2027', '09', '07', '星期二', '36', '20273', '2027-36', '202709', '20270906', '20270912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-08', '20270908', '2027', '09', '08', '星期三', '36', '20273', '2027-36', '202709', '20270906', '20270912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-09', '20270909', '2027', '09', '09', '星期四', '36', '20273', '2027-36', '202709', '20270906', '20270912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-10', '20270910', '2027', '09', '10', '星期五', '36', '20273', '2027-36', '202709', '20270906', '20270912', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-11', '20270911', '2027', '09', '11', '星期六', '36', '20273', '2027-36', '202709', '20270906', '20270912', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-12', '20270912', '2027', '09', '12', '星期日', '36', '20273', '2027-36', '202709', '20270913', '20270919', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-13', '20270913', '2027', '09', '13', '星期一', '37', '20273', '2027-37', '202709', '20270913', '20270919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-14', '20270914', '2027', '09', '14', '星期二', '37', '20273', '2027-37', '202709', '20270913', '20270919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-15', '20270915', '2027', '09', '15', '星期三', '37', '20273', '2027-37', '202709', '20270913', '20270919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-16', '20270916', '2027', '09', '16', '星期四', '37', '20273', '2027-37', '202709', '20270913', '20270919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-17', '20270917', '2027', '09', '17', '星期五', '37', '20273', '2027-37', '202709', '20270913', '20270919', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-18', '20270918', '2027', '09', '18', '星期六', '37', '20273', '2027-37', '202709', '20270913', '20270919', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-19', '20270919', '2027', '09', '19', '星期日', '37', '20273', '2027-37', '202709', '20270920', '20270926', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-20', '20270920', '2027', '09', '20', '星期一', '38', '20273', '2027-38', '202709', '20270920', '20270926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-21', '20270921', '2027', '09', '21', '星期二', '38', '20273', '2027-38', '202709', '20270920', '20270926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-22', '20270922', '2027', '09', '22', '星期三', '38', '20273', '2027-38', '202709', '20270920', '20270926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-23', '20270923', '2027', '09', '23', '星期四', '38', '20273', '2027-38', '202709', '20270920', '20270926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-24', '20270924', '2027', '09', '24', '星期五', '38', '20273', '2027-38', '202709', '20270920', '20270926', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-25', '20270925', '2027', '09', '25', '星期六', '38', '20273', '2027-38', '202709', '20270920', '20270926', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-26', '20270926', '2027', '09', '26', '星期日', '38', '20273', '2027-38', '202709', '20270927', '20271003', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-27', '20270927', '2027', '09', '27', '星期一', '39', '20273', '2027-39', '202709', '20270927', '20271003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-28', '20270928', '2027', '09', '28', '星期二', '39', '20273', '2027-39', '202709', '20270927', '20271003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-29', '20270929', '2027', '09', '29', '星期三', '39', '20273', '2027-39', '202709', '20270927', '20271003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-09-30', '20270930', '2027', '09', '30', '星期四', '39', '20273', '2027-39', '202709', '20270927', '20271003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-01', '20271001', '2027', '10', '01', '星期五', '39', '20274', '2027-39', '202710', '20270927', '20271003', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-02', '20271002', '2027', '10', '02', '星期六', '39', '20274', '2027-39', '202710', '20270927', '20271003', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-03', '20271003', '2027', '10', '03', '星期日', '39', '20274', '2027-39', '202710', '20271004', '20271010', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-04', '20271004', '2027', '10', '04', '星期一', '40', '20274', '2027-40', '202710', '20271004', '20271010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-05', '20271005', '2027', '10', '05', '星期二', '40', '20274', '2027-40', '202710', '20271004', '20271010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-06', '20271006', '2027', '10', '06', '星期三', '40', '20274', '2027-40', '202710', '20271004', '20271010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-07', '20271007', '2027', '10', '07', '星期四', '40', '20274', '2027-40', '202710', '20271004', '20271010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-08', '20271008', '2027', '10', '08', '星期五', '40', '20274', '2027-40', '202710', '20271004', '20271010', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-09', '20271009', '2027', '10', '09', '星期六', '40', '20274', '2027-40', '202710', '20271004', '20271010', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-10', '20271010', '2027', '10', '10', '星期日', '40', '20274', '2027-40', '202710', '20271011', '20271017', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-11', '20271011', '2027', '10', '11', '星期一', '41', '20274', '2027-41', '202710', '20271011', '20271017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-12', '20271012', '2027', '10', '12', '星期二', '41', '20274', '2027-41', '202710', '20271011', '20271017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-13', '20271013', '2027', '10', '13', '星期三', '41', '20274', '2027-41', '202710', '20271011', '20271017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-14', '20271014', '2027', '10', '14', '星期四', '41', '20274', '2027-41', '202710', '20271011', '20271017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-15', '20271015', '2027', '10', '15', '星期五', '41', '20274', '2027-41', '202710', '20271011', '20271017', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-16', '20271016', '2027', '10', '16', '星期六', '41', '20274', '2027-41', '202710', '20271011', '20271017', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-17', '20271017', '2027', '10', '17', '星期日', '41', '20274', '2027-41', '202710', '20271018', '20271024', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-18', '20271018', '2027', '10', '18', '星期一', '42', '20274', '2027-42', '202710', '20271018', '20271024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-19', '20271019', '2027', '10', '19', '星期二', '42', '20274', '2027-42', '202710', '20271018', '20271024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-20', '20271020', '2027', '10', '20', '星期三', '42', '20274', '2027-42', '202710', '20271018', '20271024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-21', '20271021', '2027', '10', '21', '星期四', '42', '20274', '2027-42', '202710', '20271018', '20271024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-22', '20271022', '2027', '10', '22', '星期五', '42', '20274', '2027-42', '202710', '20271018', '20271024', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-23', '20271023', '2027', '10', '23', '星期六', '42', '20274', '2027-42', '202710', '20271018', '20271024', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-24', '20271024', '2027', '10', '24', '星期日', '42', '20274', '2027-42', '202710', '20271025', '20271031', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-25', '20271025', '2027', '10', '25', '星期一', '43', '20274', '2027-43', '202710', '20271025', '20271031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-26', '20271026', '2027', '10', '26', '星期二', '43', '20274', '2027-43', '202710', '20271025', '20271031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-27', '20271027', '2027', '10', '27', '星期三', '43', '20274', '2027-43', '202710', '20271025', '20271031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-28', '20271028', '2027', '10', '28', '星期四', '43', '20274', '2027-43', '202710', '20271025', '20271031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-29', '20271029', '2027', '10', '29', '星期五', '43', '20274', '2027-43', '202710', '20271025', '20271031', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-30', '20271030', '2027', '10', '30', '星期六', '43', '20274', '2027-43', '202710', '20271025', '20271031', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-10-31', '20271031', '2027', '10', '31', '星期日', '43', '20274', '2027-43', '202710', '20271101', '20271107', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-01', '20271101', '2027', '11', '01', '星期一', '44', '20274', '2027-44', '202711', '20271101', '20271107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-02', '20271102', '2027', '11', '02', '星期二', '44', '20274', '2027-44', '202711', '20271101', '20271107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-03', '20271103', '2027', '11', '03', '星期三', '44', '20274', '2027-44', '202711', '20271101', '20271107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-04', '20271104', '2027', '11', '04', '星期四', '44', '20274', '2027-44', '202711', '20271101', '20271107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-05', '20271105', '2027', '11', '05', '星期五', '44', '20274', '2027-44', '202711', '20271101', '20271107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-06', '20271106', '2027', '11', '06', '星期六', '44', '20274', '2027-44', '202711', '20271101', '20271107', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-07', '20271107', '2027', '11', '07', '星期日', '44', '20274', '2027-44', '202711', '20271108', '20271114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-08', '20271108', '2027', '11', '08', '星期一', '45', '20274', '2027-45', '202711', '20271108', '20271114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-09', '20271109', '2027', '11', '09', '星期二', '45', '20274', '2027-45', '202711', '20271108', '20271114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-10', '20271110', '2027', '11', '10', '星期三', '45', '20274', '2027-45', '202711', '20271108', '20271114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-11', '20271111', '2027', '11', '11', '星期四', '45', '20274', '2027-45', '202711', '20271108', '20271114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-12', '20271112', '2027', '11', '12', '星期五', '45', '20274', '2027-45', '202711', '20271108', '20271114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-13', '20271113', '2027', '11', '13', '星期六', '45', '20274', '2027-45', '202711', '20271108', '20271114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-14', '20271114', '2027', '11', '14', '星期日', '45', '20274', '2027-45', '202711', '20271115', '20271121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-15', '20271115', '2027', '11', '15', '星期一', '46', '20274', '2027-46', '202711', '20271115', '20271121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-16', '20271116', '2027', '11', '16', '星期二', '46', '20274', '2027-46', '202711', '20271115', '20271121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-17', '20271117', '2027', '11', '17', '星期三', '46', '20274', '2027-46', '202711', '20271115', '20271121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-18', '20271118', '2027', '11', '18', '星期四', '46', '20274', '2027-46', '202711', '20271115', '20271121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-19', '20271119', '2027', '11', '19', '星期五', '46', '20274', '2027-46', '202711', '20271115', '20271121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-20', '20271120', '2027', '11', '20', '星期六', '46', '20274', '2027-46', '202711', '20271115', '20271121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-21', '20271121', '2027', '11', '21', '星期日', '46', '20274', '2027-46', '202711', '20271122', '20271128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-22', '20271122', '2027', '11', '22', '星期一', '47', '20274', '2027-47', '202711', '20271122', '20271128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-23', '20271123', '2027', '11', '23', '星期二', '47', '20274', '2027-47', '202711', '20271122', '20271128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-24', '20271124', '2027', '11', '24', '星期三', '47', '20274', '2027-47', '202711', '20271122', '20271128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-25', '20271125', '2027', '11', '25', '星期四', '47', '20274', '2027-47', '202711', '20271122', '20271128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-26', '20271126', '2027', '11', '26', '星期五', '47', '20274', '2027-47', '202711', '20271122', '20271128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-27', '20271127', '2027', '11', '27', '星期六', '47', '20274', '2027-47', '202711', '20271122', '20271128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-28', '20271128', '2027', '11', '28', '星期日', '47', '20274', '2027-47', '202711', '20271129', '20271205', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-29', '20271129', '2027', '11', '29', '星期一', '48', '20274', '2027-48', '202711', '20271129', '20271205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-11-30', '20271130', '2027', '11', '30', '星期二', '48', '20274', '2027-48', '202711', '20271129', '20271205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-01', '20271201', '2027', '12', '01', '星期三', '48', '20274', '2027-48', '202712', '20271129', '20271205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-02', '20271202', '2027', '12', '02', '星期四', '48', '20274', '2027-48', '202712', '20271129', '20271205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-03', '20271203', '2027', '12', '03', '星期五', '48', '20274', '2027-48', '202712', '20271129', '20271205', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-04', '20271204', '2027', '12', '04', '星期六', '48', '20274', '2027-48', '202712', '20271129', '20271205', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-05', '20271205', '2027', '12', '05', '星期日', '48', '20274', '2027-48', '202712', '20271206', '20271212', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-06', '20271206', '2027', '12', '06', '星期一', '49', '20274', '2027-49', '202712', '20271206', '20271212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-07', '20271207', '2027', '12', '07', '星期二', '49', '20274', '2027-49', '202712', '20271206', '20271212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-08', '20271208', '2027', '12', '08', '星期三', '49', '20274', '2027-49', '202712', '20271206', '20271212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-09', '20271209', '2027', '12', '09', '星期四', '49', '20274', '2027-49', '202712', '20271206', '20271212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-10', '20271210', '2027', '12', '10', '星期五', '49', '20274', '2027-49', '202712', '20271206', '20271212', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-11', '20271211', '2027', '12', '11', '星期六', '49', '20274', '2027-49', '202712', '20271206', '20271212', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-12', '20271212', '2027', '12', '12', '星期日', '49', '20274', '2027-49', '202712', '20271213', '20271219', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-13', '20271213', '2027', '12', '13', '星期一', '50', '20274', '2027-50', '202712', '20271213', '20271219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-14', '20271214', '2027', '12', '14', '星期二', '50', '20274', '2027-50', '202712', '20271213', '20271219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-15', '20271215', '2027', '12', '15', '星期三', '50', '20274', '2027-50', '202712', '20271213', '20271219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-16', '20271216', '2027', '12', '16', '星期四', '50', '20274', '2027-50', '202712', '20271213', '20271219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-17', '20271217', '2027', '12', '17', '星期五', '50', '20274', '2027-50', '202712', '20271213', '20271219', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-18', '20271218', '2027', '12', '18', '星期六', '50', '20274', '2027-50', '202712', '20271213', '20271219', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-19', '20271219', '2027', '12', '19', '星期日', '50', '20274', '2027-50', '202712', '20271220', '20271226', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-20', '20271220', '2027', '12', '20', '星期一', '51', '20274', '2027-51', '202712', '20271220', '20271226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-21', '20271221', '2027', '12', '21', '星期二', '51', '20274', '2027-51', '202712', '20271220', '20271226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-22', '20271222', '2027', '12', '22', '星期三', '51', '20274', '2027-51', '202712', '20271220', '20271226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-23', '20271223', '2027', '12', '23', '星期四', '51', '20274', '2027-51', '202712', '20271220', '20271226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-24', '20271224', '2027', '12', '24', '星期五', '51', '20274', '2027-51', '202712', '20271220', '20271226', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-25', '20271225', '2027', '12', '25', '星期六', '51', '20274', '2027-51', '202712', '20271220', '20271226', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-26', '20271226', '2027', '12', '26', '星期日', '51', '20274', '2027-51', '202712', '20271227', '20280102', '1');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-27', '20271227', '2027', '12', '27', '星期一', '52', '20274', '2027-52', '202712', '20271227', '20280102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-28', '20271228', '2027', '12', '28', '星期二', '52', '20274', '2027-52', '202712', '20271227', '20280102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-29', '20271229', '2027', '12', '29', '星期三', '52', '20274', '2027-52', '202712', '20271227', '20280102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-30', '20271230', '2027', '12', '30', '星期四', '52', '20274', '2027-52', '202712', '20271227', '20280102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2027-12-31', '20271231', '2027', '12', '31', '星期五', '52', '20274', '2027-52', '202712', '20271227', '20280102', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-01', '20280101', '2028', '01', '01', '星期六', '00', '20281', '2028-00', '202801', '20271227', '20280102', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-02', '20280102', '2028', '01', '02', '星期日', '00', '20281', '2028-00', '202801', '20280103', '20280109', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-03', '20280103', '2028', '01', '03', '星期一', '01', '20281', '2028-01', '202801', '20280103', '20280109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-04', '20280104', '2028', '01', '04', '星期二', '01', '20281', '2028-01', '202801', '20280103', '20280109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-05', '20280105', '2028', '01', '05', '星期三', '01', '20281', '2028-01', '202801', '20280103', '20280109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-06', '20280106', '2028', '01', '06', '星期四', '01', '20281', '2028-01', '202801', '20280103', '20280109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-07', '20280107', '2028', '01', '07', '星期五', '01', '20281', '2028-01', '202801', '20280103', '20280109', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-08', '20280108', '2028', '01', '08', '星期六', '01', '20281', '2028-01', '202801', '20280103', '20280109', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-09', '20280109', '2028', '01', '09', '星期日', '01', '20281', '2028-01', '202801', '20280110', '20280116', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-10', '20280110', '2028', '01', '10', '星期一', '02', '20281', '2028-02', '202801', '20280110', '20280116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-11', '20280111', '2028', '01', '11', '星期二', '02', '20281', '2028-02', '202801', '20280110', '20280116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-12', '20280112', '2028', '01', '12', '星期三', '02', '20281', '2028-02', '202801', '20280110', '20280116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-13', '20280113', '2028', '01', '13', '星期四', '02', '20281', '2028-02', '202801', '20280110', '20280116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-14', '20280114', '2028', '01', '14', '星期五', '02', '20281', '2028-02', '202801', '20280110', '20280116', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-15', '20280115', '2028', '01', '15', '星期六', '02', '20281', '2028-02', '202801', '20280110', '20280116', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-16', '20280116', '2028', '01', '16', '星期日', '02', '20281', '2028-02', '202801', '20280117', '20280123', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-17', '20280117', '2028', '01', '17', '星期一', '03', '20281', '2028-03', '202801', '20280117', '20280123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-18', '20280118', '2028', '01', '18', '星期二', '03', '20281', '2028-03', '202801', '20280117', '20280123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-19', '20280119', '2028', '01', '19', '星期三', '03', '20281', '2028-03', '202801', '20280117', '20280123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-20', '20280120', '2028', '01', '20', '星期四', '03', '20281', '2028-03', '202801', '20280117', '20280123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-21', '20280121', '2028', '01', '21', '星期五', '03', '20281', '2028-03', '202801', '20280117', '20280123', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-22', '20280122', '2028', '01', '22', '星期六', '03', '20281', '2028-03', '202801', '20280117', '20280123', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-23', '20280123', '2028', '01', '23', '星期日', '03', '20281', '2028-03', '202801', '20280124', '20280130', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-24', '20280124', '2028', '01', '24', '星期一', '04', '20281', '2028-04', '202801', '20280124', '20280130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-25', '20280125', '2028', '01', '25', '星期二', '04', '20281', '2028-04', '202801', '20280124', '20280130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-26', '20280126', '2028', '01', '26', '星期三', '04', '20281', '2028-04', '202801', '20280124', '20280130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-27', '20280127', '2028', '01', '27', '星期四', '04', '20281', '2028-04', '202801', '20280124', '20280130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-28', '20280128', '2028', '01', '28', '星期五', '04', '20281', '2028-04', '202801', '20280124', '20280130', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-29', '20280129', '2028', '01', '29', '星期六', '04', '20281', '2028-04', '202801', '20280124', '20280130', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-30', '20280130', '2028', '01', '30', '星期日', '04', '20281', '2028-04', '202801', '20280131', '20280206', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-01-31', '20280131', '2028', '01', '31', '星期一', '05', '20281', '2028-05', '202801', '20280131', '20280206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-01', '20280201', '2028', '02', '01', '星期二', '05', '20281', '2028-05', '202802', '20280131', '20280206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-02', '20280202', '2028', '02', '02', '星期三', '05', '20281', '2028-05', '202802', '20280131', '20280206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-03', '20280203', '2028', '02', '03', '星期四', '05', '20281', '2028-05', '202802', '20280131', '20280206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-04', '20280204', '2028', '02', '04', '星期五', '05', '20281', '2028-05', '202802', '20280131', '20280206', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-05', '20280205', '2028', '02', '05', '星期六', '05', '20281', '2028-05', '202802', '20280131', '20280206', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-06', '20280206', '2028', '02', '06', '星期日', '05', '20281', '2028-05', '202802', '20280207', '20280213', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-07', '20280207', '2028', '02', '07', '星期一', '06', '20281', '2028-06', '202802', '20280207', '20280213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-08', '20280208', '2028', '02', '08', '星期二', '06', '20281', '2028-06', '202802', '20280207', '20280213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-09', '20280209', '2028', '02', '09', '星期三', '06', '20281', '2028-06', '202802', '20280207', '20280213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-10', '20280210', '2028', '02', '10', '星期四', '06', '20281', '2028-06', '202802', '20280207', '20280213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-11', '20280211', '2028', '02', '11', '星期五', '06', '20281', '2028-06', '202802', '20280207', '20280213', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-12', '20280212', '2028', '02', '12', '星期六', '06', '20281', '2028-06', '202802', '20280207', '20280213', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-13', '20280213', '2028', '02', '13', '星期日', '06', '20281', '2028-06', '202802', '20280214', '20280220', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-14', '20280214', '2028', '02', '14', '星期一', '07', '20281', '2028-07', '202802', '20280214', '20280220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-15', '20280215', '2028', '02', '15', '星期二', '07', '20281', '2028-07', '202802', '20280214', '20280220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-16', '20280216', '2028', '02', '16', '星期三', '07', '20281', '2028-07', '202802', '20280214', '20280220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-17', '20280217', '2028', '02', '17', '星期四', '07', '20281', '2028-07', '202802', '20280214', '20280220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-18', '20280218', '2028', '02', '18', '星期五', '07', '20281', '2028-07', '202802', '20280214', '20280220', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-19', '20280219', '2028', '02', '19', '星期六', '07', '20281', '2028-07', '202802', '20280214', '20280220', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-20', '20280220', '2028', '02', '20', '星期日', '07', '20281', '2028-07', '202802', '20280221', '20280227', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-21', '20280221', '2028', '02', '21', '星期一', '08', '20281', '2028-08', '202802', '20280221', '20280227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-22', '20280222', '2028', '02', '22', '星期二', '08', '20281', '2028-08', '202802', '20280221', '20280227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-23', '20280223', '2028', '02', '23', '星期三', '08', '20281', '2028-08', '202802', '20280221', '20280227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-24', '20280224', '2028', '02', '24', '星期四', '08', '20281', '2028-08', '202802', '20280221', '20280227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-25', '20280225', '2028', '02', '25', '星期五', '08', '20281', '2028-08', '202802', '20280221', '20280227', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-26', '20280226', '2028', '02', '26', '星期六', '08', '20281', '2028-08', '202802', '20280221', '20280227', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-27', '20280227', '2028', '02', '27', '星期日', '08', '20281', '2028-08', '202802', '20280228', '20280305', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-28', '20280228', '2028', '02', '28', '星期一', '09', '20281', '2028-09', '202802', '20280228', '20280305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-02-29', '20280229', '2028', '02', '29', '星期二', '09', '20281', '2028-09', '202802', '20280228', '20280305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-01', '20280301', '2028', '03', '01', '星期三', '09', '20281', '2028-09', '202803', '20280228', '20280305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-02', '20280302', '2028', '03', '02', '星期四', '09', '20281', '2028-09', '202803', '20280228', '20280305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-03', '20280303', '2028', '03', '03', '星期五', '09', '20281', '2028-09', '202803', '20280228', '20280305', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-04', '20280304', '2028', '03', '04', '星期六', '09', '20281', '2028-09', '202803', '20280228', '20280305', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-05', '20280305', '2028', '03', '05', '星期日', '09', '20281', '2028-09', '202803', '20280306', '20280312', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-06', '20280306', '2028', '03', '06', '星期一', '10', '20281', '2028-10', '202803', '20280306', '20280312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-07', '20280307', '2028', '03', '07', '星期二', '10', '20281', '2028-10', '202803', '20280306', '20280312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-08', '20280308', '2028', '03', '08', '星期三', '10', '20281', '2028-10', '202803', '20280306', '20280312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-09', '20280309', '2028', '03', '09', '星期四', '10', '20281', '2028-10', '202803', '20280306', '20280312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-10', '20280310', '2028', '03', '10', '星期五', '10', '20281', '2028-10', '202803', '20280306', '20280312', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-11', '20280311', '2028', '03', '11', '星期六', '10', '20281', '2028-10', '202803', '20280306', '20280312', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-12', '20280312', '2028', '03', '12', '星期日', '10', '20281', '2028-10', '202803', '20280313', '20280319', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-13', '20280313', '2028', '03', '13', '星期一', '11', '20281', '2028-11', '202803', '20280313', '20280319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-14', '20280314', '2028', '03', '14', '星期二', '11', '20281', '2028-11', '202803', '20280313', '20280319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-15', '20280315', '2028', '03', '15', '星期三', '11', '20281', '2028-11', '202803', '20280313', '20280319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-16', '20280316', '2028', '03', '16', '星期四', '11', '20281', '2028-11', '202803', '20280313', '20280319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-17', '20280317', '2028', '03', '17', '星期五', '11', '20281', '2028-11', '202803', '20280313', '20280319', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-18', '20280318', '2028', '03', '18', '星期六', '11', '20281', '2028-11', '202803', '20280313', '20280319', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-19', '20280319', '2028', '03', '19', '星期日', '11', '20281', '2028-11', '202803', '20280320', '20280326', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-20', '20280320', '2028', '03', '20', '星期一', '12', '20281', '2028-12', '202803', '20280320', '20280326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-21', '20280321', '2028', '03', '21', '星期二', '12', '20281', '2028-12', '202803', '20280320', '20280326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-22', '20280322', '2028', '03', '22', '星期三', '12', '20281', '2028-12', '202803', '20280320', '20280326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-23', '20280323', '2028', '03', '23', '星期四', '12', '20281', '2028-12', '202803', '20280320', '20280326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-24', '20280324', '2028', '03', '24', '星期五', '12', '20281', '2028-12', '202803', '20280320', '20280326', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-25', '20280325', '2028', '03', '25', '星期六', '12', '20281', '2028-12', '202803', '20280320', '20280326', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-26', '20280326', '2028', '03', '26', '星期日', '12', '20281', '2028-12', '202803', '20280327', '20280402', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-27', '20280327', '2028', '03', '27', '星期一', '13', '20281', '2028-13', '202803', '20280327', '20280402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-28', '20280328', '2028', '03', '28', '星期二', '13', '20281', '2028-13', '202803', '20280327', '20280402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-29', '20280329', '2028', '03', '29', '星期三', '13', '20281', '2028-13', '202803', '20280327', '20280402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-30', '20280330', '2028', '03', '30', '星期四', '13', '20281', '2028-13', '202803', '20280327', '20280402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-03-31', '20280331', '2028', '03', '31', '星期五', '13', '20281', '2028-13', '202803', '20280327', '20280402', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-01', '20280401', '2028', '04', '01', '星期六', '13', '20282', '2028-13', '202804', '20280327', '20280402', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-02', '20280402', '2028', '04', '02', '星期日', '13', '20282', '2028-13', '202804', '20280403', '20280409', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-03', '20280403', '2028', '04', '03', '星期一', '14', '20282', '2028-14', '202804', '20280403', '20280409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-04', '20280404', '2028', '04', '04', '星期二', '14', '20282', '2028-14', '202804', '20280403', '20280409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-05', '20280405', '2028', '04', '05', '星期三', '14', '20282', '2028-14', '202804', '20280403', '20280409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-06', '20280406', '2028', '04', '06', '星期四', '14', '20282', '2028-14', '202804', '20280403', '20280409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-07', '20280407', '2028', '04', '07', '星期五', '14', '20282', '2028-14', '202804', '20280403', '20280409', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-08', '20280408', '2028', '04', '08', '星期六', '14', '20282', '2028-14', '202804', '20280403', '20280409', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-09', '20280409', '2028', '04', '09', '星期日', '14', '20282', '2028-14', '202804', '20280410', '20280416', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-10', '20280410', '2028', '04', '10', '星期一', '15', '20282', '2028-15', '202804', '20280410', '20280416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-11', '20280411', '2028', '04', '11', '星期二', '15', '20282', '2028-15', '202804', '20280410', '20280416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-12', '20280412', '2028', '04', '12', '星期三', '15', '20282', '2028-15', '202804', '20280410', '20280416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-13', '20280413', '2028', '04', '13', '星期四', '15', '20282', '2028-15', '202804', '20280410', '20280416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-14', '20280414', '2028', '04', '14', '星期五', '15', '20282', '2028-15', '202804', '20280410', '20280416', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-15', '20280415', '2028', '04', '15', '星期六', '15', '20282', '2028-15', '202804', '20280410', '20280416', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-16', '20280416', '2028', '04', '16', '星期日', '15', '20282', '2028-15', '202804', '20280417', '20280423', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-17', '20280417', '2028', '04', '17', '星期一', '16', '20282', '2028-16', '202804', '20280417', '20280423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-18', '20280418', '2028', '04', '18', '星期二', '16', '20282', '2028-16', '202804', '20280417', '20280423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-19', '20280419', '2028', '04', '19', '星期三', '16', '20282', '2028-16', '202804', '20280417', '20280423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-20', '20280420', '2028', '04', '20', '星期四', '16', '20282', '2028-16', '202804', '20280417', '20280423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-21', '20280421', '2028', '04', '21', '星期五', '16', '20282', '2028-16', '202804', '20280417', '20280423', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-22', '20280422', '2028', '04', '22', '星期六', '16', '20282', '2028-16', '202804', '20280417', '20280423', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-23', '20280423', '2028', '04', '23', '星期日', '16', '20282', '2028-16', '202804', '20280424', '20280430', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-24', '20280424', '2028', '04', '24', '星期一', '17', '20282', '2028-17', '202804', '20280424', '20280430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-25', '20280425', '2028', '04', '25', '星期二', '17', '20282', '2028-17', '202804', '20280424', '20280430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-26', '20280426', '2028', '04', '26', '星期三', '17', '20282', '2028-17', '202804', '20280424', '20280430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-27', '20280427', '2028', '04', '27', '星期四', '17', '20282', '2028-17', '202804', '20280424', '20280430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-28', '20280428', '2028', '04', '28', '星期五', '17', '20282', '2028-17', '202804', '20280424', '20280430', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-29', '20280429', '2028', '04', '29', '星期六', '17', '20282', '2028-17', '202804', '20280424', '20280430', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-04-30', '20280430', '2028', '04', '30', '星期日', '17', '20282', '2028-17', '202804', '20280501', '20280507', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-01', '20280501', '2028', '05', '01', '星期一', '18', '20282', '2028-18', '202805', '20280501', '20280507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-02', '20280502', '2028', '05', '02', '星期二', '18', '20282', '2028-18', '202805', '20280501', '20280507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-03', '20280503', '2028', '05', '03', '星期三', '18', '20282', '2028-18', '202805', '20280501', '20280507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-04', '20280504', '2028', '05', '04', '星期四', '18', '20282', '2028-18', '202805', '20280501', '20280507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-05', '20280505', '2028', '05', '05', '星期五', '18', '20282', '2028-18', '202805', '20280501', '20280507', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-06', '20280506', '2028', '05', '06', '星期六', '18', '20282', '2028-18', '202805', '20280501', '20280507', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-07', '20280507', '2028', '05', '07', '星期日', '18', '20282', '2028-18', '202805', '20280508', '20280514', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-08', '20280508', '2028', '05', '08', '星期一', '19', '20282', '2028-19', '202805', '20280508', '20280514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-09', '20280509', '2028', '05', '09', '星期二', '19', '20282', '2028-19', '202805', '20280508', '20280514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-10', '20280510', '2028', '05', '10', '星期三', '19', '20282', '2028-19', '202805', '20280508', '20280514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-11', '20280511', '2028', '05', '11', '星期四', '19', '20282', '2028-19', '202805', '20280508', '20280514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-12', '20280512', '2028', '05', '12', '星期五', '19', '20282', '2028-19', '202805', '20280508', '20280514', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-13', '20280513', '2028', '05', '13', '星期六', '19', '20282', '2028-19', '202805', '20280508', '20280514', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-14', '20280514', '2028', '05', '14', '星期日', '19', '20282', '2028-19', '202805', '20280515', '20280521', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-15', '20280515', '2028', '05', '15', '星期一', '20', '20282', '2028-20', '202805', '20280515', '20280521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-16', '20280516', '2028', '05', '16', '星期二', '20', '20282', '2028-20', '202805', '20280515', '20280521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-17', '20280517', '2028', '05', '17', '星期三', '20', '20282', '2028-20', '202805', '20280515', '20280521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-18', '20280518', '2028', '05', '18', '星期四', '20', '20282', '2028-20', '202805', '20280515', '20280521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-19', '20280519', '2028', '05', '19', '星期五', '20', '20282', '2028-20', '202805', '20280515', '20280521', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-20', '20280520', '2028', '05', '20', '星期六', '20', '20282', '2028-20', '202805', '20280515', '20280521', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-21', '20280521', '2028', '05', '21', '星期日', '20', '20282', '2028-20', '202805', '20280522', '20280528', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-22', '20280522', '2028', '05', '22', '星期一', '21', '20282', '2028-21', '202805', '20280522', '20280528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-23', '20280523', '2028', '05', '23', '星期二', '21', '20282', '2028-21', '202805', '20280522', '20280528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-24', '20280524', '2028', '05', '24', '星期三', '21', '20282', '2028-21', '202805', '20280522', '20280528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-25', '20280525', '2028', '05', '25', '星期四', '21', '20282', '2028-21', '202805', '20280522', '20280528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-26', '20280526', '2028', '05', '26', '星期五', '21', '20282', '2028-21', '202805', '20280522', '20280528', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-27', '20280527', '2028', '05', '27', '星期六', '21', '20282', '2028-21', '202805', '20280522', '20280528', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-28', '20280528', '2028', '05', '28', '星期日', '21', '20282', '2028-21', '202805', '20280529', '20280604', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-29', '20280529', '2028', '05', '29', '星期一', '22', '20282', '2028-22', '202805', '20280529', '20280604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-30', '20280530', '2028', '05', '30', '星期二', '22', '20282', '2028-22', '202805', '20280529', '20280604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-05-31', '20280531', '2028', '05', '31', '星期三', '22', '20282', '2028-22', '202805', '20280529', '20280604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-01', '20280601', '2028', '06', '01', '星期四', '22', '20282', '2028-22', '202806', '20280529', '20280604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-02', '20280602', '2028', '06', '02', '星期五', '22', '20282', '2028-22', '202806', '20280529', '20280604', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-03', '20280603', '2028', '06', '03', '星期六', '22', '20282', '2028-22', '202806', '20280529', '20280604', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-04', '20280604', '2028', '06', '04', '星期日', '22', '20282', '2028-22', '202806', '20280605', '20280611', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-05', '20280605', '2028', '06', '05', '星期一', '23', '20282', '2028-23', '202806', '20280605', '20280611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-06', '20280606', '2028', '06', '06', '星期二', '23', '20282', '2028-23', '202806', '20280605', '20280611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-07', '20280607', '2028', '06', '07', '星期三', '23', '20282', '2028-23', '202806', '20280605', '20280611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-08', '20280608', '2028', '06', '08', '星期四', '23', '20282', '2028-23', '202806', '20280605', '20280611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-09', '20280609', '2028', '06', '09', '星期五', '23', '20282', '2028-23', '202806', '20280605', '20280611', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-10', '20280610', '2028', '06', '10', '星期六', '23', '20282', '2028-23', '202806', '20280605', '20280611', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-11', '20280611', '2028', '06', '11', '星期日', '23', '20282', '2028-23', '202806', '20280612', '20280618', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-12', '20280612', '2028', '06', '12', '星期一', '24', '20282', '2028-24', '202806', '20280612', '20280618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-13', '20280613', '2028', '06', '13', '星期二', '24', '20282', '2028-24', '202806', '20280612', '20280618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-14', '20280614', '2028', '06', '14', '星期三', '24', '20282', '2028-24', '202806', '20280612', '20280618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-15', '20280615', '2028', '06', '15', '星期四', '24', '20282', '2028-24', '202806', '20280612', '20280618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-16', '20280616', '2028', '06', '16', '星期五', '24', '20282', '2028-24', '202806', '20280612', '20280618', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-17', '20280617', '2028', '06', '17', '星期六', '24', '20282', '2028-24', '202806', '20280612', '20280618', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-18', '20280618', '2028', '06', '18', '星期日', '24', '20282', '2028-24', '202806', '20280619', '20280625', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-19', '20280619', '2028', '06', '19', '星期一', '25', '20282', '2028-25', '202806', '20280619', '20280625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-20', '20280620', '2028', '06', '20', '星期二', '25', '20282', '2028-25', '202806', '20280619', '20280625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-21', '20280621', '2028', '06', '21', '星期三', '25', '20282', '2028-25', '202806', '20280619', '20280625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-22', '20280622', '2028', '06', '22', '星期四', '25', '20282', '2028-25', '202806', '20280619', '20280625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-23', '20280623', '2028', '06', '23', '星期五', '25', '20282', '2028-25', '202806', '20280619', '20280625', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-24', '20280624', '2028', '06', '24', '星期六', '25', '20282', '2028-25', '202806', '20280619', '20280625', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-25', '20280625', '2028', '06', '25', '星期日', '25', '20282', '2028-25', '202806', '20280626', '20280702', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-26', '20280626', '2028', '06', '26', '星期一', '26', '20282', '2028-26', '202806', '20280626', '20280702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-27', '20280627', '2028', '06', '27', '星期二', '26', '20282', '2028-26', '202806', '20280626', '20280702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-28', '20280628', '2028', '06', '28', '星期三', '26', '20282', '2028-26', '202806', '20280626', '20280702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-29', '20280629', '2028', '06', '29', '星期四', '26', '20282', '2028-26', '202806', '20280626', '20280702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-06-30', '20280630', '2028', '06', '30', '星期五', '26', '20282', '2028-26', '202806', '20280626', '20280702', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-01', '20280701', '2028', '07', '01', '星期六', '26', '20283', '2028-26', '202807', '20280626', '20280702', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-02', '20280702', '2028', '07', '02', '星期日', '26', '20283', '2028-26', '202807', '20280703', '20280709', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-03', '20280703', '2028', '07', '03', '星期一', '27', '20283', '2028-27', '202807', '20280703', '20280709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-04', '20280704', '2028', '07', '04', '星期二', '27', '20283', '2028-27', '202807', '20280703', '20280709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-05', '20280705', '2028', '07', '05', '星期三', '27', '20283', '2028-27', '202807', '20280703', '20280709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-06', '20280706', '2028', '07', '06', '星期四', '27', '20283', '2028-27', '202807', '20280703', '20280709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-07', '20280707', '2028', '07', '07', '星期五', '27', '20283', '2028-27', '202807', '20280703', '20280709', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-08', '20280708', '2028', '07', '08', '星期六', '27', '20283', '2028-27', '202807', '20280703', '20280709', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-09', '20280709', '2028', '07', '09', '星期日', '27', '20283', '2028-27', '202807', '20280710', '20280716', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-10', '20280710', '2028', '07', '10', '星期一', '28', '20283', '2028-28', '202807', '20280710', '20280716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-11', '20280711', '2028', '07', '11', '星期二', '28', '20283', '2028-28', '202807', '20280710', '20280716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-12', '20280712', '2028', '07', '12', '星期三', '28', '20283', '2028-28', '202807', '20280710', '20280716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-13', '20280713', '2028', '07', '13', '星期四', '28', '20283', '2028-28', '202807', '20280710', '20280716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-14', '20280714', '2028', '07', '14', '星期五', '28', '20283', '2028-28', '202807', '20280710', '20280716', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-15', '20280715', '2028', '07', '15', '星期六', '28', '20283', '2028-28', '202807', '20280710', '20280716', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-16', '20280716', '2028', '07', '16', '星期日', '28', '20283', '2028-28', '202807', '20280717', '20280723', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-17', '20280717', '2028', '07', '17', '星期一', '29', '20283', '2028-29', '202807', '20280717', '20280723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-18', '20280718', '2028', '07', '18', '星期二', '29', '20283', '2028-29', '202807', '20280717', '20280723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-19', '20280719', '2028', '07', '19', '星期三', '29', '20283', '2028-29', '202807', '20280717', '20280723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-20', '20280720', '2028', '07', '20', '星期四', '29', '20283', '2028-29', '202807', '20280717', '20280723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-21', '20280721', '2028', '07', '21', '星期五', '29', '20283', '2028-29', '202807', '20280717', '20280723', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-22', '20280722', '2028', '07', '22', '星期六', '29', '20283', '2028-29', '202807', '20280717', '20280723', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-23', '20280723', '2028', '07', '23', '星期日', '29', '20283', '2028-29', '202807', '20280724', '20280730', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-24', '20280724', '2028', '07', '24', '星期一', '30', '20283', '2028-30', '202807', '20280724', '20280730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-25', '20280725', '2028', '07', '25', '星期二', '30', '20283', '2028-30', '202807', '20280724', '20280730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-26', '20280726', '2028', '07', '26', '星期三', '30', '20283', '2028-30', '202807', '20280724', '20280730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-27', '20280727', '2028', '07', '27', '星期四', '30', '20283', '2028-30', '202807', '20280724', '20280730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-28', '20280728', '2028', '07', '28', '星期五', '30', '20283', '2028-30', '202807', '20280724', '20280730', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-29', '20280729', '2028', '07', '29', '星期六', '30', '20283', '2028-30', '202807', '20280724', '20280730', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-30', '20280730', '2028', '07', '30', '星期日', '30', '20283', '2028-30', '202807', '20280731', '20280806', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-07-31', '20280731', '2028', '07', '31', '星期一', '31', '20283', '2028-31', '202807', '20280731', '20280806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-01', '20280801', '2028', '08', '01', '星期二', '31', '20283', '2028-31', '202808', '20280731', '20280806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-02', '20280802', '2028', '08', '02', '星期三', '31', '20283', '2028-31', '202808', '20280731', '20280806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-03', '20280803', '2028', '08', '03', '星期四', '31', '20283', '2028-31', '202808', '20280731', '20280806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-04', '20280804', '2028', '08', '04', '星期五', '31', '20283', '2028-31', '202808', '20280731', '20280806', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-05', '20280805', '2028', '08', '05', '星期六', '31', '20283', '2028-31', '202808', '20280731', '20280806', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-06', '20280806', '2028', '08', '06', '星期日', '31', '20283', '2028-31', '202808', '20280807', '20280813', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-07', '20280807', '2028', '08', '07', '星期一', '32', '20283', '2028-32', '202808', '20280807', '20280813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-08', '20280808', '2028', '08', '08', '星期二', '32', '20283', '2028-32', '202808', '20280807', '20280813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-09', '20280809', '2028', '08', '09', '星期三', '32', '20283', '2028-32', '202808', '20280807', '20280813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-10', '20280810', '2028', '08', '10', '星期四', '32', '20283', '2028-32', '202808', '20280807', '20280813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-11', '20280811', '2028', '08', '11', '星期五', '32', '20283', '2028-32', '202808', '20280807', '20280813', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-12', '20280812', '2028', '08', '12', '星期六', '32', '20283', '2028-32', '202808', '20280807', '20280813', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-13', '20280813', '2028', '08', '13', '星期日', '32', '20283', '2028-32', '202808', '20280814', '20280820', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-14', '20280814', '2028', '08', '14', '星期一', '33', '20283', '2028-33', '202808', '20280814', '20280820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-15', '20280815', '2028', '08', '15', '星期二', '33', '20283', '2028-33', '202808', '20280814', '20280820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-16', '20280816', '2028', '08', '16', '星期三', '33', '20283', '2028-33', '202808', '20280814', '20280820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-17', '20280817', '2028', '08', '17', '星期四', '33', '20283', '2028-33', '202808', '20280814', '20280820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-18', '20280818', '2028', '08', '18', '星期五', '33', '20283', '2028-33', '202808', '20280814', '20280820', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-19', '20280819', '2028', '08', '19', '星期六', '33', '20283', '2028-33', '202808', '20280814', '20280820', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-20', '20280820', '2028', '08', '20', '星期日', '33', '20283', '2028-33', '202808', '20280821', '20280827', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-21', '20280821', '2028', '08', '21', '星期一', '34', '20283', '2028-34', '202808', '20280821', '20280827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-22', '20280822', '2028', '08', '22', '星期二', '34', '20283', '2028-34', '202808', '20280821', '20280827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-23', '20280823', '2028', '08', '23', '星期三', '34', '20283', '2028-34', '202808', '20280821', '20280827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-24', '20280824', '2028', '08', '24', '星期四', '34', '20283', '2028-34', '202808', '20280821', '20280827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-25', '20280825', '2028', '08', '25', '星期五', '34', '20283', '2028-34', '202808', '20280821', '20280827', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-26', '20280826', '2028', '08', '26', '星期六', '34', '20283', '2028-34', '202808', '20280821', '20280827', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-27', '20280827', '2028', '08', '27', '星期日', '34', '20283', '2028-34', '202808', '20280828', '20280903', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-28', '20280828', '2028', '08', '28', '星期一', '35', '20283', '2028-35', '202808', '20280828', '20280903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-29', '20280829', '2028', '08', '29', '星期二', '35', '20283', '2028-35', '202808', '20280828', '20280903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-30', '20280830', '2028', '08', '30', '星期三', '35', '20283', '2028-35', '202808', '20280828', '20280903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-08-31', '20280831', '2028', '08', '31', '星期四', '35', '20283', '2028-35', '202808', '20280828', '20280903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-01', '20280901', '2028', '09', '01', '星期五', '35', '20283', '2028-35', '202809', '20280828', '20280903', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-02', '20280902', '2028', '09', '02', '星期六', '35', '20283', '2028-35', '202809', '20280828', '20280903', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-03', '20280903', '2028', '09', '03', '星期日', '35', '20283', '2028-35', '202809', '20280904', '20280910', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-04', '20280904', '2028', '09', '04', '星期一', '36', '20283', '2028-36', '202809', '20280904', '20280910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-05', '20280905', '2028', '09', '05', '星期二', '36', '20283', '2028-36', '202809', '20280904', '20280910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-06', '20280906', '2028', '09', '06', '星期三', '36', '20283', '2028-36', '202809', '20280904', '20280910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-07', '20280907', '2028', '09', '07', '星期四', '36', '20283', '2028-36', '202809', '20280904', '20280910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-08', '20280908', '2028', '09', '08', '星期五', '36', '20283', '2028-36', '202809', '20280904', '20280910', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-09', '20280909', '2028', '09', '09', '星期六', '36', '20283', '2028-36', '202809', '20280904', '20280910', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-10', '20280910', '2028', '09', '10', '星期日', '36', '20283', '2028-36', '202809', '20280911', '20280917', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-11', '20280911', '2028', '09', '11', '星期一', '37', '20283', '2028-37', '202809', '20280911', '20280917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-12', '20280912', '2028', '09', '12', '星期二', '37', '20283', '2028-37', '202809', '20280911', '20280917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-13', '20280913', '2028', '09', '13', '星期三', '37', '20283', '2028-37', '202809', '20280911', '20280917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-14', '20280914', '2028', '09', '14', '星期四', '37', '20283', '2028-37', '202809', '20280911', '20280917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-15', '20280915', '2028', '09', '15', '星期五', '37', '20283', '2028-37', '202809', '20280911', '20280917', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-16', '20280916', '2028', '09', '16', '星期六', '37', '20283', '2028-37', '202809', '20280911', '20280917', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-17', '20280917', '2028', '09', '17', '星期日', '37', '20283', '2028-37', '202809', '20280918', '20280924', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-18', '20280918', '2028', '09', '18', '星期一', '38', '20283', '2028-38', '202809', '20280918', '20280924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-19', '20280919', '2028', '09', '19', '星期二', '38', '20283', '2028-38', '202809', '20280918', '20280924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-20', '20280920', '2028', '09', '20', '星期三', '38', '20283', '2028-38', '202809', '20280918', '20280924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-21', '20280921', '2028', '09', '21', '星期四', '38', '20283', '2028-38', '202809', '20280918', '20280924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-22', '20280922', '2028', '09', '22', '星期五', '38', '20283', '2028-38', '202809', '20280918', '20280924', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-23', '20280923', '2028', '09', '23', '星期六', '38', '20283', '2028-38', '202809', '20280918', '20280924', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-24', '20280924', '2028', '09', '24', '星期日', '38', '20283', '2028-38', '202809', '20280925', '20281001', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-25', '20280925', '2028', '09', '25', '星期一', '39', '20283', '2028-39', '202809', '20280925', '20281001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-26', '20280926', '2028', '09', '26', '星期二', '39', '20283', '2028-39', '202809', '20280925', '20281001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-27', '20280927', '2028', '09', '27', '星期三', '39', '20283', '2028-39', '202809', '20280925', '20281001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-28', '20280928', '2028', '09', '28', '星期四', '39', '20283', '2028-39', '202809', '20280925', '20281001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-29', '20280929', '2028', '09', '29', '星期五', '39', '20283', '2028-39', '202809', '20280925', '20281001', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-09-30', '20280930', '2028', '09', '30', '星期六', '39', '20283', '2028-39', '202809', '20280925', '20281001', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-01', '20281001', '2028', '10', '01', '星期日', '39', '20284', '2028-39', '202810', '20281002', '20281008', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-02', '20281002', '2028', '10', '02', '星期一', '40', '20284', '2028-40', '202810', '20281002', '20281008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-03', '20281003', '2028', '10', '03', '星期二', '40', '20284', '2028-40', '202810', '20281002', '20281008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-04', '20281004', '2028', '10', '04', '星期三', '40', '20284', '2028-40', '202810', '20281002', '20281008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-05', '20281005', '2028', '10', '05', '星期四', '40', '20284', '2028-40', '202810', '20281002', '20281008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-06', '20281006', '2028', '10', '06', '星期五', '40', '20284', '2028-40', '202810', '20281002', '20281008', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-07', '20281007', '2028', '10', '07', '星期六', '40', '20284', '2028-40', '202810', '20281002', '20281008', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-08', '20281008', '2028', '10', '08', '星期日', '40', '20284', '2028-40', '202810', '20281009', '20281015', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-09', '20281009', '2028', '10', '09', '星期一', '41', '20284', '2028-41', '202810', '20281009', '20281015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-10', '20281010', '2028', '10', '10', '星期二', '41', '20284', '2028-41', '202810', '20281009', '20281015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-11', '20281011', '2028', '10', '11', '星期三', '41', '20284', '2028-41', '202810', '20281009', '20281015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-12', '20281012', '2028', '10', '12', '星期四', '41', '20284', '2028-41', '202810', '20281009', '20281015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-13', '20281013', '2028', '10', '13', '星期五', '41', '20284', '2028-41', '202810', '20281009', '20281015', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-14', '20281014', '2028', '10', '14', '星期六', '41', '20284', '2028-41', '202810', '20281009', '20281015', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-15', '20281015', '2028', '10', '15', '星期日', '41', '20284', '2028-41', '202810', '20281016', '20281022', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-16', '20281016', '2028', '10', '16', '星期一', '42', '20284', '2028-42', '202810', '20281016', '20281022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-17', '20281017', '2028', '10', '17', '星期二', '42', '20284', '2028-42', '202810', '20281016', '20281022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-18', '20281018', '2028', '10', '18', '星期三', '42', '20284', '2028-42', '202810', '20281016', '20281022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-19', '20281019', '2028', '10', '19', '星期四', '42', '20284', '2028-42', '202810', '20281016', '20281022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-20', '20281020', '2028', '10', '20', '星期五', '42', '20284', '2028-42', '202810', '20281016', '20281022', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-21', '20281021', '2028', '10', '21', '星期六', '42', '20284', '2028-42', '202810', '20281016', '20281022', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-22', '20281022', '2028', '10', '22', '星期日', '42', '20284', '2028-42', '202810', '20281023', '20281029', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-23', '20281023', '2028', '10', '23', '星期一', '43', '20284', '2028-43', '202810', '20281023', '20281029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-24', '20281024', '2028', '10', '24', '星期二', '43', '20284', '2028-43', '202810', '20281023', '20281029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-25', '20281025', '2028', '10', '25', '星期三', '43', '20284', '2028-43', '202810', '20281023', '20281029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-26', '20281026', '2028', '10', '26', '星期四', '43', '20284', '2028-43', '202810', '20281023', '20281029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-27', '20281027', '2028', '10', '27', '星期五', '43', '20284', '2028-43', '202810', '20281023', '20281029', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-28', '20281028', '2028', '10', '28', '星期六', '43', '20284', '2028-43', '202810', '20281023', '20281029', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-29', '20281029', '2028', '10', '29', '星期日', '43', '20284', '2028-43', '202810', '20281030', '20281105', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-30', '20281030', '2028', '10', '30', '星期一', '44', '20284', '2028-44', '202810', '20281030', '20281105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-10-31', '20281031', '2028', '10', '31', '星期二', '44', '20284', '2028-44', '202810', '20281030', '20281105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-01', '20281101', '2028', '11', '01', '星期三', '44', '20284', '2028-44', '202811', '20281030', '20281105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-02', '20281102', '2028', '11', '02', '星期四', '44', '20284', '2028-44', '202811', '20281030', '20281105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-03', '20281103', '2028', '11', '03', '星期五', '44', '20284', '2028-44', '202811', '20281030', '20281105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-04', '20281104', '2028', '11', '04', '星期六', '44', '20284', '2028-44', '202811', '20281030', '20281105', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-05', '20281105', '2028', '11', '05', '星期日', '44', '20284', '2028-44', '202811', '20281106', '20281112', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-06', '20281106', '2028', '11', '06', '星期一', '45', '20284', '2028-45', '202811', '20281106', '20281112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-07', '20281107', '2028', '11', '07', '星期二', '45', '20284', '2028-45', '202811', '20281106', '20281112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-08', '20281108', '2028', '11', '08', '星期三', '45', '20284', '2028-45', '202811', '20281106', '20281112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-09', '20281109', '2028', '11', '09', '星期四', '45', '20284', '2028-45', '202811', '20281106', '20281112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-10', '20281110', '2028', '11', '10', '星期五', '45', '20284', '2028-45', '202811', '20281106', '20281112', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-11', '20281111', '2028', '11', '11', '星期六', '45', '20284', '2028-45', '202811', '20281106', '20281112', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-12', '20281112', '2028', '11', '12', '星期日', '45', '20284', '2028-45', '202811', '20281113', '20281119', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-13', '20281113', '2028', '11', '13', '星期一', '46', '20284', '2028-46', '202811', '20281113', '20281119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-14', '20281114', '2028', '11', '14', '星期二', '46', '20284', '2028-46', '202811', '20281113', '20281119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-15', '20281115', '2028', '11', '15', '星期三', '46', '20284', '2028-46', '202811', '20281113', '20281119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-16', '20281116', '2028', '11', '16', '星期四', '46', '20284', '2028-46', '202811', '20281113', '20281119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-17', '20281117', '2028', '11', '17', '星期五', '46', '20284', '2028-46', '202811', '20281113', '20281119', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-18', '20281118', '2028', '11', '18', '星期六', '46', '20284', '2028-46', '202811', '20281113', '20281119', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-19', '20281119', '2028', '11', '19', '星期日', '46', '20284', '2028-46', '202811', '20281120', '20281126', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-20', '20281120', '2028', '11', '20', '星期一', '47', '20284', '2028-47', '202811', '20281120', '20281126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-21', '20281121', '2028', '11', '21', '星期二', '47', '20284', '2028-47', '202811', '20281120', '20281126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-22', '20281122', '2028', '11', '22', '星期三', '47', '20284', '2028-47', '202811', '20281120', '20281126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-23', '20281123', '2028', '11', '23', '星期四', '47', '20284', '2028-47', '202811', '20281120', '20281126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-24', '20281124', '2028', '11', '24', '星期五', '47', '20284', '2028-47', '202811', '20281120', '20281126', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-25', '20281125', '2028', '11', '25', '星期六', '47', '20284', '2028-47', '202811', '20281120', '20281126', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-26', '20281126', '2028', '11', '26', '星期日', '47', '20284', '2028-47', '202811', '20281127', '20281203', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-27', '20281127', '2028', '11', '27', '星期一', '48', '20284', '2028-48', '202811', '20281127', '20281203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-28', '20281128', '2028', '11', '28', '星期二', '48', '20284', '2028-48', '202811', '20281127', '20281203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-29', '20281129', '2028', '11', '29', '星期三', '48', '20284', '2028-48', '202811', '20281127', '20281203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-11-30', '20281130', '2028', '11', '30', '星期四', '48', '20284', '2028-48', '202811', '20281127', '20281203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-01', '20281201', '2028', '12', '01', '星期五', '48', '20284', '2028-48', '202812', '20281127', '20281203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-02', '20281202', '2028', '12', '02', '星期六', '48', '20284', '2028-48', '202812', '20281127', '20281203', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-03', '20281203', '2028', '12', '03', '星期日', '48', '20284', '2028-48', '202812', '20281204', '20281210', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-04', '20281204', '2028', '12', '04', '星期一', '49', '20284', '2028-49', '202812', '20281204', '20281210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-05', '20281205', '2028', '12', '05', '星期二', '49', '20284', '2028-49', '202812', '20281204', '20281210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-06', '20281206', '2028', '12', '06', '星期三', '49', '20284', '2028-49', '202812', '20281204', '20281210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-07', '20281207', '2028', '12', '07', '星期四', '49', '20284', '2028-49', '202812', '20281204', '20281210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-08', '20281208', '2028', '12', '08', '星期五', '49', '20284', '2028-49', '202812', '20281204', '20281210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-09', '20281209', '2028', '12', '09', '星期六', '49', '20284', '2028-49', '202812', '20281204', '20281210', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-10', '20281210', '2028', '12', '10', '星期日', '49', '20284', '2028-49', '202812', '20281211', '20281217', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-11', '20281211', '2028', '12', '11', '星期一', '50', '20284', '2028-50', '202812', '20281211', '20281217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-12', '20281212', '2028', '12', '12', '星期二', '50', '20284', '2028-50', '202812', '20281211', '20281217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-13', '20281213', '2028', '12', '13', '星期三', '50', '20284', '2028-50', '202812', '20281211', '20281217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-14', '20281214', '2028', '12', '14', '星期四', '50', '20284', '2028-50', '202812', '20281211', '20281217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-15', '20281215', '2028', '12', '15', '星期五', '50', '20284', '2028-50', '202812', '20281211', '20281217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-16', '20281216', '2028', '12', '16', '星期六', '50', '20284', '2028-50', '202812', '20281211', '20281217', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-17', '20281217', '2028', '12', '17', '星期日', '50', '20284', '2028-50', '202812', '20281218', '20281224', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-18', '20281218', '2028', '12', '18', '星期一', '51', '20284', '2028-51', '202812', '20281218', '20281224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-19', '20281219', '2028', '12', '19', '星期二', '51', '20284', '2028-51', '202812', '20281218', '20281224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-20', '20281220', '2028', '12', '20', '星期三', '51', '20284', '2028-51', '202812', '20281218', '20281224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-21', '20281221', '2028', '12', '21', '星期四', '51', '20284', '2028-51', '202812', '20281218', '20281224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-22', '20281222', '2028', '12', '22', '星期五', '51', '20284', '2028-51', '202812', '20281218', '20281224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-23', '20281223', '2028', '12', '23', '星期六', '51', '20284', '2028-51', '202812', '20281218', '20281224', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-24', '20281224', '2028', '12', '24', '星期日', '51', '20284', '2028-51', '202812', '20281225', '20281231', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-25', '20281225', '2028', '12', '25', '星期一', '52', '20284', '2028-52', '202812', '20281225', '20281231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-26', '20281226', '2028', '12', '26', '星期二', '52', '20284', '2028-52', '202812', '20281225', '20281231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-27', '20281227', '2028', '12', '27', '星期三', '52', '20284', '2028-52', '202812', '20281225', '20281231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-28', '20281228', '2028', '12', '28', '星期四', '52', '20284', '2028-52', '202812', '20281225', '20281231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-29', '20281229', '2028', '12', '29', '星期五', '52', '20284', '2028-52', '202812', '20281225', '20281231', '0');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-30', '20281230', '2028', '12', '30', '星期六', '52', '20284', '2028-52', '202812', '20281225', '20281231', '1');
INSERT INTO `t_sys_calendar` VALUES ('2028-12-31', '20281231', '2028', '12', '31', '星期日', '52', '20284', '2028-52', '202812', '20290101', '20290107', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-01', '20290101', '2029', '01', '01', '星期一', '01', '20291', '2029-01', '202901', '20290101', '20290107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-02', '20290102', '2029', '01', '02', '星期二', '01', '20291', '2029-01', '202901', '20290101', '20290107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-03', '20290103', '2029', '01', '03', '星期三', '01', '20291', '2029-01', '202901', '20290101', '20290107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-04', '20290104', '2029', '01', '04', '星期四', '01', '20291', '2029-01', '202901', '20290101', '20290107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-05', '20290105', '2029', '01', '05', '星期五', '01', '20291', '2029-01', '202901', '20290101', '20290107', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-06', '20290106', '2029', '01', '06', '星期六', '01', '20291', '2029-01', '202901', '20290101', '20290107', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-07', '20290107', '2029', '01', '07', '星期日', '01', '20291', '2029-01', '202901', '20290108', '20290114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-08', '20290108', '2029', '01', '08', '星期一', '02', '20291', '2029-02', '202901', '20290108', '20290114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-09', '20290109', '2029', '01', '09', '星期二', '02', '20291', '2029-02', '202901', '20290108', '20290114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-10', '20290110', '2029', '01', '10', '星期三', '02', '20291', '2029-02', '202901', '20290108', '20290114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-11', '20290111', '2029', '01', '11', '星期四', '02', '20291', '2029-02', '202901', '20290108', '20290114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-12', '20290112', '2029', '01', '12', '星期五', '02', '20291', '2029-02', '202901', '20290108', '20290114', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-13', '20290113', '2029', '01', '13', '星期六', '02', '20291', '2029-02', '202901', '20290108', '20290114', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-14', '20290114', '2029', '01', '14', '星期日', '02', '20291', '2029-02', '202901', '20290115', '20290121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-15', '20290115', '2029', '01', '15', '星期一', '03', '20291', '2029-03', '202901', '20290115', '20290121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-16', '20290116', '2029', '01', '16', '星期二', '03', '20291', '2029-03', '202901', '20290115', '20290121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-17', '20290117', '2029', '01', '17', '星期三', '03', '20291', '2029-03', '202901', '20290115', '20290121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-18', '20290118', '2029', '01', '18', '星期四', '03', '20291', '2029-03', '202901', '20290115', '20290121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-19', '20290119', '2029', '01', '19', '星期五', '03', '20291', '2029-03', '202901', '20290115', '20290121', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-20', '20290120', '2029', '01', '20', '星期六', '03', '20291', '2029-03', '202901', '20290115', '20290121', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-21', '20290121', '2029', '01', '21', '星期日', '03', '20291', '2029-03', '202901', '20290122', '20290128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-22', '20290122', '2029', '01', '22', '星期一', '04', '20291', '2029-04', '202901', '20290122', '20290128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-23', '20290123', '2029', '01', '23', '星期二', '04', '20291', '2029-04', '202901', '20290122', '20290128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-24', '20290124', '2029', '01', '24', '星期三', '04', '20291', '2029-04', '202901', '20290122', '20290128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-25', '20290125', '2029', '01', '25', '星期四', '04', '20291', '2029-04', '202901', '20290122', '20290128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-26', '20290126', '2029', '01', '26', '星期五', '04', '20291', '2029-04', '202901', '20290122', '20290128', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-27', '20290127', '2029', '01', '27', '星期六', '04', '20291', '2029-04', '202901', '20290122', '20290128', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-28', '20290128', '2029', '01', '28', '星期日', '04', '20291', '2029-04', '202901', '20290129', '20290204', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-29', '20290129', '2029', '01', '29', '星期一', '05', '20291', '2029-05', '202901', '20290129', '20290204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-30', '20290130', '2029', '01', '30', '星期二', '05', '20291', '2029-05', '202901', '20290129', '20290204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-01-31', '20290131', '2029', '01', '31', '星期三', '05', '20291', '2029-05', '202901', '20290129', '20290204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-01', '20290201', '2029', '02', '01', '星期四', '05', '20291', '2029-05', '202902', '20290129', '20290204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-02', '20290202', '2029', '02', '02', '星期五', '05', '20291', '2029-05', '202902', '20290129', '20290204', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-03', '20290203', '2029', '02', '03', '星期六', '05', '20291', '2029-05', '202902', '20290129', '20290204', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-04', '20290204', '2029', '02', '04', '星期日', '05', '20291', '2029-05', '202902', '20290205', '20290211', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-05', '20290205', '2029', '02', '05', '星期一', '06', '20291', '2029-06', '202902', '20290205', '20290211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-06', '20290206', '2029', '02', '06', '星期二', '06', '20291', '2029-06', '202902', '20290205', '20290211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-07', '20290207', '2029', '02', '07', '星期三', '06', '20291', '2029-06', '202902', '20290205', '20290211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-08', '20290208', '2029', '02', '08', '星期四', '06', '20291', '2029-06', '202902', '20290205', '20290211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-09', '20290209', '2029', '02', '09', '星期五', '06', '20291', '2029-06', '202902', '20290205', '20290211', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-10', '20290210', '2029', '02', '10', '星期六', '06', '20291', '2029-06', '202902', '20290205', '20290211', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-11', '20290211', '2029', '02', '11', '星期日', '06', '20291', '2029-06', '202902', '20290212', '20290218', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-12', '20290212', '2029', '02', '12', '星期一', '07', '20291', '2029-07', '202902', '20290212', '20290218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-13', '20290213', '2029', '02', '13', '星期二', '07', '20291', '2029-07', '202902', '20290212', '20290218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-14', '20290214', '2029', '02', '14', '星期三', '07', '20291', '2029-07', '202902', '20290212', '20290218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-15', '20290215', '2029', '02', '15', '星期四', '07', '20291', '2029-07', '202902', '20290212', '20290218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-16', '20290216', '2029', '02', '16', '星期五', '07', '20291', '2029-07', '202902', '20290212', '20290218', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-17', '20290217', '2029', '02', '17', '星期六', '07', '20291', '2029-07', '202902', '20290212', '20290218', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-18', '20290218', '2029', '02', '18', '星期日', '07', '20291', '2029-07', '202902', '20290219', '20290225', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-19', '20290219', '2029', '02', '19', '星期一', '08', '20291', '2029-08', '202902', '20290219', '20290225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-20', '20290220', '2029', '02', '20', '星期二', '08', '20291', '2029-08', '202902', '20290219', '20290225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-21', '20290221', '2029', '02', '21', '星期三', '08', '20291', '2029-08', '202902', '20290219', '20290225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-22', '20290222', '2029', '02', '22', '星期四', '08', '20291', '2029-08', '202902', '20290219', '20290225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-23', '20290223', '2029', '02', '23', '星期五', '08', '20291', '2029-08', '202902', '20290219', '20290225', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-24', '20290224', '2029', '02', '24', '星期六', '08', '20291', '2029-08', '202902', '20290219', '20290225', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-25', '20290225', '2029', '02', '25', '星期日', '08', '20291', '2029-08', '202902', '20290226', '20290304', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-26', '20290226', '2029', '02', '26', '星期一', '09', '20291', '2029-09', '202902', '20290226', '20290304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-27', '20290227', '2029', '02', '27', '星期二', '09', '20291', '2029-09', '202902', '20290226', '20290304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-02-28', '20290228', '2029', '02', '28', '星期三', '09', '20291', '2029-09', '202902', '20290226', '20290304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-01', '20290301', '2029', '03', '01', '星期四', '09', '20291', '2029-09', '202903', '20290226', '20290304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-02', '20290302', '2029', '03', '02', '星期五', '09', '20291', '2029-09', '202903', '20290226', '20290304', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-03', '20290303', '2029', '03', '03', '星期六', '09', '20291', '2029-09', '202903', '20290226', '20290304', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-04', '20290304', '2029', '03', '04', '星期日', '09', '20291', '2029-09', '202903', '20290305', '20290311', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-05', '20290305', '2029', '03', '05', '星期一', '10', '20291', '2029-10', '202903', '20290305', '20290311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-06', '20290306', '2029', '03', '06', '星期二', '10', '20291', '2029-10', '202903', '20290305', '20290311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-07', '20290307', '2029', '03', '07', '星期三', '10', '20291', '2029-10', '202903', '20290305', '20290311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-08', '20290308', '2029', '03', '08', '星期四', '10', '20291', '2029-10', '202903', '20290305', '20290311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-09', '20290309', '2029', '03', '09', '星期五', '10', '20291', '2029-10', '202903', '20290305', '20290311', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-10', '20290310', '2029', '03', '10', '星期六', '10', '20291', '2029-10', '202903', '20290305', '20290311', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-11', '20290311', '2029', '03', '11', '星期日', '10', '20291', '2029-10', '202903', '20290312', '20290318', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-12', '20290312', '2029', '03', '12', '星期一', '11', '20291', '2029-11', '202903', '20290312', '20290318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-13', '20290313', '2029', '03', '13', '星期二', '11', '20291', '2029-11', '202903', '20290312', '20290318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-14', '20290314', '2029', '03', '14', '星期三', '11', '20291', '2029-11', '202903', '20290312', '20290318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-15', '20290315', '2029', '03', '15', '星期四', '11', '20291', '2029-11', '202903', '20290312', '20290318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-16', '20290316', '2029', '03', '16', '星期五', '11', '20291', '2029-11', '202903', '20290312', '20290318', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-17', '20290317', '2029', '03', '17', '星期六', '11', '20291', '2029-11', '202903', '20290312', '20290318', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-18', '20290318', '2029', '03', '18', '星期日', '11', '20291', '2029-11', '202903', '20290319', '20290325', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-19', '20290319', '2029', '03', '19', '星期一', '12', '20291', '2029-12', '202903', '20290319', '20290325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-20', '20290320', '2029', '03', '20', '星期二', '12', '20291', '2029-12', '202903', '20290319', '20290325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-21', '20290321', '2029', '03', '21', '星期三', '12', '20291', '2029-12', '202903', '20290319', '20290325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-22', '20290322', '2029', '03', '22', '星期四', '12', '20291', '2029-12', '202903', '20290319', '20290325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-23', '20290323', '2029', '03', '23', '星期五', '12', '20291', '2029-12', '202903', '20290319', '20290325', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-24', '20290324', '2029', '03', '24', '星期六', '12', '20291', '2029-12', '202903', '20290319', '20290325', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-25', '20290325', '2029', '03', '25', '星期日', '12', '20291', '2029-12', '202903', '20290326', '20290401', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-26', '20290326', '2029', '03', '26', '星期一', '13', '20291', '2029-13', '202903', '20290326', '20290401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-27', '20290327', '2029', '03', '27', '星期二', '13', '20291', '2029-13', '202903', '20290326', '20290401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-28', '20290328', '2029', '03', '28', '星期三', '13', '20291', '2029-13', '202903', '20290326', '20290401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-29', '20290329', '2029', '03', '29', '星期四', '13', '20291', '2029-13', '202903', '20290326', '20290401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-30', '20290330', '2029', '03', '30', '星期五', '13', '20291', '2029-13', '202903', '20290326', '20290401', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-03-31', '20290331', '2029', '03', '31', '星期六', '13', '20291', '2029-13', '202903', '20290326', '20290401', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-01', '20290401', '2029', '04', '01', '星期日', '13', '20292', '2029-13', '202904', '20290402', '20290408', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-02', '20290402', '2029', '04', '02', '星期一', '14', '20292', '2029-14', '202904', '20290402', '20290408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-03', '20290403', '2029', '04', '03', '星期二', '14', '20292', '2029-14', '202904', '20290402', '20290408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-04', '20290404', '2029', '04', '04', '星期三', '14', '20292', '2029-14', '202904', '20290402', '20290408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-05', '20290405', '2029', '04', '05', '星期四', '14', '20292', '2029-14', '202904', '20290402', '20290408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-06', '20290406', '2029', '04', '06', '星期五', '14', '20292', '2029-14', '202904', '20290402', '20290408', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-07', '20290407', '2029', '04', '07', '星期六', '14', '20292', '2029-14', '202904', '20290402', '20290408', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-08', '20290408', '2029', '04', '08', '星期日', '14', '20292', '2029-14', '202904', '20290409', '20290415', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-09', '20290409', '2029', '04', '09', '星期一', '15', '20292', '2029-15', '202904', '20290409', '20290415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-10', '20290410', '2029', '04', '10', '星期二', '15', '20292', '2029-15', '202904', '20290409', '20290415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-11', '20290411', '2029', '04', '11', '星期三', '15', '20292', '2029-15', '202904', '20290409', '20290415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-12', '20290412', '2029', '04', '12', '星期四', '15', '20292', '2029-15', '202904', '20290409', '20290415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-13', '20290413', '2029', '04', '13', '星期五', '15', '20292', '2029-15', '202904', '20290409', '20290415', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-14', '20290414', '2029', '04', '14', '星期六', '15', '20292', '2029-15', '202904', '20290409', '20290415', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-15', '20290415', '2029', '04', '15', '星期日', '15', '20292', '2029-15', '202904', '20290416', '20290422', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-16', '20290416', '2029', '04', '16', '星期一', '16', '20292', '2029-16', '202904', '20290416', '20290422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-17', '20290417', '2029', '04', '17', '星期二', '16', '20292', '2029-16', '202904', '20290416', '20290422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-18', '20290418', '2029', '04', '18', '星期三', '16', '20292', '2029-16', '202904', '20290416', '20290422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-19', '20290419', '2029', '04', '19', '星期四', '16', '20292', '2029-16', '202904', '20290416', '20290422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-20', '20290420', '2029', '04', '20', '星期五', '16', '20292', '2029-16', '202904', '20290416', '20290422', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-21', '20290421', '2029', '04', '21', '星期六', '16', '20292', '2029-16', '202904', '20290416', '20290422', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-22', '20290422', '2029', '04', '22', '星期日', '16', '20292', '2029-16', '202904', '20290423', '20290429', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-23', '20290423', '2029', '04', '23', '星期一', '17', '20292', '2029-17', '202904', '20290423', '20290429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-24', '20290424', '2029', '04', '24', '星期二', '17', '20292', '2029-17', '202904', '20290423', '20290429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-25', '20290425', '2029', '04', '25', '星期三', '17', '20292', '2029-17', '202904', '20290423', '20290429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-26', '20290426', '2029', '04', '26', '星期四', '17', '20292', '2029-17', '202904', '20290423', '20290429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-27', '20290427', '2029', '04', '27', '星期五', '17', '20292', '2029-17', '202904', '20290423', '20290429', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-28', '20290428', '2029', '04', '28', '星期六', '17', '20292', '2029-17', '202904', '20290423', '20290429', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-29', '20290429', '2029', '04', '29', '星期日', '17', '20292', '2029-17', '202904', '20290430', '20290506', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-04-30', '20290430', '2029', '04', '30', '星期一', '18', '20292', '2029-18', '202904', '20290430', '20290506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-01', '20290501', '2029', '05', '01', '星期二', '18', '20292', '2029-18', '202905', '20290430', '20290506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-02', '20290502', '2029', '05', '02', '星期三', '18', '20292', '2029-18', '202905', '20290430', '20290506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-03', '20290503', '2029', '05', '03', '星期四', '18', '20292', '2029-18', '202905', '20290430', '20290506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-04', '20290504', '2029', '05', '04', '星期五', '18', '20292', '2029-18', '202905', '20290430', '20290506', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-05', '20290505', '2029', '05', '05', '星期六', '18', '20292', '2029-18', '202905', '20290430', '20290506', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-06', '20290506', '2029', '05', '06', '星期日', '18', '20292', '2029-18', '202905', '20290507', '20290513', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-07', '20290507', '2029', '05', '07', '星期一', '19', '20292', '2029-19', '202905', '20290507', '20290513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-08', '20290508', '2029', '05', '08', '星期二', '19', '20292', '2029-19', '202905', '20290507', '20290513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-09', '20290509', '2029', '05', '09', '星期三', '19', '20292', '2029-19', '202905', '20290507', '20290513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-10', '20290510', '2029', '05', '10', '星期四', '19', '20292', '2029-19', '202905', '20290507', '20290513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-11', '20290511', '2029', '05', '11', '星期五', '19', '20292', '2029-19', '202905', '20290507', '20290513', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-12', '20290512', '2029', '05', '12', '星期六', '19', '20292', '2029-19', '202905', '20290507', '20290513', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-13', '20290513', '2029', '05', '13', '星期日', '19', '20292', '2029-19', '202905', '20290514', '20290520', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-14', '20290514', '2029', '05', '14', '星期一', '20', '20292', '2029-20', '202905', '20290514', '20290520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-15', '20290515', '2029', '05', '15', '星期二', '20', '20292', '2029-20', '202905', '20290514', '20290520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-16', '20290516', '2029', '05', '16', '星期三', '20', '20292', '2029-20', '202905', '20290514', '20290520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-17', '20290517', '2029', '05', '17', '星期四', '20', '20292', '2029-20', '202905', '20290514', '20290520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-18', '20290518', '2029', '05', '18', '星期五', '20', '20292', '2029-20', '202905', '20290514', '20290520', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-19', '20290519', '2029', '05', '19', '星期六', '20', '20292', '2029-20', '202905', '20290514', '20290520', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-20', '20290520', '2029', '05', '20', '星期日', '20', '20292', '2029-20', '202905', '20290521', '20290527', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-21', '20290521', '2029', '05', '21', '星期一', '21', '20292', '2029-21', '202905', '20290521', '20290527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-22', '20290522', '2029', '05', '22', '星期二', '21', '20292', '2029-21', '202905', '20290521', '20290527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-23', '20290523', '2029', '05', '23', '星期三', '21', '20292', '2029-21', '202905', '20290521', '20290527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-24', '20290524', '2029', '05', '24', '星期四', '21', '20292', '2029-21', '202905', '20290521', '20290527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-25', '20290525', '2029', '05', '25', '星期五', '21', '20292', '2029-21', '202905', '20290521', '20290527', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-26', '20290526', '2029', '05', '26', '星期六', '21', '20292', '2029-21', '202905', '20290521', '20290527', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-27', '20290527', '2029', '05', '27', '星期日', '21', '20292', '2029-21', '202905', '20290528', '20290603', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-28', '20290528', '2029', '05', '28', '星期一', '22', '20292', '2029-22', '202905', '20290528', '20290603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-29', '20290529', '2029', '05', '29', '星期二', '22', '20292', '2029-22', '202905', '20290528', '20290603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-30', '20290530', '2029', '05', '30', '星期三', '22', '20292', '2029-22', '202905', '20290528', '20290603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-05-31', '20290531', '2029', '05', '31', '星期四', '22', '20292', '2029-22', '202905', '20290528', '20290603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-01', '20290601', '2029', '06', '01', '星期五', '22', '20292', '2029-22', '202906', '20290528', '20290603', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-02', '20290602', '2029', '06', '02', '星期六', '22', '20292', '2029-22', '202906', '20290528', '20290603', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-03', '20290603', '2029', '06', '03', '星期日', '22', '20292', '2029-22', '202906', '20290604', '20290610', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-04', '20290604', '2029', '06', '04', '星期一', '23', '20292', '2029-23', '202906', '20290604', '20290610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-05', '20290605', '2029', '06', '05', '星期二', '23', '20292', '2029-23', '202906', '20290604', '20290610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-06', '20290606', '2029', '06', '06', '星期三', '23', '20292', '2029-23', '202906', '20290604', '20290610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-07', '20290607', '2029', '06', '07', '星期四', '23', '20292', '2029-23', '202906', '20290604', '20290610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-08', '20290608', '2029', '06', '08', '星期五', '23', '20292', '2029-23', '202906', '20290604', '20290610', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-09', '20290609', '2029', '06', '09', '星期六', '23', '20292', '2029-23', '202906', '20290604', '20290610', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-10', '20290610', '2029', '06', '10', '星期日', '23', '20292', '2029-23', '202906', '20290611', '20290617', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-11', '20290611', '2029', '06', '11', '星期一', '24', '20292', '2029-24', '202906', '20290611', '20290617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-12', '20290612', '2029', '06', '12', '星期二', '24', '20292', '2029-24', '202906', '20290611', '20290617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-13', '20290613', '2029', '06', '13', '星期三', '24', '20292', '2029-24', '202906', '20290611', '20290617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-14', '20290614', '2029', '06', '14', '星期四', '24', '20292', '2029-24', '202906', '20290611', '20290617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-15', '20290615', '2029', '06', '15', '星期五', '24', '20292', '2029-24', '202906', '20290611', '20290617', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-16', '20290616', '2029', '06', '16', '星期六', '24', '20292', '2029-24', '202906', '20290611', '20290617', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-17', '20290617', '2029', '06', '17', '星期日', '24', '20292', '2029-24', '202906', '20290618', '20290624', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-18', '20290618', '2029', '06', '18', '星期一', '25', '20292', '2029-25', '202906', '20290618', '20290624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-19', '20290619', '2029', '06', '19', '星期二', '25', '20292', '2029-25', '202906', '20290618', '20290624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-20', '20290620', '2029', '06', '20', '星期三', '25', '20292', '2029-25', '202906', '20290618', '20290624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-21', '20290621', '2029', '06', '21', '星期四', '25', '20292', '2029-25', '202906', '20290618', '20290624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-22', '20290622', '2029', '06', '22', '星期五', '25', '20292', '2029-25', '202906', '20290618', '20290624', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-23', '20290623', '2029', '06', '23', '星期六', '25', '20292', '2029-25', '202906', '20290618', '20290624', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-24', '20290624', '2029', '06', '24', '星期日', '25', '20292', '2029-25', '202906', '20290625', '20290701', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-25', '20290625', '2029', '06', '25', '星期一', '26', '20292', '2029-26', '202906', '20290625', '20290701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-26', '20290626', '2029', '06', '26', '星期二', '26', '20292', '2029-26', '202906', '20290625', '20290701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-27', '20290627', '2029', '06', '27', '星期三', '26', '20292', '2029-26', '202906', '20290625', '20290701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-28', '20290628', '2029', '06', '28', '星期四', '26', '20292', '2029-26', '202906', '20290625', '20290701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-29', '20290629', '2029', '06', '29', '星期五', '26', '20292', '2029-26', '202906', '20290625', '20290701', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-06-30', '20290630', '2029', '06', '30', '星期六', '26', '20292', '2029-26', '202906', '20290625', '20290701', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-01', '20290701', '2029', '07', '01', '星期日', '26', '20293', '2029-26', '202907', '20290702', '20290708', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-02', '20290702', '2029', '07', '02', '星期一', '27', '20293', '2029-27', '202907', '20290702', '20290708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-03', '20290703', '2029', '07', '03', '星期二', '27', '20293', '2029-27', '202907', '20290702', '20290708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-04', '20290704', '2029', '07', '04', '星期三', '27', '20293', '2029-27', '202907', '20290702', '20290708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-05', '20290705', '2029', '07', '05', '星期四', '27', '20293', '2029-27', '202907', '20290702', '20290708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-06', '20290706', '2029', '07', '06', '星期五', '27', '20293', '2029-27', '202907', '20290702', '20290708', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-07', '20290707', '2029', '07', '07', '星期六', '27', '20293', '2029-27', '202907', '20290702', '20290708', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-08', '20290708', '2029', '07', '08', '星期日', '27', '20293', '2029-27', '202907', '20290709', '20290715', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-09', '20290709', '2029', '07', '09', '星期一', '28', '20293', '2029-28', '202907', '20290709', '20290715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-10', '20290710', '2029', '07', '10', '星期二', '28', '20293', '2029-28', '202907', '20290709', '20290715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-11', '20290711', '2029', '07', '11', '星期三', '28', '20293', '2029-28', '202907', '20290709', '20290715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-12', '20290712', '2029', '07', '12', '星期四', '28', '20293', '2029-28', '202907', '20290709', '20290715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-13', '20290713', '2029', '07', '13', '星期五', '28', '20293', '2029-28', '202907', '20290709', '20290715', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-14', '20290714', '2029', '07', '14', '星期六', '28', '20293', '2029-28', '202907', '20290709', '20290715', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-15', '20290715', '2029', '07', '15', '星期日', '28', '20293', '2029-28', '202907', '20290716', '20290722', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-16', '20290716', '2029', '07', '16', '星期一', '29', '20293', '2029-29', '202907', '20290716', '20290722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-17', '20290717', '2029', '07', '17', '星期二', '29', '20293', '2029-29', '202907', '20290716', '20290722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-18', '20290718', '2029', '07', '18', '星期三', '29', '20293', '2029-29', '202907', '20290716', '20290722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-19', '20290719', '2029', '07', '19', '星期四', '29', '20293', '2029-29', '202907', '20290716', '20290722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-20', '20290720', '2029', '07', '20', '星期五', '29', '20293', '2029-29', '202907', '20290716', '20290722', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-21', '20290721', '2029', '07', '21', '星期六', '29', '20293', '2029-29', '202907', '20290716', '20290722', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-22', '20290722', '2029', '07', '22', '星期日', '29', '20293', '2029-29', '202907', '20290723', '20290729', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-23', '20290723', '2029', '07', '23', '星期一', '30', '20293', '2029-30', '202907', '20290723', '20290729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-24', '20290724', '2029', '07', '24', '星期二', '30', '20293', '2029-30', '202907', '20290723', '20290729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-25', '20290725', '2029', '07', '25', '星期三', '30', '20293', '2029-30', '202907', '20290723', '20290729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-26', '20290726', '2029', '07', '26', '星期四', '30', '20293', '2029-30', '202907', '20290723', '20290729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-27', '20290727', '2029', '07', '27', '星期五', '30', '20293', '2029-30', '202907', '20290723', '20290729', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-28', '20290728', '2029', '07', '28', '星期六', '30', '20293', '2029-30', '202907', '20290723', '20290729', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-29', '20290729', '2029', '07', '29', '星期日', '30', '20293', '2029-30', '202907', '20290730', '20290805', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-30', '20290730', '2029', '07', '30', '星期一', '31', '20293', '2029-31', '202907', '20290730', '20290805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-07-31', '20290731', '2029', '07', '31', '星期二', '31', '20293', '2029-31', '202907', '20290730', '20290805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-01', '20290801', '2029', '08', '01', '星期三', '31', '20293', '2029-31', '202908', '20290730', '20290805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-02', '20290802', '2029', '08', '02', '星期四', '31', '20293', '2029-31', '202908', '20290730', '20290805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-03', '20290803', '2029', '08', '03', '星期五', '31', '20293', '2029-31', '202908', '20290730', '20290805', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-04', '20290804', '2029', '08', '04', '星期六', '31', '20293', '2029-31', '202908', '20290730', '20290805', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-05', '20290805', '2029', '08', '05', '星期日', '31', '20293', '2029-31', '202908', '20290806', '20290812', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-06', '20290806', '2029', '08', '06', '星期一', '32', '20293', '2029-32', '202908', '20290806', '20290812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-07', '20290807', '2029', '08', '07', '星期二', '32', '20293', '2029-32', '202908', '20290806', '20290812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-08', '20290808', '2029', '08', '08', '星期三', '32', '20293', '2029-32', '202908', '20290806', '20290812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-09', '20290809', '2029', '08', '09', '星期四', '32', '20293', '2029-32', '202908', '20290806', '20290812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-10', '20290810', '2029', '08', '10', '星期五', '32', '20293', '2029-32', '202908', '20290806', '20290812', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-11', '20290811', '2029', '08', '11', '星期六', '32', '20293', '2029-32', '202908', '20290806', '20290812', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-12', '20290812', '2029', '08', '12', '星期日', '32', '20293', '2029-32', '202908', '20290813', '20290819', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-13', '20290813', '2029', '08', '13', '星期一', '33', '20293', '2029-33', '202908', '20290813', '20290819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-14', '20290814', '2029', '08', '14', '星期二', '33', '20293', '2029-33', '202908', '20290813', '20290819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-15', '20290815', '2029', '08', '15', '星期三', '33', '20293', '2029-33', '202908', '20290813', '20290819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-16', '20290816', '2029', '08', '16', '星期四', '33', '20293', '2029-33', '202908', '20290813', '20290819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-17', '20290817', '2029', '08', '17', '星期五', '33', '20293', '2029-33', '202908', '20290813', '20290819', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-18', '20290818', '2029', '08', '18', '星期六', '33', '20293', '2029-33', '202908', '20290813', '20290819', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-19', '20290819', '2029', '08', '19', '星期日', '33', '20293', '2029-33', '202908', '20290820', '20290826', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-20', '20290820', '2029', '08', '20', '星期一', '34', '20293', '2029-34', '202908', '20290820', '20290826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-21', '20290821', '2029', '08', '21', '星期二', '34', '20293', '2029-34', '202908', '20290820', '20290826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-22', '20290822', '2029', '08', '22', '星期三', '34', '20293', '2029-34', '202908', '20290820', '20290826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-23', '20290823', '2029', '08', '23', '星期四', '34', '20293', '2029-34', '202908', '20290820', '20290826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-24', '20290824', '2029', '08', '24', '星期五', '34', '20293', '2029-34', '202908', '20290820', '20290826', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-25', '20290825', '2029', '08', '25', '星期六', '34', '20293', '2029-34', '202908', '20290820', '20290826', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-26', '20290826', '2029', '08', '26', '星期日', '34', '20293', '2029-34', '202908', '20290827', '20290902', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-27', '20290827', '2029', '08', '27', '星期一', '35', '20293', '2029-35', '202908', '20290827', '20290902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-28', '20290828', '2029', '08', '28', '星期二', '35', '20293', '2029-35', '202908', '20290827', '20290902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-29', '20290829', '2029', '08', '29', '星期三', '35', '20293', '2029-35', '202908', '20290827', '20290902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-30', '20290830', '2029', '08', '30', '星期四', '35', '20293', '2029-35', '202908', '20290827', '20290902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-08-31', '20290831', '2029', '08', '31', '星期五', '35', '20293', '2029-35', '202908', '20290827', '20290902', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-01', '20290901', '2029', '09', '01', '星期六', '35', '20293', '2029-35', '202909', '20290827', '20290902', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-02', '20290902', '2029', '09', '02', '星期日', '35', '20293', '2029-35', '202909', '20290903', '20290909', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-03', '20290903', '2029', '09', '03', '星期一', '36', '20293', '2029-36', '202909', '20290903', '20290909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-04', '20290904', '2029', '09', '04', '星期二', '36', '20293', '2029-36', '202909', '20290903', '20290909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-05', '20290905', '2029', '09', '05', '星期三', '36', '20293', '2029-36', '202909', '20290903', '20290909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-06', '20290906', '2029', '09', '06', '星期四', '36', '20293', '2029-36', '202909', '20290903', '20290909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-07', '20290907', '2029', '09', '07', '星期五', '36', '20293', '2029-36', '202909', '20290903', '20290909', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-08', '20290908', '2029', '09', '08', '星期六', '36', '20293', '2029-36', '202909', '20290903', '20290909', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-09', '20290909', '2029', '09', '09', '星期日', '36', '20293', '2029-36', '202909', '20290910', '20290916', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-10', '20290910', '2029', '09', '10', '星期一', '37', '20293', '2029-37', '202909', '20290910', '20290916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-11', '20290911', '2029', '09', '11', '星期二', '37', '20293', '2029-37', '202909', '20290910', '20290916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-12', '20290912', '2029', '09', '12', '星期三', '37', '20293', '2029-37', '202909', '20290910', '20290916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-13', '20290913', '2029', '09', '13', '星期四', '37', '20293', '2029-37', '202909', '20290910', '20290916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-14', '20290914', '2029', '09', '14', '星期五', '37', '20293', '2029-37', '202909', '20290910', '20290916', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-15', '20290915', '2029', '09', '15', '星期六', '37', '20293', '2029-37', '202909', '20290910', '20290916', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-16', '20290916', '2029', '09', '16', '星期日', '37', '20293', '2029-37', '202909', '20290917', '20290923', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-17', '20290917', '2029', '09', '17', '星期一', '38', '20293', '2029-38', '202909', '20290917', '20290923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-18', '20290918', '2029', '09', '18', '星期二', '38', '20293', '2029-38', '202909', '20290917', '20290923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-19', '20290919', '2029', '09', '19', '星期三', '38', '20293', '2029-38', '202909', '20290917', '20290923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-20', '20290920', '2029', '09', '20', '星期四', '38', '20293', '2029-38', '202909', '20290917', '20290923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-21', '20290921', '2029', '09', '21', '星期五', '38', '20293', '2029-38', '202909', '20290917', '20290923', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-22', '20290922', '2029', '09', '22', '星期六', '38', '20293', '2029-38', '202909', '20290917', '20290923', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-23', '20290923', '2029', '09', '23', '星期日', '38', '20293', '2029-38', '202909', '20290924', '20290930', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-24', '20290924', '2029', '09', '24', '星期一', '39', '20293', '2029-39', '202909', '20290924', '20290930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-25', '20290925', '2029', '09', '25', '星期二', '39', '20293', '2029-39', '202909', '20290924', '20290930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-26', '20290926', '2029', '09', '26', '星期三', '39', '20293', '2029-39', '202909', '20290924', '20290930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-27', '20290927', '2029', '09', '27', '星期四', '39', '20293', '2029-39', '202909', '20290924', '20290930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-28', '20290928', '2029', '09', '28', '星期五', '39', '20293', '2029-39', '202909', '20290924', '20290930', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-29', '20290929', '2029', '09', '29', '星期六', '39', '20293', '2029-39', '202909', '20290924', '20290930', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-09-30', '20290930', '2029', '09', '30', '星期日', '39', '20293', '2029-39', '202909', '20291001', '20291007', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-01', '20291001', '2029', '10', '01', '星期一', '40', '20294', '2029-40', '202910', '20291001', '20291007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-02', '20291002', '2029', '10', '02', '星期二', '40', '20294', '2029-40', '202910', '20291001', '20291007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-03', '20291003', '2029', '10', '03', '星期三', '40', '20294', '2029-40', '202910', '20291001', '20291007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-04', '20291004', '2029', '10', '04', '星期四', '40', '20294', '2029-40', '202910', '20291001', '20291007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-05', '20291005', '2029', '10', '05', '星期五', '40', '20294', '2029-40', '202910', '20291001', '20291007', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-06', '20291006', '2029', '10', '06', '星期六', '40', '20294', '2029-40', '202910', '20291001', '20291007', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-07', '20291007', '2029', '10', '07', '星期日', '40', '20294', '2029-40', '202910', '20291008', '20291014', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-08', '20291008', '2029', '10', '08', '星期一', '41', '20294', '2029-41', '202910', '20291008', '20291014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-09', '20291009', '2029', '10', '09', '星期二', '41', '20294', '2029-41', '202910', '20291008', '20291014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-10', '20291010', '2029', '10', '10', '星期三', '41', '20294', '2029-41', '202910', '20291008', '20291014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-11', '20291011', '2029', '10', '11', '星期四', '41', '20294', '2029-41', '202910', '20291008', '20291014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-12', '20291012', '2029', '10', '12', '星期五', '41', '20294', '2029-41', '202910', '20291008', '20291014', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-13', '20291013', '2029', '10', '13', '星期六', '41', '20294', '2029-41', '202910', '20291008', '20291014', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-14', '20291014', '2029', '10', '14', '星期日', '41', '20294', '2029-41', '202910', '20291015', '20291021', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-15', '20291015', '2029', '10', '15', '星期一', '42', '20294', '2029-42', '202910', '20291015', '20291021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-16', '20291016', '2029', '10', '16', '星期二', '42', '20294', '2029-42', '202910', '20291015', '20291021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-17', '20291017', '2029', '10', '17', '星期三', '42', '20294', '2029-42', '202910', '20291015', '20291021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-18', '20291018', '2029', '10', '18', '星期四', '42', '20294', '2029-42', '202910', '20291015', '20291021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-19', '20291019', '2029', '10', '19', '星期五', '42', '20294', '2029-42', '202910', '20291015', '20291021', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-20', '20291020', '2029', '10', '20', '星期六', '42', '20294', '2029-42', '202910', '20291015', '20291021', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-21', '20291021', '2029', '10', '21', '星期日', '42', '20294', '2029-42', '202910', '20291022', '20291028', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-22', '20291022', '2029', '10', '22', '星期一', '43', '20294', '2029-43', '202910', '20291022', '20291028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-23', '20291023', '2029', '10', '23', '星期二', '43', '20294', '2029-43', '202910', '20291022', '20291028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-24', '20291024', '2029', '10', '24', '星期三', '43', '20294', '2029-43', '202910', '20291022', '20291028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-25', '20291025', '2029', '10', '25', '星期四', '43', '20294', '2029-43', '202910', '20291022', '20291028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-26', '20291026', '2029', '10', '26', '星期五', '43', '20294', '2029-43', '202910', '20291022', '20291028', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-27', '20291027', '2029', '10', '27', '星期六', '43', '20294', '2029-43', '202910', '20291022', '20291028', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-28', '20291028', '2029', '10', '28', '星期日', '43', '20294', '2029-43', '202910', '20291029', '20291104', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-29', '20291029', '2029', '10', '29', '星期一', '44', '20294', '2029-44', '202910', '20291029', '20291104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-30', '20291030', '2029', '10', '30', '星期二', '44', '20294', '2029-44', '202910', '20291029', '20291104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-10-31', '20291031', '2029', '10', '31', '星期三', '44', '20294', '2029-44', '202910', '20291029', '20291104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-01', '20291101', '2029', '11', '01', '星期四', '44', '20294', '2029-44', '202911', '20291029', '20291104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-02', '20291102', '2029', '11', '02', '星期五', '44', '20294', '2029-44', '202911', '20291029', '20291104', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-03', '20291103', '2029', '11', '03', '星期六', '44', '20294', '2029-44', '202911', '20291029', '20291104', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-04', '20291104', '2029', '11', '04', '星期日', '44', '20294', '2029-44', '202911', '20291105', '20291111', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-05', '20291105', '2029', '11', '05', '星期一', '45', '20294', '2029-45', '202911', '20291105', '20291111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-06', '20291106', '2029', '11', '06', '星期二', '45', '20294', '2029-45', '202911', '20291105', '20291111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-07', '20291107', '2029', '11', '07', '星期三', '45', '20294', '2029-45', '202911', '20291105', '20291111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-08', '20291108', '2029', '11', '08', '星期四', '45', '20294', '2029-45', '202911', '20291105', '20291111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-09', '20291109', '2029', '11', '09', '星期五', '45', '20294', '2029-45', '202911', '20291105', '20291111', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-10', '20291110', '2029', '11', '10', '星期六', '45', '20294', '2029-45', '202911', '20291105', '20291111', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-11', '20291111', '2029', '11', '11', '星期日', '45', '20294', '2029-45', '202911', '20291112', '20291118', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-12', '20291112', '2029', '11', '12', '星期一', '46', '20294', '2029-46', '202911', '20291112', '20291118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-13', '20291113', '2029', '11', '13', '星期二', '46', '20294', '2029-46', '202911', '20291112', '20291118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-14', '20291114', '2029', '11', '14', '星期三', '46', '20294', '2029-46', '202911', '20291112', '20291118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-15', '20291115', '2029', '11', '15', '星期四', '46', '20294', '2029-46', '202911', '20291112', '20291118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-16', '20291116', '2029', '11', '16', '星期五', '46', '20294', '2029-46', '202911', '20291112', '20291118', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-17', '20291117', '2029', '11', '17', '星期六', '46', '20294', '2029-46', '202911', '20291112', '20291118', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-18', '20291118', '2029', '11', '18', '星期日', '46', '20294', '2029-46', '202911', '20291119', '20291125', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-19', '20291119', '2029', '11', '19', '星期一', '47', '20294', '2029-47', '202911', '20291119', '20291125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-20', '20291120', '2029', '11', '20', '星期二', '47', '20294', '2029-47', '202911', '20291119', '20291125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-21', '20291121', '2029', '11', '21', '星期三', '47', '20294', '2029-47', '202911', '20291119', '20291125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-22', '20291122', '2029', '11', '22', '星期四', '47', '20294', '2029-47', '202911', '20291119', '20291125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-23', '20291123', '2029', '11', '23', '星期五', '47', '20294', '2029-47', '202911', '20291119', '20291125', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-24', '20291124', '2029', '11', '24', '星期六', '47', '20294', '2029-47', '202911', '20291119', '20291125', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-25', '20291125', '2029', '11', '25', '星期日', '47', '20294', '2029-47', '202911', '20291126', '20291202', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-26', '20291126', '2029', '11', '26', '星期一', '48', '20294', '2029-48', '202911', '20291126', '20291202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-27', '20291127', '2029', '11', '27', '星期二', '48', '20294', '2029-48', '202911', '20291126', '20291202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-28', '20291128', '2029', '11', '28', '星期三', '48', '20294', '2029-48', '202911', '20291126', '20291202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-29', '20291129', '2029', '11', '29', '星期四', '48', '20294', '2029-48', '202911', '20291126', '20291202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-11-30', '20291130', '2029', '11', '30', '星期五', '48', '20294', '2029-48', '202911', '20291126', '20291202', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-01', '20291201', '2029', '12', '01', '星期六', '48', '20294', '2029-48', '202912', '20291126', '20291202', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-02', '20291202', '2029', '12', '02', '星期日', '48', '20294', '2029-48', '202912', '20291203', '20291209', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-03', '20291203', '2029', '12', '03', '星期一', '49', '20294', '2029-49', '202912', '20291203', '20291209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-04', '20291204', '2029', '12', '04', '星期二', '49', '20294', '2029-49', '202912', '20291203', '20291209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-05', '20291205', '2029', '12', '05', '星期三', '49', '20294', '2029-49', '202912', '20291203', '20291209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-06', '20291206', '2029', '12', '06', '星期四', '49', '20294', '2029-49', '202912', '20291203', '20291209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-07', '20291207', '2029', '12', '07', '星期五', '49', '20294', '2029-49', '202912', '20291203', '20291209', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-08', '20291208', '2029', '12', '08', '星期六', '49', '20294', '2029-49', '202912', '20291203', '20291209', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-09', '20291209', '2029', '12', '09', '星期日', '49', '20294', '2029-49', '202912', '20291210', '20291216', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-10', '20291210', '2029', '12', '10', '星期一', '50', '20294', '2029-50', '202912', '20291210', '20291216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-11', '20291211', '2029', '12', '11', '星期二', '50', '20294', '2029-50', '202912', '20291210', '20291216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-12', '20291212', '2029', '12', '12', '星期三', '50', '20294', '2029-50', '202912', '20291210', '20291216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-13', '20291213', '2029', '12', '13', '星期四', '50', '20294', '2029-50', '202912', '20291210', '20291216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-14', '20291214', '2029', '12', '14', '星期五', '50', '20294', '2029-50', '202912', '20291210', '20291216', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-15', '20291215', '2029', '12', '15', '星期六', '50', '20294', '2029-50', '202912', '20291210', '20291216', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-16', '20291216', '2029', '12', '16', '星期日', '50', '20294', '2029-50', '202912', '20291217', '20291223', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-17', '20291217', '2029', '12', '17', '星期一', '51', '20294', '2029-51', '202912', '20291217', '20291223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-18', '20291218', '2029', '12', '18', '星期二', '51', '20294', '2029-51', '202912', '20291217', '20291223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-19', '20291219', '2029', '12', '19', '星期三', '51', '20294', '2029-51', '202912', '20291217', '20291223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-20', '20291220', '2029', '12', '20', '星期四', '51', '20294', '2029-51', '202912', '20291217', '20291223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-21', '20291221', '2029', '12', '21', '星期五', '51', '20294', '2029-51', '202912', '20291217', '20291223', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-22', '20291222', '2029', '12', '22', '星期六', '51', '20294', '2029-51', '202912', '20291217', '20291223', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-23', '20291223', '2029', '12', '23', '星期日', '51', '20294', '2029-51', '202912', '20291224', '20291230', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-24', '20291224', '2029', '12', '24', '星期一', '52', '20294', '2029-52', '202912', '20291224', '20291230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-25', '20291225', '2029', '12', '25', '星期二', '52', '20294', '2029-52', '202912', '20291224', '20291230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-26', '20291226', '2029', '12', '26', '星期三', '52', '20294', '2029-52', '202912', '20291224', '20291230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-27', '20291227', '2029', '12', '27', '星期四', '52', '20294', '2029-52', '202912', '20291224', '20291230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-28', '20291228', '2029', '12', '28', '星期五', '52', '20294', '2029-52', '202912', '20291224', '20291230', '0');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-29', '20291229', '2029', '12', '29', '星期六', '52', '20294', '2029-52', '202912', '20291224', '20291230', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-30', '20291230', '2029', '12', '30', '星期日', '52', '20294', '2029-52', '202912', '20291231', '20300106', '1');
INSERT INTO `t_sys_calendar` VALUES ('2029-12-31', '20291231', '2029', '12', '31', '星期一', '53', '20294', '2029-53', '202912', '20291231', '20300106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-01', '20300101', '2030', '01', '01', '星期二', '01', '20301', '2030-01', '203001', '20291231', '20300106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-02', '20300102', '2030', '01', '02', '星期三', '01', '20301', '2030-01', '203001', '20291231', '20300106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-03', '20300103', '2030', '01', '03', '星期四', '01', '20301', '2030-01', '203001', '20291231', '20300106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-04', '20300104', '2030', '01', '04', '星期五', '01', '20301', '2030-01', '203001', '20291231', '20300106', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-05', '20300105', '2030', '01', '05', '星期六', '01', '20301', '2030-01', '203001', '20291231', '20300106', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-06', '20300106', '2030', '01', '06', '星期日', '01', '20301', '2030-01', '203001', '20300107', '20300113', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-07', '20300107', '2030', '01', '07', '星期一', '02', '20301', '2030-02', '203001', '20300107', '20300113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-08', '20300108', '2030', '01', '08', '星期二', '02', '20301', '2030-02', '203001', '20300107', '20300113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-09', '20300109', '2030', '01', '09', '星期三', '02', '20301', '2030-02', '203001', '20300107', '20300113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-10', '20300110', '2030', '01', '10', '星期四', '02', '20301', '2030-02', '203001', '20300107', '20300113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-11', '20300111', '2030', '01', '11', '星期五', '02', '20301', '2030-02', '203001', '20300107', '20300113', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-12', '20300112', '2030', '01', '12', '星期六', '02', '20301', '2030-02', '203001', '20300107', '20300113', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-13', '20300113', '2030', '01', '13', '星期日', '02', '20301', '2030-02', '203001', '20300114', '20300120', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-14', '20300114', '2030', '01', '14', '星期一', '03', '20301', '2030-03', '203001', '20300114', '20300120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-15', '20300115', '2030', '01', '15', '星期二', '03', '20301', '2030-03', '203001', '20300114', '20300120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-16', '20300116', '2030', '01', '16', '星期三', '03', '20301', '2030-03', '203001', '20300114', '20300120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-17', '20300117', '2030', '01', '17', '星期四', '03', '20301', '2030-03', '203001', '20300114', '20300120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-18', '20300118', '2030', '01', '18', '星期五', '03', '20301', '2030-03', '203001', '20300114', '20300120', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-19', '20300119', '2030', '01', '19', '星期六', '03', '20301', '2030-03', '203001', '20300114', '20300120', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-20', '20300120', '2030', '01', '20', '星期日', '03', '20301', '2030-03', '203001', '20300121', '20300127', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-21', '20300121', '2030', '01', '21', '星期一', '04', '20301', '2030-04', '203001', '20300121', '20300127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-22', '20300122', '2030', '01', '22', '星期二', '04', '20301', '2030-04', '203001', '20300121', '20300127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-23', '20300123', '2030', '01', '23', '星期三', '04', '20301', '2030-04', '203001', '20300121', '20300127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-24', '20300124', '2030', '01', '24', '星期四', '04', '20301', '2030-04', '203001', '20300121', '20300127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-25', '20300125', '2030', '01', '25', '星期五', '04', '20301', '2030-04', '203001', '20300121', '20300127', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-26', '20300126', '2030', '01', '26', '星期六', '04', '20301', '2030-04', '203001', '20300121', '20300127', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-27', '20300127', '2030', '01', '27', '星期日', '04', '20301', '2030-04', '203001', '20300128', '20300203', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-28', '20300128', '2030', '01', '28', '星期一', '05', '20301', '2030-05', '203001', '20300128', '20300203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-29', '20300129', '2030', '01', '29', '星期二', '05', '20301', '2030-05', '203001', '20300128', '20300203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-30', '20300130', '2030', '01', '30', '星期三', '05', '20301', '2030-05', '203001', '20300128', '20300203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-01-31', '20300131', '2030', '01', '31', '星期四', '05', '20301', '2030-05', '203001', '20300128', '20300203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-01', '20300201', '2030', '02', '01', '星期五', '05', '20301', '2030-05', '203002', '20300128', '20300203', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-02', '20300202', '2030', '02', '02', '星期六', '05', '20301', '2030-05', '203002', '20300128', '20300203', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-03', '20300203', '2030', '02', '03', '星期日', '05', '20301', '2030-05', '203002', '20300204', '20300210', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-04', '20300204', '2030', '02', '04', '星期一', '06', '20301', '2030-06', '203002', '20300204', '20300210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-05', '20300205', '2030', '02', '05', '星期二', '06', '20301', '2030-06', '203002', '20300204', '20300210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-06', '20300206', '2030', '02', '06', '星期三', '06', '20301', '2030-06', '203002', '20300204', '20300210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-07', '20300207', '2030', '02', '07', '星期四', '06', '20301', '2030-06', '203002', '20300204', '20300210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-08', '20300208', '2030', '02', '08', '星期五', '06', '20301', '2030-06', '203002', '20300204', '20300210', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-09', '20300209', '2030', '02', '09', '星期六', '06', '20301', '2030-06', '203002', '20300204', '20300210', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-10', '20300210', '2030', '02', '10', '星期日', '06', '20301', '2030-06', '203002', '20300211', '20300217', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-11', '20300211', '2030', '02', '11', '星期一', '07', '20301', '2030-07', '203002', '20300211', '20300217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-12', '20300212', '2030', '02', '12', '星期二', '07', '20301', '2030-07', '203002', '20300211', '20300217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-13', '20300213', '2030', '02', '13', '星期三', '07', '20301', '2030-07', '203002', '20300211', '20300217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-14', '20300214', '2030', '02', '14', '星期四', '07', '20301', '2030-07', '203002', '20300211', '20300217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-15', '20300215', '2030', '02', '15', '星期五', '07', '20301', '2030-07', '203002', '20300211', '20300217', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-16', '20300216', '2030', '02', '16', '星期六', '07', '20301', '2030-07', '203002', '20300211', '20300217', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-17', '20300217', '2030', '02', '17', '星期日', '07', '20301', '2030-07', '203002', '20300218', '20300224', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-18', '20300218', '2030', '02', '18', '星期一', '08', '20301', '2030-08', '203002', '20300218', '20300224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-19', '20300219', '2030', '02', '19', '星期二', '08', '20301', '2030-08', '203002', '20300218', '20300224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-20', '20300220', '2030', '02', '20', '星期三', '08', '20301', '2030-08', '203002', '20300218', '20300224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-21', '20300221', '2030', '02', '21', '星期四', '08', '20301', '2030-08', '203002', '20300218', '20300224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-22', '20300222', '2030', '02', '22', '星期五', '08', '20301', '2030-08', '203002', '20300218', '20300224', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-23', '20300223', '2030', '02', '23', '星期六', '08', '20301', '2030-08', '203002', '20300218', '20300224', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-24', '20300224', '2030', '02', '24', '星期日', '08', '20301', '2030-08', '203002', '20300225', '20300303', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-25', '20300225', '2030', '02', '25', '星期一', '09', '20301', '2030-09', '203002', '20300225', '20300303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-26', '20300226', '2030', '02', '26', '星期二', '09', '20301', '2030-09', '203002', '20300225', '20300303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-27', '20300227', '2030', '02', '27', '星期三', '09', '20301', '2030-09', '203002', '20300225', '20300303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-02-28', '20300228', '2030', '02', '28', '星期四', '09', '20301', '2030-09', '203002', '20300225', '20300303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-01', '20300301', '2030', '03', '01', '星期五', '09', '20301', '2030-09', '203003', '20300225', '20300303', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-02', '20300302', '2030', '03', '02', '星期六', '09', '20301', '2030-09', '203003', '20300225', '20300303', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-03', '20300303', '2030', '03', '03', '星期日', '09', '20301', '2030-09', '203003', '20300304', '20300310', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-04', '20300304', '2030', '03', '04', '星期一', '10', '20301', '2030-10', '203003', '20300304', '20300310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-05', '20300305', '2030', '03', '05', '星期二', '10', '20301', '2030-10', '203003', '20300304', '20300310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-06', '20300306', '2030', '03', '06', '星期三', '10', '20301', '2030-10', '203003', '20300304', '20300310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-07', '20300307', '2030', '03', '07', '星期四', '10', '20301', '2030-10', '203003', '20300304', '20300310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-08', '20300308', '2030', '03', '08', '星期五', '10', '20301', '2030-10', '203003', '20300304', '20300310', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-09', '20300309', '2030', '03', '09', '星期六', '10', '20301', '2030-10', '203003', '20300304', '20300310', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-10', '20300310', '2030', '03', '10', '星期日', '10', '20301', '2030-10', '203003', '20300311', '20300317', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-11', '20300311', '2030', '03', '11', '星期一', '11', '20301', '2030-11', '203003', '20300311', '20300317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-12', '20300312', '2030', '03', '12', '星期二', '11', '20301', '2030-11', '203003', '20300311', '20300317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-13', '20300313', '2030', '03', '13', '星期三', '11', '20301', '2030-11', '203003', '20300311', '20300317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-14', '20300314', '2030', '03', '14', '星期四', '11', '20301', '2030-11', '203003', '20300311', '20300317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-15', '20300315', '2030', '03', '15', '星期五', '11', '20301', '2030-11', '203003', '20300311', '20300317', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-16', '20300316', '2030', '03', '16', '星期六', '11', '20301', '2030-11', '203003', '20300311', '20300317', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-17', '20300317', '2030', '03', '17', '星期日', '11', '20301', '2030-11', '203003', '20300318', '20300324', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-18', '20300318', '2030', '03', '18', '星期一', '12', '20301', '2030-12', '203003', '20300318', '20300324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-19', '20300319', '2030', '03', '19', '星期二', '12', '20301', '2030-12', '203003', '20300318', '20300324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-20', '20300320', '2030', '03', '20', '星期三', '12', '20301', '2030-12', '203003', '20300318', '20300324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-21', '20300321', '2030', '03', '21', '星期四', '12', '20301', '2030-12', '203003', '20300318', '20300324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-22', '20300322', '2030', '03', '22', '星期五', '12', '20301', '2030-12', '203003', '20300318', '20300324', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-23', '20300323', '2030', '03', '23', '星期六', '12', '20301', '2030-12', '203003', '20300318', '20300324', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-24', '20300324', '2030', '03', '24', '星期日', '12', '20301', '2030-12', '203003', '20300325', '20300331', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-25', '20300325', '2030', '03', '25', '星期一', '13', '20301', '2030-13', '203003', '20300325', '20300331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-26', '20300326', '2030', '03', '26', '星期二', '13', '20301', '2030-13', '203003', '20300325', '20300331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-27', '20300327', '2030', '03', '27', '星期三', '13', '20301', '2030-13', '203003', '20300325', '20300331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-28', '20300328', '2030', '03', '28', '星期四', '13', '20301', '2030-13', '203003', '20300325', '20300331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-29', '20300329', '2030', '03', '29', '星期五', '13', '20301', '2030-13', '203003', '20300325', '20300331', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-30', '20300330', '2030', '03', '30', '星期六', '13', '20301', '2030-13', '203003', '20300325', '20300331', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-03-31', '20300331', '2030', '03', '31', '星期日', '13', '20301', '2030-13', '203003', '20300401', '20300407', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-01', '20300401', '2030', '04', '01', '星期一', '14', '20302', '2030-14', '203004', '20300401', '20300407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-02', '20300402', '2030', '04', '02', '星期二', '14', '20302', '2030-14', '203004', '20300401', '20300407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-03', '20300403', '2030', '04', '03', '星期三', '14', '20302', '2030-14', '203004', '20300401', '20300407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-04', '20300404', '2030', '04', '04', '星期四', '14', '20302', '2030-14', '203004', '20300401', '20300407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-05', '20300405', '2030', '04', '05', '星期五', '14', '20302', '2030-14', '203004', '20300401', '20300407', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-06', '20300406', '2030', '04', '06', '星期六', '14', '20302', '2030-14', '203004', '20300401', '20300407', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-07', '20300407', '2030', '04', '07', '星期日', '14', '20302', '2030-14', '203004', '20300408', '20300414', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-08', '20300408', '2030', '04', '08', '星期一', '15', '20302', '2030-15', '203004', '20300408', '20300414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-09', '20300409', '2030', '04', '09', '星期二', '15', '20302', '2030-15', '203004', '20300408', '20300414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-10', '20300410', '2030', '04', '10', '星期三', '15', '20302', '2030-15', '203004', '20300408', '20300414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-11', '20300411', '2030', '04', '11', '星期四', '15', '20302', '2030-15', '203004', '20300408', '20300414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-12', '20300412', '2030', '04', '12', '星期五', '15', '20302', '2030-15', '203004', '20300408', '20300414', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-13', '20300413', '2030', '04', '13', '星期六', '15', '20302', '2030-15', '203004', '20300408', '20300414', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-14', '20300414', '2030', '04', '14', '星期日', '15', '20302', '2030-15', '203004', '20300415', '20300421', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-15', '20300415', '2030', '04', '15', '星期一', '16', '20302', '2030-16', '203004', '20300415', '20300421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-16', '20300416', '2030', '04', '16', '星期二', '16', '20302', '2030-16', '203004', '20300415', '20300421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-17', '20300417', '2030', '04', '17', '星期三', '16', '20302', '2030-16', '203004', '20300415', '20300421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-18', '20300418', '2030', '04', '18', '星期四', '16', '20302', '2030-16', '203004', '20300415', '20300421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-19', '20300419', '2030', '04', '19', '星期五', '16', '20302', '2030-16', '203004', '20300415', '20300421', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-20', '20300420', '2030', '04', '20', '星期六', '16', '20302', '2030-16', '203004', '20300415', '20300421', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-21', '20300421', '2030', '04', '21', '星期日', '16', '20302', '2030-16', '203004', '20300422', '20300428', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-22', '20300422', '2030', '04', '22', '星期一', '17', '20302', '2030-17', '203004', '20300422', '20300428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-23', '20300423', '2030', '04', '23', '星期二', '17', '20302', '2030-17', '203004', '20300422', '20300428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-24', '20300424', '2030', '04', '24', '星期三', '17', '20302', '2030-17', '203004', '20300422', '20300428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-25', '20300425', '2030', '04', '25', '星期四', '17', '20302', '2030-17', '203004', '20300422', '20300428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-26', '20300426', '2030', '04', '26', '星期五', '17', '20302', '2030-17', '203004', '20300422', '20300428', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-27', '20300427', '2030', '04', '27', '星期六', '17', '20302', '2030-17', '203004', '20300422', '20300428', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-28', '20300428', '2030', '04', '28', '星期日', '17', '20302', '2030-17', '203004', '20300429', '20300505', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-29', '20300429', '2030', '04', '29', '星期一', '18', '20302', '2030-18', '203004', '20300429', '20300505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-04-30', '20300430', '2030', '04', '30', '星期二', '18', '20302', '2030-18', '203004', '20300429', '20300505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-01', '20300501', '2030', '05', '01', '星期三', '18', '20302', '2030-18', '203005', '20300429', '20300505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-02', '20300502', '2030', '05', '02', '星期四', '18', '20302', '2030-18', '203005', '20300429', '20300505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-03', '20300503', '2030', '05', '03', '星期五', '18', '20302', '2030-18', '203005', '20300429', '20300505', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-04', '20300504', '2030', '05', '04', '星期六', '18', '20302', '2030-18', '203005', '20300429', '20300505', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-05', '20300505', '2030', '05', '05', '星期日', '18', '20302', '2030-18', '203005', '20300506', '20300512', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-06', '20300506', '2030', '05', '06', '星期一', '19', '20302', '2030-19', '203005', '20300506', '20300512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-07', '20300507', '2030', '05', '07', '星期二', '19', '20302', '2030-19', '203005', '20300506', '20300512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-08', '20300508', '2030', '05', '08', '星期三', '19', '20302', '2030-19', '203005', '20300506', '20300512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-09', '20300509', '2030', '05', '09', '星期四', '19', '20302', '2030-19', '203005', '20300506', '20300512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-10', '20300510', '2030', '05', '10', '星期五', '19', '20302', '2030-19', '203005', '20300506', '20300512', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-11', '20300511', '2030', '05', '11', '星期六', '19', '20302', '2030-19', '203005', '20300506', '20300512', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-12', '20300512', '2030', '05', '12', '星期日', '19', '20302', '2030-19', '203005', '20300513', '20300519', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-13', '20300513', '2030', '05', '13', '星期一', '20', '20302', '2030-20', '203005', '20300513', '20300519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-14', '20300514', '2030', '05', '14', '星期二', '20', '20302', '2030-20', '203005', '20300513', '20300519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-15', '20300515', '2030', '05', '15', '星期三', '20', '20302', '2030-20', '203005', '20300513', '20300519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-16', '20300516', '2030', '05', '16', '星期四', '20', '20302', '2030-20', '203005', '20300513', '20300519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-17', '20300517', '2030', '05', '17', '星期五', '20', '20302', '2030-20', '203005', '20300513', '20300519', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-18', '20300518', '2030', '05', '18', '星期六', '20', '20302', '2030-20', '203005', '20300513', '20300519', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-19', '20300519', '2030', '05', '19', '星期日', '20', '20302', '2030-20', '203005', '20300520', '20300526', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-20', '20300520', '2030', '05', '20', '星期一', '21', '20302', '2030-21', '203005', '20300520', '20300526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-21', '20300521', '2030', '05', '21', '星期二', '21', '20302', '2030-21', '203005', '20300520', '20300526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-22', '20300522', '2030', '05', '22', '星期三', '21', '20302', '2030-21', '203005', '20300520', '20300526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-23', '20300523', '2030', '05', '23', '星期四', '21', '20302', '2030-21', '203005', '20300520', '20300526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-24', '20300524', '2030', '05', '24', '星期五', '21', '20302', '2030-21', '203005', '20300520', '20300526', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-25', '20300525', '2030', '05', '25', '星期六', '21', '20302', '2030-21', '203005', '20300520', '20300526', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-26', '20300526', '2030', '05', '26', '星期日', '21', '20302', '2030-21', '203005', '20300527', '20300602', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-27', '20300527', '2030', '05', '27', '星期一', '22', '20302', '2030-22', '203005', '20300527', '20300602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-28', '20300528', '2030', '05', '28', '星期二', '22', '20302', '2030-22', '203005', '20300527', '20300602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-29', '20300529', '2030', '05', '29', '星期三', '22', '20302', '2030-22', '203005', '20300527', '20300602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-30', '20300530', '2030', '05', '30', '星期四', '22', '20302', '2030-22', '203005', '20300527', '20300602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-05-31', '20300531', '2030', '05', '31', '星期五', '22', '20302', '2030-22', '203005', '20300527', '20300602', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-01', '20300601', '2030', '06', '01', '星期六', '22', '20302', '2030-22', '203006', '20300527', '20300602', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-02', '20300602', '2030', '06', '02', '星期日', '22', '20302', '2030-22', '203006', '20300603', '20300609', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-03', '20300603', '2030', '06', '03', '星期一', '23', '20302', '2030-23', '203006', '20300603', '20300609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-04', '20300604', '2030', '06', '04', '星期二', '23', '20302', '2030-23', '203006', '20300603', '20300609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-05', '20300605', '2030', '06', '05', '星期三', '23', '20302', '2030-23', '203006', '20300603', '20300609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-06', '20300606', '2030', '06', '06', '星期四', '23', '20302', '2030-23', '203006', '20300603', '20300609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-07', '20300607', '2030', '06', '07', '星期五', '23', '20302', '2030-23', '203006', '20300603', '20300609', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-08', '20300608', '2030', '06', '08', '星期六', '23', '20302', '2030-23', '203006', '20300603', '20300609', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-09', '20300609', '2030', '06', '09', '星期日', '23', '20302', '2030-23', '203006', '20300610', '20300616', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-10', '20300610', '2030', '06', '10', '星期一', '24', '20302', '2030-24', '203006', '20300610', '20300616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-11', '20300611', '2030', '06', '11', '星期二', '24', '20302', '2030-24', '203006', '20300610', '20300616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-12', '20300612', '2030', '06', '12', '星期三', '24', '20302', '2030-24', '203006', '20300610', '20300616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-13', '20300613', '2030', '06', '13', '星期四', '24', '20302', '2030-24', '203006', '20300610', '20300616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-14', '20300614', '2030', '06', '14', '星期五', '24', '20302', '2030-24', '203006', '20300610', '20300616', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-15', '20300615', '2030', '06', '15', '星期六', '24', '20302', '2030-24', '203006', '20300610', '20300616', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-16', '20300616', '2030', '06', '16', '星期日', '24', '20302', '2030-24', '203006', '20300617', '20300623', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-17', '20300617', '2030', '06', '17', '星期一', '25', '20302', '2030-25', '203006', '20300617', '20300623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-18', '20300618', '2030', '06', '18', '星期二', '25', '20302', '2030-25', '203006', '20300617', '20300623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-19', '20300619', '2030', '06', '19', '星期三', '25', '20302', '2030-25', '203006', '20300617', '20300623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-20', '20300620', '2030', '06', '20', '星期四', '25', '20302', '2030-25', '203006', '20300617', '20300623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-21', '20300621', '2030', '06', '21', '星期五', '25', '20302', '2030-25', '203006', '20300617', '20300623', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-22', '20300622', '2030', '06', '22', '星期六', '25', '20302', '2030-25', '203006', '20300617', '20300623', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-23', '20300623', '2030', '06', '23', '星期日', '25', '20302', '2030-25', '203006', '20300624', '20300630', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-24', '20300624', '2030', '06', '24', '星期一', '26', '20302', '2030-26', '203006', '20300624', '20300630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-25', '20300625', '2030', '06', '25', '星期二', '26', '20302', '2030-26', '203006', '20300624', '20300630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-26', '20300626', '2030', '06', '26', '星期三', '26', '20302', '2030-26', '203006', '20300624', '20300630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-27', '20300627', '2030', '06', '27', '星期四', '26', '20302', '2030-26', '203006', '20300624', '20300630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-28', '20300628', '2030', '06', '28', '星期五', '26', '20302', '2030-26', '203006', '20300624', '20300630', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-29', '20300629', '2030', '06', '29', '星期六', '26', '20302', '2030-26', '203006', '20300624', '20300630', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-06-30', '20300630', '2030', '06', '30', '星期日', '26', '20302', '2030-26', '203006', '20300701', '20300707', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-01', '20300701', '2030', '07', '01', '星期一', '27', '20303', '2030-27', '203007', '20300701', '20300707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-02', '20300702', '2030', '07', '02', '星期二', '27', '20303', '2030-27', '203007', '20300701', '20300707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-03', '20300703', '2030', '07', '03', '星期三', '27', '20303', '2030-27', '203007', '20300701', '20300707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-04', '20300704', '2030', '07', '04', '星期四', '27', '20303', '2030-27', '203007', '20300701', '20300707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-05', '20300705', '2030', '07', '05', '星期五', '27', '20303', '2030-27', '203007', '20300701', '20300707', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-06', '20300706', '2030', '07', '06', '星期六', '27', '20303', '2030-27', '203007', '20300701', '20300707', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-07', '20300707', '2030', '07', '07', '星期日', '27', '20303', '2030-27', '203007', '20300708', '20300714', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-08', '20300708', '2030', '07', '08', '星期一', '28', '20303', '2030-28', '203007', '20300708', '20300714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-09', '20300709', '2030', '07', '09', '星期二', '28', '20303', '2030-28', '203007', '20300708', '20300714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-10', '20300710', '2030', '07', '10', '星期三', '28', '20303', '2030-28', '203007', '20300708', '20300714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-11', '20300711', '2030', '07', '11', '星期四', '28', '20303', '2030-28', '203007', '20300708', '20300714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-12', '20300712', '2030', '07', '12', '星期五', '28', '20303', '2030-28', '203007', '20300708', '20300714', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-13', '20300713', '2030', '07', '13', '星期六', '28', '20303', '2030-28', '203007', '20300708', '20300714', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-14', '20300714', '2030', '07', '14', '星期日', '28', '20303', '2030-28', '203007', '20300715', '20300721', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-15', '20300715', '2030', '07', '15', '星期一', '29', '20303', '2030-29', '203007', '20300715', '20300721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-16', '20300716', '2030', '07', '16', '星期二', '29', '20303', '2030-29', '203007', '20300715', '20300721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-17', '20300717', '2030', '07', '17', '星期三', '29', '20303', '2030-29', '203007', '20300715', '20300721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-18', '20300718', '2030', '07', '18', '星期四', '29', '20303', '2030-29', '203007', '20300715', '20300721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-19', '20300719', '2030', '07', '19', '星期五', '29', '20303', '2030-29', '203007', '20300715', '20300721', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-20', '20300720', '2030', '07', '20', '星期六', '29', '20303', '2030-29', '203007', '20300715', '20300721', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-21', '20300721', '2030', '07', '21', '星期日', '29', '20303', '2030-29', '203007', '20300722', '20300728', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-22', '20300722', '2030', '07', '22', '星期一', '30', '20303', '2030-30', '203007', '20300722', '20300728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-23', '20300723', '2030', '07', '23', '星期二', '30', '20303', '2030-30', '203007', '20300722', '20300728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-24', '20300724', '2030', '07', '24', '星期三', '30', '20303', '2030-30', '203007', '20300722', '20300728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-25', '20300725', '2030', '07', '25', '星期四', '30', '20303', '2030-30', '203007', '20300722', '20300728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-26', '20300726', '2030', '07', '26', '星期五', '30', '20303', '2030-30', '203007', '20300722', '20300728', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-27', '20300727', '2030', '07', '27', '星期六', '30', '20303', '2030-30', '203007', '20300722', '20300728', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-28', '20300728', '2030', '07', '28', '星期日', '30', '20303', '2030-30', '203007', '20300729', '20300804', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-29', '20300729', '2030', '07', '29', '星期一', '31', '20303', '2030-31', '203007', '20300729', '20300804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-30', '20300730', '2030', '07', '30', '星期二', '31', '20303', '2030-31', '203007', '20300729', '20300804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-07-31', '20300731', '2030', '07', '31', '星期三', '31', '20303', '2030-31', '203007', '20300729', '20300804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-01', '20300801', '2030', '08', '01', '星期四', '31', '20303', '2030-31', '203008', '20300729', '20300804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-02', '20300802', '2030', '08', '02', '星期五', '31', '20303', '2030-31', '203008', '20300729', '20300804', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-03', '20300803', '2030', '08', '03', '星期六', '31', '20303', '2030-31', '203008', '20300729', '20300804', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-04', '20300804', '2030', '08', '04', '星期日', '31', '20303', '2030-31', '203008', '20300805', '20300811', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-05', '20300805', '2030', '08', '05', '星期一', '32', '20303', '2030-32', '203008', '20300805', '20300811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-06', '20300806', '2030', '08', '06', '星期二', '32', '20303', '2030-32', '203008', '20300805', '20300811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-07', '20300807', '2030', '08', '07', '星期三', '32', '20303', '2030-32', '203008', '20300805', '20300811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-08', '20300808', '2030', '08', '08', '星期四', '32', '20303', '2030-32', '203008', '20300805', '20300811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-09', '20300809', '2030', '08', '09', '星期五', '32', '20303', '2030-32', '203008', '20300805', '20300811', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-10', '20300810', '2030', '08', '10', '星期六', '32', '20303', '2030-32', '203008', '20300805', '20300811', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-11', '20300811', '2030', '08', '11', '星期日', '32', '20303', '2030-32', '203008', '20300812', '20300818', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-12', '20300812', '2030', '08', '12', '星期一', '33', '20303', '2030-33', '203008', '20300812', '20300818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-13', '20300813', '2030', '08', '13', '星期二', '33', '20303', '2030-33', '203008', '20300812', '20300818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-14', '20300814', '2030', '08', '14', '星期三', '33', '20303', '2030-33', '203008', '20300812', '20300818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-15', '20300815', '2030', '08', '15', '星期四', '33', '20303', '2030-33', '203008', '20300812', '20300818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-16', '20300816', '2030', '08', '16', '星期五', '33', '20303', '2030-33', '203008', '20300812', '20300818', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-17', '20300817', '2030', '08', '17', '星期六', '33', '20303', '2030-33', '203008', '20300812', '20300818', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-18', '20300818', '2030', '08', '18', '星期日', '33', '20303', '2030-33', '203008', '20300819', '20300825', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-19', '20300819', '2030', '08', '19', '星期一', '34', '20303', '2030-34', '203008', '20300819', '20300825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-20', '20300820', '2030', '08', '20', '星期二', '34', '20303', '2030-34', '203008', '20300819', '20300825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-21', '20300821', '2030', '08', '21', '星期三', '34', '20303', '2030-34', '203008', '20300819', '20300825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-22', '20300822', '2030', '08', '22', '星期四', '34', '20303', '2030-34', '203008', '20300819', '20300825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-23', '20300823', '2030', '08', '23', '星期五', '34', '20303', '2030-34', '203008', '20300819', '20300825', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-24', '20300824', '2030', '08', '24', '星期六', '34', '20303', '2030-34', '203008', '20300819', '20300825', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-25', '20300825', '2030', '08', '25', '星期日', '34', '20303', '2030-34', '203008', '20300826', '20300901', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-26', '20300826', '2030', '08', '26', '星期一', '35', '20303', '2030-35', '203008', '20300826', '20300901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-27', '20300827', '2030', '08', '27', '星期二', '35', '20303', '2030-35', '203008', '20300826', '20300901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-28', '20300828', '2030', '08', '28', '星期三', '35', '20303', '2030-35', '203008', '20300826', '20300901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-29', '20300829', '2030', '08', '29', '星期四', '35', '20303', '2030-35', '203008', '20300826', '20300901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-30', '20300830', '2030', '08', '30', '星期五', '35', '20303', '2030-35', '203008', '20300826', '20300901', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-08-31', '20300831', '2030', '08', '31', '星期六', '35', '20303', '2030-35', '203008', '20300826', '20300901', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-01', '20300901', '2030', '09', '01', '星期日', '35', '20303', '2030-35', '203009', '20300902', '20300908', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-02', '20300902', '2030', '09', '02', '星期一', '36', '20303', '2030-36', '203009', '20300902', '20300908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-03', '20300903', '2030', '09', '03', '星期二', '36', '20303', '2030-36', '203009', '20300902', '20300908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-04', '20300904', '2030', '09', '04', '星期三', '36', '20303', '2030-36', '203009', '20300902', '20300908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-05', '20300905', '2030', '09', '05', '星期四', '36', '20303', '2030-36', '203009', '20300902', '20300908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-06', '20300906', '2030', '09', '06', '星期五', '36', '20303', '2030-36', '203009', '20300902', '20300908', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-07', '20300907', '2030', '09', '07', '星期六', '36', '20303', '2030-36', '203009', '20300902', '20300908', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-08', '20300908', '2030', '09', '08', '星期日', '36', '20303', '2030-36', '203009', '20300909', '20300915', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-09', '20300909', '2030', '09', '09', '星期一', '37', '20303', '2030-37', '203009', '20300909', '20300915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-10', '20300910', '2030', '09', '10', '星期二', '37', '20303', '2030-37', '203009', '20300909', '20300915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-11', '20300911', '2030', '09', '11', '星期三', '37', '20303', '2030-37', '203009', '20300909', '20300915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-12', '20300912', '2030', '09', '12', '星期四', '37', '20303', '2030-37', '203009', '20300909', '20300915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-13', '20300913', '2030', '09', '13', '星期五', '37', '20303', '2030-37', '203009', '20300909', '20300915', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-14', '20300914', '2030', '09', '14', '星期六', '37', '20303', '2030-37', '203009', '20300909', '20300915', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-15', '20300915', '2030', '09', '15', '星期日', '37', '20303', '2030-37', '203009', '20300916', '20300922', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-16', '20300916', '2030', '09', '16', '星期一', '38', '20303', '2030-38', '203009', '20300916', '20300922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-17', '20300917', '2030', '09', '17', '星期二', '38', '20303', '2030-38', '203009', '20300916', '20300922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-18', '20300918', '2030', '09', '18', '星期三', '38', '20303', '2030-38', '203009', '20300916', '20300922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-19', '20300919', '2030', '09', '19', '星期四', '38', '20303', '2030-38', '203009', '20300916', '20300922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-20', '20300920', '2030', '09', '20', '星期五', '38', '20303', '2030-38', '203009', '20300916', '20300922', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-21', '20300921', '2030', '09', '21', '星期六', '38', '20303', '2030-38', '203009', '20300916', '20300922', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-22', '20300922', '2030', '09', '22', '星期日', '38', '20303', '2030-38', '203009', '20300923', '20300929', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-23', '20300923', '2030', '09', '23', '星期一', '39', '20303', '2030-39', '203009', '20300923', '20300929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-24', '20300924', '2030', '09', '24', '星期二', '39', '20303', '2030-39', '203009', '20300923', '20300929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-25', '20300925', '2030', '09', '25', '星期三', '39', '20303', '2030-39', '203009', '20300923', '20300929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-26', '20300926', '2030', '09', '26', '星期四', '39', '20303', '2030-39', '203009', '20300923', '20300929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-27', '20300927', '2030', '09', '27', '星期五', '39', '20303', '2030-39', '203009', '20300923', '20300929', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-28', '20300928', '2030', '09', '28', '星期六', '39', '20303', '2030-39', '203009', '20300923', '20300929', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-29', '20300929', '2030', '09', '29', '星期日', '39', '20303', '2030-39', '203009', '20300930', '20301006', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-09-30', '20300930', '2030', '09', '30', '星期一', '40', '20303', '2030-40', '203009', '20300930', '20301006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-01', '20301001', '2030', '10', '01', '星期二', '40', '20304', '2030-40', '203010', '20300930', '20301006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-02', '20301002', '2030', '10', '02', '星期三', '40', '20304', '2030-40', '203010', '20300930', '20301006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-03', '20301003', '2030', '10', '03', '星期四', '40', '20304', '2030-40', '203010', '20300930', '20301006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-04', '20301004', '2030', '10', '04', '星期五', '40', '20304', '2030-40', '203010', '20300930', '20301006', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-05', '20301005', '2030', '10', '05', '星期六', '40', '20304', '2030-40', '203010', '20300930', '20301006', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-06', '20301006', '2030', '10', '06', '星期日', '40', '20304', '2030-40', '203010', '20301007', '20301013', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-07', '20301007', '2030', '10', '07', '星期一', '41', '20304', '2030-41', '203010', '20301007', '20301013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-08', '20301008', '2030', '10', '08', '星期二', '41', '20304', '2030-41', '203010', '20301007', '20301013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-09', '20301009', '2030', '10', '09', '星期三', '41', '20304', '2030-41', '203010', '20301007', '20301013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-10', '20301010', '2030', '10', '10', '星期四', '41', '20304', '2030-41', '203010', '20301007', '20301013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-11', '20301011', '2030', '10', '11', '星期五', '41', '20304', '2030-41', '203010', '20301007', '20301013', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-12', '20301012', '2030', '10', '12', '星期六', '41', '20304', '2030-41', '203010', '20301007', '20301013', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-13', '20301013', '2030', '10', '13', '星期日', '41', '20304', '2030-41', '203010', '20301014', '20301020', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-14', '20301014', '2030', '10', '14', '星期一', '42', '20304', '2030-42', '203010', '20301014', '20301020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-15', '20301015', '2030', '10', '15', '星期二', '42', '20304', '2030-42', '203010', '20301014', '20301020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-16', '20301016', '2030', '10', '16', '星期三', '42', '20304', '2030-42', '203010', '20301014', '20301020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-17', '20301017', '2030', '10', '17', '星期四', '42', '20304', '2030-42', '203010', '20301014', '20301020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-18', '20301018', '2030', '10', '18', '星期五', '42', '20304', '2030-42', '203010', '20301014', '20301020', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-19', '20301019', '2030', '10', '19', '星期六', '42', '20304', '2030-42', '203010', '20301014', '20301020', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-20', '20301020', '2030', '10', '20', '星期日', '42', '20304', '2030-42', '203010', '20301021', '20301027', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-21', '20301021', '2030', '10', '21', '星期一', '43', '20304', '2030-43', '203010', '20301021', '20301027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-22', '20301022', '2030', '10', '22', '星期二', '43', '20304', '2030-43', '203010', '20301021', '20301027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-23', '20301023', '2030', '10', '23', '星期三', '43', '20304', '2030-43', '203010', '20301021', '20301027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-24', '20301024', '2030', '10', '24', '星期四', '43', '20304', '2030-43', '203010', '20301021', '20301027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-25', '20301025', '2030', '10', '25', '星期五', '43', '20304', '2030-43', '203010', '20301021', '20301027', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-26', '20301026', '2030', '10', '26', '星期六', '43', '20304', '2030-43', '203010', '20301021', '20301027', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-27', '20301027', '2030', '10', '27', '星期日', '43', '20304', '2030-43', '203010', '20301028', '20301103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-28', '20301028', '2030', '10', '28', '星期一', '44', '20304', '2030-44', '203010', '20301028', '20301103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-29', '20301029', '2030', '10', '29', '星期二', '44', '20304', '2030-44', '203010', '20301028', '20301103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-30', '20301030', '2030', '10', '30', '星期三', '44', '20304', '2030-44', '203010', '20301028', '20301103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-10-31', '20301031', '2030', '10', '31', '星期四', '44', '20304', '2030-44', '203010', '20301028', '20301103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-01', '20301101', '2030', '11', '01', '星期五', '44', '20304', '2030-44', '203011', '20301028', '20301103', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-02', '20301102', '2030', '11', '02', '星期六', '44', '20304', '2030-44', '203011', '20301028', '20301103', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-03', '20301103', '2030', '11', '03', '星期日', '44', '20304', '2030-44', '203011', '20301104', '20301110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-04', '20301104', '2030', '11', '04', '星期一', '45', '20304', '2030-45', '203011', '20301104', '20301110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-05', '20301105', '2030', '11', '05', '星期二', '45', '20304', '2030-45', '203011', '20301104', '20301110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-06', '20301106', '2030', '11', '06', '星期三', '45', '20304', '2030-45', '203011', '20301104', '20301110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-07', '20301107', '2030', '11', '07', '星期四', '45', '20304', '2030-45', '203011', '20301104', '20301110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-08', '20301108', '2030', '11', '08', '星期五', '45', '20304', '2030-45', '203011', '20301104', '20301110', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-09', '20301109', '2030', '11', '09', '星期六', '45', '20304', '2030-45', '203011', '20301104', '20301110', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-10', '20301110', '2030', '11', '10', '星期日', '45', '20304', '2030-45', '203011', '20301111', '20301117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-11', '20301111', '2030', '11', '11', '星期一', '46', '20304', '2030-46', '203011', '20301111', '20301117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-12', '20301112', '2030', '11', '12', '星期二', '46', '20304', '2030-46', '203011', '20301111', '20301117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-13', '20301113', '2030', '11', '13', '星期三', '46', '20304', '2030-46', '203011', '20301111', '20301117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-14', '20301114', '2030', '11', '14', '星期四', '46', '20304', '2030-46', '203011', '20301111', '20301117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-15', '20301115', '2030', '11', '15', '星期五', '46', '20304', '2030-46', '203011', '20301111', '20301117', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-16', '20301116', '2030', '11', '16', '星期六', '46', '20304', '2030-46', '203011', '20301111', '20301117', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-17', '20301117', '2030', '11', '17', '星期日', '46', '20304', '2030-46', '203011', '20301118', '20301124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-18', '20301118', '2030', '11', '18', '星期一', '47', '20304', '2030-47', '203011', '20301118', '20301124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-19', '20301119', '2030', '11', '19', '星期二', '47', '20304', '2030-47', '203011', '20301118', '20301124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-20', '20301120', '2030', '11', '20', '星期三', '47', '20304', '2030-47', '203011', '20301118', '20301124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-21', '20301121', '2030', '11', '21', '星期四', '47', '20304', '2030-47', '203011', '20301118', '20301124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-22', '20301122', '2030', '11', '22', '星期五', '47', '20304', '2030-47', '203011', '20301118', '20301124', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-23', '20301123', '2030', '11', '23', '星期六', '47', '20304', '2030-47', '203011', '20301118', '20301124', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-24', '20301124', '2030', '11', '24', '星期日', '47', '20304', '2030-47', '203011', '20301125', '20301201', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-25', '20301125', '2030', '11', '25', '星期一', '48', '20304', '2030-48', '203011', '20301125', '20301201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-26', '20301126', '2030', '11', '26', '星期二', '48', '20304', '2030-48', '203011', '20301125', '20301201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-27', '20301127', '2030', '11', '27', '星期三', '48', '20304', '2030-48', '203011', '20301125', '20301201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-28', '20301128', '2030', '11', '28', '星期四', '48', '20304', '2030-48', '203011', '20301125', '20301201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-29', '20301129', '2030', '11', '29', '星期五', '48', '20304', '2030-48', '203011', '20301125', '20301201', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-11-30', '20301130', '2030', '11', '30', '星期六', '48', '20304', '2030-48', '203011', '20301125', '20301201', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-01', '20301201', '2030', '12', '01', '星期日', '48', '20304', '2030-48', '203012', '20301202', '20301208', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-02', '20301202', '2030', '12', '02', '星期一', '49', '20304', '2030-49', '203012', '20301202', '20301208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-03', '20301203', '2030', '12', '03', '星期二', '49', '20304', '2030-49', '203012', '20301202', '20301208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-04', '20301204', '2030', '12', '04', '星期三', '49', '20304', '2030-49', '203012', '20301202', '20301208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-05', '20301205', '2030', '12', '05', '星期四', '49', '20304', '2030-49', '203012', '20301202', '20301208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-06', '20301206', '2030', '12', '06', '星期五', '49', '20304', '2030-49', '203012', '20301202', '20301208', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-07', '20301207', '2030', '12', '07', '星期六', '49', '20304', '2030-49', '203012', '20301202', '20301208', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-08', '20301208', '2030', '12', '08', '星期日', '49', '20304', '2030-49', '203012', '20301209', '20301215', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-09', '20301209', '2030', '12', '09', '星期一', '50', '20304', '2030-50', '203012', '20301209', '20301215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-10', '20301210', '2030', '12', '10', '星期二', '50', '20304', '2030-50', '203012', '20301209', '20301215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-11', '20301211', '2030', '12', '11', '星期三', '50', '20304', '2030-50', '203012', '20301209', '20301215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-12', '20301212', '2030', '12', '12', '星期四', '50', '20304', '2030-50', '203012', '20301209', '20301215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-13', '20301213', '2030', '12', '13', '星期五', '50', '20304', '2030-50', '203012', '20301209', '20301215', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-14', '20301214', '2030', '12', '14', '星期六', '50', '20304', '2030-50', '203012', '20301209', '20301215', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-15', '20301215', '2030', '12', '15', '星期日', '50', '20304', '2030-50', '203012', '20301216', '20301222', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-16', '20301216', '2030', '12', '16', '星期一', '51', '20304', '2030-51', '203012', '20301216', '20301222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-17', '20301217', '2030', '12', '17', '星期二', '51', '20304', '2030-51', '203012', '20301216', '20301222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-18', '20301218', '2030', '12', '18', '星期三', '51', '20304', '2030-51', '203012', '20301216', '20301222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-19', '20301219', '2030', '12', '19', '星期四', '51', '20304', '2030-51', '203012', '20301216', '20301222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-20', '20301220', '2030', '12', '20', '星期五', '51', '20304', '2030-51', '203012', '20301216', '20301222', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-21', '20301221', '2030', '12', '21', '星期六', '51', '20304', '2030-51', '203012', '20301216', '20301222', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-22', '20301222', '2030', '12', '22', '星期日', '51', '20304', '2030-51', '203012', '20301223', '20301229', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-23', '20301223', '2030', '12', '23', '星期一', '52', '20304', '2030-52', '203012', '20301223', '20301229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-24', '20301224', '2030', '12', '24', '星期二', '52', '20304', '2030-52', '203012', '20301223', '20301229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-25', '20301225', '2030', '12', '25', '星期三', '52', '20304', '2030-52', '203012', '20301223', '20301229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-26', '20301226', '2030', '12', '26', '星期四', '52', '20304', '2030-52', '203012', '20301223', '20301229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-27', '20301227', '2030', '12', '27', '星期五', '52', '20304', '2030-52', '203012', '20301223', '20301229', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-28', '20301228', '2030', '12', '28', '星期六', '52', '20304', '2030-52', '203012', '20301223', '20301229', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-29', '20301229', '2030', '12', '29', '星期日', '52', '20304', '2030-52', '203012', '20301230', '20310105', '1');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-30', '20301230', '2030', '12', '30', '星期一', '53', '20304', '2030-53', '203012', '20301230', '20310105', '0');
INSERT INTO `t_sys_calendar` VALUES ('2030-12-31', '20301231', '2030', '12', '31', '星期二', '53', '20304', '2030-53', '203012', '20301230', '20310105', '0');

-- ----------------------------
-- Table structure for ums_admin
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '帐号启用状态：0->禁用；1->启用',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin
-- ----------------------------
INSERT INTO `ums_admin` VALUES (1, 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', NULL, '测试账号', NULL, '2018-09-29 13:55:30', '2018-09-29 13:55:39', 1, NULL, 2);
INSERT INTO `ums_admin` VALUES (3, 'admin', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 'admin@163.com', '系统管理员', '系统管理员', '2018-10-08 13:32:47', '2019-03-20 15:38:50', 1, '18257198894', 1);
INSERT INTO `ums_admin` VALUES (11, '18257198894', '$2a$10$8dQ/e2MIlBWT9hYSLpo1meP6wq80XL4VOmjtExJjxiLHMgLWLPn4C', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', NULL, '倪定波', NULL, '2019-10-07 20:29:14', NULL, 1, NULL, 3);
INSERT INTO `ums_admin` VALUES (48, '15858298107', '$2a$10$EvYoVsCTCPa0f/uyndf1Fu.dGYja2wLpcQQ7HQjayDCWogakKqTNK', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', NULL, '孙诚焕', NULL, '2019-11-13 20:30:28', NULL, 0, NULL, 3);
INSERT INTO `ums_admin` VALUES (49, '18257198893', '$2a$10$qYc8HV6fV8in/EiIAj/dFOlLgOhDvGN4fiGk0ejJelAER8JC/Dq7G', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', NULL, '唐哲', NULL, '2019-11-14 17:36:59', NULL, 1, NULL, 3);
INSERT INTO `ums_admin` VALUES (50, '18257198892', '$2a$10$qYc8HV6fV8in/EiIAj/dFOlLgOhDvGN4fiGk0ejJelAER8JC/Dq7G', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', NULL, '毛宇航', NULL, '2019-11-14 17:38:33', NULL, 1, NULL, 3);
INSERT INTO `ums_admin` VALUES (51, '18257198891', '$2a$10$qYc8HV6fV8in/EiIAj/dFOlLgOhDvGN4fiGk0ejJelAER8JC/Dq7G', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', NULL, '潘嘉伟', NULL, '2019-11-14 17:41:33', NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for ums_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_login_log`;
CREATE TABLE `ums_admin_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_agent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin_login_log
-- ----------------------------
INSERT INTO `ums_admin_login_log` VALUES (5, 3, '2018-12-06 13:59:12', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (6, 3, '2018-12-17 13:23:20', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (7, 3, '2018-12-18 13:51:42', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (8, 3, '2018-12-18 13:51:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (9, 3, '2019-01-28 16:20:41', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (10, 3, '2019-01-29 09:16:25', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (11, 3, '2019-01-29 10:10:51', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (12, 3, '2019-02-18 11:03:06', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (13, 3, '2019-03-12 10:03:55', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (14, 3, '2019-03-12 10:06:19', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (15, 3, '2019-03-12 10:15:22', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (16, 3, '2019-03-20 15:35:33', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (17, 3, '2019-03-20 15:38:50', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (18, 3, '2019-09-03 15:00:08', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (19, 1, '2019-09-03 15:35:37', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (20, 3, '2019-09-11 12:54:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (21, 3, '2019-09-11 12:54:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (22, 3, '2019-09-11 13:04:01', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (23, 3, '2019-09-11 13:05:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (24, 3, '2019-09-11 13:11:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (25, 1, '2019-09-11 13:12:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (26, 3, '2019-09-11 16:44:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (27, 3, '2019-09-11 16:45:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (28, 3, '2019-09-11 17:42:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (29, 3, '2019-09-12 09:46:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (30, 3, '2019-09-12 12:26:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (31, 3, '2019-09-12 14:42:47', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (32, 3, '2019-09-12 15:05:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (33, 3, '2019-09-12 15:46:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (34, 3, '2019-09-12 15:46:44', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (35, 3, '2019-09-12 15:49:43', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (36, 3, '2019-09-19 12:23:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (37, 3, '2019-09-21 12:11:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (38, 3, '2019-09-26 19:47:05', '0:0:0:0:0:0:0:1', NULL, NULL);

-- ----------------------------
-- Table structure for ums_admin_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_permission_relation`;
CREATE TABLE `ums_admin_permission_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `permission_id` bigint(20) NULL DEFAULT NULL,
  `type` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户和权限关系表(除角色中定义的权限以外的加减权限)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ums_admin_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户和角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin_role_relation
-- ----------------------------
INSERT INTO `ums_admin_role_relation` VALUES (13, 3, 1);
INSERT INTO `ums_admin_role_relation` VALUES (15, 3, 2);
INSERT INTO `ums_admin_role_relation` VALUES (16, 3, 4);

-- ----------------------------
-- Table structure for ums_growth_change_history
-- ----------------------------
DROP TABLE IF EXISTS `ums_growth_change_history`;
CREATE TABLE `ums_growth_change_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `change_type` int(1) NULL DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int(11) NULL DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) NULL DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '成长值变化历史记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_growth_change_history
-- ----------------------------
INSERT INTO `ums_growth_change_history` VALUES (1, 1, '2018-08-29 17:16:35', 0, 1000, 'test', '测试使用', 1);

-- ----------------------------
-- Table structure for ums_integration_change_history
-- ----------------------------
DROP TABLE IF EXISTS `ums_integration_change_history`;
CREATE TABLE `ums_integration_change_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `change_type` int(1) NULL DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int(11) NULL DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) NULL DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分变化历史记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ums_integration_consume_setting
-- ----------------------------
DROP TABLE IF EXISTS `ums_integration_consume_setting`;
CREATE TABLE `ums_integration_consume_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deduction_per_amount` int(11) NULL DEFAULT NULL COMMENT '每一元需要抵扣的积分数量',
  `max_percent_per_order` int(11) NULL DEFAULT NULL COMMENT '每笔订单最高抵用百分比',
  `use_unit` int(11) NULL DEFAULT NULL COMMENT '每次使用积分最小单位100',
  `coupon_status` int(1) NULL DEFAULT NULL COMMENT '是否可以和优惠券同用；0->不可以；1->可以',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分消费设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_integration_consume_setting
-- ----------------------------
INSERT INTO `ums_integration_consume_setting` VALUES (1, 100, 50, 100, 1);

-- ----------------------------
-- Table structure for ums_member
-- ----------------------------
DROP TABLE IF EXISTS `ums_member`;
CREATE TABLE `ums_member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_level_id` bigint(20) NULL DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `status` int(1) NULL DEFAULT NULL COMMENT '帐号启用状态:0->禁用；1->启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `gender` int(1) NULL DEFAULT NULL COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所做城市',
  `job` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `personalized_signature` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `source_type` int(1) NULL DEFAULT NULL COMMENT '用户来源',
  `integration` int(11) NULL DEFAULT NULL COMMENT '积分',
  `growth` int(11) NULL DEFAULT NULL COMMENT '成长值',
  `luckey_count` int(11) NULL DEFAULT NULL COMMENT '剩余抽奖次数',
  `history_integration` int(11) NULL DEFAULT NULL COMMENT '历史积分数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username`) USING BTREE,
  UNIQUE INDEX `idx_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_member
-- ----------------------------
INSERT INTO `ums_member` VALUES (1, 4, 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windir', '18061581849', 1, '2018-08-02 10:35:44', NULL, 1, '2009-06-01', '上海', '学生', 'test', NULL, 5000, NULL, NULL, NULL);
INSERT INTO `ums_member` VALUES (3, 4, 'windy', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windy', '18061581848', 1, '2018-08-03 16:46:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ums_member` VALUES (4, 4, 'zhengsan', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'zhengsan', '18061581847', 1, '2018-11-12 14:12:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ums_member` VALUES (5, 4, 'lisi', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lisi', '18061581841', 1, '2018-11-12 14:12:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ums_member` VALUES (6, 4, 'wangwu', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'wangwu', '18061581842', 1, '2018-11-12 14:13:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ums_member` VALUES (7, 4, 'lion', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lion', '18061581845', 1, '2018-11-12 14:21:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ums_member` VALUES (8, 4, 'shari', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'shari', '18061581844', 1, '2018-11-12 14:22:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ums_member` VALUES (9, 4, 'aewen', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'aewen', '18061581843', 1, '2018-11-12 14:22:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ums_member_level
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_level`;
CREATE TABLE `ums_member_level`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `growth_point` int(11) NULL DEFAULT NULL,
  `default_status` int(1) NULL DEFAULT NULL COMMENT '是否为默认等级：0->不是；1->是',
  `free_freight_point` decimal(10, 2) NULL DEFAULT NULL COMMENT '免运费标准',
  `comment_growth_point` int(11) NULL DEFAULT NULL COMMENT '每次评价获取的成长值',
  `priviledge_free_freight` int(1) NULL DEFAULT NULL COMMENT '是否有免邮特权',
  `priviledge_sign_in` int(1) NULL DEFAULT NULL COMMENT '是否有签到特权',
  `priviledge_comment` int(1) NULL DEFAULT NULL COMMENT '是否有评论获奖励特权',
  `priviledge_promotion` int(1) NULL DEFAULT NULL COMMENT '是否有专享活动特权',
  `priviledge_member_price` int(1) NULL DEFAULT NULL COMMENT '是否有会员价格特权',
  `priviledge_birthday` int(1) NULL DEFAULT NULL COMMENT '是否有生日特权',
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员等级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_member_level
-- ----------------------------
INSERT INTO `ums_member_level` VALUES (1, '黄金会员', 1000, 0, 199.00, 5, 1, 1, 1, 1, 1, 1, NULL);
INSERT INTO `ums_member_level` VALUES (2, '白金会员', 5000, 0, 99.00, 10, 1, 1, 1, 1, 1, 1, NULL);
INSERT INTO `ums_member_level` VALUES (3, '钻石会员', 15000, 0, 69.00, 15, 1, 1, 1, 1, 1, 1, NULL);
INSERT INTO `ums_member_level` VALUES (4, '普通会员', 1, 1, 199.00, 20, 1, 1, 1, 1, 0, 0, NULL);

-- ----------------------------
-- Table structure for ums_member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_login_log`;
CREATE TABLE `ums_member_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_type` int(1) NULL DEFAULT NULL COMMENT '登录类型：0->PC；1->android;2->ios;3->小程序',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员登录记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_member_login_log
-- ----------------------------
INSERT INTO `ums_member_login_log` VALUES (1, NULL, '2019-10-14 14:07:24', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ums_member_member_tag_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_member_tag_relation`;
CREATE TABLE `ums_member_member_tag_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `tag_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和标签关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ums_member_product_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_product_category_relation`;
CREATE TABLE `ums_member_product_category_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `product_category_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员与产品分类关系表（用户喜欢的分类）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ums_member_receive_address
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_receive_address`;
CREATE TABLE `ums_member_receive_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人名称',
  `phone_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default_status` int(1) NULL DEFAULT NULL COMMENT '是否为默认',
  `post_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份/直辖市',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `region` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区',
  `detail_address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址(街道)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_member_receive_address
-- ----------------------------
INSERT INTO `ums_member_receive_address` VALUES (1, 1, '大梨', '18033441849', 0, '518000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO `ums_member_receive_address` VALUES (3, 1, '大梨', '18033441849', 0, '518000', '广东省', '深圳市', '福田区', '清水河街道');
INSERT INTO `ums_member_receive_address` VALUES (4, 1, '大梨', '18033441849', 1, '518000', '广东省', '深圳市', '福田区', '东晓街道');

-- ----------------------------
-- Table structure for ums_member_rule_setting
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_rule_setting`;
CREATE TABLE `ums_member_rule_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `continue_sign_day` int(11) NULL DEFAULT NULL COMMENT '连续签到天数',
  `continue_sign_point` int(11) NULL DEFAULT NULL COMMENT '连续签到赠送数量',
  `consume_per_point` decimal(10, 2) NULL DEFAULT NULL COMMENT '每消费多少元获取1个点',
  `low_order_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '最低获取点数的订单金额',
  `max_point_per_order` int(11) NULL DEFAULT NULL COMMENT '每笔订单最高获取点数',
  `type` int(1) NULL DEFAULT NULL COMMENT '类型：0->积分规则；1->成长值规则',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员积分成长规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ums_member_statistics_info
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_statistics_info`;
CREATE TABLE `ums_member_statistics_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL,
  `consume_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '累计消费金额',
  `order_count` int(11) NULL DEFAULT NULL COMMENT '订单数量',
  `coupon_count` int(11) NULL DEFAULT NULL COMMENT '优惠券数量',
  `comment_count` int(11) NULL DEFAULT NULL COMMENT '评价数',
  `return_order_count` int(11) NULL DEFAULT NULL COMMENT '退货数量',
  `login_count` int(11) NULL DEFAULT NULL COMMENT '登录次数',
  `attend_count` int(11) NULL DEFAULT NULL COMMENT '关注数量',
  `fans_count` int(11) NULL DEFAULT NULL COMMENT '粉丝数量',
  `collect_product_count` int(11) NULL DEFAULT NULL,
  `collect_subject_count` int(11) NULL DEFAULT NULL,
  `collect_topic_count` int(11) NULL DEFAULT NULL,
  `collect_comment_count` int(11) NULL DEFAULT NULL,
  `invite_friend_count` int(11) NULL DEFAULT NULL,
  `recent_order_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次下订单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员统计信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ums_member_tag
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_tag`;
CREATE TABLE `ums_member_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `finish_order_count` int(11) NULL DEFAULT NULL COMMENT '自动打标签完成订单数量',
  `finish_order_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '自动打标签完成订单金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ums_member_task
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_task`;
CREATE TABLE `ums_member_task`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `growth` int(11) NULL DEFAULT NULL COMMENT '赠送成长值',
  `intergration` int(11) NULL DEFAULT NULL COMMENT '赠送积分',
  `type` int(1) NULL DEFAULT NULL COMMENT '任务类型：0->新手任务；1->日常任务',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ums_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父级权限id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` int(1) NULL DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
  `uri` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端资源路径',
  `status` int(1) NULL DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_permission
-- ----------------------------
INSERT INTO `ums_permission` VALUES (1, 0, '商品', NULL, NULL, 0, NULL, 1, '2018-09-29 16:15:14', 0);
INSERT INTO `ums_permission` VALUES (2, 1, '商品列表', 'pms:product:read', NULL, 1, '/pms/product/index', 1, '2018-09-29 16:17:01', 0);
INSERT INTO `ums_permission` VALUES (3, 1, '添加商品', 'pms:product:create', NULL, 1, '/pms/product/add', 1, '2018-09-29 16:18:51', 2);
INSERT INTO `ums_permission` VALUES (4, 1, '商品分类', 'pms:productCategory:read', NULL, 1, '/pms/productCate/index', 1, '2018-09-29 16:23:07', 1);
INSERT INTO `ums_permission` VALUES (5, 1, '商品类型', 'pms:productAttribute:read', NULL, 1, '/pms/productAttr/index', 1, '2018-09-29 16:24:43', 3);
INSERT INTO `ums_permission` VALUES (6, 1, '品牌管理', 'pms:brand:read', NULL, 1, '/pms/brand/index', 1, '2018-09-29 16:25:45', 0);
INSERT INTO `ums_permission` VALUES (7, 2, '编辑商品', 'pms:product:update', NULL, 2, '/pms/product/updateProduct', 1, '2018-09-29 16:34:23', 0);
INSERT INTO `ums_permission` VALUES (8, 2, '删除商品', 'pms:product:delete', NULL, 2, '/pms/product/delete', 1, '2018-09-29 16:38:33', 0);
INSERT INTO `ums_permission` VALUES (9, 4, '添加商品分类', 'pms:productCategory:create', NULL, 2, '/pms/productCate/create', 1, '2018-09-29 16:43:23', 0);
INSERT INTO `ums_permission` VALUES (10, 4, '修改商品分类', 'pms:productCategory:update', NULL, 2, '/pms/productCate/update', 1, '2018-09-29 16:43:55', 0);
INSERT INTO `ums_permission` VALUES (11, 4, '删除商品分类', 'pms:productCategory:delete', NULL, 2, '/pms/productAttr/delete', 1, '2018-09-29 16:44:38', 0);
INSERT INTO `ums_permission` VALUES (12, 5, '添加商品类型', 'pms:productAttribute:create', NULL, 2, '/pms/productAttr/create', 1, '2018-09-29 16:45:25', 0);
INSERT INTO `ums_permission` VALUES (13, 5, '修改商品类型', 'pms:productAttribute:update', NULL, 2, '/pms/productAttr/update', 1, '2018-09-29 16:48:08', 0);
INSERT INTO `ums_permission` VALUES (14, 5, '删除商品类型', 'pms:productAttribute:delete', NULL, 2, '/pms/productAttr/delete', 1, '2018-09-29 16:48:44', 0);
INSERT INTO `ums_permission` VALUES (15, 6, '添加品牌', 'pms:brand:create', NULL, 2, '/pms/brand/add', 1, '2018-09-29 16:49:34', 0);
INSERT INTO `ums_permission` VALUES (16, 6, '修改品牌', 'pms:brand:update', NULL, 2, '/pms/brand/update', 1, '2018-09-29 16:50:55', 0);
INSERT INTO `ums_permission` VALUES (17, 6, '删除品牌', 'pms:brand:delete', NULL, 2, '/pms/brand/delete', 1, '2018-09-29 16:50:59', 0);
INSERT INTO `ums_permission` VALUES (18, 0, '首页', NULL, NULL, 0, NULL, 1, '2018-09-29 16:51:57', 0);

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `admin_count` int(11) NULL DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES (1, '商品管理员', '商品管理员', 0, '2018-09-30 15:46:11', 1, 0);
INSERT INTO `ums_role` VALUES (2, '商品分类管理员', '商品分类管理员', 0, '2018-09-30 15:53:45', 1, 0);
INSERT INTO `ums_role` VALUES (3, '商品类型管理员', '商品类型管理员', 0, '2018-09-30 15:53:56', 1, 0);
INSERT INTO `ums_role` VALUES (4, '品牌管理员', '品牌管理员', 0, '2018-09-30 15:54:12', 1, 0);

-- ----------------------------
-- Table structure for ums_role_copy1
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_copy1`;
CREATE TABLE `ums_role_copy1`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `admin_count` int(11) NULL DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role_copy1
-- ----------------------------
INSERT INTO `ums_role_copy1` VALUES (1, '商品管理员', '商品管理员', 0, '2018-09-30 15:46:11', 1, 0);
INSERT INTO `ums_role_copy1` VALUES (2, '商品分类管理员', '商品分类管理员', 0, '2018-09-30 15:53:45', 1, 0);
INSERT INTO `ums_role_copy1` VALUES (3, '商品类型管理员', '商品类型管理员', 0, '2018-09-30 15:53:56', 1, 0);
INSERT INTO `ums_role_copy1` VALUES (4, '品牌管理员', '品牌管理员', 0, '2018-09-30 15:54:12', 1, 0);

-- ----------------------------
-- Table structure for ums_role_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_permission_relation`;
CREATE TABLE `ums_role_permission_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `permission_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户角色和权限关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role_permission_relation
-- ----------------------------
INSERT INTO `ums_role_permission_relation` VALUES (1, 1, 1);
INSERT INTO `ums_role_permission_relation` VALUES (2, 1, 2);
INSERT INTO `ums_role_permission_relation` VALUES (3, 1, 3);
INSERT INTO `ums_role_permission_relation` VALUES (4, 1, 7);
INSERT INTO `ums_role_permission_relation` VALUES (5, 1, 8);
INSERT INTO `ums_role_permission_relation` VALUES (6, 2, 4);
INSERT INTO `ums_role_permission_relation` VALUES (7, 2, 9);
INSERT INTO `ums_role_permission_relation` VALUES (8, 2, 10);
INSERT INTO `ums_role_permission_relation` VALUES (9, 2, 11);
INSERT INTO `ums_role_permission_relation` VALUES (10, 3, 5);
INSERT INTO `ums_role_permission_relation` VALUES (11, 3, 12);
INSERT INTO `ums_role_permission_relation` VALUES (12, 3, 13);
INSERT INTO `ums_role_permission_relation` VALUES (13, 3, 14);
INSERT INTO `ums_role_permission_relation` VALUES (14, 4, 6);
INSERT INTO `ums_role_permission_relation` VALUES (15, 4, 15);
INSERT INTO `ums_role_permission_relation` VALUES (16, 4, 16);
INSERT INTO `ums_role_permission_relation` VALUES (17, 4, 17);

-- ----------------------------
-- View structure for 1
-- ----------------------------
DROP VIEW IF EXISTS `1`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `1` AS select `oms_cart_item`.`id` AS `id`,`oms_cart_item`.`product_name` AS `product_name` from `oms_cart_item`;

SET FOREIGN_KEY_CHECKS = 1;
