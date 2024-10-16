-- Adminer 4.8.1 MySQL 11.5.2-MariaDB dump

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
  `sort` tinyint(3) unsigned DEFAULT 0 COMMENT '排序',
  `url` varchar(32) DEFAULT '' COMMENT '地址',
  `controller` varchar(32) DEFAULT '' COMMENT '控制器',
  `ctime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '创建时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(1) unsigned DEFAULT 1 COMMENT '状态: 1正常,2禁用',
  `en_US` varchar(32) DEFAULT '' COMMENT 'English',
  `zh_CN` varchar(32) DEFAULT '' COMMENT '简体中文',
  `action` text DEFAULT '' COMMENT '动作菜单',
  `remark` varchar(128) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统菜单';

INSERT INTO `sys_menus` (`id`, `fid`, `title`, `en`, `ico`, `sort`, `url`, `controller`, `ctime`, `utime`, `status`, `en_US`, `zh_CN`, `action`, `remark`) VALUES
(1,	0,	'首页',	'',	'icons icon_home',	0,	'',	'',	0,	0,	1,	'Home',	'首页',	'',	''),
(2,	0,	'网站',	'',	'icons icon_web',	0,	'',	'',	0,	0,	1,	'Web',	'网站',	'',	''),
(3,	0,	'系统',	'',	'icons icon_system',	0,	'',	'',	0,	0,	1,	'System',	'系统',	'',	''),
(4,	2,	'手机版',	'',	'',	0,	'',	'',	0,	0,	1,	'Mobile Phone',	'手机版',	'',	''),
(5,	3,	'系统管理',	'',	'',	0,	'',	'',	0,	0,	1,	'System Management',	'系统管理',	'',	''),
(6,	3,	'基础数据',	'',	'',	0,	'',	'',	0,	0,	1,	'Basic Data',	'基础数据',	'',	''),
(7,	5,	'网站目录',	'WangZhanMuLu',	'',	0,	'/SysFileManage',	'/admin/sys_file',	0,	0,	1,	'Web File',	'网站目录',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"新建文件夹\",\"action\":\"mkdir\",\"perm\":2},{\"name\":\"重命名\",\"action\":\"rename\",\"perm\":4},{\"name\":\"上传\",\"action\":\"upload\",\"perm\":8},{\"name\":\"下载\",\"action\":\"down\",\"perm\":16},{\"name\":\"删除\",\"action\":\"remove\",\"perm\":32}]',	''),
(8,	5,	'系统用户',	'XiTongZhangHu',	'',	0,	'/SysUser',	'/admin/sys_user',	0,	0,	1,	'Users',	'系统用户',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"更新\",\"action\":\"save\",\"perm\":2},{\"name\":\"删除\",\"action\":\"del\",\"perm\":4},{\"name\":\"导出\",\"action\":\"export\",\"perm\":8},{\"name\":\"权限\",\"action\":\"perm\",\"perm\":16}]',	''),
(9,	5,	'系统角色',	'XiTongJiaoSe',	'',	0,	'/SysRole',	'/admin/sys_role',	0,	0,	1,	'Role',	'系统角色',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"更新\",\"action\":\"save\",\"perm\":2},{\"name\":\"删除\",\"action\":\"del\",\"perm\":4},{\"name\":\"导出\",\"action\":\"export\",\"perm\":8},{\"name\":\"权限\",\"action\":\"perm\",\"perm\":16}]',	''),
(10,	5,	'系统菜单',	'XiTongCaiDan',	'',	0,	'/SysMenus',	'/admin/sys_menus',	0,	1727405905,	1,	'Menus',	'系统菜单',	'[{\"name\":\"\\u5217\\u8868\",\"action\":\"list\",\"perm\":1},{\"name\":\"\\u66f4\\u65b0\",\"action\":\"save\",\"perm\":2},{\"name\":\"\\u5220\\u9664\",\"action\":\"del\",\"perm\":4},{\"name\":\"\\u5bfc\\u51fa\",\"action\":\"export\",\"perm\":8}]',	''),
(11,	6,	'静态页面',	'JingTaiYeMian',	'',	0,	'/WebHtml',	'/admin/web_html',	0,	1726734443,	1,	'WebHtml',	'静态页面',	'[{\"name\":\"\\u5217\\u8868\",\"action\":\"list\",\"perm\":1},{\"name\":\"\\u66f4\\u65b0\",\"action\":\"save\",\"perm\":2},{\"name\":\"\\u5220\\u9664\",\"action\":\"del\",\"perm\":8},{\"name\":\"\\u5bfc\\u51fa\",\"action\":\"export\",\"perm\":16}]',	''),
(12,	4,	'轮播图',	'LunBoTu',	'',	0,	'/MBanner',	'/admin/m_banner',	0,	0,	1,	'Banner',	'轮播图',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"搜索\",\"action\":\"sea\",\"perm\":2},{\"name\":\"添加\",\"action\":\"add\",\"perm\":4},{\"name\":\"编辑\",\"action\":\"edit\",\"perm\":8},{\"name\":\"删除\",\"action\":\"del\",\"perm\":16},{\"name\":\"状态\",\"action\":\"state\",\"perm\":32}]',	''),
(13,	4,	'意见反馈',	'YiJianFanKui',	'',	0,	'/MSuggest',	'/admin/m_suggest',	0,	0,	1,	'Suggestion',	'意见反馈',	'[{\"name\":\"列表\",\"action\":\"list\",\"perm\":1},{\"name\":\"删除\",\"action\":\"del\",\"perm\":2}]',	'');

DROP TABLE IF EXISTS `sys_perm`;
CREATE TABLE `sys_perm` (
  `uid` bigint(19) unsigned NOT NULL COMMENT 'uid',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `role` varchar(6) DEFAULT '' COMMENT '角色权限',
  `perm` text DEFAULT '' COMMENT '专属权限',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='权限表';

INSERT INTO `sys_perm` (`uid`, `utime`, `role`, `perm`) VALUES
(1,	1726734456,	'',	'1:0 2:0 3:0 4:0 5:0 6:0 7:63 8:31 9:31 10:15 11:27 12:63 13:3'),
(2,	1728106172,	'1',	'');

DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(16) NOT NULL COMMENT '角色名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '状态: 0禁用,1正常',
  `ctime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '创建时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  `perm` text DEFAULT NULL COMMENT '权限值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统角色';

INSERT INTO `sys_role` (`id`, `name`, `status`, `ctime`, `utime`, `remark`, `perm`) VALUES
(1,	'基础权限',	1,	0,	1726458718,	'',	'1:0 2:0 4:0 12:1 13:1');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uname` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `tel` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '状态(1正常,0禁用)',
  `rtime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '注册时间',
  `ltime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '登录时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户帐号';

INSERT INTO `user` (`id`, `uname`, `tel`, `email`, `password`, `status`, `rtime`, `ltime`, `utime`) VALUES
(1,	'admin',	'',	'klingsoul@163.com',	'e10adc3949ba59abbe56e057f20f883e',	1,	0,	1729065402,	1726734456),
(2,	'',	'15000000000',	'',	'e10adc3949ba59abbe56e057f20f883e',	1,	0,	1729067210,	1728106172);

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `uid` bigint(19) unsigned NOT NULL COMMENT 'uid',
  `type` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '0用户,1开发',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `nickname` varchar(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `department` varchar(16) NOT NULL DEFAULT '' COMMENT '部门',
  `position` varchar(16) NOT NULL DEFAULT '' COMMENT '职位',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '姓名',
  `gender` enum('男','女','') NOT NULL COMMENT '性别',
  `birthday` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '生日',
  `img` varchar(64) NOT NULL DEFAULT '' COMMENT '头像',
  `signature` varchar(300) NOT NULL DEFAULT '' COMMENT '个性签名',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信息';

INSERT INTO `user_info` (`uid`, `type`, `utime`, `nickname`, `department`, `position`, `name`, `gender`, `birthday`, `img`, `signature`, `remark`) VALUES
(1,	1,	1726734456,	'WebMIS',	'信息部',	'系统开发',	'管理员',	'男',	1727971200,	'',	'',	''),
(2,	0,	1728106172,	'User',	'信息部',	'测试',	'会员',	'男',	0,	'',	'',	'');

DROP TABLE IF EXISTS `user_msg`;
CREATE TABLE `user_msg` (
  `id` bigint(19) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `gid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '0普通消息,1系统消息',
  `format` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '0文本,1JSON',
  `uid` varchar(18) NOT NULL DEFAULT '0' COMMENT 'UID',
  `fid` varchar(16) NOT NULL DEFAULT '0' COMMENT '发送者ID',
  `ctime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '发布时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `is_new` text NOT NULL DEFAULT '' COMMENT '标记阅读',
  `is_del` text NOT NULL DEFAULT '' COMMENT '标记删除',
  `content` varchar(300) NOT NULL DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户消息';


DROP TABLE IF EXISTS `web_html`;
CREATE TABLE `web_html` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型: 0PC版, 1手机版',
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '1正常,0禁用',
  `ctime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '创建时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `remark` varchar(129) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `web_html` (`id`, `type`, `title`, `name`, `status`, `ctime`, `utime`, `remark`, `content`) VALUES
(1,	1,	'服务协议',	'm_service',	1,	1726819724,	1726821152,	'手机、小程序',	'<p>服务协议</p>');

-- 2024-10-16 09:33:35
