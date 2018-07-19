/*
 Navicat Premium Data Transfer

 Source Server         : 39.106.149.2
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : 39.106.149.2:3306
 Source Schema         : oasystem

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 18/07/2018 10:23:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `deptno` int(4) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `isdelete` int(4) NULL DEFAULT 0,
  PRIMARY KEY (`deptno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '人事部', 0);
INSERT INTO `dept` VALUES (2, '市场部', 0);
INSERT INTO `dept` VALUES (3, '人力资源部', 0);
INSERT INTO `dept` VALUES (4, '开发部', 0);
INSERT INTO `dept` VALUES (5, '财务部', 0);
INSERT INTO `dept` VALUES (6, '网络工程部', 1);
INSERT INTO `dept` VALUES (7, '行政部', 0);
INSERT INTO `dept` VALUES (8, '测试部', 0);

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `empno` int(6) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `realname` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deptno` int(4) NULL DEFAULT NULL,
  `isdelete` int(4) NULL DEFAULT 0,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`empno`) USING BTREE,
  UNIQUE INDEX `token`(`token`) USING BTREE,
  INDEX `fk_deptno`(`deptno`) USING BTREE,
  CONSTRAINT `fk_deptno` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, 'admin', '系统管理员', '123456', '男', 'admin@hugo.com', '46b533964071477fbc3a634737e003ec', NULL, 0, 'img/vv.jpg');
INSERT INTO `emp` VALUES (2, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', 'e67362ffdc3148e794471bed84080784', 1, 0, NULL);
INSERT INTO `emp` VALUES (3, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', 'bd3b9de4286240638d044fe1f2cf5fd7', 1, 0, NULL);
INSERT INTO `emp` VALUES (4, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (5, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (6, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (7, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (8, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (9, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (10, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (11, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (12, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 3, 0, NULL);
INSERT INTO `emp` VALUES (13, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 2, 0, NULL);
INSERT INTO `emp` VALUES (14, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 2, 0, NULL);
INSERT INTO `emp` VALUES (15, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 2, 0, NULL);
INSERT INTO `emp` VALUES (16, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 2, 0, NULL);
INSERT INTO `emp` VALUES (17, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (18, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 4, 0, NULL);
INSERT INTO `emp` VALUES (19, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (20, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (21, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (22, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (23, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (24, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (25, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (26, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (27, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (28, 'zhangsan', '张三', '123456', '男', 'zhangsan@hugo.com', NULL, 1, 0, NULL);
INSERT INTO `emp` VALUES (29, 'lisi', '李四', '123456', '女', 'lisi@hugo.com', NULL, 1, 0, NULL);

-- ----------------------------
-- Table structure for emprole
-- ----------------------------
DROP TABLE IF EXISTS `emprole`;
CREATE TABLE `emprole`  (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `empno` int(6) NULL DEFAULT NULL,
  `roleno` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE,
  INDEX `fk_emp1`(`empno`) USING BTREE,
  INDEX `fk_role2`(`roleno`) USING BTREE,
  CONSTRAINT `fk_emp1` FOREIGN KEY (`empno`) REFERENCES `emp` (`empno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_role2` FOREIGN KEY (`roleno`) REFERENCES `role` (`roleno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of emprole
-- ----------------------------
INSERT INTO `emprole` VALUES (1, 1, 1);
INSERT INTO `emprole` VALUES (2, 2, 2);
INSERT INTO `emprole` VALUES (3, 3, 3);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `menuno` int(4) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `parentno` int(4) NULL DEFAULT 0,
  `type` int(4) NULL DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menuno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '人事管理', 0, 0, NULL);
INSERT INTO `menu` VALUES (2, '部门管理', 1, 0, 'depart.jsp');
INSERT INTO `menu` VALUES (3, '新增部门', 2, 1, 'addDepart.jsp');
INSERT INTO `menu` VALUES (4, '查询部门', 2, 1, 'SelectAllDeptServlet');
INSERT INTO `menu` VALUES (5, '用户管理', 1, 0, 'user.jsp');
INSERT INTO `menu` VALUES (6, '日程管理', 0, 0, NULL);
INSERT INTO `menu` VALUES (7, '我的日程', 6, 0, 'schedule.jsp');
INSERT INTO `menu` VALUES (8, '部门日程', 6, 0, 'deptSchedule.jsp');
INSERT INTO `menu` VALUES (9, '系统管理', 0, 0, NULL);
INSERT INTO `menu` VALUES (10, '角色管理', 9, 0, 'role.jsp');

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege`  (
  `authno` int(4) NOT NULL AUTO_INCREMENT,
  `roleno` int(4) NULL DEFAULT NULL,
  `menuno` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`authno`) USING BTREE,
  INDEX `fk_role`(`roleno`) USING BTREE,
  INDEX `fk_menu`(`menuno`) USING BTREE,
  CONSTRAINT `fk_menu` FOREIGN KEY (`menuno`) REFERENCES `menu` (`menuno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_role` FOREIGN KEY (`roleno`) REFERENCES `role` (`roleno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES (29, 2, 1);
INSERT INTO `privilege` VALUES (30, 2, 2);
INSERT INTO `privilege` VALUES (31, 2, 3);
INSERT INTO `privilege` VALUES (32, 2, 4);
INSERT INTO `privilege` VALUES (33, 2, 5);
INSERT INTO `privilege` VALUES (34, 2, 6);
INSERT INTO `privilege` VALUES (35, 2, 7);
INSERT INTO `privilege` VALUES (36, 2, 8);
INSERT INTO `privilege` VALUES (92, 3, 1);
INSERT INTO `privilege` VALUES (93, 3, 6);
INSERT INTO `privilege` VALUES (94, 3, 2);
INSERT INTO `privilege` VALUES (95, 3, 5);
INSERT INTO `privilege` VALUES (96, 3, 8);
INSERT INTO `privilege` VALUES (97, 3, 3);
INSERT INTO `privilege` VALUES (98, 3, 4);
INSERT INTO `privilege` VALUES (99, 1, 1);
INSERT INTO `privilege` VALUES (100, 1, 6);
INSERT INTO `privilege` VALUES (101, 1, 9);
INSERT INTO `privilege` VALUES (102, 1, 2);
INSERT INTO `privilege` VALUES (103, 1, 5);
INSERT INTO `privilege` VALUES (104, 1, 7);
INSERT INTO `privilege` VALUES (105, 1, 8);
INSERT INTO `privilege` VALUES (106, 1, 10);
INSERT INTO `privilege` VALUES (107, 1, 3);
INSERT INTO `privilege` VALUES (108, 1, 4);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleno` int(4) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `roledesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '系统管理员', 'OA系统的最高管理员');
INSERT INTO `role` VALUES (2, '人事部经理', '人事部经理');
INSERT INTO `role` VALUES (3, '人事部员工', '人事部员工');

-- ----------------------------
-- Table structure for schedu
-- ----------------------------
DROP TABLE IF EXISTS `schedu`;
CREATE TABLE `schedu`  (
  `scheno` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `start` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `end` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `empno` int(6) NULL DEFAULT NULL,
  `deptno` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`scheno`) USING BTREE,
  INDEX `fk_dept1`(`deptno`) USING BTREE,
  INDEX `fk_emp`(`empno`) USING BTREE,
  CONSTRAINT `fk_dept1` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_emp` FOREIGN KEY (`empno`) REFERENCES `emp` (`empno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
