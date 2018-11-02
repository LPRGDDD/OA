/*
Navicat MySQL Data Transfer

Source Server         : lxm
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : wyait

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2018-11-02 22:59:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address_book`
-- ----------------------------
DROP TABLE IF EXISTS `address_book`;
CREATE TABLE `address_book` (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `psn_name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `birthday` varchar(100) DEFAULT NULL,
  `ministration` varchar(100) DEFAULT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `add_dept` varchar(500) DEFAULT NULL,
  `post_no_dept` varchar(50) DEFAULT NULL,
  `tel_no_dept` varchar(100) DEFAULT NULL,
  `fax_no_dept` varchar(50) DEFAULT NULL,
  `add_home` varchar(500) DEFAULT NULL,
  `post_no_home` varchar(50) DEFAULT NULL,
  `tel_no_home` varchar(100) DEFAULT NULL,
  `moble_no` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `oicq_noqq` varchar(50) DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`add_id`),
  KEY `FK_ADDRESS__REFERENCE_TB_TXGRO` (`group_id`),
  CONSTRAINT `FK_ADDRESS__REFERENCE_TB_TXGRO` FOREIGN KEY (`group_id`) REFERENCES `tb_txgroup` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_book
-- ----------------------------

-- ----------------------------
-- Table structure for `apply`
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `ApId` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) DEFAULT NULL,
  `sId` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `TId` int(11) DEFAULT NULL,
  `ApPrice` int(11) NOT NULL,
  `ApNum` int(11) NOT NULL,
  `ApBei` varchar(256) NOT NULL,
  `ApName` varchar(256) DEFAULT NULL,
  `ApFlag` varchar(256) DEFAULT NULL,
  `ApDate` date DEFAULT NULL,
  `ApOperator` varchar(256) DEFAULT NULL,
  `ApState` int(11) DEFAULT NULL,
  `ApQty` int(11) DEFAULT NULL,
  `ApReson` varchar(256) DEFAULT NULL,
  `ApCompany` varchar(256) DEFAULT NULL,
  `band` varchar(256) DEFAULT NULL,
  `cycleNo` int(11) DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `deptId` int(11) DEFAULT NULL,
  `ApKeeper` varchar(256) DEFAULT NULL,
  `grantor` varchar(256) DEFAULT NULL,
  `grantorStatus` int(11) DEFAULT NULL,
  `deptManger` varchar(256) DEFAULT NULL,
  `deptStatus` int(11) DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `returnStatus` int(11) DEFAULT NULL,
  `returnReason` varchar(256) DEFAULT NULL,
  `Available` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ApId`),
  UNIQUE KEY `shenl_PK` (`ApId`),
  KEY `Relationship_5_FK` (`cId`),
  KEY `Relationship_7_FK` (`sId`),
  KEY `FK_APPLY_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_APPLY_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_APPLY_RELATIONS_COURT` FOREIGN KEY (`cId`) REFERENCES `court` (`cId`),
  CONSTRAINT `FK_APPLY_RELATIONS_SHOP` FOREIGN KEY (`sId`) REFERENCES `shop` (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------

-- ----------------------------
-- Table structure for `applyset`
-- ----------------------------
DROP TABLE IF EXISTS `applyset`;
CREATE TABLE `applyset` (
  `AsId` int(11) NOT NULL AUTO_INCREMENT,
  `ApId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `AsCun` varchar(256) NOT NULL,
  `AsType` varchar(256) NOT NULL,
  `AsShop` varchar(256) NOT NULL,
  `AsPrice` varchar(256) NOT NULL,
  `AsNum` int(11) NOT NULL,
  `AsBumen` int(11) NOT NULL,
  `AsBei` varchar(256) NOT NULL,
  PRIMARY KEY (`AsId`),
  UNIQUE KEY `sljl_PK` (`AsId`),
  KEY `Relationship_9_FK` (`ApId`),
  CONSTRAINT `FK_APPLYSET_RELATIONS_APPLY` FOREIGN KEY (`ApId`) REFERENCES `apply` (`ApId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of applyset
-- ----------------------------

-- ----------------------------
-- Table structure for `attend_rule`
-- ----------------------------
DROP TABLE IF EXISTS `attend_rule`;
CREATE TABLE `attend_rule` (
  `dtId` int(11) NOT NULL,
  `overtime_hour` int(11) DEFAULT NULL,
  `overtime_bonus` double DEFAULT NULL,
  `late_hour` int(11) DEFAULT NULL,
  `late_bonus` double DEFAULT NULL,
  `eraly_hour` int(11) DEFAULT NULL,
  `eraly_bonus` double DEFAULT NULL,
  `one_late_hour` int(11) DEFAULT NULL,
  `one_eraly_hour` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attend_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `court`
-- ----------------------------
DROP TABLE IF EXISTS `court`;
CREATE TABLE `court` (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `Id` int(11) DEFAULT NULL,
  `tId` int(11) DEFAULT NULL,
  `cName` varchar(256) NOT NULL,
  PRIMARY KEY (`cId`),
  UNIQUE KEY `kucun_PK` (`cId`),
  KEY `FK_COURT_REFERENCE_TB_ADMIN` (`Id`),
  CONSTRAINT `FK_COURT_REFERENCE_TB_ADMIN` FOREIGN KEY (`Id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of court
-- ----------------------------

-- ----------------------------
-- Table structure for `dutyroster`
-- ----------------------------
DROP TABLE IF EXISTS `dutyroster`;
CREATE TABLE `dutyroster` (
  `drId` int(11) NOT NULL AUTO_INCREMENT,
  `scid` int(11) DEFAULT NULL,
  `drNameId` varchar(50) DEFAULT NULL,
  `drnameId2` varchar(50) DEFAULT NULL,
  `drName1` varchar(50) DEFAULT NULL,
  `drName2` varchar(50) DEFAULT NULL,
  `dtname` varchar(50) DEFAULT NULL,
  `dtDate_start` date DEFAULT NULL,
  `dtDate_end` date DEFAULT NULL,
  `dtstate` int(11) DEFAULT NULL,
  `monday` int(11) DEFAULT NULL,
  `tuesday` int(11) DEFAULT NULL,
  `wednesday` int(11) DEFAULT NULL,
  `thursday` int(11) DEFAULT NULL,
  `friday` int(11) DEFAULT NULL,
  `saturday` int(11) DEFAULT NULL,
  `sunday` int(11) DEFAULT NULL,
  PRIMARY KEY (`drId`),
  KEY `FK_DUTYROST_REFERENCE_SCHEDULE` (`scid`),
  CONSTRAINT `FK_DUTYROST_REFERENCE_SCHEDULE` FOREIGN KEY (`scid`) REFERENCES `schedule` (`scid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dutyroster
-- ----------------------------
INSERT INTO `dutyroster` VALUES ('1', '3', '财务部,', 'test,', '4,', '18,', '逯宪明', '2018-10-01', '2018-10-31', '1', null, null, null, null, null, null, null);
INSERT INTO `dutyroster` VALUES ('2', '2', '总经办,', 'test,', '1,', '18,', 'g', '2018-10-29', '2018-10-31', '0', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `examination`
-- ----------------------------
DROP TABLE IF EXISTS `examination`;
CREATE TABLE `examination` (
  `exId` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(50) DEFAULT NULL,
  `staff` varchar(50) DEFAULT NULL,
  `departmentName` varchar(50) DEFAULT NULL,
  `staffName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`exId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examination
-- ----------------------------
INSERT INTO `examination` VALUES ('1', '1,2,3,4,', '1,20,', '总经办,综合管理部,人力资源部,财务部,', 'admin,王宝强,');
INSERT INTO `examination` VALUES ('2', '1,', '18,', '总经办,', 'test,');
INSERT INTO `examination` VALUES ('3', '3,4,5,', '1,', '人力资源部,财务部,行政部,', 'admin,');
INSERT INTO `examination` VALUES ('4', '2,3,', '1,3,', '综合管理部,人力资源部,', 'admin,');
INSERT INTO `examination` VALUES ('5', '1,2,', '1,3,4,', '总经办,综合管理部,', 'admin,');
INSERT INTO `examination` VALUES ('6', '1,2,', '1,', '总经办,综合管理部,', 'admin,');
INSERT INTO `examination` VALUES ('7', '1,3,', '19,', '总经办,人力资源部,', '逯宪明,');

-- ----------------------------
-- Table structure for `examinationrecord`
-- ----------------------------
DROP TABLE IF EXISTS `examinationrecord`;
CREATE TABLE `examinationrecord` (
  `erId` int(11) NOT NULL AUTO_INCREMENT,
  `sId` int(11) DEFAULT NULL,
  `censor_code` int(11) DEFAULT NULL,
  `check_user` varchar(50) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`erId`),
  KEY `FK_EXAMINAT_REFERENCE_SYNTHESI` (`sId`),
  CONSTRAINT `FK_EXAMINAT_REFERENCE_SYNTHESI` FOREIGN KEY (`sId`) REFERENCES `synthesis` (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examinationrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `fafang`
-- ----------------------------
DROP TABLE IF EXISTS `fafang`;
CREATE TABLE `fafang` (
  `faId` int(11) NOT NULL AUTO_INCREMENT,
  `RaId` int(11) NOT NULL,
  `faName` varchar(256) NOT NULL,
  `faType` varchar(256) NOT NULL,
  `faShen` varchar(256) NOT NULL,
  `faNum` int(11) NOT NULL,
  `faDate` date NOT NULL,
  `faShenpi` varchar(256) NOT NULL,
  `faStatu` int(11) NOT NULL,
  `faCaozuo` varchar(256) NOT NULL,
  `faBei` varchar(256) NOT NULL,
  `faStatu2` int(11) NOT NULL,
  PRIMARY KEY (`faId`),
  UNIQUE KEY `ffb_PK` (`faId`),
  KEY `Relationship_11_FK` (`RaId`),
  CONSTRAINT `FK_FAFANG_RELATIONS_RATI` FOREIGN KEY (`RaId`) REFERENCES `rati` (`RaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fafang
-- ----------------------------

-- ----------------------------
-- Table structure for `fafangset`
-- ----------------------------
DROP TABLE IF EXISTS `fafangset`;
CREATE TABLE `fafangset` (
  `fsId` int(11) NOT NULL AUTO_INCREMENT,
  `faId` int(11) NOT NULL,
  `fsName` varchar(256) NOT NULL,
  `fsShenlin` varchar(256) NOT NULL,
  `fsNum` int(11) NOT NULL,
  `fsStatu` int(11) NOT NULL,
  `fsCaozuo` varchar(256) NOT NULL,
  `fsBeizhu` varchar(256) NOT NULL,
  PRIMARY KEY (`fsId`),
  KEY `Relationship_12_FK` (`faId`),
  CONSTRAINT `FK_FAFANGSE_RELATIONS_FAFANG` FOREIGN KEY (`faId`) REFERENCES `fafang` (`faId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fafangset
-- ----------------------------

-- ----------------------------
-- Table structure for `good_type`
-- ----------------------------
DROP TABLE IF EXISTS `good_type`;
CREATE TABLE `good_type` (
  `goId` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) DEFAULT NULL,
  `goName` varchar(50) DEFAULT NULL,
  `goOrder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goId`),
  KEY `FK_GOOD_TYP_REFERENCE_COURT` (`cId`),
  CONSTRAINT `FK_GOOD_TYP_REFERENCE_COURT` FOREIGN KEY (`cId`) REFERENCES `court` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good_type
-- ----------------------------

-- ----------------------------
-- Table structure for `hr_contract`
-- ----------------------------
DROP TABLE IF EXISTS `hr_contract`;
CREATE TABLE `hr_contract` (
  `hr_contract_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `hr_contract_serialnumber` int(11) DEFAULT NULL,
  `hr_contract_company` varchar(100) DEFAULT NULL,
  `hr_contract_type` varchar(100) DEFAULT NULL,
  `hr_contract_deadline` varchar(100) DEFAULT NULL,
  `hr_contract_signdate` date DEFAULT NULL,
  `hr_contract_accruedate` date DEFAULT NULL,
  `hr_contract_enddate` date DEFAULT NULL,
  `hr_contract_trydate` date DEFAULT NULL,
  `hr_contract_turn` int(11) DEFAULT NULL,
  `hr_contract_relieve` int(11) DEFAULT NULL,
  `hr_contract_renew` int(11) DEFAULT NULL,
  `hr_contract_remark` varchar(100) DEFAULT NULL,
  `hr_contract_username` varchar(100) DEFAULT NULL,
  `hr_contract_currenttime` date DEFAULT NULL,
  PRIMARY KEY (`hr_contract_id`),
  KEY `FK_HR_CONTR_REFERENCE_TB_ROLES` (`role_id`),
  KEY `FK_HR_CONTR_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_HR_CONTR_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_HR_CONTR_REFERENCE_TB_ROLES` FOREIGN KEY (`role_id`) REFERENCES `tb_roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_contract
-- ----------------------------

-- ----------------------------
-- Table structure for `hr_demand`
-- ----------------------------
DROP TABLE IF EXISTS `hr_demand`;
CREATE TABLE `hr_demand` (
  `hr_demand_id` int(11) NOT NULL AUTO_INCREMENT,
  `hr_demand_username` varchar(100) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `hr_demand_code` int(11) DEFAULT NULL,
  `hr_demand_quantity` int(11) DEFAULT NULL,
  `hr_demand_date` date DEFAULT NULL,
  `hr_demand_jobrequirements` varchar(100) DEFAULT NULL,
  `hr_demand_remark` varchar(100) DEFAULT NULL,
  `hr_demand_adjunct` varchar(100) DEFAULT NULL,
  `hr_demand_apply` varchar(100) DEFAULT NULL,
  `hr_demand_applydate` date DEFAULT NULL,
  PRIMARY KEY (`hr_demand_id`),
  KEY `FK_HR_DEMAN_REFERENCE_TB_DEPT` (`dept_id`),
  KEY `FK_HR_DEMAN_REFERENCE_TB_ROLES` (`role_id`),
  CONSTRAINT `FK_HR_DEMAN_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`),
  CONSTRAINT `FK_HR_DEMAN_REFERENCE_TB_ROLES` FOREIGN KEY (`role_id`) REFERENCES `tb_roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_demand
-- ----------------------------

-- ----------------------------
-- Table structure for `hr_dimission`
-- ----------------------------
DROP TABLE IF EXISTS `hr_dimission`;
CREATE TABLE `hr_dimission` (
  `hr_dimission_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `hr_dimission_duty` varchar(100) DEFAULT NULL,
  `hr_dimission_leavetype` int(11) DEFAULT NULL,
  `hr_dimission_applicationdate` date DEFAULT NULL,
  `hr_dimission_departuredate` date DEFAULT NULL,
  `hr_dimission_cutoffdate` date DEFAULT NULL,
  `hr_dimission_monthly` varchar(100) DEFAULT NULL,
  `hr_dimission_procedure` varchar(100) DEFAULT NULL,
  `hr_dimission_why` varchar(100) DEFAULT NULL,
  `hr_dimission_remark` varchar(100) DEFAULT NULL,
  `hr_dimission_username` varchar(100) DEFAULT NULL,
  `hr_dimission_currenttime` date DEFAULT NULL,
  PRIMARY KEY (`hr_dimission_id`),
  KEY `FK_HR_DIMIS_REFERENCE_TB_DEPT` (`dept_id`),
  KEY `FK_HR_DIMIS_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_HR_DIMIS_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_HR_DIMIS_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_dimission
-- ----------------------------

-- ----------------------------
-- Table structure for `hr_hire`
-- ----------------------------
DROP TABLE IF EXISTS `hr_hire`;
CREATE TABLE `hr_hire` (
  `hr_hire_id` int(11) NOT NULL AUTO_INCREMENT,
  `hr_plan_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `hr_hire_name` varchar(100) DEFAULT NULL,
  `hr_hire_date` date DEFAULT NULL,
  `hr_hire_type` varchar(100) DEFAULT NULL,
  `hr_hire_classa` varchar(100) DEFAULT NULL,
  `hr_hire_duty` varchar(100) DEFAULT NULL,
  `hr_hire_entrytime` date DEFAULT NULL,
  `hr_hire_startingsalary` date DEFAULT NULL,
  `hr_hire_remark` varchar(100) DEFAULT NULL,
  `hr_hire_username` varchar(100) DEFAULT NULL,
  `hr_hire_currenttime` date DEFAULT NULL,
  PRIMARY KEY (`hr_hire_id`),
  KEY `FK_HR_HIRE_REFERENCE_HR_PLAN` (`hr_plan_id`),
  KEY `FK_HR_HIRE_REFERENCE_TB_DEPT` (`dept_id`),
  KEY `FK_HR_HIRE_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_HR_HIRE_REFERENCE_HR_PLAN` FOREIGN KEY (`hr_plan_id`) REFERENCES `hr_plan` (`hr_plan_id`),
  CONSTRAINT `FK_HR_HIRE_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_HR_HIRE_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_hire
-- ----------------------------

-- ----------------------------
-- Table structure for `hr_plan`
-- ----------------------------
DROP TABLE IF EXISTS `hr_plan`;
CREATE TABLE `hr_plan` (
  `hr_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `hr_plan_number` varchar(100) DEFAULT NULL,
  `hr_plan_name` varchar(100) DEFAULT NULL,
  `hr_plan_ditch` varchar(100) DEFAULT NULL,
  `hr_plan_budget` varchar(100) DEFAULT NULL,
  `hr_plan_startdate` date DEFAULT NULL,
  `hr_plan_dateclosed` date DEFAULT NULL,
  `hr_plan_count` int(11) DEFAULT NULL,
  `hr_plan_explain` varchar(100) DEFAULT NULL,
  `hr_plan_remark` varchar(100) DEFAULT NULL,
  `hr_plan_adjunct` varchar(100) DEFAULT NULL,
  `hr_plan_state` int(11) DEFAULT NULL,
  `hr_plan_auditingDate` date DEFAULT NULL,
  `hr_plan_username` varchar(100) DEFAULT NULL,
  `hr_plan_department` varchar(100) DEFAULT NULL,
  `hr_plan_post` varchar(50) DEFAULT NULL,
  `hr_plan_skilldate` date DEFAULT NULL,
  PRIMARY KEY (`hr_plan_id`),
  KEY `FK_HR_PLAN_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_HR_PLAN_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_plan
-- ----------------------------
INSERT INTO `hr_plan` VALUES ('4', '1', '1', '超神计划', '猎头', '10000.100', '2017-07-08', '2018-01-02', '2', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者1', '招聘部门', '招聘岗位', '2018-10-18');
INSERT INTO `hr_plan` VALUES ('23', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件5', '1', '2018-01-03', '创建者2', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('24', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件6', '1', '2018-01-03', '创建者3', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('25', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件7', '1', '2018-01-03', '创建者4', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('26', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('27', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('28', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('29', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('30', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('31', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('32', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('33', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('34', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('35', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('36', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '0', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('37', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '0', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('38', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '0', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('39', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '0', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('40', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '0', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');

-- ----------------------------
-- Table structure for `hr_record`
-- ----------------------------
DROP TABLE IF EXISTS `hr_record`;
CREATE TABLE `hr_record` (
  `hr_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `hr_record_name` varchar(100) DEFAULT NULL,
  `hr_record_oaname` varchar(100) DEFAULT NULL,
  `hr_record_serial` int(11) DEFAULT NULL,
  `hr_record_jobNumber` int(11) DEFAULT NULL,
  `hr_record_createtime` date DEFAULT NULL,
  `hr_record_englishName` varchar(100) DEFAULT NULL,
  `hr_record_identity` varchar(100) DEFAULT NULL,
  `hr_record_dateOfBirth` date DEFAULT NULL,
  `hr_record_sex` varchar(100) DEFAULT NULL,
  `hr_record_age` int(11) DEFAULT NULL,
  `hr_record_nation` varchar(100) DEFAULT NULL,
  `hr_record_relation` varchar(100) DEFAULT NULL,
  `hr_record_email` varchar(100) DEFAULT NULL,
  `hr_record_marriage` varchar(100) DEFAULT NULL,
  `hr_record_face` varchar(100) DEFAULT NULL,
  `hr_record_nativePlace` varchar(100) DEFAULT NULL,
  `hr_record_health` varchar(100) DEFAULT NULL,
  `hr_record_family` varchar(100) DEFAULT NULL,
  `hr_record_address` varchar(100) DEFAULT NULL,
  `hr_record_employeetype` int(11) DEFAULT NULL,
  `hr_record_post` varchar(100) DEFAULT NULL,
  `hr_record_entrytime` date DEFAULT NULL,
  `hr_record_startingtime` date DEFAULT NULL,
  `hr_record_photograph` varchar(100) DEFAULT NULL,
  `hr_record_school` varchar(100) DEFAULT NULL,
  `hr_record_graduate` date DEFAULT NULL,
  `hr_record_degree` varchar(100) DEFAULT NULL,
  `hr_record_major` varchar(100) DEFAULT NULL,
  `hr_record_unusual` varchar(100) DEFAULT NULL,
  `hr_record_state` int(11) DEFAULT NULL,
  `hr_record_remark` varchar(100) DEFAULT NULL,
  `hr_record_accessory` varchar(100) DEFAULT NULL,
  `hr_record_username` varchar(100) DEFAULT NULL,
  `hr_record_currenttime` date DEFAULT NULL,
  PRIMARY KEY (`hr_record_id`),
  KEY `FK_HR_RECOR_REFERENCE_TB_DEPT` (`dept_id`),
  KEY `FK_HR_RECOR_REFERENCE_TB_ROLES` (`role_id`),
  CONSTRAINT `FK_HR_RECOR_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`),
  CONSTRAINT `FK_HR_RECOR_REFERENCE_TB_ROLES` FOREIGN KEY (`role_id`) REFERENCES `tb_roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_record
-- ----------------------------

-- ----------------------------
-- Table structure for `hr_screen`
-- ----------------------------
DROP TABLE IF EXISTS `hr_screen`;
CREATE TABLE `hr_screen` (
  `hr_screen_id` int(11) NOT NULL AUTO_INCREMENT,
  `hr_plan_id` int(11) DEFAULT NULL,
  `id` int(100) DEFAULT NULL,
  `hr_screen_screening` int(11) DEFAULT NULL,
  `hr_screen_way` varchar(100) DEFAULT NULL,
  `hr_screen_content` varchar(100) DEFAULT NULL,
  `hr_screen_opinion` varchar(100) DEFAULT NULL,
  `hr_screen_interview` date DEFAULT NULL,
  `hr_screen_whether` varchar(100) DEFAULT NULL,
  `hr_screen_username` varchar(100) DEFAULT NULL,
  `hr_screen_currenttime` date DEFAULT NULL,
  PRIMARY KEY (`hr_screen_id`),
  KEY `FK_HR_SCREE_REFERENCE_HR_PLAN` (`hr_plan_id`),
  KEY `id` (`id`),
  CONSTRAINT `FK_HR_SCREE_REFERENCE_HR_PLAN` FOREIGN KEY (`hr_plan_id`) REFERENCES `hr_plan` (`hr_plan_id`),
  CONSTRAINT `hr_screen_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_screen
-- ----------------------------

-- ----------------------------
-- Table structure for `hr_talents`
-- ----------------------------
DROP TABLE IF EXISTS `hr_talents`;
CREATE TABLE `hr_talents` (
  `hr_talents_id` int(11) NOT NULL AUTO_INCREMENT,
  `hr_plan_id` int(11) DEFAULT NULL,
  `hr_talents_name` varchar(100) DEFAULT NULL,
  `hr_talents_birth` date DEFAULT NULL,
  `hr_talents_sex` varchar(100) DEFAULT NULL,
  `hr_talents_age` int(11) DEFAULT NULL,
  `hr_talents_native` varchar(100) DEFAULT NULL,
  `hr_talents_place` varchar(100) DEFAULT NULL,
  `hr_talents_nation` varchar(100) DEFAULT NULL,
  `hr_talents_state` varchar(100) DEFAULT NULL,
  `hr_talents_face` varchar(100) DEFAULT NULL,
  `hr_talents_relation` varchar(100) DEFAULT NULL,
  `hr_talents_mall` varchar(100) DEFAULT NULL,
  `hr_talents_workdate` date DEFAULT NULL,
  `hr_talents_health` varchar(100) DEFAULT NULL,
  `hr_talents_background` varchar(100) DEFAULT NULL,
  `hr_talents_degree` varchar(100) DEFAULT NULL,
  `hr_talents_graduate` date DEFAULT NULL,
  `hr_talents_school` varchar(100) DEFAULT NULL,
  `hr_talents_major` varchar(100) DEFAULT NULL,
  `hr_talents_computer` varchar(100) DEFAULT NULL,
  `hr_talents_foreign` varchar(100) DEFAULT NULL,
  `hr_talents_level` varchar(100) DEFAULT NULL,
  `hr_talents_strong` varchar(100) DEFAULT NULL,
  `hr_talents_register` date DEFAULT NULL,
  `hr_talents_expect` varchar(100) DEFAULT NULL,
  `hr_talents_skill` varchar(100) DEFAULT NULL,
  `hr_talents_workExperience` varchar(100) DEFAULT NULL,
  `hr_talents_projectExperience` varchar(100) DEFAULT NULL,
  `hr_talents_dwell` varchar(100) DEFAULT NULL,
  `hr_talents_nature` varchar(100) DEFAULT NULL,
  `hr_talents_industry` varchar(100) DEFAULT NULL,
  `hr_talents_pay` varchar(100) DEFAULT NULL,
  `hr_talents_positiondate` varchar(100) DEFAULT NULL,
  `hr_talents_picture` varchar(100) DEFAULT NULL,
  `hr_talents_remark` varchar(100) DEFAULT NULL,
  `hr_talents_accessory` varchar(100) DEFAULT NULL,
  `hr_talents_filestatus` int(11) DEFAULT NULL,
  `hr_talents_username` varchar(100) DEFAULT NULL,
  `hr_talents_toemploy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hr_talents_id`),
  KEY `FK_HR_TALEN_REFERENCE_HR_PLAN` (`hr_plan_id`),
  CONSTRAINT `FK_HR_TALEN_REFERENCE_HR_PLAN` FOREIGN KEY (`hr_plan_id`) REFERENCES `hr_plan` (`hr_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_talents
-- ----------------------------
INSERT INTO `hr_talents` VALUES ('1', '4', '大神', '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '极光中雪白的肌肤', '偷睡的书桌', '15239474900', '123456789@qq.com', '2018-10-16', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '8000', '1', '照骗', '备注', '附件', '1', '小', '开发');
INSERT INTO `hr_talents` VALUES ('2', '4', '大神', '1997-03-30', '男', '22', '河南省', '河南郑州金水区', '汉', '极光中雪白的肌肤', '偷睡的书桌', '15239474900', '123456789@qq.com', '2018-10-16', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '8000', '1', '照骗', '备注', '附件', '1', '小', '开发');
INSERT INTO `hr_talents` VALUES ('3', '24', '大神', '1997-03-30', '男', '23', '河南省', '河南郑州金水区', '汉', '极光中雪白的肌肤', '偷睡的书桌', '15239474900', '123456789@qq.com', '2018-10-16', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '8000', '1', '照骗', '备注', '附件', '1', '小', '开发');
INSERT INTO `hr_talents` VALUES ('4', '4', '上下', '1997-03-30', '男', '24', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('5', '4', '上下', '1997-03-30', '男', '25', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('6', '4', '大神', '1997-03-30', '男', '26', '河南省', '河南郑州金水区', '汉', '极光中雪白的肌肤', '偷睡的书桌', '15239474900', '123456789@qq.com', '2018-10-16', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '8000', '1', '照骗', '备注', '附件', '1', '小', '开发');
INSERT INTO `hr_talents` VALUES ('8', '4', '上下', '1997-03-30', '男', '27', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('9', '4', '上下', '1997-03-30', '男', '28', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('10', '4', '上下', '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('11', '4', '上下', '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('12', '4', '上下', '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('13', '4', '上下', '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('14', '4', '上下', '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('15', '4', '上下', '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('16', '4', '上下', '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('38', '4', '士大夫', '2018-10-24', '男', '20', '河南', '和那', '汉', '未婚', '撒旦', '65165165', null, '2018-10-24', '爱的', '阿瑟东', '阿瑟东', '2018-10-24', '大幅', '阿瑟东', '阿瑟东', '大风车', '爱的', '盛大的', null, '撒旦', '撒大', '的城市', '洒出', '按市场', '撒擦擦', '撒擦擦', '21421', null, '士大夫', '阿瑟东', '阿瑟东', '1', '大神', '开发');
INSERT INTO `hr_talents` VALUES ('39', '4', '士大夫', '2018-10-24', '男', '20', '河南', '和那', '汉', '未婚', '撒旦', '65165165', null, '2018-10-24', '爱的', '阿瑟东', '阿瑟东', '2018-10-24', '大幅', '阿瑟东', '阿瑟东', '大风车', '爱的', '盛大的', '2018-10-24', '撒旦', '撒大', '的城市', '洒出', '按市场', '撒擦擦', '撒擦擦', '21421', null, '士大夫', '阿瑟东', '阿瑟东', '1', '大神', '开发');
INSERT INTO `hr_talents` VALUES ('40', '4', '士大夫', '2018-10-24', '男', '20', '河南', '和那', '汉', '未婚', '撒旦', '65165165', null, '2018-10-24', '爱的', '阿瑟东', '阿瑟东', '2018-10-24', '大幅', '阿瑟东', '阿瑟东', '大风车', '爱的', '盛大的', '2018-10-23', '撒旦', '撒大', '的城市', '洒出', '按市场', '撒擦擦', '撒擦擦', '21421', null, '士大夫', '阿瑟东', '阿瑟东', '1', '大神', '开发');
INSERT INTO `hr_talents` VALUES ('41', '4', '士大夫', '2018-10-24', '男', '20', '河南', '和那', '汉', '未婚', '撒旦', '65165165', null, '2018-10-24', '爱的', '阿瑟东', '阿瑟东', '2018-10-24', '大幅', '阿瑟东', '阿瑟东', '大风车', '爱的', '盛大的', '2018-10-26', '撒旦', '撒大', '的城市', '洒出', '按市场', '撒擦擦', '撒擦擦', '21421', null, '士大夫', '阿瑟东', '阿瑟东', '1', '大神', '开发');

-- ----------------------------
-- Table structure for `hr_transfer`
-- ----------------------------
DROP TABLE IF EXISTS `hr_transfer`;
CREATE TABLE `hr_transfer` (
  `hr_transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `hr_transfer_transfertype` int(11) DEFAULT NULL,
  `hr_transfer_date` date DEFAULT NULL,
  `hr_transfer_effectivedate` date DEFAULT NULL,
  `hr_transfer_beforetheunit` varchar(100) DEFAULT NULL,
  `hr_transfer_aftertheunit` varchar(100) DEFAULT NULL,
  `hr_transfer_formerposition` varchar(100) DEFAULT NULL,
  `hr_transfer_afterthejob` varchar(100) DEFAULT NULL,
  `hr_transfer_cause` varchar(100) DEFAULT NULL,
  `hr_transfer_remark` varchar(100) DEFAULT NULL,
  `hr_transfer_modification` date DEFAULT NULL,
  `hr_transfer_username` varchar(100) DEFAULT NULL,
  `hr_transfer_currenttime` date DEFAULT NULL,
  PRIMARY KEY (`hr_transfer_id`),
  KEY `FK_HR_TRANS_REFERENCE_TB_DEPT` (`dept_id`),
  KEY `FK_HR_TRANS_REFERENCE_TB_ROLES` (`role_id`),
  KEY `FK_HR_TRANS_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_HR_TRANS_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_HR_TRANS_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`),
  CONSTRAINT `FK_HR_TRANS_REFERENCE_TB_ROLES` FOREIGN KEY (`role_id`) REFERENCES `tb_roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_transfer
-- ----------------------------

-- ----------------------------
-- Table structure for `jobwork`
-- ----------------------------
DROP TABLE IF EXISTS `jobwork`;
CREATE TABLE `jobwork` (
  `JoId` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `JoName` varchar(50) DEFAULT NULL,
  `jtDate` datetime DEFAULT NULL,
  `joState` int(11) DEFAULT NULL,
  PRIMARY KEY (`JoId`),
  KEY `FK_JOBWORK_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_JOBWORK_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobwork
-- ----------------------------

-- ----------------------------
-- Table structure for `notify`
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `from_name` varchar(50) DEFAULT NULL,
  `from_dept` int(11) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `send_time` varchar(50) DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `attachment_id` varchar(500) DEFAULT NULL,
  `attachment_name` varchar(500) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `top_days` int(11) DEFAULT NULL,
  `format` int(11) DEFAULT NULL,
  `publish` int(11) DEFAULT NULL,
  `last_editor` varchar(200) DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  `subject_color` varchar(200) DEFAULT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`notify_id`),
  KEY `FK_NOTIFY_REFERENCE_TB_DEPT` (`dept_id`),
  KEY `FK_NOTIFY_REFERENCE_TB_NOTIF` (`type_id`),
  KEY `FK_NOTIFY_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_NOTIFY_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_NOTIFY_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`),
  CONSTRAINT `FK_NOTIFY_REFERENCE_TB_NOTIF` FOREIGN KEY (`type_id`) REFERENCES `tb_notifytype` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notify
-- ----------------------------

-- ----------------------------
-- Table structure for `qingtype`
-- ----------------------------
DROP TABLE IF EXISTS `qingtype`;
CREATE TABLE `qingtype` (
  `qtId` int(11) NOT NULL AUTO_INCREMENT,
  `qtName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`qtId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qingtype
-- ----------------------------

-- ----------------------------
-- Table structure for `rati`
-- ----------------------------
DROP TABLE IF EXISTS `rati`;
CREATE TABLE `rati` (
  `RaId` int(11) NOT NULL AUTO_INCREMENT,
  `ApId` int(11) DEFAULT NULL,
  `RaDeng` varchar(256) NOT NULL,
  `RaSum` int(11) NOT NULL,
  `RaDate` date NOT NULL,
  PRIMARY KEY (`RaId`),
  KEY `Relationship_8_FK` (`ApId`),
  CONSTRAINT `FK_RATI_RELATIONS_APPLY` FOREIGN KEY (`ApId`) REFERENCES `apply` (`ApId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rati
-- ----------------------------

-- ----------------------------
-- Table structure for `ratiset`
-- ----------------------------
DROP TABLE IF EXISTS `ratiset`;
CREATE TABLE `ratiset` (
  `rsId` int(11) NOT NULL AUTO_INCREMENT,
  `RaId` int(11) DEFAULT NULL,
  `rsKu` varchar(256) NOT NULL,
  `rsShop` varchar(256) NOT NULL,
  `rsDeng` varchar(256) NOT NULL,
  `rsWorker` varchar(256) NOT NULL,
  `rsSum` int(11) NOT NULL,
  `rsDate` date NOT NULL,
  PRIMARY KEY (`rsId`),
  UNIQUE KEY `spjl_PK` (`rsId`),
  KEY `Relationship_10_FK` (`RaId`),
  CONSTRAINT `FK_RATISET_RELATIONS_RATI` FOREIGN KEY (`RaId`) REFERENCES `rati` (`RaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ratiset
-- ----------------------------

-- ----------------------------
-- Table structure for `schedule`
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `duty_time1` varchar(50) NOT NULL,
  `duty_time2` varchar(50) NOT NULL,
  `duty_time3` varchar(50) NOT NULL,
  `duty_time4` varchar(50) NOT NULL,
  PRIMARY KEY (`scid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('2', '晚班', '05:00', '10:25', '14:00', '22:45');
INSERT INTO `schedule` VALUES ('3', '烦烦地方', '05:00:00', '16:00:00', '23:00:00', '03:00:00');
INSERT INTO `schedule` VALUES ('4', '对对对', '22:55:44', '22:55:46', '22:55:48', '22:55:49');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) DEFAULT NULL,
  `goId` int(11) DEFAULT NULL,
  `sName` varchar(256) NOT NULL,
  `sSize` varchar(256) NOT NULL,
  `sFu` varchar(256) NOT NULL,
  `sType` varchar(256) NOT NULL,
  `sBian` varchar(256) NOT NULL,
  `sPrice` varchar(256) NOT NULL,
  `sGong` varchar(256) NOT NULL,
  `sUpAlert` varchar(256) NOT NULL,
  `sLowAlert` varchar(256) NOT NULL,
  `sNow` varchar(256) NOT NULL,
  `sCount` varchar(256) NOT NULL,
  `sDesc` varchar(256) DEFAULT NULL,
  `sDept` varchar(256) DEFAULT NULL,
  `sManger` varchar(256) DEFAULT NULL,
  `sCreator` varchar(256) DEFAULT NULL,
  `sAuditer` varchar(256) DEFAULT NULL,
  `sArder` int(11) DEFAULT NULL,
  `sAllocation` int(11) DEFAULT NULL,
  `sDate` date DEFAULT NULL,
  PRIMARY KEY (`sId`),
  UNIQUE KEY `ypxxb_PK` (`sId`),
  KEY `Relationship_4_FK` (`cId`),
  KEY `FK_SHOP_REFERENCE_GOOD_TYP` (`goId`),
  CONSTRAINT `FK_SHOP_REFERENCE_GOOD_TYP` FOREIGN KEY (`goId`) REFERENCES `good_type` (`goId`),
  CONSTRAINT `FK_SHOP_RELATIONS_COURT` FOREIGN KEY (`cId`) REFERENCES `court` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------

-- ----------------------------
-- Table structure for `springfestival`
-- ----------------------------
DROP TABLE IF EXISTS `springfestival`;
CREATE TABLE `springfestival` (
  `sfId` int(11) NOT NULL AUTO_INCREMENT,
  `sfName` varchar(50) DEFAULT NULL,
  `sfTime` date DEFAULT NULL,
  `sfTimeEnd` date DEFAULT NULL,
  PRIMARY KEY (`sfId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of springfestival
-- ----------------------------
INSERT INTO `springfestival` VALUES ('1', '国庆节', '2018-10-01', '2017-10-07');
INSERT INTO `springfestival` VALUES ('2', 'fgfdgfd', '2018-10-01', '2018-10-26');
INSERT INTO `springfestival` VALUES ('3', '面前节假日', '2018-11-02', '2019-01-16');

-- ----------------------------
-- Table structure for `synthesis`
-- ----------------------------
DROP TABLE IF EXISTS `synthesis`;
CREATE TABLE `synthesis` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `qtid` int(11) DEFAULT NULL,
  `shenId` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `syReason` varchar(50) DEFAULT NULL,
  `syShen` datetime DEFAULT NULL,
  `syTime` date DEFAULT NULL,
  `timeOne` datetime DEFAULT NULL,
  `timeTwo` datetime DEFAULT NULL,
  `wcTimeTwo` varchar(50) DEFAULT NULL,
  `wcTimeOne` varchar(50) DEFAULT NULL,
  `wcTime` varchar(50) DEFAULT NULL,
  `wcTimeEnd` varchar(50) DEFAULT NULL,
  `timeAddress` varchar(50) DEFAULT NULL,
  `syName` varchar(50) DEFAULT NULL,
  `reading` varchar(50) DEFAULT NULL,
  `car` int(11) DEFAULT NULL,
  `syXiao` datetime DEFAULT NULL,
  `exState` int(11) DEFAULT NULL,
  `syState` int(11) DEFAULT NULL,
  `timeChai` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`sId`),
  KEY `FK_SYNTHESI_REFERENCE_QINGTYPE` (`qtid`),
  KEY `FK_SYNTHESI_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_SYNTHESI_REFERENCE_QINGTYPE` FOREIGN KEY (`qtid`) REFERENCES `qingtype` (`qtId`),
  CONSTRAINT `FK_SYNTHESI_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of synthesis
-- ----------------------------
INSERT INTO `synthesis` VALUES ('4', null, '18', '1', '对对对', '2018-11-01 10:26:15', '2018-10-31', null, null, '55', '18', '03:04:05', '22:00:00', null, '不准', null, '0', null, '1', '1', null);
INSERT INTO `synthesis` VALUES ('5', null, '20', '1', '对对', '2018-10-31 15:59:54', '2018-10-01', null, null, '0', '5', '18:22:57', '23:23:00', null, null, null, '1', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('6', null, '20', '1', 'chl', '2018-11-01 22:47:50', '2018-10-01', null, null, '56', '19', '2018-11-01 00:00:00', '23:00:00', null, null, null, null, null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('7', null, '18', '1', '地方的地方', '2018-11-01 22:54:12', '2018-10-31', null, null, '57', '18', '01:04:05', '20:02:04', null, null, null, null, '2018-11-02 09:14:03', '3', '1', null);
INSERT INTO `synthesis` VALUES ('8', null, '18', '1', '少时诵诗书所', '2018-11-01 22:48:29', '2018-10-09', null, null, '55', '17', '04:04:04', '22:00:00', null, null, null, null, '2018-11-01 23:59:38', '3', '1', null);
INSERT INTO `synthesis` VALUES ('9', null, '20', '1', '密码', '2018-11-01 22:55:14', '2018-11-07', null, null, '0', '20', '03:00:00', '23:00:00', null, null, null, null, null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('11', null, '1', '1', 'ddddd', '2018-10-30 23:06:26', '2018-10-30', null, null, '0', '4', '19:06:38', '23:06:39', null, null, null, '0', '2018-11-01 14:35:52', '3', '1', null);
INSERT INTO `synthesis` VALUES ('12', null, '20', '18', 'dd', '2018-10-31 09:16:20', '2018-10-01', null, null, '56', '18', '03:03:03', '22:00:00', null, null, null, '0', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('13', null, '1', '1', ' 收到', '2018-10-31 09:50:35', '2018-10-01', null, null, '0', '0', '22:04:04', '22:04:04', null, null, null, '0', '2018-11-01 23:29:15', '3', '1', null);
INSERT INTO `synthesis` VALUES ('14', null, '20', '1', '等等', '2018-10-31 16:48:14', '2018-10-01', null, null, '0', '3', '00:00:00', '03:00:00', null, null, null, '0', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('16', null, '20', '1', 'ww', '2018-10-31 18:37:48', '2018-10-09', null, null, '0', '18', '04:04:04', '22:04:05', null, null, null, '0', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('17', null, '20', '1', 'sss', '2018-10-31 18:39:42', '2018-10-01', null, null, '4', '19', '03:04:05', '22:08:05', null, null, null, '0', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('18', null, '20', '1', 'qq', '2018-10-31 18:46:11', '2018-10-01', null, null, '0', '18', '04:04:00', '22:04:05', null, null, null, '0', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('19', null, '20', '1', 'fdsfdsf', '2018-10-31 18:47:46', '2018-10-02', null, null, '0', '13', '09:04:04', '22:04:04', null, null, null, '0', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('20', null, '20', '1', 'xxx', '2018-10-31 18:48:49', '2018-10-31', null, null, '0', '19', '03:00:00', '22:00:00', null, null, null, '0', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('21', null, '1', '1', '你好', '2018-11-01 11:38:44', '2018-11-01', null, null, '57', '19', '02:02:02', '22:00:00', null, null, null, '0', '2018-11-01 21:47:29', '3', '1', null);
INSERT INTO `synthesis` VALUES ('22', null, '18', '1', '有事', '2018-11-01 21:45:36', null, null, null, '0', '29', '2018-11-01 00:00:00', '2018-11-30 00:00:00', null, null, null, null, '2018-11-02 09:03:31', '3', '2', null);
INSERT INTO `synthesis` VALUES ('23', null, '18', '1', '家中', '2018-11-01 21:45:50', null, null, null, '0', '8', '2018-11-09 00:00:00', '2018-11-17 00:00:00', null, null, null, null, '2018-11-02 09:14:37', '3', '2', null);
INSERT INTO `synthesis` VALUES ('26', null, '20', '1', 'gfgf', '2018-11-01 22:57:17', '2018-11-02', null, null, '58', '0', '02:04:04', '03:03:03', null, null, null, '1', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('28', null, '1', '18', 'dfdfd', '2018-11-02 09:38:27', null, null, null, '0', '27', '2018-11-02 00:00:00', '2018-11-29 00:00:00', null, null, null, null, '2018-11-02 09:40:33', '3', '2', null);
INSERT INTO `synthesis` VALUES ('29', null, '1', '18', '有事回家', '2018-11-02 09:53:15', null, null, null, '0', '8', '2018-11-02 00:00:00', '2018-11-10 00:00:00', null, null, null, null, '2018-11-02 09:56:26', '3', '2', null);
INSERT INTO `synthesis` VALUES ('30', null, '1', '1', '就想加班1', '2018-11-02 10:50:33', null, null, null, '0', '360', '2018-11-02 00:00:00', '2018-11-17 00:00:00', null, null, null, null, '2018-11-02 11:05:08', '3', '3', null);
INSERT INTO `synthesis` VALUES ('31', null, '1', '18', 'fdfds', '2018-11-02 15:40:28', null, null, null, '5', '5', '2018-11-02 00:00:00', '2018-11-02 05:05:00', null, null, null, null, '2018-11-02 21:21:23', '3', '3', null);
INSERT INTO `synthesis` VALUES ('32', null, '1', '18', 'esfdf', '2018-11-02 15:27:32', null, null, null, '0', '46', '2018-11-01 00:00:00', '2018-11-02 22:00:00', null, null, null, null, '2018-11-02 15:37:00', '3', '3', null);
INSERT INTO `synthesis` VALUES ('33', null, '1', '18', 'dfd', '2018-11-02 15:27:49', null, null, null, '0', '118', '2018-11-01 00:00:00', '2018-11-05 22:00:00', null, 'fdsffds', null, null, null, '1', '3', null);
INSERT INTO `synthesis` VALUES ('34', null, '18', '1', '办事情', '2018-11-02 16:13:56', null, null, null, null, '2', '2018-11-09 00:00:00', '2018-11-11 00:00:00', '河南新乡', null, null, null, '2018-11-02 21:04:14', '3', '4', null);
INSERT INTO `synthesis` VALUES ('35', null, '18', '1', '公事', '2018-11-02 17:03:06', null, null, null, null, '3', '2018-11-01 00:00:00', '2018-11-04 00:00:00', '河南商丘', null, null, null, '2018-11-02 21:00:13', '3', '4', null);
INSERT INTO `synthesis` VALUES ('36', null, '18', '1', 'sfdsfd', '2018-11-02 17:21:40', null, null, null, '0', '72', '2018-11-02 00:00:00', '2018-11-05 00:00:00', null, null, null, null, null, '0', '3', null);
INSERT INTO `synthesis` VALUES ('38', null, '18', '1', '测试二', '2018-11-02 21:22:06', '2018-11-02', null, null, '27', '0', '23:00:00', '23:27:05', null, null, null, '0', null, '0', '1', null);
INSERT INTO `synthesis` VALUES ('40', null, '18', '1', '请假测试1', '2018-11-02 21:29:26', null, null, null, '21', '0', '2018-11-02 00:00:00', '2018-11-02 21:29:41', null, null, null, null, '2018-11-02 21:50:05', '3', '2', null);
INSERT INTO `synthesis` VALUES ('41', null, '18', '1', '加班测试1', '2018-11-02 21:29:59', null, null, null, '30', '21', '2018-11-02 00:00:00', '2018-11-02 21:30:08', null, null, null, null, '2018-11-02 21:50:12', '3', '3', null);
INSERT INTO `synthesis` VALUES ('42', null, '18', '1', '谈判', '2018-11-02 21:30:26', null, null, null, null, '13', '2018-11-02 00:00:00', '2018-11-15 21:30:46', '新乡', null, null, null, null, '2', '4', null);
INSERT INTO `synthesis` VALUES ('43', null, '18', '1', '测试一', '2018-11-02 21:31:14', '2018-11-02', null, null, '31', '0', '21:28:37', '22:00:00', null, null, null, '0', null, '2', '1', null);

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TB_ADMIN_REFERENCE_TB_ROLES` (`role_id`),
  KEY `FK_TB_ADMIN_REFERENCE_TB_DEPT` (`dept_id`),
  CONSTRAINT `FK_TB_ADMIN_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`),
  CONSTRAINT `FK_TB_ADMIN_REFERENCE_TB_ROLES` FOREIGN KEY (`role_id`) REFERENCES `tb_roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, 'arthur', 'duxiaod@qq.com', '1', '1994-11-08', '陕西省西安市雁塔区', '17693109997', '1', '1');
INSERT INTO `tb_admin` VALUES ('18', 'test', 'e10adc3949ba59abbe56e057f20f883e', null, 'test', 'test@test.com', '1', '2018-02-25', '甘肃省兰州市榆中县和平镇', '17601038192', '61', '2');
INSERT INTO `tb_admin` VALUES ('19', '逯宪明', null, null, null, null, '1', null, null, null, '61', '3');
INSERT INTO `tb_admin` VALUES ('20', '王宝强', null, null, null, null, '1', null, null, null, '61', '4');

-- ----------------------------
-- Table structure for `tb_affair`
-- ----------------------------
DROP TABLE IF EXISTS `tb_affair`;
CREATE TABLE `tb_affair` (
  `aff_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `remind_date` datetime DEFAULT NULL,
  `remind_time` datetime DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `sms_remind` int(11) DEFAULT NULL,
  `cal_type` int(11) DEFAULT NULL,
  `taker` varchar(500) DEFAULT NULL,
  `begin_time_time` datetime DEFAULT NULL,
  `end_time_time` datetime DEFAULT NULL,
  PRIMARY KEY (`aff_id`),
  KEY `FK_TB_AFFAI_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_TB_AFFAI_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_affair
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_calendar`
-- ----------------------------
DROP TABLE IF EXISTS `tb_calendar`;
CREATE TABLE `tb_calendar` (
  `cal_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `SchContent` varchar(1000) DEFAULT NULL,
  `cal_type` int(11) DEFAULT NULL,
  `over_status` int(11) DEFAULT NULL,
  `before_remaind` datetime DEFAULT NULL,
  `privateUser` varchar(20) DEFAULT NULL,
  `IfPrivate` int(11) DEFAULT NULL,
  PRIMARY KEY (`cal_id`),
  KEY `FK_TB_CALEN_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_TB_CALEN_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_calendar
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `tb_carousel`;
CREATE TABLE `tb_carousel` (
  `id` tinyint(8) NOT NULL AUTO_INCREMENT,
  `imgUrl` varchar(100) NOT NULL,
  `imgLink` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `sorting` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_carousel
-- ----------------------------
INSERT INTO `tb_carousel` VALUES ('8', 'fe3ecede0bec467b8be253684db5e28b3193.jpg', 'http://localhost:8080/irs/index.jsp', '百姓关心的环境问题 习近平给出最新答案', '200', '1', '2018-05-20 23:36:49', '2018-08-21 10:21:16');
INSERT INTO `tb_carousel` VALUES ('10', '1e4e799ccb41438ab4ece494f32d72c59900.jpg', 'http://localhost:8080/irs_maven/index.jsp', 'test', '19', '1', '2018-08-21 10:28:49', null);

-- ----------------------------
-- Table structure for `tb_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dwinformation_id` int(11) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `dept_number` int(11) DEFAULT NULL,
  `dept_address` varchar(100) DEFAULT NULL,
  `dept_zhuguan` varchar(100) DEFAULT NULL,
  `dept_aid` varchar(100) DEFAULT NULL,
  `dept_manager` varchar(100) DEFAULT NULL,
  `dept_status` int(11) DEFAULT NULL,
  `dept_branchlead` varchar(100) DEFAULT NULL,
  `dept_phone` varchar(100) DEFAULT NULL,
  `dept_fax` varchar(100) DEFAULT NULL,
  `dept_function` varchar(500) DEFAULT NULL,
  `dept_role` varchar(100) DEFAULT NULL,
  `dept_sequence` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `FK_TB_DEPT_REFERENCE_TB_DWINF` (`dwinformation_id`),
  CONSTRAINT `FK_TB_DEPT_REFERENCE_TB_DWINF` FOREIGN KEY (`dwinformation_id`) REFERENCES `tb_dwinformation` (`dwinformation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('1', '1', '总经办', '100', '上海', '王主管', '李助理', '王领导', '1', '刘领导', '010-15241441', '152013654125', '负责质量成本分析和控制，定期总结、汇报质量管理工作，做好季度质量报表；', 'CEO', '001');
INSERT INTO `tb_dept` VALUES ('2', '2', '综合管理部', '200', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '郭领导', '0', '刘领导', '010-51299003', '152013654125', '1、行使公司人事事务管理；2、协调各部门工作；3、人力资源管理与开发；4、工资考核；5、人员考核；6、人事招聘录用、7保存员工档案。', '管理部总监', '001');
INSERT INTO `tb_dept` VALUES ('3', '3', '人力资源部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '赵助理', '王领导', '0', '刘领导', '010-51299003', '152013654125', '负责质量成本分析和控制，定期总结、汇报质量管理工作，做好季度质量报表；', '人力资源总监', '001');
INSERT INTO `tb_dept` VALUES ('4', '4', '财务部', '200', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '李助理', '郭领导', '1', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '财务总监', '001');
INSERT INTO `tb_dept` VALUES ('5', '5', '行政部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '王领导', '0', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '行政经理', '001');
INSERT INTO `tb_dept` VALUES ('6', '1', '市场营销部', '300', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '赵助理', '郭领导', '0', '刘领导', '010-51299003', '152013654125', '完成公司制定的营销指标。 营销策略、计划的拟定、实施和改进。 营销经费的预算和控制。', '营销总监', '001');
INSERT INTO `tb_dept` VALUES ('7', '2', '市场部', '200', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '李助理', '郭领导', '0', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '部门经理', '001');
INSERT INTO `tb_dept` VALUES ('8', '3', '品牌部', '500', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '王领导', '0', '王领导', '010-51299003', '152013654125', '负责质量成本分析和控制，定期总结、汇报质量管理工作，做好季度质量报表；', '品牌总监', '001');
INSERT INTO `tb_dept` VALUES ('9', '4', '网络营销中心', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '郭领导', '1', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '部门经理', '001');
INSERT INTO `tb_dept` VALUES ('10', '5', '商务中心', '200', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '李助理', '郭领导', '0', '王领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '职员', '001');
INSERT INTO `tb_dept` VALUES ('11', '1', '销售部', '300', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '王领导', '1', '刘领导', '010-51299003', '152013654125', '负责质量成本分析和控制，定期总结、汇报质量管理工作，做好季度质量报表；', '销售主管', '001');
INSERT INTO `tb_dept` VALUES ('12', '2', '北京销售部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '李助理', '郭领导', '1', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '区域销售经理', '001');
INSERT INTO `tb_dept` VALUES ('13', '3', '北京销售部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '赵助理', '王领导', '1', '王领导', '010-51299003', '152013654125', '1、负责北京地区销售工作。2、负责北京市场调研、市场分析工作，制定业务推进计划。', '区域销售经理', '001');
INSERT INTO `tb_dept` VALUES ('14', '4', '销售一组', '200', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '李助理', '郭领导', '0', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '销售经理', '001');
INSERT INTO `tb_dept` VALUES ('15', '5', '销售二组', '300', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '郭领导', '1', '刘领导', '010-51299003', '152013654125', '负责质量成本分析和控制，定期总结、汇报质量管理工作，做好季度质量报表；', '职员', '001');
INSERT INTO `tb_dept` VALUES ('16', '1', '销售三组', '500', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '赵助理', '王领导', '0', '王领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '职员', '001');
INSERT INTO `tb_dept` VALUES ('17', '2', '销售协作组', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '李助理', '郭领导', '1', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '销售经理', '001');
INSERT INTO `tb_dept` VALUES ('18', '3', '上海销售部', '1000', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '王领导', '0', '刘领导', '021-68879920', '152013654125', '1、负责上海地区销售工作。2、负责上海市场调研、市场分析工作，制定业务推进计划。', '区域销售经理', '001');
INSERT INTO `tb_dept` VALUES ('19', '4', '研发部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '赵助理', '郭领导', '1', '王领导', '010-51299003', '152013654125', '肩负研制、开发新产品，完善产品功能的任务。', '研发总监', '001');
INSERT INTO `tb_dept` VALUES ('20', '5', '产品部', '200', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '李助理', '郭领导', '0', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '研发工程师', '001');
INSERT INTO `tb_dept` VALUES ('21', '1', '开发一部', '300', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '王领导', '1', '刘领导', '010-51299003', '152013654125', '处理用户疑问，为用户提供全方位服务支持。搜集用户建议，提高软件产品质量。', '研发工程师', '001');
INSERT INTO `tb_dept` VALUES ('22', '2', '开发二部', '200', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '赵助理', '郭领导', '0', '王领导', '010-51299003', '152013654125', '负责汇总编写处内工作总结和计划，整理处内的各种文档；', '研发工程师', '001');
INSERT INTO `tb_dept` VALUES ('23', '3', '质量保证部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '李助理', '王领导', '1', '刘领导', '010-51299003', '152013654125', '1、负责公司的质量管理工作，制订并执行各项质量管理规定及质量标准，对产品质量负有指导与监督责任；', '研发工程师', '001');
INSERT INTO `tb_dept` VALUES ('24', '4', '设计部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '郭领导', '1', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '设计部经理', '001');
INSERT INTO `tb_dept` VALUES ('25', '5', '项目部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '李助理', '王领导', '0', '王领导', '010-51299003', '152013654125', '负责质量成本分析和控制，定期总结、汇报质量管理工作，做好季度质量报表；', '项目经理', '001');
INSERT INTO `tb_dept` VALUES ('26', '1', '项目一部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '李助理', '郭领导', '0', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '项目经理', '001');
INSERT INTO `tb_dept` VALUES ('27', '2', '项目二部', '100', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '赵助理', '王领导', '0', '王领导', '010-51299003', '152013654125', '负责质量成本分析和控制，定期总结、汇报质量管理工作，做好季度质量报表；', '项目经理', '001');
INSERT INTO `tb_dept` VALUES ('28', '3', '生产部', '200', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '郭领导', '1', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '部门经理', '001');
INSERT INTO `tb_dept` VALUES ('29', '4', '采购部', '600', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '李助理', '王领导', '1', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '采购经理', '001');
INSERT INTO `tb_dept` VALUES ('30', '5', '生产一部', '300', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '赵助理', '郭领导', '0', '王领导', '010-51299003', '152013654125', '负责质量成本分析和控制，定期总结、汇报质量管理工作，做好季度质量报表；', '部门经理', '001');
INSERT INTO `tb_dept` VALUES ('31', '1', '生产二部', '200', '北京市海淀区紫竹院路69号中国兵器大厦508', '王主管', '赵助理', '王领导', '1', '刘领导', '010-51299003', '152013654125', '负责组织对不合格品的评审，对评审结果提出处理措施，', '职员', '001');
INSERT INTO `tb_dept` VALUES ('32', '2', '质检部', '500', '北京市海淀区紫竹院路69号中国兵器大厦508', '张主管', '李助理', '郭领导', '0', '王领导', '010-51299003', '152013654125', '负责质量成本分析和控制，定期总结、汇报质量管理工作，做好季度质量报表；', '部门经理', '001');

-- ----------------------------
-- Table structure for `tb_dwinformation`
-- ----------------------------
DROP TABLE IF EXISTS `tb_dwinformation`;
CREATE TABLE `tb_dwinformation` (
  `dwinformation_id` int(11) NOT NULL AUTO_INCREMENT,
  `dwinformation_name` varchar(100) DEFAULT NULL,
  `dwinformation_phone` varchar(100) DEFAULT NULL,
  `dwinformation_fax` varchar(100) DEFAULT NULL,
  `dwinformation_postal_code` varchar(100) DEFAULT NULL,
  `dwinformation_address` varchar(100) DEFAULT NULL,
  `dwinformation_website` varchar(100) DEFAULT NULL,
  `dwinformation_email` varchar(100) DEFAULT NULL,
  `dwinformation_bankname` varchar(100) DEFAULT NULL,
  `dwinformation_account_number` varchar(100) DEFAULT NULL,
  `dwinformation_introduce` varchar(500) DEFAULT NULL,
  `dwinformation_banknumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dwinformation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dwinformation
-- ----------------------------
INSERT INTO `tb_dwinformation` VALUES ('1', '北京通达信科科技有限公司', '123456', '15236501254', '100000', '北京', 'www.ghndg.hklou', '1580213021@qq.com', '中国建设银行', '41250125', '北京通达信科科技有限公司是中国兵器工业信息中心的全资子公司，是一支以管理软件研发、实施、服务与咨询为主营业务的高科技企业，隶属于全世界500强企业中国兵器工业集团公司。', '无');
INSERT INTO `tb_dwinformation` VALUES ('2', '上海凯托有限责任公司', '154202', '15240687452', '200000', '上海', 'www.com.huijkko', '1584203154@qq.com', '中国邮政', '45120365', '上海凯托（集团）有限公司是集科工贸为一体的大型企业集团，是上海市经委和外经贸委重点扶持的140家大型企业之一。公司持有进口权，并通过ISO9002质量体系认证。', '无');
INSERT INTO `tb_dwinformation` VALUES ('3', '深圳航空有限责任公司', '451203', '18752031546', '518000', '深圳', 'www.com.juhheep', '1720154625@qq.com', '中国农业银行', '15420163', '深圳有限责任公司1992年11月成立，1993年9月17日正式开航。是一家总部位于广东省深圳市的航空公司。现为国内第五大航空集团。', '无');
INSERT INTO `tb_dwinformation` VALUES ('4', '哈尔滨投资集团有限责任公司', '185421', '15230265418', '150000', '哈尔滨', 'www.com.loojhuid', '15420315642@qq.com', '中国银行', '45120156', '哈尔滨投资集团有限责任公司成立于1988年8月，是市政府重大项目投融资平台和市政府重要的国有资产经营机构。', '无');
INSERT INTO `tb_dwinformation` VALUES ('5', '香港拍卖有限责任公司', '452102', '15426320158', '999077', '香港', 'www.hjuh.ehdeus', '45210365412@qq.com', '中国建设银行', '85412625', '香港拍卖有限责任公司创立于1999年，是“香港拍卖行业协会”优秀资质企业，拥有中外文物拍卖资源，是以经营中外文物艺术品拍卖为主的综合性拍卖公司，公司始终以传承中国传统文化与艺术为己任，每年定期举办春季、秋季大型拍卖会及特别专场。', '无');

-- ----------------------------
-- Table structure for `tb_insurance_para`
-- ----------------------------
DROP TABLE IF EXISTS `tb_insurance_para`;
CREATE TABLE `tb_insurance_para` (
  `insurance_para_id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance_para_name` varchar(100) DEFAULT NULL,
  `insurance_para_hktype` varchar(100) DEFAULT NULL,
  `insurance_para_pensiongr` varchar(100) DEFAULT NULL,
  `insurance_para_persiondw` varchar(100) DEFAULT NULL,
  `insurance_para_medicaldw` varchar(100) DEFAULT NULL,
  `insurance_para_losegr` varchar(100) DEFAULT NULL,
  `insurance_para_losedw` varchar(100) DEFAULT NULL,
  `insurance_para_gjjgr` varchar(100) DEFAULT NULL,
  `insurance_para_gjjdw` varchar(100) DEFAULT NULL,
  `insurance_para_workgr` varchar(100) DEFAULT NULL,
  `insurance_para_workdw` varchar(100) DEFAULT NULL,
  `insurance_para_sygr` varchar(100) DEFAULT NULL,
  `insurance_para_sydw` varchar(100) DEFAULT NULL,
  `insurance_para_show` varchar(100) DEFAULT NULL,
  `insurance_para_medicalgr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`insurance_para_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_insurance_para
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_itemtype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_itemtype`;
CREATE TABLE `tb_itemtype` (
  `Itemtype_id` int(11) NOT NULL AUTO_INCREMENT,
  `Itemtype_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Itemtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_itemtype
-- ----------------------------
INSERT INTO `tb_itemtype` VALUES ('1', '财务录入项');
INSERT INTO `tb_itemtype` VALUES ('2', '部门上报项');
INSERT INTO `tb_itemtype` VALUES ('3', '部门扣款项');

-- ----------------------------
-- Table structure for `tb_log`
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `operation` varchar(50) NOT NULL COMMENT '操作',
  `method` varchar(100) DEFAULT NULL COMMENT '执行方法',
  `params` varchar(500) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'ip',
  `create_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES ('690', 'test', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":61,\"roleName\":\"test\",\"roleRemark\":\"test\"};\"1,2,3,16,17,18,19,4,20,46,47,48,49,50,9,11,34,14,15,42,43,44,45,63,64,65,66\";', '0:0:0:0:0:0:0:1', '2018-11-02 09:37:58');
INSERT INTO `tb_log` VALUES ('691', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":63,\"title\":\"加班登记\",\"icon\":\"&#xe642\",\"href\":\"GeRen/JiaBan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":98,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-02 10:11:54');
INSERT INTO `tb_log` VALUES ('692', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,14,15,42,43,44,45,51,52,53,54,55,56,57,58,59,60,61,63,64,65,66,67\";', '0:0:0:0:0:0:0:1', '2018-11-02 10:12:10');
INSERT INTO `tb_log` VALUES ('693', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":61,\"roleName\":\"test\",\"roleRemark\":\"test\"};\"1,2,3,16,17,18,19,4,20,46,47,48,49,50,9,11,34,14,15,42,43,44,45,63,64,65,66,67\";', '0:0:0:0:0:0:0:1', '2018-11-02 10:12:24');
INSERT INTO `tb_log` VALUES ('694', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":63,\"title\":\"出差管理\",\"icon\":\"&#xe642\",\"href\":\"GeRen/ChuChai.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":97,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-02 16:11:19');
INSERT INTO `tb_log` VALUES ('695', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"出差登记\",\"icon\":\"\",\"href\":\"GeRen/ChuChai.action\",\"perms\":\"\",\"spread\":null,\"parentId\":63,\"sorting\":97,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-02 16:11:45');
INSERT INTO `tb_log` VALUES ('696', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,14,15,42,43,44,45,51,52,53,54,55,56,57,58,59,60,61,63,64,65,66,67,68\";', '0:0:0:0:0:0:0:1', '2018-11-02 16:12:12');
INSERT INTO `tb_log` VALUES ('697', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":61,\"roleName\":\"test\",\"roleRemark\":\"test\"};\"1,2,3,16,17,18,19,4,20,46,47,48,49,50,9,11,34,14,15,42,43,44,45,63,64,65,66,67,68\";', '0:0:0:0:0:0:0:1', '2018-11-02 16:12:23');

-- ----------------------------
-- Table structure for `tb_mail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_mail`;
CREATE TABLE `tb_mail` (
  `emailId` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `from_id` varchar(500) DEFAULT NULL,
  `to_id2` varchar(500) DEFAULT NULL,
  `copy_to_id` varchar(500) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `sendtime` datetime DEFAULT NULL,
  `attachment_id` varchar(200) DEFAULT NULL,
  `attachment_name` varchar(200) DEFAULT NULL,
  `send_flag` int(11) DEFAULT NULL,
  `sms_remind` int(11) DEFAULT NULL,
  `important` int(11) DEFAULT NULL,
  `keyword` varchar(500) DEFAULT NULL,
  `secret_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`emailId`),
  KEY `FK_TB_MAIL_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_TB_MAIL_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_mail
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_menus`
-- ----------------------------
DROP TABLE IF EXISTS `tb_menus`;
CREATE TABLE `tb_menus` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `href` varchar(100) DEFAULT NULL,
  `perms` varchar(500) DEFAULT NULL,
  `spread` varchar(10) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menus
-- ----------------------------
INSERT INTO `tb_menus` VALUES ('1', '后台首页', '', 'page/main.html', '', 'false', '0', '9999');
INSERT INTO `tb_menus` VALUES ('2', '管理员管理', '', '', '', 'false', '0', '998');
INSERT INTO `tb_menus` VALUES ('3', '角色管理', '&#xe613;', 'sys/roleList', null, 'false', '2', null);
INSERT INTO `tb_menus` VALUES ('4', '管理员列表', '&#xe613;', 'sys/adminList', null, 'false', '2', null);
INSERT INTO `tb_menus` VALUES ('9', '用户管理', '&#xe61d;', null, null, 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('10', '添加用户', '&#xe608;', 'user/addUser', null, 'false', '9', null);
INSERT INTO `tb_menus` VALUES ('11', '管理用户', '&#xe60e;', 'user/userList', null, 'false', '9', null);
INSERT INTO `tb_menus` VALUES ('14', '系统日志', '&#xe61d;', null, null, 'false', '0', '995');
INSERT INTO `tb_menus` VALUES ('15', '日志管理', '&#xe642;', 'log/logList', null, 'false', '14', null);
INSERT INTO `tb_menus` VALUES ('16', '查看', '', '', 'sys:role:list', 'false', '3', null);
INSERT INTO `tb_menus` VALUES ('17', '新增', null, null, 'sys:role:save', 'false', '3', null);
INSERT INTO `tb_menus` VALUES ('18', '修改', null, null, 'sys:role:update', 'false', '3', null);
INSERT INTO `tb_menus` VALUES ('19', '删除', null, null, 'sys:role:delete', 'false', '3', null);
INSERT INTO `tb_menus` VALUES ('20', '查看', null, null, 'sys:admin:list', 'false', '4', null);
INSERT INTO `tb_menus` VALUES ('21', '新增', null, null, 'sys:admin:save', 'false', '4', null);
INSERT INTO `tb_menus` VALUES ('22', '修改', null, null, 'sys:admin:update', 'false', '4', null);
INSERT INTO `tb_menus` VALUES ('23', '删除', null, null, 'sys:admin:delete', 'false', '4', null);
INSERT INTO `tb_menus` VALUES ('33', '新增', null, null, 'user:user:save', 'false', '10', null);
INSERT INTO `tb_menus` VALUES ('34', '查看', null, null, 'user:user:list', 'false', '11', null);
INSERT INTO `tb_menus` VALUES ('35', '新增', null, null, 'user:user:save', 'false', '11', null);
INSERT INTO `tb_menus` VALUES ('36', '修改', null, null, 'user:user:update', 'false', '11', null);
INSERT INTO `tb_menus` VALUES ('37', '删除', null, null, 'user:user:delete', 'false', '11', null);
INSERT INTO `tb_menus` VALUES ('42', '查看', '', '', 'log:log:list', 'false', '15', null);
INSERT INTO `tb_menus` VALUES ('43', 'SQL监控', '&#xe642;', null, null, 'false', '0', '996');
INSERT INTO `tb_menus` VALUES ('44', 'SQL监控', '&#xe642;', 'sys/druid', null, 'false', '43', null);
INSERT INTO `tb_menus` VALUES ('45', '查看', null, null, 'sys:druid:list', 'false', '44', null);
INSERT INTO `tb_menus` VALUES ('46', '菜单管理', '&#xe642;', 'sys/menuList', null, 'false', '2', null);
INSERT INTO `tb_menus` VALUES ('47', '查看', null, null, 'sys:menu:list', 'false', '46', null);
INSERT INTO `tb_menus` VALUES ('48', '新增', null, null, 'sys:menu:save', 'false', '46', null);
INSERT INTO `tb_menus` VALUES ('49', '修改', null, null, 'sys:menu:update', 'false', '46', null);
INSERT INTO `tb_menus` VALUES ('50', '删除', null, null, 'sys:menu:delete', 'false', '46', null);
INSERT INTO `tb_menus` VALUES ('51', '轮播管理', '', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('52', '轮播管理', '', 'carousel/carouselList', '', 'false', '51', null);
INSERT INTO `tb_menus` VALUES ('53', '查看', '', '', 'carousel:carousel:list', 'false', '52', null);
INSERT INTO `tb_menus` VALUES ('54', '删除', '', '', 'carousel:carousel:delete', 'false', '52', null);
INSERT INTO `tb_menus` VALUES ('55', '修改', '', '', 'carousel:carousel:update', 'false', '52', null);
INSERT INTO `tb_menus` VALUES ('56', '新增', '', '', 'carousel:carousel:save', 'false', '52', null);
INSERT INTO `tb_menus` VALUES ('57', '考勤设置', '', '', '', 'false', '0', '900');
INSERT INTO `tb_menus` VALUES ('58', '免签节假日', '', 'Festival/festival.action', '', 'false', '57', '1000');
INSERT INTO `tb_menus` VALUES ('59', '审批规则设置', '', 'exam/Exam.action', '', 'false', '57', '1001');
INSERT INTO `tb_menus` VALUES ('60', '班次管理', '', 'schedule/Ban.action', '', 'false', '57', '999');
INSERT INTO `tb_menus` VALUES ('61', '排班管理', '&#xe642', 'duty/PaiBan.action', '', 'false', '57', '1002');
INSERT INTO `tb_menus` VALUES ('63', '个人事务', '&#xe642', '', '', 'false', '0', '901');
INSERT INTO `tb_menus` VALUES ('64', '外出登记', '&#xe642', 'schedule/test.action', '', 'false', '63', '100');
INSERT INTO `tb_menus` VALUES ('65', '个人考勤', '', 'GeRen/KaoQin.action', '', 'false', '63', '101');
INSERT INTO `tb_menus` VALUES ('66', '请假登记', '&#xe642', 'GeRen/QingJia.action', '', 'false', '63', '99');
INSERT INTO `tb_menus` VALUES ('67', '加班登记', '&#xe642', 'GeRen/JiaBan.action', '', 'false', '63', '98');
INSERT INTO `tb_menus` VALUES ('68', '出差登记', '', 'GeRen/ChuChai.action', '', 'false', '63', '97');

-- ----------------------------
-- Table structure for `tb_notifytype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_notifytype`;
CREATE TABLE `tb_notifytype` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_notifytype
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_personxc`
-- ----------------------------
DROP TABLE IF EXISTS `tb_personxc`;
CREATE TABLE `tb_personxc` (
  `personxc_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `personxc_s1` double DEFAULT NULL,
  `personxc_s2` double DEFAULT NULL,
  `personxc_s3` double DEFAULT NULL,
  `personxc_s4` double DEFAULT NULL,
  `personxc_s5` double DEFAULT NULL,
  `personxc_s6` double DEFAULT NULL,
  `personxc_s7` double DEFAULT NULL,
  `personxc_s8` double DEFAULT NULL,
  `personxc_s9` double DEFAULT NULL,
  `personxc_s10` double DEFAULT NULL,
  `personxc_insurejs` double DEFAULT NULL,
  `personxc_ylinsure` double DEFAULT NULL,
  `personxc_dwyl` double DEFAULT NULL,
  `personxc_gryl` double DEFAULT NULL,
  `personxc_ylbx` double DEFAULT NULL,
  `personxc_dw_medical` double DEFAULT NULL,
  `personxc_grmedical` double DEFAULT NULL,
  `personxc_group` double DEFAULT NULL,
  `personxc_dwsy` double DEFAULT NULL,
  `personxc_sybx` double DEFAULT NULL,
  `personxc_dwshiye` double DEFAULT NULL,
  `personxc_grsy` double DEFAULT NULL,
  `personxc_gsbx` double DEFAULT NULL,
  `personxc_dwgs` double DEFAULT NULL,
  `personxc_housingfund` double DEFAULT NULL,
  `personxc_dwzf` double DEFAULT NULL,
  `personxc_grzf` double DEFAULT NULL,
  `personxc_expression` varchar(100) DEFAULT NULL,
  `person_dept_status` int(11) DEFAULT NULL,
  `person_cw_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`personxc_id`),
  KEY `FK_TB_PERSO_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_TB_PERSO_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_personxc
-- ----------------------------
INSERT INTO `tb_personxc` VALUES ('1', '1', null, null, null, null, null, null, null, null, null, null, '5000', '123', '123', '123', '123', '1231', '123', '132', '123', '123', '123', '123', '123', '123', '123', '123', '123', '良好', '1', '1');
INSERT INTO `tb_personxc` VALUES ('2', '1', null, null, null, null, null, null, null, null, null, null, '2000', '123', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '111', '较差', '0', '0');
INSERT INTO `tb_personxc` VALUES ('3', '1', null, null, null, null, null, null, null, null, null, null, '200', '200', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '222', '优秀', '1', '1');

-- ----------------------------
-- Table structure for `tb_roles`
-- ----------------------------
DROP TABLE IF EXISTS `tb_roles`;
CREATE TABLE `tb_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `role_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_roles
-- ----------------------------
INSERT INTO `tb_roles` VALUES ('1', '超级管理员', '超级管理员');
INSERT INTO `tb_roles` VALUES ('61', 'test', 'test');

-- ----------------------------
-- Table structure for `tb_roles_menus`
-- ----------------------------
DROP TABLE IF EXISTS `tb_roles_menus`;
CREATE TABLE `tb_roles_menus` (
  `menu_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `FK_TB_ROLES_REFERENCE_TB_MENUS` (`menu_id`),
  KEY `FK_TB_ROLES_REFERENCE_TB_ROLES` (`role_id`),
  CONSTRAINT `FK_TB_ROLES_REFERENCE_TB_MENUS` FOREIGN KEY (`menu_id`) REFERENCES `tb_menus` (`menu_id`),
  CONSTRAINT `FK_TB_ROLES_REFERENCE_TB_ROLES` FOREIGN KEY (`role_id`) REFERENCES `tb_roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_roles_menus
-- ----------------------------
INSERT INTO `tb_roles_menus` VALUES ('1', '1');
INSERT INTO `tb_roles_menus` VALUES ('2', '1');
INSERT INTO `tb_roles_menus` VALUES ('3', '1');
INSERT INTO `tb_roles_menus` VALUES ('16', '1');
INSERT INTO `tb_roles_menus` VALUES ('17', '1');
INSERT INTO `tb_roles_menus` VALUES ('18', '1');
INSERT INTO `tb_roles_menus` VALUES ('19', '1');
INSERT INTO `tb_roles_menus` VALUES ('4', '1');
INSERT INTO `tb_roles_menus` VALUES ('20', '1');
INSERT INTO `tb_roles_menus` VALUES ('21', '1');
INSERT INTO `tb_roles_menus` VALUES ('22', '1');
INSERT INTO `tb_roles_menus` VALUES ('23', '1');
INSERT INTO `tb_roles_menus` VALUES ('46', '1');
INSERT INTO `tb_roles_menus` VALUES ('47', '1');
INSERT INTO `tb_roles_menus` VALUES ('48', '1');
INSERT INTO `tb_roles_menus` VALUES ('49', '1');
INSERT INTO `tb_roles_menus` VALUES ('50', '1');
INSERT INTO `tb_roles_menus` VALUES ('9', '1');
INSERT INTO `tb_roles_menus` VALUES ('10', '1');
INSERT INTO `tb_roles_menus` VALUES ('33', '1');
INSERT INTO `tb_roles_menus` VALUES ('11', '1');
INSERT INTO `tb_roles_menus` VALUES ('34', '1');
INSERT INTO `tb_roles_menus` VALUES ('35', '1');
INSERT INTO `tb_roles_menus` VALUES ('36', '1');
INSERT INTO `tb_roles_menus` VALUES ('37', '1');
INSERT INTO `tb_roles_menus` VALUES ('14', '1');
INSERT INTO `tb_roles_menus` VALUES ('15', '1');
INSERT INTO `tb_roles_menus` VALUES ('42', '1');
INSERT INTO `tb_roles_menus` VALUES ('43', '1');
INSERT INTO `tb_roles_menus` VALUES ('44', '1');
INSERT INTO `tb_roles_menus` VALUES ('45', '1');
INSERT INTO `tb_roles_menus` VALUES ('51', '1');
INSERT INTO `tb_roles_menus` VALUES ('52', '1');
INSERT INTO `tb_roles_menus` VALUES ('53', '1');
INSERT INTO `tb_roles_menus` VALUES ('54', '1');
INSERT INTO `tb_roles_menus` VALUES ('55', '1');
INSERT INTO `tb_roles_menus` VALUES ('56', '1');
INSERT INTO `tb_roles_menus` VALUES ('57', '1');
INSERT INTO `tb_roles_menus` VALUES ('58', '1');
INSERT INTO `tb_roles_menus` VALUES ('59', '1');
INSERT INTO `tb_roles_menus` VALUES ('60', '1');
INSERT INTO `tb_roles_menus` VALUES ('61', '1');
INSERT INTO `tb_roles_menus` VALUES ('63', '1');
INSERT INTO `tb_roles_menus` VALUES ('64', '1');
INSERT INTO `tb_roles_menus` VALUES ('65', '1');
INSERT INTO `tb_roles_menus` VALUES ('66', '1');
INSERT INTO `tb_roles_menus` VALUES ('67', '1');
INSERT INTO `tb_roles_menus` VALUES ('68', '1');
INSERT INTO `tb_roles_menus` VALUES ('1', '61');
INSERT INTO `tb_roles_menus` VALUES ('2', '61');
INSERT INTO `tb_roles_menus` VALUES ('3', '61');
INSERT INTO `tb_roles_menus` VALUES ('16', '61');
INSERT INTO `tb_roles_menus` VALUES ('17', '61');
INSERT INTO `tb_roles_menus` VALUES ('18', '61');
INSERT INTO `tb_roles_menus` VALUES ('19', '61');
INSERT INTO `tb_roles_menus` VALUES ('4', '61');
INSERT INTO `tb_roles_menus` VALUES ('20', '61');
INSERT INTO `tb_roles_menus` VALUES ('46', '61');
INSERT INTO `tb_roles_menus` VALUES ('47', '61');
INSERT INTO `tb_roles_menus` VALUES ('48', '61');
INSERT INTO `tb_roles_menus` VALUES ('49', '61');
INSERT INTO `tb_roles_menus` VALUES ('50', '61');
INSERT INTO `tb_roles_menus` VALUES ('9', '61');
INSERT INTO `tb_roles_menus` VALUES ('11', '61');
INSERT INTO `tb_roles_menus` VALUES ('34', '61');
INSERT INTO `tb_roles_menus` VALUES ('14', '61');
INSERT INTO `tb_roles_menus` VALUES ('15', '61');
INSERT INTO `tb_roles_menus` VALUES ('42', '61');
INSERT INTO `tb_roles_menus` VALUES ('43', '61');
INSERT INTO `tb_roles_menus` VALUES ('44', '61');
INSERT INTO `tb_roles_menus` VALUES ('45', '61');
INSERT INTO `tb_roles_menus` VALUES ('63', '61');
INSERT INTO `tb_roles_menus` VALUES ('64', '61');
INSERT INTO `tb_roles_menus` VALUES ('65', '61');
INSERT INTO `tb_roles_menus` VALUES ('66', '61');
INSERT INTO `tb_roles_menus` VALUES ('67', '61');
INSERT INTO `tb_roles_menus` VALUES ('68', '61');

-- ----------------------------
-- Table structure for `tb_safefactor`
-- ----------------------------
DROP TABLE IF EXISTS `tb_safefactor`;
CREATE TABLE `tb_safefactor` (
  `safefactor_id` int(11) NOT NULL AUTO_INCREMENT,
  `safefactor_name` varchar(30) DEFAULT NULL,
  `grpayment` varchar(50) DEFAULT NULL,
  `dwpayment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`safefactor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_safefactor
-- ----------------------------
INSERT INTO `tb_safefactor` VALUES ('1', '养老保险系数', '7', '20');
INSERT INTO `tb_safefactor` VALUES ('2', '医疗保险系数', '4', '10');
INSERT INTO `tb_safefactor` VALUES ('3', '失业保险系数', '6', '15');
INSERT INTO `tb_safefactor` VALUES ('4', '住房公积金系数', '5', '20');
INSERT INTO `tb_safefactor` VALUES ('5', '工伤保险系数', '0', '5');
INSERT INTO `tb_safefactor` VALUES ('6', '生育保险系数', '0', '8');

-- ----------------------------
-- Table structure for `tb_salaryflow`
-- ----------------------------
DROP TABLE IF EXISTS `tb_salaryflow`;
CREATE TABLE `tb_salaryflow` (
  `salaryflow_id` int(11) NOT NULL AUTO_INCREMENT,
  `salaryflow_createtime` date DEFAULT NULL,
  `salaryflow_creator` varchar(100) DEFAULT NULL,
  `salaryflow_begintime` date DEFAULT NULL,
  `salaryflow_endtime` date DEFAULT NULL,
  `salaryflow_year` date DEFAULT NULL,
  `salaryflow_month` date DEFAULT NULL,
  `salaryflow_mark` varchar(500) DEFAULT NULL,
  `salaryflow_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`salaryflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_salaryflow
-- ----------------------------
INSERT INTO `tb_salaryflow` VALUES ('1', '2018-06-07', '系统管理员', '2018-06-08', '2018-06-21', '2018-06-08', '2018-06-08', '这是2018年6月份工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('2', '2018-01-01', '系统管理员', '2018-02-02', '2018-02-02', '2018-02-02', '2018-02-02', '这是2018年1月份工资', '2');
INSERT INTO `tb_salaryflow` VALUES ('3', '2018-06-16', '系统管理员', '2018-06-30', '2018-06-28', '2018-06-08', '2018-06-15', '这是2018年的工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('4', '2018-06-08', '系统管理员', '2018-06-08', '2018-07-08', '2018-06-08', '2018-06-08', '这是2018年的工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('5', '2018-06-07', '系统管理员', '2018-06-08', '2018-06-15', '2018-06-14', '2018-06-09', '这是6月份的工资', '2');
INSERT INTO `tb_salaryflow` VALUES ('6', '2018-06-10', '系统管理员', '2018-06-16', '2018-06-14', '2018-06-21', '2018-06-29', '这是2018年6月份的工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('7', '2018-06-24', '系统管理员', '2018-06-21', '2018-06-21', '2018-06-21', '2018-06-16', '这是2018年6月份的工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('8', '2018-06-12', '系统管理员', '2018-06-16', '2018-06-14', '2018-06-15', '2018-06-17', '这是2018年6月份的工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('9', '2018-06-09', '系统管理员', '2018-06-15', '2018-06-14', '2018-06-15', '2018-06-15', '这是2018年的工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('10', '2018-06-24', '系统管理员', '2018-07-07', '2018-07-07', '2018-07-07', '2018-07-07', '这是2018年7月份的工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('11', '2018-07-08', '系统管理员', '2018-07-14', '2018-07-14', '2018-07-21', '2018-07-29', '这是2018年7月份工资', '2');

-- ----------------------------
-- Table structure for `tb_sal_data`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sal_data`;
CREATE TABLE `tb_sal_data` (
  `sal_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `personxc_id` int(11) DEFAULT NULL,
  `salaryflow_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `sal_SSalary` double DEFAULT NULL,
  `sal_expression` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`sal_data_id`),
  KEY `FK_TB_SAL_D_REFERENCE_TB_PERSO` (`personxc_id`),
  KEY `FK_TB_SAL_D_REFERENCE_TB_SALAR` (`salaryflow_id`),
  KEY `FK_TB_SAL_D_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_TB_SAL_D_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_TB_SAL_D_REFERENCE_TB_PERSO` FOREIGN KEY (`personxc_id`) REFERENCES `tb_personxc` (`personxc_id`),
  CONSTRAINT `FK_TB_SAL_D_REFERENCE_TB_SALAR` FOREIGN KEY (`salaryflow_id`) REFERENCES `tb_salaryflow` (`salaryflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sal_data
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_sal_item`
-- ----------------------------
DROP TABLE IF EXISTS `tb_sal_item`;
CREATE TABLE `tb_sal_item` (
  `Item_id` int(11) NOT NULL AUTO_INCREMENT,
  `Itemtype_id` int(11) DEFAULT NULL,
  `Item_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Item_id`),
  KEY `FK_TB_SAL_I_REFERENCE_TB_ITEMT` (`Itemtype_id`),
  CONSTRAINT `FK_TB_SAL_I_REFERENCE_TB_ITEMT` FOREIGN KEY (`Itemtype_id`) REFERENCES `tb_itemtype` (`Itemtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sal_item
-- ----------------------------
INSERT INTO `tb_sal_item` VALUES ('1', '1', '基本工资');
INSERT INTO `tb_sal_item` VALUES ('2', '2', '奖金');
INSERT INTO `tb_sal_item` VALUES ('3', '3', '津贴');
INSERT INTO `tb_sal_item` VALUES ('4', '1', '劳务费');
INSERT INTO `tb_sal_item` VALUES ('5', '2', '房贴');
INSERT INTO `tb_sal_item` VALUES ('6', '3', '高温费');
INSERT INTO `tb_sal_item` VALUES ('21', '3', '迟到扣款');
INSERT INTO `tb_sal_item` VALUES ('24', '1', '呼呼');

-- ----------------------------
-- Table structure for `tb_staff`
-- ----------------------------
DROP TABLE IF EXISTS `tb_staff`;
CREATE TABLE `tb_staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(100) DEFAULT NULL,
  `staff_onlinetime` date DEFAULT NULL,
  `staff_sex` varchar(100) DEFAULT NULL,
  `staff_workphone` varchar(100) DEFAULT NULL,
  `staff_phone` varchar(100) DEFAULT NULL,
  `staff_email` varchar(100) DEFAULT NULL,
  `staff_dept` varchar(100) DEFAULT NULL,
  `staff_role` varchar(100) DEFAULT NULL,
  `staff_user` varchar(100) DEFAULT NULL,
  `staff_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_staff
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_txgroup`
-- ----------------------------
DROP TABLE IF EXISTS `tb_txgroup`;
CREATE TABLE `tb_txgroup` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `group_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  KEY `FK_TB_TXGRO_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_TB_TXGRO_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_txgroup
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_users`
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `e_mail` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL COMMENT '昵称：唯一',
  `password` varchar(50) NOT NULL,
  `sex` varchar(1) NOT NULL COMMENT '0:女，1:男，2：保密',
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `e_code` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL COMMENT '0:未激活，1，正常，2，禁用',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('27', 'isduxd@qq.com', 'test', '96e79218965eb72c92a549dd5a330112', '0', '2018-03-25', '北京通州科创十四街区', '17693109923', 'b3f28566dac54f86bd4f4c2ce36e23d8019', '1', '2018-03-25 14:48:48');
INSERT INTO `tb_users` VALUES ('28', '123@qq.com', '2113', '96e79218965eb72c92a549dd5a330112', '1', '2018-07-26', '123123', '17693109997', 'c6411671821c43ca926c032e51ded16a897', '1', '2018-07-27 09:59:16');
INSERT INTO `tb_users` VALUES ('29', 'sdf@163.com', '123123', '96e79218965eb72c92a549dd5a330112', '2', '2018-07-27', '123123', '17111111111', '92197e8f8a5647ae8be96fe2db555575147', '1', '2018-07-27 14:23:55');

-- ----------------------------
-- Procedure structure for `ShenPi`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ShenPi`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShenPi`(in num int)
BEGIN
			
     DECLARE sname varchar(100) default '';  
     DECLARE sname1 varchar(100) default '';  
     DECLARE department1 varchar(100);  
     DECLARE staff2 varchar(100); 
     DECLARE done int;
     DECLARE cur1 CURSOR FOR SELECT department,staff FROM examination;  
     DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;
     OPEN cur1;  
     emp_loop: LOOP
				 IF done=1 THEN	
						LEAVE emp_loop;  
				 END IF;
							FETCH cur1 INTO department1,staff2;  	
							IF INSTR(department1,num)>0  THEN
							SET sname=CONCAT(sname,department1,"");
							SET sname1=CONCAT(sname1,staff2,""); 
							END if;
     END LOOP emp_loop;
		 select sname,sname1;
     CLOSE cur1; 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `ShenPi1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ShenPi1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShenPi1`()
BEGIN
			
     DECLARE sname varchar(100) default '';  
     DECLARE sname1 varchar(100) default '';  
     DECLARE department1 varchar(100);  
     DECLARE staff2 varchar(100); 
     DECLARE b int;
     DECLARE cur1 CURSOR FOR SELECT department,staff FROM examination;  
     DECLARE CONTINUE HANDLER FOR NOT FOUND SET b=1;
     OPEN cur1;  
      
		 while b<>1 do  
				FETCH cur1 INTO department1,staff2;          
        set sname=CONCAT(sname,department1,"");
        set sname1=CONCAT(sname1,staff1,"");
       
    end while;
		 select sname,sname1;
     CLOSE cur1; 
END
;;
DELIMITER ;
