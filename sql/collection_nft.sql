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

 Date: 03/04/2023 16:36:26
*/

CREATE TABLE `collection_nft`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mint_amount` int(11) NULL DEFAULT NULL COMMENT 'nft铸造总量',
  `like_count` int(11) NULL DEFAULT NULL COMMENT '点赞数',
  `collection_count` int(11) NULL DEFAULT NULL COMMENT '收藏数',
  `issue_date` date NULL DEFAULT NULL COMMENT '发行日期',
  `create_time` int(32) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(32) NULL DEFAULT NULL COMMENT '更新时间',
  `topic_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主题编号',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面',
  `cover_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'NFT封面-移动端',
  `starting_token_id` int(11) NULL DEFAULT NULL COMMENT 'NFT铸造TokenId起始值',
  `type` tinyint(4) NULL DEFAULT 0 COMMENT '类型 0-普通藏品 1-版权收益藏品',
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'NFT系列简介',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系列名称',
  `issue_user_id` bigint(20) NULL DEFAULT NULL COMMENT '发行方用户 ID',
  `is_blind_box` tinyint(4) NULL DEFAULT NULL COMMENT '是否是盲盒 0-否 1-是',
  `detail_drawing` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详情图',
  `detail_drawing_mobile` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详情图-移动端',
  `video` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详情页-视频',
  `nft_basic_id` bigint(20) NULL DEFAULT NULL COMMENT '收藏品NFT基础信息ID',
  `is_ration` tinyint(4) NULL DEFAULT 1 COMMENT '是否定量 0-不确定数量 1-确定数量 (盲盒下有效，如果定量则该NFT下每个类型最终数量只有一个；如果不定量则根据概率决定每个类型的最终数量)',
  `special_cover` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系列专题封面',
  `special_cover_mobile` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系列专题封面-移动端',
  `music_id` bigint(20) NULL DEFAULT NULL COMMENT '版权收益音乐ID（音频类NFT可绑）',
  `generate_type` tinyint(4) NULL DEFAULT 1 COMMENT 'tokenId生成规则（1-递增，2-随机）',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户uid,不为空则为用户创建',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 196 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收藏品NFT表' ROW_FORMAT = Dynamic;

