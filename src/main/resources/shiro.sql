/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50629
Source Host           : localhost:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2017-10-10 14:50:19
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id`   INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_name` VARCHAR(64)               DEFAULT NULL,
  `created_time`    DATETIME                  DEFAULT NULL,
  `update_time`     TIMESTAMP        NULL     DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`permission_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id`      INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name`    VARCHAR(64)               DEFAULT NULL,
  `created_time` DATETIME                  DEFAULT NULL,
  `update_time`  TIMESTAMP        NULL     DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id`            INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` INT(10) UNSIGNED NOT NULL,
  `role_id`       INT(10) UNSIGNED          DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id`      INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name`    VARCHAR(64)               DEFAULT NULL,
  `password`     VARCHAR(64)               DEFAULT NULL,
  `created_time` DATETIME                  DEFAULT NULL,
  `update_time`  TIMESTAMP        NULL     DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id`      INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT(10) UNSIGNED          DEFAULT NULL,
  `role_id` INT(10) UNSIGNED          DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;
