-- Adminer 4.8.1 MySQL 5.5.5-10.7.3-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fid` smallint(5) unsigned NOT NULL COMMENT '父ID',
  `title` varchar(16) DEFAULT '' COMMENT '标题',
  `en` varchar(16) DEFAULT '' COMMENT '英文',
  `ico` varchar(32) DEFAULT '' COMMENT '图标',
  `ctime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '创建时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `sort` tinyint(3) unsigned DEFAULT 0 COMMENT '排序',
  `url` varchar(32) DEFAULT '' COMMENT '地址',
  `controller` varchar(32) DEFAULT '',
  `action` text DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统菜单';
INSERT INTO `sys_menus` (`id`, `fid`, `title`, `en`, `ico`, `ctime`, `utime`, `sort`, `url`, `controller`, `action`) VALUES
(1,	0,	'首页', '',	'icons icon_home',	0,	0,	0,	'',	'',	''),
(2,	0,	'网站', '',	'icons icon_web',	0,	0,	0,	'',	'',	''),
(3,	0,	'系统', '',	'icons icon_system',	0,	0,	0,	'',	'',	''),
(4,	2,	'小程序', '',	'',	0,	0,	0,	'',	'',	''),
(5,	3,	'系统管理', '',	'',	0,	0,	0,	'',	'',	''),
(6,	3,	'基础数据', '',	'',	0,	0,	0,	'',	'',	''),
(7,	5,	'网站目录', 'WangZhanMuLu',	'',	0,	0,	0,	'/SysFileManage',	'/admin/sys_file',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"新建文件夹\",\"action\":\"mkdir\",\"perm\":2},{\"name\":\"重命名\",\"action\":\"rename\",\"perm\":4},{\"name\":\"上传\",\"action\":\"upload\",\"perm\":8},{\"name\":\"下载\",\"action\":\"down\",\"perm\":16},{\"name\":\"删除\",\"action\":\"remove\",\"perm\":32}]'),
(8,	5,	'系统用户', 'XiTongZhangHu',	'',	0,	0,	0,	'/SysUser',	'/admin/sys_user',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"搜索\",\"action\":\"sea\",\"perm\":2},{\"name\":\"添加\",\"action\":\"add\",\"perm\":4},{\"name\":\"编辑\",\"action\":\"edit\",\"perm\":8},{\"name\":\"删除\",\"action\":\"del\",\"perm\":16},{\"name\":\"状态\",\"action\":\"state\",\"perm\":32},{\"name\":\"权限\",\"action\":\"perm\",\"perm\":64},{\"name\":\"个人信息\",\"action\":\"info\",\"perm\":128}]'),
(9,	5,	'系统角色', 'XiTongJiaoSe',	'',	0,	0,	0,	'/SysRole',	'/admin/sys_role',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"搜索\",\"action\":\"sea\",\"perm\":2},{\"name\":\"添加\",\"action\":\"add\",\"perm\":4},{\"name\":\"编辑\",\"action\":\"edit\",\"perm\":8},{\"name\":\"删除\",\"action\":\"del\",\"perm\":16},{\"name\":\"权限\",\"action\":\"perm\",\"perm\":32}]'),
(10,	5,	'系统菜单', 'XiTongCaiDan',	'',	0,	0,	0,	'/SysMenus',	'/admin/sys_menus',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"搜索\",\"action\":\"sea\",\"perm\":2},{\"name\":\"添加\",\"action\":\"add\",\"perm\":4},{\"name\":\"编辑\",\"action\":\"edit\",\"perm\":8},{\"name\":\"删除\",\"action\":\"del\",\"perm\":16},{\"name\":\"权限\",\"action\":\"perm\",\"perm\":32}]'),
(11,	6,	'静态页面', 'JingTaiYeMian',	'',	0,	0,	0,	'/MHtml',	'/admin/m_html',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"搜索\",\"action\":\"sea\",\"perm\":2},{\"name\":\"添加\",\"action\":\"add\",\"perm\":4},{\"name\":\"编辑\",\"action\":\"edit\",\"perm\":8},{\"name\":\"删除\",\"action\":\"del\",\"perm\":16},{\"name\":\"状态\",\"action\":\"state\",\"perm\":32}]'),
(12,	4,	'轮播图', 'LunBoTu',	'',	0,	0,	0,	'/MBanner',	'/admin/m_banner',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"搜索\",\"action\":\"sea\",\"perm\":2},{\"name\":\"添加\",\"action\":\"add\",\"perm\":4},{\"name\":\"编辑\",\"action\":\"edit\",\"perm\":8},{\"name\":\"删除\",\"action\":\"del\",\"perm\":16},{\"name\":\"状态\",\"action\":\"state\",\"perm\":32}]'),
(13,	4,	'意见反馈', 'YiJianFanKui',	'',	0,	0,	0,	'/MSuggest',	'/admin/m_suggest',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"删除\",\"action\":\"del\",\"perm\":2}]');


DROP TABLE IF EXISTS `sys_perm`;
CREATE TABLE `sys_perm` (
  `uid` bigint(19) unsigned NOT NULL COMMENT 'uid',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `role` varchar(6) DEFAULT '' COMMENT '角色权限',
  `perm` text DEFAULT '' COMMENT '专属权限',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限表';
INSERT INTO `sys_perm` (`uid`, `utime`, `role`, `perm`) VALUES
(1,	1646643212,	'',	'1:0 2:0 3:0 4:0 5:0 6:0 7:63 8:255 9:64 10:63 11:63 12:63 13:3'),
(2,	0,	'1',	'');


DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(16) NOT NULL COMMENT '角色名称',
  `ctime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '创建时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `perm` text DEFAULT NULL COMMENT '权限值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统角色';
INSERT INTO `sys_role` (`id`, `name`, `ctime`, `utime`, `perm`) VALUES
(1,	'基础权限',	0,	0,	'1:0 2:0 4:0 12:1 13:1');


DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `uid` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(16) NOT NULL,
  `ctime` int(10) unsigned NOT NULL DEFAULT 0,
  `utime` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) unsigned NOT NULL COMMENT 'ID',
  `uname` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `tel` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `rtime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '注册时间',
  `ltime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '登录时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `state` enum('1','0') NOT NULL DEFAULT '1' COMMENT '状态(1正常,0禁用)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户帐号';
INSERT INTO `user` (`id`, `uname`, `tel`, `email`, `password`, `rtime`, `ltime`, `utime`, `state`) VALUES
(1,	'admin',	'',	'klingsoul@163.com',	'e10adc3949ba59abbe56e057f20f883e',	0,	1646730711,	0,	'1'),
(2,	'',	'15000000000',	'',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	0,	'1');


DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `uid` bigint(19) unsigned NOT NULL COMMENT 'uid',
  `type` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '0用户,1开发',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `nickname` varchar(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `department` varchar(16) NOT NULL DEFAULT '' COMMENT '部门',
  `position` varchar(16) NOT NULL DEFAULT '' COMMENT '职位',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '姓名',
  `gender` enum('男','女','') NOT NULL DEFAULT '' COMMENT '性别',
  `birthday` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '生日',
  `img` varchar(64) NOT NULL DEFAULT '' COMMENT '头像',
  `signature` varchar(300) NOT NULL DEFAULT '' COMMENT '个性签名',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户信息';
INSERT INTO `user_info` (`uid`, `utime`, `nickname`, `department`, `position`, `name`, `gender`, `birthday`, `img`) VALUES
(1,	0,	'WebMIS',  '信息部', '系统开发',	'管理员',	'男',	0,	''),
(2,	0,  'User', '信息部',	'测试',	'会员',	'男',	0,	'');

DROP TABLE IF EXISTS `user_msg`;
CREATE TABLE `user_msg` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0消息,1其他',
  `gid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '0普通消息 1系统消息',
  `uid` varchar(18) NOT NULL DEFAULT '0' COMMENT 'UID',
  `fid` varchar(16) NOT NULL DEFAULT '0' COMMENT '发送者ID',
  `ctime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '发布时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `is_new` text NOT NULL DEFAULT '' COMMENT '标记阅读',
  `is_del` text NOT NULL DEFAULT '' COMMENT '标记删除',
  `title` varchar(16) NOT NULL DEFAULT '' COMMENT '标题',
  `content` varchar(300) NOT NULL DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='用户消息';


-- 2022-03-08 09:40:33
