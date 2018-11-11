/*
Navicat MySQL Data Transfer

Source Server         : gd
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : wyait

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2018-11-10 00:00:43
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_book
-- ----------------------------
INSERT INTO `address_book` VALUES ('1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `address_book` VALUES ('2', '1', '1', '����', null, '����', '2012-11-06', '���۾���11', 'dsds', '�Ϻ�', '234234', '4232432', '32423423', 'sdfsfsdf', '23423423', '324234234', '23423423', '32423423432', '234234324', null);
INSERT INTO `address_book` VALUES ('3', '1111', '1', '����', null, '����', '2018-11-05', '���۾���', '�Ϻ����޹�˾', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('4', '1', '1', '��ҳ��', '��', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('5', '1', '1', '��ҳ��', '��', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('6', '1', '1', '��ҳ��', '��', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('7', '1', '1', '��ҳ��', '��', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('8', '1', '1', '³��', null, '', '', '����ط�', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `address_book` VALUES ('9', '1', '1', 'USD�ü���', '��', '��', '', '�����ı���', '', '', '', '', '', '', '', '', '', '', '', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('1', '1', '1', '1', '1', '20', '1', 'һ��ֽ', '�ݸ�ֽ', '����', '2018-10-24', '1', '3', '1', '����', '����', '��ֽ', '1', '1', '1', '��ɽ', '1', '1', '����', '1', '2018-10-16', '1', null, null);
INSERT INTO `apply` VALUES ('2', '1', '1', '1', '1', '15', '2', '����ֽ', '�ݸ�ֽ', '����', '2018-10-31', '1', '3', '1', '��Ҫ', '����', '��ֽ', '1', '1', '1', '����', '1', '1', '����', '1', '2018-10-25', '1', null, null);
INSERT INTO `apply` VALUES ('3', '1', '3', '1', null, '2', '1', '������ھ��', null, '����', '2018-11-01', '1', '1', null, '������', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('4', '1', '1', '1', null, '1', '1', '����һ��ֽ', null, '����', '2018-11-01', '1', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('5', '1', '2', '1', null, '2', '1', '����һ��', null, '����', '2018-11-06', '1', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('6', '1', '4', '1', null, '1', '1', '����', null, '����', '2018-11-07', '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `apply` VALUES ('7', '1', '4', '1', null, '1', '1', '13513', null, '����', '2018-10-11', '1', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
INSERT INTO `court` VALUES ('1', '1', '1', 'һ�Ų�');
INSERT INTO `court` VALUES ('2', '1', '2', '���Ų�');

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
INSERT INTO `dutyroster` VALUES ('4', '9', '�ܾ���,�ۺϹ�����,������Դ��,����,������,�г�Ӫ����,�г���,Ʒ�Ʋ�,����Ӫ������,��������,', 'admin,test,lpr,mm,zx,gd,xiaoli,chl,wangmengwei,', '1,2,3,4,5,6,7,8,9,10,', '1,18,19,20,21,22,23,24,25,', '11', '2018-11-01', '2018-11-30', '1', null, null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examination
-- ----------------------------
INSERT INTO `examination` VALUES ('1', '1,', '1,', '�ܾ���,', 'admin,');
INSERT INTO `examination` VALUES ('2', '2,3,4,5,6,7,8,9,10,', '23,24,', '�ۺϹ�����,������Դ��,����,������,�г�Ӫ����,�г���,Ʒ�Ʋ�,����Ӫ������,��������,', 'xiaoli,chl,');

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
INSERT INTO `goodtype` VALUES ('1', '1', '����', '1');
INSERT INTO `goodtype` VALUES ('2', '1', '�칫����', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_hire
-- ----------------------------
INSERT INTO `hr_hire` VALUES ('1', '41', '1', null, null, '2018-11-05', '����', null, '����', null, '2018-11-05', '������', null, null, '42');
INSERT INTO `hr_hire` VALUES ('2', '4', '1', null, null, '2018-10-12', 'ceo', null, '����', '2018-10-12', '2018-10-15', '������', null, null, '8');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_plan
-- ----------------------------
INSERT INTO `hr_plan` VALUES ('4', '1', '1', '����ƻ�', '��ͷ', '10000.100', '2017-07-08', '2018-01-02', '2', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������1', '��Ƹ����', '��Ƹ��λ', '2018-10-18');
INSERT INTO `hr_plan` VALUES ('23', '1', '1', '��������', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', null, '1', '2018-01-03', '������2', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('24', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����6', '1', '2018-01-03', '������3', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('25', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����7', '1', '2018-01-03', '������4', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('26', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('27', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('28', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('29', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('30', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('31', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('32', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('33', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '2', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('34', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('35', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '1', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('36', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '0', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('37', '1', '1', '�ƻ�', '��ͷ', '10000.1', '2017-07-08', '2018-01-02', '5', '��Ƹ˵��', '��Ƹ��ע', '����', '0', '2018-01-03', '������', '��Ƹ����', '��Ƹ��λ', '2018-10-10');
INSERT INTO `hr_plan` VALUES ('41', '1', '0005', 'lpr1', '��ͷ��˾', '500', '2018-11-05', '2018-11-14', '500', 'd', 'd', null, '1', '2018-11-29', 'arthur', '���۲�', '���', '2018-11-13');

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
  `hr_talents_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hr_screen_id`),
  KEY `FK_HR_SCREE_REFERENCE_HR_PLAN` (`hr_plan_id`),
  KEY `id` (`id`),
  KEY `hr_talents_id` (`hr_talents_id`),
  CONSTRAINT `hr_screen_ibfk_2` FOREIGN KEY (`hr_talents_id`) REFERENCES `hr_talents` (`hr_talents_id`),
  CONSTRAINT `FK_HR_SCREE_REFERENCE_HR_PLAN` FOREIGN KEY (`hr_plan_id`) REFERENCES `hr_plan` (`hr_plan_id`),
  CONSTRAINT `hr_screen_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_screen
-- ----------------------------
INSERT INTO `hr_screen` VALUES ('1', '41', '1', null, '����', '����', 'ͨ��', '2018-11-06', null, 'arthur', '2018-11-05', '42');
INSERT INTO `hr_screen` VALUES ('2', '4', '22', null, null, null, null, null, null, 'arthur', '2018-10-12', '5');
INSERT INTO `hr_screen` VALUES ('3', '4', '1', null, '����', '�����Ǳ�', 'ͨ��', '2018-10-12', null, 'arthur', '2018-10-12', '8');

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_talents
-- ----------------------------
INSERT INTO `hr_talents` VALUES ('1', '4', '����', '1997-03-30', '��', '21', '����ʡ', '����֣�ݽ�ˮ��', '��', '������ѩ�׵ļ���', '͵˯������', '15239474900', '123456789@qq.com', '2018-10-16', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '8000', '1', '��ƭ', '��ע', '����', '1', 'С', '����');
INSERT INTO `hr_talents` VALUES ('2', '4', '����', '1997-03-30', '��', '22', '����ʡ', '����֣�ݽ�ˮ��', '��', '������ѩ�׵ļ���', '͵˯������', '15239474900', '123456789@qq.com', '2018-10-16', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '8000', '1', '��ƭ', '��ע', '����', '1', 'С', '����');
INSERT INTO `hr_talents` VALUES ('3', '24', '����', '1997-03-30', '��', '23', '����ʡ', '����֣�ݽ�ˮ��', '��', '������ѩ�׵ļ���', '͵˯������', '15239474900', '123456789@qq.com', '2018-10-16', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '8000', '1', '��ƭ', '��ע', '����', '1', 'С', '����');
INSERT INTO `hr_talents` VALUES ('4', '4', '����', '1997-03-30', '��', '24', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', null, '��', '����');
INSERT INTO `hr_talents` VALUES ('5', '4', '����', '1997-03-30', '��', '25', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '1', '��', '����');
INSERT INTO `hr_talents` VALUES ('6', '4', '����', '1997-03-30', '��', '26', '����ʡ', '����֣�ݽ�ˮ��', '��', '������ѩ�׵ļ���', '͵˯������', '15239474900', '123456789@qq.com', '2018-10-16', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '8000', '1', '��ƭ', '��ע', '����', '1', 'С', '����');
INSERT INTO `hr_talents` VALUES ('8', '4', '����', '1997-03-30', '��', '27', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '4', '��', '����');
INSERT INTO `hr_talents` VALUES ('9', '4', '����', '1997-03-30', '��', '28', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '0', '��', '����');
INSERT INTO `hr_talents` VALUES ('10', '4', '����', '1997-03-30', '��', '21', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '0', '��', '����');
INSERT INTO `hr_talents` VALUES ('11', '4', '����', '1997-03-30', '��', '21', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '0', '��', '����');
INSERT INTO `hr_talents` VALUES ('12', '4', '����', '1997-03-30', '��', '21', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '0', '��', '����');
INSERT INTO `hr_talents` VALUES ('13', '4', '����', '1997-03-30', '��', '21', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '0', '��', '����');
INSERT INTO `hr_talents` VALUES ('14', '4', '����', '1997-03-30', '��', '21', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '0', '��', '����');
INSERT INTO `hr_talents` VALUES ('15', '4', '����', '1997-03-30', '��', '21', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '0', '��', '����');
INSERT INTO `hr_talents` VALUES ('16', '4', '����', '1997-03-30', '��', '21', '����ʡ', '����֣�ݽ�ˮ��', '��', 'δ�����', '������Ա', '15239474900', '123456789@qq.com', '2018-10-10', '����', '��ר', 'ѧλ', '2018-06-06', '��ҵѧУ', '������Ϣ', '���������', '����', 'ʮ��', '�뷨�س�', '2018-10-23', '����', '��Ϥjava����', '��������', '��Ŀ����', '��������', 'ʵϰ', 'IT', '800', '1', '��ƭ', '��ע', '����', '0', '��', '����');
INSERT INTO `hr_talents` VALUES ('38', '4', 'ʿ���', '2018-10-24', '��', '20', '����', '����', '��', 'δ��', '����', '65165165', null, '2018-10-24', '����', '��ɪ��', '��ɪ��', '2018-10-24', '���', '��ɪ��', '��ɪ��', '��糵', '����', 'ʢ���', null, '����', '����', '�ĳ���', '����', '���г�', '������', '������', '21421', null, 'ʿ���', '��ɪ��', '��ɪ��', '1', '����', '����');
INSERT INTO `hr_talents` VALUES ('39', '4', 'ʿ���', '2018-10-24', '��', '20', '����', '����', '��', 'δ��', '����', '65165165', null, '2018-10-24', '����', '��ɪ��', '��ɪ��', '2018-10-24', '���', '��ɪ��', '��ɪ��', '��糵', '����', 'ʢ���', '2018-10-24', '����', '����', '�ĳ���', '����', '���г�', '������', '������', '21421', null, 'ʿ���', '��ɪ��', '��ɪ��', '1', '����', '����');
INSERT INTO `hr_talents` VALUES ('40', '4', 'ʿ���', '2018-10-24', '��', '20', '����', '����', '��', 'δ��', '����', '65165165', null, '2018-10-24', '����', '��ɪ��', '��ɪ��', '2018-10-24', '���', '��ɪ��', '��ɪ��', '��糵', '����', 'ʢ���', '2018-10-23', '����', '����', '�ĳ���', '����', '���г�', '������', '������', '21421', null, 'ʿ���', '��ɪ��', '��ɪ��', '1', '����', '����');
INSERT INTO `hr_talents` VALUES ('41', '4', 'ʿ���', '2018-10-24', '��', '20', '����', '����', '��', 'δ��', '����', '65165165', null, '2018-10-24', '����', '��ɪ��', '��ɪ��', '2018-10-24', '���', '��ɪ��', '��ɪ��', '��糵', '����', 'ʢ���', '2018-10-26', '����', '����', '�ĳ���', '����', '���г�', '������', '������', '21421', null, 'ʿ���', '��ɪ��', '��ɪ��', '1', '����', '����');
INSERT INTO `hr_talents` VALUES ('42', '41', 'lpr', '2018-11-05', '��', '19', '��', '���۸��M', '��', 'δ��', '�й���Ա', '1635256336', '1144512404@qq.com', '2018-11-02', '����', '��ʿ', 'ѧʿѧλ', '2018-11-14', '������', '��ѧ', '����', '', '�ŵ�', '�ŵ�', '2018-11-13', '������', '�ŵ�', '����', '������', '�ط�', '�淶', '�ŵ�f', '', '2', null, 'f', null, '4', 'arthur', '��Ŀ����');

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
INSERT INTO `jobwork` VALUES ('1', '1', '����Ա', '2018-11-01 08:00:00', '2018-11-01 12:00:00', '2018-11-01 13:00:00', '2018-11-01 17:00:00');
INSERT INTO `jobwork` VALUES ('5', '1', '����Ա', '2018-11-02 08:00:00', '2018-11-02 12:00:00', '2018-11-02 13:00:00', '2018-11-02 17:00:00');
INSERT INTO `jobwork` VALUES ('9', '1', '����Ա', '2018-11-03 08:00:00', '2018-11-03 12:00:00', '2018-11-03 13:00:00', '2018-11-03 17:00:00');
INSERT INTO `jobwork` VALUES ('13', '1', '����Ա', '2018-11-04 08:00:00', '2018-11-04 12:34:11', '2018-11-04 13:00:00', '2018-11-04 17:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=1903 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pbjl
-- ----------------------------
INSERT INTO `pbjl` VALUES ('1873', '2018-11-01', '2018-11-01 09:00:00', '2018-11-01 12:00:00', '2018-11-01 02:00:00', '2018-11-01 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1874', '2018-11-02', '2018-11-02 09:00:00', '2018-11-02 12:00:00', '2018-11-02 02:00:00', '2018-11-02 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1875', '2018-11-03', '2018-11-03 09:00:00', '2018-11-03 12:00:00', '2018-11-03 02:00:00', '2018-11-03 18:00:00', '1', '������', '��Ϣ', '��Ϣ', '��Ϣ', '��Ϣ');
INSERT INTO `pbjl` VALUES ('1876', '2018-11-04', '2018-11-04 09:00:00', '2018-11-04 12:00:00', '2018-11-04 02:00:00', '2018-11-04 18:00:00', '1', '������', '��Ϣ', '��Ϣ', '��Ϣ', '��Ϣ');
INSERT INTO `pbjl` VALUES ('1877', '2018-11-05', '2018-11-05 09:00:00', '2018-11-05 12:00:00', '2018-11-05 02:00:00', '2018-11-05 18:00:00', '1', '����һ', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1878', '2018-11-06', '2018-11-06 09:00:00', '2018-11-06 12:00:00', '2018-11-06 02:00:00', '2018-11-06 18:00:00', '1', '���ڶ�', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1879', '2018-11-07', '2018-11-07 09:00:00', '2018-11-07 12:00:00', '2018-11-07 02:00:00', '2018-11-07 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1880', '2018-11-08', '2018-11-08 09:00:00', '2018-11-08 12:00:00', '2018-11-08 02:00:00', '2018-11-08 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1881', '2018-11-09', '2018-11-09 09:00:00', '2018-11-09 12:00:00', '2018-11-09 02:00:00', '2018-11-09 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1882', '2018-11-10', '2018-11-10 09:00:00', '2018-11-10 12:00:00', '2018-11-10 02:00:00', '2018-11-10 18:00:00', '1', '������', '��Ϣ', '��Ϣ', '��Ϣ', '��Ϣ');
INSERT INTO `pbjl` VALUES ('1883', '2018-11-11', '2018-11-11 09:00:00', '2018-11-11 12:00:00', '2018-11-11 02:00:00', '2018-11-11 18:00:00', '1', '������', '��Ϣ', '��Ϣ', '��Ϣ', '��Ϣ');
INSERT INTO `pbjl` VALUES ('1884', '2018-11-12', '2018-11-12 09:00:00', '2018-11-12 12:00:00', '2018-11-12 02:00:00', '2018-11-12 18:00:00', '1', '����һ', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1885', '2018-11-13', '2018-11-13 09:00:00', '2018-11-13 12:00:00', '2018-11-13 02:00:00', '2018-11-13 18:00:00', '1', '���ڶ�', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1886', '2018-11-14', '2018-11-14 09:00:00', '2018-11-14 12:00:00', '2018-11-14 02:00:00', '2018-11-14 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1887', '2018-11-15', '2018-11-15 09:00:00', '2018-11-15 12:00:00', '2018-11-15 02:00:00', '2018-11-15 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1888', '2018-11-16', '2018-11-16 09:00:00', '2018-11-16 12:00:00', '2018-11-16 02:00:00', '2018-11-16 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1889', '2018-11-17', '2018-11-17 09:00:00', '2018-11-17 12:00:00', '2018-11-17 02:00:00', '2018-11-17 18:00:00', '1', '������', '��Ϣ', '��Ϣ', '��Ϣ', '��Ϣ');
INSERT INTO `pbjl` VALUES ('1890', '2018-11-18', '2018-11-18 09:00:00', '2018-11-18 12:00:00', '2018-11-18 02:00:00', '2018-11-18 18:00:00', '1', '������', '��Ϣ', '��Ϣ', '��Ϣ', '��Ϣ');
INSERT INTO `pbjl` VALUES ('1891', '2018-11-19', '2018-11-19 09:00:00', '2018-11-19 12:00:00', '2018-11-19 02:00:00', '2018-11-19 18:00:00', '1', '����һ', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1892', '2018-11-20', '2018-11-20 09:00:00', '2018-11-20 12:00:00', '2018-11-20 02:00:00', '2018-11-20 18:00:00', '1', '���ڶ�', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1893', '2018-11-21', '2018-11-21 09:00:00', '2018-11-21 12:00:00', '2018-11-21 02:00:00', '2018-11-21 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1894', '2018-11-22', '2018-11-22 09:00:00', '2018-11-22 12:00:00', '2018-11-22 02:00:00', '2018-11-22 18:00:00', '1', '������', '����', '����', '�ٵ�', '����');
INSERT INTO `pbjl` VALUES ('1895', '2018-11-23', '2018-11-23 09:00:00', '2018-11-23 12:00:00', '2018-11-23 02:00:00', '2018-11-23 18:00:00', '1', '������', 'ȱ��', 'ȱ��', 'ȱ��', 'ȱ��');
INSERT INTO `pbjl` VALUES ('1896', '2018-11-24', '2018-11-24 09:00:00', '2018-11-24 12:00:00', '2018-11-24 02:00:00', '2018-11-24 18:00:00', '1', '������', '��Ϣ', '��Ϣ', '��Ϣ', '��Ϣ');
INSERT INTO `pbjl` VALUES ('1897', '2018-11-25', '2018-11-25 09:00:00', '2018-11-25 12:00:00', '2018-11-25 02:00:00', '2018-11-25 18:00:00', '1', '������', '��Ϣ', '��Ϣ', '��Ϣ', '��Ϣ');
INSERT INTO `pbjl` VALUES ('1898', '2018-11-26', '2018-11-26 09:00:00', '2018-11-26 12:00:00', '2018-11-26 02:00:00', '2018-11-26 18:00:00', '1', '����һ', 'ȱ��', 'ȱ��', 'ȱ��', 'ȱ��');
INSERT INTO `pbjl` VALUES ('1899', '2018-11-27', '2018-11-27 09:00:00', '2018-11-27 12:00:00', '2018-11-27 02:00:00', '2018-11-27 18:00:00', '1', '���ڶ�', 'ȱ��', 'ȱ��', 'ȱ��', 'ȱ��');
INSERT INTO `pbjl` VALUES ('1900', '2018-11-28', '2018-11-28 09:00:00', '2018-11-28 12:00:00', '2018-11-28 02:00:00', '2018-11-28 18:00:00', '1', '������', 'ȱ��', 'ȱ��', 'ȱ��', 'ȱ��');
INSERT INTO `pbjl` VALUES ('1901', '2018-11-29', '2018-11-29 09:00:00', '2018-11-29 12:00:00', '2018-11-29 02:00:00', '2018-11-29 18:00:00', '1', '������', 'ȱ��', 'ȱ��', 'ȱ��', 'ȱ��');
INSERT INTO `pbjl` VALUES ('1902', '2018-11-30', '2018-11-30 09:00:00', '2018-11-30 12:00:00', '2018-11-30 02:00:00', '2018-11-30 18:00:00', '1', '������', 'ȱ��', 'ȱ��', 'ȱ��', 'ȱ��');

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
INSERT INTO `schedule` VALUES ('1', '���', '07:00:00', '11:00:00', '13:00:00', '17:00:00');
INSERT INTO `schedule` VALUES ('9', '����', '09:00:00', '12:00:00', '02:00:00', '18:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '2', '1', '�ݸ�ֽ', '1', '����', '����Ʒ', '789789', '1', '����', '500', '50', '95', '50', '1', '1', '123', '��', '1', '1', '1', '2018-11-05');
INSERT INTO `shop` VALUES ('2', '1', '1', 'ǩ�ֱ�', '1', '����', '����Ʒ', '123456', '2', '����', '50', '10', '20', '20', '1', '1', 'admin', '1', null, null, null, '2018-11-05');
INSERT INTO `shop` VALUES ('3', '1', '2', '�����ھ��', '1', '����', 'С��', '123456', '2', '����', '20', '50', '30', '30', '1', '1', null, '1', null, null, null, '2018-11-28');
INSERT INTO `shop` VALUES ('4', '1', '2', '��¶', '1', '��', '1', '12333', '1', '��', '50', '20', '24', '25', null, null, null, '1', null, null, null, '2018-11-06');
INSERT INTO `shop` VALUES ('5', '1', null, 'ceshi', null, '1', '1', '1', '1', '1', '30', '10', '15', '15', null, null, null, '1', null, null, null, '2018-10-11');

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
INSERT INTO `springfestival` VALUES ('1', '����', '2018-11-05 00:00:00', '2018-11-23 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of synthesis
-- ----------------------------
INSERT INTO `synthesis` VALUES ('1', null, '1', '����', '2018-10-08 20:22:44', '2018-10-08 00:00:00', null, null, null, null, null, null, '1', '2018-10-08 23:07:07', '3', '1', null, '1', '2', '0', '20:24:25', '22:24:28');
INSERT INTO `synthesis` VALUES ('2', null, '1', '����', '2018-10-08 20:22:57', null, null, null, null, null, '2017-12-12', null, null, null, '1', '2', null, '1', '1', '0', '2018-10-08 00:00:00', '2018-10-09 00:00:00');
INSERT INTO `synthesis` VALUES ('3', null, '1', '��Ӱ�', '2018-10-08 20:23:07', null, null, null, null, null, null, null, null, '2018-10-08 23:16:17', '3', '3', null, '1', '24', '0', '2018-10-08 00:00:00', '2018-10-09 00:00:00');
INSERT INTO `synthesis` VALUES ('4', null, '1', '����', '2018-10-08 23:07:47', null, null, null, null, null, null, null, null, '2018-10-08 23:16:36', '3', '2', null, '1', '11', '0', '2018-10-08 00:00:00', '2018-10-19 00:00:00');
INSERT INTO `synthesis` VALUES ('5', null, '1', '��Ƹ', '2018-10-08 23:32:22', null, null, null, null, '�Ϻ�', null, null, null, '2018-10-09 14:03:18', '3', '4', null, '22', '6', null, '2018-10-08 00:00:00', '2018-10-14 00:00:00');
INSERT INTO `synthesis` VALUES ('6', null, '1', '�����̸', '2018-10-09 14:28:25', '2018-10-09 00:00:00', null, null, null, null, null, null, '0', null, '0', '1', null, '22', '2', '3', '14:28:53', '16:31:57');
INSERT INTO `synthesis` VALUES ('7', null, '1', '����', '2018-11-09 23:38:36', '2018-11-09 00:00:00', null, null, null, null, null, null, null, '2018-11-09 23:43:05', '3', '1', null, '24', '0', '22', '23:36:59', '23:59:14');

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
INSERT INTO `tb_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, 'arthur', 'duxiaod@qq.com', '1', '1994-11-08', '����ʡ������������', '17693109997', '1', '1');
INSERT INTO `tb_admin` VALUES ('18', 'test', 'e10adc3949ba59abbe56e057f20f883e', null, 'test', 'test@test.com', '1', '2018-02-25', '����ʡ�����������غ�ƽ��', '17601038192', '61', '2');
INSERT INTO `tb_admin` VALUES ('19', 'lpr', '4297f44b13955235245b2497399d7a93', null, '����Ȼ', '1144512404@qq.com', '0', '1998-05-16', 'asdasd', '13525636996', '1', '2');
INSERT INTO `tb_admin` VALUES ('20', 'mm', '4297f44b13955235245b2497399d7a93', null, 'ëë', '135256335@qq.com', '0', '2018-10-22', 'asdasd', '13525636996', '1', '2');
INSERT INTO `tb_admin` VALUES ('21', 'zx', '4297f44b13955235245b2497399d7a93', null, '��Ф', '1584777854@qq.com', '1', '2011-07-29', 'asdasd', '13525636996', '1', '1');
INSERT INTO `tb_admin` VALUES ('22', 'gd', '4297f44b13955235245b2497399d7a93', null, '����', '1144514404@qq.com', '1', '1995-04-09', '�����', '13525636996', '1', '1');
INSERT INTO `tb_admin` VALUES ('23', 'xiaoli', '4297f44b13955235245b2497399d7a93', null, 'С��', '14585985655@qq.com', '1', '2012-11-05', '����', '13525856552', '62', '3');
INSERT INTO `tb_admin` VALUES ('24', 'chl', '4297f44b13955235245b2497399d7a93', null, '�޺���', '1458585845@qq.com', '1', '1996-10-08', '����', '13525856552', '62', '7');
INSERT INTO `tb_admin` VALUES ('25', 'wangmengwei', '4297f44b13955235245b2497399d7a93', null, '������', '1458598555@qq.com', '1', '2012-10-09', '����', '13525856552', '62', '4');

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
INSERT INTO `tb_carousel` VALUES ('8', 'fe3ecede0bec467b8be253684db5e28b3193.jpg', 'http://localhost:8080/irs/index.jsp', '���չ��ĵĻ������� ϰ��ƽ�������´�', '200', '1', '2018-05-20 23:36:49', '2018-08-21 10:21:16');
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
INSERT INTO `tb_dept` VALUES ('1', '1', '�ܾ���', '100', '�Ϻ�', '������', '������', '���쵼', '1', '���쵼', '010-15241441', '152013654125', '���������ɱ������Ϳ��ƣ������ܽᡢ�㱨�����������������ü�������������', 'CEO', '001');
INSERT INTO `tb_dept` VALUES ('2', '2', '�ۺϹ�����', '200', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '1����ʹ��˾�������������2��Э�������Ź�����3��������Դ�����뿪����4�����ʿ��ˣ�5����Ա���ˣ�6��������Ƹ¼�á�7����Ա��������', '�������ܼ�', '001');
INSERT INTO `tb_dept` VALUES ('3', '3', '������Դ��', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '���������ɱ������Ϳ��ƣ������ܽᡢ�㱨�����������������ü�������������', '������Դ�ܼ�', '001');
INSERT INTO `tb_dept` VALUES ('4', '4', '����', '200', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '�����ܼ�', '001');
INSERT INTO `tb_dept` VALUES ('5', '5', '������', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '��������', '001');
INSERT INTO `tb_dept` VALUES ('6', '1', '�г�Ӫ����', '300', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '��ɹ�˾�ƶ���Ӫ��ָ�ꡣ Ӫ�����ԡ��ƻ����ⶨ��ʵʩ�͸Ľ��� Ӫ�����ѵ�Ԥ��Ϳ��ơ�', 'Ӫ���ܼ�', '001');
INSERT INTO `tb_dept` VALUES ('7', '2', '�г���', '200', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '���ž���', '001');
INSERT INTO `tb_dept` VALUES ('8', '3', 'Ʒ�Ʋ�', '500', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '���������ɱ������Ϳ��ƣ������ܽᡢ�㱨�����������������ü�������������', 'Ʒ���ܼ�', '001');
INSERT INTO `tb_dept` VALUES ('9', '4', '����Ӫ������', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '���ž���', '001');
INSERT INTO `tb_dept` VALUES ('10', '5', '��������', '200', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', 'ְԱ', '001');
INSERT INTO `tb_dept` VALUES ('11', '1', '���۲�', '300', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '���������ɱ������Ϳ��ƣ������ܽᡢ�㱨�����������������ü�������������', '��������', '001');
INSERT INTO `tb_dept` VALUES ('12', '2', '�������۲�', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '�������۾���', '001');
INSERT INTO `tb_dept` VALUES ('13', '3', '�������۲�', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '1�����𱱾��������۹�����2�����𱱾��г����С��г������������ƶ�ҵ���ƽ��ƻ���', '�������۾���', '001');
INSERT INTO `tb_dept` VALUES ('14', '4', '����һ��', '200', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '���۾���', '001');
INSERT INTO `tb_dept` VALUES ('15', '5', '���۶���', '300', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '���������ɱ������Ϳ��ƣ������ܽᡢ�㱨�����������������ü�������������', 'ְԱ', '001');
INSERT INTO `tb_dept` VALUES ('16', '1', '��������', '500', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', 'ְԱ', '001');
INSERT INTO `tb_dept` VALUES ('17', '2', '����Э����', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '���۾���', '001');
INSERT INTO `tb_dept` VALUES ('18', '3', '�Ϻ����۲�', '1000', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '021-68879920', '152013654125', '1�������Ϻ��������۹�����2�������Ϻ��г����С��г������������ƶ�ҵ���ƽ��ƻ���', '�������۾���', '001');
INSERT INTO `tb_dept` VALUES ('19', '4', '�з���', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '�縺���ơ������²�Ʒ�����Ʋ�Ʒ���ܵ�����', '�з��ܼ�', '001');
INSERT INTO `tb_dept` VALUES ('20', '5', '��Ʒ��', '200', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '�з�����ʦ', '001');
INSERT INTO `tb_dept` VALUES ('21', '1', '����һ��', '300', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '�����û����ʣ�Ϊ�û��ṩȫ��λ����֧�֡��Ѽ��û����飬���������Ʒ������', '�з�����ʦ', '001');
INSERT INTO `tb_dept` VALUES ('22', '2', '��������', '200', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '������ܱ�д���ڹ����ܽ�ͼƻ����������ڵĸ����ĵ���', '�з�����ʦ', '001');
INSERT INTO `tb_dept` VALUES ('23', '3', '������֤��', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '1������˾�����������������ƶ���ִ�и������������涨��������׼���Բ�Ʒ��������ָ����ල���Σ�', '�з�����ʦ', '001');
INSERT INTO `tb_dept` VALUES ('24', '4', '��Ʋ�', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '��Ʋ�����', '001');
INSERT INTO `tb_dept` VALUES ('25', '5', '��Ŀ��', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '���������ɱ������Ϳ��ƣ������ܽᡢ�㱨�����������������ü�������������', '��Ŀ����', '001');
INSERT INTO `tb_dept` VALUES ('26', '1', '��Ŀһ��', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '��Ŀ����', '001');
INSERT INTO `tb_dept` VALUES ('27', '2', '��Ŀ����', '100', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '���������ɱ������Ϳ��ƣ������ܽᡢ�㱨�����������������ü�������������', '��Ŀ����', '001');
INSERT INTO `tb_dept` VALUES ('28', '3', '������', '200', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '���ž���', '001');
INSERT INTO `tb_dept` VALUES ('29', '4', '�ɹ���', '600', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', '�ɹ�����', '001');
INSERT INTO `tb_dept` VALUES ('30', '5', '����һ��', '300', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '���������ɱ������Ϳ��ƣ������ܽᡢ�㱨�����������������ü�������������', '���ž���', '001');
INSERT INTO `tb_dept` VALUES ('31', '1', '��������', '200', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '1', '���쵼', '010-51299003', '152013654125', '������֯�Բ��ϸ�Ʒ�����󣬶����������������ʩ��', 'ְԱ', '001');
INSERT INTO `tb_dept` VALUES ('32', '2', '�ʼ첿', '500', '�����к���������Ժ·69���й���������508', '������', '������', '���쵼', '0', '���쵼', '010-51299003', '152013654125', '���������ɱ������Ϳ��ƣ������ܽᡢ�㱨�����������������ü�������������', '���ž���', '001');

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
INSERT INTO `tb_dwinformation` VALUES ('1', '����ͨ���ſƿƼ����޹�˾', '123456', '15236501254', '100000', '����', 'www.ghndg.hklou', '1580213021@qq.com', '�й���������', '41250125', '����ͨ���ſƿƼ����޹�˾���й�������ҵ��Ϣ���ĵ�ȫ���ӹ�˾����һ֧�Թ��������з���ʵʩ����������ѯΪ��Ӫҵ��ĸ߿Ƽ���ҵ��������ȫ����500ǿ��ҵ�й�������ҵ���Ź�˾��', '��');
INSERT INTO `tb_dwinformation` VALUES ('2', '�Ϻ������������ι�˾', '154202', '15240687452', '200000', '�Ϻ�', 'www.com.huijkko', '1584203154@qq.com', '�й�����', '45120365', '�Ϻ����У����ţ����޹�˾�Ǽ��ƹ�óΪһ��Ĵ�����ҵ���ţ����Ϻ��о�ί���⾭óί�ص���ֵ�140�Ҵ�����ҵ֮һ����˾���н���Ȩ����ͨ��ISO9002������ϵ��֤��', '��');
INSERT INTO `tb_dwinformation` VALUES ('3', '���ں����������ι�˾', '451203', '18752031546', '518000', '����', 'www.com.juhheep', '1720154625@qq.com', '�й�ũҵ����', '15420163', '�����������ι�˾1992��11�³�����1993��9��17����ʽ��������һ���ܲ�λ�ڹ㶫ʡ�����еĺ��չ�˾����Ϊ���ڵ���󺽿ռ��š�', '��');
INSERT INTO `tb_dwinformation` VALUES ('4', '������Ͷ�ʼ����������ι�˾', '185421', '15230265418', '150000', '������', 'www.com.loojhuid', '15420315642@qq.com', '�й�����', '45120156', '������Ͷ�ʼ����������ι�˾������1988��8�£����������ش���ĿͶ����ƽ̨����������Ҫ�Ĺ����ʲ���Ӫ������', '��');
INSERT INTO `tb_dwinformation` VALUES ('5', '��������������ι�˾', '452102', '15426320158', '999077', '���', 'www.hjuh.ehdeus', '45210365412@qq.com', '�й���������', '85412625', '��������������ι�˾������1999�꣬�ǡ����������ҵЭ�ᡱ����������ҵ��ӵ����������������Դ�����Ծ�Ӫ������������Ʒ����Ϊ�����ۺ���������˾����˾ʼ���Դ����й���ͳ�Ļ�������Ϊ���Σ�ÿ�궨�ھٰ촺�����＾���������ἰ�ر�ר����', '��');

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
INSERT INTO `tb_itemtype` VALUES ('1', '����¼����');
INSERT INTO `tb_itemtype` VALUES ('2', '�����ϱ���');
INSERT INTO `tb_itemtype` VALUES ('3', '���ſۿ���');

-- ----------------------------
-- Table structure for `tb_log`
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `operation` varchar(50) NOT NULL COMMENT '����',
  `method` varchar(100) DEFAULT NULL COMMENT 'ִ�з���',
  `params` varchar(500) DEFAULT NULL COMMENT '�������',
  `ip` varchar(64) DEFAULT NULL COMMENT 'ip',
  `create_time` datetime NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=780 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES ('690', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,14,15,42,43,44,45\";', '0:0:0:0:0:0:0:1', '2018-10-29 15:07:06');
INSERT INTO `tb_log` VALUES ('691', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"н�����\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:24:16');
INSERT INTO `tb_log` VALUES ('692', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"н����Ŀ������\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:24:48');
INSERT INTO `tb_log` VALUES ('693', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"н���������\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:25:13');
INSERT INTO `tb_log` VALUES ('694', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"�������̹���\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:25:50');
INSERT INTO `tb_log` VALUES ('695', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":57,\"title\":\"���Ź����ϱ�\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:27:59');
INSERT INTO `tb_log` VALUES ('696', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"��֯������Ϣ\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":996,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:28:34');
INSERT INTO `tb_log` VALUES ('697', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":43,\"title\":\"SQL���\",\"icon\":\"��\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:28:50');
INSERT INTO `tb_log` VALUES ('698', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":62,\"title\":\"��λ��Ϣ��ѯ\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:29:11');
INSERT INTO `tb_log` VALUES ('699', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":62,\"title\":\"������Ϣ��ѯ\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:29:35');
INSERT INTO `tb_log` VALUES ('700', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":62,\"title\":\"�û���Ϣ��ѯ\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:30:05');
INSERT INTO `tb_log` VALUES ('701', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:30:24');
INSERT INTO `tb_log` VALUES ('702', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":58,\"title\":\"н����Ŀ������\",\"icon\":\"��\",\"href\":\"salitem/findxc.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-29 16:37:01');
INSERT INTO `tb_log` VALUES ('703', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":59,\"title\":\"н���������\",\"icon\":\"��\",\"href\":\"personxc/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-29 20:17:53');
INSERT INTO `tb_log` VALUES ('704', 'admin', '���ӹ���Ա', '/oa/sys/insAdmin', '{\"id\":null,\"username\":\"zx\",\"password\":\"123123\",\"salt\":null,\"fullname\":\"��Ф\",\"eMail\":\"1584777854@qq.com\",\"sex\":\"1\",\"birthday\":\"2011-07-29\",\"address\":\"asdasd\",\"phone\":\"13525636996\",\"roleId\":1,\"roleName\":null};', '0:0:0:0:0:0:0:1', '2018-10-29 23:36:01');
INSERT INTO `tb_log` VALUES ('705', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":60,\"title\":\"�������̹���\",\"icon\":\"��\",\"href\":\"salaryflow/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-30 15:11:23');
INSERT INTO `tb_log` VALUES ('706', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":61,\"title\":\"���Ź����ϱ�\",\"icon\":\"��\",\"href\":\"saldata/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":57,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-31 16:19:21');
INSERT INTO `tb_log` VALUES ('708', 'admin', '���ӹ���Ա', '/oa/sys/insAdmin', '{\"id\":null,\"username\":\"gd\",\"password\":\"123123\",\"salt\":null,\"fullname\":\"����\",\"eMail\":\"1144514404@qq.com\",\"sex\":\"1\",\"birthday\":\"1995-04-09\",\"address\":\"�����\",\"phone\":\"13525636996\",\"roleId\":1,\"roleName\":null};', '0:0:0:0:0:0:0:1', '2018-11-02 16:47:23');
INSERT INTO `tb_log` VALUES ('709', 'admin', '�����û���Ϣ', '/oa/user/updUser', '{\"uid\":28,\"eMail\":\"123@qq.com\",\"nickname\":\"2113\",\"password\":null,\"sex\":\"1\",\"birthday\":\"2018-07-26\",\"address\":\"123123\",\"phone\":\"17693109997\",\"eCode\":null,\"status\":\"1\",\"createTime\":null};', '0:0:0:0:0:0:0:1', '2018-11-02 19:48:56');
INSERT INTO `tb_log` VALUES ('710', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"�˲Ź���\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":null,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 21:51:45');
INSERT INTO `tb_log` VALUES ('711', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"��Ƹ�ƻ�\",\"icon\":\"&#xe642\",\"href\":\"plan/findplan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 21:53:01');
INSERT INTO `tb_log` VALUES ('712', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67\";', '0:0:0:0:0:0:0:1', '2018-11-04 21:53:17');
INSERT INTO `tb_log` VALUES ('713', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"�˲Ź���\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:39:02');
INSERT INTO `tb_log` VALUES ('714', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"��������\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:40:02');
INSERT INTO `tb_log` VALUES ('715', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"��������\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":null,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:40:16');
INSERT INTO `tb_log` VALUES ('716', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"��������\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:40:54');
INSERT INTO `tb_log` VALUES ('717', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"�Ű����\",\"icon\":\"\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:41:37');
INSERT INTO `tb_log` VALUES ('718', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":70,\"title\":\"�Ű����\",\"icon\":\"\",\"href\":\"duty/PaiBan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":69,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:42:24');
INSERT INTO `tb_log` VALUES ('719', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,69,70\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:42:40');
INSERT INTO `tb_log` VALUES ('720', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"��ι���\",\"icon\":\"\",\"href\":\"schedule/Ban.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:46:23');
INSERT INTO `tb_log` VALUES ('721', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,69,70,71\";', '0:0:0:0:0:0:0:1', '2018-11-04 22:46:36');
INSERT INTO `tb_log` VALUES ('722', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"������������\",\"icon\":\"&#xe642\",\"href\":\"exam/Exam.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:04:38');
INSERT INTO `tb_log` VALUES ('723', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"��ǩ�ڼ���\",\"icon\":\"&#xe642\",\"href\":\"Festival/festival.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:05:25');
INSERT INTO `tb_log` VALUES ('724', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"���˿���\",\"icon\":\"&#xe642\",\"href\":\"GeRen/KaoQin.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:07:36');
INSERT INTO `tb_log` VALUES ('725', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"����Ǽ�\",\"icon\":\"\",\"href\":\"schedule/test.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:08:11');
INSERT INTO `tb_log` VALUES ('726', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"��ٵǼ�\",\"icon\":\"\",\"href\":\"GeRen/QingJia.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:08:35');
INSERT INTO `tb_log` VALUES ('727', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"�Ӱ�Ǽ�\",\"icon\":\"\",\"href\":\"GeRen/JiaBan.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:09:35');
INSERT INTO `tb_log` VALUES ('728', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"����Ǽ�\",\"icon\":\"\",\"href\":\"GeRen/ChuChai.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:10:20');
INSERT INTO `tb_log` VALUES ('729', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,68,74,75,76,77,78,69,70,71\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:10:45');
INSERT INTO `tb_log` VALUES ('730', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,68,74,75,76,77,78,69,70,71,72,73\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:11:53');
INSERT INTO `tb_log` VALUES ('731', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"��Ƹ�ƻ�ɸѡ\",\"icon\":\"\",\"href\":\"plan/findplan0.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:19:15');
INSERT INTO `tb_log` VALUES ('732', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"�˲ſ�\",\"icon\":\"\",\"href\":\"talent/findtalent.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:20:01');
INSERT INTO `tb_log` VALUES ('733', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"��Ƹ��Աɸѡ\",\"icon\":\"\",\"href\":\"screen/findscreen.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":996,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:20:39');
INSERT INTO `tb_log` VALUES ('734', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"��Ƹ¼��\",\"icon\":\"\",\"href\":\"hire/findhire.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:21:25');
INSERT INTO `tb_log` VALUES ('735', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,69,70,71,72,73\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:21:54');
INSERT INTO `tb_log` VALUES ('736', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":2,\"title\":\"����Ա����\",\"icon\":\"�l\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:26:42');
INSERT INTO `tb_log` VALUES ('737', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":9,\"title\":\"�û�����\",\"icon\":\"�w\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":995,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:27:09');
INSERT INTO `tb_log` VALUES ('738', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"��������\",\"icon\":\"�l\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:27:44');
INSERT INTO `tb_log` VALUES ('739', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":66,\"title\":\"�˲Ź���\",\"icon\":\"�l\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":0,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:27:57');
INSERT INTO `tb_log` VALUES ('740', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":0,\"title\":\"��������\",\"icon\":\"&#xe642\",\"href\":\"\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":997,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:56:38');
INSERT INTO `tb_log` VALUES ('741', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,69,70,71,72,73,83\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:56:54');
INSERT INTO `tb_log` VALUES ('742', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"������Ʒ\",\"icon\":\"\",\"href\":\"apply/find.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:57:29');
INSERT INTO `tb_log` VALUES ('743', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"��Ʒ����\",\"icon\":\"&#xe642\",\"href\":\"apply/find2.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":999,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:58:02');
INSERT INTO `tb_log` VALUES ('744', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":83,\"title\":\"��Ʒ��Ϣ\",\"icon\":\"\",\"href\":\"tree/findshop.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":998,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:58:30');
INSERT INTO `tb_log` VALUES ('745', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,69,70,71,72,73,83,84,85,86\";', '0:0:0:0:0:0:0:1', '2018-11-04 23:58:42');
INSERT INTO `tb_log` VALUES ('747', 'admin', '���ӽ�ɫ��Ϣ', '/oa/sys/insRole', '{\"roleId\":null,\"roleName\":\"ceo\",\"roleRemark\":\"�����󲿷�Ȩ��\"};\"1,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,69,70,71,72,73,83,84,85,86\";', '0:0:0:0:0:0:0:1', '2018-11-05 10:07:57');
INSERT INTO `tb_log` VALUES ('748', 'admin', '���ӹ���Ա', '/oa/sys/insAdmin', '{\"id\":null,\"username\":\"xiaoli\",\"password\":\"123123\",\"salt\":null,\"fullname\":\"С��\",\"eMail\":\"14585985655@qq.com\",\"sex\":\"1\",\"birthday\":\"2012-11-05\",\"address\":\"����\",\"phone\":\"13525856552\",\"roleId\":62,\"roleName\":null};', '0:0:0:0:0:0:0:1', '2018-11-05 10:12:47');
INSERT INTO `tb_log` VALUES ('774', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":87,\"title\":\"�����ʼ�\",\"icon\":\"��\",\"href\":\"dept/mailfind.action\",\"perms\":\"\",\"spread\":null,\"parentId\":68,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"\";', '0:0:0:0:0:0:0:1', '2018-10-11 22:29:12');
INSERT INTO `tb_log` VALUES ('776', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":68,\"title\":\"���ڼ�¼\",\"icon\":\"\",\"href\":\"GeRen/KaoQinJiLu.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":1000,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-09 23:24:31');
INSERT INTO `tb_log` VALUES ('777', 'admin', 'ά���˵���Ϣ', '/oa/sys/menuForm', '{\"menuId\":69,\"title\":\"����ͳ��\",\"icon\":\"\",\"href\":\"GeRen/KaoQinTongji.action\",\"perms\":\"\",\"spread\":null,\"parentId\":null,\"sorting\":900,\"checked\":null,\"isOpen\":false};\"1\";', '0:0:0:0:0:0:0:1', '2018-11-09 23:25:15');
INSERT INTO `tb_log` VALUES ('778', 'admin', '���½�ɫ��Ϣ', '/oa/sys/updRole', '{\"roleId\":1,\"roleName\":\"��������Ա\",\"roleRemark\":\"��������Ա\"};\"1,2,3,16,17,18,19,4,20,21,22,23,46,47,48,49,50,9,10,33,11,34,35,36,37,57,58,59,60,61,62,63,64,65,66,67,79,80,81,82,68,74,75,76,77,78,87,88,89,69,70,71,72,73,90,83,84,85,86\";', '0:0:0:0:0:0:0:1', '2018-11-09 23:25:51');
INSERT INTO `tb_log` VALUES ('779', 'ϵͳ�Զ�����', '��ʱɾ����־��25��', '', '', '', '2018-10-11 00:00:01');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_mail
-- ----------------------------
INSERT INTO `tb_mail` VALUES ('1', '1', '1', '1', null, '��������', '����һ��ȥ����', '2018-11-02 09:32:46', null, null, '0', null, null, null, null);
INSERT INTO `tb_mail` VALUES ('2', '18', '1', '2', null, '��������', '����һ��ȥ����', '2018-10-12 09:47:39', null, null, '0', null, null, null, null);
INSERT INTO `tb_mail` VALUES ('3', '19', '1', '1', null, '��������', '��ɽ��Ҷ', '2018-10-12 09:48:23', null, '', '2', null, null, null, null);
INSERT INTO `tb_mail` VALUES ('4', '1', '1', '1', null, 'ϲ������ɽ', '���������', '2018-10-12 09:48:56', null, '', '2', null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menus
-- ----------------------------
INSERT INTO `tb_menus` VALUES ('1', '��̨��ҳ', '��', 'page/main.html', '', 'false', '0', '9999');
INSERT INTO `tb_menus` VALUES ('2', '����Ա����', '�l', '', '', 'false', '0', '995');
INSERT INTO `tb_menus` VALUES ('3', '��ɫ����', '&#xe613;', 'sys/roleList', null, 'false', '2', null);
INSERT INTO `tb_menus` VALUES ('4', '����Ա�б�', '&#xe613;', 'sys/adminList', null, 'false', '2', null);
INSERT INTO `tb_menus` VALUES ('9', '�û�����', '�w', '', '', 'false', '0', '995');
INSERT INTO `tb_menus` VALUES ('10', '�����û�', '&#xe608;', 'user/addUser', null, 'false', '9', null);
INSERT INTO `tb_menus` VALUES ('11', '�����û�', '&#xe60e;', 'user/userList', null, 'false', '9', null);
INSERT INTO `tb_menus` VALUES ('14', 'ϵͳ��־', '&#xe61d;', null, null, 'false', '0', '995');
INSERT INTO `tb_menus` VALUES ('15', '��־����', '&#xe642;', 'log/logList', null, 'false', '14', null);
INSERT INTO `tb_menus` VALUES ('16', '�鿴', '', '', 'sys:role:list', 'false', '3', null);
INSERT INTO `tb_menus` VALUES ('17', '����', null, null, 'sys:role:save', 'false', '3', null);
INSERT INTO `tb_menus` VALUES ('18', '�޸�', null, null, 'sys:role:update', 'false', '3', null);
INSERT INTO `tb_menus` VALUES ('19', 'ɾ��', null, null, 'sys:role:delete', 'false', '3', null);
INSERT INTO `tb_menus` VALUES ('20', '�鿴', null, null, 'sys:admin:list', 'false', '4', null);
INSERT INTO `tb_menus` VALUES ('21', '����', null, null, 'sys:admin:save', 'false', '4', null);
INSERT INTO `tb_menus` VALUES ('22', '�޸�', null, null, 'sys:admin:update', 'false', '4', null);
INSERT INTO `tb_menus` VALUES ('23', 'ɾ��', null, null, 'sys:admin:delete', 'false', '4', null);
INSERT INTO `tb_menus` VALUES ('33', '����', null, null, 'user:user:save', 'false', '10', null);
INSERT INTO `tb_menus` VALUES ('34', '�鿴', null, null, 'user:user:list', 'false', '11', null);
INSERT INTO `tb_menus` VALUES ('35', '����', null, null, 'user:user:save', 'false', '11', null);
INSERT INTO `tb_menus` VALUES ('36', '�޸�', null, null, 'user:user:update', 'false', '11', null);
INSERT INTO `tb_menus` VALUES ('37', 'ɾ��', null, null, 'user:user:delete', 'false', '11', null);
INSERT INTO `tb_menus` VALUES ('42', '�鿴', '', '', 'log:log:list', 'false', '15', null);
INSERT INTO `tb_menus` VALUES ('43', 'SQL���', '��', '', '', 'false', '0', '995');
INSERT INTO `tb_menus` VALUES ('44', 'SQL���', '&#xe642;', 'sys/druid', null, 'false', '43', null);
INSERT INTO `tb_menus` VALUES ('45', '�鿴', null, null, 'sys:druid:list', 'false', '44', null);
INSERT INTO `tb_menus` VALUES ('46', '�˵�����', '&#xe642;', 'sys/menuList', null, 'false', '2', null);
INSERT INTO `tb_menus` VALUES ('47', '�鿴', null, null, 'sys:menu:list', 'false', '46', null);
INSERT INTO `tb_menus` VALUES ('48', '����', null, null, 'sys:menu:save', 'false', '46', null);
INSERT INTO `tb_menus` VALUES ('49', '�޸�', null, null, 'sys:menu:update', 'false', '46', null);
INSERT INTO `tb_menus` VALUES ('50', 'ɾ��', null, null, 'sys:menu:delete', 'false', '46', null);
INSERT INTO `tb_menus` VALUES ('51', '�ֲ�����', '�]', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('52', '�ֲ�����', '', 'carousel/carouselList', '', 'false', '51', null);
INSERT INTO `tb_menus` VALUES ('53', '�鿴', '', '', 'carousel:carousel:list', 'false', '52', null);
INSERT INTO `tb_menus` VALUES ('54', 'ɾ��', '', '', 'carousel:carousel:delete', 'false', '52', null);
INSERT INTO `tb_menus` VALUES ('55', '�޸�', '', '', 'carousel:carousel:update', 'false', '52', null);
INSERT INTO `tb_menus` VALUES ('56', '����', '', '', 'carousel:carousel:save', 'false', '52', null);
INSERT INTO `tb_menus` VALUES ('57', 'н�����', '&#xe642', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('58', 'н����Ŀ������', '��', 'salitem/findxc.action', '', 'false', '57', '1000');
INSERT INTO `tb_menus` VALUES ('59', 'н���������', '��', 'personxc/find.action', '', 'false', '57', '999');
INSERT INTO `tb_menus` VALUES ('60', '�������̹���', '��', 'salaryflow/find.action', '', 'false', '57', '998');
INSERT INTO `tb_menus` VALUES ('61', '���Ź����ϱ�', '��', 'saldata/find.action', '', 'false', '57', '997');
INSERT INTO `tb_menus` VALUES ('62', '��֯������Ϣ', '&#xe642', '', '', 'false', '0', '996');
INSERT INTO `tb_menus` VALUES ('63', '��λ��Ϣ��ѯ', '��', 'dwinformation/find.action', '', 'false', '62', '1000');
INSERT INTO `tb_menus` VALUES ('64', '������Ϣ��ѯ', '��', 'dept/find.action', '', 'false', '62', '999');
INSERT INTO `tb_menus` VALUES ('65', '�û���Ϣ��ѯ', '&#xe642', '', '', 'false', '62', '997');
INSERT INTO `tb_menus` VALUES ('66', '�˲Ź���', '�l', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('67', '��Ƹ�ƻ�', '&#xe642', 'plan/findplan.action', '', 'false', '66', '1000');
INSERT INTO `tb_menus` VALUES ('68', '��������', '�l', '', '', 'false', '0', '998');
INSERT INTO `tb_menus` VALUES ('69', '��������', '&#xe642', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('70', '�Ű����', '', 'duty/PaiBan.action', '', 'false', '69', '1000');
INSERT INTO `tb_menus` VALUES ('71', '��ι���', '', 'schedule/Ban.action', '', 'false', '69', '997');
INSERT INTO `tb_menus` VALUES ('72', '������������', '&#xe642', 'exam/Exam.action', '', 'false', '69', '999');
INSERT INTO `tb_menus` VALUES ('73', '��ǩ�ڼ���', '&#xe642', 'Festival/festival.action', '', 'false', '69', '998');
INSERT INTO `tb_menus` VALUES ('74', '���˿���', '&#xe642', 'GeRen/KaoQin.action', '', 'false', '68', '1000');
INSERT INTO `tb_menus` VALUES ('75', '����Ǽ�', '', 'schedule/test.action', '', 'false', '68', '999');
INSERT INTO `tb_menus` VALUES ('76', '��ٵǼ�', '', 'GeRen/QingJia.action', '', 'false', '68', '998');
INSERT INTO `tb_menus` VALUES ('77', '�Ӱ�Ǽ�', '', 'GeRen/JiaBan.action', '', 'false', '68', '997');
INSERT INTO `tb_menus` VALUES ('78', '����Ǽ�', '', 'GeRen/ChuChai.action', '', 'false', '68', '997');
INSERT INTO `tb_menus` VALUES ('79', '��Ƹ�ƻ�ɸѡ', '', 'plan/findplan0.action', '', 'false', '66', '998');
INSERT INTO `tb_menus` VALUES ('80', '�˲ſ�', '', 'talent/findtalent.action', '', 'false', '66', '997');
INSERT INTO `tb_menus` VALUES ('81', '��Ƹ��Աɸѡ', '', 'screen/findscreen.action', '', 'false', '66', '996');
INSERT INTO `tb_menus` VALUES ('82', '��Ƹ¼��', '', 'hire/findhire.action', '', 'false', '66', '995');
INSERT INTO `tb_menus` VALUES ('83', '��������', '&#xe642', '', '', 'false', '0', '997');
INSERT INTO `tb_menus` VALUES ('84', '������Ʒ', '', 'apply/find.action', '', 'false', '83', '1000');
INSERT INTO `tb_menus` VALUES ('85', '��Ʒ����', '&#xe642', 'apply/find2.action', '', 'false', '83', '999');
INSERT INTO `tb_menus` VALUES ('86', '��Ʒ��Ϣ', '', 'tree/findshop.action', '', 'false', '83', '998');
INSERT INTO `tb_menus` VALUES ('87', '�����ʼ�', '��', 'dept/mailfind.action', '', 'false', '68', '1000');
INSERT INTO `tb_menus` VALUES ('88', 'ͨѶ��', '&#xe642', 'address/find.action', '', 'false', '68', '1000');
INSERT INTO `tb_menus` VALUES ('89', '���ڼ�¼', '', 'GeRen/KaoQinJiLu.action', '', 'false', '68', '1000');
INSERT INTO `tb_menus` VALUES ('90', '����ͳ��', '', 'GeRen/KaoQinTongji.action', '', 'false', '69', '900');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_personxc
-- ----------------------------
INSERT INTO `tb_personxc` VALUES ('1', '1', '54254', '2000', '2000', '1000', '500', '600', '200', '32', null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', '��', null, null);
INSERT INTO `tb_personxc` VALUES ('4', '18', '5000', '400', '200', '100', '500', '400', '100', null, null, null, '400', '108', '80', '28', '56', '40', '16', '60', '60', '100', '80', '20', '20', '20', '32', '32', '0', null, null, null);
INSERT INTO `tb_personxc` VALUES ('5', '19', '5000', '400', '200', '100', '500', '400', '100', null, null, null, '400', '108', '80', '28', '56', '40', '16', '60', '60', '100', '80', '20', '20', '20', '32', '32', '0', null, null, null);
INSERT INTO `tb_personxc` VALUES ('6', '20', '5000', '400', '200', '100', '500', '400', '100', null, null, null, '400', '108', '80', '28', '56', '40', '16', '60', '60', '100', '80', '20', '20', '20', '32', '32', '0', null, null, null);
INSERT INTO `tb_personxc` VALUES ('7', '21', '65254', '6000', '3000', '2000', '1000', '200', '100', '21', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��', null, null);
INSERT INTO `tb_personxc` VALUES ('8', '22', '32024', '6000', '3000', '2000', '1000', '200', '100', '12', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��', null, null);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_roles
-- ----------------------------
INSERT INTO `tb_roles` VALUES ('1', '��������Ա', '��������Ա');
INSERT INTO `tb_roles` VALUES ('61', 'test', 'test');
INSERT INTO `tb_roles` VALUES ('62', 'ceo', '�����󲿷�Ȩ��');

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
INSERT INTO `tb_roles_menus` VALUES ('4', '61');
INSERT INTO `tb_roles_menus` VALUES ('9', '61');
INSERT INTO `tb_roles_menus` VALUES ('11', '61');
INSERT INTO `tb_roles_menus` VALUES ('14', '61');
INSERT INTO `tb_roles_menus` VALUES ('15', '61');
INSERT INTO `tb_roles_menus` VALUES ('16', '61');
INSERT INTO `tb_roles_menus` VALUES ('17', '61');
INSERT INTO `tb_roles_menus` VALUES ('18', '61');
INSERT INTO `tb_roles_menus` VALUES ('19', '61');
INSERT INTO `tb_roles_menus` VALUES ('20', '61');
INSERT INTO `tb_roles_menus` VALUES ('34', '61');
INSERT INTO `tb_roles_menus` VALUES ('42', '61');
INSERT INTO `tb_roles_menus` VALUES ('43', '61');
INSERT INTO `tb_roles_menus` VALUES ('44', '61');
INSERT INTO `tb_roles_menus` VALUES ('45', '61');
INSERT INTO `tb_roles_menus` VALUES ('46', '61');
INSERT INTO `tb_roles_menus` VALUES ('47', '61');
INSERT INTO `tb_roles_menus` VALUES ('48', '61');
INSERT INTO `tb_roles_menus` VALUES ('49', '61');
INSERT INTO `tb_roles_menus` VALUES ('50', '61');
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
INSERT INTO `tb_roles_menus` VALUES ('68', '62');
INSERT INTO `tb_roles_menus` VALUES ('74', '62');
INSERT INTO `tb_roles_menus` VALUES ('75', '62');
INSERT INTO `tb_roles_menus` VALUES ('76', '62');
INSERT INTO `tb_roles_menus` VALUES ('77', '62');
INSERT INTO `tb_roles_menus` VALUES ('78', '62');
INSERT INTO `tb_roles_menus` VALUES ('69', '62');
INSERT INTO `tb_roles_menus` VALUES ('70', '62');
INSERT INTO `tb_roles_menus` VALUES ('71', '62');
INSERT INTO `tb_roles_menus` VALUES ('72', '62');
INSERT INTO `tb_roles_menus` VALUES ('73', '62');
INSERT INTO `tb_roles_menus` VALUES ('83', '62');
INSERT INTO `tb_roles_menus` VALUES ('84', '62');
INSERT INTO `tb_roles_menus` VALUES ('85', '62');
INSERT INTO `tb_roles_menus` VALUES ('86', '62');
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
INSERT INTO `tb_safefactor` VALUES ('1', '���ϱ���ϵ��', '7', '20');
INSERT INTO `tb_safefactor` VALUES ('2', 'ҽ�Ʊ���ϵ��', '4', '10');
INSERT INTO `tb_safefactor` VALUES ('3', 'ʧҵ����ϵ��', '6', '15');
INSERT INTO `tb_safefactor` VALUES ('4', 'ס��������ϵ��', '5', '20');
INSERT INTO `tb_safefactor` VALUES ('5', '���˱���ϵ��', '0', '5');
INSERT INTO `tb_safefactor` VALUES ('6', '��������ϵ��', '0', '8');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_salaryflow
-- ----------------------------
INSERT INTO `tb_salaryflow` VALUES ('1', '2018-06-07', 'ϵͳ����Ա', '2018-10-05', '2018-10-19', '2018', '2018-10', '', '0');
INSERT INTO `tb_salaryflow` VALUES ('2', '2018-01-01', 'ϵͳ����Ա', '2018-02-02', '2018-02-02', '2018', '02-02', '����2018��1�·ݹ���', '0');
INSERT INTO `tb_salaryflow` VALUES ('3', '2018-06-16', 'ϵͳ����Ա', '2018-10-04', '2018-10-31', '2018', '2018-11', 'jjj', '0');
INSERT INTO `tb_salaryflow` VALUES ('4', '2018-06-08', 'ϵͳ����Ա', '2018-11-04', '2018-11-13', '2018', '2018-10', '����11��\r\n', '0');
INSERT INTO `tb_salaryflow` VALUES ('5', '2018-06-07', 'ϵͳ����Ա', '2018-10-04', '2018-10-25', '2019', '2018-10', '��������', '1');
INSERT INTO `tb_salaryflow` VALUES ('6', '2018-06-10', 'ϵͳ����Ա', '2018-06-16', '2018-06-14', '2018', '06-29', '����2018��6�·ݵĹ���', '1');
INSERT INTO `tb_salaryflow` VALUES ('7', '2018-06-24', 'ϵͳ����Ա', '2018-06-21', '2018-06-21', '2018', '06-16', '����2018��6�·ݵĹ���', '1');
INSERT INTO `tb_salaryflow` VALUES ('15', '2017-05-04', '������', '2018-11-02', '2018-12-02', '2018', '11', '11yue ', '1');
INSERT INTO `tb_salaryflow` VALUES ('16', '2017-05-04', 'arthur', '2018-11-02', '2018-12-25', '2018', '12', '6666666666666666666666666666666', '1');
INSERT INTO `tb_salaryflow` VALUES ('17', '2017-05-04', 'arthur', '2018-11-06', '2018-11-30', '2018', '11', '11�·ݹ���', '1');
INSERT INTO `tb_salaryflow` VALUES ('18', '2017-05-04', 'arthur', '2018-10-13', '2018-10-14', '2018', '10', '10�·ݹ���', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sal_data
-- ----------------------------
INSERT INTO `tb_sal_data` VALUES ('1', null, '3', '18', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('2', null, '5', '18', null, null, '50000', '2000', '2000', '3000', '1000', '1000', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('3', null, '5', '19', '78115', null, '70000', '1231', '132', '151', '489', '164', '5000', null, null, null, '20000', '5400', '4000', '1400', '2800', '2000', '800', '3000', '3000', '5000', '4000', '1000', '1000', '1000', '1600', '1600', '0', 'das');
INSERT INTO `tb_sal_data` VALUES ('4', null, '5', '20', null, null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��000');
INSERT INTO `tb_sal_data` VALUES ('5', null, '3', '19', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('6', null, '3', '20', null, null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('7', null, '15', '20', '3840', null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', 'tttt');
INSERT INTO `tb_sal_data` VALUES ('8', null, '16', '22', '61480', null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('9', null, '16', '20', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('10', null, '5', '22', '61480', null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('11', null, '17', '19', null, null, '2000', '2000', '2000', '2000', '2000', '2000', '2000', null, null, null, '50000', '13500', '10000', '3500.0000000000005', '7000', '5000', '2000', '7500', '7500', '12500', '10000', '2500', '2500', '2500', '4000', '4000', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('12', null, '17', '20', '3840', null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('13', null, '17', '22', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('14', null, '17', '1', null, null, '50000', '2000', '2000', '1000', '500', '600', '200', null, null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('15', null, '17', '18', null, null, '50000', '2000', '2000', '3000', '1000', '1000', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('16', null, '5', '1', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('17', null, '5', '21', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('18', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('19', null, null, '20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('20', null, '2', '1', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('21', null, '2', '18', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('22', null, '2', '19', null, null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('23', null, '2', '20', null, null, '4040', '40', '40', '40', '40', '40', '40', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('24', null, '2', '21', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('25', null, '2', '22', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('26', null, '3', '1', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('27', null, '3', '21', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('28', null, '3', '22', null, null, '50000', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('29', null, null, '18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('30', null, null, '19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('31', null, null, '21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('32', null, null, '22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tb_sal_data` VALUES ('33', null, '4', '1', null, null, '54254', '2000', '2000', '1000', '500', '600', '200', '32', null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('34', null, '4', '18', null, null, '35000', '500', '200', '100', '200', '200', '200', '32', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('35', null, '4', '19', null, null, '35000', '500', '200', '100', '200', '200', '200', '23', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('36', null, '4', '20', null, null, '35000', '500', '200', '100', '200', '200', '200', '21', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('37', null, '4', '21', null, null, '65254', '6000', '3000', '2000', '1000', '200', '100', '21', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('38', null, '4', '22', null, null, '32024', '6000', '3000', '2000', '1000', '200', '100', '12', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('39', null, '18', '22', null, null, '32024', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('40', null, '18', '1', null, null, '54254', '2000', '2000', '1000', '500', '600', '200', null, null, null, '5000', '1350', '1000', '350.00000000000006', '700', '500', '200', '750', '750', '1250', '1000', '250', '250', '250', '400', '400', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('41', null, '18', '18', null, null, '35000', '500', '200', '100', '200', '200', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('42', null, '18', '19', null, null, '35000', '999', '200', '100', '200', '200', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('43', null, '18', '20', null, null, '35000', '500', '200', '100', '200', '200', '200', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);
INSERT INTO `tb_sal_data` VALUES ('44', null, '18', '21', null, null, '65254', '6000', '3000', '2000', '1000', '200', '100', null, null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', '��');
INSERT INTO `tb_sal_data` VALUES ('45', null, '4', '25', null, null, '200', '50', '20', '20', '1', '2', '3', '5', null, null, '2000', '540', '400', '140', '280', '200', '80', '300', '300', '500', '400', '100', '100', '100', '160', '160', '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sal_item
-- ----------------------------
INSERT INTO `tb_sal_item` VALUES ('1', '1', '��������');
INSERT INTO `tb_sal_item` VALUES ('2', '1', '����');
INSERT INTO `tb_sal_item` VALUES ('3', '1', '����');
INSERT INTO `tb_sal_item` VALUES ('4', '1', '�����');
INSERT INTO `tb_sal_item` VALUES ('5', '2', '����');
INSERT INTO `tb_sal_item` VALUES ('6', '1', '���·�');
INSERT INTO `tb_sal_item` VALUES ('21', '3', '�ٵ��ۿ�');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_txgroup
-- ----------------------------
INSERT INTO `tb_txgroup` VALUES ('1', '1', '����');
INSERT INTO `tb_txgroup` VALUES ('2', '1', '����');
INSERT INTO `tb_txgroup` VALUES ('3', '1', 'ͬ��');
INSERT INTO `tb_txgroup` VALUES ('4', '1', 'Ա��');
INSERT INTO `tb_txgroup` VALUES ('5', '1', '����');

-- ----------------------------
-- Table structure for `tb_users`
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `e_mail` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL COMMENT '�ǳƣ�Ψһ',
  `password` varchar(50) NOT NULL,
  `sex` varchar(1) NOT NULL COMMENT '0:Ů��1:�У�2������',
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `e_code` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL COMMENT '0:δ���1��������2������',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('27', 'isduxd@qq.com', 'test', '96e79218965eb72c92a549dd5a330112', '0', '2018-03-25', '����ͨ�ݿƴ�ʮ�Ľ���', '17693109923', 'b3f28566dac54f86bd4f4c2ce36e23d8019', '2', '2018-03-25 14:48:48');
INSERT INTO `tb_users` VALUES ('28', '123@qq.com', '2113', '96e79218965eb72c92a549dd5a330112', '1', '2018-07-26', '123123', '17693109997', 'c6411671821c43ca926c032e51ded16a897', '1', '2018-07-27 09:59:16');
INSERT INTO `tb_users` VALUES ('29', 'sdf@163.com', '123123', '96e79218965eb72c92a549dd5a330112', '2', '2018-07-27', '123123', '17111111111', '92197e8f8a5647ae8be96fe2db555575147', '1', '2018-07-27 14:23:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tongji
-- ----------------------------
INSERT INTO `tongji` VALUES ('7', '1', 'admin', '26', '24', '8', '2', '30', '16', '4', '3', '3', '8');
INSERT INTO `tongji` VALUES ('8', '18', 'test', '26', '24', '8', '2', '30', '16', '2', '3', '4', '3');

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