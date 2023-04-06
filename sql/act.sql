/*
 Navicat Premium Data Transfer

 Source Server         : [test]
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : 8.218.2.11:31176
 Source Schema         : music_nft

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 03/04/2023 16:46:08
*/

CREATE TABLE `act`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `start_time` int(11) NULL DEFAULT NULL COMMENT '活动开始时间',
  `end_time` int(11) NULL DEFAULT NULL COMMENT '活动结束时间',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '活动详情描述（富文本）',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动封面',
  `cover_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动封面-移动端',
  `mission_id` bigint(20) NULL DEFAULT NULL COMMENT '关联 任务id ',
  `state` tinyint(4) NULL DEFAULT NULL COMMENT '状态 0-禁用 1-启用',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `type` tinyint(4) NULL DEFAULT 1 COMMENT '活动类型  1-常规活动 2-临时活动 3-预告活动 4-版权收益活动 5-众投活动',
  `special_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动专题页封面',
  `special_cover_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活动专题页封面-移动端',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序（数字越大越靠前）',
  `is_verify` tinyint(4) NULL DEFAULT 0 COMMENT '是否开启验证（0-不开启 1-开启）',
  `is_enroll` tinyint(4) NULL DEFAULT 0 COMMENT '是否开启报名（0-不开启 1-开启）',
  `enroll_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '报名详情页',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户uid',
  PRIMARY KEY (`id`) USING BTREE,
  FULLTEXT INDEX `fx_index`(`name`, `details`) WITH PARSER `ngram`
) ENGINE = InnoDB AUTO_INCREMENT = 703 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

