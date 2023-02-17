/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2023-02-14 15:40:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bas_dict
-- ----------------------------
DROP TABLE IF EXISTS `bas_dict`;
CREATE TABLE `bas_dict` (
  `DICT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DICT_TYPE` varchar(255) DEFAULT NULL,
  `DICT_ITEM` varchar(255) DEFAULT NULL,
  `DICT_VALUE` varchar(255) DEFAULT NULL,
  `DICT_IS_EDITABLE` int(11) DEFAULT NULL,
  PRIMARY KEY (`DICT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bas_dict
-- ----------------------------
INSERT INTO `bas_dict` VALUES ('1', '企业客户等级', '普通客户', '1', '0');
INSERT INTO `bas_dict` VALUES ('2', '企业客户等级', '重点开发客户', '2', '0');
INSERT INTO `bas_dict` VALUES ('3', '企业客户等级', '大客户', '3', '0');
INSERT INTO `bas_dict` VALUES ('4', '企业客户等级', '合作伙伴', '4', '0');
INSERT INTO `bas_dict` VALUES ('5', '企业客户等级', '战略合作伙伴', '5', '0');
INSERT INTO `bas_dict` VALUES ('6', '服务类型', '咨询', '咨询', '1');
INSERT INTO `bas_dict` VALUES ('7', '服务类型', '投诉', '投诉', '1');
INSERT INTO `bas_dict` VALUES ('8', '服务类型', '建议', '建议', '1');
INSERT INTO `bas_dict` VALUES ('9', '地区', '北京', '1', '1');
INSERT INTO `bas_dict` VALUES ('10', '地区', '华北', '2', '1');
INSERT INTO `bas_dict` VALUES ('11', '地区', '华南', '3', '1');
INSERT INTO `bas_dict` VALUES ('12', '地区', '华东', '4', '1');
INSERT INTO `bas_dict` VALUES ('13', '地区', '华西', '5', '1');
INSERT INTO `bas_dict` VALUES ('14', '地区', '中部', '6', '1');
INSERT INTO `bas_dict` VALUES ('15', '满意度', '☆☆☆☆☆', '1', '0');
INSERT INTO `bas_dict` VALUES ('16', '满意度', '☆☆☆☆', '2', '0');
INSERT INTO `bas_dict` VALUES ('17', '满意度', '☆☆☆', '3', '0');
INSERT INTO `bas_dict` VALUES ('18', '满意度', '☆☆', '4', '0');
INSERT INTO `bas_dict` VALUES ('19', '满意度', '☆', '5', '0');
INSERT INTO `bas_dict` VALUES ('20', '信用度', '☆☆☆☆☆', '1', '0');
INSERT INTO `bas_dict` VALUES ('21', '信用度', '☆☆☆☆', '2', '0');
INSERT INTO `bas_dict` VALUES ('22', '信用度', '☆☆☆', '3', '0');
INSERT INTO `bas_dict` VALUES ('23', '信用度', '☆☆', '4', '0');
INSERT INTO `bas_dict` VALUES ('24', '信用度', '☆', '5', '0');
INSERT INTO `bas_dict` VALUES ('25', '流失等级', '预警', '1', '0');
INSERT INTO `bas_dict` VALUES ('26', '流失等级', '暂缓流失', '2', '0');
INSERT INTO `bas_dict` VALUES ('27', '流失等级', '确认流失', '3', '0');
INSERT INTO `bas_dict` VALUES ('28', '权限父模块编号', '营销管理', '1', '0');
INSERT INTO `bas_dict` VALUES ('29', '权限父模块编号', '客户管理', '2', '0');
INSERT INTO `bas_dict` VALUES ('30', '权限父模块编号', '服务管理', '3', '0');
INSERT INTO `bas_dict` VALUES ('31', '权限父模块编号', '统计报表', '4', '0');
INSERT INTO `bas_dict` VALUES ('32', '权限父模块编号', '基础数据', '5', '0');
INSERT INTO `bas_dict` VALUES ('33', '权限父模块编号', '权限管理', '6', '0');

-- ----------------------------
-- Table structure for cst_activity
-- ----------------------------
DROP TABLE IF EXISTS `cst_activity`;
CREATE TABLE `cst_activity` (
  `ATV_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ATV_DATE` date DEFAULT NULL,
  `ATV_PLACE` varchar(255) DEFAULT NULL,
  `ATV_TITLE` varchar(255) DEFAULT NULL,
  `ATV_DESC` varchar(255) DEFAULT NULL,
  `ATV_MEMO` varchar(255) DEFAULT NULL,
  `ATV_CUST_NO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ATV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_activity
-- ----------------------------

-- ----------------------------
-- Table structure for cst_customer
-- ----------------------------
DROP TABLE IF EXISTS `cst_customer`;
CREATE TABLE `cst_customer` (
  `CUST_NO` varchar(255) NOT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `CUST_REGION` int(10) DEFAULT NULL,
  `CUST_LEVEL` int(10) DEFAULT NULL,
  `CUST_SATISFY` int(10) DEFAULT NULL,
  `CUST_CREDIT` int(10) DEFAULT NULL,
  `CUST_ADDR` varchar(255) DEFAULT NULL,
  `CUST_ZIP` varchar(255) DEFAULT NULL,
  `CUST_TEL` varchar(255) DEFAULT NULL,
  `CUST_FAX` varchar(255) DEFAULT NULL,
  `CUST_WEBSITE` varchar(255) DEFAULT NULL,
  `CUST_LICENCE_NO` varchar(255) DEFAULT NULL,
  `CUST_CHIEFTAIN` varchar(255) DEFAULT NULL,
  `CUST_BANKROLL` int(10) DEFAULT NULL,
  `CUST_TURNOVER` int(10) DEFAULT NULL,
  `CUST_BANK` varchar(255) DEFAULT NULL,
  `CUST_BANK_ACCOUNT` varchar(255) DEFAULT NULL,
  `CUST_LOCAL_TAX_NO` varchar(255) DEFAULT NULL,
  `CUST_NATIONAL_TAX_NO` varchar(255) DEFAULT NULL,
  `CUST_STATUS` int(10) DEFAULT NULL,
  `CUST_MANAGER_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CUST_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_customer
-- ----------------------------

-- ----------------------------
-- Table structure for cst_linkman
-- ----------------------------
DROP TABLE IF EXISTS `cst_linkman`;
CREATE TABLE `cst_linkman` (
  `LKM_ID` int(10) NOT NULL AUTO_INCREMENT,
  `LKM_NAME` varchar(255) DEFAULT NULL,
  `LKM_SEX` varchar(255) DEFAULT NULL,
  `LKM_POSTION` varchar(255) DEFAULT NULL,
  `LKM_TEL` varchar(255) DEFAULT NULL,
  `LKM_MOBILE` varchar(255) DEFAULT NULL,
  `LKM_MEMO` varchar(255) DEFAULT NULL,
  `LKM_CUST_NO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LKM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_linkman
-- ----------------------------

-- ----------------------------
-- Table structure for cst_lost
-- ----------------------------
DROP TABLE IF EXISTS `cst_lost`;
CREATE TABLE `cst_lost` (
  `LST_ID` int(10) NOT NULL AUTO_INCREMENT,
  `LST_LAST_ORDER_DATE` date DEFAULT NULL,
  `LST_LOST_DATE` date DEFAULT NULL,
  `LST_DELAY` varchar(255) DEFAULT NULL,
  `LST_REASON` varchar(255) DEFAULT NULL,
  `LST_STATUS` int(10) DEFAULT NULL,
  `LST_CUST_NO` varchar(255) DEFAULT NULL,
  `LST_CUST_MANAGER_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`LST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_lost
-- ----------------------------

-- ----------------------------
-- Table structure for cst_service
-- ----------------------------
DROP TABLE IF EXISTS `cst_service`;
CREATE TABLE `cst_service` (
  `SVR_ID` int(10) NOT NULL AUTO_INCREMENT,
  `SVR_TYPE` varchar(255) DEFAULT NULL,
  `SVR_TITLE` varchar(255) DEFAULT NULL,
  `SVR_CUST_NO` varchar(255) DEFAULT NULL,
  `SVR_STATUS` varchar(255) DEFAULT NULL,
  `SVR_REQUEST` varchar(255) DEFAULT NULL,
  `SVR_CREATE_ID` int(10) DEFAULT NULL,
  `SVR_CREATE_DATE` date DEFAULT NULL,
  `SVR_DUE_DATE` date DEFAULT NULL,
  `SVR_DEAL` varchar(255) DEFAULT NULL,
  `SVR_DEAL_ID` int(10) DEFAULT NULL,
  `SVR_DEAL_DATE` date DEFAULT NULL,
  `SVR_RESULT` varchar(255) DEFAULT NULL,
  `SVR_SATISFY` int(10) DEFAULT NULL,
  PRIMARY KEY (`SVR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cst_service
-- ----------------------------

-- ----------------------------
-- Table structure for customerservice
-- ----------------------------
DROP TABLE IF EXISTS `customerservice`;
CREATE TABLE `customerservice` (
  `CUSTOMERID` varchar(255) NOT NULL,
  `SERVICEID` int(10) NOT NULL,
  PRIMARY KEY (`SERVICEID`,`CUSTOMERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customerservice
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ODR_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ODR_DATE` date DEFAULT NULL,
  `ODR_ADDR` varchar(255) DEFAULT NULL,
  `ODR_STATUS` varchar(255) DEFAULT NULL,
  `ODR_CUST_NO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ODR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for orders_line
-- ----------------------------
DROP TABLE IF EXISTS `orders_line`;
CREATE TABLE `orders_line` (
  `ODD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ODD_COUNT` int(10) DEFAULT NULL,
  `ODD_UNIT` varchar(255) DEFAULT NULL,
  `ODD_PRICE` double DEFAULT NULL,
  `ODD_ORDER_ID` int(10) DEFAULT NULL,
  `ODD_PROD_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ODD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_line
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `PROD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PROD_NAME` varchar(255) DEFAULT NULL,
  `PROD_TYPE` varchar(255) DEFAULT NULL,
  `PROD_BATCH` varchar(255) DEFAULT NULL,
  `PROD_UNIT` varchar(255) DEFAULT NULL,
  `PROD_PRICE` double DEFAULT NULL,
  `PROD_MEMO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for sal_chance
-- ----------------------------
DROP TABLE IF EXISTS `sal_chance`;
CREATE TABLE `sal_chance` (
  `CHC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `CHC_SOURCE` varchar(255) DEFAULT NULL,
  `CHC_CUST_NAME` varchar(255) DEFAULT NULL,
  `CHC_TITLE` varchar(255) DEFAULT NULL,
  `CHC_RATE` int(10) DEFAULT NULL,
  `CHC_LINKMAN` varchar(255) DEFAULT NULL,
  `CHC_TEL` varchar(255) DEFAULT NULL,
  `CHC_DESC` varchar(255) DEFAULT NULL,
  `CHC_CREATE_DATE` date DEFAULT NULL,
  `CHC_DUE_DATE` date DEFAULT NULL,
  `CHC_STATUS` int(10) DEFAULT NULL,
  `CHC_CREATE_ID` varchar(10) DEFAULT NULL,
  `CHC_DUE_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CHC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sal_chance
-- ----------------------------
INSERT INTO `sal_chance` VALUES ('1', '机会来源', '客户名称', '概要', '10', '联系人', '联系电话', '机会描述', '2022-01-19', '2022-01-20', '2', 'hr0001', 'hr0002');
INSERT INTO `sal_chance` VALUES ('4', '网路', '李思思', '概要', '20', '刘先生', '123123', '好几户', '2022-01-08', '2022-12-12', '2', 'hr0001', 'hr0007');
INSERT INTO `sal_chance` VALUES ('5', '网路', '李思思', '概要', '20', '刘先生', '123123', '好几户', '2022-01-08', '2022-01-08', '2', 'hr0001', 'hr0005');
INSERT INTO `sal_chance` VALUES ('6', '雷院', '张先生', '概要', '30', '张先生', '23651222', '好机会', '2022-01-08', '2022-01-12', '2', 'hr0001', 'hr0007');
INSERT INTO `sal_chance` VALUES ('7', '雷院', '张三丰', '3123', '50', '李思思', '', '好机会', '2022-01-10', '2022-01-12', '2', 'hr0004', 'hr0007');
INSERT INTO `sal_chance` VALUES ('8', '来源', '刘思思', '概要', null, '张先生', '1231245123', '机会', '2022-01-12', '2022-12-12', '2', 'hr0009', 'hr0003');
INSERT INTO `sal_chance` VALUES ('9', '机会', '华瑞公司', '概要', null, '张先生', '25122122', '描述2222', '2022-01-12', '2022-01-12', '2', 'hr0009', 'hr0009');
INSERT INTO `sal_chance` VALUES ('11', '朋友介绍', '刘德华', '想搞100台电脑', '80', '刘先生', '110110', '钱多人傻', '2022-01-13', '2022-01-13', '2', 'hr0003', 'hr0007');
INSERT INTO `sal_chance` VALUES ('12', '小道消息', '张的电话', '3123', '50', '哈哈哈', '123123123', '123123123123', '2022-01-13', '2022-01-13', '2', 'hr0004', 'hr0012');
INSERT INTO `sal_chance` VALUES ('13', '机会来源', '张先生', '机会概要', '100', '刘先生', '18684870531', '好东西', '2022-12-12', null, '1', 'hr0001', '');
INSERT INTO `sal_chance` VALUES ('14', '机会来源', '吴先生', '机会概要', '20', '刘先生', '18684870531', '啊实打实大所多', '2022-12-12', '2022-12-12', '2', 'hr0001', 'hr0007');

-- ----------------------------
-- Table structure for sal_plan
-- ----------------------------
DROP TABLE IF EXISTS `sal_plan`;
CREATE TABLE `sal_plan` (
  `PLA_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PLA_DATE` date DEFAULT NULL,
  `PLA_TODO` varchar(255) DEFAULT NULL,
  `PLA_RESULT` varchar(255) DEFAULT NULL,
  `PLA_CHC_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`PLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sal_plan
-- ----------------------------

-- ----------------------------
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `STK_ID` int(10) NOT NULL AUTO_INCREMENT,
  `STK_WAREHOUSE` varchar(255) DEFAULT NULL,
  `STK_WARE` varchar(255) DEFAULT NULL,
  `STK_COUNT` int(10) DEFAULT NULL,
  `STK_PROD_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`STK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage
-- ----------------------------

-- ----------------------------
-- Table structure for sys_right
-- ----------------------------
DROP TABLE IF EXISTS `sys_right`;
CREATE TABLE `sys_right` (
  `RIGHT_CODE` int(255) NOT NULL AUTO_INCREMENT,
  `RIGHT_PARENT_CODE` int(255) DEFAULT NULL,
  `RIGHT_TYPE` varchar(255) DEFAULT NULL,
  `RIGHT_TEXT` varchar(255) DEFAULT NULL,
  `RIGHT_URL` varchar(255) DEFAULT NULL,
  `RIGHT_TIP` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RIGHT_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_right
-- ----------------------------
INSERT INTO `sys_right` VALUES ('1', '0', 'Folder', '营销管理', '', 'qqq');
INSERT INTO `sys_right` VALUES ('2', '1', 'Document', '销售机会管理', '~sale/list.html', 'admin:save');
INSERT INTO `sys_right` VALUES ('3', '1', 'Document', '客户开发计划', '~sale/dev.html', 'admin:update');
INSERT INTO `sys_right` VALUES ('4', '0', 'Folder', '客户管理', '', '客户管理...');
INSERT INTO `sys_right` VALUES ('5', '4', 'Document', '客户信息管理', '', '客户信息管理...');
INSERT INTO `sys_right` VALUES ('6', '4', 'Document', '客户流失管理', '', '客户流失管理...');
INSERT INTO `sys_right` VALUES ('7', '0', 'Folder', '服务管理', '', '客户服务管理...');
INSERT INTO `sys_right` VALUES ('8', '7', 'Document', '服务创建', '', '服务创建...');
INSERT INTO `sys_right` VALUES ('9', '7', 'Document', '服务分配', '', '服务分配...');
INSERT INTO `sys_right` VALUES ('10', '7', 'Document', '服务处理', '', '服务处理...');
INSERT INTO `sys_right` VALUES ('11', '7', 'Document', '服务反馈', '', '服务反馈...');
INSERT INTO `sys_right` VALUES ('12', '0', 'Folder', '统计报表', null, null);
INSERT INTO `sys_right` VALUES ('13', '12', 'Document', '用户贡献分析', null, null);
INSERT INTO `sys_right` VALUES ('14', '12', 'Document', '用户构成分析', null, null);
INSERT INTO `sys_right` VALUES ('15', '12', 'Document', '用户服务分析', null, null);
INSERT INTO `sys_right` VALUES ('16', '12', 'Document', '用户流失分析', null, null);
INSERT INTO `sys_right` VALUES ('17', '0', 'Folder', '基础数据', null, null);
INSERT INTO `sys_right` VALUES ('18', '17', 'Document', '数字字典管理', null, null);
INSERT INTO `sys_right` VALUES ('19', '17', 'Document', '查询产品信息', null, null);
INSERT INTO `sys_right` VALUES ('20', '17', 'Document', '查询库存', null, null);
INSERT INTO `sys_right` VALUES ('21', '0', 'Folder', '权限管理', null, 'www');
INSERT INTO `sys_right` VALUES ('22', '21', 'Document', '用户管理', '~right/user/user.html', 'admin:update');
INSERT INTO `sys_right` VALUES ('23', '21', 'Document', '角色权限管理', '~right/role/role.html', 'query');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(255) DEFAULT NULL,
  `ROLE_DESC` varchar(255) DEFAULT NULL,
  `ROLE_FLAG` int(10) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', 'admin', '1');
INSERT INTO `sys_role` VALUES ('2', '销售主管', '销售主管', '1');
INSERT INTO `sys_role` VALUES ('3', '高管', '高管妹妹', '1');
INSERT INTO `sys_role` VALUES ('4', '客户经理', '客户经理', '1');
INSERT INTO `sys_role` VALUES ('25', '测试', '测试', '1');
INSERT INTO `sys_role` VALUES ('26', '测试1', '测试备注', '1');

-- ----------------------------
-- Table structure for sys_role_right
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_right`;
CREATE TABLE `sys_role_right` (
  `RF_ID` int(10) NOT NULL AUTO_INCREMENT,
  `RF_ROLE_ID` int(10) NOT NULL,
  `RF_RIGHT_CODE` int(255) NOT NULL,
  PRIMARY KEY (`RF_ID`),
  UNIQUE KEY `fk_roleright` (`RF_ROLE_ID`,`RF_RIGHT_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_right
-- ----------------------------
INSERT INTO `sys_role_right` VALUES ('241', '1', '1');
INSERT INTO `sys_role_right` VALUES ('242', '1', '2');
INSERT INTO `sys_role_right` VALUES ('243', '1', '3');
INSERT INTO `sys_role_right` VALUES ('247', '1', '4');
INSERT INTO `sys_role_right` VALUES ('248', '1', '5');
INSERT INTO `sys_role_right` VALUES ('249', '1', '6');
INSERT INTO `sys_role_right` VALUES ('244', '1', '21');
INSERT INTO `sys_role_right` VALUES ('245', '1', '22');
INSERT INTO `sys_role_right` VALUES ('246', '1', '23');
INSERT INTO `sys_role_right` VALUES ('255', '25', '1');
INSERT INTO `sys_role_right` VALUES ('256', '25', '2');
INSERT INTO `sys_role_right` VALUES ('257', '25', '3');
INSERT INTO `sys_role_right` VALUES ('258', '25', '4');
INSERT INTO `sys_role_right` VALUES ('259', '25', '5');
INSERT INTO `sys_role_right` VALUES ('260', '25', '6');
INSERT INTO `sys_role_right` VALUES ('261', '26', '1');
INSERT INTO `sys_role_right` VALUES ('262', '26', '2');
INSERT INTO `sys_role_right` VALUES ('263', '26', '4');
INSERT INTO `sys_role_right` VALUES ('264', '26', '6');
INSERT INTO `sys_role_right` VALUES ('265', '26', '7');
INSERT INTO `sys_role_right` VALUES ('266', '26', '8');
INSERT INTO `sys_role_right` VALUES ('267', '26', '9');
INSERT INTO `sys_role_right` VALUES ('268', '26', '10');
INSERT INTO `sys_role_right` VALUES ('269', '26', '11');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `USR_ID` varchar(10) NOT NULL,
  `USR_NAME` varchar(255) DEFAULT NULL,
  `USR_PASSWORD` varchar(255) DEFAULT NULL,
  `USR_FLAG` int(10) DEFAULT NULL,
  `USR_ROLE_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_name_user` (`USR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'hr0001', '黄造时', '123', '1', '1');
INSERT INTO `sys_user` VALUES ('2', 'hr0002', '李思思', '123', '1', '3');
INSERT INTO `sys_user` VALUES ('3', 'hr0003', '王思思', '123', '1', '4');
INSERT INTO `sys_user` VALUES ('4', 'hr0004', '张三', '123', '2', '2');
INSERT INTO `sys_user` VALUES ('6', 'hr0005', '吴征宇', '123', '2', '4');
INSERT INTO `sys_user` VALUES ('7', 'hr0007', '铁子哥3', '1111', '1', '4');
INSERT INTO `sys_user` VALUES ('8', 'hr0008', '海王', '123', '1', '4');
INSERT INTO `sys_user` VALUES ('9', 'hr0009', '刘宁', '123', '1', '2');
INSERT INTO `sys_user` VALUES ('10', 'hr0010', '哈哈哈', '123', '2', '1');
INSERT INTO `sys_user` VALUES ('11', 'hr0011', '哈哈哈', '123', '1', '4');
INSERT INTO `sys_user` VALUES ('12', 'hr0012', '周导演2', '123', '1', '2');
INSERT INTO `sys_user` VALUES ('13', 'hr0013', '刘婵2', '123', '1', '4');
INSERT INTO `sys_user` VALUES ('14', 'hr0014', '张学友', '123', '1', '1');
INSERT INTO `sys_user` VALUES ('15', 'hr0015', '周杰伦', '123', '2', '4');
INSERT INTO `sys_user` VALUES ('16', 'hr0016', '张学良', '123', '1', '2');
