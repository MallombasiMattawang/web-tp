/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL JIE
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : tanniewa_web

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 17/10/2022 02:07:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 10, 'Admin', 'fa-tasks', '', NULL, NULL, '2022-10-14 21:23:06');
INSERT INTO `admin_menu` VALUES (3, 2, 11, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2022-10-14 21:23:06');
INSERT INTO `admin_menu` VALUES (4, 2, 12, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2022-10-14 21:23:06');
INSERT INTO `admin_menu` VALUES (5, 2, 13, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2022-10-14 21:23:06');
INSERT INTO `admin_menu` VALUES (6, 2, 14, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2022-10-14 21:23:06');
INSERT INTO `admin_menu` VALUES (7, 2, 15, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2022-10-14 21:23:06');
INSERT INTO `admin_menu` VALUES (8, 0, 7, 'Article', 'fa-newspaper-o', 'web-articles', NULL, '2022-10-13 17:47:51', '2022-10-14 20:56:25');
INSERT INTO `admin_menu` VALUES (9, 0, 8, 'Article Categories', 'fa-puzzle-piece', 'web-article-categories', NULL, '2022-10-14 09:09:58', '2022-10-14 20:56:25');
INSERT INTO `admin_menu` VALUES (10, 0, 5, 'Porfolio', 'fa-calendar-plus-o', 'web-portfolios', NULL, '2022-10-14 11:29:17', '2022-10-14 20:56:25');
INSERT INTO `admin_menu` VALUES (11, 0, 6, 'Portfolio Tags', 'fa-hashtag', 'web-tags', NULL, '2022-10-14 11:29:47', '2022-10-14 20:56:25');
INSERT INTO `admin_menu` VALUES (12, 0, 4, 'Services', 'fa-book', 'web-services', NULL, '2022-10-14 11:55:36', '2022-10-14 20:56:25');
INSERT INTO `admin_menu` VALUES (13, 0, 3, 'Web Profile', 'fa-cog', 'web-profiles', NULL, '2022-10-14 12:56:59', '2022-10-14 20:56:25');
INSERT INTO `admin_menu` VALUES (14, 0, 2, 'Clients', 'fa-users', 'web-clients', NULL, '2022-10-14 20:55:42', '2022-10-14 20:56:25');
INSERT INTO `admin_menu` VALUES (15, 0, 9, 'FAQ', 'fa-question-circle', 'web-faqs', NULL, '2022-10-14 21:22:50', '2022-10-14 21:23:06');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 651 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-13 16:00:46', '2022-10-13 16:00:46');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin-panel/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:01:05', '2022-10-13 16:01:05');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin-panel/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:01:13', '2022-10-13 16:01:13');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin-panel/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:01:23', '2022-10-13 16:01:23');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin-panel/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:01:25', '2022-10-13 16:01:25');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin-panel/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:01:28', '2022-10-13 16:01:28');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:01:32', '2022-10-13 16:01:32');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:01:33', '2022-10-13 16:01:33');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin-panel/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:02:03', '2022-10-13 16:02:03');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin-panel/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:02:04', '2022-10-13 16:02:04');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin-panel/auth/users/create', 'GET', '127.0.0.1', '[]', '2022-10-13 16:04:30', '2022-10-13 16:04:30');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin-panel/auth/users/create', 'GET', '127.0.0.1', '[]', '2022-10-13 16:06:00', '2022-10-13 16:06:00');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin-panel/auth/users/create', 'GET', '127.0.0.1', '[]', '2022-10-13 16:06:31', '2022-10-13 16:06:31');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin-panel/auth/users', 'POST', '127.0.0.1', '{\"username\":\"awan\",\"name\":\"M. Mattawang\",\"password\":\"2wsx.lo9\",\"password_confirmation\":\"2wsx.lo9\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"Unqp0YwadlZKF3Wj7ehztHr85lfaj3supcy5TXWN\"}', '2022-10-13 16:07:18', '2022-10-13 16:07:18');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin-panel/auth/users', 'GET', '127.0.0.1', '[]', '2022-10-13 16:07:18', '2022-10-13 16:07:18');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin-panel/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:07:27', '2022-10-13 16:07:27');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin-panel/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 16:07:30', '2022-10-13 16:07:30');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin-panel/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:07:34', '2022-10-13 16:07:34');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin-panel/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:07:36', '2022-10-13 16:07:36');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin-panel/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:07:39', '2022-10-13 16:07:39');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin-panel/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 16:08:20', '2022-10-13 16:08:20');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin-panel/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 16:09:18', '2022-10-13 16:09:18');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin-panel/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:36', '2022-10-13 16:09:36');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin-panel/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:38', '2022-10-13 16:09:38');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin-panel/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:39', '2022-10-13 16:09:39');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:41', '2022-10-13 16:09:41');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin-panel/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:44', '2022-10-13 16:09:44');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin-panel/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:46', '2022-10-13 16:09:46');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin-panel/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:47', '2022-10-13 16:09:47');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:49', '2022-10-13 16:09:49');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin-panel/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:51', '2022-10-13 16:09:51');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:09:59', '2022-10-13 16:09:59');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:10:24', '2022-10-13 16:10:24');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:10:27', '2022-10-13 16:10:27');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin-panel/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:12:16', '2022-10-13 16:12:16');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin-panel/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:12:17', '2022-10-13 16:12:17');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin-panel/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:12:18', '2022-10-13 16:12:18');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:12:19', '2022-10-13 16:12:19');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin-panel/auth/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:12:22', '2022-10-13 16:12:22');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:12:24', '2022-10-13 16:12:24');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-13 16:15:20', '2022-10-13 16:15:20');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-13 16:15:34', '2022-10-13 16:15:34');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-13 16:16:20', '2022-10-13 16:16:20');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-13 16:16:53', '2022-10-13 16:16:53');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-13 16:17:25', '2022-10-13 16:17:25');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin-panel/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:17:31', '2022-10-13 16:17:31');
INSERT INTO `admin_operation_log` VALUES (47, 2, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-13 16:17:56', '2022-10-13 16:17:56');
INSERT INTO `admin_operation_log` VALUES (48, 2, 'admin-panel/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:18:10', '2022-10-13 16:18:10');
INSERT INTO `admin_operation_log` VALUES (49, 2, 'admin-panel/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:18:12', '2022-10-13 16:18:12');
INSERT INTO `admin_operation_log` VALUES (50, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:18:14', '2022-10-13 16:18:14');
INSERT INTO `admin_operation_log` VALUES (51, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 16:18:17', '2022-10-13 16:18:17');
INSERT INTO `admin_operation_log` VALUES (52, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 17:47:04', '2022-10-13 17:47:04');
INSERT INTO `admin_operation_log` VALUES (53, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Article\",\"icon\":\"fa-newspaper-o\",\"uri\":\"web-articles\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 17:47:51', '2022-10-13 17:47:51');
INSERT INTO `admin_operation_log` VALUES (54, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-13 17:47:52', '2022-10-13 17:47:52');
INSERT INTO `admin_operation_log` VALUES (55, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-10-13 17:48:00', '2022-10-13 17:48:00');
INSERT INTO `admin_operation_log` VALUES (56, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 17:48:01', '2022-10-13 17:48:01');
INSERT INTO `admin_operation_log` VALUES (57, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 17:48:02', '2022-10-13 17:48:02');
INSERT INTO `admin_operation_log` VALUES (58, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-13 17:48:05', '2022-10-13 17:48:05');
INSERT INTO `admin_operation_log` VALUES (59, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 17:48:13', '2022-10-13 17:48:13');
INSERT INTO `admin_operation_log` VALUES (60, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 17:48:19', '2022-10-13 17:48:19');
INSERT INTO `admin_operation_log` VALUES (61, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 17:48:36', '2022-10-13 17:48:36');
INSERT INTO `admin_operation_log` VALUES (62, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 17:49:12', '2022-10-13 17:49:12');
INSERT INTO `admin_operation_log` VALUES (63, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 17:49:33', '2022-10-13 17:49:33');
INSERT INTO `admin_operation_log` VALUES (64, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 17:49:36', '2022-10-13 17:49:36');
INSERT INTO `admin_operation_log` VALUES (65, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 17:55:22', '2022-10-13 17:55:22');
INSERT INTO `admin_operation_log` VALUES (66, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:07:10', '2022-10-13 18:07:10');
INSERT INTO `admin_operation_log` VALUES (67, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:07:35', '2022-10-13 18:07:35');
INSERT INTO `admin_operation_log` VALUES (68, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"tes\",\"subtitle\":\"tes\",\"article_category\":\"afafafa\",\"pic_all\":\"tes\",\"body\":\"res\",\"publish_date\":\"2022-10-13 18:07:35\",\"active\":\"1\",\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:08:00', '2022-10-13 18:08:00');
INSERT INTO `admin_operation_log` VALUES (69, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:08:03', '2022-10-13 18:08:03');
INSERT INTO `admin_operation_log` VALUES (70, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:19:05', '2022-10-13 18:19:05');
INSERT INTO `admin_operation_log` VALUES (71, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"tes\",\"subtitle\":\"tes\",\"article_category\":\"afaf\",\"pic_all\":\"aaf\",\"body\":\"afafa\",\"publish_date\":\"2022-10-13 18:19:05\",\"active\":\"1\",\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:19:19', '2022-10-13 18:19:19');
INSERT INTO `admin_operation_log` VALUES (72, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:19:20', '2022-10-13 18:19:20');
INSERT INTO `admin_operation_log` VALUES (73, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:23:39', '2022-10-13 18:23:39');
INSERT INTO `admin_operation_log` VALUES (74, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:23:46', '2022-10-13 18:23:46');
INSERT INTO `admin_operation_log` VALUES (75, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"tes\",\"subtitle\":\"tes\",\"article_category\":\"adaaf\",\"pic_all\":\"afa\",\"body\":\"afaf\",\"publish_date\":\"2022-10-13 18:23:46\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:24:02', '2022-10-13 18:24:02');
INSERT INTO `admin_operation_log` VALUES (76, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:24:03', '2022-10-13 18:24:03');
INSERT INTO `admin_operation_log` VALUES (77, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"tes\",\"subtitle\":\"tes\",\"article_category\":\"adaaf\",\"pic_all\":\"afa\",\"body\":\"afaf\",\"publish_date\":\"2022-10-13 18:23:46\",\"active\":\"2\",\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:25:01', '2022-10-13 18:25:01');
INSERT INTO `admin_operation_log` VALUES (78, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:25:02', '2022-10-13 18:25:02');
INSERT INTO `admin_operation_log` VALUES (79, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:29:02', '2022-10-13 18:29:02');
INSERT INTO `admin_operation_log` VALUES (80, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"tes\",\"subtitle\":\"tes\",\"article_category\":\"afafqa\",\"pic_all\":\"afaf\",\"body\":\"afaf\",\"publish_date\":\"2022-10-13 18:29:02\",\"active\":\"2\",\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:29:19', '2022-10-13 18:29:19');
INSERT INTO `admin_operation_log` VALUES (81, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 18:29:19', '2022-10-13 18:29:19');
INSERT INTO `admin_operation_log` VALUES (82, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 18:32:54', '2022-10-13 18:32:54');
INSERT INTO `admin_operation_log` VALUES (83, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 18:39:54', '2022-10-13 18:39:54');
INSERT INTO `admin_operation_log` VALUES (84, 2, 'admin-panel/web-articles/1', 'PUT', '127.0.0.1', '{\"title\":\"tes\",\"subtitle\":\"tes\",\"article_category\":\"afafqa\",\"pic_all\":\"afaf\",\"body\":\"afaf\",\"publish_date\":\"2022-10-13 18:29:02\",\"active\":\"2\",\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\",\"_method\":\"PUT\"}', '2022-10-13 18:40:04', '2022-10-13 18:40:04');
INSERT INTO `admin_operation_log` VALUES (85, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 18:40:05', '2022-10-13 18:40:05');
INSERT INTO `admin_operation_log` VALUES (86, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 18:40:12', '2022-10-13 18:40:12');
INSERT INTO `admin_operation_log` VALUES (87, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 18:42:18', '2022-10-13 18:42:18');
INSERT INTO `admin_operation_log` VALUES (88, 2, 'admin-panel/web-articles/1', 'PUT', '127.0.0.1', '{\"title\":\"tes\",\"subtitle\":\"tes\",\"article_category\":\"afafqa\",\"pic_all\":\"afaf\",\"body\":\"afaf\",\"publish_date\":\"2022-10-13 18:29:02\",\"active\":\"2\",\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\",\"_method\":\"PUT\"}', '2022-10-13 18:42:28', '2022-10-13 18:42:28');
INSERT INTO `admin_operation_log` VALUES (89, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 18:42:29', '2022-10-13 18:42:29');
INSERT INTO `admin_operation_log` VALUES (90, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 18:44:56', '2022-10-13 18:44:56');
INSERT INTO `admin_operation_log` VALUES (91, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 18:46:29', '2022-10-13 18:46:29');
INSERT INTO `admin_operation_log` VALUES (92, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 18:46:34', '2022-10-13 18:46:34');
INSERT INTO `admin_operation_log` VALUES (93, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 18:47:07', '2022-10-13 18:47:07');
INSERT INTO `admin_operation_log` VALUES (94, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 18:47:21', '2022-10-13 18:47:21');
INSERT INTO `admin_operation_log` VALUES (95, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 18:48:33', '2022-10-13 18:48:33');
INSERT INTO `admin_operation_log` VALUES (96, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 18:49:06', '2022-10-13 18:49:06');
INSERT INTO `admin_operation_log` VALUES (97, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 18:49:09', '2022-10-13 18:49:09');
INSERT INTO `admin_operation_log` VALUES (98, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 18:49:11', '2022-10-13 18:49:11');
INSERT INTO `admin_operation_log` VALUES (99, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:49:33', '2022-10-13 18:49:33');
INSERT INTO `admin_operation_log` VALUES (100, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"SAYA ADALAH BUDI\",\"subtitle\":\"TESSSS\",\"article_category\":\"AACACACACA\",\"body\":\"DADAAD\",\"publish_date\":\"2022-10-13 18:49:33\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:50:31', '2022-10-13 18:50:31');
INSERT INTO `admin_operation_log` VALUES (101, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:50:32', '2022-10-13 18:50:32');
INSERT INTO `admin_operation_log` VALUES (102, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:52:46', '2022-10-13 18:52:46');
INSERT INTO `admin_operation_log` VALUES (103, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"adada\",\"subtitle\":\"adadaa\",\"article_category\":\"afafafa\",\"body\":\"daDADA\",\"publish_date\":\"2022-10-13 18:52:46\",\"active\":\"3\",\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:53:17', '2022-10-13 18:53:17');
INSERT INTO `admin_operation_log` VALUES (104, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:53:18', '2022-10-13 18:53:18');
INSERT INTO `admin_operation_log` VALUES (105, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:53:46', '2022-10-13 18:53:46');
INSERT INTO `admin_operation_log` VALUES (106, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"AFAFAF\",\"subtitle\":\"DFDF\",\"article_category\":\"AFAFA\",\"body\":\"DDADAD\",\"publish_date\":\"2022-10-13 18:53:46\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:54:05', '2022-10-13 18:54:05');
INSERT INTO `admin_operation_log` VALUES (107, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:54:07', '2022-10-13 18:54:07');
INSERT INTO `admin_operation_log` VALUES (108, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:54:53', '2022-10-13 18:54:53');
INSERT INTO `admin_operation_log` VALUES (109, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"SAYA ADALAH BUDI\",\"subtitle\":\"AFDAFAFA\",\"article_category\":\"AFAFAF\",\"body\":\"ADADA\",\"publish_date\":\"2022-10-13 18:54:53\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:55:16', '2022-10-13 18:55:16');
INSERT INTO `admin_operation_log` VALUES (110, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:55:16', '2022-10-13 18:55:16');
INSERT INTO `admin_operation_log` VALUES (111, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:57:10', '2022-10-13 18:57:10');
INSERT INTO `admin_operation_log` VALUES (112, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:57:44', '2022-10-13 18:57:44');
INSERT INTO `admin_operation_log` VALUES (113, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"SAYA ADALAH BUDI\",\"subtitle\":\"DADADA\",\"article_category\":\"AFAFA\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"ADADA\",\"publish_date\":\"2022-10-13 18:57:44\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:58:08', '2022-10-13 18:58:08');
INSERT INTO `admin_operation_log` VALUES (114, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:58:09', '2022-10-13 18:58:09');
INSERT INTO `admin_operation_log` VALUES (115, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:59:02', '2022-10-13 18:59:02');
INSERT INTO `admin_operation_log` VALUES (116, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"aassas\",\"subtitle\":\"asas\",\"article_category\":\"adada\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"asas\",\"publish_date\":\"2022-10-13 18:59:02\",\"active\":\"2\",\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 18:59:22', '2022-10-13 18:59:22');
INSERT INTO `admin_operation_log` VALUES (117, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 18:59:22', '2022-10-13 18:59:22');
INSERT INTO `admin_operation_log` VALUES (118, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:00:04', '2022-10-13 19:00:04');
INSERT INTO `admin_operation_log` VALUES (119, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"saya adalah budi\",\"subtitle\":\"addad\",\"article_category\":\"adad\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"dada\",\"publish_date\":\"2022-10-13 19:00:04\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:00:23', '2022-10-13 19:00:23');
INSERT INTO `admin_operation_log` VALUES (120, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:00:25', '2022-10-13 19:00:25');
INSERT INTO `admin_operation_log` VALUES (121, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:00:37', '2022-10-13 19:00:37');
INSERT INTO `admin_operation_log` VALUES (122, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:02:32', '2022-10-13 19:02:32');
INSERT INTO `admin_operation_log` VALUES (123, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:02:51', '2022-10-13 19:02:51');
INSERT INTO `admin_operation_log` VALUES (124, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"adadad dafa afaffa\",\"subtitle\":\"aadad\",\"article_category\":\"adadad\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"dada\",\"publish_date\":\"2022-10-13 19:02:51\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:03:08', '2022-10-13 19:03:08');
INSERT INTO `admin_operation_log` VALUES (125, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:03:09', '2022-10-13 19:03:09');
INSERT INTO `admin_operation_log` VALUES (126, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"adadad dafa afaffa\",\"subtitle\":\"aadad\",\"article_category\":\"adadad\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"dada\",\"publish_date\":\"2022-10-13 19:02:51\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:03:41', '2022-10-13 19:03:41');
INSERT INTO `admin_operation_log` VALUES (127, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:03:42', '2022-10-13 19:03:42');
INSERT INTO `admin_operation_log` VALUES (128, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:06:26', '2022-10-13 19:06:26');
INSERT INTO `admin_operation_log` VALUES (129, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"sgsg\",\"subtitle\":\"sgsg\",\"article_category\":\"sgsgs\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"adad\",\"publish_date\":\"2022-10-13 19:06:26\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:06:46', '2022-10-13 19:06:46');
INSERT INTO `admin_operation_log` VALUES (130, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:06:47', '2022-10-13 19:06:47');
INSERT INTO `admin_operation_log` VALUES (131, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:11:26', '2022-10-13 19:11:26');
INSERT INTO `admin_operation_log` VALUES (132, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"sgsg\",\"subtitle\":\"sgsg\",\"article_category\":\"sgsgs\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"ssgsg\",\"publish_date\":\"2022-10-13 19:11:26\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:11:40', '2022-10-13 19:11:40');
INSERT INTO `admin_operation_log` VALUES (133, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:11:41', '2022-10-13 19:11:41');
INSERT INTO `admin_operation_log` VALUES (134, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:14:32', '2022-10-13 19:14:32');
INSERT INTO `admin_operation_log` VALUES (135, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"afafa\",\"subtitle\":\"afafaf\",\"article_category\":\"afafaf\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"afafaf\",\"publish_date\":\"2022-10-13 19:14:33\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:14:52', '2022-10-13 19:14:52');
INSERT INTO `admin_operation_log` VALUES (136, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:14:53', '2022-10-13 19:14:53');
INSERT INTO `admin_operation_log` VALUES (137, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:15:25', '2022-10-13 19:15:25');
INSERT INTO `admin_operation_log` VALUES (138, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"fff\",\"subtitle\":\"fffa\",\"article_category\":\"afaf\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"afaf\",\"publish_date\":\"2022-10-13 19:15:25\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:15:44', '2022-10-13 19:15:44');
INSERT INTO `admin_operation_log` VALUES (139, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:15:44', '2022-10-13 19:15:44');
INSERT INTO `admin_operation_log` VALUES (140, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:18:58', '2022-10-13 19:18:58');
INSERT INTO `admin_operation_log` VALUES (141, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"afaf\",\"subtitle\":\"afafa\",\"article_category\":\"afaf\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"aa\",\"publish_date\":\"2022-10-13 19:18:58\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:19:15', '2022-10-13 19:19:15');
INSERT INTO `admin_operation_log` VALUES (142, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 19:19:16', '2022-10-13 19:19:16');
INSERT INTO `admin_operation_log` VALUES (143, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:19:24', '2022-10-13 19:19:24');
INSERT INTO `admin_operation_log` VALUES (144, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:19:35', '2022-10-13 19:19:35');
INSERT INTO `admin_operation_log` VALUES (145, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:19:36', '2022-10-13 19:19:36');
INSERT INTO `admin_operation_log` VALUES (146, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"saya adalah budi\",\"subtitle\":\"dadadaa\",\"article_category\":null,\"_file_sort_\":{\"pic_all\":null},\"body\":\"adad\",\"publish_date\":\"2022-10-13 19:19:37\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-articles\"}', '2022-10-13 19:19:57', '2022-10-13 19:19:57');
INSERT INTO `admin_operation_log` VALUES (147, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 19:19:58', '2022-10-13 19:19:58');
INSERT INTO `admin_operation_log` VALUES (148, 2, 'admin-panel/web-articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:20:05', '2022-10-13 19:20:05');
INSERT INTO `admin_operation_log` VALUES (149, 2, 'admin-panel/web-articles/2', 'PUT', '127.0.0.1', '{\"title\":\"saya adalah budi\",\"subtitle\":\"dadadaa\",\"article_category\":null,\"_file_sort_\":{\"pic_all\":\"2,0,1\"},\"body\":\"adad\",\"publish_date\":\"2022-10-13 19:19:37\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-articles\"}', '2022-10-13 19:20:49', '2022-10-13 19:20:49');
INSERT INTO `admin_operation_log` VALUES (150, 2, 'admin-panel/web-articles/2/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 19:20:50', '2022-10-13 19:20:50');
INSERT INTO `admin_operation_log` VALUES (151, 2, 'admin-panel/web-articles/2/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 19:22:03', '2022-10-13 19:22:03');
INSERT INTO `admin_operation_log` VALUES (152, 2, 'admin-panel/web-articles/2', 'PUT', '127.0.0.1', '{\"key\":\"2\",\"pic_all\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\",\"_method\":\"PUT\"}', '2022-10-13 19:22:13', '2022-10-13 19:22:13');
INSERT INTO `admin_operation_log` VALUES (153, 2, 'admin-panel/web-articles/2', 'PUT', '127.0.0.1', '{\"title\":\"saya adalah budi\",\"subtitle\":\"dadadaa\",\"article_category\":\"adaafafaf\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"adad\",\"publish_date\":\"2022-10-13 19:19:37\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\",\"_method\":\"PUT\"}', '2022-10-13 19:22:16', '2022-10-13 19:22:16');
INSERT INTO `admin_operation_log` VALUES (154, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 19:22:16', '2022-10-13 19:22:16');
INSERT INTO `admin_operation_log` VALUES (155, 2, 'admin-panel/web-articles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:22:22', '2022-10-13 19:22:22');
INSERT INTO `admin_operation_log` VALUES (156, 2, 'admin-panel/web-articles/2', 'PUT', '127.0.0.1', '{\"title\":\"saya adalah budi\",\"subtitle\":\"dadadaa\",\"article_category\":\"adaafafaf\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"adad\",\"publish_date\":\"2022-10-13 19:19:37\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-articles\"}', '2022-10-13 19:22:34', '2022-10-13 19:22:34');
INSERT INTO `admin_operation_log` VALUES (157, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 19:22:35', '2022-10-13 19:22:35');
INSERT INTO `admin_operation_log` VALUES (158, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:31:50', '2022-10-13 19:31:50');
INSERT INTO `admin_operation_log` VALUES (159, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:31:52', '2022-10-13 19:31:52');
INSERT INTO `admin_operation_log` VALUES (160, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"afaf\",\"subtitle\":\"afaf\",\"article_category\":\"afafaf\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"afaffa\",\"publish_date\":\"2022-10-13 19:31:52\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:32:12', '2022-10-13 19:32:12');
INSERT INTO `admin_operation_log` VALUES (161, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:32:12', '2022-10-13 19:32:12');
INSERT INTO `admin_operation_log` VALUES (162, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:33:25', '2022-10-13 19:33:25');
INSERT INTO `admin_operation_log` VALUES (163, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"sgsg\",\"subtitle\":\"sgsg\",\"article_category\":\"sgsgs\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"afafaf\",\"publish_date\":\"2022-10-13 19:33:25\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:33:51', '2022-10-13 19:33:51');
INSERT INTO `admin_operation_log` VALUES (164, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:33:51', '2022-10-13 19:33:51');
INSERT INTO `admin_operation_log` VALUES (165, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-13 19:34:57', '2022-10-13 19:34:57');
INSERT INTO `admin_operation_log` VALUES (166, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"afafaf afaf\",\"subtitle\":\"afafa\",\"article_category\":\"afafa\",\"_file_sort_\":{\"pic_all\":null},\"body\":\"afafaf\",\"publish_date\":\"2022-10-13 19:34:57\",\"active\":null,\"_token\":\"ngCR1m2lAoSV9tePLqDeBlGAqHc9nFidEFlcQvZf\"}', '2022-10-13 19:35:19', '2022-10-13 19:35:19');
INSERT INTO `admin_operation_log` VALUES (167, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 19:35:19', '2022-10-13 19:35:19');
INSERT INTO `admin_operation_log` VALUES (168, 2, 'admin-panel/web-articles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:35:35', '2022-10-13 19:35:35');
INSERT INTO `admin_operation_log` VALUES (169, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 19:35:36', '2022-10-13 19:35:36');
INSERT INTO `admin_operation_log` VALUES (170, 2, 'admin-panel/web-articles/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:35:41', '2022-10-13 19:35:41');
INSERT INTO `admin_operation_log` VALUES (171, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-13 19:35:42', '2022-10-13 19:35:42');
INSERT INTO `admin_operation_log` VALUES (172, 2, 'admin-panel/web-articles/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:35:47', '2022-10-13 19:35:47');
INSERT INTO `admin_operation_log` VALUES (173, 2, 'admin-panel/web-articles/3/edit', 'GET', '127.0.0.1', '[]', '2022-10-13 19:37:44', '2022-10-13 19:37:44');
INSERT INTO `admin_operation_log` VALUES (174, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-13 19:44:35', '2022-10-13 19:44:35');
INSERT INTO `admin_operation_log` VALUES (175, 2, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-14 08:10:03', '2022-10-14 08:10:03');
INSERT INTO `admin_operation_log` VALUES (176, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:10:15', '2022-10-14 08:10:15');
INSERT INTO `admin_operation_log` VALUES (177, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:10:20', '2022-10-14 08:10:20');
INSERT INTO `admin_operation_log` VALUES (178, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-14 08:21:19', '2022-10-14 08:21:19');
INSERT INTO `admin_operation_log` VALUES (179, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-14 08:22:01', '2022-10-14 08:22:01');
INSERT INTO `admin_operation_log` VALUES (180, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:22:10', '2022-10-14 08:22:10');
INSERT INTO `admin_operation_log` VALUES (181, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-14 08:28:36', '2022-10-14 08:28:36');
INSERT INTO `admin_operation_log` VALUES (182, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"afaf gagag\",\"subtitle\":\"gagagag\",\"article_category\":null,\"_file_sort_\":{\"pic_all\":null},\"body\":\"<p>fafafaffafafa&nbsp;<\\/p>\\r\\n\\r\\n<figure class=\\\"easyimage easyimage-side\\\"><img alt=\\\"\\\" src=\\\"blob:http:\\/\\/localhost:8000\\/bb80e342-7c9e-4afe-904c-e3ca7445cac7\\\" width=\\\"1440\\\" \\/>\\r\\n<figcaption><\\/figcaption>\\r\\n<\\/figure>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"publish_date\":\"2022-10-14 08:28:36\",\"active\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 08:29:29', '2022-10-14 08:29:29');
INSERT INTO `admin_operation_log` VALUES (183, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-14 08:29:30', '2022-10-14 08:29:30');
INSERT INTO `admin_operation_log` VALUES (184, 2, 'admin-panel/web-articles/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:29:36', '2022-10-14 08:29:36');
INSERT INTO `admin_operation_log` VALUES (185, 2, 'admin-panel/web-articles/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:32:55', '2022-10-14 08:32:55');
INSERT INTO `admin_operation_log` VALUES (186, 2, 'admin-panel/web-articles/4/edit', 'GET', '127.0.0.1', '[]', '2022-10-14 08:32:58', '2022-10-14 08:32:58');
INSERT INTO `admin_operation_log` VALUES (187, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:33:04', '2022-10-14 08:33:04');
INSERT INTO `admin_operation_log` VALUES (188, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:33:35', '2022-10-14 08:33:35');
INSERT INTO `admin_operation_log` VALUES (189, 2, 'admin-panel/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:33:38', '2022-10-14 08:33:38');
INSERT INTO `admin_operation_log` VALUES (190, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:33:41', '2022-10-14 08:33:41');
INSERT INTO `admin_operation_log` VALUES (191, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:33:44', '2022-10-14 08:33:44');
INSERT INTO `admin_operation_log` VALUES (192, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:41:47', '2022-10-14 08:41:47');
INSERT INTO `admin_operation_log` VALUES (193, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 08:41:50', '2022-10-14 08:41:50');
INSERT INTO `admin_operation_log` VALUES (194, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:08:42', '2022-10-14 09:08:42');
INSERT INTO `admin_operation_log` VALUES (195, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Article Categories\",\"icon\":\"fa-puzzle-piece\",\"uri\":\"web-article-categories\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 09:09:58', '2022-10-14 09:09:58');
INSERT INTO `admin_operation_log` VALUES (196, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 09:09:58', '2022-10-14 09:09:58');
INSERT INTO `admin_operation_log` VALUES (197, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-10-14 09:10:04', '2022-10-14 09:10:04');
INSERT INTO `admin_operation_log` VALUES (198, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:10:05', '2022-10-14 09:10:05');
INSERT INTO `admin_operation_log` VALUES (199, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 09:10:08', '2022-10-14 09:10:08');
INSERT INTO `admin_operation_log` VALUES (200, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:10:16', '2022-10-14 09:10:16');
INSERT INTO `admin_operation_log` VALUES (201, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:10:18', '2022-10-14 09:10:18');
INSERT INTO `admin_operation_log` VALUES (202, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:10:21', '2022-10-14 09:10:21');
INSERT INTO `admin_operation_log` VALUES (203, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:10:45', '2022-10-14 09:10:45');
INSERT INTO `admin_operation_log` VALUES (204, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '[]', '2022-10-14 09:10:47', '2022-10-14 09:10:47');
INSERT INTO `admin_operation_log` VALUES (205, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:11:30', '2022-10-14 09:11:30');
INSERT INTO `admin_operation_log` VALUES (206, 2, 'admin-panel/web-article-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:11:33', '2022-10-14 09:11:33');
INSERT INTO `admin_operation_log` VALUES (207, 2, 'admin-panel/web-article-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:11:47', '2022-10-14 09:11:47');
INSERT INTO `admin_operation_log` VALUES (208, 2, 'admin-panel/web-article-categories', 'POST', '127.0.0.1', '{\"title\":\"WordPress\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 09:12:37', '2022-10-14 09:12:37');
INSERT INTO `admin_operation_log` VALUES (209, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '[]', '2022-10-14 09:12:37', '2022-10-14 09:12:37');
INSERT INTO `admin_operation_log` VALUES (210, 2, 'admin-panel/web-article-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:12:42', '2022-10-14 09:12:42');
INSERT INTO `admin_operation_log` VALUES (211, 2, 'admin-panel/web-article-categories', 'POST', '127.0.0.1', '{\"title\":\"JavaScript\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-article-categories\"}', '2022-10-14 09:13:05', '2022-10-14 09:13:05');
INSERT INTO `admin_operation_log` VALUES (212, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '[]', '2022-10-14 09:13:06', '2022-10-14 09:13:06');
INSERT INTO `admin_operation_log` VALUES (213, 2, 'admin-panel/web-article-categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:13:10', '2022-10-14 09:13:10');
INSERT INTO `admin_operation_log` VALUES (214, 2, 'admin-panel/web-article-categories', 'POST', '127.0.0.1', '{\"title\":\"Pelatihan IT\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-article-categories\"}', '2022-10-14 09:13:22', '2022-10-14 09:13:22');
INSERT INTO `admin_operation_log` VALUES (215, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '[]', '2022-10-14 09:13:23', '2022-10-14 09:13:23');
INSERT INTO `admin_operation_log` VALUES (216, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:13:43', '2022-10-14 09:13:43');
INSERT INTO `admin_operation_log` VALUES (217, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:13:54', '2022-10-14 09:13:54');
INSERT INTO `admin_operation_log` VALUES (218, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:13:58', '2022-10-14 09:13:58');
INSERT INTO `admin_operation_log` VALUES (219, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:14:03', '2022-10-14 09:14:03');
INSERT INTO `admin_operation_log` VALUES (220, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:14:05', '2022-10-14 09:14:05');
INSERT INTO `admin_operation_log` VALUES (221, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-14 09:17:16', '2022-10-14 09:17:16');
INSERT INTO `admin_operation_log` VALUES (222, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"tess\",\"subtitle\":\"afafa\",\"category_id\":[\"1\",\"2\",\"3\",null],\"body\":\"<p>aafafafa<\\/p>\",\"publish_date\":\"2022-10-14 09:17:16\",\"active\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 09:17:45', '2022-10-14 09:17:45');
INSERT INTO `admin_operation_log` VALUES (223, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-14 09:17:46', '2022-10-14 09:17:46');
INSERT INTO `admin_operation_log` VALUES (224, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:18:04', '2022-10-14 09:18:04');
INSERT INTO `admin_operation_log` VALUES (225, 2, 'admin-panel/web-articles', 'POST', '127.0.0.1', '{\"title\":\"adafa\",\"subtitle\":\"afaf\",\"category_id\":\"3\",\"body\":\"<p>afafafa<\\/p>\",\"publish_date\":\"2022-10-14 09:18:04\",\"active\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 09:18:32', '2022-10-14 09:18:32');
INSERT INTO `admin_operation_log` VALUES (226, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-14 09:18:32', '2022-10-14 09:18:32');
INSERT INTO `admin_operation_log` VALUES (227, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:18:37', '2022-10-14 09:18:37');
INSERT INTO `admin_operation_log` VALUES (228, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:19:30', '2022-10-14 09:19:30');
INSERT INTO `admin_operation_log` VALUES (229, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:21:46', '2022-10-14 09:21:46');
INSERT INTO `admin_operation_log` VALUES (230, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:24:05', '2022-10-14 09:24:05');
INSERT INTO `admin_operation_log` VALUES (231, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:24:16', '2022-10-14 09:24:16');
INSERT INTO `admin_operation_log` VALUES (232, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:24:18', '2022-10-14 09:24:18');
INSERT INTO `admin_operation_log` VALUES (233, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:25:20', '2022-10-14 09:25:20');
INSERT INTO `admin_operation_log` VALUES (234, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:26:02', '2022-10-14 09:26:02');
INSERT INTO `admin_operation_log` VALUES (235, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '[]', '2022-10-14 09:26:11', '2022-10-14 09:26:11');
INSERT INTO `admin_operation_log` VALUES (236, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:26:22', '2022-10-14 09:26:22');
INSERT INTO `admin_operation_log` VALUES (237, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:26:49', '2022-10-14 09:26:49');
INSERT INTO `admin_operation_log` VALUES (238, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:26:53', '2022-10-14 09:26:53');
INSERT INTO `admin_operation_log` VALUES (239, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:27:20', '2022-10-14 09:27:20');
INSERT INTO `admin_operation_log` VALUES (240, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:27:23', '2022-10-14 09:27:23');
INSERT INTO `admin_operation_log` VALUES (241, 2, 'admin-panel/web-articles/1', 'PUT', '127.0.0.1', '{\"title\":\"adafa\",\"subtitle\":\"afaf\",\"category_id\":\"3\",\"body\":\"<p>afafafa<\\/p>\",\"publish_date\":\"2022-10-14 09:18:04\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-articles\"}', '2022-10-14 09:27:32', '2022-10-14 09:27:32');
INSERT INTO `admin_operation_log` VALUES (242, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-14 09:27:32', '2022-10-14 09:27:32');
INSERT INTO `admin_operation_log` VALUES (243, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:27:36', '2022-10-14 09:27:36');
INSERT INTO `admin_operation_log` VALUES (244, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:28:25', '2022-10-14 09:28:25');
INSERT INTO `admin_operation_log` VALUES (245, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:28:36', '2022-10-14 09:28:36');
INSERT INTO `admin_operation_log` VALUES (246, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:28:47', '2022-10-14 09:28:47');
INSERT INTO `admin_operation_log` VALUES (247, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:28:52', '2022-10-14 09:28:52');
INSERT INTO `admin_operation_log` VALUES (248, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:28:53', '2022-10-14 09:28:53');
INSERT INTO `admin_operation_log` VALUES (249, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:29:10', '2022-10-14 09:29:10');
INSERT INTO `admin_operation_log` VALUES (250, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:29:22', '2022-10-14 09:29:22');
INSERT INTO `admin_operation_log` VALUES (251, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:30:07', '2022-10-14 09:30:07');
INSERT INTO `admin_operation_log` VALUES (252, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:30:28', '2022-10-14 09:30:28');
INSERT INTO `admin_operation_log` VALUES (253, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:32:18', '2022-10-14 09:32:18');
INSERT INTO `admin_operation_log` VALUES (254, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:32:48', '2022-10-14 09:32:48');
INSERT INTO `admin_operation_log` VALUES (255, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:33:25', '2022-10-14 09:33:25');
INSERT INTO `admin_operation_log` VALUES (256, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:33:39', '2022-10-14 09:33:39');
INSERT INTO `admin_operation_log` VALUES (257, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:33:47', '2022-10-14 09:33:47');
INSERT INTO `admin_operation_log` VALUES (258, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:34:13', '2022-10-14 09:34:13');
INSERT INTO `admin_operation_log` VALUES (259, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2022-10-14 09:34:21', '2022-10-14 09:34:21');
INSERT INTO `admin_operation_log` VALUES (260, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:34:46', '2022-10-14 09:34:46');
INSERT INTO `admin_operation_log` VALUES (261, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:35:18', '2022-10-14 09:35:18');
INSERT INTO `admin_operation_log` VALUES (262, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:35:39', '2022-10-14 09:35:39');
INSERT INTO `admin_operation_log` VALUES (263, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:36:41', '2022-10-14 09:36:41');
INSERT INTO `admin_operation_log` VALUES (264, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-14 09:36:43', '2022-10-14 09:36:43');
INSERT INTO `admin_operation_log` VALUES (265, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:37:07', '2022-10-14 09:37:07');
INSERT INTO `admin_operation_log` VALUES (266, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-14 09:37:14', '2022-10-14 09:37:14');
INSERT INTO `admin_operation_log` VALUES (267, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:37:29', '2022-10-14 09:37:29');
INSERT INTO `admin_operation_log` VALUES (268, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-14 09:37:33', '2022-10-14 09:37:33');
INSERT INTO `admin_operation_log` VALUES (269, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:37:49', '2022-10-14 09:37:49');
INSERT INTO `admin_operation_log` VALUES (270, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-14 09:37:52', '2022-10-14 09:37:52');
INSERT INTO `admin_operation_log` VALUES (271, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:38:41', '2022-10-14 09:38:41');
INSERT INTO `admin_operation_log` VALUES (272, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '[]', '2022-10-14 09:38:44', '2022-10-14 09:38:44');
INSERT INTO `admin_operation_log` VALUES (273, 2, 'admin-panel/web-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:40:03', '2022-10-14 09:40:03');
INSERT INTO `admin_operation_log` VALUES (274, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 09:40:10', '2022-10-14 09:40:10');
INSERT INTO `admin_operation_log` VALUES (275, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 10:59:51', '2022-10-14 10:59:51');
INSERT INTO `admin_operation_log` VALUES (276, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:28:34', '2022-10-14 11:28:34');
INSERT INTO `admin_operation_log` VALUES (277, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Porfolio\",\"icon\":\"fa-calendar-plus-o\",\"uri\":\"web-portfolios\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 11:29:17', '2022-10-14 11:29:17');
INSERT INTO `admin_operation_log` VALUES (278, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 11:29:18', '2022-10-14 11:29:18');
INSERT INTO `admin_operation_log` VALUES (279, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Portfolio Tags\",\"icon\":\"fa-hashtag\",\"uri\":\"web-tags\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 11:29:47', '2022-10-14 11:29:47');
INSERT INTO `admin_operation_log` VALUES (280, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 11:29:47', '2022-10-14 11:29:47');
INSERT INTO `admin_operation_log` VALUES (281, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-10-14 11:29:53', '2022-10-14 11:29:53');
INSERT INTO `admin_operation_log` VALUES (282, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:29:54', '2022-10-14 11:29:54');
INSERT INTO `admin_operation_log` VALUES (283, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 11:29:57', '2022-10-14 11:29:57');
INSERT INTO `admin_operation_log` VALUES (284, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:30:06', '2022-10-14 11:30:06');
INSERT INTO `admin_operation_log` VALUES (285, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:30:08', '2022-10-14 11:30:08');
INSERT INTO `admin_operation_log` VALUES (286, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:30:18', '2022-10-14 11:30:18');
INSERT INTO `admin_operation_log` VALUES (287, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:30:21', '2022-10-14 11:30:21');
INSERT INTO `admin_operation_log` VALUES (288, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '[]', '2022-10-14 11:30:23', '2022-10-14 11:30:23');
INSERT INTO `admin_operation_log` VALUES (289, 2, 'admin-panel/web-tags/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:30:29', '2022-10-14 11:30:29');
INSERT INTO `admin_operation_log` VALUES (290, 2, 'admin-panel/web-tags', 'POST', '127.0.0.1', '{\"title\":\"Website\",\"slug\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-tags\"}', '2022-10-14 11:30:55', '2022-10-14 11:30:55');
INSERT INTO `admin_operation_log` VALUES (291, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '[]', '2022-10-14 11:30:56', '2022-10-14 11:30:56');
INSERT INTO `admin_operation_log` VALUES (292, 2, 'admin-panel/web-tags/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:30:58', '2022-10-14 11:30:58');
INSERT INTO `admin_operation_log` VALUES (293, 2, 'admin-panel/web-tags', 'POST', '127.0.0.1', '{\"title\":\"Andorid App\",\"slug\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-tags\"}', '2022-10-14 11:31:08', '2022-10-14 11:31:08');
INSERT INTO `admin_operation_log` VALUES (294, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '[]', '2022-10-14 11:31:09', '2022-10-14 11:31:09');
INSERT INTO `admin_operation_log` VALUES (295, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:31:24', '2022-10-14 11:31:24');
INSERT INTO `admin_operation_log` VALUES (296, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:31:32', '2022-10-14 11:31:32');
INSERT INTO `admin_operation_log` VALUES (297, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:33:33', '2022-10-14 11:33:33');
INSERT INTO `admin_operation_log` VALUES (298, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:35:19', '2022-10-14 11:35:19');
INSERT INTO `admin_operation_log` VALUES (299, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:35:53', '2022-10-14 11:35:53');
INSERT INTO `admin_operation_log` VALUES (300, 2, 'admin-panel/web-portfolios', 'POST', '127.0.0.1', '{\"title\":\"afaf afafaf\",\"subtitle\":\"afafaf\",\"tags\":[\"1\",\"2\",null],\"body\":\"<p>cacaca<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 11:36:10', '2022-10-14 11:36:10');
INSERT INTO `admin_operation_log` VALUES (301, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '[]', '2022-10-14 11:36:13', '2022-10-14 11:36:13');
INSERT INTO `admin_operation_log` VALUES (302, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:37:18', '2022-10-14 11:37:18');
INSERT INTO `admin_operation_log` VALUES (303, 2, 'admin-panel/web-portfolios', 'POST', '127.0.0.1', '{\"title\":\"adfafa\",\"subtitle\":\"afaf\",\"tags\":[\"1\",\"2\",null],\"body\":\"<p>adafaf<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 11:37:32', '2022-10-14 11:37:32');
INSERT INTO `admin_operation_log` VALUES (304, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '[]', '2022-10-14 11:37:33', '2022-10-14 11:37:33');
INSERT INTO `admin_operation_log` VALUES (305, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '[]', '2022-10-14 11:40:07', '2022-10-14 11:40:07');
INSERT INTO `admin_operation_log` VALUES (306, 2, 'admin-panel/web-portfolios', 'POST', '127.0.0.1', '{\"title\":\"afafaf afaf\",\"subtitle\":\"afaf\",\"tags\":[\"1\",\"2\",null],\"body\":\"<p>afafafaf<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 11:40:26', '2022-10-14 11:40:26');
INSERT INTO `admin_operation_log` VALUES (307, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 11:40:28', '2022-10-14 11:40:28');
INSERT INTO `admin_operation_log` VALUES (308, 2, 'admin-panel/web-portfolios/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:40:42', '2022-10-14 11:40:42');
INSERT INTO `admin_operation_log` VALUES (309, 2, 'admin-panel/web-portfolios/3', 'PUT', '127.0.0.1', '{\"title\":\"afafaf afaf\",\"subtitle\":\"afaf\",\"tags\":[\"1\",null],\"body\":\"<p>afafafaf<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-portfolios\"}', '2022-10-14 11:40:57', '2022-10-14 11:40:57');
INSERT INTO `admin_operation_log` VALUES (310, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 11:40:58', '2022-10-14 11:40:58');
INSERT INTO `admin_operation_log` VALUES (311, 2, 'admin-panel/web-portfolios/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:41:01', '2022-10-14 11:41:01');
INSERT INTO `admin_operation_log` VALUES (312, 2, 'admin-panel/web-portfolios/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:41:56', '2022-10-14 11:41:56');
INSERT INTO `admin_operation_log` VALUES (313, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:42:00', '2022-10-14 11:42:00');
INSERT INTO `admin_operation_log` VALUES (314, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:42:40', '2022-10-14 11:42:40');
INSERT INTO `admin_operation_log` VALUES (315, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:47:26', '2022-10-14 11:47:26');
INSERT INTO `admin_operation_log` VALUES (316, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 11:47:30', '2022-10-14 11:47:30');
INSERT INTO `admin_operation_log` VALUES (317, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 11:47:46', '2022-10-14 11:47:46');
INSERT INTO `admin_operation_log` VALUES (318, 2, 'admin-panel/web-portfolios/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:47:55', '2022-10-14 11:47:55');
INSERT INTO `admin_operation_log` VALUES (319, 2, 'admin-panel/web-portfolios/3', 'PUT', '127.0.0.1', '{\"title\":\"afafaf afaf\",\"subtitle\":\"afaf\",\"tags\":[\"1\",\"2\",null],\"body\":\"<p>afafafaf<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-portfolios\"}', '2022-10-14 11:47:59', '2022-10-14 11:47:59');
INSERT INTO `admin_operation_log` VALUES (320, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 11:48:00', '2022-10-14 11:48:00');
INSERT INTO `admin_operation_log` VALUES (321, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:48:51', '2022-10-14 11:48:51');
INSERT INTO `admin_operation_log` VALUES (322, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:49:03', '2022-10-14 11:49:03');
INSERT INTO `admin_operation_log` VALUES (323, 2, 'admin-panel/web-portfolios/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:49:59', '2022-10-14 11:49:59');
INSERT INTO `admin_operation_log` VALUES (324, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:50:42', '2022-10-14 11:50:42');
INSERT INTO `admin_operation_log` VALUES (325, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:54:30', '2022-10-14 11:54:30');
INSERT INTO `admin_operation_log` VALUES (326, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Services\",\"icon\":\"fa-book\",\"uri\":\"web-services\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 11:55:36', '2022-10-14 11:55:36');
INSERT INTO `admin_operation_log` VALUES (327, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 11:55:36', '2022-10-14 11:55:36');
INSERT INTO `admin_operation_log` VALUES (328, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":12},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-10-14 11:55:42', '2022-10-14 11:55:42');
INSERT INTO `admin_operation_log` VALUES (329, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:55:43', '2022-10-14 11:55:43');
INSERT INTO `admin_operation_log` VALUES (330, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 11:55:46', '2022-10-14 11:55:46');
INSERT INTO `admin_operation_log` VALUES (331, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:56:29', '2022-10-14 11:56:29');
INSERT INTO `admin_operation_log` VALUES (332, 2, 'admin-panel/web-services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 11:56:42', '2022-10-14 11:56:42');
INSERT INTO `admin_operation_log` VALUES (333, 2, 'admin-panel/web-services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:06:31', '2022-10-14 12:06:31');
INSERT INTO `admin_operation_log` VALUES (334, 2, 'admin-panel/web-services/create', 'GET', '127.0.0.1', '[]', '2022-10-14 12:06:34', '2022-10-14 12:06:34');
INSERT INTO `admin_operation_log` VALUES (335, 2, 'admin-panel/web-services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:09:06', '2022-10-14 12:09:06');
INSERT INTO `admin_operation_log` VALUES (336, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:09:33', '2022-10-14 12:09:33');
INSERT INTO `admin_operation_log` VALUES (337, 2, 'admin-panel/web-services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:09:38', '2022-10-14 12:09:38');
INSERT INTO `admin_operation_log` VALUES (338, 2, 'admin-panel/web-services', 'POST', '127.0.0.1', '{\"title\":\"E-GOVERMENT\",\"subtitle\":\"Mengembangkan aplikasi pelayanan pemerintahan\",\"pic_icon\":\"fa-bank\",\"body\":\"<p>Mengembangkan aplikasi pelayanan pemerintahan<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-services\"}', '2022-10-14 12:10:34', '2022-10-14 12:10:34');
INSERT INTO `admin_operation_log` VALUES (339, 2, 'admin-panel/web-services/create', 'GET', '127.0.0.1', '[]', '2022-10-14 12:10:35', '2022-10-14 12:10:35');
INSERT INTO `admin_operation_log` VALUES (340, 2, 'admin-panel/web-services', 'POST', '127.0.0.1', '{\"title\":\"E-GOVERMENT\",\"subtitle\":\"Mengembangkan aplikasi pelayanan pemerintahan\",\"pic_icon\":\"fa-bank\",\"body\":\"<p>Mengembangkan aplikasi pelayanan pemerintahan<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 12:10:55', '2022-10-14 12:10:55');
INSERT INTO `admin_operation_log` VALUES (341, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '[]', '2022-10-14 12:10:55', '2022-10-14 12:10:55');
INSERT INTO `admin_operation_log` VALUES (342, 2, 'admin-panel/web-services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:11:03', '2022-10-14 12:11:03');
INSERT INTO `admin_operation_log` VALUES (343, 2, 'admin-panel/web-services', 'POST', '127.0.0.1', '{\"title\":\"GIS Application\",\"subtitle\":\"Kami membangun Geographic information System (GIS) berdasarkan data spasial \\/ Koordinat\",\"pic_icon\":\"fa-globe\",\"body\":\"<p>Kami membangun Geographic information System (GIS) berdasarkan data spasial \\/ Koordinat<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-services\"}', '2022-10-14 12:11:41', '2022-10-14 12:11:41');
INSERT INTO `admin_operation_log` VALUES (344, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '[]', '2022-10-14 12:11:41', '2022-10-14 12:11:41');
INSERT INTO `admin_operation_log` VALUES (345, 2, 'admin-panel/web-services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:11:43', '2022-10-14 12:11:43');
INSERT INTO `admin_operation_log` VALUES (346, 2, 'admin-panel/web-services', 'POST', '127.0.0.1', '{\"title\":\"NETWORKING\",\"subtitle\":\"Kami melayani pemasangan dan pemeliharaan jaringan\",\"pic_icon\":\"fa-internet-explorer\",\"body\":\"<p>Kami melayani pemasangan dan pemeliharaan jaringan<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-services\"}', '2022-10-14 12:12:16', '2022-10-14 12:12:16');
INSERT INTO `admin_operation_log` VALUES (347, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '[]', '2022-10-14 12:12:16', '2022-10-14 12:12:16');
INSERT INTO `admin_operation_log` VALUES (348, 2, 'admin-panel/web-services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:12:26', '2022-10-14 12:12:26');
INSERT INTO `admin_operation_log` VALUES (349, 2, 'admin-panel/web-services', 'POST', '127.0.0.1', '{\"title\":\"Cuztomize Application\",\"subtitle\":\"Anda dapat memesan Aplikasi yang anda inginkan, baik itu perusahaan atau kebutuhan pribadi anda\",\"pic_icon\":\"fa-cogs\",\"body\":\"<p>Anda dapat memesan Aplikasi yang anda inginkan, baik itu perusahaan atau kebutuhan pribadi anda<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-services\"}', '2022-10-14 12:12:54', '2022-10-14 12:12:54');
INSERT INTO `admin_operation_log` VALUES (350, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '[]', '2022-10-14 12:12:55', '2022-10-14 12:12:55');
INSERT INTO `admin_operation_log` VALUES (351, 2, 'admin-panel/web-services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:13:01', '2022-10-14 12:13:01');
INSERT INTO `admin_operation_log` VALUES (352, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:13:05', '2022-10-14 12:13:05');
INSERT INTO `admin_operation_log` VALUES (353, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:13:08', '2022-10-14 12:13:08');
INSERT INTO `admin_operation_log` VALUES (354, 2, 'admin-panel/web-tags/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:13:16', '2022-10-14 12:13:16');
INSERT INTO `admin_operation_log` VALUES (355, 2, 'admin-panel/web-tags', 'POST', '127.0.0.1', '{\"title\":\"Ios App\",\"slug\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-tags\"}', '2022-10-14 12:13:24', '2022-10-14 12:13:24');
INSERT INTO `admin_operation_log` VALUES (356, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '[]', '2022-10-14 12:13:25', '2022-10-14 12:13:25');
INSERT INTO `admin_operation_log` VALUES (357, 2, 'admin-panel/web-tags/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:13:28', '2022-10-14 12:13:28');
INSERT INTO `admin_operation_log` VALUES (358, 2, 'admin-panel/web-tags', 'POST', '127.0.0.1', '{\"title\":\"GIS\",\"slug\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-tags\"}', '2022-10-14 12:13:43', '2022-10-14 12:13:43');
INSERT INTO `admin_operation_log` VALUES (359, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '[]', '2022-10-14 12:13:43', '2022-10-14 12:13:43');
INSERT INTO `admin_operation_log` VALUES (360, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:13:49', '2022-10-14 12:13:49');
INSERT INTO `admin_operation_log` VALUES (361, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:13:54', '2022-10-14 12:13:54');
INSERT INTO `admin_operation_log` VALUES (362, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:13:56', '2022-10-14 12:13:56');
INSERT INTO `admin_operation_log` VALUES (363, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:20:02', '2022-10-14 12:20:02');
INSERT INTO `admin_operation_log` VALUES (364, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:20:21', '2022-10-14 12:20:21');
INSERT INTO `admin_operation_log` VALUES (365, 2, 'admin-panel/web-portfolios/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:20:25', '2022-10-14 12:20:25');
INSERT INTO `admin_operation_log` VALUES (366, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:20:28', '2022-10-14 12:20:28');
INSERT INTO `admin_operation_log` VALUES (367, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:20:31', '2022-10-14 12:20:31');
INSERT INTO `admin_operation_log` VALUES (368, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:17', '2022-10-14 12:21:17');
INSERT INTO `admin_operation_log` VALUES (369, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:21', '2022-10-14 12:21:21');
INSERT INTO `admin_operation_log` VALUES (370, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:23', '2022-10-14 12:21:23');
INSERT INTO `admin_operation_log` VALUES (371, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:24', '2022-10-14 12:21:24');
INSERT INTO `admin_operation_log` VALUES (372, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:27', '2022-10-14 12:21:27');
INSERT INTO `admin_operation_log` VALUES (373, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:29', '2022-10-14 12:21:29');
INSERT INTO `admin_operation_log` VALUES (374, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:45', '2022-10-14 12:21:45');
INSERT INTO `admin_operation_log` VALUES (375, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:47', '2022-10-14 12:21:47');
INSERT INTO `admin_operation_log` VALUES (376, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:47', '2022-10-14 12:21:47');
INSERT INTO `admin_operation_log` VALUES (377, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:48', '2022-10-14 12:21:48');
INSERT INTO `admin_operation_log` VALUES (378, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:49', '2022-10-14 12:21:49');
INSERT INTO `admin_operation_log` VALUES (379, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:52', '2022-10-14 12:21:52');
INSERT INTO `admin_operation_log` VALUES (380, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:21:53', '2022-10-14 12:21:53');
INSERT INTO `admin_operation_log` VALUES (381, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:23:22', '2022-10-14 12:23:22');
INSERT INTO `admin_operation_log` VALUES (382, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:23:56', '2022-10-14 12:23:56');
INSERT INTO `admin_operation_log` VALUES (383, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:24:08', '2022-10-14 12:24:08');
INSERT INTO `admin_operation_log` VALUES (384, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:24:23', '2022-10-14 12:24:23');
INSERT INTO `admin_operation_log` VALUES (385, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:24:25', '2022-10-14 12:24:25');
INSERT INTO `admin_operation_log` VALUES (386, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:26:27', '2022-10-14 12:26:27');
INSERT INTO `admin_operation_log` VALUES (387, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:26:38', '2022-10-14 12:26:38');
INSERT INTO `admin_operation_log` VALUES (388, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:27:07', '2022-10-14 12:27:07');
INSERT INTO `admin_operation_log` VALUES (389, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:27:20', '2022-10-14 12:27:20');
INSERT INTO `admin_operation_log` VALUES (390, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:27:35', '2022-10-14 12:27:35');
INSERT INTO `admin_operation_log` VALUES (391, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:27:37', '2022-10-14 12:27:37');
INSERT INTO `admin_operation_log` VALUES (392, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:27:44', '2022-10-14 12:27:44');
INSERT INTO `admin_operation_log` VALUES (393, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:28:25', '2022-10-14 12:28:25');
INSERT INTO `admin_operation_log` VALUES (394, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:28:42', '2022-10-14 12:28:42');
INSERT INTO `admin_operation_log` VALUES (395, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:29:16', '2022-10-14 12:29:16');
INSERT INTO `admin_operation_log` VALUES (396, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:29:25', '2022-10-14 12:29:25');
INSERT INTO `admin_operation_log` VALUES (397, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:29:39', '2022-10-14 12:29:39');
INSERT INTO `admin_operation_log` VALUES (398, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:29:44', '2022-10-14 12:29:44');
INSERT INTO `admin_operation_log` VALUES (399, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:29:51', '2022-10-14 12:29:51');
INSERT INTO `admin_operation_log` VALUES (400, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:30:32', '2022-10-14 12:30:32');
INSERT INTO `admin_operation_log` VALUES (401, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:30:39', '2022-10-14 12:30:39');
INSERT INTO `admin_operation_log` VALUES (402, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:30:41', '2022-10-14 12:30:41');
INSERT INTO `admin_operation_log` VALUES (403, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:30:43', '2022-10-14 12:30:43');
INSERT INTO `admin_operation_log` VALUES (404, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:30:44', '2022-10-14 12:30:44');
INSERT INTO `admin_operation_log` VALUES (405, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:30:45', '2022-10-14 12:30:45');
INSERT INTO `admin_operation_log` VALUES (406, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:30:46', '2022-10-14 12:30:46');
INSERT INTO `admin_operation_log` VALUES (407, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:31:56', '2022-10-14 12:31:56');
INSERT INTO `admin_operation_log` VALUES (408, 2, 'admin-panel/web-portfolios/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:31:59', '2022-10-14 12:31:59');
INSERT INTO `admin_operation_log` VALUES (409, 2, 'admin-panel/web-portfolios/3', 'PUT', '127.0.0.1', '{\"title\":\"Sistem Informasi Hukum (SISKUM)\",\"subtitle\":\"Bagian Hukum & Perundang-undangan Polewali Mandar\",\"tags\":[\"1\",null],\"body\":\"<p>Nama Proyek : Sistem Informasi Hukum (SISKUM)<\\/p>\\r\\n\\r\\n<p>Pemberi Tugas : Bagian Hukum &amp; Perundang-undangan Polewali Mandar<\\/p>\\r\\n\\r\\n<p>Lokasi : Kantor Bupati Polewali Mandar Waktu : April 2013<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-portfolios\"}', '2022-10-14 12:33:51', '2022-10-14 12:33:51');
INSERT INTO `admin_operation_log` VALUES (410, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 12:33:52', '2022-10-14 12:33:52');
INSERT INTO `admin_operation_log` VALUES (411, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:34:02', '2022-10-14 12:34:02');
INSERT INTO `admin_operation_log` VALUES (412, 2, 'admin-panel/web-portfolios', 'POST', '127.0.0.1', '{\"title\":\"Website Jaringan Dokumentasi & Informasi Hukum (JDIH)\",\"subtitle\":\"Bagian Hukum & Perundang-undangan Polewali Mandar\",\"tags\":[\"1\",null],\"body\":\"<p>Nama Proyek : Website Jaringan Dokumentasi &amp; Informasi Hukum (JDIH) Pemberi Tugas : Bagian Hukum &amp; Perundang-undangan Polewali Mandar Lokasi : Kantor Bupati Polewali Mandar Waktu : April 2013<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-portfolios\"}', '2022-10-14 12:35:51', '2022-10-14 12:35:51');
INSERT INTO `admin_operation_log` VALUES (413, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 12:35:52', '2022-10-14 12:35:52');
INSERT INTO `admin_operation_log` VALUES (414, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:35:56', '2022-10-14 12:35:56');
INSERT INTO `admin_operation_log` VALUES (415, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '[]', '2022-10-14 12:36:29', '2022-10-14 12:36:29');
INSERT INTO `admin_operation_log` VALUES (416, 2, 'admin-panel/web-tags/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:36:35', '2022-10-14 12:36:35');
INSERT INTO `admin_operation_log` VALUES (417, 2, 'admin-panel/web-tags', 'POST', '127.0.0.1', '{\"title\":\"Bimtek dan Pelatihan\",\"slug\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-tags\"}', '2022-10-14 12:36:50', '2022-10-14 12:36:50');
INSERT INTO `admin_operation_log` VALUES (418, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '[]', '2022-10-14 12:36:50', '2022-10-14 12:36:50');
INSERT INTO `admin_operation_log` VALUES (419, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:36:54', '2022-10-14 12:36:54');
INSERT INTO `admin_operation_log` VALUES (420, 2, 'admin-panel/web-portfolios', 'POST', '127.0.0.1', '{\"title\":\"Bimtek LPPD & LKPJ Desa, Lurah dan Camat\",\"subtitle\":\"BPMPD Kab. Majene\",\"tags\":[\"5\",null],\"body\":\"<p>Nama Proyek : Bimtek LPPD &amp; LKPJ Desa, Lurah dan Camat Pemberi Tugas : BPMPD Kab. Majene Lokasi : Bandung Waktu : Oktober 2013<\\/p>\",\"active\":\"off\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 12:38:11', '2022-10-14 12:38:11');
INSERT INTO `admin_operation_log` VALUES (421, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 12:38:11', '2022-10-14 12:38:11');
INSERT INTO `admin_operation_log` VALUES (422, 2, 'admin-panel/web-portfolios/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:38:24', '2022-10-14 12:38:24');
INSERT INTO `admin_operation_log` VALUES (423, 2, 'admin-panel/web-portfolios/5', 'PUT', '127.0.0.1', '{\"title\":\"Bimtek LPPD & LKPJ Desa, Lurah dan Camat\",\"subtitle\":\"BPMPD Kab. Majene\",\"tags\":[\"5\",null],\"body\":\"<p>Nama Proyek : Bimtek LPPD &amp; LKPJ Desa, Lurah dan Camat Pemberi Tugas : BPMPD Kab. Majene Lokasi : Bandung Waktu : Oktober 2013<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-portfolios\"}', '2022-10-14 12:38:28', '2022-10-14 12:38:28');
INSERT INTO `admin_operation_log` VALUES (424, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 12:38:29', '2022-10-14 12:38:29');
INSERT INTO `admin_operation_log` VALUES (425, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:38:35', '2022-10-14 12:38:35');
INSERT INTO `admin_operation_log` VALUES (426, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:48:52', '2022-10-14 12:48:52');
INSERT INTO `admin_operation_log` VALUES (427, 2, 'admin-panel/web-portfolios/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:49:23', '2022-10-14 12:49:23');
INSERT INTO `admin_operation_log` VALUES (428, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:49:37', '2022-10-14 12:49:37');
INSERT INTO `admin_operation_log` VALUES (429, 2, 'admin-panel/web-portfolios/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:49:39', '2022-10-14 12:49:39');
INSERT INTO `admin_operation_log` VALUES (430, 2, 'admin-panel/web-portfolios/3', 'PUT', '127.0.0.1', '{\"title\":\"Sistem Informasi Hukum (SISKUM)\",\"subtitle\":\"Bagian Hukum & Perundang-undangan Polewali Mandar\",\"tags\":[\"1\",null],\"client\":\"Bagian Hukum & Perundang-undangan Polewali Mandar\",\"location\":\"Kantor Bupati Polewali Mandar\",\"finish_date\":\"2013-04-01\",\"lat_x\":null,\"long_y\":null,\"body\":\"<p>Nama Proyek : Sistem Informasi Hukum (SISKUM)<\\/p>\\r\\n\\r\\n<p>Pemberi Tugas : Bagian Hukum &amp; Perundang-undangan Polewali Mandar<\\/p>\\r\\n\\r\\n<p>Lokasi : Kantor Bupati Polewali Mandar Waktu : April 2013<\\/p>\",\"active\":\"on\",\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-portfolios\"}', '2022-10-14 12:50:33', '2022-10-14 12:50:33');
INSERT INTO `admin_operation_log` VALUES (431, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 12:50:35', '2022-10-14 12:50:35');
INSERT INTO `admin_operation_log` VALUES (432, 2, 'admin-panel/web-portfolios/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:50:40', '2022-10-14 12:50:40');
INSERT INTO `admin_operation_log` VALUES (433, 2, 'admin-panel/web-portfolios/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:50:47', '2022-10-14 12:50:47');
INSERT INTO `admin_operation_log` VALUES (434, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:50:50', '2022-10-14 12:50:50');
INSERT INTO `admin_operation_log` VALUES (435, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:51:14', '2022-10-14 12:51:14');
INSERT INTO `admin_operation_log` VALUES (436, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:51:16', '2022-10-14 12:51:16');
INSERT INTO `admin_operation_log` VALUES (437, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:51:17', '2022-10-14 12:51:17');
INSERT INTO `admin_operation_log` VALUES (438, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:51:18', '2022-10-14 12:51:18');
INSERT INTO `admin_operation_log` VALUES (439, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:56:29', '2022-10-14 12:56:29');
INSERT INTO `admin_operation_log` VALUES (440, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Web Profile\",\"icon\":\"fa-cog\",\"uri\":\"web-profiles\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\"}', '2022-10-14 12:56:59', '2022-10-14 12:56:59');
INSERT INTO `admin_operation_log` VALUES (441, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 12:57:00', '2022-10-14 12:57:00');
INSERT INTO `admin_operation_log` VALUES (442, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ZBLOr8sfG5oXjNu2VYGjwPL7MGOuRn0OI8sjsAs0\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":13},{\\\"id\\\":12},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-10-14 12:57:05', '2022-10-14 12:57:05');
INSERT INTO `admin_operation_log` VALUES (443, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:57:06', '2022-10-14 12:57:06');
INSERT INTO `admin_operation_log` VALUES (444, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 12:57:07', '2022-10-14 12:57:07');
INSERT INTO `admin_operation_log` VALUES (445, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:57:12', '2022-10-14 12:57:12');
INSERT INTO `admin_operation_log` VALUES (446, 2, 'admin-panel/web-profiles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 12:57:18', '2022-10-14 12:57:18');
INSERT INTO `admin_operation_log` VALUES (447, 2, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-14 18:45:59', '2022-10-14 18:45:59');
INSERT INTO `admin_operation_log` VALUES (448, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 18:46:06', '2022-10-14 18:46:06');
INSERT INTO `admin_operation_log` VALUES (449, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 18:59:02', '2022-10-14 18:59:02');
INSERT INTO `admin_operation_log` VALUES (450, 2, 'admin-panel/web-portfolios/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 18:59:08', '2022-10-14 18:59:08');
INSERT INTO `admin_operation_log` VALUES (451, 2, 'admin-panel/web-portfolios/3', 'PUT', '127.0.0.1', '{\"title\":\"Sistem Informasi Hukum (SISKUM)\",\"subtitle\":\"Bagian Hukum & Perundang-undangan Polewali Mandar\",\"tags\":[\"1\",null],\"client\":\"Bagian Hukum & Perundang-undangan Polewali Mandar\",\"location\":\"Kantor Bupati Polewali Mandar\",\"finish_date\":\"2013-04-01\",\"lat_x\":null,\"long_y\":null,\"body\":\"<p>Nama Proyek : Sistem Informasi Hukum (SISKUM)<\\/p>\\r\\n\\r\\n<p>Pemberi Tugas : Bagian Hukum &amp; Perundang-undangan Polewali Mandar<\\/p>\\r\\n\\r\\n<p>Lokasi : Kantor Bupati Polewali Mandar Waktu : April 2013<\\/p>\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-portfolios\"}', '2022-10-14 19:00:15', '2022-10-14 19:00:15');
INSERT INTO `admin_operation_log` VALUES (452, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 19:00:17', '2022-10-14 19:00:17');
INSERT INTO `admin_operation_log` VALUES (453, 2, 'admin-panel/web-portfolios/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 19:00:26', '2022-10-14 19:00:26');
INSERT INTO `admin_operation_log` VALUES (454, 2, 'admin-panel/web-portfolios/4', 'PUT', '127.0.0.1', '{\"title\":\"Website Jaringan Dokumentasi & Informasi Hukum (JDIH)\",\"subtitle\":\"Bagian Hukum & Perundang-undangan Polewali Mandar\",\"tags\":[\"1\",null],\"client\":null,\"location\":null,\"finish_date\":null,\"lat_x\":null,\"long_y\":null,\"body\":\"<p>Nama Proyek : Website Jaringan Dokumentasi &amp; Informasi Hukum (JDIH) Pemberi Tugas : Bagian Hukum &amp; Perundang-undangan Polewali Mandar Lokasi : Kantor Bupati Polewali Mandar Waktu : April 2013<\\/p>\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-portfolios\"}', '2022-10-14 19:00:38', '2022-10-14 19:00:38');
INSERT INTO `admin_operation_log` VALUES (455, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 19:00:39', '2022-10-14 19:00:39');
INSERT INTO `admin_operation_log` VALUES (456, 2, 'admin-panel/web-portfolios/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 19:00:43', '2022-10-14 19:00:43');
INSERT INTO `admin_operation_log` VALUES (457, 2, 'admin-panel/web-portfolios/5', 'PUT', '127.0.0.1', '{\"title\":\"Bimtek LPPD & LKPJ Desa, Lurah dan Camat\",\"subtitle\":\"BPMPD Kab. Majene\",\"tags\":[\"5\",null],\"client\":null,\"location\":null,\"finish_date\":null,\"lat_x\":null,\"long_y\":null,\"body\":\"<p>Nama Proyek : Bimtek LPPD &amp; LKPJ Desa, Lurah dan Camat Pemberi Tugas : BPMPD Kab. Majene Lokasi : Bandung Waktu : Oktober 2013<\\/p>\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-portfolios\"}', '2022-10-14 19:00:50', '2022-10-14 19:00:50');
INSERT INTO `admin_operation_log` VALUES (458, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '[]', '2022-10-14 19:00:52', '2022-10-14 19:00:52');
INSERT INTO `admin_operation_log` VALUES (459, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 19:02:45', '2022-10-14 19:02:45');
INSERT INTO `admin_operation_log` VALUES (460, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 19:02:48', '2022-10-14 19:02:48');
INSERT INTO `admin_operation_log` VALUES (461, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 19:02:49', '2022-10-14 19:02:49');
INSERT INTO `admin_operation_log` VALUES (462, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 20:55:08', '2022-10-14 20:55:08');
INSERT INTO `admin_operation_log` VALUES (463, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Clients\",\"icon\":\"fa-users\",\"uri\":\"web-clients\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\"}', '2022-10-14 20:55:42', '2022-10-14 20:55:42');
INSERT INTO `admin_operation_log` VALUES (464, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 20:55:42', '2022-10-14 20:55:42');
INSERT INTO `admin_operation_log` VALUES (465, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14},{\\\"id\\\":13},{\\\"id\\\":12},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-10-14 20:56:24', '2022-10-14 20:56:24');
INSERT INTO `admin_operation_log` VALUES (466, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 20:56:25', '2022-10-14 20:56:25');
INSERT INTO `admin_operation_log` VALUES (467, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 20:56:28', '2022-10-14 20:56:28');
INSERT INTO `admin_operation_log` VALUES (468, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 20:56:33', '2022-10-14 20:56:33');
INSERT INTO `admin_operation_log` VALUES (469, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 20:57:05', '2022-10-14 20:57:05');
INSERT INTO `admin_operation_log` VALUES (470, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 20:57:07', '2022-10-14 20:57:07');
INSERT INTO `admin_operation_log` VALUES (471, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 20:58:58', '2022-10-14 20:58:58');
INSERT INTO `admin_operation_log` VALUES (472, 2, 'admin-panel/web-clients', 'POST', '127.0.0.1', '{\"title\":\"Kab. Mamuju\",\"subtitle\":null,\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\"}', '2022-10-14 20:59:24', '2022-10-14 20:59:24');
INSERT INTO `admin_operation_log` VALUES (473, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '[]', '2022-10-14 20:59:25', '2022-10-14 20:59:25');
INSERT INTO `admin_operation_log` VALUES (474, 2, 'admin-panel/web-clients', 'POST', '127.0.0.1', '{\"title\":\"Kab. Mamuju\",\"subtitle\":\"Pemerintah Kabupaten Mamuju\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\"}', '2022-10-14 20:59:51', '2022-10-14 20:59:51');
INSERT INTO `admin_operation_log` VALUES (475, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-14 20:59:52', '2022-10-14 20:59:52');
INSERT INTO `admin_operation_log` VALUES (476, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 20:59:55', '2022-10-14 20:59:55');
INSERT INTO `admin_operation_log` VALUES (477, 2, 'admin-panel/web-clients', 'POST', '127.0.0.1', '{\"title\":\"Kab. Polewali Mandar\",\"subtitle\":\"Pemerintah Kabupaten Polewali Mandar\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-clients\"}', '2022-10-14 21:00:30', '2022-10-14 21:00:30');
INSERT INTO `admin_operation_log` VALUES (478, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-14 21:00:30', '2022-10-14 21:00:30');
INSERT INTO `admin_operation_log` VALUES (479, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:00:34', '2022-10-14 21:00:34');
INSERT INTO `admin_operation_log` VALUES (480, 2, 'admin-panel/web-clients', 'POST', '127.0.0.1', '{\"title\":\"Kab. Majene\",\"subtitle\":\"Pemerintah Kabupaten Majene\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-clients\"}', '2022-10-14 21:01:02', '2022-10-14 21:01:02');
INSERT INTO `admin_operation_log` VALUES (481, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-14 21:01:03', '2022-10-14 21:01:03');
INSERT INTO `admin_operation_log` VALUES (482, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:01:10', '2022-10-14 21:01:10');
INSERT INTO `admin_operation_log` VALUES (483, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '[]', '2022-10-14 21:01:14', '2022-10-14 21:01:14');
INSERT INTO `admin_operation_log` VALUES (484, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:01:19', '2022-10-14 21:01:19');
INSERT INTO `admin_operation_log` VALUES (485, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:01:21', '2022-10-14 21:01:21');
INSERT INTO `admin_operation_log` VALUES (486, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:01:23', '2022-10-14 21:01:23');
INSERT INTO `admin_operation_log` VALUES (487, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:07:46', '2022-10-14 21:07:46');
INSERT INTO `admin_operation_log` VALUES (488, 2, 'admin-panel/web-clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:08:01', '2022-10-14 21:08:01');
INSERT INTO `admin_operation_log` VALUES (489, 2, 'admin-panel/web-clients/1', 'PUT', '127.0.0.1', '{\"title\":\"Kab. Mamuju\",\"subtitle\":\"Pemerintah Kabupaten Mamuju\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-clients\"}', '2022-10-14 21:08:12', '2022-10-14 21:08:12');
INSERT INTO `admin_operation_log` VALUES (490, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-14 21:08:13', '2022-10-14 21:08:13');
INSERT INTO `admin_operation_log` VALUES (491, 2, 'admin-panel/web-clients/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:08:16', '2022-10-14 21:08:16');
INSERT INTO `admin_operation_log` VALUES (492, 2, 'admin-panel/web-clients/2', 'PUT', '127.0.0.1', '{\"title\":\"Kab. Polewali Mandar\",\"subtitle\":\"Pemerintah Kabupaten Polewali Mandar\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-clients\"}', '2022-10-14 21:08:20', '2022-10-14 21:08:20');
INSERT INTO `admin_operation_log` VALUES (493, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-14 21:08:21', '2022-10-14 21:08:21');
INSERT INTO `admin_operation_log` VALUES (494, 2, 'admin-panel/web-clients/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:08:23', '2022-10-14 21:08:23');
INSERT INTO `admin_operation_log` VALUES (495, 2, 'admin-panel/web-clients/3', 'PUT', '127.0.0.1', '{\"title\":\"Kab. Majene\",\"subtitle\":\"Pemerintah Kabupaten Majene\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-clients\"}', '2022-10-14 21:08:32', '2022-10-14 21:08:32');
INSERT INTO `admin_operation_log` VALUES (496, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-14 21:08:33', '2022-10-14 21:08:33');
INSERT INTO `admin_operation_log` VALUES (497, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:22:02', '2022-10-14 21:22:02');
INSERT INTO `admin_operation_log` VALUES (498, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"FAQ\",\"icon\":\"fa-question-circle\",\"uri\":\"web-faqs\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\"}', '2022-10-14 21:22:50', '2022-10-14 21:22:50');
INSERT INTO `admin_operation_log` VALUES (499, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 21:22:51', '2022-10-14 21:22:51');
INSERT INTO `admin_operation_log` VALUES (500, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:22:58', '2022-10-14 21:22:58');
INSERT INTO `admin_operation_log` VALUES (501, 2, 'admin-panel/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":14},{\\\"id\\\":13},{\\\"id\\\":12},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":15},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-10-14 21:23:05', '2022-10-14 21:23:05');
INSERT INTO `admin_operation_log` VALUES (502, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:23:06', '2022-10-14 21:23:06');
INSERT INTO `admin_operation_log` VALUES (503, 2, 'admin-panel/auth/menu', 'GET', '127.0.0.1', '[]', '2022-10-14 21:23:08', '2022-10-14 21:23:08');
INSERT INTO `admin_operation_log` VALUES (504, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:23:16', '2022-10-14 21:23:16');
INSERT INTO `admin_operation_log` VALUES (505, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:26:41', '2022-10-14 21:26:41');
INSERT INTO `admin_operation_log` VALUES (506, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:26:44', '2022-10-14 21:26:44');
INSERT INTO `admin_operation_log` VALUES (507, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:26:54', '2022-10-14 21:26:54');
INSERT INTO `admin_operation_log` VALUES (508, 2, 'admin-panel/web-faqs', 'POST', '127.0.0.1', '{\"question\":\"Apa itu SimDesa?\",\"answer\":\"Sistem Informasi Digital Desa (SIMDES) adalah Sistem Informasi yang dirancang untuk menangani berbagai hal dalam pengurusan dalam desa. Mulai dari administrasi dan pelayanan desa menggunakan website ataupun aplikasi pada Android. Sehingga dapat membantu masalah pelayanan desa secara komputerisasi.\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\"}', '2022-10-14 21:27:34', '2022-10-14 21:27:34');
INSERT INTO `admin_operation_log` VALUES (509, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '[]', '2022-10-14 21:27:35', '2022-10-14 21:27:35');
INSERT INTO `admin_operation_log` VALUES (510, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '[]', '2022-10-14 21:28:19', '2022-10-14 21:28:19');
INSERT INTO `admin_operation_log` VALUES (511, 2, 'admin-panel/web-faqs', 'POST', '127.0.0.1', '{\"question\":\"afaf\",\"answer\":\"afafaf\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\"}', '2022-10-14 21:28:35', '2022-10-14 21:28:35');
INSERT INTO `admin_operation_log` VALUES (512, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '[]', '2022-10-14 21:28:35', '2022-10-14 21:28:35');
INSERT INTO `admin_operation_log` VALUES (513, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '[]', '2022-10-14 21:30:02', '2022-10-14 21:30:02');
INSERT INTO `admin_operation_log` VALUES (514, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '[]', '2022-10-14 21:30:08', '2022-10-14 21:30:08');
INSERT INTO `admin_operation_log` VALUES (515, 2, 'admin-panel/web-faqs', 'POST', '127.0.0.1', '{\"question\":\"sgsg\",\"answer\":\"gsgsg\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\"}', '2022-10-14 21:30:22', '2022-10-14 21:30:22');
INSERT INTO `admin_operation_log` VALUES (516, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '[]', '2022-10-14 21:30:23', '2022-10-14 21:30:23');
INSERT INTO `admin_operation_log` VALUES (517, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:30:51', '2022-10-14 21:30:51');
INSERT INTO `admin_operation_log` VALUES (518, 2, 'admin-panel/web-faqs', 'POST', '127.0.0.1', '{\"question\":\"Apa itu SimDesa?\",\"answer\":\"aafafa\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\"}', '2022-10-14 21:31:08', '2022-10-14 21:31:08');
INSERT INTO `admin_operation_log` VALUES (519, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '[]', '2022-10-14 21:31:08', '2022-10-14 21:31:08');
INSERT INTO `admin_operation_log` VALUES (520, 2, 'admin-panel/web-faqs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:31:53', '2022-10-14 21:31:53');
INSERT INTO `admin_operation_log` VALUES (521, 2, 'admin-panel/web-faqs/1', 'PUT', '127.0.0.1', '{\"question\":\"Apa itu SimDesa?\",\"answer\":\"Sistem Informasi Digital Desa (SIMDES) adalah Sistem Informasi yang dirancang untuk menangani berbagai hal dalam pengurusan dalam desa. Mulai dari administrasi dan pelayanan desa menggunakan website ataupun aplikasi pada Android. Sehingga dapat membantu masalah pelayanan desa secara komputerisasi.\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-faqs\"}', '2022-10-14 21:32:01', '2022-10-14 21:32:01');
INSERT INTO `admin_operation_log` VALUES (522, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '[]', '2022-10-14 21:32:02', '2022-10-14 21:32:02');
INSERT INTO `admin_operation_log` VALUES (523, 2, 'admin-panel/web-faqs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:32:07', '2022-10-14 21:32:07');
INSERT INTO `admin_operation_log` VALUES (524, 2, 'admin-panel/web-faqs', 'POST', '127.0.0.1', '{\"question\":\"Mengapa Harus Bergabung Dengan SimDesa? ?\",\"answer\":\"Di era modern saat ini kita tidak bisa lepas dari digitalisasi sehingga semuanya dilakukan melalui internet. Termasuk dengan pengurusan surat-surat ataupun administrasi sehingga diperlukan penunjang bagi masyarakat untuk mempermudah hal itu. Simdesa hadir dengan berbagai fitur yang dapat membantu masyarakat desa.\",\"active\":\"on\",\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-faqs\"}', '2022-10-14 21:32:26', '2022-10-14 21:32:26');
INSERT INTO `admin_operation_log` VALUES (525, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '[]', '2022-10-14 21:32:26', '2022-10-14 21:32:26');
INSERT INTO `admin_operation_log` VALUES (526, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:51:20', '2022-10-14 21:51:20');
INSERT INTO `admin_operation_log` VALUES (527, 2, 'admin-panel/web-profiles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 21:51:22', '2022-10-14 21:51:22');
INSERT INTO `admin_operation_log` VALUES (528, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 22:08:12', '2022-10-14 22:08:12');
INSERT INTO `admin_operation_log` VALUES (529, 2, 'admin-panel/web-profiles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 22:08:17', '2022-10-14 22:08:17');
INSERT INTO `admin_operation_log` VALUES (530, 2, 'admin-panel/web-profiles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 22:09:01', '2022-10-14 22:09:01');
INSERT INTO `admin_operation_log` VALUES (531, 2, 'admin-panel/web-profiles', 'POST', '127.0.0.1', '{\"website_name\":null,\"website_url\":null,\"website_description\":null,\"website_logo_header\":null,\"website_logo_footer\":null,\"website_email\":null,\"website_phone\":null,\"website_fax\":null,\"website_address\":null,\"website_fb\":null,\"website_ig\":null,\"website_twitter\":null,\"website_wa\":null,\"website_author\":null,\"website_owner\":null,\"about_us\":\"<p>Salam Hangat Dari Tim Tanniewa Putra, Kami adalah tim yang membantu dalam menentukan layanan yang sesuai atau menciptakan produk khusus di bidang IT yang disesuaikan dengan kebutuhan perusahaan atau instansi anda. Sebagai Konsultan IT kami berupaya melayani keperluan dibidang IT dari berupa aplikasi, jaringan, keamananan dan perawatannya. Selain sebagai tim konsultan IT, kami juga malakukan riset dari project yang kami terima dan riset perkembangan teknologi saat ini, kami berupaya mengembangkan teknologi dan menciptakan konsep baru untuk memaksimalkan pelayanan.<\\/p>\",\"history\":null,\"visi_misi\":null,\"service\":null,\"product\":null,\"_token\":\"51yiFG35U4PAo5DDAvMOXk5Wnjr5lgpMYRPDfjs7\"}', '2022-10-14 22:11:51', '2022-10-14 22:11:51');
INSERT INTO `admin_operation_log` VALUES (532, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '[]', '2022-10-14 22:11:51', '2022-10-14 22:11:51');
INSERT INTO `admin_operation_log` VALUES (533, 2, 'admin-panel/web-profiles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-14 22:12:02', '2022-10-14 22:12:02');
INSERT INTO `admin_operation_log` VALUES (534, 2, 'admin-panel', 'GET', '127.0.0.1', '[]', '2022-10-15 10:42:39', '2022-10-15 10:42:39');
INSERT INTO `admin_operation_log` VALUES (535, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-15 10:43:51', '2022-10-15 10:43:51');
INSERT INTO `admin_operation_log` VALUES (536, 2, 'admin-panel/web-clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-15 10:43:56', '2022-10-15 10:43:56');
INSERT INTO `admin_operation_log` VALUES (537, 2, 'admin-panel/web-clients/1', 'PUT', '127.0.0.1', '{\"title\":\"Kab. Mamuju\",\"subtitle\":\"Pemerintah Kabupaten Mamuju\",\"active\":\"on\",\"_token\":\"0PyDzoZtlkYoo4fEorW3gOfK7uZkltVn22U2zhn4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin-panel\\/web-clients\"}', '2022-10-15 10:44:27', '2022-10-15 10:44:27');
INSERT INTO `admin_operation_log` VALUES (538, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-15 10:44:28', '2022-10-15 10:44:28');
INSERT INTO `admin_operation_log` VALUES (539, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 00:38:32', '2022-10-16 00:38:32');
INSERT INTO `admin_operation_log` VALUES (540, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 00:38:38', '2022-10-16 00:38:38');
INSERT INTO `admin_operation_log` VALUES (541, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 00:38:38', '2022-10-16 00:38:38');
INSERT INTO `admin_operation_log` VALUES (542, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 00:38:39', '2022-10-16 00:38:39');
INSERT INTO `admin_operation_log` VALUES (543, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 00:38:39', '2022-10-16 00:38:39');
INSERT INTO `admin_operation_log` VALUES (544, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 00:38:39', '2022-10-16 00:38:39');
INSERT INTO `admin_operation_log` VALUES (545, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 00:38:42', '2022-10-16 00:38:42');
INSERT INTO `admin_operation_log` VALUES (546, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:32:04', '2022-10-16 12:32:04');
INSERT INTO `admin_operation_log` VALUES (547, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:35:06', '2022-10-16 12:35:06');
INSERT INTO `admin_operation_log` VALUES (548, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:35:36', '2022-10-16 12:35:36');
INSERT INTO `admin_operation_log` VALUES (549, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:35:41', '2022-10-16 12:35:41');
INSERT INTO `admin_operation_log` VALUES (550, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:35:46', '2022-10-16 12:35:46');
INSERT INTO `admin_operation_log` VALUES (551, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:35:51', '2022-10-16 12:35:51');
INSERT INTO `admin_operation_log` VALUES (552, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:36:01', '2022-10-16 12:36:01');
INSERT INTO `admin_operation_log` VALUES (553, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:36:23', '2022-10-16 12:36:23');
INSERT INTO `admin_operation_log` VALUES (554, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:36:35', '2022-10-16 12:36:35');
INSERT INTO `admin_operation_log` VALUES (555, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:36:52', '2022-10-16 12:36:52');
INSERT INTO `admin_operation_log` VALUES (556, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:37:00', '2022-10-16 12:37:00');
INSERT INTO `admin_operation_log` VALUES (557, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:37:27', '2022-10-16 12:37:27');
INSERT INTO `admin_operation_log` VALUES (558, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:44:49', '2022-10-16 12:44:49');
INSERT INTO `admin_operation_log` VALUES (559, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:44:50', '2022-10-16 12:44:50');
INSERT INTO `admin_operation_log` VALUES (560, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:44:52', '2022-10-16 12:44:52');
INSERT INTO `admin_operation_log` VALUES (561, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 12:44:54', '2022-10-16 12:44:54');
INSERT INTO `admin_operation_log` VALUES (562, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '[]', '2022-10-16 15:01:41', '2022-10-16 15:01:41');
INSERT INTO `admin_operation_log` VALUES (563, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:01:54', '2022-10-16 15:01:54');
INSERT INTO `admin_operation_log` VALUES (564, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:01:57', '2022-10-16 15:01:57');
INSERT INTO `admin_operation_log` VALUES (565, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:01:58', '2022-10-16 15:01:58');
INSERT INTO `admin_operation_log` VALUES (566, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:02:02', '2022-10-16 15:02:02');
INSERT INTO `admin_operation_log` VALUES (567, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:02:02', '2022-10-16 15:02:02');
INSERT INTO `admin_operation_log` VALUES (568, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:04:02', '2022-10-16 15:04:02');
INSERT INTO `admin_operation_log` VALUES (569, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:04:54', '2022-10-16 15:04:54');
INSERT INTO `admin_operation_log` VALUES (570, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 15:04:59', '2022-10-16 15:04:59');
INSERT INTO `admin_operation_log` VALUES (571, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:05:20', '2022-10-16 15:05:20');
INSERT INTO `admin_operation_log` VALUES (572, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:07:47', '2022-10-16 15:07:47');
INSERT INTO `admin_operation_log` VALUES (573, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:08:22', '2022-10-16 15:08:22');
INSERT INTO `admin_operation_log` VALUES (574, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:08:42', '2022-10-16 15:08:42');
INSERT INTO `admin_operation_log` VALUES (575, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:09:04', '2022-10-16 15:09:04');
INSERT INTO `admin_operation_log` VALUES (576, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:09:20', '2022-10-16 15:09:20');
INSERT INTO `admin_operation_log` VALUES (577, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:10:21', '2022-10-16 15:10:21');
INSERT INTO `admin_operation_log` VALUES (578, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 15:11:15', '2022-10-16 15:11:15');
INSERT INTO `admin_operation_log` VALUES (579, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '[]', '2022-10-16 15:11:42', '2022-10-16 15:11:42');
INSERT INTO `admin_operation_log` VALUES (580, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:12:48', '2022-10-16 15:12:48');
INSERT INTO `admin_operation_log` VALUES (581, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:12:54', '2022-10-16 15:12:54');
INSERT INTO `admin_operation_log` VALUES (582, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:14:22', '2022-10-16 15:14:22');
INSERT INTO `admin_operation_log` VALUES (583, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:14:35', '2022-10-16 15:14:35');
INSERT INTO `admin_operation_log` VALUES (584, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:14:46', '2022-10-16 15:14:46');
INSERT INTO `admin_operation_log` VALUES (585, 2, 'admin-panel/web-clients/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:14:53', '2022-10-16 15:14:53');
INSERT INTO `admin_operation_log` VALUES (586, 2, 'admin-panel/web-clients/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:14:57', '2022-10-16 15:14:57');
INSERT INTO `admin_operation_log` VALUES (587, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:14:59', '2022-10-16 15:14:59');
INSERT INTO `admin_operation_log` VALUES (588, 2, 'admin-panel/web-clients/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:15:08', '2022-10-16 15:15:08');
INSERT INTO `admin_operation_log` VALUES (589, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:15:11', '2022-10-16 15:15:11');
INSERT INTO `admin_operation_log` VALUES (590, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:03', '2022-10-16 15:16:03');
INSERT INTO `admin_operation_log` VALUES (591, 2, 'admin-panel/web-articles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:20', '2022-10-16 15:16:20');
INSERT INTO `admin_operation_log` VALUES (592, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:28', '2022-10-16 15:16:28');
INSERT INTO `admin_operation_log` VALUES (593, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:34', '2022-10-16 15:16:34');
INSERT INTO `admin_operation_log` VALUES (594, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:36', '2022-10-16 15:16:36');
INSERT INTO `admin_operation_log` VALUES (595, 2, 'admin-panel/web-article-categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:39', '2022-10-16 15:16:39');
INSERT INTO `admin_operation_log` VALUES (596, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:42', '2022-10-16 15:16:42');
INSERT INTO `admin_operation_log` VALUES (597, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:44', '2022-10-16 15:16:44');
INSERT INTO `admin_operation_log` VALUES (598, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:46', '2022-10-16 15:16:46');
INSERT INTO `admin_operation_log` VALUES (599, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:16:50', '2022-10-16 15:16:50');
INSERT INTO `admin_operation_log` VALUES (600, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:17:10', '2022-10-16 15:17:10');
INSERT INTO `admin_operation_log` VALUES (601, 2, 'admin-panel/web-portfolios/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:17:20', '2022-10-16 15:17:20');
INSERT INTO `admin_operation_log` VALUES (602, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:17:24', '2022-10-16 15:17:24');
INSERT INTO `admin_operation_log` VALUES (603, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:17:34', '2022-10-16 15:17:34');
INSERT INTO `admin_operation_log` VALUES (604, 2, 'admin-panel/web-services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:17:39', '2022-10-16 15:17:39');
INSERT INTO `admin_operation_log` VALUES (605, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:17:46', '2022-10-16 15:17:46');
INSERT INTO `admin_operation_log` VALUES (606, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:18:15', '2022-10-16 15:18:15');
INSERT INTO `admin_operation_log` VALUES (607, 2, 'admin-panel/web-services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:18:25', '2022-10-16 15:18:25');
INSERT INTO `admin_operation_log` VALUES (608, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:18:28', '2022-10-16 15:18:28');
INSERT INTO `admin_operation_log` VALUES (609, 2, 'admin-panel/web-services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:18:31', '2022-10-16 15:18:31');
INSERT INTO `admin_operation_log` VALUES (610, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:18:35', '2022-10-16 15:18:35');
INSERT INTO `admin_operation_log` VALUES (611, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:18:43', '2022-10-16 15:18:43');
INSERT INTO `admin_operation_log` VALUES (612, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:18:49', '2022-10-16 15:18:49');
INSERT INTO `admin_operation_log` VALUES (613, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:18:51', '2022-10-16 15:18:51');
INSERT INTO `admin_operation_log` VALUES (614, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:19:08', '2022-10-16 15:19:08');
INSERT INTO `admin_operation_log` VALUES (615, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:19:11', '2022-10-16 15:19:11');
INSERT INTO `admin_operation_log` VALUES (616, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:19:13', '2022-10-16 15:19:13');
INSERT INTO `admin_operation_log` VALUES (617, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:19:14', '2022-10-16 15:19:14');
INSERT INTO `admin_operation_log` VALUES (618, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:19:16', '2022-10-16 15:19:16');
INSERT INTO `admin_operation_log` VALUES (619, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:19:17', '2022-10-16 15:19:17');
INSERT INTO `admin_operation_log` VALUES (620, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:19:24', '2022-10-16 15:19:24');
INSERT INTO `admin_operation_log` VALUES (621, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:20:19', '2022-10-16 15:20:19');
INSERT INTO `admin_operation_log` VALUES (622, 2, 'admin-panel/web-faqs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:20:38', '2022-10-16 15:20:38');
INSERT INTO `admin_operation_log` VALUES (623, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:20:41', '2022-10-16 15:20:41');
INSERT INTO `admin_operation_log` VALUES (624, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:14', '2022-10-16 15:21:14');
INSERT INTO `admin_operation_log` VALUES (625, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:15', '2022-10-16 15:21:15');
INSERT INTO `admin_operation_log` VALUES (626, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:16', '2022-10-16 15:21:16');
INSERT INTO `admin_operation_log` VALUES (627, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:17', '2022-10-16 15:21:17');
INSERT INTO `admin_operation_log` VALUES (628, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:18', '2022-10-16 15:21:18');
INSERT INTO `admin_operation_log` VALUES (629, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:19', '2022-10-16 15:21:19');
INSERT INTO `admin_operation_log` VALUES (630, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:21', '2022-10-16 15:21:21');
INSERT INTO `admin_operation_log` VALUES (631, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:22', '2022-10-16 15:21:22');
INSERT INTO `admin_operation_log` VALUES (632, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:25', '2022-10-16 15:21:25');
INSERT INTO `admin_operation_log` VALUES (633, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 15:21:26', '2022-10-16 15:21:26');
INSERT INTO `admin_operation_log` VALUES (634, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:30', '2022-10-16 16:47:30');
INSERT INTO `admin_operation_log` VALUES (635, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:31', '2022-10-16 16:47:31');
INSERT INTO `admin_operation_log` VALUES (636, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:33', '2022-10-16 16:47:33');
INSERT INTO `admin_operation_log` VALUES (637, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:35', '2022-10-16 16:47:35');
INSERT INTO `admin_operation_log` VALUES (638, 2, 'admin-panel/web-article-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:37', '2022-10-16 16:47:37');
INSERT INTO `admin_operation_log` VALUES (639, 2, 'admin-panel/web-faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:38', '2022-10-16 16:47:38');
INSERT INTO `admin_operation_log` VALUES (640, 2, 'admin-panel/web-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:42', '2022-10-16 16:47:42');
INSERT INTO `admin_operation_log` VALUES (641, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:43', '2022-10-16 16:47:43');
INSERT INTO `admin_operation_log` VALUES (642, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:45', '2022-10-16 16:47:45');
INSERT INTO `admin_operation_log` VALUES (643, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:46', '2022-10-16 16:47:46');
INSERT INTO `admin_operation_log` VALUES (644, 2, 'admin-panel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:48', '2022-10-16 16:47:48');
INSERT INTO `admin_operation_log` VALUES (645, 2, 'admin-panel/web-clients', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:49', '2022-10-16 16:47:49');
INSERT INTO `admin_operation_log` VALUES (646, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:50', '2022-10-16 16:47:50');
INSERT INTO `admin_operation_log` VALUES (647, 2, 'admin-panel/web-tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:51', '2022-10-16 16:47:51');
INSERT INTO `admin_operation_log` VALUES (648, 2, 'admin-panel/web-portfolios', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:52', '2022-10-16 16:47:52');
INSERT INTO `admin_operation_log` VALUES (649, 2, 'admin-panel/web-services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:54', '2022-10-16 16:47:54');
INSERT INTO `admin_operation_log` VALUES (650, 2, 'admin-panel/web-profiles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-10-16 16:47:55', '2022-10-16 16:47:55');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 9, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 10, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 11, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 12, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 13, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 14, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 15, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2022-10-13 15:33:10', '2022-10-13 15:33:10');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$C13gzCMpOHT2x4TbJkm1G.ifrJ689ZnfTI5tH5l1HP6J8HYrY49xy', 'Administrator', NULL, 'VtPgBli8XvhpqR6BFNOkOwiwjnZv2og7bV14GTa3370wO5P2vZU3iBR9mcdP', '2022-10-13 15:33:10', '2022-10-13 15:33:10');
INSERT INTO `admin_users` VALUES (2, 'awan', '$2y$10$032FNV4K4qqXu0jmwzrrq.79JiOd.cdTewWEiTlvwZM/9pRNxWdNK', 'M. Mattawang', 'images/68475014_2880967385306838_1323875140156522496_n.jpg', 'MnFGRhUn9bMAFzVfbNjhLVjf8XECiwuv6JrgbyaLJmk0aZVUTybLTpgh1bYc', '2022-10-13 16:07:18', '2022-10-13 16:07:18');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for web_article_categories
-- ----------------------------
DROP TABLE IF EXISTS `web_article_categories`;
CREATE TABLE `web_article_categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_article_categories
-- ----------------------------
INSERT INTO `web_article_categories` VALUES (1, 'WordPress', 'wordpress', '2022-10-14 09:12:37', '2022-10-14 09:12:37');
INSERT INTO `web_article_categories` VALUES (2, 'JavaScript', 'javascript', '2022-10-14 09:13:05', '2022-10-14 09:13:05');
INSERT INTO `web_article_categories` VALUES (3, 'Pelatihan IT', 'pelatihan-it', '2022-10-14 09:13:22', '2022-10-14 09:13:22');

-- ----------------------------
-- Table structure for web_articles
-- ----------------------------
DROP TABLE IF EXISTS `web_articles`;
CREATE TABLE `web_articles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `pic_main` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pic_all` json NULL,
  `body` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `publish_date` datetime NULL DEFAULT NULL,
  `active` smallint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_article_fk`(`category_id`) USING BTREE,
  CONSTRAINT `category_article_fk` FOREIGN KEY (`category_id`) REFERENCES `web_article_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_articles
-- ----------------------------
INSERT INTO `web_articles` VALUES (1, 'adafa', 'adafa', 'afaf', 3, 'articles/ec408ed7db50fb9132c9d44bd6e77f49.jpg', NULL, '<p>afafafa</p>', '2022-10-14 09:18:04', 1, '2022-10-14 09:18:32', '2022-10-14 09:27:32', NULL);

-- ----------------------------
-- Table structure for web_clients
-- ----------------------------
DROP TABLE IF EXISTS `web_clients`;
CREATE TABLE `web_clients`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pic_main` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `active` smallint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_clients
-- ----------------------------
INSERT INTO `web_clients` VALUES (1, 'Kab. Mamuju', 'Pemerintah Kabupaten Mamuju', 'clients/d6e9068ad220943d091fd3eb0342794f.png', 1, '2022-10-14 20:59:52', '2022-10-15 10:44:28', NULL);
INSERT INTO `web_clients` VALUES (2, 'Kab. Polewali Mandar', 'Pemerintah Kabupaten Polewali Mandar', 'clients/50d7b289ba3e643cae3a11e0a56b52c2.png', 1, '2022-10-14 21:00:30', '2022-10-14 21:08:20', NULL);
INSERT INTO `web_clients` VALUES (3, 'Kab. Majene', 'Pemerintah Kabupaten Majene', 'clients/b3778924f8b3a85ce051e7da7b53b330.png', 1, '2022-10-14 21:01:02', '2022-10-14 21:08:33', NULL);

-- ----------------------------
-- Table structure for web_faqs
-- ----------------------------
DROP TABLE IF EXISTS `web_faqs`;
CREATE TABLE `web_faqs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `answer` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `file_support` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `active` smallint(6) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_faqs
-- ----------------------------
INSERT INTO `web_faqs` VALUES (1, 'Apa itu SimDesa?', 'Sistem Informasi Digital Desa (SIMDES) adalah Sistem Informasi yang dirancang untuk menangani berbagai hal dalam pengurusan dalam desa. Mulai dari administrasi dan pelayanan desa menggunakan website ataupun aplikasi pada Android. Sehingga dapat membantu masalah pelayanan desa secara komputerisasi.', 'faqs/77610d9b8122bcaf4d06556819f94e33.pdf', 1, '2022-10-14 21:31:08', '2022-10-14 21:32:02');
INSERT INTO `web_faqs` VALUES (2, 'Mengapa Harus Bergabung Dengan SimDesa? ?', 'Di era modern saat ini kita tidak bisa lepas dari digitalisasi sehingga semuanya dilakukan melalui internet. Termasuk dengan pengurusan surat-surat ataupun administrasi sehingga diperlukan penunjang bagi masyarakat untuk mempermudah hal itu. Simdesa hadir dengan berbagai fitur yang dapat membantu masyarakat desa.', NULL, 1, '2022-10-14 21:32:26', '2022-10-14 21:32:26');

-- ----------------------------
-- Table structure for web_order_serveds
-- ----------------------------
DROP TABLE IF EXISTS `web_order_serveds`;
CREATE TABLE `web_order_serveds`  (
  `id` int(11) NOT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  `num_invoice` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_service_id` int(11) NULL DEFAULT NULL,
  `customer_status_order` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_company_or_institution` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verify_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verify_noted` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `verify_price` decimal(10, 2) NULL DEFAULT NULL,
  `verify_ppn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verify_status_paid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verify_status_dev` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verify_start_dev` date NULL DEFAULT NULL,
  `verify_finish_dev` date NULL DEFAULT NULL,
  `verify_duration_dev` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_order_serveds
-- ----------------------------

-- ----------------------------
-- Table structure for web_orders
-- ----------------------------
DROP TABLE IF EXISTS `web_orders`;
CREATE TABLE `web_orders`  (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company_or_institution` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `service_id` int(11) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ticket_number` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_orders
-- ----------------------------

-- ----------------------------
-- Table structure for web_portfolio_web_tag
-- ----------------------------
DROP TABLE IF EXISTS `web_portfolio_web_tag`;
CREATE TABLE `web_portfolio_web_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_portfolio_id` int(11) NULL DEFAULT NULL,
  `web_tag_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `portfolio_fk`(`web_portfolio_id`) USING BTREE,
  INDEX `portfolio_tag_fk`(`web_tag_id`) USING BTREE,
  CONSTRAINT `portfolio_fk` FOREIGN KEY (`web_portfolio_id`) REFERENCES `web_portfolios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `portfolio_tag_fk` FOREIGN KEY (`web_tag_id`) REFERENCES `web_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_portfolio_web_tag
-- ----------------------------
INSERT INTO `web_portfolio_web_tag` VALUES (1, 3, 1, NULL, NULL);
INSERT INTO `web_portfolio_web_tag` VALUES (4, 4, 1, NULL, NULL);
INSERT INTO `web_portfolio_web_tag` VALUES (5, 5, 5, NULL, NULL);

-- ----------------------------
-- Table structure for web_portfolios
-- ----------------------------
DROP TABLE IF EXISTS `web_portfolios`;
CREATE TABLE `web_portfolios`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `body` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `client` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `finish_date` date NULL DEFAULT NULL,
  `lat_x` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `long_y` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pic_main` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pic_all` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `active` smallint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_portfolios
-- ----------------------------
INSERT INTO `web_portfolios` VALUES (3, 'Sistem Informasi Hukum (SISKUM)', 'afafaf-afaf', 'Bagian Hukum & Perundang-undangan Polewali Mandar', '<p>Nama Proyek : Sistem Informasi Hukum (SISKUM)</p>\r\n\r\n<p>Pemberi Tugas : Bagian Hukum &amp; Perundang-undangan Polewali Mandar</p>\r\n\r\n<p>Lokasi : Kantor Bupati Polewali Mandar Waktu : April 2013</p>', 'Bagian Hukum & Perundang-undangan Polewali Mandar', 'Kantor Bupati Polewali Mandar', '2013-04-01', NULL, NULL, 'portfolios/083aee27d6b76fd746ed8d8512118c99.jpg', NULL, 1, '2022-10-14 11:40:27', '2022-10-14 19:00:16', NULL);
INSERT INTO `web_portfolios` VALUES (4, 'Website Jaringan Dokumentasi & Informasi Hukum (JDIH)', 'website-jaringan-dokumentasi-informasi-hukum-jdih', 'Bagian Hukum & Perundang-undangan Polewali Mandar', '<p>Nama Proyek : Website Jaringan Dokumentasi &amp; Informasi Hukum (JDIH) Pemberi Tugas : Bagian Hukum &amp; Perundang-undangan Polewali Mandar Lokasi : Kantor Bupati Polewali Mandar Waktu : April 2013</p>', NULL, NULL, NULL, NULL, NULL, 'portfolios/b530198b24ef68b3d1870d68082896aa.jpg', NULL, 1, '2022-10-14 12:35:51', '2022-10-14 19:00:38', NULL);
INSERT INTO `web_portfolios` VALUES (5, 'Bimtek LPPD & LKPJ Desa, Lurah dan Camat', 'bimtek-lppd-lkpj-desa-lurah-dan-camat', 'BPMPD Kab. Majene', '<p>Nama Proyek : Bimtek LPPD &amp; LKPJ Desa, Lurah dan Camat Pemberi Tugas : BPMPD Kab. Majene Lokasi : Bandung Waktu : Oktober 2013</p>', NULL, NULL, NULL, NULL, NULL, 'portfolios/6bcc4637a82f2eda8fc98357198d6e8e.jpg', NULL, 1, '2022-10-14 12:38:11', '2022-10-14 19:00:51', NULL);

-- ----------------------------
-- Table structure for web_profiles
-- ----------------------------
DROP TABLE IF EXISTS `web_profiles`;
CREATE TABLE `web_profiles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `website_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `website_logo_header` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `website_logo_footer` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `website_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_fax` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_fb` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_ig` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_twitter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_wa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_author` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_owner` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `about_us` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `history` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `visi_misi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `service` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `product` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_profiles
-- ----------------------------
INSERT INTO `web_profiles` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Salam Hangat Dari Tim Tanniewa Putra, Kami adalah tim yang membantu dalam menentukan layanan yang sesuai atau menciptakan produk khusus di bidang IT yang disesuaikan dengan kebutuhan perusahaan atau instansi anda. Sebagai Konsultan IT kami berupaya melayani keperluan dibidang IT dari berupa aplikasi, jaringan, keamananan dan perawatannya. Selain sebagai tim konsultan IT, kami juga malakukan riset dari project yang kami terima dan riset perkembangan teknologi saat ini, kami berupaya mengembangkan teknologi dan menciptakan konsep baru untuk memaksimalkan pelayanan.</p>', NULL, NULL, NULL, NULL, '2022-10-14 22:11:51', '2022-10-14 22:11:51');

-- ----------------------------
-- Table structure for web_services
-- ----------------------------
DROP TABLE IF EXISTS `web_services`;
CREATE TABLE `web_services`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pic_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pic_main` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `body` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `active` smallint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_services
-- ----------------------------
INSERT INTO `web_services` VALUES (1, 'E-GOVERMENT', 'Mengembangkan aplikasi pelayanan pemerintahan', 'e-goverment', 'fa-bank', NULL, '<p>Mengembangkan aplikasi pelayanan pemerintahan</p>', 1, '2022-10-14 12:10:55', '2022-10-14 12:10:55', NULL);
INSERT INTO `web_services` VALUES (2, 'GIS Application', 'Kami membangun Geographic information System (GIS) berdasarkan data spasial / Koordinat', 'gis-application', 'fa-globe', NULL, '<p>Kami membangun Geographic information System (GIS) berdasarkan data spasial / Koordinat</p>', 1, '2022-10-14 12:11:41', '2022-10-14 12:11:41', NULL);
INSERT INTO `web_services` VALUES (3, 'NETWORKING', 'Kami melayani pemasangan dan pemeliharaan jaringan', 'networking', 'fa-internet-explorer', NULL, '<p>Kami melayani pemasangan dan pemeliharaan jaringan</p>', 1, '2022-10-14 12:12:16', '2022-10-14 12:12:16', NULL);
INSERT INTO `web_services` VALUES (4, 'Cuztomize Application', 'Anda dapat memesan Aplikasi yang anda inginkan, baik itu perusahaan atau kebutuhan pribadi anda', 'cuztomize-application', 'fa-cogs', NULL, '<p>Anda dapat memesan Aplikasi yang anda inginkan, baik itu perusahaan atau kebutuhan pribadi anda</p>', 1, '2022-10-14 12:12:54', '2022-10-14 12:12:54', NULL);

-- ----------------------------
-- Table structure for web_tags
-- ----------------------------
DROP TABLE IF EXISTS `web_tags`;
CREATE TABLE `web_tags`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_tags
-- ----------------------------
INSERT INTO `web_tags` VALUES (1, 'Website', 'website', '2022-10-14 11:30:55', '2022-10-14 11:30:55');
INSERT INTO `web_tags` VALUES (2, 'Andorid App', 'andorid-app', '2022-10-14 11:31:08', '2022-10-14 11:31:08');
INSERT INTO `web_tags` VALUES (3, 'Ios App', 'ios-app', '2022-10-14 12:13:24', '2022-10-14 12:13:24');
INSERT INTO `web_tags` VALUES (4, 'GIS', 'gis', '2022-10-14 12:13:43', '2022-10-14 12:13:43');
INSERT INTO `web_tags` VALUES (5, 'Bimtek dan Pelatihan', 'bimtek-dan-pelatihan', '2022-10-14 12:36:50', '2022-10-14 12:36:50');

SET FOREIGN_KEY_CHECKS = 1;
