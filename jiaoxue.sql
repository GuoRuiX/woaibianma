/*
Navicat MySQL Data Transfer

Source Server         : TestMySQl
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : jiaoxue

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-12-03 15:43:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_image
-- ----------------------------
DROP TABLE IF EXISTS `base_image`;
CREATE TABLE `base_image` (
  `id` bigint(20) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `pathimage` varchar(255) DEFAULT NULL,
  `proxypath` varchar(255) DEFAULT NULL,
  `goodsid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_image
-- ----------------------------
INSERT INTO `base_image` VALUES ('1812031336320006', '521.png', 'E:/IMAGE/2018-12-03/521.png', '/2018-12-03/521.png', 'E:/IMAGE', null);
INSERT INTO `base_image` VALUES ('1812031336330007', 'forme.jpg', 'E:/IMAGE/2018-12-03/forme.jpg', '/2018-12-03/forme.jpg', 'E:/IMAGE', null);
INSERT INTO `base_image` VALUES ('1812031336330008', '100.jpg', 'E:/IMAGE/2018-12-03/100.jpg', '/2018-12-03/100.jpg', 'E:/IMAGE', null);

-- ----------------------------
-- Table structure for base_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_menu`;
CREATE TABLE `base_menu` (
  `id` bigint(20) NOT NULL COMMENT '菜单表',
  `version` int(255) DEFAULT NULL,
  `code` bigint(20) DEFAULT NULL,
  `menuName` varchar(255) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parentCode` bigint(20) DEFAULT NULL,
  `leval` int(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_menu
-- ----------------------------
INSERT INTO `base_menu` VALUES ('1', '10', '1', '基础设置', null, null, null, '1', '2018-04-20 15:04:27');
INSERT INTO `base_menu` VALUES ('2', '10', '2', '菜单管理', null, null, '1', '2', '2018-04-20 18:32:21');
INSERT INTO `base_menu` VALUES ('3', '10', '3', '菜单配置', null, '/login/loginContro/menuList.dhtml', '2', '3', '2018-04-20 18:32:53');
INSERT INTO `base_menu` VALUES ('4', '10', '4', '用户管理', null, null, '1', '2', '2018-04-20 18:34:19');
INSERT INTO `base_menu` VALUES ('5', '13', '5', '编辑用户', '', '/userList.dhtml', '4', '3', '2018-11-30 16:24:38');
INSERT INTO `base_menu` VALUES ('6', '10', '6', '角色管理', null, null, '1', '2', '2018-04-20 18:35:49');
INSERT INTO `base_menu` VALUES ('7', '10', '7', '角色管理', null, '/roleList.dhtml', '6', '3', '2018-04-20 18:37:53');
INSERT INTO `base_menu` VALUES ('1804301117440000', '12', '1804301117440001', 'Test', '', '/getRedis.dhtml', '2', '3', '2018-04-30 11:20:39');
INSERT INTO `base_menu` VALUES ('1805011856420000', '11', '1805011856420001', '统计测试', '', '/login/loginContro/dingShiTask.dhtml', '1804290934260001', '3', '2018-05-01 19:03:32');
INSERT INTO `base_menu` VALUES ('1811252337400000', '10', '1811252337400001', '你好的', 'ewdewe', 'efewfe', '1804281909580003', '3', '2018-11-25 23:37:40');
INSERT INTO `base_menu` VALUES ('1811261441580000', '10', '1811261441580001', '测试', 'dsadsa', '菜单树', '6', '3', '2018-11-26 14:41:58');
INSERT INTO `base_menu` VALUES ('1811300923490000', '10', '1811300923490001', 'test', 'test', 'tets', '2', '3', '2018-11-30 09:23:49');
INSERT INTO `base_menu` VALUES ('1811301452550000', '10', '1811301452550001', '教课案例', ' ', ' ', null, '1', '2018-11-30 14:52:55');
INSERT INTO `base_menu` VALUES ('1811301556250000', '12', '1811301556250001', '商品管理', '', '1', '1811301452550001', '2', '2018-12-01 20:19:44');
INSERT INTO `base_menu` VALUES ('1812012020090000', '10', '1812012020090001', '品牌管理', '1', '1', '1811301556250001', '3', '2018-12-01 20:20:09');
INSERT INTO `base_menu` VALUES ('1812012020280002', '10', '1812012020280003', '品类管理', '1', '1', '1811301556250001', '3', '2018-12-01 20:20:28');
INSERT INTO `base_menu` VALUES ('1812012020420004', '10', '1812012020420005', '商品管理', '3', '3', '1811301556250001', '3', '2018-12-01 20:20:42');
INSERT INTO `base_menu` VALUES ('1812021305280000', '12', '1812021305280001', '上传案例', '', ' /toUploadView.dhtml', '1811301556250001', '3', '2018-12-02 14:45:18');
INSERT INTO `base_menu` VALUES ('1812031333090000', '10', '1812031333090001', '考试案例', ' ', ' ', null, '1', '2018-12-03 13:33:09');
INSERT INTO `base_menu` VALUES ('1812031334180002', '10', '1812031334180003', '12月考试', ' ', ' ', '1812031333090001', '2', '2018-12-03 13:34:18');
INSERT INTO `base_menu` VALUES ('1812031335150004', '10', '1812031335150005', '第一周周考', 'dsadsa', '566666', '1812031334180003', '3', '2018-12-03 13:35:15');

-- ----------------------------
-- Table structure for base_role
-- ----------------------------
DROP TABLE IF EXISTS `base_role`;
CREATE TABLE `base_role` (
  `id` bigint(20) NOT NULL COMMENT '这是角色表',
  `name` varchar(255) DEFAULT NULL COMMENT '角色表',
  `miaoshu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_role
-- ----------------------------
INSERT INTO `base_role` VALUES ('35', '354', '354');
INSERT INTO `base_role` VALUES ('68', '687', '68768');
INSERT INTO `base_role` VALUES ('87', '687', '68768');
INSERT INTO `base_role` VALUES ('243', '6786', '短纤维王权二无');
INSERT INTO `base_role` VALUES ('687', '687687', '678UK加密狗号');
INSERT INTO `base_role` VALUES ('1111', '管理员', '我是管理员');
INSERT INTO `base_role` VALUES ('6876', '68768', '87');
INSERT INTO `base_role` VALUES ('7678', '687', '687687');
INSERT INTO `base_role` VALUES ('21657', '是的深V是的', '的参数传递删除');
INSERT INTO `base_role` VALUES ('45345', '摄氏度所产生的', '4发给你发到公司');
INSERT INTO `base_role` VALUES ('68768', '687', '687');
INSERT INTO `base_role` VALUES ('74565', '公司人格上', '啊啊是否对山东省');
INSERT INTO `base_role` VALUES ('345354', '354', '354');
INSERT INTO `base_role` VALUES ('873983', '39898', '范围分为范德萨范德萨');

-- ----------------------------
-- Table structure for base_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_role_menu`;
CREATE TABLE `base_role_menu` (
  `id` bigint(20) NOT NULL COMMENT '这是角色菜单关系表',
  `version` int(255) DEFAULT NULL,
  `role_id` varchar(20) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL COMMENT '角色菜单表',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_role_menu
-- ----------------------------
INSERT INTO `base_role_menu` VALUES ('1543815333533', null, '1111', '4', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815333552', null, '1111', '3', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815333610', null, '1111', '2', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815333640', null, '1111', '1', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815333864', null, '1111', '1811261441580000', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334027', null, '1111', '1812021305280000', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334039', null, '1111', '6', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334055', null, '1111', '7', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334062', null, '1111', '5', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334078', null, '1111', '1812012020420004', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334090', null, '1111', '1812031335150004', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334091', null, '1111', '1812031333090000', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334264', null, '1111', '1812012020280002', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334368', null, '1111', '1812012020090000', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334369', null, '1111', '1812031334180002', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334374', null, '1111', '1811301452550000', '2018-12-03 13:35:33');
INSERT INTO `base_role_menu` VALUES ('1543815334525', null, '1111', '1811301556250000', '2018-12-03 13:35:33');

-- ----------------------------
-- Table structure for base_user
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `id` bigint(20) NOT NULL COMMENT '用户表',
  `version` int(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `loginName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `buMen` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user
-- ----------------------------
INSERT INTO `base_user` VALUES ('1', null, '张三', 'zhangsan', '830D11F7DB89F709FDC4282756886E86', null, '1501912909141', 'cascade', null);
INSERT INTO `base_user` VALUES ('2', null, '李四', '张三2', '56b291d6ed9b9cb8e2d3dc09cb6377b9', null, '这是哪个', '大叔大婶', null);
INSERT INTO `base_user` VALUES ('3', null, '张三333333', 'zhangsan133', '3543', null, '345333', '35435433', null);
INSERT INTO `base_user` VALUES ('4', null, '赵亚利', 'zyl', '23432', null, '顺丰', '是的', null);
INSERT INTO `base_user` VALUES ('5', null, '赵亚利2', 'zyl2', '测试的', null, '测试2', '查s', null);
INSERT INTO `base_user` VALUES ('6', null, '赵亚利3', 'zyl3', '稍等', null, '是的3', '是的v33', null);
INSERT INTO `base_user` VALUES ('7', null, 'zyl', '赵亚利', 'v山地', null, '嘘嘘嘘', '啦啦', null);
INSERT INTO `base_user` VALUES ('8', null, 'zyl', '赵亚利2', '废物', null, '师生', '对对', null);
INSERT INTO `base_user` VALUES ('9', null, '很反感', '的打的费', 'v地方', null, '的的', 'v地方', null);
INSERT INTO `base_user` VALUES ('10', null, '人格个人', 'v山vvv', '是洒水车', null, '查', '啊啊测试', null);
INSERT INTO `base_user` VALUES ('11', null, '全为未访问v', 'vwe', '舞文玩法', null, '额的', '地方去玩', null);
INSERT INTO `base_user` VALUES ('12', null, '张三', 'zhangsan1', '745966536bed050935a5adbe3dd378e1', '', '1501912909141', 'cascade', '2017-09-30 01:10:53');
INSERT INTO `base_user` VALUES ('13', null, '人格个人', 'v山vvv', '是洒水车', '', '查', '啊啊测试', '2017-09-30 01:11:22');
INSERT INTO `base_user` VALUES ('14', null, '张三3', 'zhangsan1', '3543', '', '3453', '354354', '2017-09-30 01:12:20');
INSERT INTO `base_user` VALUES ('15', null, '按时', '打算', '23432', '', '发顺丰', '是的', '2017-09-30 01:12:23');
INSERT INTO `base_user` VALUES ('51', null, '测试的', '测试的', '测试的', '', '测试', '查', '2017-09-30 01:12:25');
INSERT INTO `base_user` VALUES ('61', null, '发送到', '稍等', '稍等', '', '是的v', '是的v', '2017-09-30 01:12:27');
INSERT INTO `base_user` VALUES ('71', null, 'v山地', 'v山地', 'v山地', '', '续传', 'v山地', '2017-09-30 01:12:29');
INSERT INTO `base_user` VALUES ('81', null, '问问群二', '废物', '废物', '', '访问的', '是的v', '2017-09-30 01:12:31');
INSERT INTO `base_user` VALUES ('91', null, '很反感', '的打的费', 'v地方', '', '的的', 'v地方', '2017-09-30 01:12:33');
INSERT INTO `base_user` VALUES ('101', null, '人格个人', 'v山vvv', '是洒水车', '', '查', '啊啊测试', '2017-09-30 01:12:36');
INSERT INTO `base_user` VALUES ('111', null, '全为未访问v', 'vwe', '舞文玩法', '', '额的', '地方去玩', '2017-09-30 01:12:39');
INSERT INTO `base_user` VALUES ('1523611695431', '222', '张三', 'uu', '11111111', null, '部门', '描述', '2018-04-13 17:28:15');
INSERT INTO `base_user` VALUES ('1812031506410000', '10', 'YY语音', 'uuuuuu', '830D11F7DB89F709FDC4282756886E86', null, null, '123456', '2018-12-03 15:06:41');
INSERT INTO `base_user` VALUES ('1812031541050000', '10', '你好世界', 'helloworld', '830D11F7DB89F709FDC4282756886E86', null, null, '123456', '2018-12-03 15:41:05');

-- ----------------------------
-- Table structure for base_user_image
-- ----------------------------
DROP TABLE IF EXISTS `base_user_image`;
CREATE TABLE `base_user_image` (
  `id` bigint(20) NOT NULL,
  `path` varchar(255) DEFAULT NULL COMMENT '图片保存的真实目录',
  `proxypath` varchar(255) DEFAULT NULL COMMENT '图片的代理路径',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `userid` bigint(20) NOT NULL COMMENT '用户的ID',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user_image
-- ----------------------------
INSERT INTO `base_user_image` VALUES ('1812031506410001', 'E:/IMAGE/USER/2018-12-03/uuuuuu-100.jpg', '/USER/2018-12-03/uuuuuu-100.jpg', 'uuuuuu-100.jpg', '1812031506410000', '2018-12-03 15:06:41');
INSERT INTO `base_user_image` VALUES ('1812031541050001', 'E:/IMAGE/USER/2018-12-03/helloworld-forme.jpg', '/USER/2018-12-03/helloworld-forme.jpg', 'helloworld-forme.jpg', '1812031541050000', '2018-12-03 15:41:05');

-- ----------------------------
-- Table structure for base_user_role
-- ----------------------------
DROP TABLE IF EXISTS `base_user_role`;
CREATE TABLE `base_user_role` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user_role
-- ----------------------------
INSERT INTO `base_user_role` VALUES ('1', '1', '1111');

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` char(32) NOT NULL DEFAULT '',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `identity` char(32) DEFAULT NULL,
  `regist_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('b198d93aab1a451596642ccc76c19d8a', 'admin', '$2a$10$lZXmiYnf5cfRgZQL1RFYcOXIhUjVDbuYkeGss48/u/d2bR5RODWD2', 'ADMIN', '2018-11-25 18:32:15');

-- ----------------------------
-- Table structure for tb_employee
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `id` char(32) NOT NULL COMMENT '本平台ID',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `gender` int(11) DEFAULT NULL COMMENT '性别 0：未知、1：男、2：女',
  `city` varchar(100) DEFAULT NULL COMMENT '所在市',
  `hiredate` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户的注册时间',
  `introduction` varchar(255) DEFAULT NULL COMMENT '用户个人简介',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_employee
-- ----------------------------
INSERT INTO `tb_employee` VALUES ('00184c921c76495190b921efa7343668', '百般疼爱', '7b4eed9a913a48689f1cd5985357e817', '1', '南阳', '2018-10-21 22:04:48', null);
INSERT INTO `tb_employee` VALUES ('00c8d06332c74a8fbb2a0e3167a8a1ef', 'ʚɞ 柠萌 ʚɞ', '48ad524d33a14579889faf64b1f1edae', '2', '', '2018-10-23 23:36:52', null);
INSERT INTO `tb_employee` VALUES ('0103b199143641ae97fbba57a109e25b', '子非鱼.', 'e511720a777146e29d0da95d57aba2e9', '1', '奉贤', '2018-10-21 22:16:56', null);
INSERT INTO `tb_employee` VALUES ('0142004af96541f4ae91920e5cd8e7a8', '伪装Xin中の哀[shāng]', 'd784161e245248339c8b94fb82852494', '1', '晋城', '2018-10-24 13:11:03', null);
INSERT INTO `tb_employee` VALUES ('01555ae68c5b4a44921eb4f2b1106b35', '有为青年。', '5f986c6bd65c4371ae1e939424042990', '1', '', '2018-10-23 07:24:20', null);
INSERT INTO `tb_employee` VALUES ('0286edeb033a4eacb3094d1d3b057e70', 'Hughes', '86cf20b7c1184145af1c6ad675764975', '1', '宿迁', '2018-10-22 08:13:54', null);
INSERT INTO `tb_employee` VALUES ('0318d10e320144efa172805d8f0def8a', '三分半', '65fc5076737740a9ad76e449b647d63b', '1', '', '2018-10-22 18:49:14', null);
INSERT INTO `tb_employee` VALUES ('03c5bd3f92a64305beef5d67aa935707', 'w.', '5df93d51ebdf4630b5d67a657d053aca', '1', '德州', '2018-10-22 18:32:04', null);
INSERT INTO `tb_employee` VALUES ('0537ca52b6944a4b9df1ad354a76a9ce', '@雨思', 'a815c9570e4643a5b97719eeaf12331c', '1', '哈尔滨', '2018-10-26 00:05:07', null);
INSERT INTO `tb_employee` VALUES ('059bddabeab64541ac7443001e14801a', '1999*', '58db02a37ea54c7c921668066d07540d', '2', '焦作', '2018-10-24 22:16:06', null);
INSERT INTO `tb_employee` VALUES ('05f2cbb67ab84893a8ebc1a66e692d72', '花卷～', '20d731cc39964ba887b10db5e83742d5', '2', '临汾', '2018-10-21 21:33:51', null);
INSERT INTO `tb_employee` VALUES ('068b47087593498fbd2b1f35c28e8371', '℡', '759c6ad97ab945319d36d4b4c945e14c', '1', '宿州', '2018-10-24 20:54:28', null);
INSERT INTO `tb_employee` VALUES ('07b7045b5e2644609d12964b4675422c', '风', '5fe458e45a52471aae5217ccfb8f75c7', '1', '', '2018-10-21 22:24:58', null);
INSERT INTO `tb_employee` VALUES ('082a6f774d2d48029ffb38954964d023', '七忆鱼', 'bc11ef08357f48edabdad065836c5459', '2', '黄金海岸', '2018-10-21 20:39:13', null);
INSERT INTO `tb_employee` VALUES ('0833690ce41a44b1a314c2971d0661a9', '那个最初的，，，', 'e81efec3414041be89c2ae213d812c2d', '2', '邯郸', '2018-10-21 22:48:06', null);
INSERT INTO `tb_employee` VALUES ('092fd529f0b745b08dbb58932bc6aaf8', '北有佳人', '72457420bf234be2b33bb6d241db84cf', '1', '', '2018-10-21 22:57:03', '移动');
INSERT INTO `tb_employee` VALUES ('0a2ad60bac97439e86a16087098040af', 'Happy', '34a47f9e464e488e83f85da1cb6005eb', '1', '', '2018-10-22 07:50:39', null);
INSERT INTO `tb_employee` VALUES ('0a3b67df698a414587a7a3ee3111d386', '勿忘初心', 'db5264d1f7ae40aba42b8ad0ef700ece', '2', '', '2018-10-23 23:29:39', null);
INSERT INTO `tb_employee` VALUES ('0a3edce506454410bcbb38e2681e50f2', 'Sang.', '097d573323f04526b8d689374e65e34e', '2', '焦作', '2018-10-21 18:54:10', null);
INSERT INTO `tb_employee` VALUES ('0a7e8ef07a9b42e2acb6fc41cbc9a970', 'Asphyxia', '842575d2f0494ba48a22fd35e4e40264', '1', '', '2018-10-23 14:49:47', null);
INSERT INTO `tb_employee` VALUES ('0a8a6fadf5a94387953c5eb47cd452ca', '恩呐', 'ca162c31ffa3483493c9f97a178dff1c', '1', '', '2018-10-21 21:42:57', null);
INSERT INTO `tb_employee` VALUES ('0adeee3549374ba1abfb467818efc1fd', '落实', '5472da638ea843138930ad9cf5102f92', '1', '', '2018-10-21 18:51:49', null);
INSERT INTO `tb_employee` VALUES ('0b0fc9ee2cad439aa56847a538d6bdf2', '小跳蛙', '9a9a596fa32b4d8182fa16c9a93b7816', '0', '', '2018-10-21 22:47:13', null);
INSERT INTO `tb_employee` VALUES ('0b4a1dc0a94444a3801c73d0928091e4', '橘子', '1131b116c0834f8490eeb1cfe1d0619e', '2', '菏泽', '2018-10-23 15:36:39', null);
INSERT INTO `tb_employee` VALUES ('0b55a801bcca43b6a190bea6866d6f72', '稔', '64e31dd8a73f4a3c886ba2d5c3ec3523', '0', '', '2018-10-25 07:39:23', null);
INSERT INTO `tb_employee` VALUES ('0bb0c8b8189249608918b11d5d71fb14', 'you go', 'eee54399b8004f8f80bdab8ed4670f85', '1', '临汾', '2018-10-21 22:13:47', null);
INSERT INTO `tb_employee` VALUES ('0c224c4972b248038bfd698141ebf57c', '福禄寿', '32f1c09b6696475c97a8aca2b8d4d0fb', '1', '平顶山', '2018-10-21 22:16:15', null);
INSERT INTO `tb_employee` VALUES ('0c5ef1c282a745daa5f4dfba83ff4331', '曾几何时', '781fd5822aac4c249777d4f4a26b0aa6', '1', '', '2018-10-23 21:39:58', null);
INSERT INTO `tb_employee` VALUES ('0d95ca6eb2c94bae8a726966aed8f68c', '河北贾斯汀比伯', 'dbf8af16083443a9905bee54cd40db2c', '1', '邯郸', '2018-10-21 23:26:47', null);
INSERT INTO `tb_employee` VALUES ('0dc2aa6b695e4d3f9619d1ffd39f7bd5', '泪光里有笑容', '512adef2816a4484afb7e2ebd7e93a6f', '2', '丹东', '2018-10-24 14:41:24', null);
INSERT INTO `tb_employee` VALUES ('0e1fb9b0fdd84cd0a7f77417a7dfd9b5', '半城繁华半城伤', '31def6b926914d8cbf1523bc87892052', '1', '', '2018-10-23 14:50:05', null);
INSERT INTO `tb_employee` VALUES ('0ed632b3e8904ab5bce1da197bf5631b', '静沐暖阳', '69721006ef6745b78c174ec1b58f81f9', '1', '', '2018-10-21 20:40:06', null);
INSERT INTO `tb_employee` VALUES ('0eee502db0be45edaa54c94f35930514', 'pyz', '6330c32e9d0b463ab58692cd4727d48b', '1', '海淀', '2018-10-25 08:21:08', null);
INSERT INTO `tb_employee` VALUES ('0feab6b02e714e50ba51bcd5b8299bba', 'ゞ浪人与酒丶', 'e19263ba110148389e51d59e10d67559', '1', '', '2018-10-25 13:46:42', null);
INSERT INTO `tb_employee` VALUES ('0ff82e751d894486be3ac3cdbb34b97c', '淡蓝色薄荷糖', 'a4da62d3d2e24a9fb7b30a76067954cc', '1', '', '2018-10-23 21:22:27', null);
INSERT INTO `tb_employee` VALUES ('10a77b95c7654ebebe8921cf7c314ecc', 'why', '27303ca2ad10462982c68bce11ff6b67', '1', '', '2018-10-21 19:49:14', null);
INSERT INTO `tb_employee` VALUES ('12595d81ca694374ba9f5afe8d46d8e0', '抓不住的泡沫', '9b14db4654eb48a5bc5fcbaa16e97b21', '1', '乌兰察布', '2018-10-23 14:48:42', null);
INSERT INTO `tb_employee` VALUES ('12d758cfa0c04f62802a425663b2e9e0', '笑看一生', 'd6cba610b6cb41a0af48cf28e015e1ca', '2', '', '2018-10-22 07:50:41', null);
INSERT INTO `tb_employee` VALUES ('130ef94f96544bec98c284ca15192caf', '亚洲', 'cad1629e89c74397adc58e094a93d24a', '2', '运城', '2018-10-21 22:16:49', null);
INSERT INTO `tb_employee` VALUES ('13ef429536704c4297d71dcbdc340bf4', '哈哈哈', '00b802cdb39e4ecdafb82e7661c8804a', '1', '焦作', '2018-10-23 14:48:44', null);
INSERT INTO `tb_employee` VALUES ('14240bb64cb34e3cace4bbf8e1a8e4db', '夜', '1562ee98b85e4c0caa44b3eb2a4c34bc', '1', '', '2018-10-21 20:56:13', null);
INSERT INTO `tb_employee` VALUES ('14c1f05de109467cbebebcd45fc2e3ef', '老衲', '65bf6947b67b4adaa19c3e90d28e5a64', '1', '', '2018-10-25 18:14:14', null);
INSERT INTO `tb_employee` VALUES ('15747eabcd3a45109a15af22d2d7d98a', '海底捞', 'efaf98d3b94845029d740d1561ccca75', '1', '', '2018-10-21 20:02:04', null);
INSERT INTO `tb_employee` VALUES ('1576a2effd634b948a0e628dc71a17e7', '搁浅', 'ffeda2219f184a8dad597867c5267ea9', '1', '', '2018-10-22 00:13:17', null);
INSERT INTO `tb_employee` VALUES ('158cee89cf9e47ee9ccbe9412957d674', '超', '07fc393a49854ad6a39799f9a9072721', '1', '朝阳', '2018-10-21 20:10:09', null);
INSERT INTO `tb_employee` VALUES ('16005d7d770541a982eb5f5d4fb6d121', '\'A', '4565ed595fd54db0bc7011c81adf9b2d', '1', '', '2018-10-22 07:25:59', null);
INSERT INTO `tb_employee` VALUES ('168560ac6ed346428b795a90535da1ff', 'G', '4a30f1e8d93545c996c6f082e66de79a', '1', '开封', '2018-10-24 23:33:21', null);
INSERT INTO `tb_employee` VALUES ('16d984feba5248b4929332b5b0599603', '♚金色@天空', 'bdd071d9a7c140478c0835f8d6f4d0d9', '1', '', '2018-10-22 22:04:25', null);
INSERT INTO `tb_employee` VALUES ('16fe2d635f4c4fd2961a96c4cace3844', 'L', '376e8afd9cd54db0ad111f45e4c1e8b9', '1', '宿州', '2018-10-21 15:46:53', null);
INSERT INTO `tb_employee` VALUES ('17034279a8be4c6da98e0a51e45f6fa8', '向北往南', '059f38ac33d24580a9f14a565f6432bc', '1', '宿迁', '2018-10-23 21:21:16', null);
INSERT INTO `tb_employee` VALUES ('1779d376cdb64491b3f6915c8308d88e', '在回忆里，爱你', '684c56e7327a46d9ae82027fa910d557', '1', '新乡', '2018-10-21 22:07:02', '人这一生为谁活，活在世上为什么');
INSERT INTO `tb_employee` VALUES ('17a1040332be4dcea409ae3765dd6ad6', 'TM丶施华洛世奇', 'd3611c4f9e0c498685c720526bde2094', '1', '', '2018-10-21 18:45:28', null);
INSERT INTO `tb_employee` VALUES ('17f6acb47548428fafdd48a495be8937', 'Candice', 'fa759dac620945e8bf1d36868b600c84', '2', '昌平', '2018-10-23 16:22:45', null);
INSERT INTO `tb_employee` VALUES ('18379efd081243ffbd9c70ccda301373', 'evil', 'c93b697c715b40f08a32f0700968df60', '1', '奉贤', '2018-10-23 19:37:34', null);
INSERT INTO `tb_employee` VALUES ('1874cccef6884c3482037b9a0d44e019', '蜡笔~(ง •̀_•́)ง', '078ba571b0834cfc8e96aeb7ea582068', '1', '襄阳', '2018-10-22 14:18:29', null);
INSERT INTO `tb_employee` VALUES ('18c1f53a2e3b431098ddbb6ff3fd3358', 'Ronin°', 'cc944892e6c54592a525dff89df30484', '1', '', '2018-10-21 20:52:19', null);
INSERT INTO `tb_employee` VALUES ('1a675daab5ad48debf5bbbaa9aa310df', '青栀', '8e166f4ac6a24da7b7cac6b46cf63b68', '1', '菏泽', '2018-10-21 22:55:02', '不忘初心，方得始终');
INSERT INTO `tb_employee` VALUES ('1ac09d030d384aab891e03315eda2359', '渐行', '48b61d23817b40ca97aa7f8f8172b4dd', '1', '', '2018-10-22 07:43:03', null);
INSERT INTO `tb_employee` VALUES ('1af447907c304d99aef308b85a0fe724', 'Future 未来', '7c7828aa08444c93a2fa297771e408b8', '1', '运城', '2018-10-22 07:48:14', null);
INSERT INTO `tb_employee` VALUES ('1bde4330368d47c4a44e25dd6f98add8', '美好时光', '33e3a52bfd84402b80dcb8d27dca5264', '2', '', '2018-10-25 08:56:29', null);
INSERT INTO `tb_employee` VALUES ('1be40c699ba84b3e88859174da0c4a1e', 'L.', 'c64e5e33abac4f2694537cf7fb8ce954', '1', '兰州市', '2018-10-21 18:26:00', null);
INSERT INTO `tb_employee` VALUES ('1c4ed8c83de5419f9b3f392aeee82f1d', '度过生活', 'f6e86a17b4f74adfb8049db355a5384a', '2', '临汾', '2018-10-21 22:18:26', null);
INSERT INTO `tb_employee` VALUES ('1c6e955909dc4acdbbb731e57891f1f2', '子～', '82086e4054fa4bea839cc670469b476a', '1', '宿迁', '2018-10-21 20:31:44', null);
INSERT INTO `tb_employee` VALUES ('1c84a2e26c8c487b879d23761af57654', '潘多拉', 'ed2eea1aa8e84c69a19222ff0f3bbacc', '1', '忻州', '2018-10-25 10:17:23', null);
INSERT INTO `tb_employee` VALUES ('1cd815db833847a4959a40494370926e', '王。', '0c2696eda1704f43ac0b6967aa87a97a', '1', '运城', '2018-10-21 22:33:38', null);
INSERT INTO `tb_employee` VALUES ('1ce5105a72764c36b7c02e44b2dfbbf4', '断桥残雪', '6060dad51c58441889cbc54f2e3aa7a9', '1', '奉贤', '2018-10-24 23:31:09', null);
INSERT INTO `tb_employee` VALUES ('1d525238989b4fe8922bf8049ab57e24', '沈雨辰', '70dcea75e9a04509a4d744108d15439d', '1', '', '2018-10-21 19:42:59', null);
INSERT INTO `tb_employee` VALUES ('1d5b59631fa1435d9a3ca07b4b5dff4e', '～', '01a9416833e94984875e0135aab10160', '1', '许昌', '2018-10-23 14:49:13', null);
INSERT INTO `tb_employee` VALUES ('1d806bac474d42cda5c6ebf58c61c103', '。。。', 'e074428d70c34e8db8e3d11dd35ff563', '1', '奉贤', '2018-10-23 14:41:58', null);
INSERT INTO `tb_employee` VALUES ('1dbbde497d6c45ca903252e26ddf9e73', '大妖星', '788d77140d334ce49c8c63b8f9442324', '0', '', '2018-10-23 11:31:00', null);
INSERT INTO `tb_employee` VALUES ('1dce25ab33544a9da6d98689e9d68617', '追逐。', '0f27a0bc99414435afdc05b347c8960b', '1', '宿州', '2018-10-24 21:38:28', null);
INSERT INTO `tb_employee` VALUES ('1eef282ca8ad4ac0aea2c9f2c5967106', 'Y', '596d9ef6e2fc424983e2fbf3b3c70552', '1', '', '2018-10-22 07:35:18', null);
INSERT INTO `tb_employee` VALUES ('1f162f6d961742168c0f2086d6280f68', '超级无敌小可爱', '6fdc00248a6a404bb08e660494077068', '2', '大兴', '2018-10-21 22:52:04', null);
INSERT INTO `tb_employee` VALUES ('1f847a09c4434358aacd103b29458141', '杰老怪', '89494d78bd8141f78c483111a5469aa3', '1', '邯郸', '2018-10-24 22:00:32', null);
INSERT INTO `tb_employee` VALUES ('1fd9ed0b062840148d4883aa90b1d97e', 'ㅤ', '2e70eff4418340c9849990a6e7a2b39f', '1', '', '2018-10-21 18:45:13', null);
INSERT INTO `tb_employee` VALUES ('200e38cab74a41c1b82f36a554bf389b', '漾', '5059527df09f408fa7361cdd780a92ba', '1', '南京', '2018-10-24 20:49:58', null);
INSERT INTO `tb_employee` VALUES ('204026ac74244ee2b00ccd8ce714cbf8', '＂．橘栀ゝ', 'b875f1320c47484c9cdf66e95c666d80', '1', '', '2018-10-22 23:32:06', null);
INSERT INTO `tb_employee` VALUES ('2201e58399ad4ac8b688c9d2c77f2eb7', '绯世', 'd81244c1fed4445b984d2a36df16a9f6', '2', '', '2018-10-23 22:34:27', null);
INSERT INTO `tb_employee` VALUES ('22205c6b4eb14552af31ba60975cfc26', '时光~流年', 'd397c5fad3794a40b410b95a56fac635', '2', '', '2018-10-22 07:43:46', null);
INSERT INTO `tb_employee` VALUES ('222841486d4a46f0a8116160df3c7f97', 'Content、', 'f4f227072aca4897926c5838c891c5b5', '2', '陇南', '2018-10-21 22:24:36', null);
INSERT INTO `tb_employee` VALUES ('22b3f0fcc774406f8dbcc867a6c22792', '就是名字', 'b70425a64fe749e59f350dbd262752bc', '1', '', '2018-10-25 21:57:26', null);
INSERT INTO `tb_employee` VALUES ('22dc3b35b0244574b7719a5e6d263b9a', '昕', '1f6a226f8c3b4a048c90c5ef262bc34a', '1', '洛阳', '2018-10-21 20:52:54', null);
INSERT INTO `tb_employee` VALUES ('22ecd73570c349378ed18c0ff7955ad6', '初心', '98feb81871074958a324c9e57c5a63a9', '2', '新乡', '2018-10-22 07:49:13', null);
INSERT INTO `tb_employee` VALUES ('242cbe25c66f4a599fc9a8dcd21bd83e', '大猫', '0be62562df2b43b9b53299462b29b9c2', '1', '晋中', '2018-10-21 21:21:34', null);
INSERT INTO `tb_employee` VALUES ('251c996a8edf4677aa62520c0c0faf57', '超', 'a03e98ae73514a5ba030560ab620bd00', '1', '德州', '2018-10-21 22:27:44', null);
INSERT INTO `tb_employee` VALUES ('2564662dda9f4f49a15462dd6202ece4', 'bitter', '664145bf5612415395a8f544b3bab449', '1', '海淀', '2018-10-22 07:42:22', null);
INSERT INTO `tb_employee` VALUES ('25ca416ac4a4484689bd908fffdef95e', '崔磊', '5fbc61404e2640e7b67660d27adf2d88', '0', '', '2018-10-23 14:51:58', null);
INSERT INTO `tb_employee` VALUES ('260c69308ba044beae162ebecbaf51ce', '      15729103725', 'da2d68ced27d4c49acebfd2edddf5e44', '1', '洛阳', '2018-10-21 22:07:12', null);
INSERT INTO `tb_employee` VALUES ('26db1c35e259495c816566895f8fab8f', '生而无憾', '6d39b73703334e12897d4e3b066b3337', '1', '商丘', '2018-10-25 14:37:33', null);
INSERT INTO `tb_employee` VALUES ('27707fb97c3440bba619b3e1409cddba', '将就', '643c42602a514268aaa49adbb2f98920', '1', '衡水', '2018-10-21 18:37:10', null);
INSERT INTO `tb_employee` VALUES ('2793e5084cd94e719d2aeff12e57ac20', '私人专属', '0e4672b38e85407e81595b989208c20f', '1', '平谷', '2018-10-22 19:51:55', null);
INSERT INTO `tb_employee` VALUES ('2794864b0d3f4e6396e7dcd658adc38d', '2412', 'c2307aef53994e82a35bfcbe216604bc', '1', '临汾', '2018-10-21 23:38:50', null);
INSERT INTO `tb_employee` VALUES ('287e43db15a8465eba0be4368d09ceb4', 'nan', '3b5132dbeee64fd9be18741d17d72e39', '2', '安阳', '2018-10-21 20:09:51', null);
INSERT INTO `tb_employee` VALUES ('2894461883ac4940a333da71398e0885', '宋召', '8b2d7d8d9bc349b4a0974a53f39ea31e', '1', '', '2018-10-22 10:42:14', null);
INSERT INTO `tb_employee` VALUES ('28ea99fedeee428f8cb467d928698701', '猫星人', 'caf2e3080b494f989ea70864aff26636', '1', '海淀', '2018-10-21 22:11:59', null);
INSERT INTO `tb_employee` VALUES ('299054e0bbcc464684863d95df0afc5e', '残心', 'a20cb0266a594c8ea95728c7e5194fcc', '1', '沧州', '2018-10-21 20:52:27', null);
INSERT INTO `tb_employee` VALUES ('29fa28c6aa794b27b6a9b2670b010296', 'pomaranče ', '6575ee8deb9a4e7b8dab121e1595f687', '2', '', '2018-10-21 20:50:26', null);
INSERT INTO `tb_employee` VALUES ('2a22e0be42bb46a8bbc1cef9a36b8452', '＊＊余', 'c8cefb1002f94b17947c7fc98eadca3f', '1', '菏泽', '2018-10-23 15:11:56', null);
INSERT INTO `tb_employee` VALUES ('2a5fd165088c46398b7193f6ebc1ad73', 'yuluyulu', '4c60f8304f7e46e39cb47f5dc6267a72', '0', '', '2018-10-23 14:41:35', null);
INSERT INTO `tb_employee` VALUES ('2b5742d51c4d4d4ab3f810ffa6752b92', '迟暮', '87d836dffe3f43f0a7149fc632eae19a', '2', '', '2018-10-22 23:10:16', null);
INSERT INTO `tb_employee` VALUES ('2c2b9089afb74caa85873571e52e5e47', '', 'c6565e44a6a445f9a9fa12c1bee19c4d', '1', '奉贤', '2018-10-24 09:48:07', null);
INSERT INTO `tb_employee` VALUES ('2d8ec222fd9746a5a2f0a77f8721aa1c', 'c', 'cf7628f7dda343ebad12e081ee7def7e', '1', '菏泽', '2018-10-24 22:00:33', null);
INSERT INTO `tb_employee` VALUES ('2da98808e95843f6b82b4dba500c28af', '袁霸霸', '3e1405744aaf4628a4c4033ea3a61078', '1', '海淀', '2018-10-22 10:58:32', null);
INSERT INTO `tb_employee` VALUES ('2e121f64105f404998b39bb895f5bd13', '春风不度玉门关、', '3ebbe10318fe493193dba49bd2238b1f', '1', '', '2018-10-21 21:04:23', null);
INSERT INTO `tb_employee` VALUES ('2e3ac3f8a31245adb0ac97614b70190d', '7.', '30b0a79d304f4fffa32bd6f51d413d5e', '1', '邯郸', '2018-10-24 21:45:28', null);
INSERT INTO `tb_employee` VALUES ('2fcda32d1df3439d8f62aa9ecc1ee9b2', '乍到', '705ec2a131e94cb3a09fd2b7c5e11e4c', '1', '晋中', '2018-10-24 21:45:38', null);
INSERT INTO `tb_employee` VALUES ('2fe1b971040b4c45be4c33347489af12', '莓', '198a3240a4d1464aace37c4b01bdfa5b', '0', '', '2018-10-25 20:30:17', null);
INSERT INTO `tb_employee` VALUES ('30b3bb5dee484486bb1923609b3c2b99', '好友', '7f7f8ab3a37c4fe28d013dd22dfd1490', '1', '海淀', '2018-10-21 18:44:37', null);
INSERT INTO `tb_employee` VALUES ('318fcb70f7a14171a13601ddb27fee6c', 'Alyson', 'e75d5ca81f0e4d329c0b08a539bd264c', '1', '西安', '2018-10-21 19:42:59', null);
INSERT INTO `tb_employee` VALUES ('319e62e7078e4a6884afad0a6e8e7db0', '记住', '5ad67171c3c24479b5820bcc0a2f0b3b', '1', '', '2018-10-21 21:15:46', null);
INSERT INTO `tb_employee` VALUES ('32f795d7b456426594d08186619b8a71', '难得', '379f15e58c884b9fba34092ca9eed222', '1', '', '2018-10-21 20:59:45', null);
INSERT INTO `tb_employee` VALUES ('356c4e65d2ed449399c711c49598a814', '牛牛爱妞妞', 'b8e9e9bbdcc240fb92a78fc2a2bc5aae', '1', '运城', '2018-10-22 10:15:35', null);
INSERT INTO `tb_employee` VALUES ('35b8d71916fa44778ea8aebf74b39c93', '屌霸天', '24bcdce494414dc4b962c3ded60365ce', '1', '海淀', '2018-10-23 23:11:38', null);
INSERT INTO `tb_employee` VALUES ('35ea7d0995c34f3186e14ff153226cb1', '《 Z 》', '55ff8055f15349959d3c6791fe639b3b', '1', '开封', '2018-10-23 14:48:42', null);
INSERT INTO `tb_employee` VALUES ('36143f91626d43d4a42a889a3e80c8a6', '學會呿噯', '9d1ee8386425451691c025101353fefc', '1', '徐州', '2018-10-21 22:23:52', null);
INSERT INTO `tb_employee` VALUES ('362c3c0a652a453da8467273019c0120', '阿春', 'da4dfe7d18494c2e8443393cefd5a8df', '1', '石嘴山', '2018-10-21 21:30:00', null);
INSERT INTO `tb_employee` VALUES ('36a634a709e4452bbf0876cbccafb639', '深爱', '902b3604d499477eb832263967fff752', '2', '', '2018-10-22 18:46:25', null);
INSERT INTO `tb_employee` VALUES ('36e27068d8ed4132a984616e80451e44', '恋旧尘', '729bfdb81a0d4fbe903e728e34623318', '1', '宿州', '2018-10-21 21:25:43', null);
INSERT INTO `tb_employee` VALUES ('378cf760f3cd4a66b65938e3c12a194c', '－', '3ef6dd87a7864b32be281308b00e82d1', '1', '', '2018-10-21 16:47:25', null);
INSERT INTO `tb_employee` VALUES ('37a9ae046ea24176980e54ed28173dce', '吴一鸣', '7b483916b63f4067b6d5f1212822a00e', '1', '', '2018-10-23 16:34:04', null);
INSERT INTO `tb_employee` VALUES ('37baae3a42844cc8991f799923bdf87e', '风尘', 'e0141aefd5a54faba01d48827cbef8ef', '1', '', '2018-10-24 22:11:13', null);
INSERT INTO `tb_employee` VALUES ('37c12b4c32df4bf68928ffd44fe67f09', '管宇哲.', '9ac4f0ff3a0945dca3153cb909c782fa', '1', '黄浦', '2018-10-23 14:40:03', null);
INSERT INTO `tb_employee` VALUES ('38f18817414d4eafadaaac4822bd5a13', '圈圈', '7afd2125e5004a78a663739755d96388', '2', '安阳', '2018-10-22 00:45:10', null);
INSERT INTO `tb_employee` VALUES ('3978e10ec51b446fb7ab8f06fb17b541', '某人', '57229e12a5b1431a89ec05a104b53732', '1', '', '2018-10-25 00:29:45', null);
INSERT INTO `tb_employee` VALUES ('3ab18ed31222427bb92055953ba14555', '乱了心_@', 'efb47e41b367464b9e631ff6eb5f0720', '1', '惠州', '2018-10-21 19:32:40', null);
INSERT INTO `tb_employee` VALUES ('3ae0426943194a558c48fd9311c64d7c', '王赫丶丶', 'b2e3770133c645998a4a2397e6e335b1', '0', '', '2018-10-21 21:21:18', null);
INSERT INTO `tb_employee` VALUES ('3ba1124bf13a4526b026ad59c85a7a80', '黑', '9fa0377b8db742b6a16ee9d6be5680b6', '1', '运城', '2018-10-21 22:25:55', null);
INSERT INTO `tb_employee` VALUES ('3bdbb2aeb5b04b5081daecdb2c49bccf', '无才无貌', '13a8e9bba01e42609f646f3a63e1189b', '1', '', '2018-10-21 22:43:37', null);
INSERT INTO `tb_employee` VALUES ('3bf43ffc3d204ac4ad16f92adbce6136', 'Yang', '97fa254ebb3e474ebce2dce1f93ed312', '1', '承德', '2018-10-21 21:58:59', null);
INSERT INTO `tb_employee` VALUES ('3c311603cf0a48d2add1938bd37ae953', '起风了', '57adf5e69881460da8d078de06fe3bc4', '1', '舟山', '2018-10-21 22:34:04', null);
INSERT INTO `tb_employee` VALUES ('3c7b634f2a86415e854b4a1d968cae70', '＠暖心＠', 'b1d10de6fefb40e9b86480758ef42681', '0', '', '2018-10-22 07:32:16', null);
INSERT INTO `tb_employee` VALUES ('3cb17aa833ce48d29429806561069fa5', 'Mr.Liu', '9e8a56eae9ab4242a6925cb30d45cec2', '2', '奉贤', '2018-10-21 18:38:25', null);
INSERT INTO `tb_employee` VALUES ('3e45fe0cc9d64d43ac0f6538937eca7d', '时光请你善待我的他。', '38c0f063b1cd417ca4391204935a2062', '1', '', '2018-10-21 21:17:35', null);
INSERT INTO `tb_employee` VALUES ('3ed364cb69494896ae8c17a0ff1a3f85', 'Distance', '5e05efdf2e0d42d8900979c8bf0b36dc', '1', '奉贤', '2018-10-23 07:47:00', null);
INSERT INTO `tb_employee` VALUES ('3f0188d747904298abe86cbd1d12f7c0', '常鑫宇', '1c1436a3c0f74965be2b2dfa743e55a2', '1', '铁岭', '2018-10-23 23:14:25', null);
INSERT INTO `tb_employee` VALUES ('3f148aefd8404ca986330a037558bb10', '怪咖', '033500a1d13d40259cd3127c07b9b33f', '0', '', '2018-10-23 22:35:07', null);
INSERT INTO `tb_employee` VALUES ('3f64e09035f04d7dbbe97b278e74d6bd', 'LuCaiYue.', '8b51297d10334ed591a32f55b46b58b2', '1', '山西', '2018-10-21 22:55:29', '');
INSERT INTO `tb_employee` VALUES ('3f8e9aa4c3e64bc89aa96cd23b2ebf0d', '锌殇', 'd86fc7d729d1440ab17553faeeaccf5b', '1', '', '2018-10-24 18:46:56', null);
INSERT INTO `tb_employee` VALUES ('3fc9d591f6bd49a3afebe58d6ba1baa1', 'Senior___℡⁰⁵³¹', '7988dbc0eb994966b0ca5816e66b262f', '1', '', '2018-10-24 12:49:01', null);
INSERT INTO `tb_employee` VALUES ('3fdea0b3a8e94d45aeeae2e1850fff01', '浮云、遮望眼', '953b4bb90ac744939f3e41b4fa680ea0', '1', '太原', '2018-10-21 22:06:54', null);
INSERT INTO `tb_employee` VALUES ('40788dd7fec54a4cab64bc5a4cf7c0fa', '忆￡殇', '44000ab9141d456e91afc54037439c01', '1', '亳州', '2018-10-22 07:48:50', null);
INSERT INTO `tb_employee` VALUES ('4117352e7da14feeba8beabf5e5c2325', 'xiao申', '85801d12976645b7960f41684b7eddcd', '0', '', '2018-10-21 22:53:00', null);
INSERT INTO `tb_employee` VALUES ('429e4c71c50a41e0b55d027400e5e69a', '那个男人。', '71d376c62fac4becb9600909b5232c4d', '1', '宁波', '2018-10-24 07:49:30', null);
INSERT INTO `tb_employee` VALUES ('43226c17ebe945ed8fded7a736dba672', '希望是个好东西。', 'fcdc950f1ff2471aaa7f2fc9b6094618', '1', '', '2018-10-24 21:59:02', null);
INSERT INTO `tb_employee` VALUES ('4355a38d936c4d068e049c8338fc13f2', '范文墨', '21526edf006444e4ab23c362382edc57', '1', '葫芦岛', '2018-10-21 21:28:27', null);
INSERT INTO `tb_employee` VALUES ('4357fd55637b4e289e03b481b6068e05', '啊啦涛', 'aac88eda35ef47459b5e1d409c4ac97b', '1', '', '2018-10-21 18:18:17', null);
INSERT INTO `tb_employee` VALUES ('43cc6002d02b4cc89f67da8ea465b4ac', '忧忧雪', '1b420477c5d74e23bae7dd5cc8a03632', '2', '', '2018-10-24 21:41:30', null);
INSERT INTO `tb_employee` VALUES ('4486c93eda2d478aa103a45e81c56fad', '', '767f9eb032c34487b3ea972563cd5e12', '2', '哈尔滨', '2018-10-22 21:02:41', null);
INSERT INTO `tb_employee` VALUES ('44f254ad4be74db89159ef44c75e4b6c', '明天，你好！', '7a2ad785cf6544aba21d611a4369413e', '1', '海淀', '2018-10-25 21:14:30', null);
INSERT INTO `tb_employee` VALUES ('4518fac8d8d948daa357e6b9ef5220b0', 'Aೄ蒾夨の小懶猫จุ๊บ⁴ ¹ ³', 'eccd5bbeb1d04501aae4dc7b7c517453', '2', '太原', '2018-10-21 23:01:54', null);
INSERT INTO `tb_employee` VALUES ('457809ec686f405896afcdd96a966373', '白萝卜', '0807e77bfc6a41a284d267c9c9899ebe', '2', '武汉', '2018-10-22 12:42:38', null);
INSERT INTO `tb_employee` VALUES ('45993a30267447e09d77c208cd9db4e3', '悟空', '97ac798d1f6c438aafe36fbaa5c25d12', '1', '大兴', '2018-10-21 22:57:29', null);
INSERT INTO `tb_employee` VALUES ('45abaa24f7de4f6a9cde6436a6fa1aaf', '你', '22aef971231249ac8680170588e91cf7', '2', '', '2018-10-22 00:31:53', null);
INSERT INTO `tb_employee` VALUES ('46b3a9a4b17d4d5eaee0b8556a7390dd', '糖果', '58bfd7a1f0d44e2c8ae3c1adca7de0ce', '0', '海淀', '2018-10-21 22:38:13', null);
INSERT INTO `tb_employee` VALUES ('47128cca2fea4a2881ef6969c4780f4a', '庸人自扰', '6330a9d25e304958a0eff43521b03e06', '1', '安阳', '2018-10-22 21:21:53', null);
INSERT INTO `tb_employee` VALUES ('47ec1d66108b46f08ed0c25b3d74ab7d', '尉泽萱', '8e8582220d014670ba2782fe7be08bb4', '1', '', '2018-10-24 21:02:23', null);
INSERT INTO `tb_employee` VALUES ('480392d8bd6a4ed799dba2ae5c5e6b94', '风口浪尖', '93c2a244054a45be9a62b290d46406e2', '2', '', '2018-10-25 23:19:25', null);
INSERT INTO `tb_employee` VALUES ('4ac2300e706f4aa183f335fc3d382896', '', '2ea92c0a0d52488a9d5fbe4c58bc8c54', '2', '菏泽', '2018-10-23 21:34:24', null);
INSERT INTO `tb_employee` VALUES ('4b59d5fbd0254eda9796dc86f058a0ec', '寒露白霜', 'e3b180c31b6942f58b71436774af3114', '1', '纽卡斯尔', '2018-10-23 14:50:36', null);
INSERT INTO `tb_employee` VALUES ('4bc41e8e3f2e4c86a47a10a3a4bc72bc', 'HelloWorld!', '99157a5e310342e5af6f5f3008290237', '1', 'Los Angeles County', '2018-10-22 14:11:24', null);
INSERT INTO `tb_employee` VALUES ('4bff6d4b3c834d3f948d505042e1a843', '因吹斯听', 'e42cda34f36c4321b3e4b95c39f01181', '1', '海淀', '2018-10-25 15:54:04', null);
INSERT INTO `tb_employee` VALUES ('4c0edffe55b84c71bed153e95549374f', '再也没有。', 'aed5e0fde01c4f0490a573df9ba9f0c6', '1', '', '2018-10-23 14:48:38', null);
INSERT INTO `tb_employee` VALUES ('4ce38a908fa84ddd834e8c8fd0b2623c', 'milk', '50fc41b197e648a88cf4acdfccd4214e', '1', '奉贤', '2018-10-24 13:52:49', null);
INSERT INTO `tb_employee` VALUES ('4ddeca83e37346cdaacf92cc513436dd', '帅伟。', 'b5ce3941a5c8461aa078939d3804a90f', '1', '廊坊', '2018-10-25 08:56:04', null);
INSERT INTO `tb_employee` VALUES ('4e5cbf372a1b45339b30f293396e518b', '　 　 　', 'ed85b8763a714fcca7847976d5363716', '1', '奉贤', '2018-10-21 18:15:00', null);
INSERT INTO `tb_employee` VALUES ('4e667b33ecf445488e30a15f3d693498', '無 你 何 歡', '770fe05120e14690a112b9682fc51a08', '1', '邯郸', '2018-10-24 21:44:15', null);
INSERT INTO `tb_employee` VALUES ('4e95dc7da97a4483be4eadab5b9f136d', '清欢渡.', '756dc678372e4f39919f265ec14f9f3b', '1', '晋中', '2018-10-21 21:36:25', null);
INSERT INTO `tb_employee` VALUES ('4ebc154493e64cec9ce090102002d402', '大白菜', '156ed9cfe477477895d3eba78ba087e3', '1', '', '2018-10-23 23:37:34', null);
INSERT INTO `tb_employee` VALUES ('4f1ff87925d848c2836d6dd4c878de05', '王董', '475a6bca2ecf4d35ab57603d2026823e', '1', '奉贤', '2018-10-21 23:15:17', null);
INSERT INTO `tb_employee` VALUES ('4fa78483a7d048a983cdd6a527507c81', '浪迹。。。。。天涯', '2b22166facf54a18b1ef5396dfd7d11a', '1', '菏泽', '2018-10-23 15:36:30', null);
INSERT INTO `tb_employee` VALUES ('4fc366a86d4e40be9b3d1a82fb42d004', 'lhjh.', '65271ae6689d4603aa34436ef308ffae', '2', '营口', '2018-10-24 22:38:33', null);
INSERT INTO `tb_employee` VALUES ('4fe0ab4abba34b8cb4752ec70970aa22', '对方', 'c153770974334b03a0bad82cdbb45d85', '1', '石家庄', '2018-10-21 23:22:23', null);
INSERT INTO `tb_employee` VALUES ('508e84923af946358c95c5940ac9a838', '半夏', '10e63af17c8e49a487c8d2f5d0b8a2b3', '1', 'Canberra', '2018-10-22 13:54:42', null);
INSERT INTO `tb_employee` VALUES ('5199d3290e1b42c2af5eddeb6422c08c', '张  大仙　༽', 'd9bf146fcad044c6ac1bc277c2e30b01', '1', '宿州', '2018-10-24 18:37:01', null);
INSERT INTO `tb_employee` VALUES ('52008f72199545d198a299d7636fa5d7', '你看我有几分像从前', 'aee9ad8b02784ee595e132dd47d36cb5', '2', '郑州', '2018-10-22 07:49:03', null);
INSERT INTO `tb_employee` VALUES ('525f36d221e14f13b9dc135ee1a9ad5a', '烟紫。', '84824dcae42240d6985e957a02207210', '2', '', '2018-10-23 07:00:36', null);
INSERT INTO `tb_employee` VALUES ('52c37f3751d649b89f8bd7a5f6ec17f6', '往事不堪回首', '9c9546d24ece401d9e29c2fda3eaf494', '1', '', '2018-10-23 15:36:12', null);
INSERT INTO `tb_employee` VALUES ('53c5452a1f4042869cbc9fbce02e9bd3', '龐龐', '8dafe72cfe0149dbb355286e2327d372', '1', '承德', '2018-10-23 14:50:29', null);
INSERT INTO `tb_employee` VALUES ('549e345562524a19af70ee871170340a', '-Ashen', 'c2f348c75b534b688a504019330b4cbe', '0', '', '2018-10-22 21:06:04', null);
INSERT INTO `tb_employee` VALUES ('5520a2315d4a4025a2d63416fb40fd4b', '_浩狗狗', '4d8735855d994b8684b5c7ebd8389e7b', '0', '', '2018-10-21 21:00:06', null);
INSERT INTO `tb_employee` VALUES ('55308cbb09bc4bd3aa55f537db07eeb3', '钟敏', '77bf75547ba54c5a8a4d3fc76e38dbc6', '2', '呼和浩特', '2018-10-21 21:44:21', null);
INSERT INTO `tb_employee` VALUES ('5547cd4792be429db1738c68117d91e4', '阿栋', 'c2df986f217c4a0495b52e959ae7e81d', '1', '晋中', '2018-10-24 12:08:47', null);
INSERT INTO `tb_employee` VALUES ('558c69c3e70e44cfae2c36cb58643f7f', 'R.', '9e747b4633a34305b8e054c09d080dcc', '1', '', '2018-10-21 18:28:49', null);
INSERT INTO `tb_employee` VALUES ('55a4566b1dfe4d5f840ae4e8a6e93cfc', '小快乐朝朝暮暮', 'e6e2e67578654cb1bbf032826b6b51ff', '2', '太原', '2018-10-23 17:33:31', null);
INSERT INTO `tb_employee` VALUES ('55c962b48ffe4cc6ab5abd0cc53a57c8', '听风。', '9b593811fcac40dcab846f16b585d09a', '2', '', '2018-10-21 20:54:08', null);
INSERT INTO `tb_employee` VALUES ('560c0e5f654f4aadb54c850a200e39b0', '安稳', 'f9b5495453844804947857b26a570bb8', '2', '', '2018-10-21 23:01:47', null);
INSERT INTO `tb_employee` VALUES ('57c98138fd6541d0bb61c0e74afaae38', '精致的张美丽同学', '7bd6b21f338e454bb3364be0cf28cf82', '1', '佳木斯', '2018-10-25 08:24:08', null);
INSERT INTO `tb_employee` VALUES ('57f9bd5a17a84120a116dda6398458e4', '清晨', '5a3f539d87b5429eb5c9437aa7c0e213', '1', '', '2018-10-23 07:25:35', null);
INSERT INTO `tb_employee` VALUES ('5804ff6a83a341e6a1989a57376eb68a', '塔利', '7a40c53c29024e3297d4f22204450697', '2', '大兴', '2018-10-22 07:21:26', null);
INSERT INTO `tb_employee` VALUES ('5985646eaf8c49cdb0940724845141e8', '远辰', '3f7e63b0039a4fd499338b518508fc7f', '2', '海淀', '2018-10-23 22:21:46', null);
INSERT INTO `tb_employee` VALUES ('5ac45364963b4273ae7a2701cde241e9', '痞子啊、', 'f680cb2058dc47c5b741a879c9adf389', '1', '', '2018-10-22 16:30:43', null);
INSERT INTO `tb_employee` VALUES ('5b1cdd6e46824632b7e2784058d2d57c', '放纵', '55e01319f9f747dfa2a451223fc28e55', '0', '', '2018-10-21 20:34:09', null);
INSERT INTO `tb_employee` VALUES ('5b34a367dc1f4c429c47017b01e3e975', '老电影', '8f6e7d5211a1415f906efe299119e142', '1', '', '2018-10-22 09:21:26', null);
INSERT INTO `tb_employee` VALUES ('5bbc73c6d82244efb9a4d31b17425b09', '阿婷', 'f53189c2ea1f47bd99f505782b0d38bb', '2', '长治', '2018-10-23 10:03:39', null);
INSERT INTO `tb_employee` VALUES ('5c2b2ec0b7a648f1962657a4db54e707', '静默空伦', '2ffd5c46a17f47bdb0f6c2e0c82f781b', '1', '曲靖', '2018-10-21 23:19:29', '大数据');
INSERT INTO `tb_employee` VALUES ('5ca998b962cd439b847a500ef9fe4480', '恋旧。', '79e53d9b11914808a80b45327e3772b4', '1', '', '2018-10-24 18:57:17', null);
INSERT INTO `tb_employee` VALUES ('5d91fe54cbc84203b3e18248c05c1300', '哦', 'ea05bea04fa14de4ab8baa3b656d1f65', '1', '', '2018-10-25 16:36:04', null);
INSERT INTO `tb_employee` VALUES ('5e066a6c91094e8987927d285063e3bc', 'WANGZIBIN', '539606b4a31044419b001c213859e6a8', '1', '海淀', '2018-10-22 07:50:42', null);
INSERT INTO `tb_employee` VALUES ('5e0d6a5f44eb440e957d1f9cb8234cc7', '李白焰', '3ea0a33aa56e422ca5e3e5e59484e7f0', '1', '徐汇', '2018-10-22 06:31:27', null);
INSERT INTO `tb_employee` VALUES ('5ea9016eb3ee4a22a7411a19f4158b77', '玫瑰', 'e127b193d7bd48fc83b49ee00c4d0d00', '1', '青岛', '2018-10-21 22:51:25', null);
INSERT INTO `tb_employee` VALUES ('5eb3032489e04d898ffcff03060e6afc', '九二年的信', 'df04fa5e51624635b4371f38e6a21cf3', '1', '', '2018-10-23 16:20:03', null);
INSERT INTO `tb_employee` VALUES ('5fd2424a71d943a3a68c847cac145c19', 'LJN', '027b3a8353cf4f9dada8bea621e03215', '2', '海淀', '2018-10-23 09:45:27', null);
INSERT INTO `tb_employee` VALUES ('603a865c5b5c4f9795e8fcebe1579db3', '苏大大的', '31eefa21d8f64a7b9c5f54ba80bbe005', '1', '', '2018-10-22 22:09:55', null);
INSERT INTO `tb_employee` VALUES ('6118ffca0ab04bec85a23724dfa4a1f0', '***', '7a6fff37b3544bfc80b33916fb582180', '1', '温州', '2018-10-24 20:53:22', null);
INSERT INTO `tb_employee` VALUES ('61be3312005a40ea814bd91d9c38bb9d', '@漫仔№1', '245ed53baabf440ab2901666d61b7503', '1', '聊城', '2018-10-22 10:50:06', null);
INSERT INTO `tb_employee` VALUES ('621700cfd93348ca8ce0648358e8ccc1', '年', '095ed5f19c0343acbc1a8232a944c056', '2', '', '2018-10-23 07:45:16', null);
INSERT INTO `tb_employee` VALUES ('633ddbbe7ad0411fb89951360d112aa8', 'ZWENROU-', '155fac469540407a80d5a9357cd21e24', '2', '', '2018-10-22 07:33:21', null);
INSERT INTO `tb_employee` VALUES ('63e791c17438480fb994bf2e8190cd76', 'Z', '2d94143f855948d5b5a3b05e8ce16929', '2', '', '2018-10-24 20:39:50', null);
INSERT INTO `tb_employee` VALUES ('63fd5a89c0ef4112b6adaf1be34a71a1', 'Indomitable CEO', '7bf43ee4d8ee45aea12f9a4578da864d', '1', '沈阳', '2018-10-21 19:40:42', null);
INSERT INTO `tb_employee` VALUES ('66284e6ee275462f9213571fa30bcf2c', '婷', 'c682a180e0014775b131b2ed5a1b5272', '2', '菏泽', '2018-10-21 23:26:12', null);
INSERT INTO `tb_employee` VALUES ('66558f414d01432b93ee3126832179cb', '胡晓壮', '83c517bc8f3e4ec5b4f3f19df76dd07c', '1', '', '2018-10-21 21:20:55', null);
INSERT INTO `tb_employee` VALUES ('6665a77f78e74480a6aba5574c988917', '旁听', '4150dd2ebeaa4296ab1cd16c27a39729', '2', '朝阳', '2018-10-22 07:46:56', null);
INSERT INTO `tb_employee` VALUES ('671c8664dc514067bad2bbb2763d2d51', 'SLEUHAN', '3c9725a614de4486b283ddf2f2b0c438', '2', '固原', '2018-10-21 21:39:16', null);
INSERT INTO `tb_employee` VALUES ('6735d4a5cfbf41409cd624cc08fb5c0f', '不将就', '34a869dcc5204bb897c48032d98271cd', '1', '', '2018-10-21 21:42:23', null);
INSERT INTO `tb_employee` VALUES ('67852217c9094043ab6433b36e7caa4b', 'KArAu', '009988924c314db6adc4c55f941c1da2', '1', '', '2018-10-23 19:36:19', null);
INSERT INTO `tb_employee` VALUES ('678ab408773b49c0bdd51a192905b566', 'Big  brother', '654c56907c68459f8c4c168c6e36f10e', '1', '', '2018-10-25 11:41:11', null);
INSERT INTO `tb_employee` VALUES ('699259813d4347b0a638ed367d01f7f6', '樂', '202c2f75251049feb4e38246929651f1', '0', '', '2018-10-23 14:48:36', null);
INSERT INTO `tb_employee` VALUES ('69d270209a244f799c3f5dc22fa8704d', '！！', 'ef1564f8f132439d849c101f6e13b1fc', '1', '', '2018-10-25 17:56:55', null);
INSERT INTO `tb_employee` VALUES ('6a43f7ed559e4fdab72393c8e186ac44', '', '7c80eeec1e91481a836764f8a11a372c', '1', '运城', '2018-10-22 00:49:24', null);
INSERT INTO `tb_employee` VALUES ('6bec31b50ab149c6a49c12721fbc5642', '昊҈栋҈', '98a00d7060c74e93a082337943b08f12', '1', '运城', '2018-10-25 07:36:46', null);
INSERT INTO `tb_employee` VALUES ('6c385877a62e44f9b5f7cdf90b831515', 'jjj', '77c5f021a44f417f8606ac91b0bb30f6', '1', '', '2018-10-21 20:24:02', null);
INSERT INTO `tb_employee` VALUES ('6c4f98451edd4978a51483d0e86bb453', '用心。', 'da6228c4435845b39a8c216953cae420', '1', '周口', '2018-10-21 20:46:13', null);
INSERT INTO `tb_employee` VALUES ('6c9a9f47ea214a0a93eec470f9cffd60', 'C P X', 'a26b572bd8014b50a54f1e2fc5f75981', '2', '新乡', '2018-10-22 16:53:29', null);
INSERT INTO `tb_employee` VALUES ('6c9bde59d20244de9ce385a8f1e8848f', '二妮儿', '9c50d6433cd14d9c8c96541cc4f19f25', '2', '', '2018-10-21 22:32:10', null);
INSERT INTO `tb_employee` VALUES ('6d430aff95104abd9ece1a7cf2dacbd8', '收起所有眼泪', '86dc8f7d46014ae2b73bdf5eaaf70ca3', '1', '临汾', '2018-10-21 20:55:24', null);
INSERT INTO `tb_employee` VALUES ('6d942493a70f4cfeabae343e82c4fa5c', '钟意.', '0ddb3cde27b84115abae2cf1ff8cb213', '1', '唐山', '2018-10-21 18:49:10', null);
INSERT INTO `tb_employee` VALUES ('6f10e437e8a94e5bb2b0df1fe26723fa', '月影', 'cbc9dad1d6b44186983c838029c43967', '1', '郑州', '2018-10-22 12:45:20', null);
INSERT INTO `tb_employee` VALUES ('6f78fd0f39f14d4199495193e9982c4d', '夜', 'a42cc1756f774ce0974cf6a49cd861a6', '2', '奉贤', '2018-10-21 23:11:43', null);
INSERT INTO `tb_employee` VALUES ('6f93215667964d6ca2b670c67af17cd9', '勿忘', 'ed1763146e8c4dcc98bc2f98606774d6', '1', '', '2018-10-21 21:35:22', null);
INSERT INTO `tb_employee` VALUES ('6fce2efb4fdf47718de0bda7c907675b', '豪', '9cfa64da05b54d00b0d35616210aed87', '1', '', '2018-10-24 22:11:00', null);
INSERT INTO `tb_employee` VALUES ('6ff14f2a781f46f09cfdb179cd4951f0', '-_-||', 'ecc4bc224b5548c18dad7522f9398fca', '1', '霍巴特', '2018-10-22 07:48:54', null);
INSERT INTO `tb_employee` VALUES ('71a72a199b9c4ecb92b9a5ee3996b93a', '嗯哼', '0748f0ca23b149c3b48713133cfa3ed9', '1', '', '2018-10-22 10:50:52', null);
INSERT INTO `tb_employee` VALUES ('721cce447bb94d319796e1d001adf95f', '世俗.', '84f1f22727ef43bba9d5a2945208c652', '1', '洛阳', '2018-10-24 23:42:44', null);
INSERT INTO `tb_employee` VALUES ('72bf88e532f04a2ba3873bc3f33aab50', '米奇', '394322648a2546a99b8f3f94aa340370', '1', '濮阳', '2018-10-22 08:11:33', null);
INSERT INTO `tb_employee` VALUES ('7306fd803f554acb93d7e1e6918619d0', 'L', '5f78fbbc2e444f2da776150dc794920d', '1', '海淀', '2018-10-21 21:08:29', null);
INSERT INTO `tb_employee` VALUES ('73b2b3fae8934ae8b18c0ec16285d4eb', 'Tiger', '14b2256e748e4b3bb17b4c71d61a1517', '1', '', '2018-10-21 16:44:27', null);
INSERT INTO `tb_employee` VALUES ('73bdef5fafba49c295a948ca5dd7abc8', '古尔', '064f141b15d648658775847d28930ef9', '1', '哈尔滨', '2018-10-24 21:44:20', null);
INSERT INTO `tb_employee` VALUES ('73cf3ad377b54d59a410fde4392784b3', '九离', 'd956f0fa495e4b2f9ce79ad903874262', '1', '辽阳', '2018-10-21 22:56:18', null);
INSERT INTO `tb_employee` VALUES ('75aaf02b80bf47b5a62d76779cdded5a', '北海没有猫°', '6ba56e2255784a6aaca4a1cf00762408', '1', '运城', '2018-10-25 08:46:25', null);
INSERT INTO `tb_employee` VALUES ('7618e4ec96f94a2c9cb32821d628d886', 'ever.', '4f71a91eecf548d0bf142e96777bbd55', '2', '铁岭', '2018-10-21 22:55:47', null);
INSERT INTO `tb_employee` VALUES ('76fc733861a5487aa267221ec9299113', '赵家.', 'd65a3756338f4ebd99b82b839460a821', '2', '宿迁', '2018-10-23 20:12:29', null);
INSERT INTO `tb_employee` VALUES ('777115293d544271a81b7e6d8286e653', '嘿嘿', '5eb7b91d88834252bbdfb65f50babf72', '1', '通州', '2018-10-21 22:15:16', null);
INSERT INTO `tb_employee` VALUES ('77d9c4eb8dc64083abd45c968ee14a7c', '　　', '4f56e4ac53984907aca702b250a16cfa', '1', '商丘', '2018-10-21 20:57:03', null);
INSERT INTO `tb_employee` VALUES ('787323cc34cc4aa6a4dc096e4e8afa92', '.Cherish', '73497d9e9d424b7ea20384aa497b5f30', '0', '', '2018-10-21 20:56:12', null);
INSERT INTO `tb_employee` VALUES ('78992b465d4a456e8c1a08e13d2d86ac', 'X', '08419632577f4adf9107adbbf618209b', '1', '辽阳', '2018-10-24 18:47:00', null);
INSERT INTO `tb_employee` VALUES ('7910a5fa1953453882661a6c2011f871', '淡淡暮色', '84caaef607c841279e05a6c3ca33b069', '1', '宿迁', '2018-10-21 19:09:38', null);
INSERT INTO `tb_employee` VALUES ('792fbe89f1774b9ea4680413f390e743', '腾↔飞', '11916cfc0b3d46bf813364c5b019eac6', '1', '阜阳', '2018-10-25 21:42:41', null);
INSERT INTO `tb_employee` VALUES ('7d5d0c6f4d6247a48211602987b31941', '更好', '8d747127d40c44d7a937013ecd559b22', '1', '', '2018-10-22 20:25:05', null);
INSERT INTO `tb_employee` VALUES ('7da166eaac3747fbb428b67e4e673ca4', '多希望你是我醒不来的梦', 'd0a0d6c4e5cc4b33a1e4a4c5bd6189be', '1', '驻马店', '2018-10-22 22:42:37', null);
INSERT INTO `tb_employee` VALUES ('7dd405d873514e5ba821cdbc997de4c6', '串串', '7ad1971cd2fa476798f67eb8ed1bcc06', '0', '', '2018-10-22 19:49:01', null);
INSERT INTO `tb_employee` VALUES ('7e119d50c85f488395087a24d58d07e4', 'N㏄', '6533ea6ca7e643e3ae138a537f1515e2', '1', '吕梁', '2018-10-21 18:41:35', null);
INSERT INTO `tb_employee` VALUES ('7f0dd02cf7a94ef7886d025cb7eb3957', '　　　　　　　-', '3843b73988de4a4ebaf98ef8c75678e0', '1', '', '2018-10-21 21:12:02', null);
INSERT INTO `tb_employee` VALUES ('7f1ededf13354c43846b39f90aec5550', '小朱', '65dc15fc63e841a090b22800a45c2c5a', '1', '安庆', '2018-10-21 22:12:48', null);
INSERT INTO `tb_employee` VALUES ('800f036274244879aaa47407b89387c2', '南风知我意', '7bcfbda1db4e4366b6912fb78c124afb', '2', '', '2018-10-22 07:49:40', null);
INSERT INTO `tb_employee` VALUES ('80697b19a6fc4f4fb63d09f712ea1e80', '子一', '4fb579f109074b1f966b0104d442b04c', '1', '', '2018-10-23 14:50:37', null);
INSERT INTO `tb_employee` VALUES ('81c7dcd41a71491c92c6de0534b969c2', '，', '40744d8cead54e66a3652ecf35590bb9', '1', '吕梁', '2018-10-24 21:19:30', null);
INSERT INTO `tb_employee` VALUES ('82c032a1b13a464a9a930e2b0c1cc4fe', '火灵龙', '1aa2342cb5334212881e0586fc4ff9b5', '1', '临汾', '2018-10-22 07:41:26', null);
INSERT INTO `tb_employee` VALUES ('83be358b3911479799c40ffc6dd9fbf3', '行着', '6cb72e55e7644feb9202cbd69c55c64c', '1', '邯郸', '2018-10-23 00:48:25', '做自己');
INSERT INTO `tb_employee` VALUES ('8444ab2890084346ad99ce80bc4a4b11', '顾祎', '09fd6a293d6f4621b22cbb156bc61310', '1', '', '2018-10-22 00:14:36', null);
INSERT INTO `tb_employee` VALUES ('84f6b825327b4605b23d566ecbfafab7', '劉Sir', '5de048ea5f874bfdbb6eca70eb5af667', '1', '', '2018-10-21 21:18:00', null);
INSERT INTO `tb_employee` VALUES ('85bd7e3235a9431183f16b83b7a2055a', 'peter', '87c1ca194d8f432fb39f3a624ea8fdce', '1', '太原', '2018-10-23 14:38:39', null);
INSERT INTO `tb_employee` VALUES ('85d3086ff7074d38a3698698efc8f811', '墨深', 'b0630abbb2cf4637a17647be1ef145a8', '1', '广州', '2018-10-22 07:49:17', null);
INSERT INTO `tb_employee` VALUES ('86ed8406e5144b1988d35a46642ceaad', '董', '0c41c24694204ff59dcc31beb75ba57d', '2', '', '2018-10-22 23:46:01', null);
INSERT INTO `tb_employee` VALUES ('8710a78cafff49058ed3ff12b9704241', '&', '97f1a798ae864637a66641fdbd5eccc2', '2', '', '2018-10-21 23:00:52', null);
INSERT INTO `tb_employee` VALUES ('874febed40434239af02fb33dc58b0f8', 'ship', '855d28008cac4caea41e13016a6e37fe', '1', '', '2018-10-21 21:07:38', null);
INSERT INTO `tb_employee` VALUES ('881f920294274f828fe4d7b739363c48', '蕊希', 'f8c8389224d34571874772a1065d617e', '1', '', '2018-10-21 18:31:49', null);
INSERT INTO `tb_employee` VALUES ('882ee8289b4f48309d0b9a838d245f55', '平      凡     人', 'eb12f9b77dfa49fba550ac57776dc40b', '1', '渭南', '2018-10-21 18:47:51', null);
INSERT INTO `tb_employee` VALUES ('884d9c4adeaa4154a133645be8486d40', '流浪与自由', 'ed1b81ae3d104c4395cc10f26f069350', '1', '奉贤', '2018-10-24 21:24:22', null);
INSERT INTO `tb_employee` VALUES ('88e9b79e732742c1ad86ff901b248c64', 'Mr.Y', '6e2bf8b119d4462f8e4bd926a4711fd0', '1', '', '2018-10-22 12:24:15', null);
INSERT INTO `tb_employee` VALUES ('892c3cba7446485f804ad59cdc7bfd7a', '杨 i', '99c5898d8c2945b691f3b8874dfaf968', '1', '邯郸', '2018-10-21 22:21:02', null);
INSERT INTO `tb_employee` VALUES ('8aaf634e5c554db0907b38d5a15a87ba', '.', 'a91d8d73b3a7454b846389b6cc0ce526', '2', '', '2018-10-21 21:49:07', null);
INSERT INTO `tb_employee` VALUES ('8ad16f5da30a4e1eb13716dfcecf3eb0', '好好先森“', 'e420eed4ccd0432ebbdb9d025b8c5825', '1', '大兴', '2018-10-21 19:54:19', null);
INSERT INTO `tb_employee` VALUES ('8b70223ed00f422ca7b426901112e9dd', '~_~', '6edd809b21fb4f0db6efa3972eac3676', '2', '六安', '2018-10-22 07:49:23', null);
INSERT INTO `tb_employee` VALUES ('8bb6ada9a8a64528809769b5800eff85', '不忘初心', '1eb9662768b54db1921b85fe9f456ee0', '1', '晋中', '2018-10-25 06:34:48', null);
INSERT INTO `tb_employee` VALUES ('8bc22a7d3afb407a9077dd5876d047c9', '　　　　　　　　', '96c2adeeeac14e7194cacc7df73cc7b7', '1', '海淀', '2018-10-21 16:45:52', null);
INSERT INTO `tb_employee` VALUES ('8c4884f2af944612994b4f09bf7d184d', '璞玉浑金', 'f5704cba9cd442bd9ea77ff4e67171f1', '0', '', '2018-10-21 21:30:13', null);
INSERT INTO `tb_employee` VALUES ('8c6ed4ea8aa14a0bb81e594a0e55b47e', '倩倩是个小太阳 呀！', '17ec2614a91d4e44864235c7119d7af4', '2', '吕梁', '2018-10-23 21:21:07', null);
INSERT INTO `tb_employee` VALUES ('8e293e9a2393408d902d6f2dcc1925c5', '　　　　　　　　', '59de8668ed234b7798e7d43f6851fc0d', '1', '', '2018-10-23 14:48:23', null);
INSERT INTO `tb_employee` VALUES ('8e40bd888544444980cea1c40ceab161', 'Cathy', '27449d7dc51f4a7988f34b34f0000ce8', '2', '奉贤', '2018-10-23 21:30:32', null);
INSERT INTO `tb_employee` VALUES ('8f8867fc5dab4a218440923c09efce53', '无敌黑妹.', '9ad3449325d442ca993da0fa5567ceb3', '2', '', '2018-10-21 18:50:16', null);
INSERT INTO `tb_employee` VALUES ('8fc8037bb9ac478b9e8c45b46f3cf200', 'God', 'e5523026571d4afe872ba9a6917fdc46', '1', '', '2018-10-24 08:37:24', null);
INSERT INTO `tb_employee` VALUES ('90237da6ee72470381dd6fa3c05047ca', 'Yu  6', '2fe6d2b4244d48e0a0a837fb8a7f509e', '1', '奉贤', '2018-10-25 11:37:22', null);
INSERT INTO `tb_employee` VALUES ('9046e7343fd04bc6b107a69ad6fd0815', '取个名字真难', '0ae054555b4847beb656b8ecd5bf145c', '1', '房山', '2018-10-22 10:43:01', null);
INSERT INTO `tb_employee` VALUES ('9059d7afb34846dda71fbf42d3cf04ed', '殇爵', '0fa17f2c00e24bcd93225db1b1d0a483', '1', '', '2018-10-21 20:56:12', null);
INSERT INTO `tb_employee` VALUES ('905c60bdf7fa4a0e81e774d00f2580a1', 'YangYuXuan.', '3e13b7f6d1424b0d9af9bdd035f2019a', '1', '牡丹江', '2018-10-25 17:46:13', null);
INSERT INTO `tb_employee` VALUES ('9064e6a1a204499ba66d14d9a64ed197', '欧若拉的使者', '3581f486c25940c68d348061f1c92560', '1', '哈尔滨', '2018-10-22 11:47:49', null);
INSERT INTO `tb_employee` VALUES ('90944e63b8c14643ac55bbc4cb0dab22', '哼', '50c0c0449cf248c7b7e70e8a9e1fcf09', '1', '', '2018-10-25 17:38:12', null);
INSERT INTO `tb_employee` VALUES ('90ac8b516566424fac05d93f87ca6785', 'A  孟家二小姐 ', 'd2a12755c7624c4db7be1ddc2ec39a7b', '2', '', '2018-10-21 20:57:54', null);
INSERT INTO `tb_employee` VALUES ('90c28e822498469e8ae05d9977c93f31', '高大森', '2f1a964fac4949098875ee48fd63d757', '1', '', '2018-10-22 22:20:48', null);
INSERT INTO `tb_employee` VALUES ('910d5e06f4e84d0f9b596088da3ef9f9', '大哥', 'aa376f09ebdd4f5f92e7cfd88de4b398', '0', '', '2018-10-22 12:25:14', null);
INSERT INTO `tb_employee` VALUES ('911f0f8cd4974d1397a5dfdbb7991214', '磊子乞丐', 'd6c09d5c15b54dab91f9d095ca52b6e5', '2', '房山', '2018-10-22 07:43:09', null);
INSERT INTO `tb_employee` VALUES ('91376fff1d244883af0562cb18252da5', 'Tao~', 'ab0d6bb5e0b7449e99715c3301fb26e4', '1', '太原', '2018-10-24 20:58:24', null);
INSERT INTO `tb_employee` VALUES ('916245d6e0434fedb84fab9bdc20e0a5', '王先生（*＾ワ＾*）', 'ff9512244eeb477d9bf7927b8f616d67', '1', '揭阳', '2018-10-25 07:47:39', null);
INSERT INTO `tb_employee` VALUES ('9168143688d04e2eb8e4eb53f0f1ee04', '言午', '891278d0c7984da39a0b78f8182d04dc', '1', '', '2018-10-21 22:38:17', null);
INSERT INTO `tb_employee` VALUES ('91dde776a3e845c59bfea5080c1cc237', '你丑到我了', '7c70380906e54ffa919febea65414598', '2', '', '2018-10-23 07:16:59', null);
INSERT INTO `tb_employee` VALUES ('923e4b6fe2b646629c683e4eac98b497', '不凡', 'fcfa9f47cf674f1fa718f88487ebdaa6', '1', '临汾', '2018-10-21 22:16:45', null);
INSERT INTO `tb_employee` VALUES ('92feb62918fe4b4b8553023ca8037fd2', 'Aimirr', '0ccf3e68ca2248eebe7ce40100e3827c', '1', '苏州', '2018-10-26 01:42:08', null);
INSERT INTO `tb_employee` VALUES ('935ba5dc7f3b4d468727d48bf4d4ccbf', '孟将军', 'ee08e09a37d94991aecad9cb35c132c8', '1', '太原', '2018-10-25 17:50:29', null);
INSERT INTO `tb_employee` VALUES ('941bfda167ad4eefa64b99154931c47b', '原。', '5653e188d24d44049749fcf5ed4872c7', '1', '', '2018-10-21 22:31:00', null);
INSERT INTO `tb_employee` VALUES ('945145f2f53d41aeb79316b9b4db6d92', '゛安若暖阳', 'ba5dfbf13b5c46b48371795573adc34d', '1', '石家庄', '2018-10-21 21:36:54', null);
INSERT INTO `tb_employee` VALUES ('94a11205b8834dd19f42352561b5f6e9', '〖     以后的以后〗', '87ed1f2d61474fb49c2c5719a17f9aa3', '1', '菏泽', '2018-10-21 21:41:27', null);
INSERT INTO `tb_employee` VALUES ('94b1b3f8473c4c859c477e408826cf13', 'A.思聪', '0672e94d2e6c4b728b8e2bf7e06ec724', '1', '宿迁', '2018-10-21 22:00:58', null);
INSERT INTO `tb_employee` VALUES ('94ea578fea504a2999a049538b0bda9f', 'A胡艳坤17743610333', '369a68014525467ebf305f2029114735', '1', '海淀', '2018-10-21 22:06:40', null);
INSERT INTO `tb_employee` VALUES ('958247bfcef245b28c91cb03c3f37164', '开心派对', 'b2d98e2bb41345b297d9ab2e0f7c757d', '0', '', '2018-10-22 11:32:27', null);
INSERT INTO `tb_employee` VALUES ('9588da13deb6405ebde3e178d363d1ca', '淚是苦的', '66be45183e344f6dac506ecc8dd5cba0', '1', '鹤壁', '2018-10-24 21:02:41', null);
INSERT INTO `tb_employee` VALUES ('961dcee0b08342b885004c8b03f1b55e', '绿阳', 'd352e4adee1f424facac55b3fdacf677', '1', '', '2018-10-21 22:39:48', null);
INSERT INTO `tb_employee` VALUES ('9695c4b2c09c443c865fab7eca633bda', '小哥', '7983c878a87b4e9793046c32089afaf0', '1', '台北市', '2018-10-25 08:47:23', '已经为您手动注册，修改信息请联系管理员，andglf@163.com');
INSERT INTO `tb_employee` VALUES ('971659d865374f22b9f503aadb4ff94c', 'Flies', 'c30551b4ce68493bb52b0b025734c719', '2', '', '2018-10-22 05:09:24', null);
INSERT INTO `tb_employee` VALUES ('974c9b19244641fab4424d6f83008577', 'color', '0b02b0ec4ce34c66b730b7fd55ac50ce', '2', '菏泽', '2018-10-23 16:57:15', '你好');
INSERT INTO `tb_employee` VALUES ('97a93961f74a4f7cb70b674cb03be082', '尘埃落定', '5b2c61ba00534e1ca7ae266b11308aa9', '1', '晋中', '2018-10-21 19:48:38', null);
INSERT INTO `tb_employee` VALUES ('97df734a9e3c4a03bb83971c54830b76', '海华、', '5ec73986fe2e44f5b15bd563df1518e2', '1', '龙岩', '2018-10-22 08:22:39', null);
INSERT INTO `tb_employee` VALUES ('9810213a6d4f42ceb6119022d404910c', '随心°', '2f5c04d832524b42bbb0edfc38f69b69', '1', '宿迁', '2018-10-21 22:18:28', null);
INSERT INTO `tb_employee` VALUES ('981c5fc20cb645c5973eba2941a864bf', '@ヅJiaLe', 'ea5e87ce461d43e8987e8078ed22004d', '1', '漯河', '2018-10-21 22:43:54', null);
INSERT INTO `tb_employee` VALUES ('983e72d69a804dada4f52103bc36ce38', '聚散终有时', 'be56bc33939e44e8a64f09292eaf31ab', '1', '奉贤', '2018-10-22 10:36:31', null);
INSERT INTO `tb_employee` VALUES ('986434a48cc64ddebb8a44f0605dcd00', '野的像风', '7227cbd6b0e446ba80a089943fbb0493', '1', '锦州', '2018-10-22 00:47:21', null);
INSERT INTO `tb_employee` VALUES ('987bd3eb3aed4e1eaf08e2f915794afa', '魏鑫博', '88854724e00d49d1b79073cae6c13919', '1', '新乡', '2018-10-22 14:20:21', null);
INSERT INTO `tb_employee` VALUES ('98b41c990882452286a2c39d5d0a3955', '龍', '4a480e27edf34bbd9ea507a11101f084', '1', '', '2018-10-23 22:27:59', null);
INSERT INTO `tb_employee` VALUES ('9b04090cb59d48149dcb8450faf54fa1', '海阔天空', 'bfeeaf3f55de42dd873812e72cefaf18', '0', '', '2018-10-21 22:30:28', null);
INSERT INTO `tb_employee` VALUES ('9b38a730b5bf4c0185bccfe4b44a5d8a', 'For丨丶Tomorrow', '9924a6c21f7f488cbe970165fac521fb', '1', '丰台', '2018-10-21 18:37:35', null);
INSERT INTO `tb_employee` VALUES ('9b63c10dbde247d7aeefefdf7204c971', '℡Berret', 'd42a535af9e2492bb906ae150883e3f7', '1', '', '2018-10-21 18:19:39', null);
INSERT INTO `tb_employee` VALUES ('9bb653b822f14343a884af15ed974fda', '。', 'b7ae617692e7434684de1d81471647fa', '1', '新乡', '2018-10-22 08:15:20', null);
INSERT INTO `tb_employee` VALUES ('9bf09f0ad4444ca0b1828140e29204f5', '路人', '35edaf93332940d485010544e33e11d4', '1', '朝阳', '2018-10-23 18:50:55', null);
INSERT INTO `tb_employee` VALUES ('9d34b7c7e64641d8bb90d7560bb8ef05', 'Mr. Trouble', 'fd7aa75f99454891a1f7ddf2b41b8c48', '1', '', '2018-10-23 01:20:29', null);
INSERT INTO `tb_employee` VALUES ('9d556a270804440592e53d705adf4a07', '兴', '3b198485a9d74b5c9b5718fd21498d60', '1', '廊坊', '2018-10-24 20:55:15', null);
INSERT INTO `tb_employee` VALUES ('9dd3f8b38d3c4c1c895e916cac508012', 'Y', '2fbbab69c5db41a2a15ca7c72aa293d8', '2', '宝坻', '2018-10-21 22:16:34', null);
INSERT INTO `tb_employee` VALUES ('9de3d93143b44de79875dc3871d09c8f', 'A-吴先生', 'dff0b9a9530b43a7b5054912579e6855', '1', '大兴', '2018-10-23 08:48:33', null);
INSERT INTO `tb_employee` VALUES ('9e459884f3a24a37bc4cad6ecf8ddb10', '怎能累了就说放弃', 'b4adb24f4a8d490aadc1c8a3261637dc', '1', '大兴', '2018-10-21 21:35:49', null);
INSERT INTO `tb_employee` VALUES ('9e7b7e8fad324ded848d23dc863339e1', 'X_zhi', '1cb1c12dbea44e89aa249ae9feb6d59b', '2', '', '2018-10-21 23:32:54', null);
INSERT INTO `tb_employee` VALUES ('9ea6c4001dc34f14b2ed886663537ab6', '狼王', '1e0f4ce0129e48689382905bde4a103c', '1', '房山', '2018-10-22 14:05:03', null);
INSERT INTO `tb_employee` VALUES ('a0a9ea730f03444bbb04e63224e0fa8f', 'A', '566de877c8524c07bcaafb94e1a7b25e', '2', '张家口', '2018-10-21 22:50:05', null);
INSERT INTO `tb_employee` VALUES ('a147eba484724335bcb7bfec62525d92', '', '74aa779363164495a0a0a56a68c1230c', '2', '吕梁', '2018-10-22 15:53:19', null);
INSERT INTO `tb_employee` VALUES ('a246c963c71141bb9ffd7514a1614f39', '-  King。', 'f511acbf416b411eb8cd52cb743feed6', '1', '', '2018-10-21 23:19:54', null);
INSERT INTO `tb_employee` VALUES ('a3e4f376bfa7451f89c1f350c87508b4', 'A邵海明', '6f7e092990f549afbc02466e82a84af1', '1', '', '2018-10-21 18:51:30', null);
INSERT INTO `tb_employee` VALUES ('a3f0b9e91e8b49b7b1e59feb64580b62', '，，，，', '3c7839bfb6e54d05bd8eecb7805f8322', '1', '郑州', '2018-10-22 16:28:44', null);
INSERT INTO `tb_employee` VALUES ('a4c49a3a35b04e1aac8f2ba7d6c4ad73', '天泽', '8062c9e9361040aa9abfd05109a4b8c6', '2', '大兴', '2018-10-24 07:39:21', null);
INSERT INTO `tb_employee` VALUES ('a502eabf965345708ffd100d0fd2e8a4', '无畏', 'd32ad27130704b7496468cf988accfb3', '1', '', '2018-10-23 14:50:30', null);
INSERT INTO `tb_employee` VALUES ('a52f6861d12341bc8e2eded393a70caa', '郑家鼎', '208f93cf55e7476eb2dd526c86dd3d3d', '1', '许昌', '2018-10-21 20:07:49', null);
INSERT INTO `tb_employee` VALUES ('a55b36da34cf415fae1ece5bee932bb3', 'ナ浩', '72eb640d8069436c81387a4d87b97140', '1', '宁德', '2018-10-25 16:36:05', '每次考试末班很烦');
INSERT INTO `tb_employee` VALUES ('a575c0d598de4496b4bfc04b2e95caf9', 'new', '029ab8d9036748719ad1bda4671690e0', '1', '', '2018-10-22 17:36:08', null);
INSERT INTO `tb_employee` VALUES ('a57988169ad943e18991919fffb3e235', '薛', 'b24958aea98545f78b4de47014793aa0', '1', '石家庄', '2018-10-22 14:43:12', null);
INSERT INTO `tb_employee` VALUES ('a5c97ad52ced4c01a15a16912f8ef4c8', 'Starry', 'c48d950e1a4c47bbbf78754b3024eddb', '2', '', '2018-10-26 09:41:33', '12321');
INSERT INTO `tb_employee` VALUES ('a624d886c6a448879c2c0febc4b06ebb', '姿势性震颤', 'aac639bb4a1841e79f301cbdb346b45a', '1', '邯郸', '2018-10-21 19:47:59', null);
INSERT INTO `tb_employee` VALUES ('a6263bb40ad940d397f7c1bdaa952523', '凌子陌', '75bbf508528a4ce48fb12190195b13c7', '1', '', '2018-10-25 11:24:57', null);
INSERT INTO `tb_employee` VALUES ('a64a9a2363a54db98fcd15ad20b1ea7f', '铛', 'a8deb0536fa840f0b6b91c07427465dc', '1', '洛阳', '2018-10-21 20:50:24', null);
INSERT INTO `tb_employee` VALUES ('a69b68317e334a728d96240c5358bec8', '演绎不了的灬离歌', 'b52be558215f474e876caa57128222c6', '1', '宿迁', '2018-10-21 21:32:07', null);
INSERT INTO `tb_employee` VALUES ('a6d1422f5a184a06916a580c539b3815', '梦之恋～易霜', '0ea7786c14f14f8986a540ea311675d2', '1', '', '2018-10-21 22:34:23', null);
INSERT INTO `tb_employee` VALUES ('a7819034c9eb4f4990109c48936f62a1', '小楠', 'd149089cb3744bfe98adf269da15de1f', '2', '', '2018-10-21 20:58:07', null);
INSERT INTO `tb_employee` VALUES ('a871e4d1cefa453681a9105b8a8616a2', '仰天长啸郭哥好', '40347637b1a6425f916fd1a83cbfe220', '1', '太原', '2018-10-21 21:49:45', null);
INSERT INTO `tb_employee` VALUES ('a89f38acb0ec4e27b42b546355a0c31a', '@', '8c7bb472d23643c7b22c388e6ba6ce3a', '1', '濮阳', '2018-10-24 21:45:52', null);
INSERT INTO `tb_employee` VALUES ('a94df9d83d4d49dc9b3597b59e26b609', '你别走远', '062429c7018d48f0b6287b5b19b15526', '1', '汉中', '2018-10-22 07:21:41', null);
INSERT INTO `tb_employee` VALUES ('a97cbd195beb4ba482ed89919fb4e559', 'Small HO', '7d3862180f514b118cf0f5cb5468cfe1', '1', '亳州', '2018-10-22 00:39:08', null);
INSERT INTO `tb_employee` VALUES ('a9d07b34b0184e18a51b60a653853183', '胖子', '930c49411b0048ae8db5a5689c41b925', '1', '', '2018-10-21 20:57:57', null);
INSERT INTO `tb_employee` VALUES ('ab0ba4e561fa480b8271598e55048b93', 'LQ', '543bf469d75a48c384c72c2e2ef8d8ab', '1', '', '2018-10-23 11:43:54', null);
INSERT INTO `tb_employee` VALUES ('ab26eb41a91244fcb10c91666f6abc42', '君笙拂兮', 'fc1a4e37c0bf41419a92dd4b441e1f06', '1', '安阳', '2018-10-22 07:13:20', null);
INSERT INTO `tb_employee` VALUES ('ab5e0a7bdcbf44d1a192667dbabdd4ac', '龙龙', '0655fbaf300d4c52b0784f11804846a8', '1', '房山', '2018-10-21 22:09:10', null);
INSERT INTO `tb_employee` VALUES ('abd30ffe757440cdaa663e0aceb1ba61', '九离.', '9547170b077d4843aa25502a1ef4c3d7', '2', '宿迁', '2018-10-24 20:42:57', null);
INSERT INTO `tb_employee` VALUES ('ad4034498af8494080bd9566e0b86895', 'what จุ๊บ', '0cc5fa7376be4ac8a0b7db7e51030569', '1', '', '2018-10-19 19:51:39', null);
INSERT INTO `tb_employee` VALUES ('ae45ad0655e54f319ade1378e267bcf0', 'A8', '192dc29965c047c5b8be3a77e62cd818', '1', '海淀', '2018-10-21 19:23:29', null);
INSERT INTO `tb_employee` VALUES ('ae9afd319b254e46979609d4e757e130', '东西', '0d09a828cd24456f9a1fee238b6e55a6', '1', '宿迁', '2018-10-24 18:53:32', null);
INSERT INTO `tb_employee` VALUES ('aed35182fbfb451287e8d267b14b9f3a', 'x', '702669e0703243c5b971abc1578cd28b', '1', '', '2018-10-23 07:51:09', null);
INSERT INTO `tb_employee` VALUES ('af53fbf372304e349da858a068509243', '竹竹', '9dc4fb306ba54934b0320fd834a53180', '2', '房山', '2018-10-21 20:55:48', null);
INSERT INTO `tb_employee` VALUES ('afa07abb0bc3483c8cde90888908ed50', '哟啊碧池', '0e86100c8ce14cbbaa167f03c026fd63', '2', '郑州', '2018-10-21 21:13:40', null);
INSERT INTO `tb_employee` VALUES ('b00fef2c0ec44f39b66c8a105b0e2900', '陈三贵', 'dafa1295b32446f993aeac08fa8a4ebf', '1', '南京', '2018-10-23 08:22:52', null);
INSERT INTO `tb_employee` VALUES ('b026a0eda3c34823b68c93a43d6d68cb', '梦在天', '31a9fdc59f8f4e8291de3de7085aac89', '0', '', '2018-10-21 20:43:13', null);
INSERT INTO `tb_employee` VALUES ('b099c825ff09432482aa61d774c75f6b', 'Self achievement', 'b2c81efd9b634209a87f67036ec92bfe', '1', '临汾', '2018-10-21 17:50:56', null);
INSERT INTO `tb_employee` VALUES ('b14beccc08434ea9a7cff05f0e7f18df', '几时烟雨', '746ec30baade4d188f50a63b65a61795', '1', '昆明', '2018-10-21 23:46:22', null);
INSERT INTO `tb_employee` VALUES ('b1c4303ede674b6cac5b400d1f1b730a', '低调', '18c138d78b49494ba762e07220e8c571', '1', '哈尔滨', '2018-10-21 21:04:47', null);
INSERT INTO `tb_employee` VALUES ('b1d4f0311a0f4bf3980df9b0e69c5dbf', '回望', '9a503f4ecf8b4246af9bf47a2006d5ee', '1', '信阳', '2018-10-21 23:42:43', null);
INSERT INTO `tb_employee` VALUES ('b24023b4ce2c4c08ba9400332f6d3539', '麋鹿', '7e5305287950478ca10384dade8c67e2', '1', '漯河', '2018-10-21 23:05:52', null);
INSERT INTO `tb_employee` VALUES ('b2e66718553a4fb1a0f5087c8ba011a3', '遇我所瑜', '22e603a72a4c43f4b8905797d64d2af4', '2', '', '2018-10-22 12:02:36', null);
INSERT INTO `tb_employee` VALUES ('b40b8dce179a41d5b215f0dfa9423043', '安稳。', '775c80eb23064f30ac0837da81447a76', '1', '聊城', '2018-10-21 22:22:46', null);
INSERT INTO `tb_employee` VALUES ('b40f8b6dbdd7409d861d26f9d805a733', '小日', '91bc968ec44c4f1a9963ba4e4394004c', '1', '', '2018-10-21 20:01:55', null);
INSERT INTO `tb_employee` VALUES ('b53ecf20419948a68d222fb64364f9fb', '。', 'bd660072696a415d88d66cbae1bf937c', '1', '', '2018-10-21 20:42:03', null);
INSERT INTO `tb_employee` VALUES ('b5571f9a455946a5b8514e7eea62e784', '欣欣向荣', '77875bf5d1924515808d405f670328ea', '0', '', '2018-10-22 07:50:55', null);
INSERT INTO `tb_employee` VALUES ('b5f933afed7345a3985ee1682817cdf6', '精彩', 'c5d013d19e234cd0ac258dfdc0af510f', '1', '晋中', '2018-10-23 09:46:05', null);
INSERT INTO `tb_employee` VALUES ('b62ffc68a9b14db7aef8274a501c96e8', 'shmily', '289d0bae3c884322ae3f1928544f685f', '1', '宿迁', '2018-10-21 22:44:51', null);
INSERT INTO `tb_employee` VALUES ('b64dd2e0f0e142e5b9cf07d43c7f7342', '猪迪老爹', 'e4242c6db616449cadb6f172b797c834', '1', '', '2018-10-22 16:59:35', null);
INSERT INTO `tb_employee` VALUES ('b77b189ee4e04ab78f4938505eaee1cb', 'Lee 博文', 'dbdbb3c84e9645d2a92a20db39a91216', '1', '', '2018-10-21 18:29:44', null);
INSERT INTO `tb_employee` VALUES ('b7db7797e50e4e8dbb47c71b30fe4931', '腾飞的翅膀', '04eceabd843e40b3935540be186c76bc', '1', '廊坊', '2018-10-21 23:16:38', null);
INSERT INTO `tb_employee` VALUES ('b8822a7dae1444758dc6a88feaf71fd2', '爱笑的小恶魔', '0342683c1fad405b8846d3c386e94177', '2', '', '2018-10-22 07:34:11', null);
INSERT INTO `tb_employee` VALUES ('b8db8738025b465baa69750d8c3d19c4', '#', 'd87c85ea0e7f49b5a58e737799a436c1', '1', '大兴', '2018-10-23 21:24:16', null);
INSERT INTO `tb_employee` VALUES ('b9c81972c9874e668bff6177b2f9cdb4', '自此', 'bcfb56153a264c84b16fb2c254ac5ecd', '1', '', '2018-10-22 15:12:10', null);
INSERT INTO `tb_employee` VALUES ('bb139e73a0514f2790ea2363f2c889b3', '陈悦', 'eef820e35fd9413f988001c6f20d61f1', '2', '菏泽', '2018-10-21 20:57:17', null);
INSERT INTO `tb_employee` VALUES ('bb9a60df430f4bdbbd57ac25f7b4ff89', '夜、｀狠冷〕', '1efbb52eae924b3a9e9c12a184058e8f', '1', '大兴', '2018-10-21 18:32:11', null);
INSERT INTO `tb_employee` VALUES ('bc3108d506134058b8e3b505be6f39f9', '霓彩', 'aa35096010f24d4cbb10d6ef3cf727d6', '2', '合肥', '2018-10-25 00:05:02', null);
INSERT INTO `tb_employee` VALUES ('bc404da468094ec8997fe38678498de5', 'love life', '78410ce12f1d43d68d1fac1492731d22', '1', '晋中', '2018-10-25 17:02:52', null);
INSERT INTO `tb_employee` VALUES ('be7962de70c14c9f8910424b52400fce', '花荣', '881207c7e2ab45e5bc7397684504fa08', '0', '', '2018-10-19 19:54:27', null);
INSERT INTO `tb_employee` VALUES ('be96410e2cc14f31bf8cbd653f75e002', '　　　　　　　　', 'f347b52e3c554800a57ef8ce89c9da5c', '2', '海淀', '2018-10-22 08:15:07', null);
INSERT INTO `tb_employee` VALUES ('bee1ed1cdabe4d0f96c432e80fc31a60', '*', '702f990530ec488686d40ddcecf7d084', '1', '', '2018-10-24 16:50:22', null);
INSERT INTO `tb_employee` VALUES ('bf97e20e7a624ff4972e1e4da2c01580', '谁说', 'a1cee5effd2c446cb1abdace48839ca7', '2', '林肯港', '2018-10-21 23:14:40', '，');
INSERT INTO `tb_employee` VALUES ('c062058ddb98426d851c62b7371b2b5c', '华年', 'a167c69afe4d47bbba76b58844c17046', '2', '海淀', '2018-10-22 00:22:01', null);
INSERT INTO `tb_employee` VALUES ('c09e578598764facb42428775f25b301', 'Ming', 'b5c4691c51e048e5afd9be76922fab30', '1', '', '2018-10-24 22:50:04', null);
INSERT INTO `tb_employee` VALUES ('c1246ea3cead4af294ac554497c66dfd', '林夕雨田', '7bfe8a771e5b4be1a0bbe79691d0654d', '1', '海淀', '2018-10-21 20:38:50', null);
INSERT INTO `tb_employee` VALUES ('c1ab876457ce476da223d17e0240fe7c', '年华@', 'ffbc817e62514582a43857af90667aba', '1', '大兴', '2018-10-25 15:56:13', null);
INSERT INTO `tb_employee` VALUES ('c316d1eec86f4df89caabb9eff52a0e7', '心动', '7b62ab2a3a2a4793b200f063e54af28e', '1', '', '2018-10-21 21:14:14', null);
INSERT INTO `tb_employee` VALUES ('c33e2d6666cf42ecb4dc6beca3bcdfc3', '野的似风', '8db5bddcd69f4d83b9a8c7be665bc48d', '1', '宿迁', '2018-10-24 20:26:17', null);
INSERT INTO `tb_employee` VALUES ('c3951eb80f904655a5d8d3e1eff37660', '一生随性', '64042c80428c486896f86cc80339c637', '1', '', '2018-10-22 07:45:30', null);
INSERT INTO `tb_employee` VALUES ('c3cdedd620a244eda0e637a1b4cf0cbc', '初', '2b84e24ec49b49cf80758602a8ac4719', '1', '', '2018-10-21 23:45:16', null);
INSERT INTO `tb_employee` VALUES ('c445747ba70549639cf87e465354bc04', '阿拉丁神灯 ', '175022de8a464046bd903d3c3b5cf61d', '1', '', '2018-10-24 06:56:39', null);
INSERT INTO `tb_employee` VALUES ('c4a7737c902e48a1954ab0edf695b19a', 'A_帅G', '99a76705db93445aba75d3241bcbbbef', '1', '海淀', '2018-10-21 22:40:59', null);
INSERT INTO `tb_employee` VALUES ('c50d2fd898194d59897ea81697d75f04', '刘家迪verona-', 'd7c9b14c338f48849cd63aaa5a15077c', '1', '石家庄', '2018-10-22 20:01:41', null);
INSERT INTO `tb_employee` VALUES ('c5e448d184ae4d27b2cba743cf535125', '喜欢装点糊涂', '2387fda03d5e40198a8c28c13f1ee455', '1', '太原', '2018-10-21 22:06:47', null);
INSERT INTO `tb_employee` VALUES ('c6562d289c8f420cbc09f8dfcf0d0689', '奥', '4ad64f1fb345454da29c0407309eea0b', '1', '', '2018-10-25 18:13:57', null);
INSERT INTO `tb_employee` VALUES ('c78f8a7fdd0c43d19fc9d46e9d9a1f37', '海东', 'c2f26993c20642b29c098273f441f0fb', '1', '大兴', '2018-10-26 00:53:42', null);
INSERT INTO `tb_employee` VALUES ('c7d23adaa39e48ada5fb7d9ccbd36704', '七零一t', 'dc99bfa71867478d93845082ea76d5ba', '0', '', '2018-10-22 14:47:27', null);
INSERT INTO `tb_employee` VALUES ('c7f46ad366064b74a84d0380adcf1441', '凉安', '7fa8ae5f546f4b088347539792de20b3', '2', '海淀', '2018-10-21 22:02:28', null);
INSERT INTO `tb_employee` VALUES ('c8460cac3fae45ebac7a7776767e64d5', '小宇  呀！', 'd95a2557c6c24686bc556e981a766302', '2', '商丘', '2018-10-22 07:56:00', null);
INSERT INTO `tb_employee` VALUES ('c8626ca5b29a42349511f6b55be6e280', '小猪猪', 'b24f7a4c562e471d8efda8e3d7ec7d7e', '1', '延安', '2018-10-23 20:30:36', null);
INSERT INTO `tb_employee` VALUES ('c8b43298a38d4808ba8f6280a38351fc', '。', '9c10df7c0d0f40acacdc2aceb2f7b280', '2', '', '2018-10-21 20:56:57', null);
INSERT INTO `tb_employee` VALUES ('c8d3c7950e2949de9d8fc22e25e1c2cc', '一个人', '3f0e80ccef814efbb10b2629716a8053', '1', '运城', '2018-10-25 21:40:50', null);
INSERT INTO `tb_employee` VALUES ('ca667238348d4bf980b7e95860a2cdb8', '小卓', 'c9022351dbfb4940b0e43dfd9655ac42', '2', '运城', '2018-10-21 21:03:51', null);
INSERT INTO `tb_employee` VALUES ('ca984e7c73bd42c7b34e58f84a74d8b2', 's0ber', '74927ca56022488382fa708e0f3f88a2', '1', '宿州', '2018-10-21 18:42:37', null);
INSERT INTO `tb_employee` VALUES ('cb73407b5acc465ba1351f33e3db20c1', 'fevi', '7a8dd08779e44d868ed54a42d086577e', '1', '海淀', '2018-10-21 15:31:17', null);
INSERT INTO `tb_employee` VALUES ('cbf9b645b4bc4011b87b47a583497654', 'str..', '53076c0621904488a3ca4f782eff2fa8', '1', '', '2018-10-22 18:45:12', null);
INSERT INTO `tb_employee` VALUES ('cc6cc6f0b5e34113bd3e08bb550749de', '张国荣', '62404665899047de86abb402748079fc', '1', '', '2018-10-21 19:44:20', null);
INSERT INTO `tb_employee` VALUES ('ccf974f83bd946128fef14b2ea761e7d', '不渡，', '7df0f39144034fd0b2edbb7e4236216a', '1', '', '2018-10-22 09:25:03', null);
INSERT INTO `tb_employee` VALUES ('cd56434474e7445f89e6b24359b28d9b', '回归自然', '2b4acdb444254c9db9d55e34937ab12a', '2', '石家庄', '2018-10-23 17:28:36', null);
INSERT INTO `tb_employee` VALUES ('cd8904d28c4e4971b2d1b3ad6d72e370', '星哥', '3de398b803bb4106ab03dbe44a4e68ab', '2', '', '2018-10-23 08:28:39', null);
INSERT INTO `tb_employee` VALUES ('ce59965877c14d0181bdfd6c3c8706eb', '贾智渊13788980961', '67f8fc006e1a4870807cf7e84ccd9f41', '1', '忻州', '2018-10-22 13:12:10', null);
INSERT INTO `tb_employee` VALUES ('d0d83914330240b29ff4daa853c34a31', 'As', '2fba7e9170114470a0d540f75f84b9ff', '0', '', '2018-10-25 09:11:11', null);
INSERT INTO `tb_employee` VALUES ('d0ed60d0e2544e7788323b2d30494782', 'CHEN', '1a308b39d28542a3ad46540f48a85839', '1', '海淀', '2018-10-23 07:45:21', null);
INSERT INTO `tb_employee` VALUES ('d1e33e5bbeb84d28bf7ed6d584d96bd9', 'Smile', 'f4100130276446f19759e49333300314', '0', '', '2018-10-21 22:42:17', null);
INSERT INTO `tb_employee` VALUES ('d28bf660979740d881a45a3402c1345f', '今', '0e84966f396342308a936c05c7ea8b6d', '2', '', '2018-10-21 22:38:25', null);
INSERT INTO `tb_employee` VALUES ('d441419585fd4d099700e4e4b2582247', '改变命运', '28c4b0f477194878a0f3b5b92e2eba95', '1', '黄金海岸', '2018-10-22 07:30:42', null);
INSERT INTO `tb_employee` VALUES ('d45fdc4b9dd9475d941f1fec0ebfb9e6', '空', '33aef394682e49b29c2c752d0a08c573', '1', '运城', '2018-10-22 08:37:07', null);
INSERT INTO `tb_employee` VALUES ('d4971b49cfd843b4b6aaa003674d2c2f', '次元', '899cf221fe174e81b49f87225a7b04bb', '1', '运城', '2018-10-22 21:30:56', null);
INSERT INTO `tb_employee` VALUES ('d61dfe313a8d47e4bb30cfed89a7961c', '陌么', '132d87e2f9084e8abcfc3d49e72d42b0', '1', '', '2018-10-22 10:00:12', null);
INSERT INTO `tb_employee` VALUES ('d74f50527d364222a7a9ecef5b506177', '最初の腾', 'ca803dc239054dd1a782ff5ebaa384c7', '1', '', '2018-10-21 19:47:53', null);
INSERT INTO `tb_employee` VALUES ('d76c1b6391a0485497697c27c1222947', '夏目', 'c4688f075ab3458a92dc79cbc36eedb5', '0', '宿迁', '2018-10-21 22:12:26', null);
INSERT INTO `tb_employee` VALUES ('d785f3e8beeb43cfbcf9e554de6af07f', 'G', 'cd9c0168ea0148369f13af33058baa44', '1', '大兴', '2018-10-21 20:29:21', null);
INSERT INTO `tb_employee` VALUES ('d803699d427a4bd9a548a38bde59e5a4', '寻找一码通合伙人', '695e75ff602b44ed92cee1acfca399fb', '1', '石家庄', '2018-10-25 10:13:37', null);
INSERT INTO `tb_employee` VALUES ('d809475300d74ff2917ba8e874178a57', 'rdgztest_92072', '9180a08ff0c847cdacf82a20e5467e08', '0', '', '2018-10-21 13:28:16', null);
INSERT INTO `tb_employee` VALUES ('d82d105571134adea01990dbe89141c2', '百余人 路归途 木林森 日昌晶', '3448617216484e6a88a65daeca4b8058', '1', '', '2018-10-26 11:38:34', null);
INSERT INTO `tb_employee` VALUES ('d8ba723eab4944599634cd31af424624', '风住尘溪雨流', '9a04839a3b804077b231c07932f71816', '1', '晋中', '2018-10-23 14:50:11', null);
INSERT INTO `tb_employee` VALUES ('d97b4c6ed57c4407ba050da620995c76', 'Desperate、Struggle', '3a98c89b35bb4f6bb497b73b67860c18', '1', '', '2018-10-23 18:58:30', null);
INSERT INTO `tb_employee` VALUES ('dbedd364162a49dfbb654c4bd85b13e6', '笑谈人生', 'ff6faee312ef482c8d700a320b3c0bad', '0', '九江', '2018-10-23 17:13:17', null);
INSERT INTO `tb_employee` VALUES ('dcbe7b09c3824b5b8d42abf08b33d89a', '你不配得到我', 'df40e11475ac44e6a0ed6b11dbd2d9ce', '2', '', '2018-10-23 13:45:52', null);
INSERT INTO `tb_employee` VALUES ('dcdc682964f24135a6fe6830075952d5', '张6，', 'e82d2cbe78c64bb3b60923f72c6670fe', '1', '丹东', '2018-10-21 23:17:58', null);
INSERT INTO `tb_employee` VALUES ('de86deb0876f498ebae8f154b2f60ed8', '王付龙', 'a7b81f25f36a4583ad44a1f43793e112', '1', '', '2018-10-21 22:43:18', null);
INSERT INTO `tb_employee` VALUES ('de9c4633d0a14d3d9668f1a6142db62b', '许佳', 'fbec50702b054243bd0068d3eb61d302', '2', '吕梁', '2018-10-21 21:19:21', null);
INSERT INTO `tb_employee` VALUES ('decacdd007a3461bb952fdf95ae499b3', '喜欢悠哉独自在', '2b5ae62eda2d451f92d18d7415b3f245', '1', '石家庄', '2018-10-21 18:21:30', null);
INSERT INTO `tb_employee` VALUES ('df72e87781ac4df191248017b4e4c2a9', '梓焜', '83a065b1ebf44e1ab197fb7bd8cdf29a', '1', '哈尔滨', '2018-10-21 22:17:38', null);
INSERT INTO `tb_employee` VALUES ('df763d6876f5487ea7745fb7ed8a3029', 'l.U', '2dc08fcc1b144a76a6a30617ec5c9902', '2', '', '2018-10-23 21:33:12', null);
INSERT INTO `tb_employee` VALUES ('e007a0c2fbb24c7f8cda3834d963c797', '袁哲', 'c362d120726840deb0019dbec4e609e3', '1', '奉贤', '2018-10-22 08:17:02', null);
INSERT INTO `tb_employee` VALUES ('e0be234920364922a9f1c0e4909c69d7', 'YANGCHEN', '2ac13dbb79bc4f0f8817ff0992c402d0', '1', '', '2018-10-21 18:38:01', null);
INSERT INTO `tb_employee` VALUES ('e15677d69be140ef8832436a09882438', '氓', 'f2c258ae152d4425b5ef5503e4413237', '0', '', '2018-10-22 18:49:42', null);
INSERT INTO `tb_employee` VALUES ('e1771e313b22458cbf261754e12256aa', '莫失 : 莫非', 'bc508a62be0041ce8fb3023b14eae662', '1', '邯郸', '2018-10-25 19:50:24', null);
INSERT INTO `tb_employee` VALUES ('e20ee3c96e6d4297948412360982bdca', '.', '290e245a9c844c37a2ee76b7473847f4', '2', '唐山', '2018-10-22 07:48:07', null);
INSERT INTO `tb_employee` VALUES ('e22bc269112e4c32ba6999431052461d', 'T', '24ad8804b61245fea432213f90b19bdd', '1', '', '2018-10-24 22:00:11', null);
INSERT INTO `tb_employee` VALUES ('e2476d86fdd34765bb0c0fc85d5a260f', '筱锋', '487560722df943c6929888b6cf5cf3f1', '1', '安阳', '2018-10-23 16:36:43', null);
INSERT INTO `tb_employee` VALUES ('e319945f8aa9457cab4447c63eaa86cc', '小男孩', '62e771ed34364473a9f11c6a952ec6ea', '1', '', '2018-10-23 15:30:00', null);
INSERT INTO `tb_employee` VALUES ('e3a8b6c53f634ddab751bc81a6dc6045', '凡尘', '04491492c3544e0986d77d1d8e0fc4f6', '1', '', '2018-10-22 07:36:47', null);
INSERT INTO `tb_employee` VALUES ('e3b65cf187df45bba625ed60ba012f34', '3...', 'd79b7fa18af947c193e145e15e9cfeeb', '1', '大兴', '2018-10-25 15:24:09', null);
INSERT INTO `tb_employee` VALUES ('e4113a434b0a45688d17bb95d2bb71d9', '.', '8e8d7ab5131c41079f410cd6913401c0', '2', '', '2018-10-21 19:48:32', null);
INSERT INTO `tb_employee` VALUES ('e4a4efcbf6b643bf91823091a519fe08', 'CY', 'fde90f41beab4ec1a281c2654519ee14', '1', '运城', '2018-10-19 21:11:49', null);
INSERT INTO `tb_employee` VALUES ('e583c341721649e28a7d6aac040a457f', '理想输给欲望', '8fa9d9b4941848d7827df8017222bdfa', '1', '', '2018-10-22 10:34:58', null);
INSERT INTO `tb_employee` VALUES ('e687d7ec429e4e08b8c48d595b124b7a', '紳士', '15874cee36ab408c95e585a831a6d0c2', '1', '', '2018-10-21 18:42:51', null);
INSERT INTO `tb_employee` VALUES ('e6eb7067b108493a910ae6dea2d3fd87', '永不放弃', '772bedb000e646aeb76d4e6d22b9b349', '1', '运城', '2018-10-22 20:59:10', null);
INSERT INTO `tb_employee` VALUES ('e6f1ed2fe2bf4e58bc07d0a8697c3c20', '扛着98K的猫', '030f066334514ecf84fe1f89d9d91fe6', '1', '', '2018-10-21 21:00:16', null);
INSERT INTO `tb_employee` VALUES ('e8041de7965849b4a9eb7e30a2651317', '陈尧', '79d637d8f7cc45969f906e714d21f2a8', '1', '', '2018-10-22 20:27:02', null);
INSERT INTO `tb_employee` VALUES ('e85694b7e8914ce88888f7585193e5fb', '浮沉', 'cf1134a8a29f4b20a76c96de1160d4bb', '1', '周口', '2018-10-21 20:40:22', null);
INSERT INTO `tb_employee` VALUES ('e894c2117e18457cb3bc067791a99dd3', '贾皓然', 'a25fe97c4e4d4c1e89044203e014d8b8', '1', '邯郸', '2018-10-21 22:38:41', null);
INSERT INTO `tb_employee` VALUES ('e89c0f53c7bc4fd4ab02fd3342e4a1e8', '专卖不限速流量卡，诚信第一', '4ad7865b9f924750a99b8a5d15fae69b', '1', '', '2018-10-22 12:19:44', null);
INSERT INTO `tb_employee` VALUES ('e8dd9a9c6db0444b9feefb14cd69c37c', 'Hexinran', 'e2ab1efda7744c65ac997e2a5ecbec7a', '2', '奉贤', '2018-10-22 01:26:46', null);
INSERT INTO `tb_employee` VALUES ('e9260975397b42d4af23da89c48cca7d', 'Jerry', 'd8a6ac8c179d4fc082a943d5c406ea75', '1', '', '2018-10-21 19:08:21', null);
INSERT INTO `tb_employee` VALUES ('ea175afc7bed4d6fbc513533aaeffc5f', '小杰瑞', '136fff5c88e74b52a2e15387476c35fe', '1', '临汾', '2018-10-22 08:26:30', null);
INSERT INTO `tb_employee` VALUES ('ea92b433ee2348bfac787f3d497a607a', '挚爱言心', '3e40f0cd6369446ab81539ff85cb015d', '1', '许昌', '2018-10-21 18:14:32', null);
INSERT INTO `tb_employee` VALUES ('eaa7cee8d216421aa72e8ef0d5c89099', 'Wanner', '4516f99322524f75b7db4d36b3efd8ca', '1', '', '2018-10-21 21:29:19', null);
INSERT INTO `tb_employee` VALUES ('ead7ce8103d14cf0991e78c6a62c6ff7', '洋洋', 'af8061cc05ff440aada6c2515996631c', '1', '', '2018-10-21 22:05:44', null);
INSERT INTO `tb_employee` VALUES ('eb903a61e47749ad981466f31ff6df78', 'gāo jiàn jié', '82f67b469fa24980819538198afd9ab3', '1', '晋中', '2018-10-23 08:48:54', null);
INSERT INTO `tb_employee` VALUES ('ec21af13b57c42cc962b0af5615e63b3', '尔', '6ba8d29ddf834075a0bcead563d9a8d7', '1', '', '2018-10-24 21:44:43', null);
INSERT INTO `tb_employee` VALUES ('ec41f28f7be644b4ae08a46bd008d01e', '宇飞', '6f00a2f803f5405e81442f2fb3c81ce1', '1', '晋城', '2018-10-21 21:17:54', null);
INSERT INTO `tb_employee` VALUES ('ece8a199f9d545e988e2db32634c1442', '7', 'dc87925902b24097a657f1403f00d560', '1', '', '2018-10-21 21:30:04', null);
INSERT INTO `tb_employee` VALUES ('ecf9a52ee1c644e0b9c18de4637fa96e', '染指&幻影@超哥', 'a06bcb2c14ec4c07b0de264917a9b227', '1', '无锡', '2018-10-23 15:40:05', null);
INSERT INTO `tb_employee` VALUES ('ed4139c3a7a34c29b0dbee3a7a048dfe', 'Q.', '86f2180f747646579b0e425ddb30bf74', '1', '', '2018-10-21 21:39:51', null);
INSERT INTO `tb_employee` VALUES ('ed6598b221914f0b9c5c56f5b6235b05', '年少无知', '50611d6dac844ca0a3b63a13ca65f1aa', '1', '石家庄', '2018-10-24 07:24:31', null);
INSERT INTO `tb_employee` VALUES ('edbb165c82da44d7bb57c81ed4bfc255', '一切源于自己', 'ad597b2df236408584f958259f6142a0', '1', '九龙城区', '2018-10-21 20:34:43', null);
INSERT INTO `tb_employee` VALUES ('ee662aafcfac45fba4d6bdb2b0eaec50', '꧁儒꧂', '08b33fa37a3b4aceba3a09916b95dbd3', '1', '太原', '2018-10-21 20:52:00', null);
INSERT INTO `tb_employee` VALUES ('f0231eae48ba4f489281101b0bf8a094', '球魁', 'e0dc73607a764acfbdca9c73878859c4', '1', '新乡', '2018-10-22 21:36:55', null);
INSERT INTO `tb_employee` VALUES ('f03453952e48457394f46bbe73f17f30', '流云', 'e2802fafd1f64c699873dcba4349b74b', '0', '', '2018-10-23 16:57:31', null);
INSERT INTO `tb_employee` VALUES ('f06eaf8ce8364d63915ac463260de294', '迟浩', 'ced3df2821b74db8837aa8133a3b8a42', '1', '房山', '2018-10-22 18:44:36', null);
INSERT INTO `tb_employee` VALUES ('f14e1e5dae1b4c11b6f1017eed97ba78', '1', '1200b4d1e2694598b2a2800dc6e75eae', '1', '大兴', '2018-10-21 19:55:04', null);
INSERT INTO `tb_employee` VALUES ('f1652675f9c74b9ba6a35ec693060ab0', '阿森', '8ad0e7f51e854ae2b9a2500037c3e550', '1', '房山', '2018-10-22 07:41:57', null);
INSERT INTO `tb_employee` VALUES ('f16f21df2058466795c415957a1bf90a', '阿政啊', 'bf5a68e0e87d453d86a19c5d5ae8bbf5', '1', '', '2018-10-21 23:44:20', null);
INSERT INTO `tb_employee` VALUES ('f19903e5cfea47bb8db060071f8694bf', '～', '1f3243eeec0a4ffa837359b06b427905', '1', '', '2018-10-21 23:00:33', null);
INSERT INTO `tb_employee` VALUES ('f1b759541b964bfb89d1f78fc5788b3a', '♂今夕何夕♀', '0884f820b2004b6c9d190ac790040a34', '1', '连云港', '2018-10-21 23:00:15', null);
INSERT INTO `tb_employee` VALUES ('f1e85a4bc6524abcbac2c8fc8a9a1f8b', 'ZHEnlin', '89ae5d9d20b34db98b5fa62e5c125f0a', '1', '', '2018-10-21 23:55:59', null);
INSERT INTO `tb_employee` VALUES ('f208ae9373374949ba00993ac9ec1ae4', '胖乎乎', '68bf7ee0d5de432796362895eda283e8', '2', '', '2018-10-21 22:01:09', null);
INSERT INTO `tb_employee` VALUES ('f243d2db4e26430a9915b39022c5418b', '我真的希望拥有你', '59cc9a321dd54e5783afee2e1d2b37fd', '2', '', '2018-10-21 21:58:08', '世上第一帅……');
INSERT INTO `tb_employee` VALUES ('f2bdda1f17b34edfa08e513fa1b808d7', 'じ小奋斗', 'b793807a31054483a48c0d73638a126e', '1', '漯河', '2018-10-21 18:30:33', null);
INSERT INTO `tb_employee` VALUES ('f2e028dfefdf41d7acafccc09510764c', '晋哥哥', '5632c670b0754e2c91e0e271b2e57d96', '1', '阳泉', '2018-10-21 22:20:07', null);
INSERT INTO `tb_employee` VALUES ('f384145f575744b79f4eadcfd791a070', '一如既往的酷', '2e3ecd2b4ea948e6946afa6c3fb1716b', '2', '', '2018-10-23 07:37:04', null);
INSERT INTO `tb_employee` VALUES ('f3ef3e609922473a9285ba69fafe396f', '1', 'b94532b86be7492ba77ef04dfae89b29', '1', '', '2018-10-25 00:27:45', null);
INSERT INTO `tb_employee` VALUES ('f410bb447f954381a9041847492bdd84', '孤天狼', '90a97997cca94e9889a1477faad20470', '1', '邯郸', '2018-10-21 19:48:12', null);
INSERT INTO `tb_employee` VALUES ('f416d1c9b1274113b2a2ae1f7e8115ca', 'echo', 'fe078f6054454e9286a0937fc322bd39', '1', '阳泉', '2018-10-21 21:39:59', null);
INSERT INTO `tb_employee` VALUES ('f54075c5f16349bfb76e3b1d8a3e4105', '|ω･`)暗中观察', 'ef8eb62a004742b19f9e6c374c4bfb96', '1', '呼和浩特', '2018-10-22 07:58:16', null);
INSERT INTO `tb_employee` VALUES ('f5814901a51240919effb95f6e7b5e0d', '外向的孤独患者、', 'd546bb3a71c84bca93f9bed807e17d1e', '1', '', '2018-10-22 07:55:16', null);
INSERT INTO `tb_employee` VALUES ('f5ddb730ae214351a4d75208a9512dc7', 'momo酱', '2d39e7b3a2f649e2817406ee87a3207a', '1', '', '2018-10-21 17:51:54', null);
INSERT INTO `tb_employee` VALUES ('f5f7991f4c90480c94e8c3e102600471', 'babykinG.', '671a7807ad2244c691b58fb995267eaa', '2', '', '2018-10-26 11:08:51', '123123');
INSERT INTO `tb_employee` VALUES ('f654600b5e184ba0b08813b5d656f5fa', '[爱心]  执念', '42d38194a84d4c1fba2a02033d856713', '2', '临汾', '2018-10-22 23:29:22', null);
INSERT INTO `tb_employee` VALUES ('f663a781f14e4455bf1fdb59b13e7869', '很好。', 'b6862cf41e174408b5ff49ad8b02360d', '1', '忻州', '2018-10-25 15:52:24', null);
INSERT INTO `tb_employee` VALUES ('f6cd827b36a84fff8e46db7a39bc0db9', '大喜无声悲无泪', '4557a6d0f8e048768a42c102dfd542ce', '1', '', '2018-10-22 11:32:56', null);
INSERT INTO `tb_employee` VALUES ('f71c9077aab8401bb95b31b9d6fb9cfe', '怪人。', '242575f49ffd4b878094d24f2c030ca9', '1', '许昌', '2018-10-21 23:51:15', null);
INSERT INTO `tb_employee` VALUES ('f7ad54cd6db942e8ad40487054f26619', '！', '4c2c2aaa9ff148328725403049b9656c', '2', '宿迁', '2018-10-21 23:02:31', null);
INSERT INTO `tb_employee` VALUES ('f86ed327b4284b37b5e731cbc4cfb0fb', '初心', '6011ea741471495397cd1c5c4a9514af', '1', '辽阳', '2018-10-23 22:31:03', null);
INSERT INTO `tb_employee` VALUES ('f8c2a92f46474428bf26534ac1dbbfa9', '花曜日', '58343a0ba84a43738f1a668e11a28531', '1', '', '2018-10-22 07:44:04', null);
INSERT INTO `tb_employee` VALUES ('f8ebab4938e24472b324c1199b129a0c', '꧁', 'c2232444c8bc484f9e58b42e18edb719', '1', '邯郸', '2018-10-25 21:47:58', null);
INSERT INTO `tb_employee` VALUES ('fa82436ac8964b19bd24b6203a599275', 'a', 'e555390981b7420eb438fcd0b335a01b', '1', '', '2018-10-21 18:59:11', null);
INSERT INTO `tb_employee` VALUES ('fasdfasdfasdfsadfasdgasdg', '刘皓', 'c702821485bd42e3a2b7b88d0bf41747', '1', '', '2018-10-24 10:41:58', null);
INSERT INTO `tb_employee` VALUES ('fb0aeab13ed14a6e9b6587f193c06985', '水沝淼㵘', 'a03a010ddeb54b1383444d44105eb580', '1', '辽阳', '2018-10-21 22:15:02', null);
INSERT INTO `tb_employee` VALUES ('fb63e7377dd34587b0b9d4e2cc72f7de', 'Maybe', 'd32ee4feeb3448ea8e40272db1c25b09', '2', '奉贤', '2018-10-21 20:57:04', null);
INSERT INTO `tb_employee` VALUES ('fb73a75e743e4f3588ab16289eb308db', '韩易伸', '9c6f2639460d41c495cd4f0fa8f9d4bc', '1', '安阳', '2018-10-21 18:51:15', null);
INSERT INTO `tb_employee` VALUES ('fbf7f2af68274e1cb3da7ca5c85bcf32', '你还在', '95565974b1a245a9b663ef3ba58fd708', '1', '安阳', '2018-10-22 21:51:14', null);
INSERT INTO `tb_employee` VALUES ('fbfe47091ff54969a2b1d6d8b5193dbd', '冬天的秘密', '46276b5df592498ba8ea4dcaea3ff2fe', '2', '黄金海岸', '2018-10-21 22:52:46', null);
INSERT INTO `tb_employee` VALUES ('fcef44a33c3c4d538f9ecb1422b9f844', '_知秋', '079fec0675c949aaba34d2d71ab537fe', '1', '', '2018-10-25 13:10:46', null);
INSERT INTO `tb_employee` VALUES ('fd124d711e774b5bb6d1115e2a4634d2', '*叶*', 'd12a4e237b1f48b78d79fbbd705b7766', '1', '南阳', '2018-10-24 14:45:14', null);
INSERT INTO `tb_employee` VALUES ('fd26957f4efa4a229f1a61c5f4ff5719', '与人方便与己方便', 'e6f2f0773c9343fa8885ccfb71a9d3f3', '1', '', '2018-10-25 17:53:19', null);
INSERT INTO `tb_employee` VALUES ('fdfed1c35eb44e078a1b27723536f41f', '莫乙洲', '05dc75324c4f4f69a10eeb92aa5e7411', '1', '焦作', '2018-10-23 21:37:03', null);
INSERT INTO `tb_employee` VALUES ('fe6c6da20eab40909ee025f06a854a69', 'Mr.惠', '9ff0844fa3d74d638ebfdd09e0e6a157', '1', '渭南', '2018-10-21 18:44:29', null);
INSERT INTO `tb_employee` VALUES ('fee379ed7867494fb613c2c8707c082b', '雨落时分', 'fa2c1379a5e24b30989f413395d258a1', '1', '', '2018-10-22 18:13:07', null);
INSERT INTO `tb_employee` VALUES ('ff8936f476fc41b1b7c2e2861f64b3d4', 'Straight man', 'd2b239be150a462eae009472f345ffcb', '1', '', '2018-10-22 22:35:56', null);
