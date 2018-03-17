/*
 Navicat Premium Data Transfer

 Source Server         : Oracle
 Source Server Type    : Oracle
 Source Server Version : 100200
 Source Host           : localhost:1521
 Source Schema         : JSD

 Target Server Type    : Oracle
 Target Server Version : 100200
 File Encoding         : 65001

 Date: 17/03/2018 13:14:14
*/


-- ----------------------------
-- Table structure for SSM_MOVIE
-- ----------------------------
DROP TABLE "JSD"."SSM_MOVIE";
CREATE TABLE "JSD"."SSM_MOVIE" (
  "ID" NUMBER(38) NOT NULL ,
  "FILMCODE" VARCHAR2(255 BYTE) ,
  "FILMNAME" VARCHAR2(255 BYTE) ,
  "FILMPIC" VARCHAR2(255 BYTE) ,
  "YEARS" VARCHAR2(255 BYTE) ,
  "TYPES" VARCHAR2(255 BYTE) ,
  "LANGUAGE" VARCHAR2(255 BYTE) ,
  "CAPTION" VARCHAR2(255 BYTE) ,
  "DIRECTOR" VARCHAR2(255 BYTE) ,
  "ACTORS" VARCHAR2(255 BYTE) ,
  "RELEASETIME" VARCHAR2(255 BYTE) ,
  "PLAYROOM" VARCHAR2(255 BYTE) ,
  "PLAYTIME" DATE ,
  "REMARKS" VARCHAR2(255 BYTE) ,
  "DELFLAG" VARCHAR2(255 BYTE) 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SSM_MOVIE
-- ----------------------------
INSERT INTO "JSD"."SSM_MOVIE" VALUES ('1', '0x001', '炉石传说', '默认', '2018-03-14', '牌类竞技', 'EN', '阿古斯', '古尔丹', '阿古斯', '2018-11-11', 'VIP-3-ROOM', TO_DATE('2018-03-29 11:21:00', 'SYYYY-MM-DD HH24:MI:SS'), '牌类游戏,烧脑游戏.益智游戏', '0');
INSERT INTO "JSD"."SSM_MOVIE" VALUES ('3', '0x002', '小王子', 'default', '2222-11-11', 'action/humorous', 'English/Chinese', 'default', 'Peter.Pan', '小飞侠', '2222-11-10', 'VIP-5-ROOM', TO_DATE('2018-03-14 15:41:00', 'SYYYY-MM-DD HH24:MI:SS'), 'intelligent/excellent/greate', '0');
INSERT INTO "JSD"."SSM_MOVIE" VALUES ('2', '0x003', '小兵张嘎', 'default', '2222-10-10', '抗日神剧', 'Chinese', '小孩', '大人', '张嘎', '2222-10-09', 'VIP-6-ROOM', TO_DATE('2018-03-28 16:09:00', 'SYYYY-MM-DD HH24:MI:SS'), '抗日神剧', '0');

-- ----------------------------
-- Table structure for SSM_USER
-- ----------------------------
DROP TABLE "JSD"."SSM_USER";
CREATE TABLE "JSD"."SSM_USER" (
  "ID" VARCHAR2(255 BYTE) NOT NULL ,
  "USERNAME" VARCHAR2(255 BYTE) NOT NULL ,
  "PASSWORD" VARCHAR2(255 BYTE) 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SSM_USER
-- ----------------------------
INSERT INTO "JSD"."SSM_USER" VALUES ('001', 'jsd', 'jsd');
INSERT INTO "JSD"."SSM_USER" VALUES ('24', 'yuri', 'yuri');
INSERT INTO "JSD"."SSM_USER" VALUES ('43', 'lushi', 'lushi');

-- ----------------------------
-- Primary Key structure for table SSM_MOVIE
-- ----------------------------
ALTER TABLE "JSD"."SSM_MOVIE" ADD CONSTRAINT "SYS_C004483" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table SSM_MOVIE
-- ----------------------------
ALTER TABLE "JSD"."SSM_MOVIE" ADD CONSTRAINT "SYS_C004080" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "JSD"."SSM_MOVIE" ADD CONSTRAINT "SYS_C004484" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table SSM_USER
-- ----------------------------
ALTER TABLE "JSD"."SSM_USER" ADD CONSTRAINT "SYS_C004468" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table SSM_USER
-- ----------------------------
ALTER TABLE "JSD"."SSM_USER" ADD CONSTRAINT "SYS_C004081" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "JSD"."SSM_USER" ADD CONSTRAINT "SYS_C004082" CHECK ("USERNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "JSD"."SSM_USER" ADD CONSTRAINT "SYS_C004469" CHECK ("USERNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
