/*
Navicat MySQL Data Transfer

Source Server         : gd
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : wyait

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2018-11-13 23:55:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address_book`
-- ----------------------------
DROP TABLE IF EXISTS `address_book`;
CREATE TABLE `address_book` (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_book
-- ----------------------------
INSERT INTO `address_book` VALUES ('1', '1', '1', '问问', null, ' 为', '2018-11-14', '恶趣味', '而我却', '去恶趣味', ' 我去', '213123', '12312', ' 我去额', '1231', ' 1312', '3213', '321312', '1231', null);
INSERT INTO `address_book` VALUES ('2', '1', '1', '张扬', null, '杨杨', '2012-11-06', '销售经理11', 'dsds', '上海', '234234', '4232432', '32423423', 'sdfsfsdf', '23423423', '324234234', '23423423', '32423423432', '234234324', null);
INSERT INTO `address_book` VALUES ('3', '1111', '1', '张扬', null, '杨杨', '2018-11-05', '销售经理', '上海有限公司', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('4', '1', '1', '网页上', null, 'ddddddd', '', '哒哒哒哒哒哒多多多', 'ddddddd', '哒哒哒哒哒哒多多多', 'dddddddd', '阿萨德', ' das', '大', '啊的', '阿萨德', 'ad', '啊', '大神as', null);
INSERT INTO `address_book` VALUES ('5', '1', '1', '网页上', '男', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('8', '1', '1', '鲁发', null, '', '', '多个地方', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('9', '1', '1', 'USD好几年', '男', '年', '', '技术的比例', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('10', '1', '3', '郭迪', '男', '二位', '2018-11-07', '请问', '二位', '二位翁无', '12312312', '12312321', '12312321', '诉讼费', '123123', '12312312', '123123123123', '12312321', '12312312312', null);
INSERT INTO `address_book` VALUES ('11', '1', '1', 'dddd', '男', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('12', '1', '1', 'fsdfdfs ', '男', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('13', '1', '1', 'sdfds', '男', 'fdsf', '2018-11-15', 'dsf', 'dsf', 'fsdf', 'dsfsdfds', 'fsdf', 'dsf', 'sdf', 'fsd', 'dsf', 'fds', 'fds', 'fds', null);

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
  `sPrice` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('1', '1', '1', '1', '1', '20', '1', '一张纸', '草稿纸', '借用', '2018-10-24', '1', '5', '1', '报废', '晨光', '稿纸', '1', '1', '1', '张山', '61', '2', '经理', '1', '2018-10-16', '1', null, null);
INSERT INTO `apply` VALUES ('2', '1', '1', '1', '1', '15', '2', '两张纸', '草稿纸', '借用', '2018-10-31', '1', '5', '1', '不要', '晨光', '稿纸', '1', '1', '1', '李四', '61', '2', '经理', '1', '2018-10-25', '1', null, null);
INSERT INTO `apply` VALUES ('5', '1', '2', '1', null, '2', '1', '再领一个', null, '领用', '2018-11-06', '1', '4', null, null, null, null, null, null, null, null, '18', '1', null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('6', '1', '4', '1', null, '1', '1', '身亲', null, '领用', '2018-11-07', '1', '4', null, null, null, null, null, null, null, null, '18', '1', null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('7', '1', '4', '1', null, '1', '1', '13513', null, '领用', '2018-10-11', '1', '5', null, null, null, null, null, null, null, null, '18', '2', null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('8', '1', '4', '18', null, '1', '1', 'dsds', null, '领用', '2018-11-11', '18', '5', null, null, null, null, null, null, null, null, '18', '2', null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('9', '1', '2', '23', null, '2', '1', 'dddd', null, '领用', '2018-11-12', '23', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('10', '1', '3', '23', null, '2', '1', 'jieyong', null, '借用', '2018-11-12', '23', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('11', '1', '4', '1', null, '1', '1', 'huihibib', null, '领用', '2018-11-12', '1', '4', null, null, null, null, null, null, null, null, '18', '1', null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of court
-- ----------------------------
INSERT INTO `court` VALUES ('1', '1', '1', '一号仓');
INSERT INTO `court` VALUES ('2', '1', '2', '二号仓');

-- ----------------------------
-- Table structure for `dutyroster`
-- ----------------------------
DROP TABLE IF EXISTS `dutyroster`;
CREATE TABLE `dutyroster` (
  `drId` int(11) NOT NULL AUTO_INCREMENT,
  `scid` int(11) DEFAULT NULL,
  `drNameId` varchar(255) DEFAULT NULL,
  `drNameId2` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dutyroster
-- ----------------------------
INSERT INTO `dutyroster` VALUES ('4', '9', '总经办,综合管理部,人力资源部,财务部,行政部,市场营销部,市场部,品牌部,网络营销中心,商务中心,', 'admin,test,lpr,mm,zx,gd,xiaoli,chl,wangmengwei,', '1,2,3,4,5,6,7,8,9,10,', '1,18,19,20,21,22,23,24,25,', '11', '2018-11-01', '2018-11-30', '1', null, null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examination
-- ----------------------------
INSERT INTO `examination` VALUES ('1', '1,', '1,', '总经办,', 'admin,');
INSERT INTO `examination` VALUES ('2', '21,22,23,24,25,26,27,28,29,30,', '1,22,', '开发一部,开发二部,质量保证部,设计部,项目部,项目一部,项目二部,生产部,采购部,生产一部,', 'admin,gd,');
INSERT INTO `examination` VALUES ('3', '2,3,', '1,', '综合管理部,人力资源部,', 'admin,');

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
-- Table structure for `goodtype`
-- ----------------------------
DROP TABLE IF EXISTS `goodtype`;
CREATE TABLE `goodtype` (
  `goId` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) DEFAULT NULL,
  `goName` varchar(50) DEFAULT NULL,
  `goOrder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goId`),
  KEY `FK_GOOD_TYP_REFERENCE_COURT` (`cId`),
  CONSTRAINT `FK_GOOD_TYP_REFERENCE_COURT` FOREIGN KEY (`cId`) REFERENCES `court` (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodtype
-- ----------------------------
INSERT INTO `goodtype` VALUES ('1', '1', '数码', '1');
INSERT INTO `goodtype` VALUES ('2', '1', '办公消耗', '2');

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
  `hr_record_id` int(11) DEFAULT NULL,
  `hr_dimission_duty` varchar(100) DEFAULT NULL,
  `hr_dimission_leavetype` varchar(100) DEFAULT NULL,
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
  KEY `FK_HR_DIMIS_REFERENCE_TB_ADMIN` (`hr_record_id`),
  CONSTRAINT `FK_HR_DIMIS_REFERENCE_TB_ADMIN` FOREIGN KEY (`hr_record_id`) REFERENCES `hr_record` (`hr_record_id`),
  CONSTRAINT `FK_HR_DIMIS_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_dimission
-- ----------------------------
INSERT INTO `hr_dimission` VALUES ('1', '2', '1', '大官', '离职', '2018-11-10', '2018-11-30', '2018-11-30', null, null, '回家种地', '拜拜了您嘞', 'arthur', '2018-11-11');
INSERT INTO `hr_dimission` VALUES ('2', '5', '13', 'da', '辞职', '2018-11-10', '2018-11-30', '2018-11-30', null, null, 'ddd', 'ssss', 'arthur', '2018-11-11');
INSERT INTO `hr_dimission` VALUES ('3', '14', '2', '2018-11-30', '退休', '2018-11-10', '2018-11-30', '2018-11-30', null, null, 'dddd', 'sssss', 'arthur', '2018-11-11');
INSERT INTO `hr_dimission` VALUES ('4', '10', '3', '2018-11-17', '辞职', '2018-11-02', '2018-11-17', '2018-11-17', null, null, 'qqq111', 'aaaaaa22', 'arthur', '2018-11-11');

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
  `hr_talents_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hr_hire_id`),
  KEY `FK_HR_HIRE_REFERENCE_HR_PLAN` (`hr_plan_id`),
  KEY `FK_HR_HIRE_REFERENCE_TB_DEPT` (`dept_id`),
  KEY `FK_HR_HIRE_REFERENCE_TB_ADMIN` (`id`),
  KEY `hr_talents_id` (`hr_talents_id`),
  CONSTRAINT `hr_hire_ibfk_1` FOREIGN KEY (`hr_talents_id`) REFERENCES `hr_talents` (`hr_talents_id`),
  CONSTRAINT `FK_HR_HIRE_REFERENCE_HR_PLAN` FOREIGN KEY (`hr_plan_id`) REFERENCES `hr_plan` (`hr_plan_id`),
  CONSTRAINT `FK_HR_HIRE_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_HR_HIRE_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_hire
-- ----------------------------
INSERT INTO `hr_hire` VALUES ('1', '41', '1', null, null, '2018-11-05', '经理', null, '经理', null, '2018-11-05', '苟富贵', null, null, '42');
INSERT INTO `hr_hire` VALUES ('2', '4', '1', null, null, '2018-10-12', 'ceo', null, '经理', '2018-10-12', '2018-10-15', '嗯嗯嗯', null, null, '8');
INSERT INTO `hr_hire` VALUES ('3', '4', '21', null, null, '2018-11-12', '员工', null, '组长', '2018-11-12', '2018-11-13', '66', '郭迪', null, '9');

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_plan
-- ----------------------------
INSERT INTO `hr_plan` VALUES ('4', '1', '1', '超神计划', '猎头', '10000.100', '2017-07-08', '2018-01-02', '2', '招聘说明', '招聘备注', '附件', '1', '2018-01-03', '创建者1', '招聘部门', '招聘岗位', '2018-10-18');
INSERT INTO `hr_plan` VALUES ('23', '1', '1', '测试数据', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', null, '2', '2018-01-03', '创建者2', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('24', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件6', '2', '2018-01-03', '创建者3', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('25', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件7', '2', '2018-01-03', '创建者4', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('26', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('27', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('28', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('29', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('30', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('31', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('32', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('33', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('34', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('35', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '2', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('36', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '0', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('37', '1', '1', '计划', '猎头', '10000.1', '2017-07-08', '2018-01-02', '5', '招聘说明', '招聘备注', '附件', '0', '2018-01-03', '创建者', '招聘部门', '招聘岗位', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('41', '1', '0005', 'lpr1', '猎头公司', '500', '2018-11-05', '2018-11-14', '500', 'd', 'd', null, '2', '2018-11-29', 'arthur', '销售部', '会计', '2018-11-13');
INSERT INTO `hr_plan` VALUES ('42', '1', '1888', '招聘1', '网络招聘', '50000', '2018-11-12', '2018-11-30', '50', '凄凄切切111', '招聘人员', null, '1', '2018-11-12', 'arthur', '研发部', '应用工程师', '2018-12-05');

-- ----------------------------
-- Table structure for `hr_record`
-- ----------------------------
DROP TABLE IF EXISTS `hr_record`;
CREATE TABLE `hr_record` (
  `hr_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `hr_talents_id` int(11) DEFAULT NULL,
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
  `hr_record_employeetype` varchar(100) DEFAULT NULL,
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
  KEY `hr_talents_id` (`hr_talents_id`),
  CONSTRAINT `FK_HR_RECOR_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`),
  CONSTRAINT `FK_HR_RECOR_REFERENCE_TB_ROLES` FOREIGN KEY (`role_id`) REFERENCES `tb_roles` (`role_id`),
  CONSTRAINT `hr_record_ibfk_1` FOREIGN KEY (`hr_talents_id`) REFERENCES `hr_talents` (`hr_talents_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_record
-- ----------------------------
INSERT INTO `hr_record` VALUES ('1', '1', '4', '1', '木子李', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('2', '1', '2', '62', '张三', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '2', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('3', '1', '2', '1', '李四', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '3', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('4', '1', '4', '1', '李四', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '4', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('5', '2', '6', '1', '王五1', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('12', '1', '6', '1', '王五2', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('13', '1', '5', '1', '王五3', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('14', '1', '8', '1', '王五4', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('15', '1', '9', '1', '王五5', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('16', '1', '10', '1', '王五6', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('17', '1', '11', '1', '王五7', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('18', '1', '12', '1', '王五8', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('19', '1', '8', null, '王五9', 'OAName', '1', '1', '2018-10-10', '英超神', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '4', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('20', '1', '14', '1', '王五10', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('21', '1', '15', '1', '王五11', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('22', '1', '16', '1', '王五12', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('23', '1', '17', '1', '王五13', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('24', '1', '18', '1', '王五14', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('25', '1', '19', '1', '王五15', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('26', '1', '20', '1', '王五16', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('27', '1', '21', '1', '王五17', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('28', '1', '22', '1', '王五18', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '0', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('29', '1', '23', '1', '王五19', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '4', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('30', '1', '24', '1', '王五20', 'OAName', '1', '1', '2018-10-10', '英文名', '412721199703294017', '1997-03-29', '男', '21', '民族', '15553646499', '123456789@qq.com', '婚姻状况', '政治面貌', '籍贯	', '健康', '户口所在地', '现住址 ', '1', '开发人员', '2018-10-15', '2018-10-18', null, '毕业院校', '2016-10-10', '学历', '专业', '特长', '4', '备注', null, '创建人', '2018-11-02');
INSERT INTO `hr_record` VALUES ('31', '1', '2', '1', '上下7', 'SX7', '10203', null, '2018-10-23', null, '412721199703304017', null, '男', '21', '汉', '15239474900', '123456789@qq.com', '未婚可撩', '共青团员', null, '健康', '河南郑州金水区', '河南新乡', '十级', '开发', '2018-11-07', '2018-11-10', null, '毕业学校', '2018-06-06', '大专', '电子信息', '想法特长', '0', 'sdad', null, 'arthur', '2018-11-07');
INSERT INTO `hr_record` VALUES ('32', '1', '5', '1', '上下7', 'sad', '120', null, '2018-10-23', null, '412724199703304017', null, '男', '21', '汉', '15239474900', '123456789@qq.com', '未婚可撩', '共青团员', null, '健康', '河南郑州金水区', '河南新乡', '十级', '开发', '2018-11-08', '2018-11-10', null, '毕业学校', '2018-06-06', '大专', '电子信息', '想法特长', '0', '哎呦！不错哦！', null, 'arthur', '2018-11-07');
INSERT INTO `hr_record` VALUES ('33', '1', '2', '1', '大神12', 'DS12', '1203', null, '2018-10-23', null, '412721199710154014', null, '男', '21', '汉', '15239474900', '123456789@qq.com', '极光中雪白的肌肤', '偷睡的书桌', null, '健康', '河南郑州金水区', '河南新乡', '十级', '开发', '2018-11-08', '2018-11-09', null, '毕业学校', '2018-06-06', '大专', '电子信息', '想法特长', '0', 'Sc', null, 'arthur', '2018-11-07');
INSERT INTO `hr_record` VALUES ('34', null, '2', '61', '上下4', 'sadsad', '21531', '21531', '2018-10-23', 'SX4', '41242719940102', '1996-11-07', '男', '28', '汉', '15239474900', '123456789@qq.com', '未婚可撩', '共青团员', '河南', '健康', '河南郑州金水区', '河南新乡', '十级', '开发', '2018-11-07', '2018-11-10', null, '毕业学校', '2018-06-06', '大专', '电子信息', '想法特长', '0', '我有一个梦', null, 'arthur', '2018-11-07');
INSERT INTO `hr_record` VALUES ('35', null, '1', '1', '上下7', 'SX7', '1203', '1203', '2018-10-23', 'six', '412721199710154015', null, '男', '21', '汉', '15239474900', '123456789@qq.com', '未婚可撩', '共青团员', '河南省', '健康', '河南郑州金水区', '河南新乡', '十级', '开发', '2018-11-08', '2018-11-10', null, '毕业学校', '2018-06-06', '大专', '电子信息', '想法特长', '0', 'sad', null, 'arthur', '2018-11-07');
INSERT INTO `hr_record` VALUES ('36', null, '3', '62', '大神12', 'DS12', '1230', '1230', '2018-10-23', 'ds', '41272119960510', null, '男', '21', '汉', '15239474900', '123456789@qq.com', '极光中雪白的肌肤', '偷睡的书桌', '河南省', '健康', '河南郑州金水区', '河南新乡', '十级', '开发', '2018-11-08', '2018-11-10', null, '毕业学校', '2018-06-06', '大专', '电子信息', '想法特长', '0', 'sss', null, 'arthur', '2018-11-07');
INSERT INTO `hr_record` VALUES ('37', null, null, '61', '上下7', 'SX7', '1203', null, '2018-10-23', null, '412721199710154015', '2018-11-08', '男', '21', '汉', '15239474900', '123456789@qq.com', '未婚可撩', '共青团员1', null, '健康', '河南郑州金水区', '河南新乡', '十级', '开发', '2018-11-08', '2018-11-10', null, '毕业学校', '2018-06-06', '大专', '电子信息', '想法特长', null, '水电费', null, 'arthur', '2018-11-07');
INSERT INTO `hr_record` VALUES ('38', null, '1', '1', '上下', 'sx', '1231233', '1231233', '2018-10-23', 'sx', '410928199504094817', null, '男', '27', '汉', '15239474900', '123456789@qq.com', '未婚可撩', '共青团员', '河南省', '健康', '河南郑州金水区', '河南新乡', '正式录用', '开发', null, null, null, '毕业学校', '2018-06-06', '大专', '电子信息', '想法特长', '0', 'ffffff', null, 'arthur', '2018-11-11');
INSERT INTO `hr_record` VALUES ('39', null, '1', '1', '上下', 'ssx', '123', '521', '2018-10-23', 'sx', '41092819950487414', null, '男', '28', '汉', '15239474900', '123456789@qq.com', '未婚可撩', '共青团员', '河南省', '健康', '河南郑州金水区', '河南新乡', '合同工', '开发', null, null, null, '毕业学校', '2018-06-06', '大专', '电子信息', '想法特长', '0', '顶顶顶顶', null, '郭迪', '2018-11-12');

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
  `hr_talents_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hr_screen_id`),
  KEY `FK_HR_SCREE_REFERENCE_HR_PLAN` (`hr_plan_id`),
  KEY `id` (`id`),
  KEY `hr_talents_id` (`hr_talents_id`),
  CONSTRAINT `hr_screen_ibfk_2` FOREIGN KEY (`hr_talents_id`) REFERENCES `hr_talents` (`hr_talents_id`),
  CONSTRAINT `FK_HR_SCREE_REFERENCE_HR_PLAN` FOREIGN KEY (`hr_plan_id`) REFERENCES `hr_plan` (`hr_plan_id`),
  CONSTRAINT `hr_screen_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_screen
-- ----------------------------
INSERT INTO `hr_screen` VALUES ('1', '41', '1', null, '面试', '计算', '通过', '2018-11-06', null, 'arthur', '2018-11-05', '42');
INSERT INTO `hr_screen` VALUES ('2', '4', '22', null, null, null, null, null, null, 'arthur', '2018-10-12', '5');
INSERT INTO `hr_screen` VALUES ('3', '4', '1', null, '笔试', '仪容仪表', '通过', '2018-10-12', null, 'arthur', '2018-10-12', '8');
INSERT INTO `hr_screen` VALUES ('4', '4', '22', null, '面试', 'hdakshd', 'tg', '2018-11-12', null, 'arthur', '2018-11-12', '9');
INSERT INTO `hr_screen` VALUES ('5', '42', '1', null, '笔试', '方法', '方法 ', '2018-11-12', null, 'arthur', '2018-11-13', '44');

-- ----------------------------
-- Table structure for `hr_talents`
-- ----------------------------
DROP TABLE IF EXISTS `hr_talents`;
CREATE TABLE `hr_talents` (
  `hr_talents_id` int(11) NOT NULL AUTO_INCREMENT,
  `hr_plan_id` int(11) DEFAULT NULL,
  `hr_talents_name` varchar(100) DEFAULT NULL,
  `hr_talents_identity` varchar(100) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_talents
-- ----------------------------
INSERT INTO `hr_talents` VALUES ('1', '4', '大神', null, '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '极光中雪白的肌肤', '偷睡的书桌', '15239474900', '123456789@qq.com', '2018-10-16', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '8000', '1', '照骗', '备注', '附件', '1', '小', '开发');
INSERT INTO `hr_talents` VALUES ('2', '4', '大神', null, '1997-03-30', '男', '22', '河南省', '河南郑州金水区', '汉', '极光中雪白的肌肤', '偷睡的书桌', '15239474900', '123456789@qq.com', '2018-10-16', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '8000', '1', '照骗', '备注', '附件', '1', '小', '开发');
INSERT INTO `hr_talents` VALUES ('3', '24', '大神', null, '1997-03-30', '男', '23', '河南省', '河南郑州金水区', '汉', '极光中雪白的肌肤', '偷睡的书桌', '15239474900', '123456789@qq.com', '2018-10-16', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '8000', '1', '照骗', '备注', '附件', '1', '小', '开发');
INSERT INTO `hr_talents` VALUES ('4', '4', '郭迪', '410928199405048147', '1997-03-30', '男', '24', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', null, '李', '开发');
INSERT INTO `hr_talents` VALUES ('5', '4', '上下', null, '1997-03-30', '男', '25', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '1', '李', '开发');
INSERT INTO `hr_talents` VALUES ('6', '4', '大神', null, '1997-03-30', '男', '26', '河南省', '河南郑州金水区', '汉', '极光中雪白的肌肤', '偷睡的书桌', '15239474900', '123456789@qq.com', '2018-10-16', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '8000', '1', '照骗', '备注', '附件', '1', '小', '开发');
INSERT INTO `hr_talents` VALUES ('8', '4', '上下', null, '1997-03-30', '男', '27', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '4', '李', '开发');
INSERT INTO `hr_talents` VALUES ('9', '4', '上下', null, '1997-03-30', '男', '28', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('14', '4', '上下', null, '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('15', '4', '上下', null, '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('16', '4', '上下', null, '1997-03-30', '男', '21', '河南省', '河南郑州金水区', '汉', '未婚可撩', '共青团员', '15239474900', '123456789@qq.com', '2018-10-10', '健康', '大专', '学位', '2018-06-06', '毕业学校', '电子信息', '计算机二级', '日语', '十级', '想法特长', '2018-10-23', '开发', '熟悉java语言', '工作经验', '项目经验', '河南新乡', '实习', 'IT', '800', '1', '照骗', '备注', '附件', '0', '李', '开发');
INSERT INTO `hr_talents` VALUES ('38', '4', '士大夫', null, '2018-10-24', '男', '20', '河南', '和那', '汉', '未婚', '撒旦', '65165165', null, '2018-10-24', '爱的', '阿瑟东', '阿瑟东', '2018-10-24', '大幅', '阿瑟东', '阿瑟东', '大风车', '爱的', '盛大的', null, '撒旦', '撒大', '的城市', '洒出', '按市场', '撒擦擦', '撒擦擦', '21421', null, '士大夫', '阿瑟东', '阿瑟东', '1', '大神', '开发');
INSERT INTO `hr_talents` VALUES ('42', '41', 'lpr', null, '2018-11-05', '男', '19', '打', '鼎折覆餗', '汉', '未婚', '中共党员', '1635256336', '1144512404@qq.com', '2018-11-02', '健康', '博士', '学士学位', '2018-11-14', '大萨达', '哲学', '二级', '', '放到', '放到', '2018-11-13', '辅导费', '放到', '个的', '辅导费', '地方', '规范', '放到f', '', '2', null, 'f', null, '4', 'arthur', '项目经理');
INSERT INTO `hr_talents` VALUES ('44', '42', '王晓小', '410928199585854521', '2018-11-12', '男', '20', '濮阳', '濮阳', '汉', '未婚', '中共党员', '13525696552', '1144512404@qq.com', '2018-11-12', '健康', '硕士', '硕士学位', '2018-11-21', '', '哲学', '四级', '', '', '121', '2018-11-12', '', '', '', '', '', '', '', '50000', '0', null, '', null, '2', 'arthur', '开发人员');

-- ----------------------------
-- Table structure for `hr_transfer`
-- ----------------------------
DROP TABLE IF EXISTS `hr_transfer`;
CREATE TABLE `hr_transfer` (
  `hr_transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `hr_record_id` int(11) DEFAULT NULL,
  `hr_transfer_transfertype` varchar(100) DEFAULT NULL,
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
  `hr_transfer_before` varchar(100) DEFAULT NULL,
  `hr_transfer_after` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hr_transfer_id`),
  KEY `FK_HR_TRANS_REFERENCE_TB_DEPT` (`dept_id`),
  KEY `FK_HR_TRANS_REFERENCE_TB_ROLES` (`role_id`),
  KEY `FK_HR_TRANS_REFERENCE_TB_ADMIN` (`hr_record_id`),
  CONSTRAINT `FK_HR_TRANS_REFERENCE_TB_ADMIN` FOREIGN KEY (`hr_record_id`) REFERENCES `hr_record` (`hr_record_id`),
  CONSTRAINT `FK_HR_TRANS_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`),
  CONSTRAINT `FK_HR_TRANS_REFERENCE_TB_ROLES` FOREIGN KEY (`role_id`) REFERENCES `tb_roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_transfer
-- ----------------------------
INSERT INTO `hr_transfer` VALUES ('1', '1', '1', '35', '降级', '2018-11-09', '2018-11-10', '小官', '小官', '大官', '小官', 'adda11111111111', 'ssffsdd222222222222222', '2018-11-10', 'arthur', '2018-11-10', '总经办', '6');
INSERT INTO `hr_transfer` VALUES ('2', null, '62', '32', '晋升', '2018-11-09', '2018-11-10', 'adf', 'dsfa', 'asd', 'af', 'asfdas', 'asdasd', null, 'arthur', '2018-11-10', '行政部', '3');
INSERT INTO `hr_transfer` VALUES ('3', '5', '61', '32', '晋升', '2018-11-09', '2018-11-10', 'as', 'afa', 'assa', 'fasfas', 'safdsa', 'asdfasd', null, 'arthur', '2018-11-10', '行政部', '3');
INSERT INTO `hr_transfer` VALUES ('4', '5', '61', '32', '晋升', '2018-11-09', '2018-11-10', 'sdsd', 'sddd', 'dadad', 'adadadda', 'dffff', 'fdfdfdffd', null, 'arthur', '2018-11-10', '行政部', '3');
INSERT INTO `hr_transfer` VALUES ('5', '1', '61', '1', '降级', '2018-11-09', '2018-11-10', 'ffffdf', 'ddds', 'fddfffdf', 'ffdfdf', 'dsff', 'ffdfdf', null, 'arthur', '2018-11-10', '总经办', '2');
INSERT INTO `hr_transfer` VALUES ('6', '3', '62', '1', '平调', '2018-11-09', '2018-11-10', 'acas', 'acas', 'saddasd', 'sdaasd', 'asdasd', 'sadasd', '2018-11-11', 'arthur', '2018-11-10', '总经办', null);
INSERT INTO `hr_transfer` VALUES ('7', '2', '1', '33', '晋升', '2018-11-09', '2018-11-10', 'terg', 'dsfd', 'dfdf', 'dfdsf', 'dfdfs', 'dfsdf', null, 'arthur', '2018-11-10', '行政部', null);
INSERT INTO `hr_transfer` VALUES ('8', '4', '1', '1', '晋升', '2018-11-11', '2018-11-12', 'qwe', 'qwe', 'qwe', 'qwe', 'ee', 'ee', '2018-11-11', 'arthur', '2018-11-11', '综合管理部', null);
INSERT INTO `hr_transfer` VALUES ('9', '2', '1', '2', '降级', null, '2018-11-13', '1', '2', '', '', '蝴蝶飞', '放到', null, '郭迪', '2018-11-12', '总经办', null);

-- ----------------------------
-- Table structure for `jobwork`
-- ----------------------------
DROP TABLE IF EXISTS `jobwork`;
CREATE TABLE `jobwork` (
  `JoId` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `JoName` varchar(50) DEFAULT NULL,
  `jtDate` datetime DEFAULT NULL,
  `jtDate1` datetime DEFAULT NULL,
  `jtDate2` datetime DEFAULT NULL,
  `jtDate3` datetime DEFAULT NULL,
  PRIMARY KEY (`JoId`),
  KEY `FK_JOBWORK_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_JOBWORK_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobwork
-- ----------------------------
INSERT INTO `jobwork` VALUES ('1', '1', '管理员', '2018-11-01 08:00:00', '2018-11-01 12:00:00', '2018-11-01 13:00:00', '2018-11-01 17:00:00');
INSERT INTO `jobwork` VALUES ('5', '1', '管理员', '2018-11-02 08:00:00', '2018-11-02 12:00:00', '2018-11-02 13:00:00', '2018-11-02 17:00:00');
INSERT INTO `jobwork` VALUES ('9', '1', '管理员', '2018-11-03 08:00:00', '2018-11-03 12:00:00', '2018-11-03 13:00:00', '2018-11-03 17:00:00');
INSERT INTO `jobwork` VALUES ('13', '1', '管理员', '2018-11-04 08:00:00', '2018-11-04 12:34:11', '2018-11-04 13:00:00', '2018-11-04 17:00:00');
INSERT INTO `jobwork` VALUES ('17', '1', null, '2018-11-05 08:12:00', '2018-11-05 12:10:00', '2018-11-05 13:00:00', '2018-11-05 17:00:00');
INSERT INTO `jobwork` VALUES ('21', '1', null, '2018-11-06 08:12:00', '2018-11-06 12:10:00', '2018-11-06 13:00:00', '2018-11-06 17:00:00');
INSERT INTO `jobwork` VALUES ('25', '1', null, '2018-11-07 08:12:00', '2018-11-07 12:10:00', '2018-11-07 13:00:00', '2018-11-07 17:00:00');
INSERT INTO `jobwork` VALUES ('29', '1', null, '2018-11-08 08:12:00', '2018-11-08 12:10:00', '2018-11-08 13:00:00', '2018-11-08 17:00:00');
INSERT INTO `jobwork` VALUES ('33', '1', null, '2018-11-09 08:12:00', '2018-11-09 12:10:00', '2018-11-09 13:00:00', '2018-11-09 17:00:00');
INSERT INTO `jobwork` VALUES ('37', '1', null, '2018-11-10 08:12:00', '2018-11-10 12:10:00', '2018-11-10 13:00:00', '2018-11-10 17:00:00');
INSERT INTO `jobwork` VALUES ('41', '1', null, '2018-11-11 08:12:00', '2018-11-11 12:10:00', '2018-11-11 13:00:00', '2018-11-11 17:00:00');
INSERT INTO `jobwork` VALUES ('45', '1', null, '2018-11-12 08:12:00', '2018-11-12 12:10:00', '2018-11-12 13:00:00', '2018-11-12 17:00:00');
INSERT INTO `jobwork` VALUES ('49', '1', null, '2018-11-13 08:12:00', '2018-11-13 12:10:00', '2018-11-13 13:00:00', '2018-11-13 17:00:00');
INSERT INTO `jobwork` VALUES ('53', '1', null, '2018-11-14 08:12:00', '2018-11-14 12:10:00', '2018-11-14 13:00:00', '2018-11-14 17:00:00');
INSERT INTO `jobwork` VALUES ('57', '1', null, '2018-11-15 08:12:00', '2018-11-15 12:10:00', '2018-11-15 13:00:00', '2018-11-15 17:00:00');
INSERT INTO `jobwork` VALUES ('61', '1', null, '2018-11-16 08:12:00', '2018-11-16 12:10:00', '2018-11-16 13:00:00', '2018-11-16 17:00:00');
INSERT INTO `jobwork` VALUES ('65', '1', null, '2018-11-17 08:12:00', '2018-11-17 12:10:00', '2018-11-17 13:00:00', '2018-11-17 17:00:00');
INSERT INTO `jobwork` VALUES ('69', '1', null, '2018-11-18 08:12:00', '2018-11-18 12:10:00', '2018-11-18 13:00:00', '2018-11-18 17:00:00');
INSERT INTO `jobwork` VALUES ('73', '1', null, '2018-11-19 08:12:00', '2018-11-19 12:10:00', '2018-11-19 13:00:00', '2018-11-19 17:00:00');
INSERT INTO `jobwork` VALUES ('77', '1', null, '2018-11-20 08:12:00', '2018-11-20 12:10:00', '2018-11-20 13:00:00', '2018-11-20 17:00:00');
INSERT INTO `jobwork` VALUES ('81', '1', null, '2018-11-21 08:12:00', '2018-11-21 12:10:00', '2018-11-21 13:00:00', '2018-11-21 17:00:00');
INSERT INTO `jobwork` VALUES ('85', '1', null, '2018-11-22 08:12:00', '2018-11-22 12:10:00', '2018-11-22 13:00:00', '2018-11-22 17:00:00');
INSERT INTO `jobwork` VALUES ('98', '1', null, null, null, null, null);
INSERT INTO `jobwork` VALUES ('99', '1', null, null, null, null, null);
INSERT INTO `jobwork` VALUES ('106', '18', null, '2018-11-01 08:00:00', '2018-11-01 12:00:00', '2018-11-01 13:00:00', '2018-11-01 17:00:00');
INSERT INTO `jobwork` VALUES ('107', '18', null, '2018-11-02 08:00:00', '2018-11-02 12:00:00', '2018-11-02 13:00:00', '2018-11-02 17:00:00');
INSERT INTO `jobwork` VALUES ('108', '18', null, '2018-11-03 08:00:00', '2018-11-03 12:00:00', '2018-11-03 13:00:00', '2018-11-03 17:00:00');
INSERT INTO `jobwork` VALUES ('109', '18', null, '2018-11-04 08:00:00', '2018-11-04 12:34:11', '2018-11-04 13:00:00', '2018-11-04 17:00:00');
INSERT INTO `jobwork` VALUES ('110', '18', null, '2018-11-05 08:12:00', '2018-11-05 12:10:00', '2018-11-05 13:00:00', '2018-11-05 17:00:00');
INSERT INTO `jobwork` VALUES ('111', '18', null, '2018-11-06 08:12:00', '2018-11-06 12:10:00', '2018-11-06 13:00:00', '2018-11-06 17:00:00');
INSERT INTO `jobwork` VALUES ('112', '18', null, '2018-11-07 08:12:00', '2018-11-07 12:10:00', '2018-11-07 13:00:00', '2018-11-07 17:00:00');
INSERT INTO `jobwork` VALUES ('113', '18', null, '2018-11-08 08:12:00', '2018-11-08 12:10:00', '2018-11-08 13:00:00', '2018-11-08 17:00:00');
INSERT INTO `jobwork` VALUES ('114', '18', null, '2018-11-09 08:12:00', '2018-11-09 12:10:00', '2018-11-09 13:00:00', '2018-11-09 17:00:00');
INSERT INTO `jobwork` VALUES ('115', '18', null, '2018-11-10 08:12:00', '2018-11-10 12:10:00', '2018-11-10 13:00:00', '2018-11-10 17:00:00');
INSERT INTO `jobwork` VALUES ('116', '18', null, '2018-11-11 08:12:00', '2018-11-11 12:10:00', '2018-11-11 13:00:00', '2018-11-11 17:00:00');
INSERT INTO `jobwork` VALUES ('117', '18', null, '2018-11-12 08:12:00', '2018-11-12 12:10:00', '2018-11-12 13:00:00', '2018-11-12 17:00:00');
INSERT INTO `jobwork` VALUES ('118', '18', null, '2018-11-13 08:12:00', '2018-11-13 12:10:00', '2018-11-13 13:00:00', '2018-11-13 17:00:00');
INSERT INTO `jobwork` VALUES ('119', '18', null, '2018-11-14 08:12:00', '2018-11-14 12:10:00', '2018-11-14 13:00:00', '2018-11-14 17:00:00');
INSERT INTO `jobwork` VALUES ('120', '18', null, '2018-11-15 08:12:00', '2018-11-15 12:10:00', '2018-11-15 13:00:00', '2018-11-15 17:00:00');
INSERT INTO `jobwork` VALUES ('121', '18', null, '2018-11-16 08:12:00', '2018-11-16 12:10:00', '2018-11-16 13:00:00', '2018-11-16 17:00:00');
INSERT INTO `jobwork` VALUES ('122', '18', null, '2018-11-17 08:12:00', '2018-11-17 12:10:00', '2018-11-17 13:00:00', '2018-11-17 17:00:00');
INSERT INTO `jobwork` VALUES ('123', '18', null, '2018-11-18 08:12:00', '2018-11-18 12:10:00', '2018-11-18 13:00:00', '2018-11-18 17:00:00');
INSERT INTO `jobwork` VALUES ('124', '18', null, '2018-11-19 08:12:00', '2018-11-19 12:10:00', '2018-11-19 13:00:00', '2018-11-19 17:00:00');
INSERT INTO `jobwork` VALUES ('125', '18', null, '2018-11-20 08:12:00', '2018-11-20 12:10:00', '2018-11-20 13:00:00', '2018-11-20 17:00:00');
INSERT INTO `jobwork` VALUES ('126', '18', null, '2018-11-21 08:12:00', '2018-11-21 12:10:00', '2018-11-21 13:00:00', '2018-11-21 17:00:00');
INSERT INTO `jobwork` VALUES ('127', '18', null, '2018-11-22 08:12:00', '2018-11-22 12:10:00', '2018-11-22 13:00:00', '2018-11-22 17:00:00');
INSERT INTO `jobwork` VALUES ('128', '18', null, null, null, null, null);
INSERT INTO `jobwork` VALUES ('129', '18', null, null, null, null, null);

-- ----------------------------
-- Table structure for `notify`
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `send_time` varchar(50) DEFAULT NULL,
  `no_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`notify_id`),
  KEY `FK_NOTIFY_REFERENCE_TB_DEPT` (`dept_id`),
  KEY `FK_NOTIFY_REFERENCE_TB_NOTIF` (`type_id`),
  KEY `FK_NOTIFY_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_NOTIFY_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_NOTIFY_REFERENCE_TB_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `tb_dept` (`dept_id`),
  CONSTRAINT `FK_NOTIFY_REFERENCE_TB_NOTIF` FOREIGN KEY (`type_id`) REFERENCES `tb_notifytype` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notify
-- ----------------------------
INSERT INTO `notify` VALUES ('1', '1', '1', '1', '第一次测试', '通知开会', '2018-11-09 16:13:23', '失效');
INSERT INTO `notify` VALUES ('2', '2', '1', '1', '第一次测试', '通知开会', '2018-11-09 16:13:23', '生效');
INSERT INTO `notify` VALUES ('3', '2', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('4', '3', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('5', '4', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('6', '5', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('7', '7', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('8', '8', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('9', '9', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('10', '10', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('11', '12', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('12', '13', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:18', '生效');
INSERT INTO `notify` VALUES ('13', '14', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('14', '15', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('15', '17', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('16', '18', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('17', '19', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('18', '20', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('19', '22', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('20', '23', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('21', '24', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('22', '25', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('23', '27', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('24', '28', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('25', '29', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('26', '30', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('27', '32', '1', '1', '顶顶顶顶', '  <img src=\"http://localhost:8080/oa/layui/images/face/0.gif\" alt=\"[微笑]\"><b>持续成长性发顺丰水电费第三方</b><u><b></b></u>', '2018-11-13 22:45:19', '生效');
INSERT INTO `notify` VALUES ('28', '2', '1', '24', 'ggggggg', '<b><i>  <img src=\"http://localhost:8080/oa/layui/images/face/41.gif\" alt=\"[悲伤]\">dsadasdas&nbsp;</i></b>', '2018-11-13 22:51:09', '生效');
INSERT INTO `notify` VALUES ('29', '3', '1', '24', 'ggggggg', '<b><i>  <img src=\"http://localhost:8080/oa/layui/images/face/41.gif\" alt=\"[悲伤]\">dsadasdas&nbsp;</i></b>', '2018-11-13 22:51:09', '生效');
INSERT INTO `notify` VALUES ('30', '4', '2', '22', '通报迟到的人', '<a target=\"_blank\" href=\"http://localhost:8080/oa/index.jsp\">http://localhost:8080/oa/index.jsp<img src=\"http://localhost:8080/oa/layui/images/face/29.gif\" alt=\"[拜拜]\"></a>\n', '2018-11-13 23:00:26', '生效');

-- ----------------------------
-- Table structure for `pbjl`
-- ----------------------------
DROP TABLE IF EXISTS `pbjl`;
CREATE TABLE `pbjl` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pDate` date DEFAULT NULL,
  `btime1` varchar(50) DEFAULT NULL,
  `btime2` varchar(50) DEFAULT NULL,
  `btime3` varchar(50) DEFAULT NULL,
  `btime4` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `weekDays` varchar(50) DEFAULT NULL,
  `timeState1` varchar(50) DEFAULT NULL,
  `timeState2` varchar(50) DEFAULT NULL,
  `timeState3` varchar(50) DEFAULT NULL,
  `timeState4` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `ssss` (`id`),
  CONSTRAINT `ssss` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1993 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pbjl
-- ----------------------------
INSERT INTO `pbjl` VALUES ('1873', '2018-11-01', '2018-11-01 09:00:00', '2018-11-01 12:00:00', '2018-11-01 02:00:00', '2018-11-01 18:00:00', '1', '星期四', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1874', '2018-11-02', '2018-11-02 09:00:00', '2018-11-02 12:00:00', '2018-11-02 02:00:00', '2018-11-02 18:00:00', '1', '星期五', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1875', '2018-11-03', '2018-11-03 09:00:00', '2018-11-03 12:00:00', '2018-11-03 02:00:00', '2018-11-03 18:00:00', '1', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1876', '2018-11-04', '2018-11-04 09:00:00', '2018-11-04 12:00:00', '2018-11-04 02:00:00', '2018-11-04 18:00:00', '1', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1877', '2018-11-05', '2018-11-05 09:00:00', '2018-11-05 12:00:00', '2018-11-05 02:00:00', '2018-11-05 18:00:00', '1', '星期一', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1878', '2018-11-06', '2018-11-06 09:00:00', '2018-11-06 12:00:00', '2018-11-06 02:00:00', '2018-11-06 18:00:00', '1', '星期二', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1879', '2018-11-07', '2018-11-07 09:00:00', '2018-11-07 12:00:00', '2018-11-07 02:00:00', '2018-11-07 18:00:00', '1', '星期三', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1880', '2018-11-08', '2018-11-08 09:00:00', '2018-11-08 12:00:00', '2018-11-08 02:00:00', '2018-11-08 18:00:00', '1', '星期四', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1881', '2018-11-09', '2018-11-09 09:00:00', '2018-11-09 12:00:00', '2018-11-09 02:00:00', '2018-11-09 18:00:00', '1', '星期五', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1882', '2018-11-10', '2018-11-10 09:00:00', '2018-11-10 12:00:00', '2018-11-10 02:00:00', '2018-11-10 18:00:00', '1', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1883', '2018-11-11', '2018-11-11 09:00:00', '2018-11-11 12:00:00', '2018-11-11 02:00:00', '2018-11-11 18:00:00', '1', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1884', '2018-11-12', '2018-11-12 09:00:00', '2018-11-12 12:00:00', '2018-11-12 02:00:00', '2018-11-12 18:00:00', '1', '星期一', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1885', '2018-11-13', '2018-11-13 09:00:00', '2018-11-13 12:00:00', '2018-11-13 02:00:00', '2018-11-13 18:00:00', '1', '星期二', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1886', '2018-11-14', '2018-11-14 09:00:00', '2018-11-14 12:00:00', '2018-11-14 02:00:00', '2018-11-14 18:00:00', '1', '星期三', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1887', '2018-11-15', '2018-11-15 09:00:00', '2018-11-15 12:00:00', '2018-11-15 02:00:00', '2018-11-15 18:00:00', '1', '星期四', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1888', '2018-11-16', '2018-11-16 09:00:00', '2018-11-16 12:00:00', '2018-11-16 02:00:00', '2018-11-16 18:00:00', '1', '星期五', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1889', '2018-11-17', '2018-11-17 09:00:00', '2018-11-17 12:00:00', '2018-11-17 02:00:00', '2018-11-17 18:00:00', '1', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1890', '2018-11-18', '2018-11-18 09:00:00', '2018-11-18 12:00:00', '2018-11-18 02:00:00', '2018-11-18 18:00:00', '1', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1891', '2018-11-19', '2018-11-19 09:00:00', '2018-11-19 12:00:00', '2018-11-19 02:00:00', '2018-11-19 18:00:00', '1', '星期一', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1892', '2018-11-20', '2018-11-20 09:00:00', '2018-11-20 12:00:00', '2018-11-20 02:00:00', '2018-11-20 18:00:00', '1', '星期二', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1893', '2018-11-21', '2018-11-21 09:00:00', '2018-11-21 12:00:00', '2018-11-21 02:00:00', '2018-11-21 18:00:00', '1', '星期三', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1894', '2018-11-22', '2018-11-22 09:00:00', '2018-11-22 12:00:00', '2018-11-22 02:00:00', '2018-11-22 18:00:00', '1', '星期四', '正常', '正常', '迟到', '早退');
INSERT INTO `pbjl` VALUES ('1895', '2018-11-23', '2018-11-23 09:00:00', '2018-11-23 12:00:00', '2018-11-23 02:00:00', '2018-11-23 18:00:00', '1', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1896', '2018-11-24', '2018-11-24 09:00:00', '2018-11-24 12:00:00', '2018-11-24 02:00:00', '2018-11-24 18:00:00', '1', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1897', '2018-11-25', '2018-11-25 09:00:00', '2018-11-25 12:00:00', '2018-11-25 02:00:00', '2018-11-25 18:00:00', '1', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1898', '2018-11-26', '2018-11-26 09:00:00', '2018-11-26 12:00:00', '2018-11-26 02:00:00', '2018-11-26 18:00:00', '1', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1899', '2018-11-27', '2018-11-27 09:00:00', '2018-11-27 12:00:00', '2018-11-27 02:00:00', '2018-11-27 18:00:00', '1', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1900', '2018-11-28', '2018-11-28 09:00:00', '2018-11-28 12:00:00', '2018-11-28 02:00:00', '2018-11-28 18:00:00', '1', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1901', '2018-11-29', '2018-11-29 09:00:00', '2018-11-29 12:00:00', '2018-11-29 02:00:00', '2018-11-29 18:00:00', '1', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1902', '2018-11-30', '2018-11-30 09:00:00', '2018-11-30 12:00:00', '2018-11-30 02:00:00', '2018-11-30 18:00:00', '1', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1903', '2018-11-01', '2018-11-01 09:00:00', '2018-11-01 12:00:00', '2018-11-01 02:00:00', '2018-11-01 18:00:00', '23', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1904', '2018-11-02', '2018-11-02 09:00:00', '2018-11-02 12:00:00', '2018-11-02 02:00:00', '2018-11-02 18:00:00', '23', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1905', '2018-11-03', '2018-11-03 09:00:00', '2018-11-03 12:00:00', '2018-11-03 02:00:00', '2018-11-03 18:00:00', '23', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1906', '2018-11-04', '2018-11-04 09:00:00', '2018-11-04 12:00:00', '2018-11-04 02:00:00', '2018-11-04 18:00:00', '23', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1907', '2018-11-05', '2018-11-05 09:00:00', '2018-11-05 12:00:00', '2018-11-05 02:00:00', '2018-11-05 18:00:00', '23', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1908', '2018-11-06', '2018-11-06 09:00:00', '2018-11-06 12:00:00', '2018-11-06 02:00:00', '2018-11-06 18:00:00', '23', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1909', '2018-11-07', '2018-11-07 09:00:00', '2018-11-07 12:00:00', '2018-11-07 02:00:00', '2018-11-07 18:00:00', '23', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1910', '2018-11-08', '2018-11-08 09:00:00', '2018-11-08 12:00:00', '2018-11-08 02:00:00', '2018-11-08 18:00:00', '23', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1911', '2018-11-09', '2018-11-09 09:00:00', '2018-11-09 12:00:00', '2018-11-09 02:00:00', '2018-11-09 18:00:00', '23', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1912', '2018-11-10', '2018-11-10 09:00:00', '2018-11-10 12:00:00', '2018-11-10 02:00:00', '2018-11-10 18:00:00', '23', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1913', '2018-11-11', '2018-11-11 09:00:00', '2018-11-11 12:00:00', '2018-11-11 02:00:00', '2018-11-11 18:00:00', '23', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1914', '2018-11-12', '2018-11-12 09:00:00', '2018-11-12 12:00:00', '2018-11-12 02:00:00', '2018-11-12 18:00:00', '23', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1915', '2018-11-13', '2018-11-13 09:00:00', '2018-11-13 12:00:00', '2018-11-13 02:00:00', '2018-11-13 18:00:00', '23', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1916', '2018-11-14', '2018-11-14 09:00:00', '2018-11-14 12:00:00', '2018-11-14 02:00:00', '2018-11-14 18:00:00', '23', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1917', '2018-11-15', '2018-11-15 09:00:00', '2018-11-15 12:00:00', '2018-11-15 02:00:00', '2018-11-15 18:00:00', '23', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1918', '2018-11-16', '2018-11-16 09:00:00', '2018-11-16 12:00:00', '2018-11-16 02:00:00', '2018-11-16 18:00:00', '23', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1919', '2018-11-17', '2018-11-17 09:00:00', '2018-11-17 12:00:00', '2018-11-17 02:00:00', '2018-11-17 18:00:00', '23', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1920', '2018-11-18', '2018-11-18 09:00:00', '2018-11-18 12:00:00', '2018-11-18 02:00:00', '2018-11-18 18:00:00', '23', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1921', '2018-11-19', '2018-11-19 09:00:00', '2018-11-19 12:00:00', '2018-11-19 02:00:00', '2018-11-19 18:00:00', '23', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1922', '2018-11-20', '2018-11-20 09:00:00', '2018-11-20 12:00:00', '2018-11-20 02:00:00', '2018-11-20 18:00:00', '23', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1923', '2018-11-21', '2018-11-21 09:00:00', '2018-11-21 12:00:00', '2018-11-21 02:00:00', '2018-11-21 18:00:00', '23', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1924', '2018-11-22', '2018-11-22 09:00:00', '2018-11-22 12:00:00', '2018-11-22 02:00:00', '2018-11-22 18:00:00', '23', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1925', '2018-11-23', '2018-11-23 09:00:00', '2018-11-23 12:00:00', '2018-11-23 02:00:00', '2018-11-23 18:00:00', '23', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1926', '2018-11-24', '2018-11-24 09:00:00', '2018-11-24 12:00:00', '2018-11-24 02:00:00', '2018-11-24 18:00:00', '23', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1927', '2018-11-25', '2018-11-25 09:00:00', '2018-11-25 12:00:00', '2018-11-25 02:00:00', '2018-11-25 18:00:00', '23', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1928', '2018-11-26', '2018-11-26 09:00:00', '2018-11-26 12:00:00', '2018-11-26 02:00:00', '2018-11-26 18:00:00', '23', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1929', '2018-11-27', '2018-11-27 09:00:00', '2018-11-27 12:00:00', '2018-11-27 02:00:00', '2018-11-27 18:00:00', '23', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1930', '2018-11-28', '2018-11-28 09:00:00', '2018-11-28 12:00:00', '2018-11-28 02:00:00', '2018-11-28 18:00:00', '23', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1931', '2018-11-29', '2018-11-29 09:00:00', '2018-11-29 12:00:00', '2018-11-29 02:00:00', '2018-11-29 18:00:00', '23', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1932', '2018-11-30', '2018-11-30 09:00:00', '2018-11-30 12:00:00', '2018-11-30 02:00:00', '2018-11-30 18:00:00', '23', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1933', '2018-11-01', '2018-11-01 09:00:00', '2018-11-01 12:00:00', '2018-11-01 02:00:00', '2018-11-01 18:00:00', '22', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1934', '2018-11-02', '2018-11-02 09:00:00', '2018-11-02 12:00:00', '2018-11-02 02:00:00', '2018-11-02 18:00:00', '22', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1935', '2018-11-03', '2018-11-03 09:00:00', '2018-11-03 12:00:00', '2018-11-03 02:00:00', '2018-11-03 18:00:00', '22', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1936', '2018-11-04', '2018-11-04 09:00:00', '2018-11-04 12:00:00', '2018-11-04 02:00:00', '2018-11-04 18:00:00', '22', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1937', '2018-11-05', '2018-11-05 09:00:00', '2018-11-05 12:00:00', '2018-11-05 02:00:00', '2018-11-05 18:00:00', '22', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1938', '2018-11-06', '2018-11-06 09:00:00', '2018-11-06 12:00:00', '2018-11-06 02:00:00', '2018-11-06 18:00:00', '22', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1939', '2018-11-07', '2018-11-07 09:00:00', '2018-11-07 12:00:00', '2018-11-07 02:00:00', '2018-11-07 18:00:00', '22', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1940', '2018-11-08', '2018-11-08 09:00:00', '2018-11-08 12:00:00', '2018-11-08 02:00:00', '2018-11-08 18:00:00', '22', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1941', '2018-11-09', '2018-11-09 09:00:00', '2018-11-09 12:00:00', '2018-11-09 02:00:00', '2018-11-09 18:00:00', '22', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1942', '2018-11-10', '2018-11-10 09:00:00', '2018-11-10 12:00:00', '2018-11-10 02:00:00', '2018-11-10 18:00:00', '22', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1943', '2018-11-11', '2018-11-11 09:00:00', '2018-11-11 12:00:00', '2018-11-11 02:00:00', '2018-11-11 18:00:00', '22', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1944', '2018-11-12', '2018-11-12 09:00:00', '2018-11-12 12:00:00', '2018-11-12 02:00:00', '2018-11-12 18:00:00', '22', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1945', '2018-11-13', '2018-11-13 09:00:00', '2018-11-13 12:00:00', '2018-11-13 02:00:00', '2018-11-13 18:00:00', '22', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1946', '2018-11-14', '2018-11-14 09:00:00', '2018-11-14 12:00:00', '2018-11-14 02:00:00', '2018-11-14 18:00:00', '22', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1947', '2018-11-15', '2018-11-15 09:00:00', '2018-11-15 12:00:00', '2018-11-15 02:00:00', '2018-11-15 18:00:00', '22', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1948', '2018-11-16', '2018-11-16 09:00:00', '2018-11-16 12:00:00', '2018-11-16 02:00:00', '2018-11-16 18:00:00', '22', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1949', '2018-11-17', '2018-11-17 09:00:00', '2018-11-17 12:00:00', '2018-11-17 02:00:00', '2018-11-17 18:00:00', '22', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1950', '2018-11-18', '2018-11-18 09:00:00', '2018-11-18 12:00:00', '2018-11-18 02:00:00', '2018-11-18 18:00:00', '22', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1951', '2018-11-19', '2018-11-19 09:00:00', '2018-11-19 12:00:00', '2018-11-19 02:00:00', '2018-11-19 18:00:00', '22', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1952', '2018-11-20', '2018-11-20 09:00:00', '2018-11-20 12:00:00', '2018-11-20 02:00:00', '2018-11-20 18:00:00', '22', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1953', '2018-11-21', '2018-11-21 09:00:00', '2018-11-21 12:00:00', '2018-11-21 02:00:00', '2018-11-21 18:00:00', '22', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1954', '2018-11-22', '2018-11-22 09:00:00', '2018-11-22 12:00:00', '2018-11-22 02:00:00', '2018-11-22 18:00:00', '22', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1955', '2018-11-23', '2018-11-23 09:00:00', '2018-11-23 12:00:00', '2018-11-23 02:00:00', '2018-11-23 18:00:00', '22', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1956', '2018-11-24', '2018-11-24 09:00:00', '2018-11-24 12:00:00', '2018-11-24 02:00:00', '2018-11-24 18:00:00', '22', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1957', '2018-11-25', '2018-11-25 09:00:00', '2018-11-25 12:00:00', '2018-11-25 02:00:00', '2018-11-25 18:00:00', '22', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1958', '2018-11-26', '2018-11-26 09:00:00', '2018-11-26 12:00:00', '2018-11-26 02:00:00', '2018-11-26 18:00:00', '22', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1959', '2018-11-27', '2018-11-27 09:00:00', '2018-11-27 12:00:00', '2018-11-27 02:00:00', '2018-11-27 18:00:00', '22', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1960', '2018-11-28', '2018-11-28 09:00:00', '2018-11-28 12:00:00', '2018-11-28 02:00:00', '2018-11-28 18:00:00', '22', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1961', '2018-11-29', '2018-11-29 09:00:00', '2018-11-29 12:00:00', '2018-11-29 02:00:00', '2018-11-29 18:00:00', '22', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1962', '2018-11-30', '2018-11-30 09:00:00', '2018-11-30 12:00:00', '2018-11-30 02:00:00', '2018-11-30 18:00:00', '22', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1963', '2018-11-01', '2018-11-01 09:00:00', '2018-11-01 12:00:00', '2018-11-01 02:00:00', '2018-11-01 18:00:00', '19', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1964', '2018-11-02', '2018-11-02 09:00:00', '2018-11-02 12:00:00', '2018-11-02 02:00:00', '2018-11-02 18:00:00', '19', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1965', '2018-11-03', '2018-11-03 09:00:00', '2018-11-03 12:00:00', '2018-11-03 02:00:00', '2018-11-03 18:00:00', '19', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1966', '2018-11-04', '2018-11-04 09:00:00', '2018-11-04 12:00:00', '2018-11-04 02:00:00', '2018-11-04 18:00:00', '19', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1967', '2018-11-05', '2018-11-05 09:00:00', '2018-11-05 12:00:00', '2018-11-05 02:00:00', '2018-11-05 18:00:00', '19', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1968', '2018-11-06', '2018-11-06 09:00:00', '2018-11-06 12:00:00', '2018-11-06 02:00:00', '2018-11-06 18:00:00', '19', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1969', '2018-11-07', '2018-11-07 09:00:00', '2018-11-07 12:00:00', '2018-11-07 02:00:00', '2018-11-07 18:00:00', '19', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1970', '2018-11-08', '2018-11-08 09:00:00', '2018-11-08 12:00:00', '2018-11-08 02:00:00', '2018-11-08 18:00:00', '19', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1971', '2018-11-09', '2018-11-09 09:00:00', '2018-11-09 12:00:00', '2018-11-09 02:00:00', '2018-11-09 18:00:00', '19', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1972', '2018-11-10', '2018-11-10 09:00:00', '2018-11-10 12:00:00', '2018-11-10 02:00:00', '2018-11-10 18:00:00', '19', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1973', '2018-11-11', '2018-11-11 09:00:00', '2018-11-11 12:00:00', '2018-11-11 02:00:00', '2018-11-11 18:00:00', '19', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1974', '2018-11-12', '2018-11-12 09:00:00', '2018-11-12 12:00:00', '2018-11-12 02:00:00', '2018-11-12 18:00:00', '19', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1975', '2018-11-13', '2018-11-13 09:00:00', '2018-11-13 12:00:00', '2018-11-13 02:00:00', '2018-11-13 18:00:00', '19', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1976', '2018-11-14', '2018-11-14 09:00:00', '2018-11-14 12:00:00', '2018-11-14 02:00:00', '2018-11-14 18:00:00', '19', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1977', '2018-11-15', '2018-11-15 09:00:00', '2018-11-15 12:00:00', '2018-11-15 02:00:00', '2018-11-15 18:00:00', '19', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1978', '2018-11-16', '2018-11-16 09:00:00', '2018-11-16 12:00:00', '2018-11-16 02:00:00', '2018-11-16 18:00:00', '19', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1979', '2018-11-17', '2018-11-17 09:00:00', '2018-11-17 12:00:00', '2018-11-17 02:00:00', '2018-11-17 18:00:00', '19', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1980', '2018-11-18', '2018-11-18 09:00:00', '2018-11-18 12:00:00', '2018-11-18 02:00:00', '2018-11-18 18:00:00', '19', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1981', '2018-11-19', '2018-11-19 09:00:00', '2018-11-19 12:00:00', '2018-11-19 02:00:00', '2018-11-19 18:00:00', '19', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1982', '2018-11-20', '2018-11-20 09:00:00', '2018-11-20 12:00:00', '2018-11-20 02:00:00', '2018-11-20 18:00:00', '19', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1983', '2018-11-21', '2018-11-21 09:00:00', '2018-11-21 12:00:00', '2018-11-21 02:00:00', '2018-11-21 18:00:00', '19', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1984', '2018-11-22', '2018-11-22 09:00:00', '2018-11-22 12:00:00', '2018-11-22 02:00:00', '2018-11-22 18:00:00', '19', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1985', '2018-11-23', '2018-11-23 09:00:00', '2018-11-23 12:00:00', '2018-11-23 02:00:00', '2018-11-23 18:00:00', '19', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1986', '2018-11-24', '2018-11-24 09:00:00', '2018-11-24 12:00:00', '2018-11-24 02:00:00', '2018-11-24 18:00:00', '19', '星期六', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1987', '2018-11-25', '2018-11-25 09:00:00', '2018-11-25 12:00:00', '2018-11-25 02:00:00', '2018-11-25 18:00:00', '19', '星期日', '休息', '休息', '休息', '休息');
INSERT INTO `pbjl` VALUES ('1988', '2018-11-26', '2018-11-26 09:00:00', '2018-11-26 12:00:00', '2018-11-26 02:00:00', '2018-11-26 18:00:00', '19', '星期一', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1989', '2018-11-27', '2018-11-27 09:00:00', '2018-11-27 12:00:00', '2018-11-27 02:00:00', '2018-11-27 18:00:00', '19', '星期二', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1990', '2018-11-28', '2018-11-28 09:00:00', '2018-11-28 12:00:00', '2018-11-28 02:00:00', '2018-11-28 18:00:00', '19', '星期三', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1991', '2018-11-29', '2018-11-29 09:00:00', '2018-11-29 12:00:00', '2018-11-29 02:00:00', '2018-11-29 18:00:00', '19', '星期四', '缺勤', '缺勤', '缺勤', '缺勤');
INSERT INTO `pbjl` VALUES ('1992', '2018-11-30', '2018-11-30 09:00:00', '2018-11-30 12:00:00', '2018-11-30 02:00:00', '2018-11-30 18:00:00', '19', '星期五', '缺勤', '缺勤', '缺勤', '缺勤');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('1', '早班', '07:00:00', '11:00:00', '13:00:00', '17:00:00');
INSERT INTO `schedule` VALUES ('9', '晚班', '09:00:00', '12:00:00', '02:00:00', '18:00:00');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(11) DEFAULT NULL,
  `goId` int(11) DEFAULT NULL,
  `sName` varchar(256) NOT NULL,
  `sSize` varchar(256) DEFAULT NULL,
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
  CONSTRAINT `FK_SHOP_REFERENCE_GOOD_TYP` FOREIGN KEY (`goId`) REFERENCES `goodtype` (`goId`),
  CONSTRAINT `FK_SHOP_RELATIONS_COURT` FOREIGN KEY (`cId`) REFERENCES `court` (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '2', '1', '草稿纸', '1', '附件', '消耗品', '789789', '1', '晨光', '500', '50', '97', '50', '1', '1', '123', '李', '1', '1', '1', '2018-11-05');
INSERT INTO `shop` VALUES ('2', '1', '1', '签字笔', '1', '附件', '消耗品', '123456', '2', '得力', '50', '10', '18', '20', '1', '1', 'admin', '1', null, null, null, '2018-11-05');
INSERT INTO `shop` VALUES ('3', '1', '2', '蓝翔挖掘机', '1', '附件', '小号', '123456', '2', '啦啦', '20', '50', '29', '30', '1', '1', null, '1', null, null, null, '2018-11-28');
INSERT INTO `shop` VALUES ('4', '1', '2', '冰露', '1', '附', '1', '12333', '1', '经', '50', '20', '23', '25', null, null, null, '1', null, null, null, '2018-11-06');
INSERT INTO `shop` VALUES ('5', '1', null, 'ceshi', null, '1', '1', '1', '1', '1', '30', '10', '15', '15', null, null, null, '1', null, null, null, '2018-10-11');
INSERT INTO `shop` VALUES ('6', '2', null, '测试1', null, '1', '1', '123123', '123', '是的', '30', '10', '15', '15', null, null, null, '1', null, null, null, '2018-11-12');

-- ----------------------------
-- Table structure for `springfestival`
-- ----------------------------
DROP TABLE IF EXISTS `springfestival`;
CREATE TABLE `springfestival` (
  `sfId` int(11) NOT NULL AUTO_INCREMENT,
  `sfName` varchar(50) DEFAULT NULL,
  `sfTime` datetime DEFAULT NULL,
  `sfTimeEnd` datetime DEFAULT NULL,
  PRIMARY KEY (`sfId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of springfestival
-- ----------------------------
INSERT INTO `springfestival` VALUES ('1', '春节', '2018-11-05 00:00:00', '2018-11-23 00:00:00');

-- ----------------------------
-- Table structure for `synthesis`
-- ----------------------------
DROP TABLE IF EXISTS `synthesis`;
CREATE TABLE `synthesis` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `qtid` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `syReason` varchar(50) DEFAULT NULL,
  `syShen` datetime DEFAULT NULL,
  `syTime` datetime DEFAULT NULL,
  `timeOne` datetime DEFAULT NULL,
  `timeTwo` datetime DEFAULT NULL,
  `timeChu` datetime DEFAULT NULL,
  `timeAddress` varchar(50) DEFAULT NULL,
  `syName` varchar(50) DEFAULT NULL,
  `reading` varchar(50) DEFAULT NULL,
  `car` int(11) DEFAULT NULL,
  `syXiao` datetime DEFAULT NULL,
  `exState` int(11) DEFAULT NULL,
  `syState` int(11) DEFAULT NULL,
  `timeChai` int(11) DEFAULT NULL,
  `shenId` int(11) DEFAULT NULL,
  `wcTimeOne` varchar(255) DEFAULT NULL,
  `wcTimeTwo` varchar(255) DEFAULT NULL,
  `wcTime` varchar(255) DEFAULT NULL,
  `wcTimeEnd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sId`),
  KEY `FK_SYNTHESI_REFERENCE_QINGTYPE` (`qtid`),
  KEY `FK_SYNTHESI_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_SYNTHESI_REFERENCE_QINGTYPE` FOREIGN KEY (`qtid`) REFERENCES `qingtype` (`qtId`),
  CONSTRAINT `FK_SYNTHESI_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of synthesis
-- ----------------------------
INSERT INTO `synthesis` VALUES ('1', null, '1', '有事', '2018-10-08 20:22:44', '2018-10-08 00:00:00', null, null, null, null, null, null, '1', '2018-10-08 23:07:07', '3', '1', null, '1', '2', '0', '20:24:25', '22:24:28');
INSERT INTO `synthesis` VALUES ('2', null, '1', '生病', '2018-10-08 20:22:57', null, null, null, null, null, '2017-12-12', null, null, null, '1', '2', null, '1', '1', '0', '2018-10-08 00:00:00', '2018-10-09 00:00:00');
INSERT INTO `synthesis` VALUES ('3', null, '1', '想加班', '2018-10-08 20:23:07', null, null, null, null, null, null, null, null, '2018-10-08 23:16:17', '3', '3', null, '1', '24', '0', '2018-10-08 00:00:00', '2018-10-09 00:00:00');
INSERT INTO `synthesis` VALUES ('4', null, '1', '受伤', '2018-10-08 23:07:47', null, null, null, null, null, null, null, null, '2018-10-08 23:16:36', '3', '2', null, '1', '11', '0', '2018-10-08 00:00:00', '2018-10-19 00:00:00');
INSERT INTO `synthesis` VALUES ('5', null, '1', '招聘', '2018-10-08 23:32:22', null, null, null, null, '上海', null, null, null, '2018-10-09 14:03:18', '3', '4', null, '22', '6', null, '2018-10-08 00:00:00', '2018-10-14 00:00:00');
INSERT INTO `synthesis` VALUES ('6', null, '1', '外出访谈', '2018-10-09 14:28:25', '2018-10-09 00:00:00', null, null, null, null, '你快回来', null, '0', null, '1', '1', null, '22', '2', '3', '14:28:53', '16:31:57');
INSERT INTO `synthesis` VALUES ('7', null, '1', '旅游', '2018-11-09 23:38:36', '2018-11-09 00:00:00', null, null, null, null, null, null, null, '2018-11-09 23:43:05', '3', '1', null, '24', '0', '22', '23:36:59', '23:59:14');
INSERT INTO `synthesis` VALUES ('8', null, '23', '外出借东西', '2018-11-11 21:19:08', '2018-11-11 00:00:00', null, null, null, null, null, null, '1', '2018-11-11 21:23:35', '3', '1', null, '22', '1', '2', '21:19:46', '22:21:49');
INSERT INTO `synthesis` VALUES ('9', null, '23', '外出借东西', '2018-11-11 21:19:08', '2018-11-11 00:00:00', null, null, null, null, '1\n', null, '1', null, '1', '1', null, '22', '1', '2', '21:19:46', '22:21:49');
INSERT INTO `synthesis` VALUES ('10', null, '23', '外出借东西', '2018-11-11 21:19:08', '2018-11-11 00:00:00', null, null, null, null, '1\n', null, '1', null, '1', '1', null, '22', '1', '2', '21:19:46', '22:21:49');
INSERT INTO `synthesis` VALUES ('11', null, '23', '生病', '2018-11-11 21:24:21', null, null, null, null, null, null, null, null, '2018-11-11 21:29:27', '3', '2', null, '22', '2', '0', '2018-11-11 21:24:47', '2018-11-13 21:24:51');
INSERT INTO `synthesis` VALUES ('12', null, '23', '去路由', '2018-11-11 21:27:00', '2018-11-11 00:00:00', null, null, null, null, null, null, '1', '2018-11-12 08:25:16', '3', '1', null, '22', '1', '0', '21:27:44', '22:27:46');
INSERT INTO `synthesis` VALUES ('13', null, '23', '外出1', '2018-11-12 08:20:50', '2018-11-12 00:00:00', null, null, null, null, null, null, '0', '2018-11-12 08:25:02', '3', '1', null, '1', '5', '0', '08:21:09', '13:21:12');
INSERT INTO `synthesis` VALUES ('14', null, '19', 'q', '2018-11-12 09:42:54', '2018-11-12 00:00:00', null, null, null, null, null, null, '0', null, '0', '1', null, '1', '3', '0', '09:43:03', '12:43:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, 'arthur', 'duxiaod@qq.com', '1', '1994-11-08', '陕西省西安市雁塔区', '17693109997', '1', '1');
INSERT INTO `tb_admin` VALUES ('18', 'test', 'e10adc3949ba59abbe56e057f20f883e', null, 'test', 'test@test.com', '1', '2018-02-25', '甘肃省兰州市榆中县和平镇', '17601038192', '61', '2');
INSERT INTO `tb_admin` VALUES ('19', 'lpr', '4297f44b13955235245b2497399d7a93', null, '刘培然', '1144512404@qq.com', '0', '1998-05-16', 'asdasd', '13525636996', '1', '2');
INSERT INTO `tb_admin` VALUES ('20', 'mm', '4297f44b13955235245b2497399d7a93', null, '毛毛', '135256335@qq.com', '0', '2018-10-22', 'asdasd', '13525636996', '1', '2');
INSERT INTO `tb_admin` VALUES ('21', 'zx', '4297f44b13955235245b2497399d7a93', null, '张肖', '1584777854@qq.com', '1', '2011-07-29', 'asdasd', '13525636996', '1', '1');
INSERT INTO `tb_admin` VALUES ('22', 'gd', '4297f44b13955235245b2497399d7a93', null, '郭迪', '1144514404@qq.com', '1', '1995-04-09', '濮阳县', '13525636996', '1', '1');
INSERT INTO `tb_admin` VALUES ('23', 'xiaoli', '4297f44b13955235245b2497399d7a93', null, '小李', '14585985655@qq.com', '1', '2012-11-05', '新乡', '13525856552', '63', '21');
INSERT INTO `tb_admin` VALUES ('24', 'chl', '4297f44b13955235245b2497399d7a93', null, '崔红柳', '1458585845@qq.com', '1', '1996-10-08', '新乡', '13525856552', '62', '7');
INSERT INTO `tb_admin` VALUES ('25', 'wangmengwei', '4297f44b13955235245b2497399d7a93', null, '王梦威', '1458598555@qq.com', '1', '2012-10-09', '新乡', '13525856552', '64', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=855 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES ('690', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,14,15,42,43,44,45\";', '0:0:0:0:0:0:0:1', '2018-10-29 15:07:06');
INSERT INTO `tb_log` VALUES ('691', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"薪酬管理\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:24:16');
INSERT INTO `tb_log` VALUES ('692', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"薪酬项目及保险\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:24:48');
INSERT INTO `tb_log` VALUES ('693', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"薪酬基数设置\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:25:13');
INSERT INTO `tb_log` VALUES ('694', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"工资流程管理\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:25:50');
INSERT INTO `tb_log` VALUES ('695', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"部门工资上报\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:27:59');
INSERT INTO `tb_log` VALUES ('696', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"组织机构信息\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":996,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:28:34');
INSERT INTO `tb_log` VALUES ('697', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":43,\"title\":\"SQL监控\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:28:50');
INSERT INTO `tb_log` VALUES ('698', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":62,\"title\":\"单位信息查询\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:29:11');
INSERT INTO `tb_log` VALUES ('699', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":62,\"title\":\"部门信息查询\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:29:35');
INSERT INTO `tb_log` VALUES ('700', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":62,\"title\":\"用户信息查询\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:30:05');
INSERT INTO `tb_log` VALUES ('701', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:30:24');
INSERT INTO `tb_log` VALUES ('702', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":58,\"title\":\"薪酬项目及保险\",\"icon\":\"\",\"href\":\"salitem/findxc.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:37:01');
INSERT INTO `tb_log` VALUES ('703', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":59,\"title\":\"薪酬基数设置\",\"icon\":\"\",\"href\":\"personxc/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-29 20:17:53');
INSERT INTO `tb_log` VALUES ('704', 'admin', '添加管理员', '/oa/sys/insAdmin', '{\"id\":null,\"username\":\"zx\",\"password\":\"123123\",\"salt\":null,\"fullname\":\"张肖\",\"eMail\":\"1584777854@qq.com\",\"sex\":\"1\",\"birthday\":\"2011-07-29\",\"address\":\"asdasd\",\"phone\":\"13525636996\",\"roleId\":1,\"roleName\":null};', '0:0:0:0:0:0:0:1', '2018-10-29 23:36:01');
INSERT INTO `tb_log` VALUES ('705', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":60,\"title\":\"工资流程管理\",\"icon\":\"\",\"href\":\"salaryflow/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-30 15:11:23');
INSERT INTO `tb_log` VALUES ('706', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":61,\"title\":\"部门工资上报\",\"icon\":\"\",\"href\":\"saldata/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-31 16:19:21');
INSERT INTO `tb_log` VALUES ('708', 'admin', '添加管理员', '/oa/sys/insAdmin', '{\"id\":null,\"username\":\"gd\",\"password\":\"123123\",\"salt\":null,\"fullname\":\"郭迪\",\"eMail\":\"1144514404@qq.com\",\"sex\":\"1\",\"birthday\":\"1995-04-09\",\"address\":\"濮阳县\",\"phone\":\"13525636996\",\"roleId\":1,\"roleName\":null};', '0:0:0:0:0:0:0:1', '2018-11-02 16:47:23');
INSERT INTO `tb_log` VALUES ('709', 'admin', '更新用户信息', '/oa/user/updUser', '{\"uid\":28,\"eMail\":\"123@qq.com\",\"nickname\":\"2113\",\"password\":null,\"sex\":\"1\",\"birthday\":\"2018-07-26\",\"address\":\"123123\",\"phone\":\"17693109997\",\"eCode\":null,\"status\":\"1\",\"createTime\":null};', '0:0:0:0:0:0:0:1', '2018-11-02 19:48:56');
INSERT INTO `tb_log` VALUES ('710', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"人才管理\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":null,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 21:51:45');
INSERT INTO `tb_log` VALUES ('711', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"招聘计划\",\"icon\":\"&#xe642\",\"href\":\"plan/findplan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 21:53:01');
INSERT INTO `tb_log` VALUES ('712', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67\";', '0:0:0:0:0:0:0:1', '2018-11-04 21:53:17');
INSERT INTO `tb_log` VALUES ('713', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"人才管理\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:39:02');
INSERT INTO `tb_log` VALUES ('714', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"个人事务\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:40:02');
INSERT INTO `tb_log` VALUES ('715', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"考勤设置\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":null,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:40:16');
INSERT INTO `tb_log` VALUES ('716', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"考勤设置\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:40:54');
INSERT INTO `tb_log` VALUES ('717', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"排版管理\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:41:37');
INSERT INTO `tb_log` VALUES ('718', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":70,\"title\":\"排版管理\",\"icon\":\"\",\"href\":\"duty/PaiBan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":69,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:42:24');
INSERT INTO `tb_log` VALUES ('719', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,69,70\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:42:40');
INSERT INTO `tb_log` VALUES ('720', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"班次管理\",\"icon\":\"\",\"href\":\"schedule/Ban.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:46:23');
INSERT INTO `tb_log` VALUES ('721', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,69,70,71\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:46:36');
INSERT INTO `tb_log` VALUES ('722', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"审批规则设置\",\"icon\":\"&#xe642\",\"href\":\"exam/Exam.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:04:38');
INSERT INTO `tb_log` VALUES ('723', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"免签节假日\",\"icon\":\"&#xe642\",\"href\":\"Festival/festival.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:05:25');
INSERT INTO `tb_log` VALUES ('724', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"个人考勤\",\"icon\":\"&#xe642\",\"href\":\"GeRen/KaoQin.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:07:36');
INSERT INTO `tb_log` VALUES ('725', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"外出登记\",\"icon\":\"\",\"href\":\"schedule/test.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:08:11');
INSERT INTO `tb_log` VALUES ('726', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"请假登记\",\"icon\":\"\",\"href\":\"GeRen/QingJia.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:08:35');
INSERT INTO `tb_log` VALUES ('727', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"加班登记\",\"icon\":\"\",\"href\":\"GeRen/JiaBan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:09:35');
INSERT INTO `tb_log` VALUES ('728', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"出差登记\",\"icon\":\"\",\"href\":\"GeRen/ChuChai.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:10:20');
INSERT INTO `tb_log` VALUES ('729', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,68,74,75,76,77,78,69,70,71\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:10:45');
INSERT INTO `tb_log` VALUES ('730', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,68,74,75,76,77,78,69,70,71,72,73\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:11:53');
INSERT INTO `tb_log` VALUES ('731', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"招聘计划筛选\",\"icon\":\"\",\"href\":\"plan/findplan0.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:19:15');
INSERT INTO `tb_log` VALUES ('732', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"人才库\",\"icon\":\"\",\"href\":\"talent/findtalent.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:20:01');
INSERT INTO `tb_log` VALUES ('733', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"招聘人员筛选\",\"icon\":\"\",\"href\":\"screen/findscreen.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":996,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:20:39');
INSERT INTO `tb_log` VALUES ('734', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"招聘录用\",\"icon\":\"\",\"href\":\"hire/findhire.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:21:25');
INSERT INTO `tb_log` VALUES ('735', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,69,70,71,72,73\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:21:54');
INSERT INTO `tb_log` VALUES ('736', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":2,\"title\":\"管理员管理\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:26:42');
INSERT INTO `tb_log` VALUES ('737', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":9,\"title\":\"用户管理\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:27:09');
INSERT INTO `tb_log` VALUES ('738', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"个人事务\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:27:44');
INSERT INTO `tb_log` VALUES ('739', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"人才管理\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:27:57');
INSERT INTO `tb_log` VALUES ('740', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"公共事务\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:56:38');
INSERT INTO `tb_log` VALUES ('741', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,69,70,71,72,73,83\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:56:54');
INSERT INTO `tb_log` VALUES ('742', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"申领物品\",\"icon\":\"\",\"href\":\"apply/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:57:29');
INSERT INTO `tb_log` VALUES ('743', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"物品审批\",\"icon\":\"&#xe642\",\"href\":\"apply/find2.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:58:02');
INSERT INTO `tb_log` VALUES ('744', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"物品信息\",\"icon\":\"\",\"href\":\"tree/findshop.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:58:30');
INSERT INTO `tb_log` VALUES ('745', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,69,70,71,72,73,83,84,85,86\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:58:42');
INSERT INTO `tb_log` VALUES ('747', 'admin', '添加角色信息', '/oa/sys/insRole', '{\"roleId\":null,\"roleName\":\"ceo\",\"roleRemark\":\"管理大部分权限\"};\"1,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,69,70,71,72,73,83,84,85,86\";', '0:0:0:0:0:0:0:1', '2018-11-05 10:07:57');
INSERT INTO `tb_log` VALUES ('748', 'admin', '添加管理员', '/oa/sys/insAdmin', '{\"id\":null,\"username\":\"xiaoli\",\"password\":\"123123\",\"salt\":null,\"fullname\":\"小李\",\"eMail\":\"14585985655@qq.com\",\"sex\":\"1\",\"birthday\":\"2012-11-05\",\"address\":\"新乡\",\"phone\":\"13525856552\",\"roleId\":62,\"roleName\":null};', '0:0:0:0:0:0:0:1', '2018-11-05 10:12:47');
INSERT INTO `tb_log` VALUES ('774', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":87,\"title\":\"电子邮件\",\"icon\":\"\",\"href\":\"dept/mailfind.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-11 22:29:12');
INSERT INTO `tb_log` VALUES ('776', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"考勤记录\",\"icon\":\"\",\"href\":\"GeRen/KaoQinJiLu.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-09 23:24:31');
INSERT INTO `tb_log` VALUES ('777', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"考勤统计\",\"icon\":\"\",\"href\":\"GeRen/KaoQinTongji.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":900,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-09 23:25:15');
INSERT INTO `tb_log` VALUES ('778', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,85,86\";', '0:0:0:0:0:0:0:1', '2018-11-09 23:25:51');
INSERT INTO `tb_log` VALUES ('779', '系统自动任务', '定时删除日志：25条', '', '', '', '2018-10-11 00:00:01');
INSERT INTO `tb_log` VALUES ('780', 'admin', '添加用户', '/oa/user/insUser', '{\"uid\":null,\"eMail\":\"123432423@qq.cpm\",\"nickname\":\"郭迪\",\"password\":\"123123\",\"sex\":\"1\",\"birthday\":\"1996-04-09\",\"address\":\"新乡\",\"phone\":\"13525856552\",\"eCode\":null,\"status\":null,\"createTime\":null};', '0:0:0:0:0:0:0:1', '2018-11-10 14:57:04');
INSERT INTO `tb_log` VALUES ('781', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"人事调动\",\"icon\":\"\",\"href\":\"transfer/findtransfer.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":991,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-11 15:59:50');
INSERT INTO `tb_log` VALUES ('782', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"人事档案\",\"icon\":\"\",\"href\":\"recoed/findrecord.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":992,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-11 16:01:32');
INSERT INTO `tb_log` VALUES ('783', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,91,92,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,85,86\";', '0:0:0:0:0:0:0:1', '2018-11-11 16:01:53');
INSERT INTO `tb_log` VALUES ('784', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"物品归还\",\"icon\":\"\",\"href\":\"apply/find4.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":900,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-11 19:00:54');
INSERT INTO `tb_log` VALUES ('785', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":86,\"title\":\"物品信息管理\",\"icon\":\"\",\"href\":\"tree/findshop.action\",\"perms\":\"\",\"spread\":null,\"parentId\":83,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-11 19:02:09');
INSERT INTO `tb_log` VALUES ('786', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"归还审批\",\"icon\":\"\",\"href\":\"apply/find5.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":899,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-11 19:02:53');
INSERT INTO `tb_log` VALUES ('787', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,91,92,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,85,86,93,94\";', '0:0:0:0:0:0:0:1', '2018-11-11 19:03:21');
INSERT INTO `tb_log` VALUES ('788', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":61,\"roleName\":\"test\",\"roleRemark\":\"test\"};\"1,2,3,16,17,18,19,4,20,46,47,48,49,50,9,11,34,14,15,42,43,44,45,83,84,93\";', '0:0:0:0:0:0:0:1', '2018-11-11 19:08:40');
INSERT INTO `tb_log` VALUES ('789', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"物品报表\",\"icon\":\"\",\"href\":\"apply/find3.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":800,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-11 20:23:09');
INSERT INTO `tb_log` VALUES ('790', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,91,92,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,85,86,93,94,95\";', '0:0:0:0:0:0:0:1', '2018-11-11 20:23:32');
INSERT INTO `tb_log` VALUES ('791', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":62,\"roleName\":\"ceo\",\"roleRemark\":\"管理大部分权限\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,91,92,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,85,86,93,94,95\";', '0:0:0:0:0:0:0:1', '2018-11-11 20:25:30');
INSERT INTO `tb_log` VALUES ('792', 'admin', '添加角色信息', '/oa/sys/insRole', '{\"roleId\":null,\"roleName\":\"普通员工\",\"roleRemark\":\"员工一些日常操作\"};\"1,68,74,75,76,77,78,87,88,89,83,84,93\";', '0:0:0:0:0:0:0:1', '2018-11-11 20:28:59');
INSERT INTO `tb_log` VALUES ('793', 'admin', '添加角色信息', '/oa/sys/insRole', '{\"roleId\":null,\"roleName\":\"财务人员\",\"roleRemark\":\"管理薪酬页面\"};\"57,58,59,60,61,62,63,64,65,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,94\";', '0:0:0:0:0:0:0:1', '2018-11-11 20:33:14');
INSERT INTO `tb_log` VALUES ('794', 'admin', '更新管理员信息', '/oa/sys/updAdmin', '{\"id\":25,\"username\":\"wangmengwei\",\"password\":null,\"salt\":null,\"fullname\":\"王梦威\",\"eMail\":\"1458598555@qq.com\",\"sex\":\"1\",\"birthday\":\"2012-10-09\",\"address\":\"新乡\",\"phone\":\"13525856552\",\"roleId\":64,\"roleName\":null,\"deptId\":4,\"deptName\":null};', '0:0:0:0:0:0:0:1', '2018-11-11 20:33:44');
INSERT INTO `tb_log` VALUES ('795', 'admin', '更新管理员信息', '/oa/sys/updAdmin', '{\"id\":23,\"username\":\"xiaoli\",\"password\":null,\"salt\":null,\"fullname\":\"小李\",\"eMail\":\"14585985655@qq.com\",\"sex\":\"1\",\"birthday\":\"2012-11-05\",\"address\":\"新乡\",\"phone\":\"13525856552\",\"roleId\":63,\"roleName\":null,\"deptId\":21,\"deptName\":null};', '0:0:0:0:0:0:0:1', '2018-11-11 20:35:24');
INSERT INTO `tb_log` VALUES ('796', 'test', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":61,\"roleName\":\"test\",\"roleRemark\":\"test\"};\"1,2,3,16,17,18,19,4,20,46,47,48,49,50,9,11,34,14,15,42,43,44,45,83,84,85,86,93,94,95\";', '0:0:0:0:0:0:0:1', '2018-11-12 10:55:54');
INSERT INTO `tb_log` VALUES ('797', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":74,\"title\":\"个人考勤\",\"icon\":\"\",\"href\":\"GeRen/KaoQin.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":996,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:01:48');
INSERT INTO `tb_log` VALUES ('798', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":74,\"title\":\"个人考勤\",\"icon\":\"\",\"href\":\"GeRen/KaoQin.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":996,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:02:14');
INSERT INTO `tb_log` VALUES ('799', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":89,\"title\":\"考勤记录\",\"icon\":\"\",\"href\":\"GeRen/KaoQinJiLu.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:02:33');
INSERT INTO `tb_log` VALUES ('800', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":75,\"title\":\"外出登记\",\"icon\":\"\",\"href\":\"schedule/test.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"\";', '127.0.0.1', '2018-11-12 21:05:08');
INSERT INTO `tb_log` VALUES ('801', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":76,\"title\":\"请假登记\",\"icon\":\"\",\"href\":\"GeRen/QingJia.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '127.0.0.1', '2018-11-12 21:05:25');
INSERT INTO `tb_log` VALUES ('802', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":77,\"title\":\"加班登记\",\"icon\":\"\",\"href\":\"GeRen/JiaBan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '127.0.0.1', '2018-11-12 21:05:35');
INSERT INTO `tb_log` VALUES ('803', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":78,\"title\":\"出差登记\",\"icon\":\"\",\"href\":\"GeRen/ChuChai.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '127.0.0.1', '2018-11-12 21:05:46');
INSERT INTO `tb_log` VALUES ('804', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":87,\"title\":\"电子邮件\",\"icon\":\"&#xe63a\",\"href\":\"dept/mailfind.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:11:10');
INSERT INTO `tb_log` VALUES ('805', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":88,\"title\":\"通讯簿\",\"icon\":\"&#xe770\",\"href\":\"address/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:12:13');
INSERT INTO `tb_log` VALUES ('806', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":75,\"title\":\"外出登记\",\"icon\":\"&#xe655\",\"href\":\"schedule/test.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:13:44');
INSERT INTO `tb_log` VALUES ('807', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":76,\"title\":\"请假登记\",\"icon\":\"&#xe655\",\"href\":\"GeRen/QingJia.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:13:57');
INSERT INTO `tb_log` VALUES ('808', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":77,\"title\":\"加班登记\",\"icon\":\"&#xe655\",\"href\":\"GeRen/JiaBan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:14:08');
INSERT INTO `tb_log` VALUES ('809', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":78,\"title\":\"出差登记\",\"icon\":\"&#xe655\",\"href\":\"GeRen/ChuChai.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:14:20');
INSERT INTO `tb_log` VALUES ('810', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"公共事务\",\"icon\":\"&#xe63f\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:15:22');
INSERT INTO `tb_log` VALUES ('811', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"公共事务\",\"icon\":\"&#xe62a\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:15:51');
INSERT INTO `tb_log` VALUES ('812', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"薪酬管理\",\"icon\":\"&#xe63d\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:17:20');
INSERT INTO `tb_log` VALUES ('813', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"薪酬管理\",\"icon\":\"&#xe628\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:18:23');
INSERT INTO `tb_log` VALUES ('814', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"考勤设置\",\"icon\":\"&#xe637\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:18:51');
INSERT INTO `tb_log` VALUES ('815', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":62,\"title\":\"组织机构信息\",\"icon\":\"&#xe656\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":996,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:19:32');
INSERT INTO `tb_log` VALUES ('816', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":2,\"title\":\"管理员管理\",\"icon\":\"&#xe66f\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:20:11');
INSERT INTO `tb_log` VALUES ('817', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":9,\"title\":\"用户管理\",\"icon\":\"&#xe676\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:20:35');
INSERT INTO `tb_log` VALUES ('818', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":74,\"title\":\"个人考勤\",\"icon\":\"&#xe62a\",\"href\":\"GeRen/KaoQin.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":996,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:21:42');
INSERT INTO `tb_log` VALUES ('819', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":89,\"title\":\"考勤记录\",\"icon\":\"&#xe62d\",\"href\":\"GeRen/KaoQinJiLu.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:22:09');
INSERT INTO `tb_log` VALUES ('820', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":84,\"title\":\"申领物品\",\"icon\":\"&#xe617\",\"href\":\"apply/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":83,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:23:04');
INSERT INTO `tb_log` VALUES ('821', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":86,\"title\":\"物品信息管理\",\"icon\":\"&#xe606\",\"href\":\"tree/findshop.action\",\"perms\":\"\",\"spread\":null,\"parentId\":83,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:23:40');
INSERT INTO `tb_log` VALUES ('822', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":93,\"title\":\"物品归还\",\"icon\":\"&#xe60a\",\"href\":\"apply/find4.action\",\"perms\":\"\",\"spread\":null,\"parentId\":83,\"sorting\":900,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:24:34');
INSERT INTO `tb_log` VALUES ('823', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":94,\"title\":\"归还审批\",\"icon\":\"&#xe642\",\"href\":\"apply/find5.action\",\"perms\":\"\",\"spread\":null,\"parentId\":83,\"sorting\":899,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:25:11');
INSERT INTO `tb_log` VALUES ('824', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":95,\"title\":\"物品报表\",\"icon\":\"&#xe62d\",\"href\":\"apply/find3.action\",\"perms\":\"\",\"spread\":null,\"parentId\":83,\"sorting\":800,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:26:05');
INSERT INTO `tb_log` VALUES ('825', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":67,\"title\":\"招聘计划\",\"icon\":\"&#xe63c\",\"href\":\"plan/findplan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":66,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:27:03');
INSERT INTO `tb_log` VALUES ('826', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":79,\"title\":\"招聘计划筛选\",\"icon\":\"&#xe639\",\"href\":\"plan/findplan0.action\",\"perms\":\"\",\"spread\":null,\"parentId\":66,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:27:56');
INSERT INTO `tb_log` VALUES ('827', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":80,\"title\":\"人才库\",\"icon\":\"&#xe670\",\"href\":\"talent/findtalent.action\",\"perms\":\"\",\"spread\":null,\"parentId\":66,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:29:04');
INSERT INTO `tb_log` VALUES ('828', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":81,\"title\":\"招聘人员筛选\",\"icon\":\"\",\"href\":\"screen/findscreen.action\",\"perms\":\"\",\"spread\":null,\"parentId\":66,\"sorting\":996,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:29:29');
INSERT INTO `tb_log` VALUES ('829', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":82,\"title\":\"招聘录用\",\"icon\":\"&#xe654\",\"href\":\"hire/findhire.action\",\"perms\":\"\",\"spread\":null,\"parentId\":66,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:29:51');
INSERT INTO `tb_log` VALUES ('830', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":92,\"title\":\"人事档案\",\"icon\":\"&#xe770\",\"href\":\"recoed/findrecord.action\",\"perms\":\"\",\"spread\":null,\"parentId\":66,\"sorting\":992,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:30:14');
INSERT INTO `tb_log` VALUES ('831', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":91,\"title\":\"人事调动\",\"icon\":\"&#xe613\",\"href\":\"transfer/findtransfer.action\",\"perms\":\"\",\"spread\":null,\"parentId\":66,\"sorting\":991,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:30:50');
INSERT INTO `tb_log` VALUES ('832', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":58,\"title\":\"薪酬项目及保险\",\"icon\":\"&#xe6af\",\"href\":\"salitem/findxc.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:32:00');
INSERT INTO `tb_log` VALUES ('833', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":59,\"title\":\"薪酬基数设置\",\"icon\":\"&#xe65e\",\"href\":\"personxc/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:34:57');
INSERT INTO `tb_log` VALUES ('834', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":60,\"title\":\"工资流程管理\",\"icon\":\"&#xe705\",\"href\":\"salaryflow/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:35:18');
INSERT INTO `tb_log` VALUES ('835', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":61,\"title\":\"部门工资上报\",\"icon\":\"&#xe67c\",\"href\":\"saldata/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:35:37');
INSERT INTO `tb_log` VALUES ('836', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":70,\"title\":\"排版管理\",\"icon\":\"&#xe638\",\"href\":\"duty/PaiBan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":69,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:36:21');
INSERT INTO `tb_log` VALUES ('837', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":72,\"title\":\"审批规则设置\",\"icon\":\"&#xe631\",\"href\":\"exam/Exam.action\",\"perms\":\"\",\"spread\":null,\"parentId\":69,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:36:46');
INSERT INTO `tb_log` VALUES ('838', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":73,\"title\":\"免签节假日\",\"icon\":\"&#xe756\",\"href\":\"Festival/festival.action\",\"perms\":\"\",\"spread\":null,\"parentId\":69,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:37:31');
INSERT INTO `tb_log` VALUES ('839', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":71,\"title\":\"班次管理\",\"icon\":\"&#xe637\",\"href\":\"schedule/Ban.action\",\"perms\":\"\",\"spread\":null,\"parentId\":69,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:38:12');
INSERT INTO `tb_log` VALUES ('840', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":90,\"title\":\"考勤统计\",\"icon\":\"&#xe638\",\"href\":\"GeRen/KaoQinTongji.action\",\"perms\":\"\",\"spread\":null,\"parentId\":69,\"sorting\":900,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-12 21:38:36');
INSERT INTO `tb_log` VALUES ('841', 'test', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":61,\"roleName\":\"test\",\"roleRemark\":\"test\"};\"1,2,3,16,17,18,19,4,20,46,47,48,49,50,9,11,34,14,15,42,43,44,45,68,74,75,76,77,78,87,88,89,83,84,85,86,93,94,95\";', '0:0:0:0:0:0:0:1', '2018-11-13 17:58:13');
INSERT INTO `tb_log` VALUES ('842', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"通告管理\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:33:11');
INSERT INTO `tb_log` VALUES ('843', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":96,\"title\":\"新建通告\",\"icon\":\"&#xe642\",\"href\":\"address/sendNotce.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:36:44');
INSERT INTO `tb_log` VALUES ('844', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,91,92,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,85,86,93,94,95,96,97\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:37:07');
INSERT INTO `tb_log` VALUES ('845', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":96,\"title\":\"通告查询\",\"icon\":\"&#xe258\",\"href\":\"address/noticegl.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:39:05');
INSERT INTO `tb_log` VALUES ('846', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":96,\"title\":\"通告查询所有\",\"icon\":\"&#xe258\",\"href\":\"address/showNotice.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:39:48');
INSERT INTO `tb_log` VALUES ('847', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"超级管理员\",\"roleRemark\":\"超级管理员\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,91,92,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,85,86,93,94,95,96,97,98,99\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:39:59');
INSERT INTO `tb_log` VALUES ('848', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":64,\"roleName\":\"财务人员\",\"roleRemark\":\"管理薪酬页面\"};\"57,58,59,60,61,62,63,64,65,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,94,96,99\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:47:26');
INSERT INTO `tb_log` VALUES ('849', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":98,\"title\":\"通告查询所有\",\"icon\":\"\",\"href\":\"address/noticegl.action\",\"perms\":\"\",\"spread\":null,\"parentId\":96,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:47:42');
INSERT INTO `tb_log` VALUES ('850', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":99,\"title\":\"通告查询1\",\"icon\":\"\",\"href\":\"address/showNotice.action\",\"perms\":\"\",\"spread\":null,\"parentId\":96,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:47:55');
INSERT INTO `tb_log` VALUES ('851', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":98,\"title\":\"通告查询所有\",\"icon\":\"\",\"href\":\"address/noticegl.action\",\"perms\":\"\",\"spread\":null,\"parentId\":96,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:48:06');
INSERT INTO `tb_log` VALUES ('852', 'admin', '维护菜单信息', '/oa/sys/menuForm', '{\"menuId\":99,\"title\":\"通告查询\",\"icon\":\"\",\"href\":\"address/showNotice.action\",\"perms\":\"\",\"spread\":null,\"parentId\":96,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:48:13');
INSERT INTO `tb_log` VALUES ('853', 'admin', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":62,\"roleName\":\"ceo\",\"roleRemark\":\"管理大部分权限\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,91,92,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,85,86,93,94,95,96,97,98,99\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:49:02');
INSERT INTO `tb_log` VALUES ('854', 'chl', '更新角色信息', '/oa/sys/updRole', '{\"roleId\":63,\"roleName\":\"普通员工\",\"roleRemark\":\"员工一些日常操作\"};\"1,68,74,75,76,77,78,87,88,89,83,84,93,96,99\";', '0:0:0:0:0:0:0:1', '2018-11-13 22:52:33');

-- ----------------------------
-- Table structure for `tb_mail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_mail`;
CREATE TABLE `tb_mail` (
  `emailId` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id2` int(11) DEFAULT NULL,
  `copy_to_id` varchar(500) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `sendtime` varchar(200) DEFAULT NULL,
  `attachment_id` varchar(200) DEFAULT NULL,
  `attachment_name` varchar(200) DEFAULT NULL,
  `send_flag` int(11) DEFAULT NULL,
  `sms_remind` int(11) DEFAULT NULL,
  `important` int(11) DEFAULT NULL,
  `secret_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`emailId`),
  KEY `FK_TB_MAIL_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_TB_MAIL_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_mail
-- ----------------------------
INSERT INTO `tb_mail` VALUES ('4', '1', '1', '1', null, '当你老了rrr', '我们一起去旅行', '2018-11-02 09:32:46', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('5', '18', '18', '2', null, '当你老了', '我们一起去旅行', '2018-11-02 09:34:06', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('7', '19', '19', '1', null, '当你老了', '香山红叶', '2018-11-02 14:01:50', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('11', '1', '1', '18', null, '水hh', '                     生命', '2018-11-08 09:03:02', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('13', '1', '1', '18', null, '人生', '棋盘', '2018-11-08 09:03:33', null, null, '3', null, null, null);
INSERT INTO `tb_mail` VALUES ('14', '1', '1', '19', null, '人生', '棋盘', '2018-11-08 09:03:33', null, null, '2', null, null, null);
INSERT INTO `tb_mail` VALUES ('17', '1', '1', '1', null, '人生', '人生', '2018-11-08 09:03:33', null, null, '2', null, null, null);
INSERT INTO `tb_mail` VALUES ('18', '1', '1', '1', null, '水', '水', '2018-11-08 09:03:33', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('19', '1', '1', '1', null, '水', '水', '2018-11-08 09:03:33', null, null, '2', null, null, null);
INSERT INTO `tb_mail` VALUES ('21', '20', '1', '18', null, 'fgfgf', '                     gfgdfgdsgdgd', '2018-10-27 19:44:31', null, null, '2', null, null, null);
INSERT INTO `tb_mail` VALUES ('22', '22', '1', '19', null, 'fgfgf', '                     gfgdfgdsgdgd', '2018-10-27 19:44:31', null, null, '2', null, null, null);
INSERT INTO `tb_mail` VALUES ('23', '23', '1', '20', null, 'fgfgf', '                     gfgdfgdsgdgd', '2018-10-27 19:44:31', null, null, '1', null, null, null);
INSERT INTO `tb_mail` VALUES ('24', '20', '1', '19', null, '文艺', '                     文采', '2018-10-28 08:34:36', null, null, '2', null, null, null);
INSERT INTO `tb_mail` VALUES ('25', '18', '1', '19', null, 'jashkbsdc', '                     ghfgh', '2018-10-28 09:38:09', null, null, '2', null, null, null);
INSERT INTO `tb_mail` VALUES ('26', '24', '1', '19', null, '我叫刘培然平', '哈哈哈哈哈哈哈哈哈哈', '2018-11-13 15:32:29', null, null, '2', null, null, null);
INSERT INTO `tb_mail` VALUES ('27', '25', '1', '1', null, '开会啦', '                     ！！！！！！！！！！！对对对', '2018-11-13 17:54:50', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('28', '18', '1', '18', null, '开会啦', '                     ！！！！！！！！！！！对对对', '2018-11-13 17:54:50', null, null, '1', null, null, null);
INSERT INTO `tb_mail` VALUES ('29', '22', '1', '19', null, '开会啦', '                     ！！！！！！！！！！！对对对', '2018-11-13 17:54:50', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('30', '23', '1', '20', null, '开会啦', '                     ！！！！！！！！！！！对对对', '2018-11-13 17:54:51', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('31', '23', '1', '21', null, '开会啦', '                     ！！！！！！！！！！！对对对', '2018-11-13 17:54:51', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('33', '24', '1', '23', null, '开会啦', '                     ！！！！！！！！！！！对对对', '2018-11-13 17:54:51', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('34', '22', '1', '24', null, '开会啦', '                     ！！！！！！！！！！！对对对', '2018-11-13 17:54:51', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('37', null, '1', '19', null, '开会啦', '                     ！！！！！！！！！！！对对对', '2018-11-13 17:54:51', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('38', null, '1', '20', null, '开会啦', '                     ！！！！！！！！！！！对对对', '2018-11-13 17:54:51', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('39', null, '1', '18', null, 'dsdsd', '                     dsdsd', '2018-11-13 19:44:35', null, null, '1', null, null, null);
INSERT INTO `tb_mail` VALUES ('40', null, '1', '19', null, 'aaaaa', '                     aaaaaa', '2018-11-13 19:44:52', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('41', null, '1', '19', null, 'qqqqqqqqqqq', '                     qqqqqqqqqqqqqqqqqq', '2018-11-13 19:45:22', null, null, '1', null, null, null);
INSERT INTO `tb_mail` VALUES ('42', null, '1', '20', null, 'qqqqqqqqqqq', '                     qqqqqqqqqqqqqqqqqq', '2018-11-13 19:45:22', null, null, '1', null, null, null);
INSERT INTO `tb_mail` VALUES ('43', null, '1', '21', null, 'qqqqqqqqqqq', '                     qqqqqqqqqqqqqqqqqq', '2018-11-13 19:45:22', null, null, '1', null, null, null);
INSERT INTO `tb_mail` VALUES ('44', null, '1', '19', null, 'vvvvvvvvvvvvvvvvvvvvv', '                     vvvvvvvvvvvvvvvvvvvvvvvvvvv', '2018-11-13 19:45:40', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('45', null, '1', '20', null, 'vvvvvvvvvvvvvvvvvvvvv', '                     vvvvvvvvvvvvvvvvvvvvvvvvvvv', '2018-11-13 19:45:40', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('46', null, '1', '21', null, 'vvvvvvvvvvvvvvvvvvvvv', '                     vvvvvvvvvvvvvvvvvvvvvvvvvvv', '2018-11-13 19:45:40', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('47', null, '1', '19', null, 'qqq', 'qqq1111111111111', '2018-11-13 21:19:52', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('48', null, '1', '21', null, 'x', '                     x', '2018-11-13 22:18:57', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('49', null, '1', '21', null, 'xx', '                     xx', '2018-11-13 22:19:23', null, null, '0', null, null, null);
INSERT INTO `tb_mail` VALUES ('50', null, '1', '22', null, 'xx', '                     xx', '2018-11-13 22:19:23', null, null, '0', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menus
-- ----------------------------
INSERT INTO `tb_menus` VALUES ('1', '后台首页', '', 'page/main.html', '', 'false', '0', '9999');
INSERT INTO `tb_menus` VALUES ('2', '管理员管理', '&#xe66f', '', '', 'false', '0', '995');
INSERT INTO `tb_menus` VALUES ('3', '角色管理', '&#xe613;', 'sys/roleList', null, 'false', '2', null);
INSERT INTO `tb_menus` VALUES ('4', '管理员列表', '&#xe613;', 'sys/adminList', null, 'false', '2', null);
INSERT INTO `tb_menus` VALUES ('9', '用户管理', '&#xe676', '', '', 'false', '0', '995');
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
INSERT INTO `tb_menus` VALUES ('43', 'SQL监控', '', '', '', 'false', '0', '995');
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
INSERT INTO `tb_menus` VALUES ('57', '薪酬管理', '&#xe628', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('58', '薪酬项目及保险', '&#xe6af', 'salitem/findxc.action', '', 'false', '57', '1000');
INSERT INTO `tb_menus` VALUES ('59', '薪酬基数设置', '&#xe65e', 'personxc/find.action', '', 'false', '57', '999');
INSERT INTO `tb_menus` VALUES ('60', '工资流程管理', '&#xe705', 'salaryflow/find.action', '', 'false', '57', '998');
INSERT INTO `tb_menus` VALUES ('61', '部门工资上报', '&#xe67c', 'saldata/find.action', '', 'false', '57', '997');
INSERT INTO `tb_menus` VALUES ('62', '组织机构信息', '&#xe656', '', '', 'false', '0', '996');
INSERT INTO `tb_menus` VALUES ('63', '单位信息查询', '', 'dwinformation/find.action', '', 'false', '62', '1000');
INSERT INTO `tb_menus` VALUES ('64', '部门信息查询', '', 'dept/find.action', '', 'false', '62', '999');
INSERT INTO `tb_menus` VALUES ('65', '用户信息查询', '&#xe642', '', '', 'false', '62', '997');
INSERT INTO `tb_menus` VALUES ('66', '人才管理', '', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('67', '招聘计划', '&#xe63c', 'plan/findplan.action', '', 'false', '66', '1000');
INSERT INTO `tb_menus` VALUES ('68', '个人事务', '', '', '', 'false', '0', '998');
INSERT INTO `tb_menus` VALUES ('69', '考勤设置', '&#xe637', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('70', '排版管理', '&#xe638', 'duty/PaiBan.action', '', 'false', '69', '1000');
INSERT INTO `tb_menus` VALUES ('71', '班次管理', '&#xe637', 'schedule/Ban.action', '', 'false', '69', '997');
INSERT INTO `tb_menus` VALUES ('72', '审批规则设置', '&#xe631', 'exam/Exam.action', '', 'false', '69', '999');
INSERT INTO `tb_menus` VALUES ('73', '免签节假日', '&#xe756', 'Festival/festival.action', '', 'false', '69', '998');
INSERT INTO `tb_menus` VALUES ('74', '个人考勤', '&#xe62a', 'GeRen/KaoQin.action', '', 'false', '68', '996');
INSERT INTO `tb_menus` VALUES ('75', '外出登记', '&#xe655', 'schedule/test.action', '', 'false', '68', '999');
INSERT INTO `tb_menus` VALUES ('76', '请假登记', '&#xe655', 'GeRen/QingJia.action', '', 'false', '68', '998');
INSERT INTO `tb_menus` VALUES ('77', '加班登记', '&#xe655', 'GeRen/JiaBan.action', '', 'false', '68', '997');
INSERT INTO `tb_menus` VALUES ('78', '出差登记', '&#xe655', 'GeRen/ChuChai.action', '', 'false', '68', '997');
INSERT INTO `tb_menus` VALUES ('79', '招聘计划筛选', '&#xe639', 'plan/findplan0.action', '', 'false', '66', '998');
INSERT INTO `tb_menus` VALUES ('80', '人才库', '&#xe670', 'talent/findtalent.action', '', 'false', '66', '997');
INSERT INTO `tb_menus` VALUES ('81', '招聘人员筛选', '', 'screen/findscreen.action', '', 'false', '66', '996');
INSERT INTO `tb_menus` VALUES ('82', '招聘录用', '&#xe654', 'hire/findhire.action', '', 'false', '66', '995');
INSERT INTO `tb_menus` VALUES ('83', '公共事务', '&#xe62a', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('84', '申领物品', '&#xe617', 'apply/find.action', '', 'false', '83', '1000');
INSERT INTO `tb_menus` VALUES ('85', '物品审批', '&#xe642', 'apply/find2.action', '', 'false', '83', '999');
INSERT INTO `tb_menus` VALUES ('86', '物品信息管理', '&#xe606', 'tree/findshop.action', '', 'false', '83', '998');
INSERT INTO `tb_menus` VALUES ('87', '电子邮件', '&#xe63a', 'dept/mailfind.action', '', 'false', '68', '1000');
INSERT INTO `tb_menus` VALUES ('88', '通讯簿', '&#xe770', 'address/find.action', '', 'false', '68', '1000');
INSERT INTO `tb_menus` VALUES ('89', '考勤记录', '&#xe62d', 'GeRen/KaoQinJiLu.action', '', 'false', '68', '995');
INSERT INTO `tb_menus` VALUES ('90', '考勤统计', '&#xe638', 'GeRen/KaoQinTongji.action', '', 'false', '69', '900');
INSERT INTO `tb_menus` VALUES ('91', '人事调动', '&#xe613', 'transfer/findtransfer.action', '', 'false', '66', '991');
INSERT INTO `tb_menus` VALUES ('92', '人事档案', '&#xe770', 'recoed/findrecord.action', '', 'false', '66', '992');
INSERT INTO `tb_menus` VALUES ('93', '物品归还', '&#xe60a', 'apply/find4.action', '', 'false', '83', '900');
INSERT INTO `tb_menus` VALUES ('94', '归还审批', '&#xe642', 'apply/find5.action', '', 'false', '83', '899');
INSERT INTO `tb_menus` VALUES ('95', '物品报表', '&#xe62d', 'apply/find3.action', '', 'false', '83', '800');
INSERT INTO `tb_menus` VALUES ('96', '通告管理', '&#xe642', '', '', 'false', '0', '999');
INSERT INTO `tb_menus` VALUES ('97', '新建通告', '&#xe642', 'address/sendNotce.action', '', 'false', '96', '999');
INSERT INTO `tb_menus` VALUES ('98', '通告查询所有', '', 'address/noticegl.action', '', 'false', '96', '998');
INSERT INTO `tb_menus` VALUES ('99', '通告查询', '', 'address/showNotice.action', '', 'false', '96', '997');

-- ----------------------------
-- Table structure for `tb_notifytype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_notifytype`;
CREATE TABLE `tb_notifytype` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_notifytype
-- ----------------------------
INSERT INTO `tb_notifytype` VALUES ('1', '通告');
INSERT INTO `tb_notifytype` VALUES ('2', '通报');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_personxc
-- ----------------------------
INSERT INTO `tb_personxc` VALUES ('1', '1', '54254', '2000', '2000', '1000', '500', '600', '200', '32', null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', '好', null, null);
INSERT INTO `tb_personxc` VALUES ('4', '18', '10000', '200', '200', '200', '200', '200', '10000', '200', null, null, '800', '216', '160', '56', '112', '80', '32', '120', '120', '200', '160', '40', '40', '40', '64', '64', '0', null, null, null);
INSERT INTO `tb_personxc` VALUES ('5', '19', '10000', '200', '200', '200', '200', '200', '10000', '200', null, null, '800', '216', '160', '56', '112', '80', '32', '120', '120', '200', '160', '40', '40', '40', '64', '64', '0', null, null, null);
INSERT INTO `tb_personxc` VALUES ('6', '20', '10000', '200', '200', '200', '200', '200', '10000', '200', null, null, '800', '216', '160', '56', '112', '80', '32', '120', '120', '200', '160', '40', '40', '40', '64', '64', '0', null, null, null);
INSERT INTO `tb_personxc` VALUES ('7', '21', '65254', '6000', '3000', '2000', '1000', '200', '100', '21', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好', null, null);
INSERT INTO `tb_personxc` VALUES ('8', '22', '32024', '6000', '3000', '2000', '1000', '200', '100', '12', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差', null, null);
INSERT INTO `tb_personxc` VALUES ('9', '25', '200', '50', '20', '20', '1', '2', '3', '5', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null, null, null);

-- ----------------------------
-- Table structure for `tb_roles`
-- ----------------------------
DROP TABLE IF EXISTS `tb_roles`;
CREATE TABLE `tb_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `role_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_roles
-- ----------------------------
INSERT INTO `tb_roles` VALUES ('1', '超级管理员', '超级管理员');
INSERT INTO `tb_roles` VALUES ('61', 'test', 'test');
INSERT INTO `tb_roles` VALUES ('62', 'ceo', '管理大部分权限');
INSERT INTO `tb_roles` VALUES ('63', '普通员工', '员工一些日常操作');
INSERT INTO `tb_roles` VALUES ('64', '财务人员', '管理薪酬页面');

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
INSERT INTO `tb_roles_menus` VALUES ('68', '61');
INSERT INTO `tb_roles_menus` VALUES ('74', '61');
INSERT INTO `tb_roles_menus` VALUES ('75', '61');
INSERT INTO `tb_roles_menus` VALUES ('76', '61');
INSERT INTO `tb_roles_menus` VALUES ('77', '61');
INSERT INTO `tb_roles_menus` VALUES ('78', '61');
INSERT INTO `tb_roles_menus` VALUES ('87', '61');
INSERT INTO `tb_roles_menus` VALUES ('88', '61');
INSERT INTO `tb_roles_menus` VALUES ('89', '61');
INSERT INTO `tb_roles_menus` VALUES ('83', '61');
INSERT INTO `tb_roles_menus` VALUES ('84', '61');
INSERT INTO `tb_roles_menus` VALUES ('85', '61');
INSERT INTO `tb_roles_menus` VALUES ('86', '61');
INSERT INTO `tb_roles_menus` VALUES ('93', '61');
INSERT INTO `tb_roles_menus` VALUES ('94', '61');
INSERT INTO `tb_roles_menus` VALUES ('95', '61');
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
INSERT INTO `tb_roles_menus` VALUES ('57', '1');
INSERT INTO `tb_roles_menus` VALUES ('58', '1');
INSERT INTO `tb_roles_menus` VALUES ('59', '1');
INSERT INTO `tb_roles_menus` VALUES ('60', '1');
INSERT INTO `tb_roles_menus` VALUES ('61', '1');
INSERT INTO `tb_roles_menus` VALUES ('62', '1');
INSERT INTO `tb_roles_menus` VALUES ('63', '1');
INSERT INTO `tb_roles_menus` VALUES ('64', '1');
INSERT INTO `tb_roles_menus` VALUES ('65', '1');
INSERT INTO `tb_roles_menus` VALUES ('66', '1');
INSERT INTO `tb_roles_menus` VALUES ('67', '1');
INSERT INTO `tb_roles_menus` VALUES ('79', '1');
INSERT INTO `tb_roles_menus` VALUES ('80', '1');
INSERT INTO `tb_roles_menus` VALUES ('81', '1');
INSERT INTO `tb_roles_menus` VALUES ('82', '1');
INSERT INTO `tb_roles_menus` VALUES ('91', '1');
INSERT INTO `tb_roles_menus` VALUES ('92', '1');
INSERT INTO `tb_roles_menus` VALUES ('68', '1');
INSERT INTO `tb_roles_menus` VALUES ('74', '1');
INSERT INTO `tb_roles_menus` VALUES ('75', '1');
INSERT INTO `tb_roles_menus` VALUES ('76', '1');
INSERT INTO `tb_roles_menus` VALUES ('77', '1');
INSERT INTO `tb_roles_menus` VALUES ('78', '1');
INSERT INTO `tb_roles_menus` VALUES ('87', '1');
INSERT INTO `tb_roles_menus` VALUES ('88', '1');
INSERT INTO `tb_roles_menus` VALUES ('89', '1');
INSERT INTO `tb_roles_menus` VALUES ('69', '1');
INSERT INTO `tb_roles_menus` VALUES ('70', '1');
INSERT INTO `tb_roles_menus` VALUES ('71', '1');
INSERT INTO `tb_roles_menus` VALUES ('72', '1');
INSERT INTO `tb_roles_menus` VALUES ('73', '1');
INSERT INTO `tb_roles_menus` VALUES ('90', '1');
INSERT INTO `tb_roles_menus` VALUES ('83', '1');
INSERT INTO `tb_roles_menus` VALUES ('84', '1');
INSERT INTO `tb_roles_menus` VALUES ('85', '1');
INSERT INTO `tb_roles_menus` VALUES ('86', '1');
INSERT INTO `tb_roles_menus` VALUES ('93', '1');
INSERT INTO `tb_roles_menus` VALUES ('94', '1');
INSERT INTO `tb_roles_menus` VALUES ('95', '1');
INSERT INTO `tb_roles_menus` VALUES ('96', '1');
INSERT INTO `tb_roles_menus` VALUES ('97', '1');
INSERT INTO `tb_roles_menus` VALUES ('98', '1');
INSERT INTO `tb_roles_menus` VALUES ('99', '1');
INSERT INTO `tb_roles_menus` VALUES ('57', '64');
INSERT INTO `tb_roles_menus` VALUES ('58', '64');
INSERT INTO `tb_roles_menus` VALUES ('59', '64');
INSERT INTO `tb_roles_menus` VALUES ('60', '64');
INSERT INTO `tb_roles_menus` VALUES ('61', '64');
INSERT INTO `tb_roles_menus` VALUES ('62', '64');
INSERT INTO `tb_roles_menus` VALUES ('63', '64');
INSERT INTO `tb_roles_menus` VALUES ('64', '64');
INSERT INTO `tb_roles_menus` VALUES ('65', '64');
INSERT INTO `tb_roles_menus` VALUES ('68', '64');
INSERT INTO `tb_roles_menus` VALUES ('74', '64');
INSERT INTO `tb_roles_menus` VALUES ('75', '64');
INSERT INTO `tb_roles_menus` VALUES ('76', '64');
INSERT INTO `tb_roles_menus` VALUES ('77', '64');
INSERT INTO `tb_roles_menus` VALUES ('78', '64');
INSERT INTO `tb_roles_menus` VALUES ('87', '64');
INSERT INTO `tb_roles_menus` VALUES ('88', '64');
INSERT INTO `tb_roles_menus` VALUES ('89', '64');
INSERT INTO `tb_roles_menus` VALUES ('69', '64');
INSERT INTO `tb_roles_menus` VALUES ('70', '64');
INSERT INTO `tb_roles_menus` VALUES ('71', '64');
INSERT INTO `tb_roles_menus` VALUES ('72', '64');
INSERT INTO `tb_roles_menus` VALUES ('73', '64');
INSERT INTO `tb_roles_menus` VALUES ('90', '64');
INSERT INTO `tb_roles_menus` VALUES ('83', '64');
INSERT INTO `tb_roles_menus` VALUES ('84', '64');
INSERT INTO `tb_roles_menus` VALUES ('94', '64');
INSERT INTO `tb_roles_menus` VALUES ('96', '64');
INSERT INTO `tb_roles_menus` VALUES ('99', '64');
INSERT INTO `tb_roles_menus` VALUES ('1', '62');
INSERT INTO `tb_roles_menus` VALUES ('2', '62');
INSERT INTO `tb_roles_menus` VALUES ('3', '62');
INSERT INTO `tb_roles_menus` VALUES ('16', '62');
INSERT INTO `tb_roles_menus` VALUES ('17', '62');
INSERT INTO `tb_roles_menus` VALUES ('18', '62');
INSERT INTO `tb_roles_menus` VALUES ('19', '62');
INSERT INTO `tb_roles_menus` VALUES ('4', '62');
INSERT INTO `tb_roles_menus` VALUES ('20', '62');
INSERT INTO `tb_roles_menus` VALUES ('21', '62');
INSERT INTO `tb_roles_menus` VALUES ('22', '62');
INSERT INTO `tb_roles_menus` VALUES ('23', '62');
INSERT INTO `tb_roles_menus` VALUES ('46', '62');
INSERT INTO `tb_roles_menus` VALUES ('47', '62');
INSERT INTO `tb_roles_menus` VALUES ('48', '62');
INSERT INTO `tb_roles_menus` VALUES ('49', '62');
INSERT INTO `tb_roles_menus` VALUES ('50', '62');
INSERT INTO `tb_roles_menus` VALUES ('57', '62');
INSERT INTO `tb_roles_menus` VALUES ('58', '62');
INSERT INTO `tb_roles_menus` VALUES ('59', '62');
INSERT INTO `tb_roles_menus` VALUES ('60', '62');
INSERT INTO `tb_roles_menus` VALUES ('61', '62');
INSERT INTO `tb_roles_menus` VALUES ('62', '62');
INSERT INTO `tb_roles_menus` VALUES ('63', '62');
INSERT INTO `tb_roles_menus` VALUES ('64', '62');
INSERT INTO `tb_roles_menus` VALUES ('65', '62');
INSERT INTO `tb_roles_menus` VALUES ('66', '62');
INSERT INTO `tb_roles_menus` VALUES ('67', '62');
INSERT INTO `tb_roles_menus` VALUES ('79', '62');
INSERT INTO `tb_roles_menus` VALUES ('80', '62');
INSERT INTO `tb_roles_menus` VALUES ('81', '62');
INSERT INTO `tb_roles_menus` VALUES ('82', '62');
INSERT INTO `tb_roles_menus` VALUES ('91', '62');
INSERT INTO `tb_roles_menus` VALUES ('92', '62');
INSERT INTO `tb_roles_menus` VALUES ('68', '62');
INSERT INTO `tb_roles_menus` VALUES ('74', '62');
INSERT INTO `tb_roles_menus` VALUES ('75', '62');
INSERT INTO `tb_roles_menus` VALUES ('76', '62');
INSERT INTO `tb_roles_menus` VALUES ('77', '62');
INSERT INTO `tb_roles_menus` VALUES ('78', '62');
INSERT INTO `tb_roles_menus` VALUES ('87', '62');
INSERT INTO `tb_roles_menus` VALUES ('88', '62');
INSERT INTO `tb_roles_menus` VALUES ('89', '62');
INSERT INTO `tb_roles_menus` VALUES ('69', '62');
INSERT INTO `tb_roles_menus` VALUES ('70', '62');
INSERT INTO `tb_roles_menus` VALUES ('71', '62');
INSERT INTO `tb_roles_menus` VALUES ('72', '62');
INSERT INTO `tb_roles_menus` VALUES ('73', '62');
INSERT INTO `tb_roles_menus` VALUES ('90', '62');
INSERT INTO `tb_roles_menus` VALUES ('83', '62');
INSERT INTO `tb_roles_menus` VALUES ('84', '62');
INSERT INTO `tb_roles_menus` VALUES ('85', '62');
INSERT INTO `tb_roles_menus` VALUES ('86', '62');
INSERT INTO `tb_roles_menus` VALUES ('93', '62');
INSERT INTO `tb_roles_menus` VALUES ('94', '62');
INSERT INTO `tb_roles_menus` VALUES ('95', '62');
INSERT INTO `tb_roles_menus` VALUES ('96', '62');
INSERT INTO `tb_roles_menus` VALUES ('97', '62');
INSERT INTO `tb_roles_menus` VALUES ('98', '62');
INSERT INTO `tb_roles_menus` VALUES ('99', '62');
INSERT INTO `tb_roles_menus` VALUES ('1', '63');
INSERT INTO `tb_roles_menus` VALUES ('68', '63');
INSERT INTO `tb_roles_menus` VALUES ('74', '63');
INSERT INTO `tb_roles_menus` VALUES ('75', '63');
INSERT INTO `tb_roles_menus` VALUES ('76', '63');
INSERT INTO `tb_roles_menus` VALUES ('77', '63');
INSERT INTO `tb_roles_menus` VALUES ('78', '63');
INSERT INTO `tb_roles_menus` VALUES ('87', '63');
INSERT INTO `tb_roles_menus` VALUES ('88', '63');
INSERT INTO `tb_roles_menus` VALUES ('89', '63');
INSERT INTO `tb_roles_menus` VALUES ('83', '63');
INSERT INTO `tb_roles_menus` VALUES ('84', '63');
INSERT INTO `tb_roles_menus` VALUES ('93', '63');
INSERT INTO `tb_roles_menus` VALUES ('96', '63');
INSERT INTO `tb_roles_menus` VALUES ('99', '63');

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
  `salaryflow_year` varchar(50) DEFAULT NULL,
  `salaryflow_month` varchar(50) DEFAULT NULL,
  `salaryflow_mark` varchar(500) DEFAULT NULL,
  `salaryflow_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`salaryflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_salaryflow
-- ----------------------------
INSERT INTO `tb_salaryflow` VALUES ('1', '2018-06-07', '系统管理员', '2018-10-05', '2018-10-19', '2018', '2018-10', '', '0');
INSERT INTO `tb_salaryflow` VALUES ('2', '2018-01-01', '系统管理员', '2018-02-02', '2018-02-02', '2018', '02-02', '这是2018年1月份工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('3', '2018-06-16', '系统管理员', '2018-10-04', '2018-10-31', '2018', '2018-11', 'jjj', '1');
INSERT INTO `tb_salaryflow` VALUES ('4', '2018-06-08', '系统管理员', '2018-11-04', '2018-11-13', '2018', '2018-10', '这是11月\r\n', '1');
INSERT INTO `tb_salaryflow` VALUES ('5', '2018-06-07', '系统管理员', '2018-10-04', '2018-10-25', '2019', '2018-10', '噢噢噢噢', '1');
INSERT INTO `tb_salaryflow` VALUES ('6', '2018-06-10', '系统管理员', '2018-06-16', '2018-06-14', '2018', '06-29', '这是2018年6月份的工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('7', '2018-06-24', '系统管理员', '2018-06-21', '2018-06-21', '2018', '06-16', '这是2018年6月份的工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('15', '2017-05-04', '王哈哈', '2018-11-02', '2018-12-02', '2018', '11', '11yue ', '1');
INSERT INTO `tb_salaryflow` VALUES ('16', '2017-05-04', 'arthur', '2018-11-02', '2018-12-25', '2018', '12', '6666666666666666666666666666666', '1');
INSERT INTO `tb_salaryflow` VALUES ('17', '2017-05-04', 'arthur', '2018-11-06', '2018-11-30', '2018', '11', '11月份工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('18', '2017-05-04', 'arthur', '2018-10-13', '2018-10-14', '2018', '10', '10月份工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('19', '2017-05-04', '郭迪', '2018-11-12', '2018-12-12', '2018', '06', '11月份工资', '1');
INSERT INTO `tb_salaryflow` VALUES ('20', '2017-05-04', 'arthur', '2018-11-13', '2018-12-13', '2018', '06', '12月份工资', '0');

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
  PRIMARY KEY (`sal_data_id`),
  KEY `FK_TB_SAL_D_REFERENCE_TB_PERSO` (`personxc_id`),
  KEY `FK_TB_SAL_D_REFERENCE_TB_SALAR` (`salaryflow_id`),
  KEY `FK_TB_SAL_D_REFERENCE_TB_ADMIN` (`id`),
  CONSTRAINT `FK_TB_SAL_D_REFERENCE_TB_ADMIN` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_TB_SAL_D_REFERENCE_TB_PERSO` FOREIGN KEY (`personxc_id`) REFERENCES `tb_personxc` (`personxc_id`),
  CONSTRAINT `FK_TB_SAL_D_REFERENCE_TB_SALAR` FOREIGN KEY (`salaryflow_id`) REFERENCES `tb_salaryflow` (`salaryflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sal_data
-- ----------------------------
INSERT INTO `tb_sal_data` VALUES ('1', null, '3', '18', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('2', null, '5', '18', null, null, '50000', '2000', '2000', '3000', '1000', '1000', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('3', null, '5', '19', '78115', null, '70000', '1231', '132', '151', '489', '164', '5000', null, null, null, '20000', '5400', '4000', '1400', '2800', '2000', '800', '3000', '3000', '5000', '4000', '1000', '1000', '1000', '1600', '1600', '0', 'das');
INSERT INTO `tb_sal_data` VALUES ('4', null, '5', '20', null, null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好000');
INSERT INTO `tb_sal_data` VALUES ('5', null, '3', '19', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('6', null, '3', '20', null, null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('7', null, '15', '20', '3840', null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', 'tttt');
INSERT INTO `tb_sal_data` VALUES ('8', null, '16', '22', '61480', null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('9', null, '16', '20', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('10', null, '5', '22', '61480', null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('11', null, '17', '19', null, null, '2000', '2000', '2000', '2000', '2000', '2000', '2000', null, null, null, '50000', '13500', '10000', '3500.0000000000005', '7000', '5000', '2000', '7500', '7500', '12500', '10000', '2500', '2500', '2500', '4000', '4000', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('12', null, '17', '20', '3840', null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('13', null, '17', '22', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('14', null, '17', '1', null, null, '50000', '2000', '2000', '1000', '500', '600', '200', null, null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('15', null, '17', '18', null, null, '50000', '2000', '2000', '3000', '1000', '1000', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('16', null, '5', '1', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('17', null, '5', '21', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('18', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('19', null, null, '20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('20', null, '2', '1', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('21', null, '2', '18', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('22', null, '2', '19', null, null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('23', null, '2', '20', null, null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('24', null, '2', '21', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('25', null, '2', '22', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('26', null, '3', '1', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('27', null, '3', '21', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('28', null, '3', '22', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('29', null, null, '18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('30', null, null, '19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('31', null, null, '21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('32', null, null, '22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('33', null, '4', '1', '58354', null, '54254', '2000', '2000', '1000', '500', '600', '200', null, null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', 'hhh');
INSERT INTO `tb_sal_data` VALUES ('34', null, '4', '18', null, null, '35000', '500', '200', '100', '200', '200', '200', '32', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('35', null, '4', '19', null, null, '35000', '500', '200', '100', '200', '200', '200', '23', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('36', null, '4', '20', null, null, '35000', '500', '200', '100', '200', '200', '200', '21', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('37', null, '4', '21', null, null, '65254', '6000', '3000', '2000', '1000', '200', '100', '21', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('38', null, '4', '22', null, null, '32024', '6000', '3000', '2000', '1000', '200', '100', '12', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('39', null, '18', '22', null, null, '32024', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('40', null, '18', '1', null, null, '54254', '2000', '2000', '1000', '500', '600', '200', null, null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('41', null, '18', '18', null, null, '35000', '500', '200', '100', '200', '200', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('42', null, '18', '19', null, null, '35000', '999', '200', '100', '200', '200', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('43', null, '18', '20', null, null, '35000', '500', '200', '100', '200', '200', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('44', null, '18', '21', null, null, '65254', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('45', null, '4', '25', '3769', null, '4000', '50', '20', '20', '1', '2', '3', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('46', null, '19', '1', null, null, '54254', '2000', '2000', '1000', '500', '600', '200', '32', null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('47', null, '19', '18', null, null, '7000', '200', '200', '500', '200', '200', '200', '100', null, null, '560', '151.2', '112', '39.2', '78.4', '56', '22.4', '84', '84', '140', '112', '28', '28', '28', '44', '44', '0', null);
INSERT INTO `tb_sal_data` VALUES ('48', null, '19', '19', null, null, '7000', '200', '200', '500', '200', '200', '200', '100', null, null, '560', '151.2', '112', '39.2', '78.4', '56', '22.4', '84', '84', '140', '112', '28', '28', '28', '44', '44', '0', null);
INSERT INTO `tb_sal_data` VALUES ('49', null, '19', '20', null, null, '7000', '200', '200', '500', '200', '200', '200', '100', null, null, '560', '151.2', '112', '39.2', '78.4', '56', '22.4', '84', '84', '140', '112', '28', '28', '28', '44', '44', '0', null);
INSERT INTO `tb_sal_data` VALUES ('50', null, '19', '21', null, null, '65254', '6000', '3000', '2000', '1000', '200', '100', '21', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('51', null, '19', '22', null, null, '32024', '6000', '3000', '2000', '1000', '200', '100', '12', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('52', null, '19', '25', null, null, '200', '50', '20', '20', '1', '2', '3', '5', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('53', null, '1', '1', null, null, '54254', '2000', '2000', '1000', '500', '600', '200', '32', null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('54', null, '1', '18', null, null, '10000', '231', '200', '200', '200', '200', '10000', '200', null, null, '800', '216', '160', '56', '112', '80', '32', '120', '120', '200', '160', '40', '40', '40', '64', '64', '0', null);
INSERT INTO `tb_sal_data` VALUES ('55', null, '1', '19', null, null, '10000', '200', '200', '200', '200', '200', '10000', '200', null, null, '800', '216', '160', '56', '112', '80', '32', '120', '120', '200', '160', '40', '40', '40', '64', '64', '0', null);
INSERT INTO `tb_sal_data` VALUES ('56', null, '1', '20', null, null, '10000', '200', '200', '200', '200', '200', '10000', '200', null, null, '800', '216', '160', '56', '112', '80', '32', '120', '120', '200', '160', '40', '40', '40', '64', '64', '0', null);
INSERT INTO `tb_sal_data` VALUES ('57', null, '1', '21', null, null, '65254', '6000', '3000', '2000', '1000', '200', '100', '21', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '好');
INSERT INTO `tb_sal_data` VALUES ('58', null, '1', '22', null, null, '32024', '6000', '3000', '2000', '1000', '200', '100', '12', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '差');
INSERT INTO `tb_sal_data` VALUES ('59', null, '1', '25', null, null, '200', '50', '20', '20', '1', '2', '3', '5', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sal_item
-- ----------------------------
INSERT INTO `tb_sal_item` VALUES ('1', '1', '基本工资');
INSERT INTO `tb_sal_item` VALUES ('2', '1', '奖金');
INSERT INTO `tb_sal_item` VALUES ('3', '1', '津贴');
INSERT INTO `tb_sal_item` VALUES ('4', '1', '劳务费');
INSERT INTO `tb_sal_item` VALUES ('5', '2', '房贴');
INSERT INTO `tb_sal_item` VALUES ('6', '1', '高温费');
INSERT INTO `tb_sal_item` VALUES ('21', '3', '迟到扣款');
INSERT INTO `tb_sal_item` VALUES ('27', '1', '测试');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_txgroup
-- ----------------------------
INSERT INTO `tb_txgroup` VALUES ('1', '1', '朋友');
INSERT INTO `tb_txgroup` VALUES ('2', '1', '家人');
INSERT INTO `tb_txgroup` VALUES ('3', '1', '同事');
INSERT INTO `tb_txgroup` VALUES ('4', '1', '员工');
INSERT INTO `tb_txgroup` VALUES ('5', '1', '尔尔');
INSERT INTO `tb_txgroup` VALUES ('6', '1', 'qqq');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('27', 'isduxd@qq.com', 'test', '96e79218965eb72c92a549dd5a330112', '0', '2018-03-25', '北京通州科创十四街区', '17693109923', 'b3f28566dac54f86bd4f4c2ce36e23d8019', '2', '2018-03-25 14:48:48');
INSERT INTO `tb_users` VALUES ('28', '123@qq.com', '2113', '96e79218965eb72c92a549dd5a330112', '1', '2018-07-26', '123123', '17693109997', 'c6411671821c43ca926c032e51ded16a897', '1', '2018-07-27 09:59:16');
INSERT INTO `tb_users` VALUES ('29', 'sdf@163.com', '123123', '96e79218965eb72c92a549dd5a330112', '2', '2018-07-27', '123123', '17111111111', '92197e8f8a5647ae8be96fe2db555575147', '1', '2018-07-27 14:23:55');
INSERT INTO `tb_users` VALUES ('30', '123432423@qq.cpm', '郭迪', '4297f44b13955235245b2497399d7a93', '1', '1996-04-09', '新乡', '13525856552', '00eb043b2c9d4fefad3d68587fde1245716', '1', '2018-11-10 14:57:04');

-- ----------------------------
-- Table structure for `tongji`
-- ----------------------------
DROP TABLE IF EXISTS `tongji`;
CREATE TABLE `tongji` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `yingchu` varchar(11) DEFAULT NULL,
  `shichu` varchar(11) DEFAULT NULL,
  `xiutian` varchar(11) DEFAULT NULL,
  `quetian` varchar(11) DEFAULT NULL,
  `chici` varchar(11) DEFAULT NULL,
  `zaoci` varchar(11) DEFAULT NULL,
  `qingci` varchar(11) DEFAULT NULL,
  `jiaci` varchar(11) DEFAULT NULL,
  `chuci` varchar(11) DEFAULT NULL,
  `waici` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tongji
-- ----------------------------
INSERT INTO `tongji` VALUES ('7', '1', 'admin', '26', '24', '8', '2', '30', '16', '4', '3', '3', '8');
INSERT INTO `tongji` VALUES ('8', '18', 'test', '26', '24', '8', '2', '30', '16', '2', '3', '4', '3');
INSERT INTO `tongji` VALUES ('9', '23', 'xiaoli', '5', '2', '2', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `tongji` VALUES ('10', '22', null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tongji` VALUES ('11', '19', null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

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
