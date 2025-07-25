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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `gid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '0消息 1机器人',
  `fid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT '发送者ID',
  `uid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'UID',
  `ctime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '发布时间',
  `utime` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
  `title` varchar(16) NOT NULL DEFAULT '' COMMENT '标题',
  `format` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '0文本',
  `content` varchar(300) NOT NULL DEFAULT '' COMMENT '内容',
  `is_new` text NOT NULL DEFAULT '' COMMENT '标记阅读',
  `is_del` text NOT NULL DEFAULT '' COMMENT '标记删除',
  `pdate` date NOT NULL DEFAULT '1970-01-01' COMMENT '分区时间',
  PRIMARY KEY (`id`,`pdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户消息'
 PARTITION BY RANGE (year(`pdate`) * 100 + month(`pdate`))
(PARTITION `p2412` VALUES LESS THAN (202501) ENGINE = MyISAM,
 PARTITION `p2501` VALUES LESS THAN (202502) ENGINE = MyISAM,
 PARTITION `p2502` VALUES LESS THAN (202503) ENGINE = MyISAM,
 PARTITION `p2503` VALUES LESS THAN (202504) ENGINE = MyISAM,
 PARTITION `p2504` VALUES LESS THAN (202505) ENGINE = MyISAM,
 PARTITION `p2505` VALUES LESS THAN (202506) ENGINE = MyISAM,
 PARTITION `p2506` VALUES LESS THAN (202507) ENGINE = MyISAM,
 PARTITION `p2507` VALUES LESS THAN (202508) ENGINE = MyISAM,
 PARTITION `p2508` VALUES LESS THAN (202509) ENGINE = MyISAM,
 PARTITION `p2509` VALUES LESS THAN (202510) ENGINE = MyISAM,
 PARTITION `p2510` VALUES LESS THAN (202511) ENGINE = MyISAM,
 PARTITION `p2511` VALUES LESS THAN (202512) ENGINE = MyISAM,
 PARTITION `p2512` VALUES LESS THAN (202601) ENGINE = MyISAM,
 PARTITION `plast` VALUES LESS THAN MAXVALUE ENGINE = MyISAM);

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
(1,	1,	'服务协议',	'm_service',	1,	1726819724,	1726821152,	'手机、小程序',	'<div>\r\n      <div>\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">一、总则</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、用户在注册及使用前请认真阅读本协议，确保充分理解本协议中所有条款。除非您接受本协议所有条款，否则您无权注册、登录或使用本协议所涉服务。您的注册、登录、使用等行为将视为无条件接受本协议所有条款的约束。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、除非另有明确规定，本产品所推出的新功能、新服务，均无条件的使用本协议。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          3、我公司保留在任何时候修改本协议条款的权利，且无需另行通知。在我公司修改协议条款后，如果您不接受修改后的条款，请立即停止使用本产品提供的服务，继续使用本产品提供的服务将被视为接受修改后的协议。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">二、用户注册</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、用户应当同意本协议的全部条款并按照页面提示完成全部注册程序(未成年人应与法定监护人共同完成)。用户在注册过程中点击“下一步”按钮即表示完全接受本协议全部条款。\r\n        </div>\r\n        <div style=\"text-indent: 2em; font-weight:bold;\">\r\n          2、用户在使用本服务前需要注册一个本产品账号。本产品账号应当使用手机号码绑定注册，请用户使用尚未与本产品账号绑定且未被本产品根据本协议封禁的手机号码注册账号。本产品可以根据用户需求或产品需求对账号注册和绑定的方式进行更改，而无须事先通知用户。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          3、用户在使用本产品服务过程中应保证各项服务业务所需信息的真实性，如果因信息不真实而引起的问题，以及问题发生所带来的后果，本公司不负任何责任。\r\n        </div>\r\n        <div style=\"text-indent: 2em; font-weight:bold;\">\r\n          4、在用户注册及使用本产品时，要搜集能识别用户身份的个人信息以便系统可以在必要时联系用户，或为用户提供更好的使用体验。系统搜集的信息包含您的手机号、昵称、头像、地址，主要目的是用于界面的显示和小程序系统的登录；系统同意对这些信息的使用将受限于用户个人隐私信息保护的约束。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">三、服务内容</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、本服务的具体内容由本产品根据实际情况提供，包括但不限于用户使用本产品等。本产品可以对提供的服务予以变更，且本产品提供的服务内容可能随时变更，用户将会收到关于服务变更的通知。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、除非本协议另有其他明示规定，本公司所推出的新产品、新功能、新服务，均受到本协议条款之规范。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">四、服务变更、中断或终止</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、鉴于网络服务的特殊性(包括但不限于服务器的稳定性问题、恶意的网络攻击等行为的存在及其他无法控制的情形)，用户同意我公司有权随时中断或终止部分或全部的服务。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、我公司需要定期或不定期地对提供服务的系统或相关设备进行检修或维护，如因此类情况而造成服务在合理时间内的中断，我公司无需为此承担任何责任。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          3、如发生下列任何一种情形，我公司有权随时变更、中断或终止向用户提供本协议项下的服务而无需对用户或任何第三方承担任何责任：\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (1)根据法律规定用户应提交真实信息，而用户提供的个人资料不真实、或与注册时信息不一致又未能提供合理证明；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (2)用户违反相关法律法规或本协议的约定；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (3)按照法律规定或有权机关的要求；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (4)出于安全的原因或其他必要的情形。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">五、用户个人隐私信息保护</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、依据法律的规定，我们将在特定情形下收集、使用和披露您的个人信息。以下条款描述了我们如何收集、使用和披露您的个人信息。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、信息收集\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (1)用户提供\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          我们会对您直接提供的信息进行保存。比如：我们会记录您的注册信息、寻求客服或者其他和我们沟通的记录。记录信息的种类包括：头像、昵称、性别、出生日期、所在地区以及其他您选择提供的信息。我们收集、使用和披露个人信息是为了通过创建账户、识别用户、回应查询和邮件等方式来为您提供服务。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (2)自动收集\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          当你接触或者使用我们的服务时，我们将自动收集您的信息包括：\r\n          Log信息(我们记录所有您使用服务时的log信息，包括浏览器信息、使用时间、浏览的网页、IP地址及来源)。我们使用多种技术记录信息，包括但不限于：向您的移动设备种Cookies。Cookies是一些存在您的硬件上的小数据包，用以帮助我们提高服务的质量及您的使用体验，了解在哪些区域和功能上受欢迎，以及统计流量等。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          3、信息使用\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (1)除本隐私政策未载明或本隐私政策的更新未能首先通知您的情况下，您的个人信息将不会用于其他目的。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (2)匿名汇总统计数据不是我公司所定义的个人用户信息，我们将为多种目的，包括但不限于分析和使用模式的报告等，来保存和使用此类信息。我公司保留以任何目的或单方面许可第三方使用和披露匿名汇总统计数据的权利。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (3)您在本产品中上传的信息，有可能会损坏您或他人的合法权益，您必须充分意识此类风险的存在。您明确同意，自行承担因上传信息所存在的一切风险及后果，我公司无需承担任何责任。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          4、法定披露\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          虽然我们会尽最大努力保护用户隐私，但当我们有理由相信只有公开个人信息才能遵循现行司法程序、 法院指令或其他法律程序或者保护我公司、我公司用户或第三方的权利、财产或安全时，我们可能披露个人信息。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          5、信息安全\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          我们会采取合理的实际及电子手段以及规程保障措施来保护您的个人信息。 虽然通过因特网信息传输数据并非100% 安全，但我们已经采取并将继续采取商业范畴内合理的努力来确保您的个人信息得到保护。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          6、未成年人隐私保护\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          我公司重视对未成年人个人隐私信息的保护。我公司将依赖用户提供的个人信息判断用户是否为未成年人。任何18岁以下的未成年人注册账号或使用本服务应事先取得家长或其法定监护人(以下简称“监护人”)的书面同意。除根据法律法规的规定及有权机关的指示披露外，我公司不会使用向任何第三方透露未成年人的个人隐私信息。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">六、内容规范</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、本项规范所述内容是指用户使用本服务过程中所制作、上载、复制、发布、传播的任何内容，包括但不限于账号头像、名称、个性签名等注册信息及认证资料，或文字、语音、图片、图文等发送、回复消息和相关链接页面，以及其他使用本产品账号或本服务所产生的内容。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、用户承诺使用本产品的服务时必须符合中华人民共和国有关法律法规，不得利用本产品的服务制作、上载、复制、发布、传播以下内容：\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (1)反对宪法所确定的基本原则的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (2)危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (3)损害国家荣誉和利益的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (4)煽动民族仇恨、民族歧视，破坏民族团结的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (5)破坏国家宗教政策，宣扬邪教和封建迷信的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (6)散布谣言，扰乱社会秩序，破坏社会稳定的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (7)散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (8)侮辱或者诽谤他人，侵害他人合法权益的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (9)含有法律、行政法规禁止的其他内容的。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          3、用户不得利用本产品账号或本服务制作、上载、复制、发布、传播下干扰本产品正常运营，以及侵犯其他用户或第三方合作权益的内容：\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (1)含有任何性暗示的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (2)含有辱骂、恐吓、威胁内容的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (3)含有骚扰、垃圾广告、恶意信息、诱骗信息的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (4)涉及他人隐私、个人信息或资料的；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (5)含有其他干扰本服务正常运营和侵犯其他用户或第三方合法权益的。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">七、使用规则</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、用户在本服务中或通过本服务所传送、发布的任何内容并不反映或代表，也不得被视为反映或代表我公司的观点、立场或政策，我公司对此不承担任何责任。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、用户在使用本产品时，必须遵守中华人民共和国相关法律法规的规定，同意将不会利用本产品进行任何违法或不正当的活动，包括但不限于下列行为：\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (1)干扰或破坏有关服务，或与有关服务连接的任何服务器或网络，或与有关服务相关的任何政策、要求或规定；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (2)采集并存储涉及任何其他用户的个人信息，以用于任何被禁止的活动；\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          (3)故意或非故意违反任何相关的中国法律、法规、规章、条例等其他具有法律效力的规范。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          3、用户须对利用本产品账号或本服务传送信息的真实性、合法性、无害性、准确性、有效性等全权负责，与用户所传播信息相关的任何法律责任由用户自行承担，与我公司无关。如因此给我公司或第三方造成损害的，用户应当依法予以赔偿。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          4、本产品提供的服务中可能包括广告，用户同意在使用过程中显示本产品和第三方供应商、合作伙伴提供的广告。除法律法规明确规定外，用户应自行对该广告信息进行的交易负责，对用户因该广告信息进行的交易或前述广告商提供的内容或遭受的损失或损害，我公司不承担任何责任。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          5、用户为使用本产品，须自行配备进入国际互联网所必需的设备，包括电脑、手机及其他与接入国际互联网有关的装置，并自行支付与此服务有关的费用。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">八、免责声明</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、对于经由本产品服务而传送的内容，我公司不保证前述内容的正确性、完整性或品质。用户在接受有关服务时，有可能会接触到令人不快、不适当或令人厌恶的内容。在任何情况下，我公司均不对任何内容负责，包括但不限于任何内容发生任何错误或纰漏以及衍生的任何损失或损害。用户使用上述内容，应自行承担风险。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、用户明确同意其使用本产品所存在的风险及其后果将完全由其自己承担，我公司对用户不承担任何责任。如因用户违反有关法律、法规或本协议项下的任何条款而给任何其他第三人造成损失，用户同意承担由此造成的损害赔偿责任。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          3、我公司尊重并保护用户的个人隐私权。但因恶意的网络攻击等行为及其他无法控制的情形，导致用户隐私信息泄露的，用户同意我公司不承担任何责任。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          4、对于因电信系统或互联网网络故障、计算机故障、计算机系统问题或其它任何不可抗力原因而产生损失，我公司不承担任何责任，但将尽力减少因此给用户造成的损失和影响。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">九、知识产权声明</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、本产品服务中包含的任何文字、图表、音频、视频和软件(包括但不限于软件中包含的图表、动画、音频、视频、界面实际、数据和程序、代码、文档)等信息或材料均受著作权法、商标法和其它法律法规保护，未经相关权利人书面同意，用户不得以任何方式使用该信息或材料。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、本协议未授予用户使用本产品任何商标、服务标记、标识、域名和其他显著品牌特征的权利，任何人不得擅自(包括但不限于：以非法的方式复制、传播、展示、镜像、上载、下载)使用，否则我公司将依法追究法律责任。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          3、除本协议明确允许以外，用户不得以任何形式或任何方式对本产品部分或全部内容进行修改、出租、租赁、出借、出售、分发、复制、创作衍生品或用于任何商业用途。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">十、法律适用</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、本协议的订立、执行和解释及争议的解决均应适用中国法律并受中国法院管辖。如服务条款任何一部分与中华人民共和国法律相抵触，则该部分条款应按法律规定重新解释，部分条款无效或重新解释不影响其余条款法律效力。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、用户和我公司一致同意本协议。在执行本协议过程中如发生纠纷，双方应友好协商解决；协商不成时，任何一方可直接向所在地的人民法院提起诉讼。\r\n        </div>\r\n      </div>\r\n      <div style=\"margin-top: 5px;\">\r\n        <div style=\"text-indent: 2em; font-weight: 900;\">十一、其他规定</div>\r\n        <div style=\"text-indent: 2em;\">\r\n          1、本协议中的标题仅为方便而设，在解释本协议时应被忽略。\r\n        </div>\r\n        <div style=\"text-indent: 2em;\">\r\n          2、本协议及其修改权、最终解释权归我公司所有。\r\n        </div>\r\n      </div>\r\n    </div>'),
(2,	1,	'隐私政策',	'm_privacy',	1,	1745393374,	1745393374,	'',	'<div style=\"text-indent:2em\">本应用非常重视用户隐私政策并严格遵守相关的法律规定。请您仔细阅读《隐私政策》后再继续使用。 如果您继续使用我们的服务，表示您已经充分阅读和理解我们协议的全部内容。</div>\r\n\r\n<div style=\"margin-top:5px; text-indent:2em\">本小程序尊重并保护所有使用服务用户的个人隐私权。 为了给您提供更准确、更优质的服务，本应用会按照本隐私权政策的规定使用和披露您的个人信息。 除本隐私权政策另有规定外，在未征得您事先许可的情况下，本应用不会将这些信息对外披露或向第三方提供。 本应用会不时更新本隐私权政策。您在同意本应用服务使用协议之时，即视为您已经同意本隐私权政策全部内容。</div>\r\n\r\n<div style=\"margin-top:5px\">\r\n<div style=\"font-weight:900; text-indent:2em\">1. 适用范围</div>\r\n\r\n<div style=\"text-indent:2em\">(a) 在您注册本应用小程序帐号时，您根据小程序要求提供的个人注册信息。</div>\r\n\r\n<div style=\"text-indent:2em;font-weight:bold;\">(b) 在您使用本应用网络服务，或访问本应用平台网页时，本应用自动接收并记录的您填写的信息， 包括但不限于您的手机号、登录密码、昵称、头像等特殊信息及您需求的网页记录等数据。</div>\r\n\r\n<div style=\"text-indent:2em;font-weight:bold;\">(c) 本应用通过合法途径从商业伙伴处取得的用户个人数据。</div>\r\n\r\n<div style=\"text-indent:2em;font-weight:bold;\">(d) 本应用严禁用户发布不良信息，如裸露、色情和亵渎内容，发布的内容我们会进行审核，一经发现不良信息，会禁用该用户的所有权限，予以封号处理。</div>\r\n</div>\r\n\r\n<div style=\"margin-top:5px\">\r\n<div style=\"font-weight:900; text-indent:2em\">2. 信息使用</div>\r\n\r\n<div style=\"text-indent:2em;font-weight:bold;\">(a) 本应用不会向任何无关第三方提供、出售、出租、分享或交易您的个人登录信息。如果我们存储发生维修或升级，我们会事先发出推送消息来通知您，请您提前允许本应用消息通知。</div>\r\n\r\n<div style=\"text-indent:2em;font-weight:bold;\">(b) 本应用亦不允许任何第三方以任何手段收集、编辑、出售或者无偿传播您的个人信息。任何本应用平台用户如从事上述活动，一经发现，本应用有权立即终止与该用户的服务协议。</div>\r\n\r\n<div style=\"text-indent:2em;font-weight:bold;\">(c) 为服务用户的目的，本应用可能通过使用您的个人信息，向您提供您感兴趣的信息，包括但不限于向您发出产品和服务信息， 或者与本应用合作伙伴共享信息以便他们向您发送有关其产品和服务的信息。（后者需要您的事先同意）</div>\r\n</div>\r\n\r\n<div style=\"margin-top:5px\">\r\n<div style=\"font-weight:900; text-indent:2em\">3. 信息披露</div>\r\n\r\n<div style=\"text-indent:2em\">在如下情况下，本应用将依据您的个人意愿或法律的规定全部或部分的披露您的个人信息：</div>\r\n\r\n<div style=\"text-indent:2em\">(a) 未经您事先同意，我们不会向第三方披露。</div>\r\n\r\n<div style=\"text-indent:2em\">(b) 为提供您所要求的产品和服务，而必须和第三方分享您的个人信息。</div>\r\n\r\n<div style=\"text-indent:2em\">(c) 根据法律的有关规定，或者行政或司法机构的要求，向第三方或者行政、司法机构披露。</div>\r\n\r\n<div style=\"text-indent:2em\">(d) 如您出现违反中国有关法律、法规或者本应用服务协议或相关规则的情况，需要向第三方披露。</div>\r\n\r\n<div style=\"text-indent:2em\">(e) 如您是适格的知识产权投诉人并已提起投诉，应被投诉人要求，向被投诉人披露，以便双方处理可能的权利纠纷。</div>\r\n</div>\r\n\r\n<div style=\"margin-top:5px\">\r\n<div style=\"font-weight:900; text-indent:2em\">4. 信息存储和交换</div>\r\n\r\n<div style=\"text-indent:2em\">本应用收集的有关您的信息和资料将保存在本应用及（或）其关联公司的服务器上，这些信息和资料可能传送至您所在国家、地区进行访问、存储和展示。</div>\r\n</div>\r\n\r\n<div style=\"margin-top:5px\">\r\n<div style=\"font-weight:900; text-indent:2em\">5. Cookie的使用</div>\r\n\r\n<div style=\"text-indent:2em\">(a) 在您未拒绝接受cookies的情况下，本应用会在您的计算机上设定或取用cookies，以便您能登录或使用依赖于cookies的本应用平台服务或功能。 本应用使用cookies可为您提供更加周到的个性化服务，包括推广服务。</div>\r\n\r\n<div style=\"text-indent:2em\">(b) 您有权选择接受或拒绝接受cookies。您可以通过修改浏览器设置的方式拒绝接受cookies。 但如果您选择拒绝接受cookies，则您可能无法登录或使用依赖于cookies的本应用网络服务或功能。</div>\r\n\r\n<div style=\"text-indent:2em\">(c) 通过本应用所设cookies所取得的有关信息，将适用本政策。</div>\r\n</div>\r\n\r\n<div style=\"margin-top:5px\">\r\n<div style=\"text-indent:2em\"><strong>6.本隐私政策的更改</strong></div>\r\n\r\n<div style=\"text-indent:2em\">(a) 如果决定更改隐私政策，我们会在本政策中、本公司网站中以及我们认为适当的位置发布这些更改，以便您了解我们如何收集、使用您的个人信息，哪些人可以访问这些信息，以及在什么情况下我们会透露这些信息。</div>\r\n\r\n<div style=\"text-indent:2em\">(b) 本公司保留随时修改本政策的权利，因此请经常查看。如对本政策作出重大更改，本公司会通过网站通知的形式告知。</div>\r\n</div>\r\n\r\n<div style=\"margin-top:5px; text-indent:2em\">请您妥善保护自己的个人信息，仅在必要的情形下向他人提供。如您发现自己的个人信息泄密，尤其是本应用用户名及密码发生泄露，请您立即联络本应用客服，以便本应用采取相应措施。</div>\r\n\r\n<div style=\"margin-top:5px; text-indent:2em\">如果您对本应用收集您的隐私信息，包括但不限于手机号、登录密码、头像、昵称等有相关的疑问，需要进行语音沟通和了解，您可以致电我们技术部：18811027986。</div>\r\n\r\n<div style=\"margin-top:5px; text-indent:2em\">感谢您花时间了解我们的隐私政策！我们将尽全力保护您的个人信息和合法权益，再次感谢您的信任！</div>\r\n');

-- 2024-10-16 09:33:35
