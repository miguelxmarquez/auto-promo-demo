/*
 Navicat Premium Data Transfer

 Source Server         : Docker - MySQL
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : inxaitcorp.game

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 23/04/2024 15:11:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, 'Amazonas', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (2, 'Antioquia', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (3, 'Arauca', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (4, 'Atlántico', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (5, 'Bogotá', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (6, 'Bolívar', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (7, 'Boyacá', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (8, 'Caldas', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (9, 'Caquetá', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (10, 'Casanare', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (11, 'Cauca', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (12, 'Cesar', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (13, 'Chocó', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (14, 'Córdoba', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (15, 'Cundinamarca', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (16, 'Guainía', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (17, 'Guaviare', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (18, 'Huila', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (19, 'La Guajira', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (20, 'Magdalena', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (21, 'Meta', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (22, 'Nariño', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (23, 'Norte de Santander', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (24, 'Putumayo', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (25, 'Quindío', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (26, 'Risaralda', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (27, 'San Andrés y Providencia', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (28, 'Santander', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (29, 'Sucre', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (30, 'Tolima', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (31, 'Valle del Cauca', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (32, 'Vaupés', '2024-04-23 11:58:20', '2024-04-23 11:58:26');
INSERT INTO `departments` VALUES (33, 'Vichada', '2024-04-23 11:58:20', '2024-04-23 11:58:20');

SET FOREIGN_KEY_CHECKS = 1;
