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

 Date: 24/04/2024 09:46:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cities_department_id_foreign`(`department_id` ASC) USING BTREE,
  CONSTRAINT `cities_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 726 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES (1, 'Leticia', 1);
INSERT INTO `cities` VALUES (2, 'Puerto Nariño', 1);
INSERT INTO `cities` VALUES (3, 'Caldas', 2);
INSERT INTO `cities` VALUES (4, 'Tarazá', 2);
INSERT INTO `cities` VALUES (5, 'La Estrella', 2);
INSERT INTO `cities` VALUES (6, 'Anorí', 2);
INSERT INTO `cities` VALUES (7, 'Santa Rosa de Osos', 2);
INSERT INTO `cities` VALUES (8, 'San Roque', 2);
INSERT INTO `cities` VALUES (9, 'Retiro', 2);
INSERT INTO `cities` VALUES (10, 'Betulia', 2);
INSERT INTO `cities` VALUES (11, 'Sonsón', 2);
INSERT INTO `cities` VALUES (12, 'Copacabana', 2);
INSERT INTO `cities` VALUES (13, 'Yondó', 2);
INSERT INTO `cities` VALUES (14, 'Santo Domingo', 2);
INSERT INTO `cities` VALUES (15, 'Sabaneta', 2);
INSERT INTO `cities` VALUES (16, 'Chigorodó', 2);
INSERT INTO `cities` VALUES (17, 'Abejorral', 2);
INSERT INTO `cities` VALUES (18, 'Valdivia', 2);
INSERT INTO `cities` VALUES (19, 'Angostura', 2);
INSERT INTO `cities` VALUES (20, 'Caucasia', 2);
INSERT INTO `cities` VALUES (21, 'Salgar', 2);
INSERT INTO `cities` VALUES (22, 'Santuario', 2);
INSERT INTO `cities` VALUES (23, 'Venecia', 2);
INSERT INTO `cities` VALUES (24, 'Yarumal', 2);
INSERT INTO `cities` VALUES (25, 'Granada', 2);
INSERT INTO `cities` VALUES (26, 'San Vicente', 2);
INSERT INTO `cities` VALUES (27, 'Vegachí', 2);
INSERT INTO `cities` VALUES (28, 'Sabanalarga', 2);
INSERT INTO `cities` VALUES (29, 'La Unión', 2);
INSERT INTO `cities` VALUES (30, 'Apartadó', 2);
INSERT INTO `cities` VALUES (31, 'Yarumal', 2);
INSERT INTO `cities` VALUES (32, 'Carepa', 2);
INSERT INTO `cities` VALUES (33, 'Cañasgordas', 2);
INSERT INTO `cities` VALUES (34, 'Urrao', 2);
INSERT INTO `cities` VALUES (35, 'Jardín', 2);
INSERT INTO `cities` VALUES (36, 'Arboletes', 2);
INSERT INTO `cities` VALUES (37, 'Guarne', 2);
INSERT INTO `cities` VALUES (38, 'Girardota', 2);
INSERT INTO `cities` VALUES (39, 'El Bagre', 2);
INSERT INTO `cities` VALUES (40, 'San Jerónimo', 2);
INSERT INTO `cities` VALUES (41, 'Andes', 2);
INSERT INTO `cities` VALUES (42, 'Barbosa', 2);
INSERT INTO `cities` VALUES (43, 'San Rafael', 2);
INSERT INTO `cities` VALUES (44, 'Cáceres', 2);
INSERT INTO `cities` VALUES (45, 'Titiribí', 2);
INSERT INTO `cities` VALUES (46, 'Medellín', 2);
INSERT INTO `cities` VALUES (47, 'Puerto Nare', 2);
INSERT INTO `cities` VALUES (48, 'Ebéjico', 2);
INSERT INTO `cities` VALUES (49, 'Sopetrán', 2);
INSERT INTO `cities` VALUES (50, 'Jericó', 2);
INSERT INTO `cities` VALUES (51, 'San Carlos', 2);
INSERT INTO `cities` VALUES (52, 'Segovia', 2);
INSERT INTO `cities` VALUES (53, 'Carmen de Viboral', 2);
INSERT INTO `cities` VALUES (54, 'Cocorná', 2);
INSERT INTO `cities` VALUES (55, 'Marinilla', 2);
INSERT INTO `cities` VALUES (56, 'La Ceja', 2);
INSERT INTO `cities` VALUES (57, 'Támesis', 2);
INSERT INTO `cities` VALUES (58, 'Necoclí', 2);
INSERT INTO `cities` VALUES (59, 'Puerto Berrío', 2);
INSERT INTO `cities` VALUES (60, 'Cisneros', 2);
INSERT INTO `cities` VALUES (61, 'Ciudad Bolívar', 2);
INSERT INTO `cities` VALUES (62, 'Briceño', 2);
INSERT INTO `cities` VALUES (63, 'Mutatá', 2);
INSERT INTO `cities` VALUES (64, 'Santa Fe de Antioquia', 2);
INSERT INTO `cities` VALUES (65, 'Entrerríos', 2);
INSERT INTO `cities` VALUES (66, 'Valdivia', 2);
INSERT INTO `cities` VALUES (67, 'Amalfi', 2);
INSERT INTO `cities` VALUES (68, 'Turbo', 2);
INSERT INTO `cities` VALUES (69, 'Dabeiba', 2);
INSERT INTO `cities` VALUES (70, 'Betania', 2);
INSERT INTO `cities` VALUES (71, 'Donmatías', 2);
INSERT INTO `cities` VALUES (72, 'Frontino', 2);
INSERT INTO `cities` VALUES (73, 'San Juan de Urabá', 2);
INSERT INTO `cities` VALUES (74, 'Envigado', 2);
INSERT INTO `cities` VALUES (75, 'Itagüí', 2);
INSERT INTO `cities` VALUES (76, 'Guatapé', 2);
INSERT INTO `cities` VALUES (77, 'Argelia', 2);
INSERT INTO `cities` VALUES (78, 'Zaragoza', 2);
INSERT INTO `cities` VALUES (79, 'Campamento', 2);
INSERT INTO `cities` VALUES (80, 'Angelópolis', 2);
INSERT INTO `cities` VALUES (81, 'Ituango', 2);
INSERT INTO `cities` VALUES (82, 'Amagá', 2);
INSERT INTO `cities` VALUES (83, 'Nechí', 2);
INSERT INTO `cities` VALUES (84, 'Yolombó', 2);
INSERT INTO `cities` VALUES (85, 'San Pedro de Urabá', 2);
INSERT INTO `cities` VALUES (86, 'Concordia', 2);
INSERT INTO `cities` VALUES (87, 'Remedios', 2);
INSERT INTO `cities` VALUES (88, 'Fredonia', 2);
INSERT INTO `cities` VALUES (89, 'Yalí', 2);
INSERT INTO `cities` VALUES (90, 'Rionegro', 2);
INSERT INTO `cities` VALUES (91, 'Nariño', 2);
INSERT INTO `cities` VALUES (92, 'Santa Bárbara', 2);
INSERT INTO `cities` VALUES (93, 'Bello', 2);
INSERT INTO `cities` VALUES (94, 'Puerto Triunfo', 2);
INSERT INTO `cities` VALUES (95, 'Fortul', 3);
INSERT INTO `cities` VALUES (96, 'Arauquita', 3);
INSERT INTO `cities` VALUES (97, 'Saravena', 3);
INSERT INTO `cities` VALUES (98, 'Arauca', 3);
INSERT INTO `cities` VALUES (99, 'Tame', 3);
INSERT INTO `cities` VALUES (100, 'Polonuevo', 4);
INSERT INTO `cities` VALUES (101, 'Manatí', 4);
INSERT INTO `cities` VALUES (102, 'Barranquilla', 4);
INSERT INTO `cities` VALUES (103, 'Usiacurí', 4);
INSERT INTO `cities` VALUES (104, 'Baranoa', 4);
INSERT INTO `cities` VALUES (105, 'Galapa', 4);
INSERT INTO `cities` VALUES (106, 'Soledad', 4);
INSERT INTO `cities` VALUES (107, 'Juan de Acosta', 4);
INSERT INTO `cities` VALUES (108, 'Puerto Colombia', 4);
INSERT INTO `cities` VALUES (109, 'Sabanagrande', 4);
INSERT INTO `cities` VALUES (110, 'Ponedera', 4);
INSERT INTO `cities` VALUES (111, 'Candelaria', 4);
INSERT INTO `cities` VALUES (112, 'Santa Lucía', 4);
INSERT INTO `cities` VALUES (113, 'Palmar de Varela', 4);
INSERT INTO `cities` VALUES (114, 'Campo de la Cruz', 4);
INSERT INTO `cities` VALUES (115, 'Santo Tomás', 4);
INSERT INTO `cities` VALUES (116, 'Malambo', 4);
INSERT INTO `cities` VALUES (117, 'Sabanalarga', 4);
INSERT INTO `cities` VALUES (118, 'Luruaco', 4);
INSERT INTO `cities` VALUES (119, 'Suan', 4);
INSERT INTO `cities` VALUES (120, 'Repelón', 4);
INSERT INTO `cities` VALUES (121, 'Tubará', 4);
INSERT INTO `cities` VALUES (122, 'Fontibón', 5);
INSERT INTO `cities` VALUES (123, 'Bogotá', 5);
INSERT INTO `cities` VALUES (124, 'Usme', 5);
INSERT INTO `cities` VALUES (125, 'Simití', 6);
INSERT INTO `cities` VALUES (126, 'San Martín de Loba', 6);
INSERT INTO `cities` VALUES (127, 'Pinillos', 6);
INSERT INTO `cities` VALUES (128, 'Morales', 6);
INSERT INTO `cities` VALUES (129, 'Altos del Rosario', 6);
INSERT INTO `cities` VALUES (130, 'Santa Rosa', 6);
INSERT INTO `cities` VALUES (131, 'Clemencia', 6);
INSERT INTO `cities` VALUES (132, 'San Juan Nepomuceno', 6);
INSERT INTO `cities` VALUES (133, 'Villanueva', 6);
INSERT INTO `cities` VALUES (134, 'Barranco de Loba', 6);
INSERT INTO `cities` VALUES (135, 'Santa Rosa del Sur', 6);
INSERT INTO `cities` VALUES (136, 'Mahates', 6);
INSERT INTO `cities` VALUES (137, 'Santa Catalina', 6);
INSERT INTO `cities` VALUES (138, 'Montecristo', 6);
INSERT INTO `cities` VALUES (139, 'Achí', 6);
INSERT INTO `cities` VALUES (140, 'San Jacinto', 6);
INSERT INTO `cities` VALUES (141, 'San Estanislao', 6);
INSERT INTO `cities` VALUES (142, 'Calamar', 6);
INSERT INTO `cities` VALUES (143, 'Tiquisio', 6);
INSERT INTO `cities` VALUES (144, 'San Pablo', 6);
INSERT INTO `cities` VALUES (145, 'Turbaco', 6);
INSERT INTO `cities` VALUES (146, 'Regidor', 6);
INSERT INTO `cities` VALUES (147, 'Arjona', 6);
INSERT INTO `cities` VALUES (148, 'Turbaná', 6);
INSERT INTO `cities` VALUES (149, 'Talaigua Nuevo', 6);
INSERT INTO `cities` VALUES (150, 'Norosí', 6);
INSERT INTO `cities` VALUES (151, 'San Fernando', 6);
INSERT INTO `cities` VALUES (152, 'Zambrano', 6);
INSERT INTO `cities` VALUES (153, 'San Fernando', 6);
INSERT INTO `cities` VALUES (154, 'El Carmen de Bolívar', 6);
INSERT INTO `cities` VALUES (155, 'Cartagena', 6);
INSERT INTO `cities` VALUES (156, 'Margarita', 6);
INSERT INTO `cities` VALUES (157, 'Córdoba', 6);
INSERT INTO `cities` VALUES (158, 'Hatillo de Loba', 6);
INSERT INTO `cities` VALUES (159, 'Magangué', 6);
INSERT INTO `cities` VALUES (160, 'Cicuco', 6);
INSERT INTO `cities` VALUES (161, 'San Jacinto del Cauca', 6);
INSERT INTO `cities` VALUES (162, 'María la Baja', 6);
INSERT INTO `cities` VALUES (163, 'Arroyohondo', 6);
INSERT INTO `cities` VALUES (164, 'Villa de Leyva', 7);
INSERT INTO `cities` VALUES (165, 'Guateque', 7);
INSERT INTO `cities` VALUES (166, 'Cómbita', 7);
INSERT INTO `cities` VALUES (167, 'Duitama', 7);
INSERT INTO `cities` VALUES (168, 'Tuta', 7);
INSERT INTO `cities` VALUES (169, 'Ramiriquí', 7);
INSERT INTO `cities` VALUES (170, 'Garagoa', 7);
INSERT INTO `cities` VALUES (171, 'Ráquira', 7);
INSERT INTO `cities` VALUES (172, 'Sogamoso', 7);
INSERT INTO `cities` VALUES (173, 'Siachoque', 7);
INSERT INTO `cities` VALUES (174, 'Santa Rosa de Viterbo', 7);
INSERT INTO `cities` VALUES (175, 'Ventaquemada', 7);
INSERT INTO `cities` VALUES (176, 'Samacá', 7);
INSERT INTO `cities` VALUES (177, 'Aquitania', 7);
INSERT INTO `cities` VALUES (178, 'Nobsa', 7);
INSERT INTO `cities` VALUES (179, 'Moniquirá', 7);
INSERT INTO `cities` VALUES (180, 'Toca', 7);
INSERT INTO `cities` VALUES (181, 'Socotá', 7);
INSERT INTO `cities` VALUES (182, 'Pesca', 7);
INSERT INTO `cities` VALUES (183, 'Chiquinquirá', 7);
INSERT INTO `cities` VALUES (184, 'Chita', 7);
INSERT INTO `cities` VALUES (185, 'Úmbita', 7);
INSERT INTO `cities` VALUES (186, 'Saboyá', 7);
INSERT INTO `cities` VALUES (187, 'Tibasosa', 7);
INSERT INTO `cities` VALUES (188, 'Puerto Boyacá', 7);
INSERT INTO `cities` VALUES (189, 'Tibaná', 7);
INSERT INTO `cities` VALUES (190, 'Tunja', 7);
INSERT INTO `cities` VALUES (191, 'Muzo', 7);
INSERT INTO `cities` VALUES (192, 'Paipa', 7);
INSERT INTO `cities` VALUES (193, 'Samaná', 8);
INSERT INTO `cities` VALUES (194, 'Palestina', 8);
INSERT INTO `cities` VALUES (195, 'La Dorada', 8);
INSERT INTO `cities` VALUES (196, 'Anserma', 8);
INSERT INTO `cities` VALUES (197, 'Supía', 8);
INSERT INTO `cities` VALUES (198, 'Aranzazu', 8);
INSERT INTO `cities` VALUES (199, 'Risaralda', 8);
INSERT INTO `cities` VALUES (200, 'Manzanares', 8);
INSERT INTO `cities` VALUES (201, 'Manizales', 8);
INSERT INTO `cities` VALUES (202, 'Viterbo', 8);
INSERT INTO `cities` VALUES (203, 'Chinchiná', 8);
INSERT INTO `cities` VALUES (204, 'Marquetalia', 8);
INSERT INTO `cities` VALUES (205, 'Villamaría', 8);
INSERT INTO `cities` VALUES (206, 'Pácora', 8);
INSERT INTO `cities` VALUES (207, 'Riosucio', 8);
INSERT INTO `cities` VALUES (208, 'Filadelfia', 8);
INSERT INTO `cities` VALUES (209, 'Belalcázar', 8);
INSERT INTO `cities` VALUES (210, 'Aguadas', 8);
INSERT INTO `cities` VALUES (211, 'Salamina', 8);
INSERT INTO `cities` VALUES (212, 'Pensilvania', 8);
INSERT INTO `cities` VALUES (213, 'Neira', 8);
INSERT INTO `cities` VALUES (214, 'Puerto Rico', 9);
INSERT INTO `cities` VALUES (215, 'Cartagena del Chairá', 9);
INSERT INTO `cities` VALUES (216, 'Belén de los Andaquíes', 9);
INSERT INTO `cities` VALUES (217, 'San Vicente del Caguán', 9);
INSERT INTO `cities` VALUES (218, 'San José del Fragua', 9);
INSERT INTO `cities` VALUES (219, 'La Montañita', 9);
INSERT INTO `cities` VALUES (220, 'El Paujíl', 9);
INSERT INTO `cities` VALUES (221, 'Solano', 9);
INSERT INTO `cities` VALUES (222, 'El Doncello', 9);
INSERT INTO `cities` VALUES (223, 'Florencia', 9);
INSERT INTO `cities` VALUES (224, 'Solita', 9);
INSERT INTO `cities` VALUES (225, 'Tauramena', 10);
INSERT INTO `cities` VALUES (226, 'Nunchía', 10);
INSERT INTO `cities` VALUES (227, 'Paz de Ariporo', 10);
INSERT INTO `cities` VALUES (228, 'Yopal', 10);
INSERT INTO `cities` VALUES (229, 'Aguazul', 10);
INSERT INTO `cities` VALUES (230, 'Orocué', 10);
INSERT INTO `cities` VALUES (231, 'Monterrey', 10);
INSERT INTO `cities` VALUES (232, 'Trinidad', 10);
INSERT INTO `cities` VALUES (233, 'Villanueva', 10);
INSERT INTO `cities` VALUES (234, 'Maní', 10);
INSERT INTO `cities` VALUES (235, 'Caloto', 11);
INSERT INTO `cities` VALUES (236, 'La Vega', 11);
INSERT INTO `cities` VALUES (237, 'Almaguer', 11);
INSERT INTO `cities` VALUES (238, 'Coconuco', 11);
INSERT INTO `cities` VALUES (239, 'Rosas', 11);
INSERT INTO `cities` VALUES (240, 'Timbío', 11);
INSERT INTO `cities` VALUES (241, 'Balboa', 11);
INSERT INTO `cities` VALUES (242, 'Paispamba', 11);
INSERT INTO `cities` VALUES (243, 'Timbiquí', 11);
INSERT INTO `cities` VALUES (244, 'Guapí', 11);
INSERT INTO `cities` VALUES (245, 'Villa Rica', 11);
INSERT INTO `cities` VALUES (246, 'Miranda', 11);
INSERT INTO `cities` VALUES (247, 'Santander de Quilichao', 11);
INSERT INTO `cities` VALUES (248, 'Mercaderes', 11);
INSERT INTO `cities` VALUES (249, 'Piamonte', 11);
INSERT INTO `cities` VALUES (250, 'Argelia', 11);
INSERT INTO `cities` VALUES (251, 'Piendamó', 11);
INSERT INTO `cities` VALUES (252, 'Bolívar', 11);
INSERT INTO `cities` VALUES (253, 'Puerto Tejada', 11);
INSERT INTO `cities` VALUES (254, 'Popayán', 11);
INSERT INTO `cities` VALUES (255, 'Morales', 11);
INSERT INTO `cities` VALUES (256, 'Corinto', 11);
INSERT INTO `cities` VALUES (257, 'Inzá', 11);
INSERT INTO `cities` VALUES (258, 'Cajibío', 11);
INSERT INTO `cities` VALUES (259, 'Sucre', 11);
INSERT INTO `cities` VALUES (260, 'Buenos Aires', 11);
INSERT INTO `cities` VALUES (261, 'Villa Rica', 11);
INSERT INTO `cities` VALUES (262, 'Caldono', 11);
INSERT INTO `cities` VALUES (263, 'Totoró', 11);
INSERT INTO `cities` VALUES (264, 'Padilla', 11);
INSERT INTO `cities` VALUES (265, 'Belalcázar', 11);
INSERT INTO `cities` VALUES (266, 'La Sierra', 11);
INSERT INTO `cities` VALUES (267, 'Silvia', 11);
INSERT INTO `cities` VALUES (268, 'El Bordo', 11);
INSERT INTO `cities` VALUES (269, 'Patía', 11);
INSERT INTO `cities` VALUES (270, 'Jambaló', 11);
INSERT INTO `cities` VALUES (271, 'San Sebastián', 11);
INSERT INTO `cities` VALUES (272, 'Suárez', 11);
INSERT INTO `cities` VALUES (273, 'Toribío', 11);
INSERT INTO `cities` VALUES (274, 'La Jagua de Ibirico', 12);
INSERT INTO `cities` VALUES (275, 'Pueblo Bello', 12);
INSERT INTO `cities` VALUES (276, 'Tamalameque', 12);
INSERT INTO `cities` VALUES (277, 'Chiriguaná', 12);
INSERT INTO `cities` VALUES (278, 'El Paso', 12);
INSERT INTO `cities` VALUES (279, 'Aguachica', 12);
INSERT INTO `cities` VALUES (280, 'San Alberto', 12);
INSERT INTO `cities` VALUES (281, 'Valledupar', 12);
INSERT INTO `cities` VALUES (282, 'San Diego', 12);
INSERT INTO `cities` VALUES (283, 'González', 12);
INSERT INTO `cities` VALUES (284, 'Astrea', 12);
INSERT INTO `cities` VALUES (285, 'Agustín Codazzi', 12);
INSERT INTO `cities` VALUES (286, 'Curumaní', 12);
INSERT INTO `cities` VALUES (287, 'Río de Oro', 12);
INSERT INTO `cities` VALUES (288, 'Gamarra', 12);
INSERT INTO `cities` VALUES (289, 'El Copey', 12);
INSERT INTO `cities` VALUES (290, 'Pelaya', 12);
INSERT INTO `cities` VALUES (291, 'Pailitas', 12);
INSERT INTO `cities` VALUES (292, 'San Martín', 12);
INSERT INTO `cities` VALUES (293, 'Bosconia', 12);
INSERT INTO `cities` VALUES (294, 'Becerril', 12);
INSERT INTO `cities` VALUES (295, 'La Gloria', 12);
INSERT INTO `cities` VALUES (296, 'Chimichagua', 12);
INSERT INTO `cities` VALUES (297, 'Juradó', 13);
INSERT INTO `cities` VALUES (298, 'Nuquí', 13);
INSERT INTO `cities` VALUES (299, 'Mutis', 13);
INSERT INTO `cities` VALUES (300, 'Tadó', 13);
INSERT INTO `cities` VALUES (301, 'Pizarro', 13);
INSERT INTO `cities` VALUES (302, 'Bellavista', 13);
INSERT INTO `cities` VALUES (303, 'Lloró', 13);
INSERT INTO `cities` VALUES (304, 'Santa Genoveva de Docordó', 13);
INSERT INTO `cities` VALUES (305, 'Condoto', 13);
INSERT INTO `cities` VALUES (306, 'Acandí', 13);
INSERT INTO `cities` VALUES (307, 'Unguía', 13);
INSERT INTO `cities` VALUES (308, 'El Carmen de Atrato', 13);
INSERT INTO `cities` VALUES (309, 'Bagadó', 13);
INSERT INTO `cities` VALUES (310, 'Quibdó', 13);
INSERT INTO `cities` VALUES (311, 'Pie de Pató', 13);
INSERT INTO `cities` VALUES (312, 'Riosucio', 13);
INSERT INTO `cities` VALUES (313, 'Istmina', 13);
INSERT INTO `cities` VALUES (314, 'Pueblo Nuevo', 14);
INSERT INTO `cities` VALUES (315, 'Buenavista', 14);
INSERT INTO `cities` VALUES (316, 'Tuchín', 14);
INSERT INTO `cities` VALUES (317, 'La Apartada', 14);
INSERT INTO `cities` VALUES (318, 'Cotorra', 14);
INSERT INTO `cities` VALUES (319, 'Momil', 14);
INSERT INTO `cities` VALUES (320, 'San Bernardo del Viento', 14);
INSERT INTO `cities` VALUES (321, 'Buenavista', 14);
INSERT INTO `cities` VALUES (322, 'San Antero', 14);
INSERT INTO `cities` VALUES (323, 'Puerto Escondido', 14);
INSERT INTO `cities` VALUES (324, 'Montería', 14);
INSERT INTO `cities` VALUES (325, 'Moñitos', 14);
INSERT INTO `cities` VALUES (326, 'San Carlos', 14);
INSERT INTO `cities` VALUES (327, 'Purísima de la Concepción', 14);
INSERT INTO `cities` VALUES (328, 'San Pelayo', 14);
INSERT INTO `cities` VALUES (329, 'Valencia', 14);
INSERT INTO `cities` VALUES (330, 'Ayapel', 14);
INSERT INTO `cities` VALUES (331, 'San Andrés de Sotavento', 14);
INSERT INTO `cities` VALUES (332, 'Chimá', 14);
INSERT INTO `cities` VALUES (333, 'Chinú', 14);
INSERT INTO `cities` VALUES (334, 'Lorica', 14);
INSERT INTO `cities` VALUES (335, 'Puerto Libertador', 14);
INSERT INTO `cities` VALUES (336, 'Ciénaga de Oro', 14);
INSERT INTO `cities` VALUES (337, 'Planeta Rica', 14);
INSERT INTO `cities` VALUES (338, 'Tierralta', 14);
INSERT INTO `cities` VALUES (339, 'Montelíbano', 14);
INSERT INTO `cities` VALUES (340, 'Sahagún', 14);
INSERT INTO `cities` VALUES (341, 'Cereté', 14);
INSERT INTO `cities` VALUES (342, 'Canalete', 14);
INSERT INTO `cities` VALUES (343, 'Los Córdobas', 14);
INSERT INTO `cities` VALUES (344, 'Cogua', 15);
INSERT INTO `cities` VALUES (345, 'Sesquilé', 15);
INSERT INTO `cities` VALUES (346, 'Nemocón', 15);
INSERT INTO `cities` VALUES (347, 'El Rosal', 15);
INSERT INTO `cities` VALUES (348, 'La Vega', 15);
INSERT INTO `cities` VALUES (349, 'Pacho', 15);
INSERT INTO `cities` VALUES (350, 'Soacha', 15);
INSERT INTO `cities` VALUES (351, 'San Antonio del Tequendama', 15);
INSERT INTO `cities` VALUES (352, 'Simijaca', 15);
INSERT INTO `cities` VALUES (353, 'La Mesa', 15);
INSERT INTO `cities` VALUES (354, 'Anolaima', 15);
INSERT INTO `cities` VALUES (355, 'Ricaurte', 15);
INSERT INTO `cities` VALUES (356, 'Cota', 15);
INSERT INTO `cities` VALUES (357, 'Viotá', 15);
INSERT INTO `cities` VALUES (358, 'Tenjo', 15);
INSERT INTO `cities` VALUES (359, 'Cajicá', 15);
INSERT INTO `cities` VALUES (360, 'Susa', 15);
INSERT INTO `cities` VALUES (361, 'Zipaquirá', 15);
INSERT INTO `cities` VALUES (362, 'Fómeque', 15);
INSERT INTO `cities` VALUES (363, 'Villa de San Diego de Ubaté', 15);
INSERT INTO `cities` VALUES (364, 'Tocancipá', 15);
INSERT INTO `cities` VALUES (365, 'Suesca', 15);
INSERT INTO `cities` VALUES (366, 'Tena', 15);
INSERT INTO `cities` VALUES (367, 'Cáqueza', 15);
INSERT INTO `cities` VALUES (368, 'Gachancipá', 15);
INSERT INTO `cities` VALUES (369, 'Subachoque', 15);
INSERT INTO `cities` VALUES (370, 'Sibaté', 15);
INSERT INTO `cities` VALUES (371, 'Guasca', 15);
INSERT INTO `cities` VALUES (372, 'Puerto Salgar', 15);
INSERT INTO `cities` VALUES (373, 'Bojacá', 15);
INSERT INTO `cities` VALUES (374, 'Carmen de Carupa', 15);
INSERT INTO `cities` VALUES (375, 'Anapoima', 15);
INSERT INTO `cities` VALUES (376, 'Guaduas', 15);
INSERT INTO `cities` VALUES (377, 'Une', 15);
INSERT INTO `cities` VALUES (378, 'Villeta', 15);
INSERT INTO `cities` VALUES (379, 'Tocaima', 15);
INSERT INTO `cities` VALUES (380, 'Granada', 15);
INSERT INTO `cities` VALUES (381, 'Arbeláez', 15);
INSERT INTO `cities` VALUES (382, 'El Colegio', 15);
INSERT INTO `cities` VALUES (383, 'Ubalá', 15);
INSERT INTO `cities` VALUES (384, 'Junín', 15);
INSERT INTO `cities` VALUES (385, 'Caparrapí', 15);
INSERT INTO `cities` VALUES (386, 'Tausa', 15);
INSERT INTO `cities` VALUES (387, 'Sopó', 15);
INSERT INTO `cities` VALUES (388, 'Silvania', 15);
INSERT INTO `cities` VALUES (389, 'Lenguazaque', 15);
INSERT INTO `cities` VALUES (390, 'La Calera', 15);
INSERT INTO `cities` VALUES (391, 'Medina', 15);
INSERT INTO `cities` VALUES (392, 'Funza', 15);
INSERT INTO `cities` VALUES (393, 'Facatativá', 15);
INSERT INTO `cities` VALUES (394, 'Madrid', 15);
INSERT INTO `cities` VALUES (395, 'Chía', 15);
INSERT INTO `cities` VALUES (396, 'Mosquera', 15);
INSERT INTO `cities` VALUES (397, 'Cachipay', 15);
INSERT INTO `cities` VALUES (398, 'Sasaima', 15);
INSERT INTO `cities` VALUES (399, 'Girardot', 15);
INSERT INTO `cities` VALUES (400, 'Chocontá', 15);
INSERT INTO `cities` VALUES (401, 'Yacopí', 15);
INSERT INTO `cities` VALUES (402, 'Pasca', 15);
INSERT INTO `cities` VALUES (403, 'Fusagasugá', 15);
INSERT INTO `cities` VALUES (404, 'Villapinzón', 15);
INSERT INTO `cities` VALUES (405, 'Guachetá', 15);
INSERT INTO `cities` VALUES (406, 'Tabio', 15);
INSERT INTO `cities` VALUES (407, 'La Palma', 15);
INSERT INTO `cities` VALUES (408, 'Choachí', 15);
INSERT INTO `cities` VALUES (409, 'Agua de Dios', 15);
INSERT INTO `cities` VALUES (410, 'Gachetá', 15);
INSERT INTO `cities` VALUES (411, 'Inírida', 16);
INSERT INTO `cities` VALUES (412, 'El Retorno', 17);
INSERT INTO `cities` VALUES (413, 'San José del Guaviare', 17);
INSERT INTO `cities` VALUES (414, 'Calamar', 17);
INSERT INTO `cities` VALUES (415, 'Tarqui', 18);
INSERT INTO `cities` VALUES (416, 'Tesalia', 18);
INSERT INTO `cities` VALUES (417, 'Pital', 18);
INSERT INTO `cities` VALUES (418, 'Yaguará', 18);
INSERT INTO `cities` VALUES (419, 'Algeciras', 18);
INSERT INTO `cities` VALUES (420, 'Palermo', 18);
INSERT INTO `cities` VALUES (421, 'Íquira', 18);
INSERT INTO `cities` VALUES (422, 'La Plata', 18);
INSERT INTO `cities` VALUES (423, 'Oporapa', 18);
INSERT INTO `cities` VALUES (424, 'Pitalito', 18);
INSERT INTO `cities` VALUES (425, 'Saladoblanco', 18);
INSERT INTO `cities` VALUES (426, 'La Argentina', 18);
INSERT INTO `cities` VALUES (427, 'Acevedo', 18);
INSERT INTO `cities` VALUES (428, 'Tello', 18);
INSERT INTO `cities` VALUES (429, 'Garzón', 18);
INSERT INTO `cities` VALUES (430, 'Santa María', 18);
INSERT INTO `cities` VALUES (431, 'Palestina', 18);
INSERT INTO `cities` VALUES (432, 'Guadalupe', 18);
INSERT INTO `cities` VALUES (433, 'Campoalegre', 18);
INSERT INTO `cities` VALUES (434, 'San Agustín', 18);
INSERT INTO `cities` VALUES (435, 'Suaza', 18);
INSERT INTO `cities` VALUES (436, 'Teruel', 18);
INSERT INTO `cities` VALUES (437, 'Aipe', 18);
INSERT INTO `cities` VALUES (438, 'Timaná', 18);
INSERT INTO `cities` VALUES (439, 'Isnos', 18);
INSERT INTO `cities` VALUES (440, 'Gigante', 18);
INSERT INTO `cities` VALUES (441, 'Rivera', 18);
INSERT INTO `cities` VALUES (442, 'Neiva', 18);
INSERT INTO `cities` VALUES (443, 'Maicao', 19);
INSERT INTO `cities` VALUES (444, 'Distracción', 19);
INSERT INTO `cities` VALUES (445, 'Urumita', 19);
INSERT INTO `cities` VALUES (446, 'Albania', 19);
INSERT INTO `cities` VALUES (447, 'Manaure', 19);
INSERT INTO `cities` VALUES (448, 'Barrancas', 19);
INSERT INTO `cities` VALUES (449, 'Hatonuevo', 19);
INSERT INTO `cities` VALUES (450, 'Ríohacha', 19);
INSERT INTO `cities` VALUES (451, 'Dibulla', 19);
INSERT INTO `cities` VALUES (452, 'San Juan del Cesar', 19);
INSERT INTO `cities` VALUES (453, 'Villanueva', 19);
INSERT INTO `cities` VALUES (454, 'Fonseca', 19);
INSERT INTO `cities` VALUES (455, 'Uripa', 19);
INSERT INTO `cities` VALUES (456, 'Uribia', 19);
INSERT INTO `cities` VALUES (457, 'Aracataca', 20);
INSERT INTO `cities` VALUES (458, 'Buenavista', 20);
INSERT INTO `cities` VALUES (459, 'San Zenón', 20);
INSERT INTO `cities` VALUES (460, 'Puebloviejo', 20);
INSERT INTO `cities` VALUES (461, 'Santa Bárbara de Pinto', 20);
INSERT INTO `cities` VALUES (462, 'El Banco', 20);
INSERT INTO `cities` VALUES (463, 'Tenerife', 20);
INSERT INTO `cities` VALUES (464, 'Algarrobo', 20);
INSERT INTO `cities` VALUES (465, 'Algarrobo', 20);
INSERT INTO `cities` VALUES (466, 'Plato', 20);
INSERT INTO `cities` VALUES (467, 'El Retén', 20);
INSERT INTO `cities` VALUES (468, 'Sitionuevo', 20);
INSERT INTO `cities` VALUES (469, 'Pivijay', 20);
INSERT INTO `cities` VALUES (470, 'San Antonio', 20);
INSERT INTO `cities` VALUES (471, 'El Difícil', 20);
INSERT INTO `cities` VALUES (472, 'Santa Ana', 20);
INSERT INTO `cities` VALUES (473, 'San Sebastián de Buenavista', 20);
INSERT INTO `cities` VALUES (474, 'Ciénaga', 20);
INSERT INTO `cities` VALUES (475, 'Fundación', 20);
INSERT INTO `cities` VALUES (476, 'Guamal', 20);
INSERT INTO `cities` VALUES (477, 'Santa Marta', 20);
INSERT INTO `cities` VALUES (478, 'Pijiño del Carmen', 20);
INSERT INTO `cities` VALUES (479, 'Tíogollo', 20);
INSERT INTO `cities` VALUES (480, 'Concordia', 20);
INSERT INTO `cities` VALUES (481, 'Chivolo', 20);
INSERT INTO `cities` VALUES (482, 'El Piñón', 20);
INSERT INTO `cities` VALUES (483, 'Nueva Granada', 20);
INSERT INTO `cities` VALUES (484, 'Puerto Concordia', 21);
INSERT INTO `cities` VALUES (485, 'Cumaral', 21);
INSERT INTO `cities` VALUES (486, 'Puerto López', 21);
INSERT INTO `cities` VALUES (487, 'Puerto Gaitán', 21);
INSERT INTO `cities` VALUES (488, 'Guamal', 21);
INSERT INTO `cities` VALUES (489, 'Puerto Lleras', 21);
INSERT INTO `cities` VALUES (490, 'Castilla La Nueva', 21);
INSERT INTO `cities` VALUES (491, 'Mesetas', 21);
INSERT INTO `cities` VALUES (492, 'La Macarena', 21);
INSERT INTO `cities` VALUES (493, 'Restrepo', 21);
INSERT INTO `cities` VALUES (494, 'Villavicencio', 21);
INSERT INTO `cities` VALUES (495, 'San Martín', 21);
INSERT INTO `cities` VALUES (496, 'Acacías', 21);
INSERT INTO `cities` VALUES (497, 'San Juan de Arama', 21);
INSERT INTO `cities` VALUES (498, 'Hato Corozal', 21);
INSERT INTO `cities` VALUES (499, 'Puerto Rico', 21);
INSERT INTO `cities` VALUES (500, 'San Carlos de Guaroa', 21);
INSERT INTO `cities` VALUES (501, 'Vistahermosa', 21);
INSERT INTO `cities` VALUES (502, 'Lejanías', 21);
INSERT INTO `cities` VALUES (503, 'Fuente de Oro', 21);
INSERT INTO `cities` VALUES (504, 'El Tablón', 22);
INSERT INTO `cities` VALUES (505, 'San José', 22);
INSERT INTO `cities` VALUES (506, 'Bocas de Satinga', 22);
INSERT INTO `cities` VALUES (507, 'Ospina', 22);
INSERT INTO `cities` VALUES (508, 'Ipiales', 22);
INSERT INTO `cities` VALUES (509, 'San Pablo', 22);
INSERT INTO `cities` VALUES (510, 'El Tambo', 22);
INSERT INTO `cities` VALUES (511, 'Carlosama', 22);
INSERT INTO `cities` VALUES (512, 'San Bernardo', 22);
INSERT INTO `cities` VALUES (513, 'Iles', 22);
INSERT INTO `cities` VALUES (514, 'Guaitarilla', 22);
INSERT INTO `cities` VALUES (515, 'Chachagüí', 22);
INSERT INTO `cities` VALUES (516, 'Taminango', 22);
INSERT INTO `cities` VALUES (517, 'Sandoná', 22);
INSERT INTO `cities` VALUES (518, 'San Lorenzo', 22);
INSERT INTO `cities` VALUES (519, 'Guachavés', 22);
INSERT INTO `cities` VALUES (520, 'Yacuanquer', 22);
INSERT INTO `cities` VALUES (521, 'Génova', 22);
INSERT INTO `cities` VALUES (522, 'Potosí', 22);
INSERT INTO `cities` VALUES (523, 'Sotomayor', 22);
INSERT INTO `cities` VALUES (524, 'Mosquera', 22);
INSERT INTO `cities` VALUES (525, 'Consacá', 22);
INSERT INTO `cities` VALUES (526, 'Barbacoas', 22);
INSERT INTO `cities` VALUES (527, 'El Peñol', 22);
INSERT INTO `cities` VALUES (528, 'Ricaurte', 22);
INSERT INTO `cities` VALUES (529, 'Córdoba', 22);
INSERT INTO `cities` VALUES (530, 'La Florida', 22);
INSERT INTO `cities` VALUES (531, 'Guachucal', 22);
INSERT INTO `cities` VALUES (532, 'Pupiales', 22);
INSERT INTO `cities` VALUES (533, 'Iscuandé', 22);
INSERT INTO `cities` VALUES (534, 'Buesaco', 22);
INSERT INTO `cities` VALUES (535, 'San José', 22);
INSERT INTO `cities` VALUES (536, 'La Cruz', 22);
INSERT INTO `cities` VALUES (537, 'La Unión', 22);
INSERT INTO `cities` VALUES (538, 'Cumbal', 22);
INSERT INTO `cities` VALUES (539, 'Samaniego', 22);
INSERT INTO `cities` VALUES (540, 'Linares', 22);
INSERT INTO `cities` VALUES (541, 'El Charco', 22);
INSERT INTO `cities` VALUES (542, 'Pasto', 22);
INSERT INTO `cities` VALUES (543, 'Túquerres', 22);
INSERT INTO `cities` VALUES (544, 'Tumaco', 22);
INSERT INTO `cities` VALUES (545, 'Tarrá', 23);
INSERT INTO `cities` VALUES (546, 'Cáchira', 23);
INSERT INTO `cities` VALUES (547, 'El Carmen', 23);
INSERT INTO `cities` VALUES (548, 'La Esperanza', 23);
INSERT INTO `cities` VALUES (549, 'Villa del Rosario', 23);
INSERT INTO `cities` VALUES (550, 'Cúcuta', 23);
INSERT INTO `cities` VALUES (551, 'Teorama', 23);
INSERT INTO `cities` VALUES (552, 'El Tarra', 23);
INSERT INTO `cities` VALUES (553, 'Ábrego', 23);
INSERT INTO `cities` VALUES (554, 'Convención', 23);
INSERT INTO `cities` VALUES (555, 'Chitagá', 23);
INSERT INTO `cities` VALUES (556, 'Chinácota', 23);
INSERT INTO `cities` VALUES (557, 'Puerto Santander', 23);
INSERT INTO `cities` VALUES (558, 'Los Patios', 23);
INSERT INTO `cities` VALUES (559, 'Arboledas', 23);
INSERT INTO `cities` VALUES (560, 'Tibú', 23);
INSERT INTO `cities` VALUES (561, 'San Calixto', 23);
INSERT INTO `cities` VALUES (562, 'Ocaña', 23);
INSERT INTO `cities` VALUES (563, 'Toledo', 23);
INSERT INTO `cities` VALUES (564, 'Hacarí', 23);
INSERT INTO `cities` VALUES (565, 'Sardinata', 23);
INSERT INTO `cities` VALUES (566, 'Pamplona', 23);
INSERT INTO `cities` VALUES (567, 'El Zulia', 23);
INSERT INTO `cities` VALUES (568, 'Villagarzón', 24);
INSERT INTO `cities` VALUES (569, 'Valle del Guamuez', 24);
INSERT INTO `cities` VALUES (570, 'Puerto Guzmán', 24);
INSERT INTO `cities` VALUES (571, 'Sibundoy', 24);
INSERT INTO `cities` VALUES (572, 'Puerto Asís', 24);
INSERT INTO `cities` VALUES (573, 'Mocoa', 24);
INSERT INTO `cities` VALUES (574, 'Puerto Leguízamo', 24);
INSERT INTO `cities` VALUES (575, 'La Dorada', 24);
INSERT INTO `cities` VALUES (576, 'Puerto Caicedo', 24);
INSERT INTO `cities` VALUES (577, 'Puerto Guzmán', 24);
INSERT INTO `cities` VALUES (578, 'Orito', 24);
INSERT INTO `cities` VALUES (579, 'Calarcá', 25);
INSERT INTO `cities` VALUES (580, 'La Tebaida', 25);
INSERT INTO `cities` VALUES (581, 'Quimbaya', 25);
INSERT INTO `cities` VALUES (582, 'Armenia', 25);
INSERT INTO `cities` VALUES (583, 'Filandia', 25);
INSERT INTO `cities` VALUES (584, 'Circasia', 25);
INSERT INTO `cities` VALUES (585, 'Montenegro', 25);
INSERT INTO `cities` VALUES (586, 'Apía', 26);
INSERT INTO `cities` VALUES (587, 'Guática', 26);
INSERT INTO `cities` VALUES (588, 'Mistrató', 26);
INSERT INTO `cities` VALUES (589, 'Pueblo Rico', 26);
INSERT INTO `cities` VALUES (590, 'La Virginia', 26);
INSERT INTO `cities` VALUES (591, 'Belén de Umbría', 26);
INSERT INTO `cities` VALUES (592, 'Dosquebradas', 26);
INSERT INTO `cities` VALUES (593, 'Santuario', 26);
INSERT INTO `cities` VALUES (594, 'Quinchía', 26);
INSERT INTO `cities` VALUES (595, 'Santa Rosa de Cabal', 26);
INSERT INTO `cities` VALUES (596, 'Marsella', 26);
INSERT INTO `cities` VALUES (597, 'Pereira', 26);
INSERT INTO `cities` VALUES (598, 'San Andrés', 27);
INSERT INTO `cities` VALUES (599, 'Charalá', 28);
INSERT INTO `cities` VALUES (600, 'El Carmen de Chucurí', 28);
INSERT INTO `cities` VALUES (601, 'San Vicente de Chucurí', 28);
INSERT INTO `cities` VALUES (602, 'Sucre', 28);
INSERT INTO `cities` VALUES (603, 'Málaga', 28);
INSERT INTO `cities` VALUES (604, 'La Belleza', 28);
INSERT INTO `cities` VALUES (605, 'Cimitarra', 28);
INSERT INTO `cities` VALUES (606, 'Los Santos', 28);
INSERT INTO `cities` VALUES (607, 'Suaita', 28);
INSERT INTO `cities` VALUES (608, 'Bucaramanga', 28);
INSERT INTO `cities` VALUES (609, 'San Gil', 28);
INSERT INTO `cities` VALUES (610, 'Piedecuesta', 28);
INSERT INTO `cities` VALUES (611, 'Sabana de Torres', 28);
INSERT INTO `cities` VALUES (612, 'Floridablanca', 28);
INSERT INTO `cities` VALUES (613, 'Puerto Wilches', 28);
INSERT INTO `cities` VALUES (614, 'Landázuri', 28);
INSERT INTO `cities` VALUES (615, 'Barbosa', 28);
INSERT INTO `cities` VALUES (616, 'Socorro', 28);
INSERT INTO `cities` VALUES (617, 'Zapatoca', 28);
INSERT INTO `cities` VALUES (618, 'Puente Nacional', 28);
INSERT INTO `cities` VALUES (619, 'El Playón', 28);
INSERT INTO `cities` VALUES (620, 'Oiba', 28);
INSERT INTO `cities` VALUES (621, 'Vélez', 28);
INSERT INTO `cities` VALUES (622, 'Barrancabermeja', 28);
INSERT INTO `cities` VALUES (623, 'Mogotes', 28);
INSERT INTO `cities` VALUES (624, 'Curití', 28);
INSERT INTO `cities` VALUES (625, 'Bolívar', 28);
INSERT INTO `cities` VALUES (626, 'Girón', 28);
INSERT INTO `cities` VALUES (627, 'San Juan de Betulia', 29);
INSERT INTO `cities` VALUES (628, 'Sucre', 29);
INSERT INTO `cities` VALUES (629, 'Caimito', 29);
INSERT INTO `cities` VALUES (630, 'Majagual', 29);
INSERT INTO `cities` VALUES (631, 'Corozal', 29);
INSERT INTO `cities` VALUES (632, 'San Onofre', 29);
INSERT INTO `cities` VALUES (633, 'La Unión', 29);
INSERT INTO `cities` VALUES (634, 'Sincelejo', 29);
INSERT INTO `cities` VALUES (635, 'Morroa', 29);
INSERT INTO `cities` VALUES (636, 'Guaranda', 29);
INSERT INTO `cities` VALUES (637, 'San Marcos', 29);
INSERT INTO `cities` VALUES (638, 'El Roble', 29);
INSERT INTO `cities` VALUES (639, 'Palmito', 29);
INSERT INTO `cities` VALUES (640, 'Galeras', 29);
INSERT INTO `cities` VALUES (641, 'Buenavista', 29);
INSERT INTO `cities` VALUES (642, 'Santiago de Tolú', 29);
INSERT INTO `cities` VALUES (643, 'San Pedro', 29);
INSERT INTO `cities` VALUES (644, 'San Benito Abad', 29);
INSERT INTO `cities` VALUES (645, 'Los Palmitos', 29);
INSERT INTO `cities` VALUES (646, 'Sampués', 29);
INSERT INTO `cities` VALUES (647, 'Ovejas', 29);
INSERT INTO `cities` VALUES (648, 'San Luis de Sincé', 29);
INSERT INTO `cities` VALUES (649, 'Tolú Viejo', 29);
INSERT INTO `cities` VALUES (650, 'Coveñas', 29);
INSERT INTO `cities` VALUES (651, 'Falan', 30);
INSERT INTO `cities` VALUES (652, 'Ibagué', 30);
INSERT INTO `cities` VALUES (653, 'Chaparral', 30);
INSERT INTO `cities` VALUES (654, 'Alvarado', 30);
INSERT INTO `cities` VALUES (655, 'Palocabildo', 30);
INSERT INTO `cities` VALUES (656, 'Cunday', 30);
INSERT INTO `cities` VALUES (657, 'Carmen de Apicalá', 30);
INSERT INTO `cities` VALUES (658, 'Ortega', 30);
INSERT INTO `cities` VALUES (659, 'Lérida', 30);
INSERT INTO `cities` VALUES (660, 'Cajamarca', 30);
INSERT INTO `cities` VALUES (661, 'Melgar', 30);
INSERT INTO `cities` VALUES (662, 'San Sebastián de Mariquita', 30);
INSERT INTO `cities` VALUES (663, 'Líbano', 30);
INSERT INTO `cities` VALUES (664, 'Anzoátegui', 30);
INSERT INTO `cities` VALUES (665, 'Venadillo', 30);
INSERT INTO `cities` VALUES (666, 'Rovira', 30);
INSERT INTO `cities` VALUES (667, 'San Antonio', 30);
INSERT INTO `cities` VALUES (668, 'Saldaña', 30);
INSERT INTO `cities` VALUES (669, 'Guamo', 30);
INSERT INTO `cities` VALUES (670, 'Planadas', 30);
INSERT INTO `cities` VALUES (671, 'Fresno', 30);
INSERT INTO `cities` VALUES (672, 'Purificación', 30);
INSERT INTO `cities` VALUES (673, 'Flandes', 30);
INSERT INTO `cities` VALUES (674, 'Coello', 30);
INSERT INTO `cities` VALUES (675, 'Guayabal', 30);
INSERT INTO `cities` VALUES (676, 'Rioblanco', 30);
INSERT INTO `cities` VALUES (677, 'Natagaima', 30);
INSERT INTO `cities` VALUES (678, 'Coyaima', 30);
INSERT INTO `cities` VALUES (679, 'Icononzo', 30);
INSERT INTO `cities` VALUES (680, 'Espinal', 30);
INSERT INTO `cities` VALUES (681, 'Villahermosa', 30);
INSERT INTO `cities` VALUES (682, 'Ataco', 30);
INSERT INTO `cities` VALUES (683, 'Honda', 30);
INSERT INTO `cities` VALUES (684, 'Jamundí', 31);
INSERT INTO `cities` VALUES (685, 'Guacarí', 31);
INSERT INTO `cities` VALUES (686, 'El Dovio', 31);
INSERT INTO `cities` VALUES (687, 'San Pedro', 31);
INSERT INTO `cities` VALUES (688, 'Buenaventura', 31);
INSERT INTO `cities` VALUES (689, 'Andalucía', 31);
INSERT INTO `cities` VALUES (690, 'Trujillo', 31);
INSERT INTO `cities` VALUES (691, 'Roldanillo', 31);
INSERT INTO `cities` VALUES (692, 'Ansermanuevo', 31);
INSERT INTO `cities` VALUES (693, 'Bugalagrande', 31);
INSERT INTO `cities` VALUES (694, 'Cali', 31);
INSERT INTO `cities` VALUES (695, 'Caicedonia', 31);
INSERT INTO `cities` VALUES (696, 'Ginebra', 31);
INSERT INTO `cities` VALUES (697, 'Bolívar', 31);
INSERT INTO `cities` VALUES (698, 'Guadalajara de Buga', 31);
INSERT INTO `cities` VALUES (699, 'Candelaria', 31);
INSERT INTO `cities` VALUES (700, 'Cartago', 31);
INSERT INTO `cities` VALUES (701, 'El Cairo', 31);
INSERT INTO `cities` VALUES (702, 'Yumbo', 31);
INSERT INTO `cities` VALUES (703, 'Vijes', 31);
INSERT INTO `cities` VALUES (704, 'El Águila', 31);
INSERT INTO `cities` VALUES (705, 'Florida', 31);
INSERT INTO `cities` VALUES (706, 'Pradera', 31);
INSERT INTO `cities` VALUES (707, 'El Cerrito', 31);
INSERT INTO `cities` VALUES (708, 'Alcalá', 31);
INSERT INTO `cities` VALUES (709, 'La Victoria', 31);
INSERT INTO `cities` VALUES (710, 'Zarzal', 31);
INSERT INTO `cities` VALUES (711, 'Palmira', 31);
INSERT INTO `cities` VALUES (712, 'Tuluá', 31);
INSERT INTO `cities` VALUES (713, 'Sevilla', 31);
INSERT INTO `cities` VALUES (714, 'Riofrío', 31);
INSERT INTO `cities` VALUES (715, 'La Unión', 31);
INSERT INTO `cities` VALUES (716, 'Obando', 31);
INSERT INTO `cities` VALUES (717, 'Darién', 31);
INSERT INTO `cities` VALUES (718, 'Restrepo', 31);
INSERT INTO `cities` VALUES (719, 'Yotoco', 31);
INSERT INTO `cities` VALUES (720, 'Toro', 31);
INSERT INTO `cities` VALUES (721, 'Dagua', 31);
INSERT INTO `cities` VALUES (722, 'Mitú', 32);
INSERT INTO `cities` VALUES (723, 'Cumaribo', 33);
INSERT INTO `cities` VALUES (724, 'La Primavera', 33);
INSERT INTO `cities` VALUES (725, 'Puerto Carreño', 33);

-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` int NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `habeas` tinyint(1) NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `clients_ci_unique`(`ci` ASC) USING BTREE,
  UNIQUE INDEX `clients_email_unique`(`email` ASC) USING BTREE,
  INDEX `clients_department_id_foreign`(`department_id` ASC) USING BTREE,
  INDEX `clients_city_id_foreign`(`city_id` ASC) USING BTREE,
  CONSTRAINT `clients_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `clients_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clients
-- ----------------------------

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, 'Amazonas');
INSERT INTO `departments` VALUES (2, 'Antioquia');
INSERT INTO `departments` VALUES (3, 'Arauca');
INSERT INTO `departments` VALUES (4, 'Atlántico');
INSERT INTO `departments` VALUES (5, 'Bogotá');
INSERT INTO `departments` VALUES (6, 'Bolívar');
INSERT INTO `departments` VALUES (7, 'Boyacá');
INSERT INTO `departments` VALUES (8, 'Caldas');
INSERT INTO `departments` VALUES (9, 'Caquetá');
INSERT INTO `departments` VALUES (10, 'Casanare');
INSERT INTO `departments` VALUES (11, 'Cauca');
INSERT INTO `departments` VALUES (12, 'Cesar');
INSERT INTO `departments` VALUES (13, 'Chocó');
INSERT INTO `departments` VALUES (14, 'Córdoba');
INSERT INTO `departments` VALUES (15, 'Cundinamarca');
INSERT INTO `departments` VALUES (16, 'Guainía');
INSERT INTO `departments` VALUES (17, 'Guaviare');
INSERT INTO `departments` VALUES (18, 'Huila');
INSERT INTO `departments` VALUES (19, 'La Guajira');
INSERT INTO `departments` VALUES (20, 'Magdalena');
INSERT INTO `departments` VALUES (21, 'Meta');
INSERT INTO `departments` VALUES (22, 'Nariño');
INSERT INTO `departments` VALUES (23, 'Norte de Santander');
INSERT INTO `departments` VALUES (24, 'Putumayo');
INSERT INTO `departments` VALUES (25, 'Quindío');
INSERT INTO `departments` VALUES (26, 'Risaralda');
INSERT INTO `departments` VALUES (27, 'San Andrés y Providencia');
INSERT INTO `departments` VALUES (28, 'Santander');
INSERT INTO `departments` VALUES (29, 'Sucre');
INSERT INTO `departments` VALUES (30, 'Tolima');
INSERT INTO `departments` VALUES (31, 'Valle del Cauca');
INSERT INTO `departments` VALUES (32, 'Vaupés');
INSERT INTO `departments` VALUES (33, 'Vichada');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 239 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (232, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (233, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (234, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (235, '2024_04_22_225148_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (236, '2024_04_23_063214_create_departments_table', 1);
INSERT INTO `migrations` VALUES (237, '2024_04_23_063215_create_cities_table', 1);
INSERT INTO `migrations` VALUES (238, '2024_04_23_063222_create_clients_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
