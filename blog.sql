/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-03-02 22:47:16
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_categary
-- ----------------------------
INSERT INTO `blog_categary` VALUES ('1', '未分类');
INSERT INTO `blog_categary` VALUES ('2', '其他');

-- ----------------------------
-- Table structure for blog_content
-- ----------------------------
DROP TABLE IF EXISTS `blog_content`;
CREATE TABLE `blog_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cid` int(11) NOT NULL,
  `categary` varchar(20) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '0',
  `like` int(11) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_content
-- ----------------------------
INSERT INTO `blog_content` VALUES ('5', '扁平化设计的流行配色方案', '1', '未分类', 'admin', '&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	扁平化设计从2012年开始就已经流行起来，我觉得flat design有点类似极简主义设计，同样是追求简洁、简约，不同的是，扁平化设计是一项运用简单效果，或者是刻意进行一个不使用三维效果的设计方案。一个好的&lt;a href=&quot;http://www.shejidaren.com/tag/%E6%89%81%E5%B9%B3%E5%8C%96%E8%AE%BE%E8%AE%A1&quot;&gt;扁平化设计&lt;/a&gt;必然不可能出现阴影、浮雕和渐变等效果。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	扁平化设计看上去非常简单、直观，并且使用方便，所以在手机界面和网页设计中变得越来越受欢迎。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	让我们来学习一下，如何进行扁平化设计吧。\r\n&lt;/p&gt;\r\n&lt;div class=&quot;infobox&quot; style=&quot;margin:0px 0px 15px;padding:15px;border:1px dashed #DDDDDD;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;background:#F5F5E9;&quot;&gt;\r\n	什么是扁平化设计？&lt;br /&gt;\r\n《&lt;a href=&quot;http://www.shejidaren.com/the-flat-design.html&quot;&gt;探讨扁平化设计之美&lt;/a&gt;》&lt;br /&gt;\r\n《&lt;a href=&quot;http://www.shejidaren.com/the-float-design-in-web-design.html&quot;&gt;使用扁平化设计的网页设计欣赏&lt;/a&gt;》&lt;br /&gt;\r\n扁平化设计素材：&lt;br /&gt;\r\n《&lt;a href=&quot;http://www.shejidaren.com/flat-ui-icon-and-ui-kit-downloads.html&quot;&gt;35个扁平化设计(Flat UI)图标UI Kit素材下载&lt;/a&gt;》&lt;br /&gt;\r\n《&lt;a href=&quot;http://www.shejidaren.com/%e6%89%81%e5%b9%b3%e5%8c%96%e8%ae%be%e8%ae%a1%e7%b4%a0%e6%9d%90-flat-ui.html&quot;&gt;扁平化设计素材 – Flat UI&lt;/a&gt;》\r\n&lt;/div&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://sd.shijue.cvimage.cn/asset/517c770e8ddf8757ff000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://hd.shijue.cvimage.cn/asset/517c770c8ddf875862000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://jd.shijue.cvimage.cn/asset/517c770ce744f91a85000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://sd.shijue.cvimage.cn/asset/517c770c8ddf875964000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;h3 style=&quot;font-family:Verdana, 微软雅黑, 宋体, Geneva, sans-serif;color:#333333;font-size:18px;&quot;&gt;\r\n	确定色彩基调\r\n&lt;/h3&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	扁平化设计并不局限于某种色彩基调，它可以使用任何色彩。但是大多数的设计师都倾向于使用大胆鲜艳的颜色。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	那么，如何让扁平化设计在色彩上与众不同呢？设计师正在不断地增加色彩层次，将原本的一两个层次层加到三个、四个甚至更多。这些色彩的亮度和饱和度大都非常高。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	在进行扁平化设计时，传统的色彩法则就不适用了，转而以彩虹色这种流行色来进行配色。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	扁平化设计一般都有特定的设计法则，比如利用纯色，采用复古风格或是同类色。但并不是说这是唯一的选择，而是这种方式已经成为一种流行的趋势，也更加受大家欢迎。\r\n&lt;/p&gt;\r\n&lt;h3 style=&quot;font-family:Verdana, 微软雅黑, 宋体, Geneva, sans-serif;color:#333333;font-size:18px;&quot;&gt;\r\n	纯色\r\n&lt;/h3&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://hd.shijue.cvimage.cn/asset/517c7702e744f91475000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://jd.shijue.cvimage.cn/asset/517c770c8ddf8762ce000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;&lt;br /&gt;\r\n&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://sd.shijue.cvimage.cn/asset/517c770de744f93ebc000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	提到扁平化设计的色彩，纯色一定首当其冲地出现在我们脑海里，因为它带来了一种独特的感受。纯粹的亮色往往能够与明亮的或者灰暗的背景形成对比，以达到一种极富冲击力的视觉效果。所以说，在进行扁平化设计时，纯色绝对是最受欢迎的色彩趋势。\r\n&lt;/p&gt;\r\n&lt;h3 style=&quot;font-family:Verdana, 微软雅黑, 宋体, Geneva, sans-serif;color:#333333;font-size:18px;&quot;&gt;\r\n	从哪里开始？\r\n&lt;/h3&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	前面设计达人网分享过&lt;a href=&quot;http://www.shejidaren.com/windows-8-metro%E9%A3%8E%E6%A0%BC%E9%A2%9C%E8%89%B2%E8%A1%A8-metro-colours.html&quot;&gt;Metro的配色方案&lt;/a&gt;，而&lt;a href=&quot;http://flatuicolors.com/&quot; target=&quot;_blank&quot;&gt;&amp;nbsp;FlatUIColors.com&lt;/a&gt;将扁平化设计中最受欢迎的色彩进行了一个整理，从宝蓝和草绿到明黄和橘黄色，这些色彩概括出了我们现在能够看到的色彩趋势。这个网站将是进行扁平化设计的第一步，因为你能够免费下载任何你看中的色彩。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	在扁平化设计中，三原色是很少见的，即正红、正蓝和正黄。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	简单起见，在一个扁平化设计方案中，如果你想快速的配色，那就选择相似的色调和饱和度。另外，本文也将提供一些色彩样本。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://jd.shijue.cvimage.cn/asset/517c7a7ae744f97121000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;样本：&lt;/strong&gt;利用色彩进行一组扁平化设计的色彩配色。每一种色彩都能与背景形成最强劲的视觉冲击。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;最受欢迎的色彩：&lt;/strong&gt;蓝、绿、紫\r\n&lt;/p&gt;\r\n&lt;h3 style=&quot;font-family:Verdana, 微软雅黑, 宋体, Geneva, sans-serif;color:#333333;font-size:18px;&quot;&gt;\r\n	&lt;a href=&quot;http://www.shejidaren.com/tag/%E5%A4%8D%E5%8F%A4&quot;&gt;复古色&lt;/a&gt;\r\n&lt;/h3&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://sd.shijue.cvimage.cn/asset/517c77078ddf8771d5000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://hd.shijue.cvimage.cn/asset/517c770be744f90da6000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://sd.shijue.cvimage.cn/asset/517c7707e744f941c2000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://sd.shijue.cvimage.cn/asset/517c770c8ddf875723000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	在进行扁平化设计时，复古色也是一种常见的色彩方式。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	这种色彩虽然饱和度低，但却是在纯色的基础上添加白色，以使色彩变得更加柔和。复古色经常以大量的橘色和黄色为主，但有时也有红色或蓝色。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	在扁平化设计中，以复古色为主色调是很常见的，以为这种色彩能够使页面变得更加柔美、富有女性气质。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://sd.shijue.cvimage.cn/asset/517c7a7be744f952eb000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;样本：&lt;/strong&gt;在扁平化设计中，如果将复古色作为主色调，呈现效果最好。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;最受欢迎的色彩：&lt;/strong&gt;橘色、粉色或绯色和深蓝。\r\n&lt;/p&gt;\r\n&lt;h3 style=&quot;font-family:Verdana, 微软雅黑, 宋体, Geneva, sans-serif;color:#333333;font-size:18px;&quot;&gt;\r\n	同类色（单色调）\r\n&lt;/h3&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://hd.shijue.cvimage.cn/asset/517c7701e744f95d1a000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://jd.shijue.cvimage.cn/asset/517c7700e744f93ccf000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://hd.shijue.cvimage.cn/asset/517c7704e744f9447f000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	在扁平化设计中，同类色正迅速成长为一种流行趋势。这种色彩往往以单一颜色搭配黑色或白色来创造一种鲜明且有视觉冲击的效果。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	大部分的同类色利用一个基本色搭配两三个色彩。最受欢迎的色彩选择似乎是蓝色，但很多设计师则倾向于使用黑色搭配一两个流行色比如红色，作为按钮。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	另一个方法是利用少量的色彩变化。比如，蓝色配以绿色呈现出一种蓝绿色的效果。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	同类色在移动设备和APP设计中格外受欢迎。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;img title=&quot;扁平化设计的流行本色方案&quot; alt=&quot;扁平化设计的流行本色方案&quot; src=&quot;http://hd.shijue.cvimage.cn/asset/517c7a7b8ddf87786f000001.JPEG&quot; style=&quot;border:1px solid #B9BAA6;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;样本：&lt;/strong&gt;正如其他的&lt;a href=&quot;http://www.shejidaren.com/tag/%e9%85%8d%e8%89%b2&quot;&gt;色彩搭配&lt;/a&gt;一样，同类色也是需要对比的。&lt;strong&gt;&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;最受欢迎的颜色:&lt;/strong&gt;蓝色、灰色和&lt;a href=&quot;http://www.shejidaren.com/tag/%E7%BB%BF%E8%89%B2&quot;&gt;绿色&lt;/a&gt;。\r\n&lt;/p&gt;\r\n&lt;h3 style=&quot;font-family:Verdana, 微软雅黑, 宋体, Geneva, sans-serif;color:#333333;font-size:18px;&quot;&gt;\r\n	结论：\r\n&lt;/h3&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	进行扁平化设计是一件令人愉悦的事情，所以，你的设计作品也应该反映出这种快乐的态度。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#696A52;font-family:STheiti, Verdana, 宋体, Geneva, sans-serif;font-size:14px;&quot;&gt;\r\n	色彩的选择应该与你的作品相匹配，正确地引导用户有效地使用你的网站，并且在这一过程中拥有一个有趣的经历。当进行扁平化设计时一定不要拘泥与传统的色彩搭配法则，而是开阔你的思路，引发各种奇思妙想。\r\n&lt;/p&gt;', '0', '0', '1456729682');

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
INSERT INTO `blog_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0.0.0.0', '1456925031');
