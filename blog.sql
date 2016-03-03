/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-03-03 23:47:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_categary
-- ----------------------------
DROP TABLE IF EXISTS `blog_categary`;
CREATE TABLE `blog_categary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_categary
-- ----------------------------
INSERT INTO `blog_categary` VALUES ('7', '未分类');
INSERT INTO `blog_categary` VALUES ('8', 'chrome');
INSERT INTO `blog_categary` VALUES ('9', '其他');

-- ----------------------------
-- Table structure for blog_content
-- ----------------------------
DROP TABLE IF EXISTS `blog_content`;
CREATE TABLE `blog_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cid` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '0',
  `like` int(11) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_content
-- ----------------------------
INSERT INTO `blog_content` VALUES ('12', '支持视频探测下载的工具 IDM v6.25.12 绿色特别版', '7', 'admin', '&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	Internet Download Manager简称IDM，是一款国外比较流行的下载工具，支持IE, Firefox, Chrome等所有浏览器，兼容所有Windows平台。最具特色功能如续传功能，支持恢复因为断线、网络问题、计算机宕机等故障导致中断的下载任务。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;img title=&quot;支持视频探测下载的工具 IDM v6.25.12 绿色特别版 - 第1张 | ChromeWo&quot; alt=&quot;支持视频探测下载的工具 IDM v6.25.12 绿色特别版 - 第1张 | ChromeWo&quot; class=&quot;alignnone size-full wp-image-826&quot; src=&quot;https://ii-i.org/wp-content/uploads/2016/03/idm-new.jpg&quot; width=&quot;642&quot; height=&quot;312&quot; style=&quot;height:auto;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;img title=&quot;支持视频探测下载的工具 IDM v6.25.12 绿色特别版 - 第2张 | ChromeWo&quot; alt=&quot;支持视频探测下载的工具 IDM v6.25.12 绿色特别版 - 第2张 | ChromeWo&quot; class=&quot;alignnone size-full wp-image-825&quot; src=&quot;https://ii-i.org/wp-content/uploads/2016/03/IDM623.jpg&quot; width=&quot;680&quot; height=&quot;456&quot; style=&quot;height:auto;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	当然，IDM还有一个很有用的功能，直接下载网页视频，例如下载YouTube上面的视频。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	本身IDM是收费软件，支持30天免费试用。这里提供的是zdfans绿色特别版，无需序列号，免注册即为授权版、完美简体中文汉化，无多余菜单弹窗！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	此绿色特别版详情介绍：\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	by zd423\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	—模拟官方安装命令行参数绿化，卸载可选备份用户设置数据；\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	—破解主程序，免注册，无需屏蔽联网，无需假冒序列号，不反弹！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	—去定期自动检测更新、后续完全不会随机弹出IDM自动更新提示！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	—调整下载对话框，完美修正在Win8.1、Win10下载对话框及边宽适配问题；\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	—去掉每日提示弹窗，去除了安装完毕后自动弹出网页行为，默认不开机启动；\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	—基于 ZDYX、宋国母 以往简体中文语言加以汉化完善，并汉化自带卸载程序；\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	—绿化完毕默认显示为简体中文界面、添加了一款美观的主题，默认直接启用；\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	—去多余菜单项，去关于窗多余按钮；删除所有多语言、所有帮助文档等文件；\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;strong&gt;下载：IDM v6.25 Build 12 简体中文绿色特别版&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;a href=&quot;http://yunpan.cn/cVUUZjdJu4nke&quot; target=&quot;_blank&quot;&gt;http://yunpan.cn/cVUUZjdJu4nke&lt;/a&gt;&amp;nbsp;访问码8979\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;a href=&quot;http://pan.baidu.com/s/1hqnOAwO&quot; target=&quot;_blank&quot;&gt;http://pan.baidu.com/s/1hqnOAwO&lt;/a&gt;&amp;nbsp;访问码gqu9\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	（提醒小白用户：在网盘下载的时候不要直接点击文件夹然后下载，请点击文件夹名称，进入文件夹后，下载IDM6.25.***.7z那个文件）\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	温馨提示：如果当前环境下使用其它版本过导致该版本反弹的，请使用下载地址目录下的IDM重置试用日期和注册假冒序列号工具，清理下残留注册表类标识，然后随便注册个假冒序列号即可完美解决反弹问题！\r\n&lt;/p&gt;', '0', '0', '1456993892');
INSERT INTO `blog_content` VALUES ('13', '爱音乐人士新标签页扩展推荐 WOWMUSIX START', '8', 'admin', '&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	如果你是一位喜欢听音乐，尤其是国外音乐和爱看MV的Chrome使用者，那么这款名为WOWMUSIX START的新标签页扩展可以一试。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;img title=&quot;爱音乐人士新标签页扩展推荐 WOWMUSIX START - 第1张 | ChromeWo&quot; alt=&quot;爱音乐人士新标签页扩展推荐 WOWMUSIX START - 第1张 | ChromeWo&quot; class=&quot;alignnone size-medium wp-image-809&quot; src=&quot;https://ii-i.org/wp-content/uploads/2016/02/2016-02-18_112339-800x592.jpg&quot; width=&quot;800&quot; height=&quot;592&quot; style=&quot;height:auto;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	WOWMUSIX START安装好后会取代你现在的新标签页，默认的界面如上图，一个搜索框，搜索框下面是几个国外常用的网站连接（干净，没推广代码），再下方是几种常见的音乐分类连接，点击进去就可以听歌。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	WOWMUSIX START的搜索框音乐是自己搜索自己网站的，其他内容是通过雅虎搜索提供。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;img title=&quot;爱音乐人士新标签页扩展推荐 WOWMUSIX START - 第2张 | ChromeWo&quot; alt=&quot;爱音乐人士新标签页扩展推荐 WOWMUSIX START - 第2张 | ChromeWo&quot; class=&quot;alignnone size-medium wp-image-810&quot; src=&quot;https://ii-i.org/wp-content/uploads/2016/02/2016-02-18_112456-800x591.jpg&quot; width=&quot;800&quot; height=&quot;591&quot; style=&quot;height:auto;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	ChromeWo小编测试了下，搜索国人音乐也可以搜索出来，只不过网站推荐的都是国外的歌手，毕竟是英文网站。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	不过该扩展最大的一个问题就是，你需要保持帆樯状态，因为他的音乐是调用的YouTube的视频.\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;strong&gt;在线安装地址：&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;a href=&quot;https://chrome.google.com/webstore/detail/wowmusix-start/agibagflppafhfonkefpklndlohkclcb?utm_source=chrome-ntp-icon&quot; target=&quot;_blank&quot;&gt;https://chrome.google.com/webstore/detail/wowmusix-start/agibagflppafhfonkefpklndlohkclcb?utm_source=chrome-ntp-icon&lt;/a&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;strong&gt;离线安装地址：&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;iframe class=&quot;wp-embedded-content&quot; src=&quot;https://www.lxcrx.com/wowmusix-start/embed/#?secret=NPjk44MqRn&quot; width=&quot;600&quot; height=&quot;200&quot; frameborder=&quot;0&quot;&gt;\r\n	&lt;/iframe&gt;\r\n&lt;/p&gt;', '0', '0', '1456993948');
INSERT INTO `blog_content` VALUES ('11', 'LOL日服', '8', 'admin', '&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	之前分享过&lt;a href=&quot;https://ii-i.org/archives/650&quot;&gt;配置Shadowsocks全局代理玩Steam游戏图文教程（ss玩h1z1）&lt;/a&gt;的文章，最近日服LOL上线了毕竟火，小编也去玩了一把，顺便给大家介绍下如何用SocksCap64+Shadowsocks玩外服游戏。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	之前那篇文章介绍的是Proxifier，而本文的SocksCap64相对来说配置会更加简单一点。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	首先，SocksCap64下载地址&lt;a href=&quot;https://sourceforge.net/projects/sockscap64/files/?source=officialsite&quot; target=&quot;_blank&quot;&gt;https://sourceforge.net/projects/sockscap64/files/?source=officialsite&lt;/a&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;img title=&quot;Shadowsocks配合SocksCap64玩日服lol教程 - 第1张 | ChromeWo&quot; alt=&quot;Shadowsocks配合SocksCap64玩日服lol教程 - 第1张 | ChromeWo&quot; class=&quot;alignnone size-full wp-image-818&quot; src=&quot;https://ii-i.org/wp-content/uploads/2016/03/2016-03-02_174734.jpg&quot; width=&quot;763&quot; height=&quot;522&quot; style=&quot;height:auto;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	下载后运行，点击那个+号添加一个代理服务器，因为我们是配合Shadowsocks，所以ip填写127.0.0.1，端口1080，类型SOCKS 5，其他空白。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;img title=&quot;Shadowsocks配合SocksCap64玩日服lol教程 - 第2张 | ChromeWo&quot; alt=&quot;Shadowsocks配合SocksCap64玩日服lol教程 - 第2张 | ChromeWo&quot; class=&quot;alignnone size-medium wp-image-819&quot; src=&quot;https://ii-i.org/wp-content/uploads/2016/03/2016-03-02_174751.jpg&quot; width=&quot;618&quot; height=&quot;325&quot; style=&quot;height:auto;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	设置完毕后点击测试按钮测试下代理是否可用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;img title=&quot;Shadowsocks配合SocksCap64玩日服lol教程 - 第3张 | ChromeWo&quot; alt=&quot;Shadowsocks配合SocksCap64玩日服lol教程 - 第3张 | ChromeWo&quot; class=&quot;alignnone size-medium wp-image-820&quot; src=&quot;https://ii-i.org/wp-content/uploads/2016/03/2016-03-02_174803.jpg&quot; width=&quot;704&quot; height=&quot;404&quot; style=&quot;height:auto;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	接着把lol的快捷方式拖进去，然后点击运行按钮。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;img title=&quot;Shadowsocks配合SocksCap64玩日服lol教程 - 第4张 | ChromeWo&quot; alt=&quot;Shadowsocks配合SocksCap64玩日服lol教程 - 第4张 | ChromeWo&quot; class=&quot;alignnone size-medium wp-image-821&quot; src=&quot;https://ii-i.org/wp-content/uploads/2016/03/2016-03-02_175018.jpg&quot; width=&quot;704&quot; height=&quot;404&quot; style=&quot;height:auto;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	在SocksCap64软件的下方，切换到隧道中的程序，就可以看到所有和LOL相关的程序都通过这个软件走了代理。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	通常情况这样就可以直接玩游戏了。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	&lt;strong&gt;非通常情况：&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Verdana, \'Microsoft YaHei\';color:#454545;font-size:16px;&quot;&gt;\r\n	有些时候游戏对游戏ip有要求，必须要当地原生ip，这种需要不断的去测试，找一个当地原生ip的服务器才能玩。另外就是有些游戏可能需要额外添加启动参数才能玩，具体的Google。\r\n&lt;/p&gt;', '0', '0', '1456993830');

-- ----------------------------
-- Table structure for blog_other
-- ----------------------------
DROP TABLE IF EXISTS `blog_other`;
CREATE TABLE `blog_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_other
-- ----------------------------

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loginip` varchar(20) NOT NULL,
  `logintime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0.0.0.0', '1457014607');
