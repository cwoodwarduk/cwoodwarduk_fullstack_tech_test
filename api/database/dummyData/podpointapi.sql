/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : podpointapi

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 14/07/2020 14:43:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charges
-- ----------------------------
DROP TABLE IF EXISTS `charges`;
CREATE TABLE `charges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `charge_start` datetime NOT NULL,
  `charge_end` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of charges
-- ----------------------------
BEGIN;
INSERT INTO `charges` VALUES (1, '2020-07-09 11:08:33', '2020-07-11 09:42:03', '2020-07-10 15:29:16', '2020-07-10 15:29:16');
INSERT INTO `charges` VALUES (2, '2020-07-06 04:04:35', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (3, '2020-07-06 09:15:43', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (4, '2020-07-04 09:49:32', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (5, '2020-07-10 09:37:47', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (6, '2020-07-04 00:00:27', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (7, '2020-07-05 01:29:48', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (8, '2020-07-05 00:23:55', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (9, '2020-07-04 00:18:46', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (10, '2020-07-08 10:45:46', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (11, '2020-07-05 05:29:49', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (12, '2020-07-04 19:10:53', '2020-07-11 09:42:03', '2020-07-10 15:29:17', '2020-07-10 15:29:17');
INSERT INTO `charges` VALUES (13, '2020-07-13 16:50:53', '2020-07-11 11:50:00', '2020-07-13 16:50:53', '2020-07-13 16:50:53');
INSERT INTO `charges` VALUES (14, '2020-07-13 17:02:30', '2020-07-13 18:09:00', '2020-07-13 16:06:54', '2020-07-13 16:06:54');
INSERT INTO `charges` VALUES (15, '2020-07-13 18:20:30', '2020-07-13 18:50:30', '2020-07-13 17:20:20', '2020-07-13 17:20:20');
INSERT INTO `charges` VALUES (16, '2020-07-13 18:35:30', '2020-07-14 09:16:30', '2020-07-13 17:36:25', '2020-07-13 17:36:25');
INSERT INTO `charges` VALUES (17, '2020-07-13 18:09:08', '2020-07-14 09:16:30', '2020-07-13 18:09:09', '2020-07-13 18:09:09');
INSERT INTO `charges` VALUES (18, '2020-07-14 08:16:29', '2020-07-14 09:16:30', '2020-07-14 08:16:30', '2020-07-14 08:16:30');
INSERT INTO `charges` VALUES (19, '2020-07-14 08:30:04', '2020-07-14 08:35:26', '2020-07-14 08:30:04', '2020-07-14 08:30:04');
INSERT INTO `charges` VALUES (20, '2020-07-14 08:54:06', '2020-07-14 12:34:22', '2020-07-14 08:54:06', '2020-07-14 08:54:06');
INSERT INTO `charges` VALUES (21, '2020-07-14 12:34:44', '2020-07-14 12:36:13', '2020-07-14 12:34:44', '2020-07-14 12:34:44');
INSERT INTO `charges` VALUES (22, '2020-07-14 13:22:33', '2020-07-14 13:22:35', '2020-07-14 13:22:33', '2020-07-14 13:22:33');
INSERT INTO `charges` VALUES (23, '2020-07-14 13:22:59', '2020-07-14 13:23:11', '2020-07-14 13:22:59', '2020-07-14 13:22:59');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2020_07_10_111121_create_units_table', 1);
INSERT INTO `migrations` VALUES (2, '2020_07_10_150001_create_charges_table', 2);
INSERT INTO `migrations` VALUES (3, '2020_07_11_112837_create_unit_charge_tags_table', 3);
COMMIT;

-- ----------------------------
-- Table structure for unit_charge_tags
-- ----------------------------
DROP TABLE IF EXISTS `unit_charge_tags`;
CREATE TABLE `unit_charge_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unit_id` int NOT NULL,
  `charge_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of unit_charge_tags
-- ----------------------------
BEGIN;
INSERT INTO `unit_charge_tags` VALUES (1, 4, 10, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (2, 4, 12, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (3, 2, 2, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (4, 3, 8, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (5, 4, 4, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (6, 1, 6, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (7, 4, 9, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (8, 2, 7, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (9, 2, 5, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (10, 3, 3, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (11, 1, 11, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (12, 1, 1, '2020-07-11 11:43:48', '2020-07-11 11:43:48');
INSERT INTO `unit_charge_tags` VALUES (13, 2, 13, '2020-07-13 16:50:53', '2020-07-13 16:50:53');
INSERT INTO `unit_charge_tags` VALUES (14, 2, 14, '2020-07-13 16:06:54', '2020-07-13 16:06:54');
INSERT INTO `unit_charge_tags` VALUES (15, 2, 15, '2020-07-13 17:20:21', '2020-07-13 17:20:21');
INSERT INTO `unit_charge_tags` VALUES (16, 2, 16, '2020-07-13 17:36:25', '2020-07-13 17:36:25');
INSERT INTO `unit_charge_tags` VALUES (17, 1, 17, '2020-07-13 18:09:09', '2020-07-13 18:09:09');
INSERT INTO `unit_charge_tags` VALUES (18, 1, 18, '2020-07-14 08:16:30', '2020-07-14 08:16:30');
INSERT INTO `unit_charge_tags` VALUES (19, 4, 19, '2020-07-14 08:30:05', '2020-07-14 08:30:05');
INSERT INTO `unit_charge_tags` VALUES (20, 1, 20, '2020-07-14 08:54:06', '2020-07-14 08:54:06');
INSERT INTO `unit_charge_tags` VALUES (21, 1, 21, '2020-07-14 12:34:45', '2020-07-14 12:34:45');
INSERT INTO `unit_charge_tags` VALUES (22, 1, 22, '2020-07-14 13:22:33', '2020-07-14 13:22:33');
INSERT INTO `unit_charge_tags` VALUES (23, 3, 23, '2020-07-14 13:22:59', '2020-07-14 13:22:59');
COMMIT;

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('available','charging') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of units
-- ----------------------------
BEGIN;
INSERT INTO `units` VALUES (1, '1 Tom Valley', 'ML12 6XR', 'Jackson Drive', 'available', '2020-07-10 12:17:53', '2020-07-10 12:17:53');
INSERT INTO `units` VALUES (2, '223 Butler Fields', 'BT93 6AB', 'Moore Lane', 'available', '2020-07-10 12:17:54', '2020-07-10 12:17:54');
INSERT INTO `units` VALUES (3, 'Flat 86\nHeather Crossroad', 'B10 9JS', 'Parker Trail', 'available', '2020-07-10 12:17:54', '2020-07-10 12:17:54');
INSERT INTO `units` VALUES (4, 'Studio 27\nParker Ways', 'NN5 7AR', 'Faye Station', 'available', '2020-07-10 12:17:54', '2020-07-10 12:17:54');
INSERT INTO `units` VALUES (5, '034 Poppy Burg', 'NP16 6QT', 'Kieran Pines', 'available', '2020-07-10 12:17:54', '2020-07-10 12:17:54');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
