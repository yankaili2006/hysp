-- MySQL dump 10.11
--
-- Host: localhost    Database: hysp
-- ------------------------------------------------------
-- Server version	5.0.83-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hy_advs_duilian`
--

DROP TABLE IF EXISTS `hy_advs_duilian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_duilian` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `src2` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  `url2` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_duilian`
--

LOCK TABLES `hy_advs_duilian` WRITE;
/*!40000 ALTER TABLE `hy_advs_duilian` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_advs_duilian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_advs_lb`
--

DROP TABLE IF EXISTS `hy_advs_lb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_lb` (
  `id` int(20) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '1',
  `title` char(100) NOT NULL default '',
  `src` char(100) NOT NULL default '',
  `url` char(100) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_lb`
--

LOCK TABLES `hy_advs_lb` WRITE;
/*!40000 ALTER TABLE `hy_advs_lb` DISABLE KEYS */;
INSERT INTO `hy_advs_lb` VALUES (39,1,'广告标题','advs/pics/20100319/1268974769.jpg','http://',1),(40,1,'广告标题','advs/pics/20100319/1268974799.jpg','http://',3),(41,1,'广告标题','advs/pics/20100319/1268974824.jpg','http://',2);
/*!40000 ALTER TABLE `hy_advs_lb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_advs_lbgroup`
--

DROP TABLE IF EXISTS `hy_advs_lbgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_lbgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_lbgroup`
--

LOCK TABLES `hy_advs_lbgroup` WRITE;
/*!40000 ALTER TABLE `hy_advs_lbgroup` DISABLE KEYS */;
INSERT INTO `hy_advs_lbgroup` VALUES (1,'默认轮播广告组',1,0);
/*!40000 ALTER TABLE `hy_advs_lbgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_advs_link`
--

DROP TABLE IF EXISTS `hy_advs_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_link` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `src` varchar(100) NOT NULL default '',
  `cl` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_link`
--

LOCK TABLES `hy_advs_link` WRITE;
/*!40000 ALTER TABLE `hy_advs_link` DISABLE KEYS */;
INSERT INTO `hy_advs_link` VALUES (56,1,'2','http://www.baidu.com',0,'','advs/pics/20100105/1262680791.gif',0),(57,1,'2','http://www.baidu.com',0,'','advs/pics/20100105/1262680800.gif',0),(58,1,'2','http://www.baidu.com',0,'','advs/pics/20100105/1262680854.gif',0),(59,1,'2','http://www.baidu.com',0,'','advs/pics/20100106/1262763267.gif',0),(60,1,'2','http://www.baidu.com',0,'','advs/pics/20100106/1262763295.gif',0);
/*!40000 ALTER TABLE `hy_advs_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_advs_linkgroup`
--

DROP TABLE IF EXISTS `hy_advs_linkgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_linkgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_linkgroup`
--

LOCK TABLES `hy_advs_linkgroup` WRITE;
/*!40000 ALTER TABLE `hy_advs_linkgroup` DISABLE KEYS */;
INSERT INTO `hy_advs_linkgroup` VALUES (1,'默认友情链接组',1,0);
/*!40000 ALTER TABLE `hy_advs_linkgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_advs_logo`
--

DROP TABLE IF EXISTS `hy_advs_logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_logo` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_logo`
--

LOCK TABLES `hy_advs_logo` WRITE;
/*!40000 ALTER TABLE `hy_advs_logo` DISABLE KEYS */;
INSERT INTO `hy_advs_logo` VALUES (1,'网站标志一','advs/pics/20100518/1274164793.jpg','#');
/*!40000 ALTER TABLE `hy_advs_logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_advs_movi`
--

DROP TABLE IF EXISTS `hy_advs_movi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_movi` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_movi`
--

LOCK TABLES `hy_advs_movi` WRITE;
/*!40000 ALTER TABLE `hy_advs_movi` DISABLE KEYS */;
INSERT INTO `hy_advs_movi` VALUES (1,'视频广告测试一','http://vhead.blog.sina.com.cn/player/outer_player.swf?auto=1&vid=16205152&uid=1504617052');
/*!40000 ALTER TABLE `hy_advs_movi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_advs_pic`
--

DROP TABLE IF EXISTS `hy_advs_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_pic` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_pic`
--

LOCK TABLES `hy_advs_pic` WRITE;
/*!40000 ALTER TABLE `hy_advs_pic` DISABLE KEYS */;
INSERT INTO `hy_advs_pic` VALUES (1,'测试图片广告','advs/pics/20091126/1259213779.gif','http://www.try.com');
/*!40000 ALTER TABLE `hy_advs_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_advs_pop`
--

DROP TABLE IF EXISTS `hy_advs_pop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_pop` (
  `id` int(12) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `body` text,
  `ifpop` int(1) NOT NULL default '0',
  `popwidth` int(10) default NULL,
  `popheight` int(10) default NULL,
  `popleft` int(10) default NULL,
  `poptop` int(10) default NULL,
  `poptoolbar` int(1) default NULL,
  `popmenubar` int(1) default NULL,
  `popstatus` int(1) default NULL,
  `poplocation` int(1) default NULL,
  `popscrollbars` varchar(50) default NULL,
  `popresizable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_pop`
--

LOCK TABLES `hy_advs_pop` WRITE;
/*!40000 ALTER TABLE `hy_advs_pop` DISABLE KEYS */;
INSERT INTO `hy_advs_pop` VALUES (1,'弹出窗口','窗口内容 ',0,400,300,0,0,0,0,0,0,'auto',0);
/*!40000 ALTER TABLE `hy_advs_pop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_advs_text`
--

DROP TABLE IF EXISTS `hy_advs_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_advs_text` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `text` char(200) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_advs_text`
--

LOCK TABLES `hy_advs_text` WRITE;
/*!40000 ALTER TABLE `hy_advs_text` DISABLE KEYS */;
INSERT INTO `hy_advs_text` VALUES (1,'促销广告一','本季特大优惠活动开始啦qq','http://www.com');
/*!40000 ALTER TABLE `hy_advs_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_admin`
--

DROP TABLE IF EXISTS `hy_base_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_admin` (
  `id` int(6) NOT NULL auto_increment,
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `job` varchar(50) NOT NULL,
  `jobid` varchar(20) NOT NULL,
  `moveable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_admin`
--

LOCK TABLES `hy_base_admin` WRITE;
/*!40000 ALTER TABLE `hy_base_admin` DISABLE KEYS */;
INSERT INTO `hy_base_admin` VALUES (3,'admin','21232f297a57a5a743894a0e4a801fc3','管理员','管理员','A001',0);
/*!40000 ALTER TABLE `hy_base_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_adminauth`
--

DROP TABLE IF EXISTS `hy_base_adminauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_adminauth` (
  `id` int(6) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `auth` int(5) NOT NULL default '0',
  `name` char(50) NOT NULL default '',
  `intro` char(255) NOT NULL default '',
  `xuhao` int(10) NOT NULL default '0',
  `pid` int(10) NOT NULL default '0',
  `pname` char(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_adminauth`
--

LOCK TABLES `hy_base_adminauth` WRITE;
/*!40000 ALTER TABLE `hy_base_adminauth` DISABLE KEYS */;
INSERT INTO `hy_base_adminauth` VALUES (69,'advs',91,'网站标志管理','',1,2,''),(17,'advs',95,'网站广告管理','',5,2,''),(30,'advs',96,'友情链接管理','',4,7,''),(1,'base',1,'网站参数设置','',1,0,''),(2,'base',2,'修改管理密码','',2,0,''),(3,'base',3,'管理账户维护','',3,0,''),(5,'base',5,'网站排版设置','',5,0,''),(66,'base',6,'模块插件管理','',6,0,''),(67,'base',7,'软件升级更新','',7,0,''),(114,'job',225,'应聘表单设置','',7,22,''),(113,'job',224,'企业人才库查询','',4,22,''),(112,'job',223,'求职申请处理','',3,22,''),(111,'job',222,'招聘职位管理','',2,22,''),(110,'job',221,'招聘职位发布','',1,22,''),(6,'menu',11,'导航菜单设置','',1,1,''),(38,'news',120,'文章模块参数设置','',0,12,''),(39,'news',121,'文章分类','',1,12,''),(13,'news',122,'文章管理','',2,12,''),(12,'news',123,'文章专题设置','',3,12,''),(40,'news',125,'文章发布','',5,12,''),(41,'news',126,'文章修改','',6,12,''),(43,'page',301,'网页分组和管理','',1,30,''),(27,'tools',81,'访问统计系统','',1,7,''),(29,'tools',82,'投票调查系统','',3,7,''),(72,'base',8,'管理菜单设置','',8,0,''),(87,'base',9,'模块安装卸载','',9,0,''),(88,'photo',150,'图片模块参数设置','',0,15,''),(89,'photo',151,'图片分类','',1,15,''),(90,'photo',152,'图片管理','',2,15,''),(91,'photo',153,'图片专题设置','',3,15,''),(92,'photo',155,'图片发布','',5,15,''),(93,'photo',156,'图片修改','',6,15,''),(132,'tools',83,'图片投票系统','',3,7,''),(133,'tools',84,'QQ客服系统','',4,7,''),(134,'tools',85,'51客服系统','',5,7,''),(135,'tools',86,'51la统计系统','',6,7,''),(136,'tools',87,'移动短信留言','',7,7,''),(176,'feedback',211,'反馈表单设置','',1,21,''),(177,'feedback',212,'反馈留言管理','',3,21,'');
/*!40000 ALTER TABLE `hy_base_adminauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_adminmenu`
--

DROP TABLE IF EXISTS `hy_base_adminmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_adminmenu` (
  `id` int(6) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_adminmenu`
--

LOCK TABLES `hy_base_adminmenu` WRITE;
/*!40000 ALTER TABLE `hy_base_adminmenu` DISABLE KEYS */;
INSERT INTO `hy_base_adminmenu` VALUES (1,0,'栏目菜单设置','menu/admin/menu.php?groupid=1',1),(2,0,'公司简介修改','page/admin/page_edit.php?id=1&groupid=1',3),(6,0,'联系方式修改','page/admin/page_edit.php?id=64&groupid=22',5),(11,0,'新闻动态管理','news/admin/news_con.php',6),(15,0,'上传网站标志','advs/admin/advs_logo_modi.php?id=1',2),(25,0,'公司环境管理','photo/admin/photo_con.php?pid=9',7),(27,0,'经典案例管理','photo/admin/photo_con.php?pid=8&showtj=all&showfb=all&shownum=10&key=&Submit=%E6%90%9C%E7%B4%A2',8),(21,0,'我要装修管理','feedback/admin/feedback.php',10),(23,0,'招聘职位管理','job/admin/job.php',11),(24,0,'发布招聘职位','job/admin/jobadd.php',12),(26,0,'公司文化修改','page/admin/page_edit.php?id=66&groupid=1',4),(28,0,'团队精英管理','photo/admin/photo_con.php?pid=10&showtj=all&showfb=all&shownum=10&key=&Submit=%E6%90%9C%E7%B4%A2',9);
/*!40000 ALTER TABLE `hy_base_adminmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_adminrights`
--

DROP TABLE IF EXISTS `hy_base_adminrights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_adminrights` (
  `id` int(50) NOT NULL auto_increment,
  `auth` char(20) default NULL,
  `user` char(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3310 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_adminrights`
--

LOCK TABLES `hy_base_adminrights` WRITE;
/*!40000 ALTER TABLE `hy_base_adminrights` DISABLE KEYS */;
INSERT INTO `hy_base_adminrights` VALUES (3309,'230','admin'),(3308,'231','admin'),(3307,'166','admin'),(3306,'165','admin'),(3305,'163','admin'),(3304,'162','admin'),(3303,'161','admin'),(3302,'160','admin'),(3301,'87','admin'),(3300,'86','admin'),(3299,'85','admin'),(3298,'84','admin'),(3297,'83','admin'),(3296,'211','admin'),(3295,'212','admin'),(3294,'156','admin'),(3293,'155','admin'),(3292,'153','admin'),(3291,'152','admin'),(3290,'151','admin'),(3289,'150','admin'),(3288,'9','admin'),(3287,'186','admin'),(3286,'185','admin'),(3285,'183','admin'),(3284,'182','admin'),(3283,'181','admin'),(3282,'180','admin'),(3281,'8','admin'),(3280,'82','admin'),(3279,'81','admin'),(3278,'301','admin'),(3277,'126','admin'),(3276,'125','admin'),(3275,'123','admin'),(3274,'122','admin'),(3273,'121','admin'),(3272,'120','admin'),(3271,'11','admin'),(3270,'221','admin'),(3269,'222','admin'),(3268,'223','admin'),(3267,'224','admin'),(3266,'225','admin'),(3265,'7','admin'),(3264,'6','admin'),(3263,'5','admin'),(3262,'3','admin'),(3261,'2','admin'),(3260,'1','admin'),(3259,'96','admin'),(3258,'95','admin'),(3257,'91','admin');
/*!40000 ALTER TABLE `hy_base_adminrights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_border`
--

DROP TABLE IF EXISTS `hy_base_border`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_border` (
  `id` int(12) NOT NULL auto_increment,
  `bordertype` varchar(10) NOT NULL default 'border',
  `tempid` char(8) NOT NULL default '',
  `tempname` varchar(50) NOT NULL default '边框模板',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_border`
--

LOCK TABLES `hy_base_border` WRITE;
/*!40000 ALTER TABLE `hy_base_border` DISABLE KEYS */;
INSERT INTO `hy_base_border` VALUES (1,'border','001','可选颜色边框模板'),(12,'border','012','可选颜色边框模板(浅色调)'),(15,'border','015','可选颜色边框模板'),(16,'border','016','可选颜色边框模板'),(18,'border','018','可选颜色边框模板'),(41,'border','512','无标题栏圆角边框模版'),(47,'lable','201','标签切换边框模板,浅蓝简约型'),(48,'lable','051','可选颜色,标签切换边框模板,带总标题'),(51,'lable','204','标签切换边框模板,浅灰简约,带总标题栏'),(63,'border','500','条幅边框,无标题栏，搜索条登录框等专用'),(85,'border','526','条状背景边框(搜索、当前位置提示条专用)'),(87,'border','613','创意边框'),(88,'border','614','创意边框'),(183,'border','784','首页联系我们'),(182,'border','783','网页详情'),(181,'border','782','装修知识'),(176,'border','786','栏目导航'),(175,'border','785','公司简介'),(168,'border','787','联系我们'),(179,'border','780','公司新闻'),(170,'border','788','当前位置条背景'),(180,'border','781','团队精英'),(177,'border','789','新闻动态'),(178,'border','790','产品中心');
/*!40000 ALTER TABLE `hy_base_border` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_coltype`
--

DROP TABLE IF EXISTS `hy_base_coltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_coltype` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL default '',
  `colname` varchar(50) NOT NULL default '',
  `sname` varchar(30) NOT NULL,
  `ifadmin` int(1) NOT NULL default '1',
  `ifchannel` int(1) NOT NULL default '0',
  `ifpubplus` int(1) NOT NULL default '1',
  `moveable` int(1) NOT NULL default '0',
  `installed` int(1) NOT NULL default '1',
  `classtbl` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_coltype`
--

LOCK TABLES `hy_base_coltype` WRITE;
/*!40000 ALTER TABLE `hy_base_coltype` DISABLE KEYS */;
INSERT INTO `hy_base_coltype` VALUES (1,'base','基础模块','基础',0,0,0,0,1,''),(2,'diy','自定内容','自定义',0,0,1,0,1,''),(3,'menu','导航菜单','菜单',1,0,1,0,1,''),(5,'index','首页模块','首页',0,1,0,0,1,''),(20,'page','网页模块','网页',1,0,1,0,1,''),(21,'news','文章模块','文章',1,1,1,1,1,'_news_cat'),(26,'photo','图片模块','图片',1,1,1,1,1,'_photo_cat'),(109,'job','企业招聘','招聘',1,1,1,1,1,''),(97,'search','全站搜索','搜索',0,0,1,0,1,''),(98,'advs','网站广告','广告',1,0,1,0,1,''),(99,'tools','辅助工具','工具',1,0,1,0,1,''),(100,'effect','素材特效','特效',0,0,1,0,1,''),(116,'feedback','留言反馈','反馈',1,1,1,1,1,'');
/*!40000 ALTER TABLE `hy_base_coltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_config`
--

DROP TABLE IF EXISTS `hy_base_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_config`
--

LOCK TABLES `hy_base_config` WRITE;
/*!40000 ALTER TABLE `hy_base_config` DISABLE KEYS */;
INSERT INTO `hy_base_config` VALUES (1,'网站名称','input','30','SiteName','室内装饰设计公司','用于在网页标题、导航栏处显示'),(2,'网站网址','input','30','SiteHttp','http://www.phpweb2072.com/','网站的实际访问网址,末尾加“/”'),(4,'服务邮箱','input','30','SiteEmail','service@mydomain.com','在发送系统邮件时作为发件人邮件'),(5,'邮件转发方式','ownersys','1','ownersys','0','LINUX/UNIX服务器一般可使用内置邮件系统转发邮件；WINDOWS服务器建议使用外部SMTP邮箱转发，并设置以下SMTP邮箱参数'),(6,'SMTP服务器','input','30','owner_m_smtp','mail.mydomain.com',''),(7,'SMTP邮箱用户','input','30','owner_m_user','alex@mydomain.com',''),(8,'SMTP邮箱密码','input','30','owner_m_pass','123456',''),(5,'SMTP转发邮箱','input','30','owner_m_mail','alex@mydomain.com',''),(9,'SMTP身份验证','YN','10','owner_m_check','1',''),(10,'是否生成并使用静态HTML网页','YN','10','CatchOpen','0',''),(11,'HTML静态网页更新时间(秒)','input','8','CatchTime','3600','超过此时间访问静态页面时，重新生成静态页并刷新页面'),(3,'软件授权用户账号','input','30','phpwebUser','wanglian','在本软件安装、升级或使用其他服务时所采用的软件授权用户登录帐号'),(99,'安全校验码','code','30','safecode','','');
/*!40000 ALTER TABLE `hy_base_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_pageset`
--

DROP TABLE IF EXISTS `hy_base_pageset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_pageset` (
  `id` int(12) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `coltype` varchar(50) NOT NULL default '',
  `pagename` varchar(50) NOT NULL default '',
  `th` int(5) NOT NULL default '200',
  `ch` int(5) NOT NULL default '500',
  `bh` int(5) NOT NULL default '200',
  `pagetitle` varchar(255) NOT NULL default '',
  `metakey` varchar(255) NOT NULL default '',
  `metacon` text NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  `buildhtml` varchar(12) NOT NULL default '0',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=485 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_pageset`
--

LOCK TABLES `hy_base_pageset` WRITE;
/*!40000 ALTER TABLE `hy_base_pageset` DISABLE KEYS */;
INSERT INTO `hy_base_pageset` VALUES (126,'友情链接','advs','link',444,390,127,'','友情链接','友情链接','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(327,'招聘职位详情','job','detail',444,1537,127,'','0','0','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','id',3),(1,'首页','index','index',442,539,125,'','','','transparent','url(effect/source/bg/x01.gif)','center 290px','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','index',1),(208,'文章发布','member','newsfabu',292,760,42,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',8),(209,'文章管理','member','newsgl',292,216,42,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',9),(210,'文章修改','member','newsmodify',130,785,33,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',10),(228,'文章分类','member','newscat',292,216,42,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',9),(2,'文章检索','news','query',442,606,125,'','','','transparent','url(effect/source/bg/x01.gif)','center 290px','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','catid',2),(3,'文章正文','news','detail',444,660,127,'','0','0','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','id',3),(33,'频道首页','news','main',442,606,125,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','index',0),(129,'内容页','page','html',442,547,125,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','id',1),(16,'全站搜索','search','search',444,390,127,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',2),(247,'会员文章','news','membernews',130,420,33,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',12),(353,'技术检索','news','querytech',394,398,80,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','catid',2),(289,'图文频道首页','photo','main',442,740,125,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','index',1),(290,'图片查询','photo','query',442,559,125,'','','','transparent','url(effect/source/bg/x01.gif)','center 290px','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','catid',2),(291,'图片详情','photo','detail',444,762,127,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','id',3),(292,'会员图片','photo','memberphoto',164,290,152,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',12),(293,'图片管理','member','photogl',162,267,150,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',1),(294,'图片发布','member','photofabu',164,435,152,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(295,'图片修改','member','photomodify',164,493,152,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(296,'图片分类','member','photocat',147,267,150,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',9),(310,'分组首页','page','html_main',200,500,200,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(326,'招聘职位查询','job','main',444,492,127,'企业招聘','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','index',2),(312,'公司简介','page','html_company',442,547,125,'','','','transparent','url(effect/source/bg/x01.gif)','left 290px','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(450,'服务中心','page','service',442,407,125,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','id',0),(451,'服务中心','page','service_main',200,500,200,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(430,'服务支持正文','news','detailsrv',402,506,128,'','0','0','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','id',4),(439,'经营理念','page','html_team',442,617,125,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(482,'服务介绍','page','service_intro',444,409,127,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(459,'合作伙伴','page','service_liucheng',444,545,127,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(460,'联系我们','page','contact',442,407,125,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','id',0),(461,'联系我们','page','contact_main',200,500,200,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(462,'联系方式','page','contact_contact',444,409,127,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(463,'请您留言','page','contact_feedback',442,1153,125,'','','','transparent','url(effect/source/bg/x01.gif)','center 290px','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(472,'企业文化','page','html_culture',444,429,127,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(473,'设备环境','page','html_equipment',444,561,127,'','','','transparent','url(effect/source/bg/x01.gif)','center 290px','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',0),(484,'留言反馈','feedback','main',444,1155,127,'','','','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900','0',1);
/*!40000 ALTER TABLE `hy_base_pageset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_pagetemp`
--

DROP TABLE IF EXISTS `hy_base_pagetemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_pagetemp` (
  `id` int(12) NOT NULL auto_increment,
  `tempname` varchar(50) NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_pagetemp`
--

LOCK TABLES `hy_base_pagetemp` WRITE;
/*!40000 ALTER TABLE `hy_base_pagetemp` DISABLE KEYS */;
INSERT INTO `hy_base_pagetemp` VALUES (47,'默认背景方案','transparent','url(effect/source/bg/x01.gif)','center top','repeat','scroll',1002,'none transparent scroll repeat 0% 0%','',0,0,'auto','url(effect/source/bg/x02.jpg) no-repeat','900','url(effect/source/bg/x04.jpg) #fff repeat-y','900',0,'url(effect/source/bg/x03.jpg)','900');
/*!40000 ALTER TABLE `hy_base_pagetemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_plus`
--

DROP TABLE IF EXISTS `hy_base_plus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_plus` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_plus`
--

LOCK TABLES `hy_base_plus` WRITE;
/*!40000 ALTER TABLE `hy_base_plus` DISABLE KEYS */;
INSERT INTO `hy_base_plus` VALUES (4072,'news','modMemberNewsQuery','会员文章检索','news','membernews','tpl_newsquery.htm','-1','K001','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',780,383,35,0,90,10,20,'id','desc',0,30,'_self',0,-1,-1,-1,'fill','会员文章','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(4071,'news','modNewsNavPath','当前位置提示条','news','membernews','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',650,30,15,234,14,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前位置','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(4070,'advs','modLogo','网站标志','news','membernews','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',308,64,21,17,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(4067,'menu','modBottomMenu','底部菜单（一级）','news','membernews','tpl_bottommenu_1.htm','A','1000','',0,'solid','','click','none','','','','-1',327,20,19,426,2,0,10,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注栏目','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','3','',1,0,'hidden','bottom','block'),(4066,'diy','modButtomInfo','底部信息编辑区','news','membernews','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(4103,'diy','modHeadPic','头部自定义效果图','news','membernews','tpl_headpic.htm','-1','1000','',0,'solid','','click','none','','','','-1',900,286,129,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20090508/1241762139.jpg','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(4115,'diy','modHeadPic','头部自定义效果图','photo','memberphoto','tpl_headpic.htm','-1','1000','',0,'solid','','click','none','','','','-1',900,286,129,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20090508/1241762139.jpg','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(11886,'diy','modPic','图片/FLASH','index','index','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(5106,'menu','modMainMenu','一级导航菜单','photo','memberphoto','tpl_mainmenu_dolphin.htm','A','1000','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',950,35,105,0,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','导航菜单','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11541,'page','modPageTitleMenu','网页标题(菜单)','page','html_company','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(6812,'search','modSearchForm','全站搜索表单','news','querytech','tpl_searchform_dolphin.htm','-1','1000','',0,'solid','','click','none','','','','-1',221,32,47,741,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','全站搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(6811,'diy','modPic','图片/FLASH','news','querytech','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',898,66,12,0,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片','-1 ','diy/pics/20091211/1260497184.gif','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',12,0,'hidden','bottom','block'),(6388,'news','modNewsClassTech','技术一级分类','news','querytech','tpl_newsclasstech.htm','-1','A779','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','-1',201,159,10,0,11,0,-1,'id','desc',0,-1,'_self',78,-1,-1,-1,'fill','技术分类','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(6381,'diy','modColorZone','空白色块','news','querytech','tpl_colorzone.htm','-1','A778','#e10000',1,'solid','','click','none','','','#e10000','-1',685,50,14,215,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(6807,'effect','modSetHomePageCyrano','设为首页加入收藏','news','querytech','tpl_sethomepage_cyrano.htm','-1','1000','',0,'solid','','click','none','','','','-1',218,38,0,663,8,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','设为首页加入收藏','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(9271,'diy','modPic','图片/FLASH','news','detailsrv','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',950,120,6,0,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片','-1 ','diy/pics/20091230/1262135985.gif','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',21,0,'hidden','bottom','block'),(5094,'menu','modMainMenu','一级导航菜单','news','membernews','tpl_mainmenu_dolphin.htm','A','1000','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',950,35,105,0,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','导航菜单','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(6809,'diy','modPic','图片/FLASH','news','querytech','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',190,46,26,23,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片','-1 ','diy/pics/20091209/1260348247.gif','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','bottom','block'),(5122,'menu','modMainMenu','一级导航菜单','page','html_main','tpl_mainmenu_dolphin.htm','A','1000','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',950,35,105,0,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','导航菜单','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(6390,'news','modNewsNavPathTech','技术位置提示条','news','querytech','tpl_navpathtech.htm','-1','1000','',0,'solid','','click','none','','','','-1',650,30,17,235,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前位置','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(9280,'news','modNewsSearchForm','文章搜索表单','news','detailsrv','tpl_news_search_dolphin.htm','-1','A789','',0,'solid','','click','none','','','','-1',184,144,169,0,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(11723,'photo','modPhotoQuery','图片检索搜索','photo','query','tpl_photo_query.htm','-1','A783','',0,'solid','','click','none','','','','-1',724,522,37,258,9,0,10,'id','desc',0,10,'_self',0,-1,140,110,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(9274,'advs','modLogo','网站标志','news','detailsrv','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',308,64,21,17,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(9279,'search','modSearchForm','全站搜索表单','news','detailsrv','tpl_searchform_dolphin.htm','-1','1000','',0,'solid','','click','none','','','','-1',221,32,47,741,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','全站搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(10564,'effect','modNowDate','当前日期时间','news','querytech','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(11715,'photo','modPhotoClass','图片分类（列表）','photo','query','tpl_photoclass_cyrano.htm','-1','A785','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,-1,'id','desc',0,-1,'_self',8,-1,-1,-1,'fill','服务范围','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12090,'news','modNewsNavPath','当前位置提示条','news','detail','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12089,'diy','modPlusBorder','空白边框','news','detail','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','新闻中心','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12024,'advs','modAdvsHeadLb','头部图片轮播','page','service_intro','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12023,'advs','modLogo','网站标志','page','service_intro','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(6389,'news','modNewsQuery','文章翻页检索','news','querytech','tpl_newsquery.htm','-1','1000','',0,'solid','','click','none','','','','-1',676,169,71,221,13,0,20,'id','desc',0,30,'_self',0,-1,-1,-1,'fill','文章检索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(5511,'diy','modHeadTraFlashCyrano','自定义透明FLASH','news','membernews','tpl_headtraflash_cyrano.htm','-1','1000','',0,'solid','','click','none','','','','-1',950,300,138,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100107/1262833583.swf','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(5523,'diy','modHeadTraFlashCyrano','自定义透明FLASH','photo','memberphoto','tpl_headtraflash_cyrano.htm','-1','1000','',0,'solid','','click','none','','','','-1',950,300,138,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100107/1262833583.swf','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(5539,'diy','modHeadTraFlashCyrano','自定义透明FLASH','page','html_main','tpl_headtraflash_cyrano.htm','-1','1000','',0,'solid','','click','none','','','','-1',950,300,138,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100107/1262833583.swf','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(6810,'diy','modButtomInfo','底部信息编辑区','news','querytech','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(11103,'news','modNewsNavPath','当前位置提示条','news','query','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(9277,'diy','modHeadTraFlashCyrano','自定义透明FLASH','news','detailsrv','tpl_headtraflash_cyrano.htm','-1','1000','',0,'solid','','click','none','','','','-1',950,300,138,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100107/1262833583.swf','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(9276,'menu','modMainMenu','一级导航菜单','news','detailsrv','tpl_mainmenu_dolphin.htm','A','1000','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',950,35,105,0,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','导航菜单','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(6374,'diy','modText','多行文字','news','querytech','tpl_text.htm','-1','A786','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','-1',203,226,230,4,7,8,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','多行文字','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地 址：北京市莫干山路2168号\r\n电 话：010-98765432\r\n联系人：杨军(经理)\r\n手 机：15887654321\r\n网址：www.aaaa.com\r\n邮 箱：bos@mail.com\r\n邮 编：300009','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(6808,'menu','modMainMenu','一级导航菜单','news','querytech','tpl_mainmenu_dolphin.htm','A','1000','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',950,35,105,0,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','导航菜单','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(6806,'diy','modPic','图片/FLASH','news','querytech','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',900,279,113,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片','-1 ','diy/pics/20091209/1260346089.gif','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',2,0,'hidden','top','block'),(6805,'diy','modPic','图片/FLASH','news','querytech','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',300,27,0,600,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片','-1 ','diy/pics/20091209/1260345289.gif','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',4,0,'hidden','top','block'),(6804,'diy','modHeadTraFlashCyrano','自定义透明FLASH','news','querytech','tpl_headtraflash_cyrano.htm','-1','1000','',0,'solid','','click','none','','','','-1',950,300,138,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100107/1262833583.swf','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(8087,'diy','modMailLogin','企业邮箱登录接口','page','html_main','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(10562,'effect','modNowDate','当前日期时间','news','membernews','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(12145,'advs','modLogo','网站标志','search','search','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12144,'page','modPageTitleMenu','网页标题(菜单)','search','search','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(12147,'search','modSearch','全站搜索结果','search','search','tpl_search.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,300,37,258,90,10,-1,'id','desc',0,30,'_self',0,-1,-1,-1,'fill','全站搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12143,'diy','modPic','图片/FLASH','search','search','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12166,'advs','modAdvsHeadLb','头部图片轮播','photo','query','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12159,'feedback','modFeedBackSmallForm','全站留言表单','feedback','main','tpl_feedback_smallform.htm','-1','A783','',1,'solid','','click','none','','','','-1',724,1116,37,258,11,15,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','我要装修','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'visible','content','block'),(12158,'advs','modAdvsHeadLb','头部图片轮播','feedback','main','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12157,'advs','modLogo','网站标志','feedback','main','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12156,'page','modPageTitleMenu','网页标题(菜单)','feedback','main','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','22','',1,0,'hidden','content','block'),(9281,'news','modNewsContentSrv','服务支持正文','news','detailsrv','tpl_newscontent_srv.htm','-1','1000','',0,'solid','','click','none','','','','-1',707,441,63,229,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章正文','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(9273,'menu','modBottomMenu','底部菜单（一级）','news','detailsrv','tpl_bottommenu_1.htm','A','1000','',0,'solid','','click','none','','','','-1',327,20,19,426,2,0,10,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注栏目','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','3','',1,0,'hidden','bottom','block'),(12191,'photo','modPhotoContent','图片详情','photo','detail','tpl_photo_content.htm','-1','A783','',0,'solid','','click','none','','','','-1',724,723,37,258,90,20,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片详情','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12068,'diy','modPlusBorder','空白边框','news','query','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','新闻中心','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12188,'advs','modAdvsHeadLb','头部图片轮播','photo','detail','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12189,'photo','modPhotoClass','图片分类（列表）','photo','detail','tpl_photoclass_cyrano.htm','-1','A785','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,-1,'id','desc',0,-1,'_self',8,-1,-1,-1,'fill','服务范围','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12187,'advs','modLogo','网站标志','photo','detail','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12067,'advs','modAdvsHeadLb','头部图片轮播','news','query','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12065,'diy','modPic','图片/FLASH','news','query','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12066,'advs','modLogo','网站标志','news','query','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(9270,'diy','modButtomInfo','底部信息编辑区','news','detailsrv','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(6813,'advs','modLogo','网站标志','news','querytech','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',308,64,21,17,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12022,'page','modPageTitleMenu','网页标题(菜单)','page','service_intro','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','21','',1,0,'hidden','content','block'),(12021,'diy','modPic','图片/FLASH','page','service_intro','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(8084,'diy','modMailLogin','企业邮箱登录接口','member','photocat','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(8082,'diy','modMailLogin','企业邮箱登录接口','member','photofabu','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(8083,'diy','modMailLogin','企业邮箱登录接口','member','photomodify','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(8081,'diy','modMailLogin','企业邮箱登录接口','member','photogl','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(8080,'diy','modMailLogin','企业邮箱登录接口','photo','memberphoto','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12165,'advs','modLogo','网站标志','photo','query','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12164,'diy','modButtomInfo','底部信息编辑区','photo','query','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12186,'diy','modButtomInfo','底部信息编辑区','photo','detail','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12185,'photo','modPhotoSearchForm','图片搜索表单','photo','detail','tpl_photo_searchform_s.htm','-1','A790','',0,'solid','','click','none','','','','-1',205,150,176,14,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12182,'photo','modPhotoNavPath','当前位置提示条','photo','detail','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12183,'diy','modPic','图片/FLASH','photo','detail','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12184,'diy','modPic','图片/FLASH','photo','detail','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12167,'photo','modPhotoSearchForm','图片搜索表单','photo','query','tpl_photo_searchform_s.htm','-1','A790','',0,'solid','','click','none','','','','-1',205,150,176,14,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12163,'diy','modPic','图片/FLASH','photo','query','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12162,'diy','modPic','图片/FLASH','photo','query','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(8069,'diy','modMailLogin','企业邮箱登录接口','news','querytech','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(8067,'diy','modMailLogin','企业邮箱登录接口','news','membernews','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12088,'advs','modAdvsHeadLb','头部图片轮播','news','detail','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12086,'diy','modPic','图片/FLASH','news','detail','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12087,'advs','modLogo','网站标志','news','detail','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12085,'news','modNewsClass','文章一级分类','news','detail','tpl_newsclass_dolphin.htm','-1','A786','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','-1',205,228,0,14,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章分类','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12084,'diy','modButtomInfo','底部信息编辑区','news','detail','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12091,'news','modNewsContent','文章正文','news','detail','tpl_newscontent.htm','-1','A783','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','-1',724,621,37,258,90,20,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章正文','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12083,'diy','modPic','图片/FLASH','news','detail','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,8,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12141,'diy','modButtomInfo','底部信息编辑区','search','search','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12140,'diy','modPic','图片/FLASH','search','search','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(10806,'advs','modLogo','网站标志','index','index','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(10807,'diy','modButtomInfo','底部信息编辑区','index','index','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(8060,'diy','modMailLogin','企业邮箱登录接口','member','newscat','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(8057,'diy','modMailLogin','企业邮箱登录接口','member','newsmodify','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(8055,'diy','modMailLogin','企业邮箱登录接口','member','newsfabu','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(8056,'diy','modMailLogin','企业邮箱登录接口','member','newsgl','tpl_mail_login.htm','-1','A778','',0,'solid','','click','none','','','','-1',189,183,22,22,15,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','企业邮箱登录','-1 ','-1','-1','-1','-1','-1','企业邮局后缀','表单用户名名称','表单密码名称','表单邮局后缀名称','-1','-1','-1','-1','http://企业邮局登录提交地址/','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12020,'diy','modButtomInfo','底部信息编辑区','page','service_intro','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12019,'page','modPageContent','网页内容详情','page','service_intro','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,370,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12018,'diy','modPic','图片/FLASH','page','service_intro','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12017,'menu','modMainMenu','一级导航菜单','page','service_intro','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12016,'page','modPageNavPath','当前位置提示条','page','service_intro','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12081,'news','modNewsSearchForm','文章搜索表单','news','detail','tpl_news_search_dolphin.htm','-1','A781','',0,'solid','','click','none','','','','-1',205,150,240,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(10556,'effect','modNowDate','当前日期时间','member','newscat','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(12130,'page','modPageTitleMenu','网页标题(菜单)','advs','link','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(12133,'advs','modLinkPic','图片友情链接','advs','link','tpl_linkpic.htm','-1','A783','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','{#RP#}advs/link/',724,300,37,258,90,10,6,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','友情链接','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(12129,'diy','modPic','图片/FLASH','advs','link','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12178,'photo','modPhotoClass','图片分类（列表）','photo','main','tpl_photoclass_cyrano.htm','-1','A785','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,-1,'id','desc',0,-1,'_self',8,-1,-1,-1,'fill','服务范围','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12179,'photo','modPhotoQuery','图片检索搜索','photo','main','tpl_photo_query.htm','-1','A783','',0,'solid','','click','none','','','','-1',724,703,37,258,9,0,10,'id','desc',0,10,'_self',0,-1,140,110,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12177,'advs','modAdvsHeadLb','头部图片轮播','photo','main','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12176,'advs','modLogo','网站标志','photo','main','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12175,'diy','modButtomInfo','底部信息编辑区','photo','main','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12173,'diy','modPic','图片/FLASH','photo','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12174,'photo','modPhotoSearchForm','图片搜索表单','photo','main','tpl_photo_searchform_s.htm','-1','A790','',0,'solid','','click','none','','','','-1',205,150,176,14,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11896,'advs','modLogo','网站标志','page','html_company','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11543,'page','modPageContent','网页内容详情','page','html_company','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,510,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(11895,'diy','modPic','图片/FLASH','page','html_company','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12102,'page','modPageTitleMenu','网页标题(菜单)','job','main','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(12105,'job','modJobQuery','职位翻页检索','job','main','tpl_jobquery.htm','-1','A783','',0,'solid','','click','none','','','#ffffff','-1',724,453,37,258,90,15,10,'id','desc',0,30,'_self',0,100,-1,-1,'fill','职位查询','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12101,'diy','modPic','图片/FLASH','job','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12099,'diy','modButtomInfo','底部信息编辑区','job','main','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(9283,'page','modPageTitleMenu','网页标题(菜单)','news','detailsrv','tpl_page_menu_dolphin.htm','-1','A792','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',184,300,20,0,11,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','内容标题菜单','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','14','',1,0,'visible','content','block'),(9275,'news','modNewsNavPath','当前位置提示条','news','detailsrv','tpl_navpath.htm','-1','A785','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',739,37,19,211,8,10,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前位置','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12117,'advs','modLogo','网站标志','job','detail','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12118,'job','modJobContent','职位信息详情','job','detail','tpl_jobcontent.htm','-1','A783','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','-1',724,531,37,258,90,15,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','职位信息','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12116,'page','modPageTitleMenu','网页标题(菜单)','job','detail','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(12114,'diy','modButtomInfo','底部信息编辑区','job','detail','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(10552,'effect','modNowDate','当前日期时间','member','newsfabu','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(10553,'effect','modNowDate','当前日期时间','member','newsgl','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(10554,'effect','modNowDate','当前日期时间','member','newsmodify','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(12127,'diy','modButtomInfo','底部信息编辑区','advs','link','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12126,'diy','modPic','图片/FLASH','advs','link','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12132,'advs','modLinkNavPath','当前位置提示条','advs','link','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,90,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12125,'menu','modMainMenu','一级导航菜单','advs','link','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11921,'page','modPageTitleMenu','网页标题(菜单)','page','html','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(11920,'diy','modPic','图片/FLASH','page','html','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(11919,'page','modPageContent','网页内容详情','page','html','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,510,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(11918,'diy','modButtomInfo','底部信息编辑区','page','html','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(11917,'diy','modPic','图片/FLASH','page','html','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(11916,'menu','modMainMenu','一级导航菜单','page','html','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11915,'page','modPageNavPath','当前位置提示条','page','html','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11914,'diy','modPlusBorder','空白边框','page','html','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','关于我们','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12155,'diy','modButtomInfo','底部信息编辑区','feedback','main','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12153,'diy','modPic','图片/FLASH','feedback','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12154,'diy','modPic','图片/FLASH','feedback','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(9155,'page','modPageTitleMenu','网页标题(菜单)','','','tpl_page_menu_dolphin.htm','-1','A784','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',184,281,20,0,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','内容标题菜单','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'visible','content','block'),(9154,'search','modSearchForm','全站搜索表单','','','tpl_searchform_dolphin.htm','-1','1000','',0,'solid','','click','none','','','','-1',221,32,47,741,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','全站搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(9152,'diy','modHeadTraFlashCyrano','自定义透明FLASH','','','tpl_headtraflash_cyrano.htm','-1','1000','',0,'solid','','click','none','','','','-1',950,300,138,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100107/1262833583.swf','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(9151,'menu','modMainMenu','一级导航菜单','','','tpl_mainmenu_dolphin.htm','A','1000','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',950,35,105,0,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','导航菜单','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(9149,'diy','modPic','图片/FLASH','','','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',950,120,6,0,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片','-1 ','diy/pics/20091230/1262135985.gif','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',21,0,'hidden','bottom','block'),(9148,'advs','modLogo','网站标志','','','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',308,64,21,17,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(9147,'diy','modButtomInfo','底部信息编辑区','','','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(9146,'diy','modPic','图片/FLASH','','','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',184,74,311,0,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片','-1 ','diy/pics/20091230/1262154654.gif','{#RP#}page/contact/contact.php','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',22,0,'hidden','content','block'),(9145,'menu','modBottomMenu','底部菜单（一级）','','','tpl_bottommenu_1.htm','A','1000','',0,'solid','','click','none','','','','-1',327,20,19,426,2,0,10,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注栏目','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','3','',1,0,'hidden','bottom','block'),(12000,'advs','modLogo','网站标志','page','service_liucheng','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11999,'page','modPageTitleMenu','网页标题(菜单)','page','service_liucheng','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','21','',1,0,'hidden','content','block'),(11933,'page','modPageTitleMenu','网页标题(菜单)','page','html_culture','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(11934,'advs','modLogo','网站标志','page','html_culture','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11932,'diy','modPic','图片/FLASH','page','html_culture','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(11931,'page','modPageContent','网页内容详情','page','html_culture','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,390,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(11930,'diy','modButtomInfo','底部信息编辑区','page','html_culture','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(11929,'diy','modPic','图片/FLASH','page','html_culture','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(11928,'menu','modMainMenu','一级导航菜单','page','html_culture','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11927,'page','modPageNavPath','当前位置提示条','page','html_culture','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11105,'news','modNewsClass','文章一级分类','news','query','tpl_newsclass_dolphin.htm','-1','A786','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','-1',205,228,0,14,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章分类','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12064,'diy','modButtomInfo','底部信息编辑区','news','query','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12063,'diy','modPic','图片/FLASH','news','query','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,8,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(11722,'photo','modPhotoNavPath','当前位置提示条','photo','query','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12080,'menu','modMainMenu','一级导航菜单','news','detail','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11104,'news','modNewsQuery','文章翻页检索','news','query','tpl_newsquery.htm','-1','A783','',0,'solid','','click','none','','','','-1',724,569,37,258,10,0,15,'id','desc',0,30,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(10994,'menu','modMainMenu','一级导航菜单','index','index','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11947,'photo','modPhotoGlobalQuery','全站翻页图片列表','page','html_equipment','tpl_photo_query.htm','-1','A783','',1,'solid','','click','block','','','#fff','-1',724,522,37,258,90,0,10,'id','desc',0,10,'_self',9,-1,140,110,'fill','最新图片','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',1,0,'visible','content','block'),(11885,'diy','modPic','图片/FLASH','index','index','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(11894,'diy','modButtomInfo','底部信息编辑区','page','html_company','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12015,'diy','modPlusBorder','空白边框','page','service_intro','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','服务范围','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12014,'diy','modPic','图片/FLASH','page','service_intro','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12013,'diy','modText','多行文字','page','service_intro','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12098,'diy','modPic','图片/FLASH','job','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12104,'job','modJobNavPath','当前位置提示条','job','main','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,90,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12097,'menu','modMainMenu','一级导航菜单','job','main','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12113,'diy','modPic','图片/FLASH','job','detail','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12112,'diy','modPic','图片/FLASH','job','detail','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12111,'job','modJobNavPath','当前位置提示条','job','detail','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12110,'menu','modMainMenu','一级导航菜单','job','detail','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12109,'diy','modPlusBorder','空白边框','job','detail','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','诚聘英才','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12108,'diy','modPic','图片/FLASH','job','detail','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12123,'diy','modPlusBorder','空白边框','advs','link','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','友情链接','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12146,'search','modSearchNavPath','当前位置提示条','search','search','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,90,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12139,'menu','modMainMenu','一级导航菜单','search','search','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12137,'diy','modPlusBorder','空白边框','search','search','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','关于我们','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12172,'diy','modPic','图片/FLASH','photo','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12171,'photo','modPhotoNavPath','当前位置提示条','photo','main','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(10575,'effect','modNowDate','当前日期时间','photo','memberphoto','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(10576,'effect','modNowDate','当前日期时间','member','photogl','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(10577,'effect','modNowDate','当前日期时间','member','photofabu','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(10578,'effect','modNowDate','当前日期时间','member','photomodify','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(10579,'effect','modNowDate','当前日期时间','member','photocat','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(10581,'effect','modNowDate','当前日期时间','page','html_main','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(12095,'diy','modPlusBorder','空白边框','job','main','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','诚聘英才','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11893,'menu','modMainMenu','一级导航菜单','page','html_company','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11892,'diy','modPic','图片/FLASH','page','html_company','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(11542,'page','modPageNavPath','当前位置提示条','page','html_company','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11898,'diy','modPlusBorder','空白边框','page','html_company','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','关于我们','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11527,'diy','modText','多行文字','page','html_company','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11897,'diy','modPic','图片/FLASH','page','html_company','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(11926,'diy','modPlusBorder','空白边框','page','html_culture','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','公司文化','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11925,'diy','modText','多行文字','page','html_culture','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(10591,'effect','modNowDate','当前日期时间','news','detailsrv','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','click','none','','','','-1',205,21,93,19,16,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','当前日期时间','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','top','block'),(11998,'diy','modPic','图片/FLASH','page','service_liucheng','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(11997,'page','modPageContent','网页内容详情','page','service_liucheng','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,506,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(11996,'diy','modButtomInfo','底部信息编辑区','page','service_liucheng','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(11995,'diy','modPic','图片/FLASH','page','service_liucheng','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(11994,'menu','modMainMenu','一级导航菜单','page','service_liucheng','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11993,'page','modPageNavPath','当前位置提示条','page','service_liucheng','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11992,'diy','modPlusBorder','空白边框','page','service_liucheng','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','装修流程','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11990,'diy','modPic','图片/FLASH','page','service_liucheng','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(11991,'diy','modText','多行文字','page','service_liucheng','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11989,'advs','modAdvsHeadLb','头部图片轮播','page','service_liucheng','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12036,'advs','modLogo','网站标志','page','contact_contact','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12035,'page','modPageTitleMenu','网页标题(菜单)','page','contact_contact','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','22','',1,0,'hidden','content','block'),(12034,'diy','modPic','图片/FLASH','page','contact_contact','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12033,'page','modPageContent','网页内容详情','page','contact_contact','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,370,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12032,'diy','modButtomInfo','底部信息编辑区','page','contact_contact','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12031,'diy','modPic','图片/FLASH','page','contact_contact','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12030,'menu','modMainMenu','一级导航菜单','page','contact_contact','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12029,'page','modPageNavPath','当前位置提示条','page','contact_contact','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12028,'diy','modPlusBorder','空白边框','page','contact_contact','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','联系方式','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12026,'diy','modPic','图片/FLASH','page','contact_contact','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12027,'diy','modText','多行文字','page','contact_contact','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11891,'advs','modAdvsHeadLb','头部图片轮播','page','html_company','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12060,'advs','modAdvsHeadLb','头部图片轮播','page','contact_feedback','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12059,'advs','modLogo','网站标志','page','contact_feedback','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12058,'page','modPageTitleMenu','网页标题(菜单)','page','contact_feedback','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','22','',1,0,'hidden','content','block'),(12056,'diy','modPic','图片/FLASH','page','contact_feedback','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12055,'diy','modButtomInfo','底部信息编辑区','page','contact_feedback','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12054,'diy','modPic','图片/FLASH','page','contact_feedback','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12053,'menu','modMainMenu','一级导航菜单','page','contact_feedback','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12051,'diy','modPlusBorder','空白边框','page','contact_feedback','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','我要装修','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12052,'page','modPageNavPath','当前位置提示条','page','contact_feedback','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12152,'menu','modMainMenu','一级导航菜单','feedback','main','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12160,'feedback','modFeedBackNavPath','当前位置提示条','feedback','main','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,90,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12151,'diy','modPlusBorder','空白边框','feedback','main','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','我要装修','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12149,'diy','modPic','图片/FLASH','feedback','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12148,'diy','modText','多行文字','feedback','main','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12012,'advs','modAdvsHeadLb','头部图片轮播','page','service','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12011,'advs','modLogo','网站标志','page','service','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12010,'page','modPageTitleMenu','网页标题(菜单)','page','service','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','21','',1,0,'hidden','content','block'),(12009,'diy','modPic','图片/FLASH','page','service','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12008,'diy','modButtomInfo','底部信息编辑区','page','service','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12007,'page','modPageContent','网页内容详情','page','service','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,370,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12006,'diy','modPic','图片/FLASH','page','service','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12005,'menu','modMainMenu','一级导航菜单','page','service','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12003,'diy','modPlusBorder','空白边框','page','service','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','装修流程','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12004,'page','modPageNavPath','当前位置提示条','page','service','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12048,'advs','modAdvsHeadLb','头部图片轮播','page','contact','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12047,'advs','modLogo','网站标志','page','contact','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12046,'page','modPageTitleMenu','网页标题(菜单)','page','contact','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','22','',1,0,'hidden','content','block'),(12045,'page','modPageContent','网页内容详情','page','contact','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,370,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12044,'diy','modPic','图片/FLASH','page','contact','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12042,'diy','modPic','图片/FLASH','page','contact','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12043,'diy','modButtomInfo','底部信息编辑区','page','contact','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12041,'menu','modMainMenu','一级导航菜单','page','contact','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12040,'page','modPageNavPath','当前位置提示条','page','contact','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12039,'diy','modPlusBorder','空白边框','page','contact','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','联系方式','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11924,'diy','modPic','图片/FLASH','page','html_culture','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(11923,'advs','modAdvsHeadLb','头部图片轮播','page','html_culture','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11946,'advs','modLogo','网站标志','page','html_equipment','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11945,'page','modPageTitleMenu','网页标题(菜单)','page','html_equipment','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(11944,'diy','modPic','图片/FLASH','page','html_equipment','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(11942,'diy','modButtomInfo','底部信息编辑区','page','html_equipment','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(11941,'diy','modPic','图片/FLASH','page','html_equipment','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(11940,'menu','modMainMenu','一级导航菜单','page','html_equipment','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11939,'page','modPageNavPath','当前位置提示条','page','html_equipment','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11938,'diy','modPlusBorder','空白边框','page','html_equipment','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','公司环境','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11937,'diy','modText','多行文字','page','html_equipment','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11935,'advs','modAdvsHeadLb','头部图片轮播','page','html_equipment','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11936,'diy','modPic','图片/FLASH','page','html_equipment','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(11988,'diy','modButtomInfo','底部信息编辑区','page','html_team','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,6,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(11987,'page','modPageTitleMenu','网页标题(菜单)','page','html_team','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,10,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','\r\n-1 \r\n','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(11986,'diy','modPic','图片/FLASH','page','html_team','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(11985,'page','modPageNavPath','当前位置提示条','page','html_team','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11984,'diy','modPic','图片/FLASH','page','html_team','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','\r\n-1\r\n','diy/pics/20100519/1274238119.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(11983,'diy','modText','多行文字','page','html_team','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,8,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','\r\n-1 \r\n','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11981,'diy','modPlusBorder','空白边框','page','html_team','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','团队精英','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11982,'advs','modLogo','网站标志','page','html_team','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11980,'photo','modPhotoPicMemo','图片+名称+介绍','page','html_team','tpl_photopicmemo_cyrano.htm','-1','1000','',0,'solid','','click','none','','','','{#RP#}photo/class/',724,209,292,258,13,0,2,'id','desc',0,12,'_self',10,30,80,110,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',1,0,'hidden','content','block'),(11979,'page','modPageContent','网页内容详情','page','html_team','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,580,37,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11977,'advs','modAdvsHeadLb','头部图片轮播','page','html_team','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,7,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11978,'diy','modPic','图片/FLASH','page','html_team','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12062,'menu','modMainMenu','一级导航菜单','news','query','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11102,'news','modNewsSearchForm','文章搜索表单','news','query','tpl_news_search_dolphin.htm','-1','A781','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12093,'diy','modPic','图片/FLASH','job','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12094,'diy','modText','多行文字','job','main','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12092,'advs','modAdvsHeadLb','头部图片轮播','job','main','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12107,'diy','modText','多行文字','job','detail','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12106,'advs','modAdvsHeadLb','头部图片轮播','job','detail','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12025,'advs','modAdvsHeadLb','头部图片轮播','page','contact_contact','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12050,'diy','modPic','图片/FLASH','page','contact_feedback','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12049,'diy','modText','多行文字','page','contact_feedback','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11523,'photo','modPhotoPic','图片+名称','index','index','tpl_photopic_left.htm','-1','A614','',0,'solid','','click','none','','','','{#RP#}photo/class/?11.html',715,160,190,259,10,0,5,'id','desc',0,0,'_self',11,-1,140,110,'fill','家装案例展示','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',1,0,'hidden','content','block'),(11890,'photo','modPhotoPic','图片+名称','index','index','tpl_photopic_right.htm','-1','A780','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','{#RP#}photo/class/?12.html',715,160,360,259,14,0,5,'id','desc',0,12,'_self',12,-1,140,110,'fill','工装案例展示','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',2,0,'hidden','content','block'),(11521,'news','modNewsList','文章列表','index','index','tpl_newslist.htm','-1','A782','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','{#RP#}news/class/?97.html',205,180,195,14,9,0,5,'id','desc',0,15,'_self',97,50,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',3,0,'hidden','content','block'),(11889,'diy','modPlusBorder','空白边框','index','index','tpl_plusborder.htm','-1','A613','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','{#RP#}page/html/company.php',724,182,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','公司简介','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11519,'diy','modEdit','HTML编辑区','index','index','tpl_edit.htm','-1','1000','',0,'solid','','click','none','','','','-1',655,90,58,286,8,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','<div style=\"LINE-HEIGHT: 22px; COLOR: #1e1e1c; FONT-SIZE: 12px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;乐饰家装饰公司是一家集专业设计、施工、售后服务为一体的现代化装饰企业。公司秉承“专业团队、品质服务”的企业精神，公司汇聚了一批国内高层管理人才、高素质设计精英和一流施工队伍，并多次安排员工到外地考察学习前沿的设计理念和工艺做法，把握流行趋势，以规范化的管理、专业的设计、科学优质的施工，周到全面的服务力求为客户创造一个高品质、时尚、舒适的满意空间。乐饰家装饰始终追求国际化的视野与本土人居环境的完美结合，一方面坚持设计......</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11518,'diy','modText','多行文字','index','index','tpl_text.htm','-1','A784','',0,'solid','','click','none','','','','-1',205,150,389,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(11888,'diy','modPic','图片/FLASH','index','index','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,468,155,13,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274170153.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(11922,'advs','modLogo','网站标志','page','html','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11513,'advs','modAdvsHeadLb','头部图片轮播','index','index','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12121,'diy','modPic','图片/FLASH','advs','link','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12122,'diy','modText','多行文字','advs','link','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12120,'advs','modAdvsHeadLb','头部图片轮播','advs','link','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12135,'diy','modPic','图片/FLASH','search','search','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12136,'diy','modText','多行文字','search','search','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12134,'advs','modAdvsHeadLb','头部图片轮播','search','search','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12181,'menu','modMainMenu','一级导航菜单','photo','detail','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12180,'diy','modPlusBorder','空白边框','photo','detail','tpl_plusborder.htm','-1','A788','',0,'solid','','click','none','','','','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片详情','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12103,'advs','modLogo','网站标志','job','main','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12078,'diy','modPlusBorder','空白边框','news','main','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','新闻中心','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12079,'news','modNewsNavPath','当前位置提示条','news','main','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12077,'advs','modAdvsHeadLb','头部图片轮播','news','main','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12076,'advs','modLogo','网站标志','news','main','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12075,'diy','modPic','图片/FLASH','news','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(12074,'news','modNewsClass','文章一级分类','news','main','tpl_newsclass_dolphin.htm','-1','A786','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','-1',205,228,0,14,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章分类','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12073,'diy','modButtomInfo','底部信息编辑区','news','main','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(12072,'diy','modPic','图片/FLASH','news','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,8,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(12071,'news','modNewsQuery','文章翻页检索','news','main','tpl_newsquery.htm','-1','A783','',0,'solid','','click','none','','','','-1',724,569,37,258,10,0,15,'id','desc',0,30,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12070,'news','modNewsSearchForm','文章搜索表单','news','main','tpl_news_search_dolphin.htm','-1','A781','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12069,'menu','modMainMenu','一级导航菜单','news','main','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11911,'advs','modAdvsHeadLb','头部图片轮播','page','html','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11912,'diy','modPic','图片/FLASH','page','html','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(11913,'diy','modText','多行文字','page','html','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12002,'diy','modPic','图片/FLASH','page','service','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12001,'diy','modText','多行文字','page','service','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12038,'diy','modPic','图片/FLASH','page','contact','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(12037,'diy','modText','多行文字','page','contact','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12170,'menu','modMainMenu','一级导航菜单','photo','main','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12169,'diy','modPlusBorder','空白边框','photo','main','tpl_plusborder.htm','-1','A788','',0,'solid','','click','none','','','','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','工程案例','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(12161,'menu','modMainMenu','一级导航菜单','photo','query','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(11887,'news','modNewsList','文章列表','index','index','tpl_newslist.htm','-1','A789','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','{#RP#}news/class/?86.html',205,180,0,14,12,0,5,'id','desc',0,15,'_self',86,50,-1,-1,'fill','新闻动态','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',4,0,'hidden','content','block'),(11976,'menu','modMainMenu','一级导航菜单','page','html_team','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12061,'feedback','modFeedBackSmallForm','全站留言表单','page','contact_feedback','tpl_feedback_smallform.htm','-1','A783','',1,'solid','','click','none','','','','-1',724,1116,37,258,12,15,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','我要装修','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'visible','content','block'),(12119,'job','modJobForm','应聘申请表单','job','detail','tpl_job_form.htm','-1','A783','#dddddd',1,'solid','','click','block','#f5f5f5','#505050','#fff','-1',724,960,575,258,90,15,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','应聘申请','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(12131,'advs','modLogo','网站标志','advs','link','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(12168,'diy','modPlusBorder','空白边框','photo','query','tpl_plusborder.htm','-1','A788','',0,'solid','','click','none','','','','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','工程案例','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block');
/*!40000 ALTER TABLE `hy_base_plus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_plusdefault`
--

DROP TABLE IF EXISTS `hy_base_plusdefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_plusdefault` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` char(100) NOT NULL default '',
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL default '-1',
  `showborder` char(20) NOT NULL default '1000',
  `bordercolor` varchar(7) NOT NULL default '#4682b4',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#4682b4',
  `barcolor` varchar(10) NOT NULL default '#fff',
  `backgroundcolor` varchar(7) NOT NULL default '#fff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '-1',
  `ord` varchar(100) NOT NULL default '-1',
  `sc` varchar(10) NOT NULL default '-1',
  `showtj` int(5) NOT NULL default '-1',
  `cutword` int(20) NOT NULL default '-1',
  `target` varchar(30) NOT NULL default '-1',
  `catid` int(10) NOT NULL default '-1',
  `cutbody` int(5) NOT NULL default '-1',
  `picw` int(3) NOT NULL default '-1',
  `pich` int(3) NOT NULL default '-1',
  `fittype` varchar(10) NOT NULL default '-1',
  `title` varchar(100) NOT NULL default '',
  `body` text,
  `pic` varchar(255) NOT NULL default '-1',
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL default '-1',
  `movi` varchar(255) NOT NULL default '-1',
  `sourceurl` varchar(20) NOT NULL default '-1',
  `word` varchar(255) NOT NULL default '-1',
  `word1` varchar(255) NOT NULL default '-1',
  `word2` varchar(255) NOT NULL default '-1',
  `word3` char(255) NOT NULL default '-1',
  `word4` char(255) NOT NULL default '-1',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL default '-1',
  `link1` char(255) NOT NULL default '-1',
  `link2` char(255) NOT NULL default '-1',
  `link3` char(255) NOT NULL default '-1',
  `link4` char(255) NOT NULL default '-1',
  `tags` varchar(30) NOT NULL default '-1',
  `groupid` varchar(20) NOT NULL default '-1',
  `projid` varchar(20) NOT NULL default '-1',
  `moveable` int(1) NOT NULL default '1',
  `classtbl` varchar(30) NOT NULL default '',
  `grouptbl` varchar(50) NOT NULL,
  `projtbl` varchar(50) NOT NULL,
  `setglobal` int(5) NOT NULL default '-1',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` varchar(10) NOT NULL default 'block',
  `ifmul` int(1) NOT NULL default '1',
  `ifrefresh` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=405 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_plusdefault`
--

LOCK TABLES `hy_base_plusdefault` WRITE;
/*!40000 ALTER TABLE `hy_base_plusdefault` DISABLE KEYS */;
INSERT INTO `hy_base_plusdefault` VALUES (17,'advs','modLogo','网站标志','all','all','tpl_logo.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',150,60,20,20,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','网站标志','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_logo','',1,'hidden','top','block',0,0),(25,'advs','modLinkPic','图片友情链接','all','all','tpl_linkpic.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}advs/link/',650,100,0,0,90,10,6,'-1','-1',-1,-1,'_self',-1,-1,-1,-1,'-1','友情链接','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_linkgroup','',-1,'hidden','content','block',1,0),(26,'advs','modLinkText','文字友情链接','all','all','tpl_link.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}advs/link/',650,100,0,0,90,10,12,'-1','-1',-1,-1,'_self',-1,-1,-1,-1,'-1','友情链接','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_linkgroup','',-1,'hidden','content','block',1,0),(31,'advs','modAdvsLb','图片轮播广告','all','all','tpl_advslb.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',320,280,200,200,90,0,5,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','轮播广告','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_lbgroup','',-1,'hidden','content','block',0,1),(32,'advs','modAdvsPic','页内图片广告','all','all','tpl_advspic.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',565,95,0,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','广告位','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_pic','',-1,'hidden','content','block',1,0),(34,'advs','modAdvsText','文字广告（静态）','all','all','tpl_advstext.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',200,30,200,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','广告位','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_text','',-1,'hidden','content','block',1,0),(35,'advs','modAdvsMovi','FLASH视频广告','all','all','tpl_movi.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',300,300,200,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','视频播放','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_movi','',-1,'hidden','content','block',1,0),(48,'advs','modAdvsFloat','图片广告（飘动）','all','all','tpl_advs_float.htm','-1','1000','',0,'solid','','','none','','','','-1',100,100,0,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','广告位','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_pic','',-1,'hidden','bodyex','block',0,1),(49,'advs','modAdvsDuilian','对联广告','all','all','tpl_advs_duilian.htm','-1','1000','',0,'solid','','','none','','','','-1',100,220,130,6,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','广告位','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_duilian','',-1,'hidden','bodyex','block',0,1),(50,'advs','modAdvsZimu','文字广告（字幕）','all','all','tpl_advszimu.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',200,30,200,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','广告位','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_text','',-1,'hidden','content','block',1,0),(51,'advs','modAdvsFixed','图片广告（悬浮）','all','all','tpl_advs_fixed.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',100,100,350,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','广告位','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','2','-1',1,'','_advs_pic','',-1,'hidden','bodyex','block',0,0),(61,'advs','modLinkNavPath','当前位置提示条','advs','link','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(89,'advs','modAdvsCode','广告代码','all','all','tpl_advscode.htm','-1','1000','',0,'solid','','','none','','','#fff','-1',250,250,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','广告位','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','请在此插入广告代码','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,1),(18,'comment','modCommentSearchForm','点评搜索表单','comment','all','tpl_comment_searchform.htm','-1','A500','',0,'solid','','','none','','','','-1',650,30,0,200,90,3,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','点评搜索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_comment_cat','','',-1,'hidden','content','block',0,0),(21,'comment','modCommentList','最新点评（列表）','all','all','tpl_commentlist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}comment/class/index.php',300,200,0,0,90,12,5,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','最新点评','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_comment_cat','','',-1,'hidden','content','block',1,0),(22,'comment','modCommentQuery','点评检索','comment','query','tpl_comment_query.htm','-1','1000','#def',1,'solid','','','none','#def','#fff','#fff','-1',750,300,35,0,90,0,20,'-1','-1',-1,30,'_self',-1,-1,-1,-1,'-1','点评检索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'visible','content','block',0,0),(23,'comment','modCommentClass','点评分类','all','all','tpl_comment_class.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,200,200,200,90,12,-1,'-1','-1',-1,-1,'_self',-1,-1,-1,-1,'-1','点评分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',1,0),(24,'comment','modCommentContent','点评详情','comment','detail','tpl_comment_content.htm','-1','1000','#def',0,'solid','','','none','#def','#fff','#fff','-1',750,500,35,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','点评详情','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_comment_cat','','',-1,'visible','content','block',0,0),(56,'comment','modCommentNavPath','当前位置提示条','comment','all','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_comment_cat','','',-1,'hidden','content','block',0,0),(151,'comment','modMemberCommentList','会员最新点评','member','homepage','tpl_membercommentlist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}comment/class/index.php?mid={#mid#}',380,170,0,0,90,12,5,'-1','-1',0,20,'_self',-1,-1,-1,-1,'-1','我的点评','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(164,'comment','modCommentHot30','本月点评点击榜','all','all','tpl_comment_hotlist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}comment/class/index.php?myord=cl',300,200,0,0,90,12,10,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','本月点击榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_comment_cat','','',-1,'hidden','content','block',1,0),(165,'comment','modCommentHot7','本周点评点击榜','all','all','tpl_comment_hotlist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}comment/class/index.php?myord=cl',300,200,0,0,90,12,10,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','本周点击榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_comment_cat','','',-1,'hidden','content','block',1,0),(166,'comment','modCommentRq30','本月点评人气榜','all','all','tpl_comment_hotlist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}comment/class/index.php?myord=backcount',300,200,0,0,90,12,10,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','本月人气榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_comment_cat','','',-1,'hidden','content','block',1,0),(167,'comment','modCommentRq7','本周点评人气榜','all','all','tpl_comment_hotlist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}comment/class/index.php?myord=backcount',300,200,0,0,90,12,10,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','本周人气榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_comment_cat','','',-1,'hidden','content','block',1,0),(9,'diy','modEdit','HTML编辑区','all','all','tpl_edit.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','-1',200,200,0,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','自定内容','请输入内容','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',1,0),(27,'diy','modButtomInfo','底部信息编辑区','all','all','tpl_bottominfo.htm','-1','1000','',0,'solid','','','none','','','#fff','-1',900,120,30,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','脚注信息','请输入内容','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',1,'hidden','bottom','block',0,0),(47,'diy','modText','多行文字','all','all','tpl_text.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','-1',200,200,0,0,90,12,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','多行文字','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','请输入自定义文字','-1','-1','','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(53,'diy','modPic','图片/FLASH','all','all','tpl_pic.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','-1',300,200,0,0,90,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片','-1','','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(74,'diy','modWords','单行文字','all','all','tpl_words.htm','-1','1000','',0,'solid','','','none','','','','-1',200,50,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','单行文字','-1','-1','-1','-1','-1','-1','请输入文字','-1','-1','-1','-1','-1','-1','-1','http://','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(75,'diy','modPicWordText','图片+标题+介绍','all','all','tpl_picwordtext.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','http://',250,90,30,300,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,100,'-1','自定图文','-1','','http://','-1','-1','-1','请输入标题文字','-1','-1','-1','-1','请输入介绍文字','-1','-1','http://','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(76,'diy','modPicWord','图片+标题','all','all','tpl_picword.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','http://',200,250,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','自定图文','-1','','http://','-1','-1','-1','请输入标题','-1','-1','-1','-1','-1','-1','-1','http://','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(184,'news','modNewsPicMemo','文章图片+标题+摘要','all','all','tpl_newspicmemo.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',300,320,0,0,99,5,3,'id|dtime|uptime|prop1|prop2|cl','desc',0,12,'_self',0,35,80,80,'fill','图片新闻','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_news_cat','','_news_proj',-1,'hidden','content','block',1,0),(86,'diy','modPlusBorder','空白边框','all','all','tpl_plusborder.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','http://',300,300,0,0,1,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','空白边框','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(87,'diy','modColorZone','空白色块','all','all','tpl_colorzone.htm','-1','1000','#e10000',1,'solid','','','none','','','#e10000','-1',200,200,30,30,1,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(63,'effect','modJIanFan','动态简繁转换','all','all','tpl_jianfan.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','','-1',150,50,30,700,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','简繁转换','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',1,'hidden','top','block',0,0),(64,'effect','modNowDate','当前日期时间','all','all','tpl_nowdate.htm','-1','1000','#dddddd',0,'solid','','','none','','','','-1',200,30,10,600,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前日期时间','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',1,'hidden','content','block',0,0),(65,'effect','modMouseClock','鼠标时钟特效','all','all','tpl_mouseclock.htm','-1','1000','',0,'solid','','','none','','','','-1',150,150,300,10,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','特效','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','bodyex','block',0,1),(6,'index','modIndexNavPath','当前位置提示条','index','index','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(30,'member','modLoginForm','会员登录表单','all','all','tpl_loginform.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,180,0,0,90,12,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','会员登录','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(37,'member','modMemberReg','会员注册','member','reg','tpl_reg.htm','-1','1000','',0,'solid','','','none','','','#fff','-1',750,390,0,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','会员注册','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(43,'member','modMemberLogin','会员登录表单(大)','member','login','tpl_member_login.htm','-1','1000','',0,'solid','','','none','','','#fff','-1',650,300,0,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','会员登录','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(45,'member','modResetPass','重设密码向导','member','lostpass','tpl_resetpass.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',500,250,0,0,90,30,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','重设密码','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(57,'member','modMemberNavPath','当前位置提示条','member','all','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',700,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(103,'member','modMemberInfo','会员登录信息','member','main','tpl_memberinfo.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',300,250,0,0,99,12,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','会员登录信息','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(104,'member','modMemberNotice','会员公告(列表)','member','main','tpl_member_notice.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,200,0,0,99,12,5,'-1','-1',-1,25,'_self',-1,-1,-1,-1,'-1','会员公告','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(106,'member','modMemberAccount','登录账号设置表单','member','account','tpl_member_account.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,200,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','登录帐号设置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(107,'member','modMemberPerson','头像签名设置表单','member','person','tpl_member_person.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,390,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','头像签名设置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(108,'member','modMemberDetail','个人资料修改表单','member','detail','tpl_member_detail.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,500,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','个人资料修改','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(109,'member','modMemberContact','联系信息设置表单','member','contact','tpl_member_contact.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,390,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','联系信息设置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(110,'member','modMemberNoticeContent','会员公告详情','member','notice','tpl_member_notice_content.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,300,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','会员公告','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(139,'member','modMemberFav','我的收藏夹','member','fav','tpl_member_fav.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,350,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','我的收藏夹','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(140,'member','modMemberFriends','我的好友','member','friends','tpl_member_friends.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,350,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','我的好友','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(141,'member','modMemberComment','我的点评','member','comment','tpl_member_comment.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,350,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','我的点评','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(142,'member','modMemberMsn','我的站内短信','member','msn','tpl_member_msn.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,350,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','我的站内短信','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(147,'member','modMemberCentInfo','会员积分信息','member','main','tpl_centinfo.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',300,200,0,0,99,12,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','会员积分','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(148,'member','modMemberCentLog','会员积分查询','member','membercent','tpl_member_centlog.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,300,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','我的积分','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(153,'member','modMemberIntro','会员简介','member','homepage','tpl_member_intro.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',500,200,0,0,99,12,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','会员简介','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(154,'member','modMemberHomeInfo','会员信息','member','homepage','tpl_member_homeinfo.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',500,210,0,0,99,12,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','会员信息','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(14,'menu','modChannelMenu','二级导航菜单','all','all','tpl_channelmenu.htm','A','1000','',0,'solid','','','none','','','','-1',900,65,120,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','导航菜单','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_menu_group','',1,'hidden','top','block',0,0),(16,'menu','modBottomMenu','底部菜单（一级）','all','all','tpl_bottommenu.htm','A','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',900,28,0,0,90,0,10,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','脚注栏目','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','3','-1',1,'','_menu_group','',1,'hidden','bottom','block',0,0),(67,'menu','modDropDownMenu','二级下拉菜单','all','all','tpl_dropdownmenu.htm','A','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',900,28,100,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','导航菜单','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_menu_group','',1,'hidden','top','block',0,0),(66,'menu','modTopMenu','顶部菜单(一级)','all','all','tpl_topmenu.htm','-1','1000','',0,'solid','','','none','','','','-1',350,30,5,500,90,0,10,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','顶部菜单','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','2','-1',1,'','_menu_group','',1,'hidden','top','block',0,0),(68,'menu','modMainMenu','一级导航菜单','all','all','tpl_mainmenu.htm','A','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',900,30,100,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','导航菜单','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_menu_group','',1,'hidden','top','block',0,0),(115,'menu','modTreeMenu','树形导航菜单','all','all','tpl_treemenu.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',190,200,0,0,99,12,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','导航菜单','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_menu_group','',1,'visible','content','block',0,1),(116,'menu','modMemberMenu','会员功能菜单','member','all','tpl_qqmenu.htm','A','1000','#def',0,'solid','','','none','#cccccc','#fff','#fff','-1',190,200,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','会员中心','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,1),(1,'news','modNewsQuery','文章翻页检索','news','all','tpl_newsquery.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',600,500,30,200,90,10,20,'-1','-1',-1,30,'_self',-1,-1,-1,-1,'-1','文章检索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'visible','content','block',0,0),(2,'news','modNewsClass','文章一级分类','all','all','tpl_newsclass.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,200,0,0,90,12,-1,'-1','-1',0,-1,'_self',0,-1,-1,-1,'-1','文章分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(3,'news','modNewsTreeClass','文章分类（树形）','all','all','tpl_classtree.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,200,200,200,90,12,-1,'-1','-1',0,-1,'_self',0,-1,-1,-1,'-1','文章分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,1),(4,'news','modNewsProjList','相关文章(同专题)','news','detail','tpl_newslist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',200,200,0,0,90,12,5,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','相关文章','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(5,'news','modNewsAuthorList','相关文章(同发布人)','news','detail','tpl_newslist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',200,200,0,0,90,12,5,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','相关文章','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(7,'news','modNewsClassFc','文章逐级分类','news','query','tpl_newsclass.htm','-1','A001','',0,'solid','','','none','','','#fff','-1',200,200,0,0,90,12,99,'-1','-1',0,-1,'_self',-1,-1,-1,-1,'-1','文章分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(8,'news','modNewsList','文章列表','all','all','tpl_newslist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}news/class/',200,200,0,0,90,10,5,'id|dtime|uptime|prop1|prop2|cl','desc',0,12,'_self',0,50,-1,-1,'-1','最新文章','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_news_cat','','_news_proj',-1,'hidden','content','block',1,0),(12,'news','modNewsContent','文章正文','news','detail','tpl_newscontent.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','-1',630,300,30,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','文章正文','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'visible','content','block',0,0),(13,'news','modNewsSearchForm','文章搜索表单','news','all','tpl_news_searchform.htm','-1','A500','',0,'solid','','','none','','','','-1',650,30,0,0,90,3,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','文章搜索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(20,'news','modNewsComment','文章点评','news','detail','tpl_news_comment.htm','-1','1000','#dddddd',1,'solid','','','none','','','#fff','http://',630,300,300,0,90,1,5,'-1','-1',-1,20,'_self',-1,120,-1,-1,'-1','文章评论','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(55,'news','modNewsNavPath','当前位置提示条','news','all','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(72,'news','modNewsProject','文章专题名称列表','all','all','tpl_newsproj.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',200,200,0,0,90,12,-1,'-1','-1',-1,12,'_self',-1,-1,-1,-1,'-1','最新专题','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(82,'news','modNewsPic','文章图片+标题','all','all','tpl_newspic.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',200,300,0,0,99,5,4,'id|dtime|uptime|prop1|prop2|cl','desc',0,6,'_self',0,-1,160,120,'fill','图片新闻','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_news_cat','','_news_proj',-1,'hidden','content','block',1,0),(88,'news','modNewsHot','文章人气榜','all','all','tpl_newshot.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}news/class/index.php?myord=cl',200,280,0,0,90,10,10,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','文章人气榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_news_cat','','_news_proj',-1,'hidden','content','block',1,0),(112,'news','modNewsFabu','文章发布表单','member','newsfabu','tpl_news_fabu.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,700,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','文章发布','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(113,'news','modNewsGl','文章管理','member','newsgl','tpl_news_gl.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,700,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','文章管理','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(114,'news','modNewsModify','文章修改表单','member','newsmodify','tpl_news_modify.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,700,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','文章修改','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(136,'news','modNewsMyCat','文章分类管理','member','newscat','tpl_news_mycat.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,300,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','文章分类管理','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(149,'news','modMemberNewsList','会员最新文章','member','homepage','tpl_newslist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}news/membernews.php?mid={#mid#}',380,170,0,0,90,10,5,'id|dtime|uptime|prop1|prop2|cl','desc',0,20,'_self',-1,-1,-1,-1,'-1','我的文章','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(155,'news','modMemberNewsClass','会员文章分类','news','membernews','tpl_membernews_class.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,180,0,0,99,12,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','文章分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(156,'news','modMemberNewsQuery','会员文章检索','news','membernews','tpl_newsquery.htm','-1','A010','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',680,300,30,220,90,10,20,'-1','-1',-1,30,'_self',-1,-1,-1,-1,'-1','会员文章','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(157,'news','modMemberNewsSearchForm','会员文章搜索','news','membernews','tpl_membernews_searchform.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,175,0,0,99,15,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','文章搜索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(58,'page','modPageNavPath','当前位置提示条','page','all','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(62,'page','modPageContent','网页内容详情','page','all','tpl_page_content.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,350,30,220,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','内容标题','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(70,'page','modPageTitleList','网页标题(列表)','all','all','tpl_pagelist.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','http://',200,300,0,0,90,10,10,'-1','-1',-1,12,'_self',-1,-1,-1,-1,'-1','内容标题列表','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_page_group','',-1,'hidden','content','block',0,0),(71,'page','modPageContentFy','网页内容翻页','page','all','tpl_page_fy.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,50,30,220,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','翻页','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(73,'page','modPageTitleMenu','网页标题(菜单)','all','all','tpl_page_titlemenu.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',200,300,0,0,90,0,10,'-1','-1',-1,12,'_self',-1,-1,-1,-1,'-1','内容标题菜单','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_page_group','',-1,'hidden','content','block',0,0),(29,'search','modSearch','全站搜索结果','search','search','tpl_search.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',900,600,30,0,90,0,-1,'-1','-1',-1,30,'_self',-1,-1,-1,-1,'-1','全站搜索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(46,'search','modSearchForm','全站搜索表单','all','all','tpl_searchform.htm','-1','A500','',0,'solid','','','none','','','','-1',900,30,0,0,90,3,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','全站搜索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(59,'search','modSearchNavPath','当前位置提示条','search','all','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(28,'tools','modShowCount','访问统计','all','all','tpl_showcount.htm','-1','1000','',0,'solid','','','none','','','','-1',150,30,100,300,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','访问统计','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',1,'hidden','bottom','block',0,0),(54,'tools','modVote','投票调查','all','all','tpl_vote.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,250,200,200,90,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','投票调查','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_tools_pollindex','',-1,'hidden','content','block',0,0),(169,'news','modNewsHot30','本月文章人气榜','all','all','tpl_newshot.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}news/class/index.php?myord=cl',200,280,0,0,90,10,10,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','本月人气榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_news_cat','','_news_proj',-1,'hidden','content','block',1,0),(172,'news','modNewsSameTagList','相关文章(同标签)','news','detail','tpl_newslist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',200,200,0,0,90,12,5,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','相关文章','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(176,'diy','modDiyMovi','FLASH视频','all','all','tpl_diymovi.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','-1',300,300,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','视频','-1','-1','-1','-1','请输入FLASH视频来源网址','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(175,'advs','modLinkOpt','下拉式友情链接','all','all','tpl_linkopt.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','{#RP#}advs/link/',200,50,0,0,90,10,12,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','友情链接','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_linkgroup','',-1,'hidden','content','block',1,0),(204,'member','modMemberRank3','会员悬赏榜(积分三)','all','all','tpl_memberrank.htm','-1','A001','',0,'solid','','','none','','','','-1',200,250,0,0,99,12,10,'-1','-1',-1,-1,'_self',-1,-1,-1,-1,'-1','会员悬赏榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(205,'member','modMemberRank4','会员金币榜(积分四)','all','all','tpl_memberrank.htm','-1','A001','',0,'solid','','','none','','','','-1',200,250,0,0,99,12,10,'-1','-1',-1,-1,'_self',-1,-1,-1,-1,'-1','会员金币榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(206,'member','modMemberRank5','消费积分榜(积分五)','all','all','tpl_memberrank.htm','-1','A001','',0,'solid','','','none','','','','-1',200,250,0,0,99,12,10,'-1','-1',-1,-1,'_self',-1,-1,-1,-1,'-1','消费积分榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(207,'member','modMemberTags','会员推荐(标签)','all','all','tpl_membertags.htm','-1','A001','',0,'solid','','','none','','','','-1',200,250,0,0,99,12,2,'-1','-1',-1,-1,'_self',-1,-1,70,70,'-1','会员推荐','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(203,'member','modMemberRank2','会员人气榜(积分二)','all','all','tpl_memberrank.htm','-1','A001','',0,'solid','','','none','','','','-1',200,250,0,0,99,12,10,'-1','-1',-1,-1,'_self',-1,-1,-1,-1,'-1','会员人气榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(202,'member','modMemberRank1','会员经验榜(积分一)','all','all','tpl_memberrank.htm','-1','A001','',0,'solid','','','none','','','','-1',200,250,0,0,99,12,10,'-1','-1',-1,-1,'_self',-1,-1,-1,-1,'-1','会员经验榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(182,'diy','modWordTT','标题+链接组','all','all','tpl_wordtt.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','http://',300,70,0,0,99,10,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','今日头条','-1','-1','-1','-1','-1','-1','请输入头条标题文字','自定义链接文字一','自定义链接文字二','自定义链接文字三','自定义链接文字四','-1','-1','-1','http://','http://','http://','http://','http://','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(183,'diy','modWordText','标题+介绍','all','all','tpl_wordtext.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','http://',300,100,0,0,99,10,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','插件标题','-1','-1','-1','-1','-1','-1','请输入标题文字','-1','-1','-1','-1','请输入介绍文字','-1','-1','http://','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(187,'news','modNewsPicRollx3','三图轮播特效','all','all','tpl_newspicrollx3.htm','A','1000','#dddddd',0,'solid','','','none','#dddddd','#fff','#fff','-1',700,270,0,200,99,0,-1,'-1','-1',0,12,'_self',0,25,-1,-1,'-1','图片新闻','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_news_cat','','_news_proj',-1,'hidden','content','block',0,1),(189,'diy','modPicWords','图片+标题组','all','all','tpl_picwordx5.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','http://',300,120,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,100,'-1','自定图文','-1','','http://','-1','-1','-1','请输入标题','请输入标题','请输入标题','请输入标题','请输入标题','-1','-1','-1','http://','http://','http://','http://','http://','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(190,'effect','modButtonSource','按钮素材','all','all','tpl_picsource.htm','-1','1000','',0,'solid','','','none','','','','-1',200,80,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','按钮素材','-1','-1','-1','-1','-1','button/01.gif','-1','-1','-1','-1','-1','-1','-1','-1','','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(191,'effect','modIconSource','图标素材','all','all','tpl_picsource.htm','-1','1000','',0,'solid','','','none','','','','-1',50,50,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图标素材','-1','-1','-1','-1','-1','icon/01.gif','-1','-1','-1','-1','-1','-1','-1','-1','','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(193,'effect','modSmallIcon','小图标素材','all','all','tpl_smallicon.htm','-1','1000','',0,'solid','','','none','','','','-1',50,50,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图标素材','-1','-1','-1','-1','-1','smallicon/1.gif','-1','-1','-1','-1','-1','-1','-1','-1','','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(198,'effect','modBgSource','背景图片素材','all','all','tpl_bgsource.htm','-1','1000','',0,'solid','','','none','','','','-1',100,100,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','背景素材','-1','-1','-1','-1','-1','bg/1.gif','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(195,'effect','modSourceCoolLine','分割线装饰素材','all','all','tpl_picsource.htm','-1','1000','',0,'solid','','','none','','','','-1',300,100,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','分割线素材','-1','-1','-1','-1','-1','coolline/1.png','-1','-1','-1','-1','-1','-1','-1','-1','','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(196,'effect','modCartonSource','其他图片素材','all','all','tpl_picsource.htm','-1','1000','',0,'solid','','','none','','','','-1',200,200,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','卡通图片','-1','-1','-1','-1','-1','carton/1.png','-1','-1','-1','-1','-1','-1','-1','-1','','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(200,'diy','modGroupLable','标签切换边框','all','all','tpl_plusborder.htm','-1','A201','',0,'solid','','','none','','#fff','#fff','http://',300,300,0,0,0,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','自动标签','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(210,'diy','modBgSound','网页背景音乐(mid)','all','all','tpl_bgsound.htm','-1','1000','',0,'solid','','','none','','','','-1',100,50,350,0,-1,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','背景音乐','-1','-1','-1','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','bodyex','block',0,1),(211,'news','modNewsSameClass','文章同级分类','news','query','tpl_newsclass.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,200,0,0,90,12,-1,'-1','-1',0,-1,'_self',-1,-1,-1,-1,'-1','文章分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(214,'diy','modHeadPic','头部自定义效果图','all','all','tpl_headpic.htm','-1','1000','',0,'solid','','','none','','','','-1',900,150,0,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片','-1','','http://','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',1,'hidden','top','block',0,0),(219,'diy','modDiyTemp','自定义模版','all','all','tpl_diy.htm','-1','1000','',0,'solid','','','none','','','','-1',300,300,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','自定模版','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(220,'news','modNewsTwoClass','文章二级分类','all','all','tpl_newstwoclass.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,300,0,0,90,12,-1,'-1','-1',0,-1,'_self',0,-1,-1,-1,'-1','文章分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'hidden','content','block',0,0),(246,'menu','modVMenu','竖式导航菜单','all','all','tpl_vmenu.htm','A','1000','',0,'solid','','','none','','','','-1',200,300,0,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','导航菜单','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_menu_group','',1,'hidden','content','block',0,0),(247,'menu','modMVMenu','手风琴式二级菜单','all','all','tpl_mvmenu.htm','A','1000','',0,'solid','','','none','','','','-1',180,200,0,0,99,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','导航菜单','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_menu_group','',-1,'visible','content','block',0,1),(255,'news','modNewsPicLb','文章图片轮播','all','all','tpl_newspic_lb.htm','-1','1000','',0,'solid','','','none','','','','-1',300,280,0,0,99,1,5,'id|dtime|uptime|prop1|prop2|cl','desc',0,15,'-1',0,-1,-1,-1,'-1','图片新闻','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','-1',1,'_news_cat','','_news_proj',-1,'hidden','content','block',1,1),(256,'photo','modPhotoQuery','图片检索搜索','photo','all','tpl_photo_query.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',680,500,30,200,90,5,20,'-1','-1',-1,30,'_self',-1,-1,120,120,'fill','图片检索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_photo_cat','','',-1,'visible','content','block',0,1),(257,'photo','modPhotoContent','图片详情','photo','detail','tpl_photo_content.htm','-1','1000','',0,'solid','','','none','','','','-1',650,300,30,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片详情','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_photo_cat','','',-1,'visible','content','block',0,0),(258,'photo','modPhotoClass','图片分类（列表）','all','all','tpl_photoclass.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,200,0,0,90,12,-1,'-1','-1',0,-1,'_self',0,-1,-1,-1,'-1','图片分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_photo_cat','','',-1,'hidden','content','block',1,0),(259,'photo','modPhotoPic','图片+名称','all','all','tpl_photopic.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}photo/class/',620,200,0,0,90,10,5,'id|dtime|uptime|prop1|prop2|cl','desc',0,12,'_self',0,-1,100,100,'fill','最新图片','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_photo_cat','','_photo_proj',-1,'hidden','content','block',1,0),(260,'photo','modPhotoSearchForm','图片搜索表单','photo','all','tpl_photo_searchform.htm','-1','A500','',0,'solid','','','none','','','','-1',650,30,0,200,90,3,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片搜索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_photo_cat','','',-1,'hidden','content','block',0,0),(261,'photo','modPhotoNavPath','当前位置提示条','photo','all','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_photo_cat','','',-1,'hidden','content','block',0,0),(262,'photo','modPhotoProject','图片专题（列表）','all','all','tpl_photoproj.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',200,200,0,0,90,12,-1,'-1','-1',-1,12,'_self',-1,-1,-1,-1,'-1','最新专题','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(263,'photo','modPhotoProjList','相关图片(同专题)','photo','detail','tpl_photopic.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',200,300,0,0,90,10,6,'-1','-1',0,12,'_self',0,-1,100,100,'fill','相关图片','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_photo_cat','','',-1,'hidden','content','block',0,0),(264,'photo','modPhotoClassFc','图片逐级分类','photo','query','tpl_photoclass.htm','-1','A001','',0,'solid','','','none','','#fff','#fff','-1',200,200,0,0,90,12,99,'-1','-1',0,-1,'_self',-1,-1,-1,-1,'-1','图片分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(265,'photo','modPhotoHot','图片人气榜','all','all','tpl_photohot.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}photo/class/index.php?myord=cl',200,280,0,0,90,10,10,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','图片人气榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_photo_cat','','_photo_proj',-1,'hidden','content','block',1,0),(266,'photo','modPhotoComment','图片点评','photo','detail','tpl_photo_comment.htm','-1','1000','#dddddd',1,'solid','','','none','','','#fff','http://',650,350,350,0,90,1,5,'-1','-1',-1,20,'_self',-1,120,-1,-1,'-1','图片评论','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(267,'photo','modPhotoFabu','图片发布表单','member','photofabu','tpl_photo_fabu.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,700,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片发布','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(268,'photo','modPhotoGl','图片管理','member','photogl','tpl_photo_gl.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,700,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片管理','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(269,'photo','modPhotoModify','图片修改表单','member','photomodify','tpl_photo_modify.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,700,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片修改','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(270,'photo','modPhotoMyCat','图片分类管理','member','photocat','tpl_photo_mycat.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,300,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片分类管理','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(271,'photo','modMemberPhotoPic','会员最新图片','member','homepage','tpl_photopic.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}photo/memberphoto.php?mid={#mid#}',500,200,0,0,90,10,10,'id|dtime|uptime|prop1|prop2|cl','desc',0,7,'_self',-1,-1,120,120,'fill','我的图片','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(272,'photo','modMemberPhotoClass','会员图片分类','photo','memberphoto','tpl_memberphoto_class.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,200,0,0,99,12,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(273,'photo','modMemberPhotoQuery','会员图片检索','photo','memberphoto','tpl_photo_query.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,350,0,220,99,0,20,'-1','-1',-1,-1,'-1',-1,-1,120,120,'fill','图片检索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,1),(274,'photo','modMemberPhotoSearchForm','会员图片搜索','photo','memberphoto','tpl_memberphoto_searchform.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,175,0,0,99,15,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','图片搜索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(275,'photo','modPhotoHot30','本月图片人气榜','all','all','tpl_photohot.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}photo/class/index.php?myord=cl',200,280,0,0,90,10,10,'-1','-1',0,12,'_self',0,-1,-1,-1,'-1','本月人气榜','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_photo_cat','','_photo_proj',-1,'hidden','content','block',1,0),(276,'photo','modPhotoAuthorList','相关图片(同发布人)','photo','detail','tpl_photopic.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',200,300,0,0,90,10,6,'-1','-1',0,12,'_self',0,-1,100,100,'fill','相关图片','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_photo_cat','','',-1,'hidden','content','block',0,0),(277,'photo','modPhotoSameTagList','相关图片(同标签)','photo','detail','tpl_photopic.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','http://',200,300,0,0,90,10,6,'-1','-1',0,12,'_self',0,-1,100,100,'fill','相关图片','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_photo_cat','','',-1,'hidden','content','block',0,0),(278,'photo','modPhotoPicMemo','图片+名称+介绍','all','all','tpl_photopicmemo.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}photo/class/',300,350,0,0,90,10,3,'id|dtime|uptime|prop1|prop2|cl','desc',0,12,'_self',0,30,80,80,'fill','最新图片','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_photo_cat','','_photo_proj',-1,'hidden','content','block',1,0),(279,'photo','modPhotoRollx3','三图轮播特效','all','all','tpl_photorollx3.htm','A','1000','#dddddd',0,'solid','','','none','#dddddd','#fff','#fff','-1',700,270,0,200,99,0,-1,'-1','-1',0,12,'_self',0,25,-1,-1,'-1','图片特效','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_photo_cat','','_photo_proj',-1,'hidden','content','block',0,1),(280,'photo','modPhotoSameClass','图片同级分类','photo','query','tpl_photoclass.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,200,0,0,90,12,-1,'-1','-1',0,-1,'_self',-1,-1,-1,-1,'-1','图片分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(281,'photo','modPhotoCarousel','图片旋转显示特效','all','all','tpl_photocarousel_cyrano.htm','-1','1000','#dddddd',0,'solid','','','none','#dddddd','#fff','#fff','-1',140,225,0,200,99,0,-1,'-1','-1',0,-1,'_self',0,-1,-1,-1,'-1','图片特效','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_photo_cat','','_photo_proj',-1,'hidden','content','block',0,1),(282,'photo','modPhotoTwoClass','图片二级分类','all','all','tpl_phototwoclass.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',200,300,0,0,90,12,-1,'-1','-1',0,-1,'_self',0,-1,-1,-1,'-1','图片分类','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_photo_cat','','',-1,'hidden','content','block',0,0),(325,'job','modJobSearchForm','职位搜索表单','job','all','tpl_job_searchform.htm','-1','A500','',0,'solid','','','none','','','','-1',650,30,0,0,90,3,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','职位搜索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(324,'job','modJobContent','职位信息详情','job','detail','tpl_jobcontent.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','-1',630,300,30,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','职位信息','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(323,'job','modJobList','最新职位列表','all','all','tpl_joblist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','{#RP#}job/',200,200,0,0,90,12,5,'-1','-1',-1,12,'_self',-1,-1,-1,-1,'-1','最新职位','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',1,0),(322,'job','modJobQuery','职位翻页检索','all','all','tpl_jobquery.htm','-1','A001','',0,'solid','','','none','','','#ffffff','-1',650,350,0,0,90,15,10,'-1','-1',-1,30,'_self',-1,100,-1,-1,'-1','职位查询','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(314,'page','modPagePicList','标题+摘要+主题图','all','all','tpl_page_piclist.htm','-1','1000','',0,'solid','','','none','','','','-1',650,300,0,0,90,0,10,'-1','-1',-1,15,'_self',-1,50,120,90,'fill','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_page_group','',-1,'hidden','content','block',0,0),(315,'news','modNewsGlobalQuery','全站翻页文章列表','all','all','tpl_newsquery.htm','-1','A001','',1,'solid','','','block','','','#fff','-1',650,350,0,0,90,15,10,'id|dtime|uptime|prop1|prop2|cl','desc',0,20,'_self',0,50,-1,-1,'-1','最新文章','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_news_cat','','_news_proj',-1,'visible','content','block',0,0),(318,'photo','modPhotoGlobalQuery','全站翻页图片列表','all','all','tpl_photo_query.htm','-1','A001','',1,'solid','','','block','','','#fff','-1',650,350,0,0,90,15,10,'id|dtime|uptime|prop1|prop2|cl','desc',0,12,'_self',0,-1,180,160,'fill','最新图片','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_photo_cat','','_photo_proj',-1,'visible','content','block',0,0),(326,'job','modJobNavPath','当前位置提示条','job','all','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(327,'job','modJobForm','应聘申请表单','job','detail','tpl_job_form.htm','-1','A001','#dddddd',1,'solid','','','block','#f5f5f5','#505050','#fff','-1',650,500,0,0,99,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','应聘申请','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(328,'tools','modToolsPhotoPollQuery','图片投票翻页检索','all','all','tpl_tools_photopoll_query.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',680,500,30,200,90,5,20,'id|uptime|votes','-1',-1,30,'-1',0,-1,80,80,'fill','图片投票检索','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_tools_photopollindex','','',-1,'visible','content','block',0,1),(329,'tools','modToolsQqCs','QQ客服','all','all','tpl_tools_qqcs.htm','-1','1000','',0,'solid','','','none','','','','-1',120,300,100,20,90,0,-1,'-1','-1',0,-1,'-1',-1,-1,-1,-1,'-1','QQ客服','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',1,'hidden','content','block',0,0),(330,'tools','modToolsWyCs','51客服','all','all','tpl_tools_wycs.htm','-1','1000','',0,'solid','','','none','','','','-1',300,120,100,0,90,0,-1,'-1','-1',0,-1,'-1',-1,-1,-1,-1,'-1','51客服','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',1,'hidden','content','block',0,0),(331,'tools','modToolsStatistics','统计代码插件','all','all','tpl_tools_statistics.htm','-1','1000','',0,'solid','','','none','','','','-1',30,30,50,400,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','统计代码','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','bottom','block',0,0),(332,'tools','modToolsYdCs','移动短信留言','all','all','tpl_tools_ydcs.htm','-1','1000','',0,'solid','','','none','','','','-1',400,350,100,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','移动短信留言板','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',1,'hidden','content','block',0,0),(333,'member','modMemberPayList','会员付款记录','member','paylist','tpl_member_paylist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,300,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','付款记录','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(334,'member','modMemberBuyList','会员消费记录','member','buylist','tpl_member_buylist.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',700,300,0,0,99,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','消费记录','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'visible','content','block',0,0),(335,'diy','modDiyHeadTraFlash','头部自定义透明FLASH','all','all','tpl_diyheadtraflash.htm','-1','1000','',0,'solid','','','none','','','','-1',900,150,0,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','','-1','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',1,'hidden','top','block',0,0),(336,'diy','modHeadTraFlashCyrano','自定义透明FLASH','all','all','tpl_headtraflash_cyrano.htm','-1','1000','',0,'solid','','','none','','','','-1',900,150,0,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','','-1','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',1,'hidden','top','block',0,0),(338,'effect','modSetHomePageCyrano','设为首页加入收藏','all','all','tpl_sethomepage_cyrano.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','','-1',150,50,30,700,90,5,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','设为首页加入收藏','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',1,'hidden','top','block',0,0),(370,'news','modNewsContentSrv','服务支持正文','news','detailsrv','tpl_newscontent_srv.htm','-1','1000','#dddddd',1,'solid','','','none','#cccccc','#fff','#fff','-1',630,300,30,0,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','文章正文','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'_news_cat','','',-1,'visible','content','block',0,0),(371,'news','modNewsGlobalQuerySrv','全站服务翻页文章列表','all','all','tpl_newsquery_srv.htm','-1','A001','',1,'solid','','','block','','','#fff','-1',650,350,0,0,90,15,10,'id|dtime|uptime|prop1|prop2|cl','desc',0,20,'_self',0,50,-1,-1,'-1','最新文章','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','-1','0',1,'_news_cat','','_news_proj',-1,'visible','content','block',0,0),(373,'advs','modAdvsHeadLb','头部图片轮播','all','all','tpl_advsheadlb.htm','-1','1000','',0,'solid','','','none','','','','-1',900,200,0,0,90,0,5,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_advs_lbgroup','',1,'hidden','top','block',0,1),(402,'feedback','modFeedBackNavPath','当前位置提示条','all','all','tpl_navpath.htm','-1','1000','#dddddd',0,'solid','','','none','#cccccc','#fff','#fff','-1',650,30,0,200,90,0,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','当前位置','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',1,'','','',-1,'hidden','content','block',0,0),(403,'feedback','modFeedBackForm','留言反馈表单','feedback','all','tpl_feedback_form.htm','-1','A001','#dddddd',1,'solid','','','block','#cccccc','#fff','#fff','-1',650,500,50,220,90,20,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','留言反馈','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_feedback_group','',-1,'visible','content','block',0,0),(404,'feedback','modFeedBackSmallForm','全站留言表单','all','all','tpl_feedback_smallform.htm','-1','A001','',1,'solid','','','none','','','','-1',650,500,0,0,90,10,-1,'-1','-1',-1,-1,'-1',-1,-1,-1,-1,'-1','给我留言','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','-1',1,'','_feedback_group','',1,'hidden','content','block',0,0);
/*!40000 ALTER TABLE `hy_base_plusdefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_plusplan`
--

DROP TABLE IF EXISTS `hy_base_plusplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_plusplan` (
  `id` int(12) NOT NULL auto_increment,
  `planid` int(6) NOT NULL default '0',
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3498 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_plusplan`
--

LOCK TABLES `hy_base_plusplan` WRITE;
/*!40000 ALTER TABLE `hy_base_plusplan` DISABLE KEYS */;
INSERT INTO `hy_base_plusplan` VALUES (3368,285,'diy','modPic','图片/FLASH','page','html_equipment','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(3367,285,'advs','modAdvsHeadLb','头部图片轮播','page','html_equipment','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3366,285,'diy','modText','多行文字','page','html_equipment','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3365,285,'diy','modPlusBorder','空白边框','page','html_equipment','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','公司环境','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3364,285,'page','modPageNavPath','当前位置提示条','page','html_equipment','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3363,285,'menu','modMainMenu','一级导航菜单','page','html_equipment','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3362,285,'diy','modPic','图片/FLASH','page','html_equipment','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3361,285,'diy','modButtomInfo','底部信息编辑区','page','html_equipment','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3427,290,'diy','modText','多行文字','page','service_liucheng','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3426,290,'diy','modPic','图片/FLASH','page','service_liucheng','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(3360,285,'diy','modPic','图片/FLASH','page','html_equipment','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3359,285,'page','modPageTitleMenu','网页标题(菜单)','page','html_equipment','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(3358,285,'advs','modLogo','网站标志','page','html_equipment','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3357,285,'photo','modPhotoGlobalQuery','全站翻页图片列表','page','html_equipment','tpl_photo_query.htm','-1','A783','',1,'solid','','click','block','','','#fff','-1',724,522,37,258,90,0,10,'id','desc',0,10,'_self',9,-1,140,110,'fill','最新图片','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',1,0,'visible','content','block'),(3356,284,'advs','modAdvsHeadLb','头部图片轮播','page','html_company','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3355,284,'diy','modPic','图片/FLASH','page','html_company','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(3354,284,'diy','modText','多行文字','page','html_company','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3353,284,'diy','modPlusBorder','空白边框','page','html_company','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','关于我们','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3352,284,'page','modPageNavPath','当前位置提示条','page','html_company','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3350,284,'menu','modMainMenu','一级导航菜单','page','html_company','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3351,284,'diy','modPic','图片/FLASH','page','html_company','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3349,284,'diy','modButtomInfo','底部信息编辑区','page','html_company','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3347,284,'page','modPageContent','网页内容详情','page','html_company','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,510,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(3348,284,'diy','modPic','图片/FLASH','page','html_company','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3439,291,'diy','modText','多行文字','page','contact_contact','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3438,291,'diy','modPic','图片/FLASH','page','contact_contact','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(3437,291,'diy','modPlusBorder','空白边框','page','contact_contact','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','联系方式','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3425,290,'diy','modPlusBorder','空白边框','page','service_liucheng','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','装修流程','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3424,290,'page','modPageNavPath','当前位置提示条','page','service_liucheng','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3436,291,'page','modPageNavPath','当前位置提示条','page','contact_contact','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3423,290,'menu','modMainMenu','一级导航菜单','page','service_liucheng','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3422,290,'diy','modPic','图片/FLASH','page','service_liucheng','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3473,294,'advs','modAdvsHeadLb','头部图片轮播','job','main','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3472,294,'diy','modText','多行文字','job','main','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3471,294,'diy','modPic','图片/FLASH','job','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(3470,294,'diy','modPlusBorder','空白边框','job','main','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','诚聘英才','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3469,294,'menu','modMainMenu','一级导航菜单','job','main','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3468,294,'job','modJobNavPath','当前位置提示条','job','main','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,90,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3467,294,'diy','modPic','图片/FLASH','job','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3465,294,'diy','modPic','图片/FLASH','job','main','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3466,294,'diy','modButtomInfo','底部信息编辑区','job','main','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3464,294,'job','modJobQuery','职位翻页检索','job','main','tpl_jobquery.htm','-1','A783','',0,'solid','','click','none','','','#ffffff','-1',724,453,37,258,90,15,10,'id','desc',0,30,'_self',0,100,-1,-1,'fill','职位查询','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(3463,294,'page','modPageTitleMenu','网页标题(菜单)','job','main','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(3435,291,'menu','modMainMenu','一级导航菜单','page','contact_contact','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3434,291,'diy','modPic','图片/FLASH','page','contact_contact','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3433,291,'diy','modButtomInfo','底部信息编辑区','page','contact_contact','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3431,291,'diy','modPic','图片/FLASH','page','contact_contact','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3432,291,'page','modPageContent','网页内容详情','page','contact_contact','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,370,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(3430,291,'page','modPageTitleMenu','网页标题(菜单)','page','contact_contact','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','22','',1,0,'hidden','content','block'),(3429,291,'advs','modLogo','网站标志','page','contact_contact','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3485,295,'diy','modText','多行文字','page','contact_feedback','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,176,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3484,295,'diy','modPic','图片/FLASH','page','contact_feedback','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,255,155,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100519/1274233993.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(3483,295,'page','modPageNavPath','当前位置提示条','page','contact_feedback','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3482,295,'diy','modPlusBorder','空白边框','page','contact_feedback','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','我要装修','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3481,295,'menu','modMainMenu','一级导航菜单','page','contact_feedback','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3480,295,'diy','modPic','图片/FLASH','page','contact_feedback','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3478,295,'diy','modPic','图片/FLASH','page','contact_feedback','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3479,295,'diy','modButtomInfo','底部信息编辑区','page','contact_feedback','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3477,295,'page','modPageTitleMenu','网页标题(菜单)','page','contact_feedback','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','22','',1,0,'hidden','content','block'),(3476,295,'advs','modLogo','网站标志','page','contact_feedback','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3475,295,'advs','modAdvsHeadLb','头部图片轮播','page','contact_feedback','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3497,296,'diy','modPlusBorder','空白边框','photo','query','tpl_plusborder.htm','-1','A788','',0,'solid','','click','none','','','','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','工程案例','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3496,296,'menu','modMainMenu','一级导航菜单','photo','query','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3495,296,'photo','modPhotoNavPath','当前位置提示条','photo','query','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,10,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3494,296,'diy','modPic','图片/FLASH','photo','query','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3493,296,'diy','modPic','图片/FLASH','photo','query','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3492,296,'photo','modPhotoSearchForm','图片搜索表单','photo','query','tpl_photo_searchform_s.htm','-1','A790','',0,'solid','','click','none','','','','-1',205,150,176,14,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','图片搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3491,296,'diy','modButtomInfo','底部信息编辑区','photo','query','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3490,296,'advs','modLogo','网站标志','photo','query','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3489,296,'advs','modAdvsHeadLb','头部图片轮播','photo','query','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3488,296,'photo','modPhotoClass','图片分类（列表）','photo','query','tpl_photoclass_cyrano.htm','-1','A785','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,-1,'id','desc',0,-1,'_self',8,-1,-1,-1,'fill','服务范围','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3487,296,'photo','modPhotoQuery','图片检索搜索','photo','query','tpl_photo_query.htm','-1','A783','',0,'solid','','click','none','','','','-1',724,522,37,258,9,0,10,'id','desc',0,10,'_self',0,-1,140,110,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(3474,294,'advs','modLogo','网站标志','job','main','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3461,293,'menu','modMainMenu','一级导航菜单','news','query','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3462,293,'news','modNewsSearchForm','文章搜索表单','news','query','tpl_news_search_dolphin.htm','-1','A781','',0,'solid','','click','none','','','','-1',205,150,238,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章搜索','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3460,293,'news','modNewsQuery','文章翻页检索','news','query','tpl_newsquery.htm','-1','A783','',0,'solid','','click','none','','','','-1',724,569,37,258,10,0,15,'id','desc',0,30,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(3459,293,'diy','modPic','图片/FLASH','news','query','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,8,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3458,293,'diy','modButtomInfo','底部信息编辑区','news','query','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3457,293,'news','modNewsClass','文章一级分类','news','query','tpl_newsclass_dolphin.htm','-1','A786','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','-1',205,228,0,14,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','文章分类','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(3455,293,'diy','modPic','图片/FLASH','news','query','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3456,293,'advs','modLogo','网站标志','news','query','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3454,293,'advs','modAdvsHeadLb','头部图片轮播','news','query','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3453,293,'diy','modPlusBorder','空白边框','news','query','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','新闻中心','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3452,293,'news','modNewsNavPath','当前位置提示条','news','query','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3420,290,'page','modPageContent','网页内容详情','page','service_liucheng','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,506,37,258,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'visible','content','block'),(3421,290,'diy','modButtomInfo','底部信息编辑区','page','service_liucheng','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3419,290,'diy','modPic','图片/FLASH','page','service_liucheng','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3345,284,'page','modPageTitleMenu','网页标题(菜单)','page','html_company','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block'),(3418,290,'page','modPageTitleMenu','网页标题(菜单)','page','service_liucheng','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,166,0,14,8,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','21','',1,0,'hidden','content','block'),(3346,284,'advs','modLogo','网站标志','page','html_company','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3332,282,'news','modNewsList','文章列表','index','index','tpl_newslist.htm','-1','A789','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','{#RP#}news/class/?86.html',205,180,0,14,12,0,5,'id','desc',0,15,'_self',86,50,-1,-1,'fill','新闻动态','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',4,0,'hidden','content','block'),(3331,282,'advs','modAdvsHeadLb','头部图片轮播','index','index','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3330,282,'diy','modPic','图片/FLASH','index','index','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,468,155,13,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274170153.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(3417,290,'advs','modLogo','网站标志','page','service_liucheng','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3329,282,'diy','modText','多行文字','index','index','tpl_text.htm','-1','A784','',0,'solid','','click','none','','','','-1',205,150,389,14,7,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3328,282,'diy','modEdit','HTML编辑区','index','index','tpl_edit.htm','-1','1000','',0,'solid','','click','none','','','','-1',655,90,58,286,8,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','<div style=\"LINE-HEIGHT: 22px; COLOR: #1e1e1c; FONT-SIZE: 12px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;乐饰家装饰公司是一家集专业设计、施工、售后服务为一体的现代化装饰企业。公司秉承“专业团队、品质服务”的企业精神，公司汇聚了一批国内高层管理人才、高素质设计精英和一流施工队伍，并多次安排员工到外地考察学习前沿的设计理念和工艺做法，把握流行趋势，以规范化的管理、专业的设计、科学优质的施工，周到全面的服务力求为客户创造一个高品质、时尚、舒适的满意空间。乐饰家装饰始终追求国际化的视野与本土人居环境的完美结合，一方面坚持设计......</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3327,282,'diy','modPlusBorder','空白边框','index','index','tpl_plusborder.htm','-1','A613','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','{#RP#}page/html/company.php',724,182,0,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','公司简介','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3326,282,'news','modNewsList','文章列表','index','index','tpl_newslist.htm','-1','A782','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','{#RP#}news/class/?97.html',205,180,195,14,9,0,5,'id','desc',0,15,'_self',97,50,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',3,0,'hidden','content','block'),(3325,282,'photo','modPhotoPic','图片+名称','index','index','tpl_photopic_right.htm','-1','A780','#dddddd',1,'solid','','click','block','#cccccc','#fff','#fff','{#RP#}photo/class/?12.html',715,160,360,259,14,0,5,'id','desc',0,12,'_self',12,-1,140,110,'fill','工装案例展示','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',2,0,'hidden','content','block'),(3324,282,'photo','modPhotoPic','图片+名称','index','index','tpl_photopic_left.htm','-1','A614','',0,'solid','','click','none','','','','{#RP#}photo/class/?11.html',715,160,190,259,10,0,5,'id','desc',0,0,'_self',11,-1,140,110,'fill','家装案例展示','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',1,0,'hidden','content','block'),(3323,282,'diy','modPic','图片/FLASH','index','index','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3322,282,'menu','modMainMenu','一级导航菜单','index','index','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3321,282,'diy','modButtomInfo','底部信息编辑区','index','index','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3319,282,'diy','modPic','图片/FLASH','index','index','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3320,282,'advs','modLogo','网站标志','index','index','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3486,295,'feedback','modFeedBackSmallForm','全站留言表单','page','contact_feedback','tpl_feedback_smallform.htm','-1','A783','',1,'solid','','click','none','','','','-1',724,1116,37,258,12,15,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','我要装修','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'visible','content','block'),(3440,291,'advs','modAdvsHeadLb','头部图片轮播','page','contact_contact','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3428,290,'advs','modAdvsHeadLb','头部图片轮播','page','service_liucheng','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,6,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3416,289,'menu','modMainMenu','一级导航菜单','page','html_team','tpl_mainmenu_2058.htm','A','1000','',0,'solid','','click','none','','','','-1',1002,82,106,0,4,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3414,289,'advs','modAdvsHeadLb','头部图片轮播','page','html_team','tpl_advsheadlb.htm','-1','1000','',0,'solid','','click','none','','','','-1',966,260,152,18,7,0,5,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3415,289,'diy','modPic','图片/FLASH','page','html_team','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',284,70,35,718,9,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274165013.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',6,0,'hidden','top','block'),(3413,289,'page','modPageContent','网页内容详情','page','html_team','tpl_page_content.htm','-1','A783','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',724,580,37,258,1,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3412,289,'photo','modPhotoPicMemo','图片+名称+介绍','page','html_team','tpl_photopicmemo_cyrano.htm','-1','1000','',0,'solid','','click','none','','','','{#RP#}photo/class/',724,209,292,258,13,0,2,'id','desc',0,12,'_self',10,30,80,110,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','','0',1,0,'hidden','content','block'),(3411,289,'advs','modLogo','网站标志','page','html_team','tpl_logo.htm','-1','1000','',0,'solid','','click','none','','','','-1',360,106,0,0,5,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','top','block'),(3410,289,'diy','modPlusBorder','空白边框','page','html_team','tpl_plusborder.htm','-1','A788','#dddddd',1,'solid','','click','none','#cccccc','#fff','#fff','',724,37,0,258,2,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','团队精英','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3409,289,'diy','modText','多行文字','page','html_team','tpl_text.htm','-1','A787','',0,'solid','','click','none','','','','-1',205,150,238,14,8,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','\r\n-1 \r\n','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','地址：苏州望亭镇迎湖工业园万\r\n电话：0512-65386900 / 65386932\r\n传真：0512-65808505\r\n手机：13998765432\r\n联系：王先生 李小姐','-1','-1','','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3408,289,'diy','modPic','图片/FLASH','page','html_team','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',64,60,315,155,12,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','\r\n-1\r\n','diy/pics/20100519/1274238119.gif','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',8,0,'hidden','content','block'),(3407,289,'page','modPageNavPath','当前位置提示条','page','html_team','tpl_navpath.htm','-1','1000','',0,'solid','','click','none','','','','-1',484,37,0,498,11,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','content','block'),(3406,289,'diy','modPic','图片/FLASH','page','html_team','tpl_pic.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,65,377,0,3,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','','-1 ','diy/pics/20100518/1274167634.jpg','','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',7,0,'hidden','top','block'),(3404,289,'diy','modButtomInfo','底部信息编辑区','page','html_team','tpl_bottominfo.htm','-1','1000','',0,'solid','','click','none','','','','-1',1002,125,0,0,6,0,-1,'id','desc',0,-1,'_self',0,-1,-1,-1,'fill','脚注信息','<div style=\"TEXT-ALIGN: center; LINE-HEIGHT: 44px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff\">版权所有 Copyright(C)乐饰家装饰设计有限公司&nbsp;&nbsp;|&nbsp;建议电脑设置分辨率1024*768&nbsp;苏ICP备05122122号</div>','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','','',1,0,'hidden','bottom','block'),(3405,289,'page','modPageTitleMenu','网页标题(菜单)','page','html_team','tpl_page_menu_dolphin.htm','-1','A786','#dddddd',0,'solid','','click','none','#cccccc','#fff','#fff','-1',205,228,0,14,10,0,10,'id','desc',0,12,'_self',0,-1,-1,-1,'fill','公司介绍','\r\n-1 \r\n','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','1','',1,0,'hidden','content','block');
/*!40000 ALTER TABLE `hy_base_plusplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_plusplanid`
--

DROP TABLE IF EXISTS `hy_base_plusplanid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_plusplanid` (
  `id` int(6) NOT NULL auto_increment,
  `planname` varchar(50) NOT NULL default '',
  `plustype` varchar(50) NOT NULL default '',
  `pluslocat` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_plusplanid`
--

LOCK TABLES `hy_base_plusplanid` WRITE;
/*!40000 ALTER TABLE `hy_base_plusplanid` DISABLE KEYS */;
INSERT INTO `hy_base_plusplanid` VALUES (285,'公司环境','page','html_equipment'),(294,'招聘','job','main'),(295,'我要装修','page','contact_feedback'),(296,'工程案例','photo','query'),(282,'首页','index','index'),(290,'装修流程','page','service_liucheng'),(291,'联系方式','page','contact_contact'),(284,'公司简介','page','html_company'),(289,'团队精英','page','html_team'),(293,'新闻中心','news','query');
/*!40000 ALTER TABLE `hy_base_plusplanid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_plustemp`
--

DROP TABLE IF EXISTS `hy_base_plustemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_plustemp` (
  `id` int(12) NOT NULL auto_increment,
  `pluslable` char(30) NOT NULL default '',
  `cname` char(30) NOT NULL,
  `tempname` char(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_plustemp`
--

LOCK TABLES `hy_base_plustemp` WRITE;
/*!40000 ALTER TABLE `hy_base_plustemp` DISABLE KEYS */;
INSERT INTO `hy_base_plustemp` VALUES (201,'modLoginForm','横式会员登录表单，请选用专用边框(如500号边框)','tpl_loginform_h.htm'),(67,'modMemberNewsList','标题+时间','tpl_newslist_time.htm'),(68,'modMemberNewsList','标题+摘要','tpl_newslist_memo.htm'),(87,'modMemberNewsQuery','文章翻页检索,标题+摘要','tpl_newsquery_memo.htm'),(88,'modMemberNewsQuery','文章翻页检索,标题+时间,带表头','tpl_newsquery_cap.htm'),(89,'modNewsAuthorList','标题+时间','tpl_newslist_time.htm'),(90,'modNewsAuthorList','类别+标题','tpl_newslist_cat.htm'),(91,'modNewsAuthorList','标题+摘要','tpl_newslist_memo.htm'),(92,'modNewsAuthorList','标题+作者','tpl_newslist_author.htm'),(103,'modNewsContent','仿新闻门户正文风格','tpl_newscontent_portal.htm'),(16,'modNewsHot','标题+图标风格2','tpl_newshot2.htm'),(58,'modNewsHot','标题+时间','tpl_newshot_time.htm'),(59,'modNewsHot','标题+作者','tpl_newshot_author.htm'),(60,'modNewsHot','标题+图标风格3','tpl_newshot3.htm'),(61,'modNewsHot','标题+图标风格4','tpl_newshot4.htm'),(102,'modNewsHot','标题+点击数','tpl_newshot_cl.htm'),(62,'modNewsHot30','标题+图标风格2','tpl_newshot2.htm'),(63,'modNewsHot30','标题+时间','tpl_newshot_time.htm'),(64,'modNewsHot30','标题+作者','tpl_newshot_author.htm'),(65,'modNewsHot30','标题+图标风格3','tpl_newshot3.htm'),(66,'modNewsHot30','标题+图标风格4','tpl_newshot4.htm'),(101,'modNewsHot30','标题+点击数','tpl_newshot_cl.htm'),(2,'modNewsList','标题+时间','tpl_newslist_time.htm'),(3,'modNewsList','类别+标题','tpl_newslist_cat.htm'),(57,'modNewsList','标题+参数列1,2,3','tpl_newslist_prop3.htm'),(56,'modNewsList','标题+参数列1,2','tpl_newslist_prop2.htm'),(55,'modNewsList','标题+参数列1','tpl_newslist_prop1.htm'),(42,'modNewsList','标题+摘要','tpl_newslist_memo.htm'),(41,'modNewsList','标题+作者','tpl_newslist_author.htm'),(198,'modNewsPicMemo','图片+标题+两个参数列','tpl_newspicprop_2.htm'),(84,'modNewsPicMemo','图片+标题+三个参数列','tpl_newspicprop.htm'),(93,'modNewsProjList','标题+时间','tpl_newslist_time.htm'),(94,'modNewsProjList','类别+标题','tpl_newslist_cat.htm'),(95,'modNewsProjList','标题+摘要','tpl_newslist_memo.htm'),(96,'modNewsProjList','标题+作者','tpl_newslist_author.htm'),(10,'modNewsQuery','文章翻页检索,标题+摘要','tpl_newsquery_memo.htm'),(86,'modNewsQuery','文章翻页检索,标题+时间,带表头','tpl_newsquery_cap.htm'),(97,'modNewsSameTagList','标题+时间','tpl_newslist_time.htm'),(98,'modNewsSameTagList','类别+标题','tpl_newslist_cat.htm'),(99,'modNewsSameTagList','标题+摘要','tpl_newslist_memo.htm'),(100,'modNewsSameTagList','标题+作者','tpl_newslist_author.htm'),(277,'modText','白色文字','tpl_text_2.htm'),(48,'modPicWords','图片+四行标题','tpl_picwordx4.htm'),(46,'modPicWords','图片+两行标题','tpl_picwordx2.htm'),(49,'modPicWords','图片+三行标题','tpl_picwordx3.htm'),(18,'modText','从右到左竖写','tpl_text_1.htm'),(45,'modWordTT','标题+4组链接','tpl_wordttx4.htm'),(44,'modWordTT','标题+3组链接','tpl_wordttx3.htm'),(43,'modWordTT','标题+2组链接','tpl_wordttx2.htm'),(202,'modNewsSearchForm','竖式搜索表单','tpl_news_searchform_h.htm'),(205,'modCommentSearchForm','竖式搜索表单','tpl_comment_searchform_h.htm'),(206,'modSearchForm','竖式搜索表单','tpl_searchform_h.htm'),(207,'modButtomInfo','灰色渐变背景','tpl_bottominfo_1.htm'),(208,'modMemberTags','头像+三组积分+推荐标签3','tpl_membertags_1.htm'),(209,'modMemberTags','头像+推荐标签3','tpl_membertags_2.htm'),(210,'modMemberRank1','小头像+昵称+积分','tpl_memberrank_head.htm'),(211,'modMemberRank2','小头像+昵称+积分','tpl_memberrank_head.htm'),(212,'modMemberRank3','小头像+昵称+积分','tpl_memberrank_head.htm'),(213,'modMemberRank4','小头像+昵称+积分','tpl_memberrank_head.htm'),(214,'modMemberRank5','小头像+昵称+积分','tpl_memberrank_head.htm'),(215,'modHeadTraFlash','移动竖条','tpl_flash2.htm'),(216,'modHeadTraFlash','光球光芒时隐时现','tpl_flash3.htm'),(217,'modHeadTraFlash','米字星光','tpl_flash4.htm'),(221,'modBgSound','显示播放器','tpl_bgsound_show.htm'),(222,'modFormGroup','列表式','tpl_formgroup_list.htm'),(223,'modNewsList','标题+时间(微软雅黑,14px)','tpl_newslist_time_big.htm'),(266,'modBottomMenu','底部菜单之纯文字菜单模板','tpl_bottommenu_1.htm'),(267,'modNewsList','双列文章标题模板','tpl_newslist_mul.htm'),(304,'modSearchForm','简单搜索表单','tpl_searchform_simple.htm'),(271,'modCommentContent','留言问答风格','tpl_comment_content_pw.htm'),(273,'modNewsList','标题 时间（反白）','tpl_newslist_time_white.htm'),(275,'modWordText','标题和介绍白色文字模板','tpl_wordtext_1_cr.htm'),(279,'modPicWordText','图片标题文字环绕','tpl_picwordtext_2.htm'),(281,'modPhotoHot','排行榜样式二','tpl_photohot2.htm'),(282,'modPhotoContent','浅蓝淡雅风格','tpl_photo_content_blue.htm'),(283,'modPhotoHot','标题+时间','tpl_photohot_time.htm'),(284,'modPhotoHot','标题+作者','tpl_photohot_author.htm'),(285,'modPhotoHot','标题+点击数','tpl_photohot_cl.htm'),(286,'modPhotoHot30','排行榜样式二','tpl_photohot2.htm'),(287,'modPhotoHot30','标题+时间','tpl_photohot_time.htm'),(288,'modPhotoHot30','标题+作者','tpl_photohot_author.htm'),(289,'modPhotoHot30','标题+点击数','tpl_photohot_cl.htm'),(290,'modPhotoPicMemo','图片+名称+三个参数列','tpl_photopicprop.htm'),(291,'modPhotoPicMemo','图片+名称+两个参数列','tpl_photopicprop_2.htm'),(292,'modPhotoSearchForm','竖式搜索表单','tpl_photo_searchform_h.htm'),(293,'modPhotoTwoClass','图片二级分类紧凑型风格','tpl_phototwoclass_1.htm'),(301,'modPagePicList','图片 标题 摘要,每行两个','tpl_page_piclist_2.htm'),(380,'modNewsClass','新闻分类','tpl_newsclass_dolphin.htm'),(306,'modNewsClass','分类菜单','tpl_newsclass_menu.htm'),(393,'modMainMenu','1010','tpl_mainmenu_1010.htm'),(375,'modDiyTemp','联系我们','tpl_diy_pw1.htm'),(379,'modNewsSearchForm','新闻搜索','tpl_news_search_dolphin.htm'),(416,'modPhotoPicMemo','自定义模板','tpl_photopicmemo_cyrano.htm'),(372,'modSearchForm','4038全站搜索','tpl_searchform_dolphin.htm'),(387,'modMainMenu','主题菜单','tpl_mainmenu_dolphin.htm'),(389,'modPageTitleMenu','网页分类','tpl_page_menu_dolphin.htm'),(395,'modNewsList','工程业绩列表','tpl_newslist_proj.htm'),(396,'modJobList','职位名称无人数','tpl_joblist_1.htm'),(397,'modDropDownMenu','黑色下拉菜单','tpl_dropdownmenu_dolphin.htm'),(415,'modPhotoPic','左右滚动模板','tpl_photopic_dolphin.htm'),(402,'modChannelMenu','二级跟随菜单','tpl_channelmenu_6.htm'),(414,'modNewsList','自定义模板','tpl_newslist_cyrano.htm'),(413,'modPhotoClass','自定义模板','tpl_photoclass_cyrano.htm'),(412,'modMainMenu','2058','tpl_mainmenu_2058.htm'),(411,'modDiyTemp','自定头部菜单','tpl_diy_topmenu.htm'),(410,'modFeedBackSmallForm','小型留言表单(适合放在左右侧)','tpl_feedback_smallform1.htm'),(417,'modPhotoPic','向左滚动模版','tpl_photopic_left.htm'),(418,'modPhotoPic','向右滚动模版','tpl_photopic_right.htm'),(419,'modPhotoSearchForm','简易搜索模版','tpl_photo_searchform_s.htm');
/*!40000 ALTER TABLE `hy_base_plustemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_base_version`
--

DROP TABLE IF EXISTS `hy_base_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_base_version` (
  `version` varchar(30) NOT NULL default '',
  `release` int(8) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_base_version`
--

LOCK TABLES `hy_base_version` WRITE;
/*!40000 ALTER TABLE `hy_base_version` DISABLE KEYS */;
INSERT INTO `hy_base_version` VALUES ('1.0.0',20090215),('1.1.0',20090320),('1.1.1',20090326),('1.1.2',20090327),('1.1.3',20090328),('1.1.4',20090401),('1.1.5',20090402),('1.1.6',20090412),('1.1.7',20090418),('1.1.8',20090419),('1.1.9',20090420),('1.1.10',20090421),('1.2.0',20090428),('1.2.1',20090504),('1.2.2',20090508),('1.2.3',20090514),('1.2.4',20090612),('1.2.5',20090615),('1.2.6',20090624),('1.2.8',20090801),('1.2.9',20090802),('1.2.10',20090803),('1.2.11',20090804),('1.2.12',20090820),('1.3.0',20090828),('1.3.2',20090830),('1.3.3',20090831),('1.3.4',20090901),('1.3.5',20090902),('1.3.15',20090912),('1.3.9',20090906),('1.3.12',20090909),('1.3.11',20090908),('1.3.17',20091010),('1.3.18',20091112);
/*!40000 ALTER TABLE `hy_base_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_comment`
--

DROP TABLE IF EXISTS `hy_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_comment` (
  `id` int(20) NOT NULL auto_increment,
  `pid` int(20) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `rid` int(20) NOT NULL default '0',
  `contype` varchar(30) NOT NULL default 'comment',
  `pname` varchar(100) NOT NULL default '',
  `title` varchar(200) NOT NULL default '',
  `body` text,
  `pj1` int(1) NOT NULL default '3',
  `pj2` int(1) NOT NULL default '3',
  `pj3` int(1) NOT NULL default '3',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `ip` varchar(16) NOT NULL default '',
  `iffb` int(1) NOT NULL default '0',
  `tuijian` int(1) NOT NULL default '0',
  `cl` int(10) NOT NULL default '0',
  `lastname` varchar(50) NOT NULL default '',
  `lastmemberid` int(12) NOT NULL default '0',
  `backcount` int(12) NOT NULL default '0',
  `picsrc` varchar(255) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `memberid` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=516 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_comment`
--

LOCK TABLES `hy_comment` WRITE;
/*!40000 ALTER TABLE `hy_comment` DISABLE KEYS */;
INSERT INTO `hy_comment` VALUES (515,0,109,0,'comment','测试会员','test','test',3,3,3,1238898529,1238898529,'127.0.0.1',1,0,6,'测试会员',150,0,'',1,150),(514,0,109,0,'comment','游客','产品咨询','sss',3,3,3,1238224685,1238224685,'127.0.0.1',1,0,16,'游客',-1,0,'',1,-1);
/*!40000 ALTER TABLE `hy_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_comment_cat`
--

DROP TABLE IF EXISTS `hy_comment_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_comment_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `cat` varchar(50) NOT NULL default '',
  `catpath` varchar(255) NOT NULL,
  `coltype` varchar(30) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `ifbbs` int(1) NOT NULL default '1',
  `ifshow` int(1) NOT NULL default '1',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_comment_cat`
--

LOCK TABLES `hy_comment_cat` WRITE;
/*!40000 ALTER TABLE `hy_comment_cat` DISABLE KEYS */;
INSERT INTO `hy_comment_cat` VALUES (1,0,'文章评论','0001:','news',0,0,0,0),(109,0,'产品咨询','0109:','comment',1,1,1,1),(110,0,'知识问答','0110:','comment',2,1,1,1),(111,0,'用户茶座','0111:','comment',7,1,1,1),(2,0,'图片点评','0002:','photo',0,0,0,0);
/*!40000 ALTER TABLE `hy_comment_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_comment_config`
--

DROP TABLE IF EXISTS `hy_comment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_comment_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_comment_config`
--

LOCK TABLES `hy_comment_config` WRITE;
/*!40000 ALTER TABLE `hy_comment_config` DISABLE KEYS */;
INSERT INTO `hy_comment_config` VALUES (5,'匿名点评是否审核','YN','30','noMembercheck','0','匿名发表、回复点评时是否审核'),(7,'点评图片上传尺寸限制(Byte)','input','30','EditPicLimit','204800','发表点评时，编辑器内上传图片大小的限制'),(6,'未登录时是否允许上传图片','YN','30','NoMemberUpPic','0','未登录会员时,是否允许在编辑器内上传图片(备注:会员登录后发表点评是否可以上传图片，在会员权限中设置)'),(1,'模块频道名称','input','30','ChannelName','网友留言','本模块对应的频道名称，如“网友点评”；用于显示在网页标题、当前位置提示条等处'),(2,'是否在当前位置提示条显示模块频道名称','YN','30','ChannelNameInNav','1','是否在当前位置提示条显示模块频道名称'),(8,'点评关键词过滤','textarea','30','KeywordDeny','法轮功,麻醉,兴奋剂,妈的,操你,日你','点评禁止的词语，多个以逗号分割');
/*!40000 ALTER TABLE `hy_comment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_feedback`
--

DROP TABLE IF EXISTS `hy_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_feedback` (
  `id` int(3) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `field_caption` varchar(200) NOT NULL default '',
  `field_type` int(1) NOT NULL default '0',
  `field_size` int(5) NOT NULL default '0',
  `field_name` varchar(200) NOT NULL default '',
  `field_value` varchar(255) NOT NULL default '',
  `field_null` int(1) NOT NULL default '0',
  `value_repeat` int(1) NOT NULL default '0',
  `field_intro` varchar(255) NOT NULL default '',
  `use_field` int(1) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `xuhao` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1542 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_feedback`
--

LOCK TABLES `hy_feedback` WRITE;
/*!40000 ALTER TABLE `hy_feedback` DISABLE KEYS */;
INSERT INTO `hy_feedback` VALUES (1,0,'留言标题',1,399,'title','',1,1,'',1,1,1),(2,0,'留言内容',2,399,'content','',0,1,'',1,0,2),(3,0,'您的姓名',1,399,'name','',0,1,'',0,0,3),(5,0,'联系电话',1,399,'tel','',0,1,'',0,0,5),(6,0,'联系地址',1,399,'address','',0,1,'',0,0,6),(7,0,'电子邮件',1,399,'email','',0,1,'',0,0,7),(8,0,'网址URL',1,399,'url','',0,1,'',0,0,8),(9,0,'QQ号码',1,399,'qq','',0,1,'',0,0,9),(10,0,'公司名称',1,399,'company','',0,1,'',0,0,10),(11,0,'公司地址',1,399,'company_address','',0,1,'',0,0,11),(4,0,'性　　别',5,399,'sex','男;女',0,1,'',0,0,4),(12,0,'邮政编码',1,399,'zip','',0,1,'',0,0,12),(13,0,'传真号码',1,399,'fax','',0,1,'',0,0,13),(14,0,'产品编号',1,399,'products_id','',0,1,'',0,0,14),(15,0,'产品名称',1,399,'products_name','',0,1,'',0,0,15),(16,0,'订购数量',1,399,'products_num','',0,1,'',0,0,16),(19,0,'自定义一',5,399,'custom1','100;200;300;400;500',0,1,'',0,0,17),(18,0,'自定义二',5,399,'custom2','100;200;300;400;500',0,1,'',0,0,18),(17,0,'自定义三',5,399,'custom3','100;200;300;400;500',0,1,'',0,0,19),(20,0,'自定义四',1,399,'custom4','',0,1,'',0,0,20),(21,0,'自定义五',1,399,'custom5','',0,1,'',0,0,21),(22,0,'自定义六',1,399,'custom6','',0,1,'',0,0,22),(23,0,'自定义七',1,399,'custom7','',0,1,'',0,0,23),(1145,1,'自定义二',5,399,'custom2','100;200;300;400;500',0,1,'',0,0,18),(1146,1,'自定义三',5,399,'custom3','100;200;300;400;500',0,1,'',0,0,19),(1147,1,'自定义四',1,399,'custom4','',0,1,'',0,0,20),(1148,1,'自定义五',1,399,'custom5','',0,1,'',0,0,21),(1149,1,'自定义六',1,399,'custom6','',0,1,'',0,0,22),(1150,1,'自定义七',1,399,'custom7','',0,1,'',0,0,23),(1143,1,'订购数量',1,399,'products_num','',0,1,'',0,0,16),(1144,1,'自定义一',5,399,'custom1','100;200;300;400;500',0,1,'',0,0,17),(1142,1,'产品名称',1,399,'products_name','',0,1,'',0,0,15),(1141,1,'产品编号',1,399,'products_id','',0,1,'',0,0,14),(1140,1,'其它要求',2,399,'fax','',0,1,'',1,0,13),(1139,1,'大致装修设想',2,399,'zip','',0,1,'',1,0,12),(1138,1,'建材选购要求',2,399,'sex','',0,1,'',1,0,9),(1136,1,'联 系 人',1,399,'company','',1,1,'(请填写真实姓名，否则请恕我们不予受理)',1,0,3),(1137,1,'是否需要监理',5,399,'company_address','是;否;',0,1,'',1,0,11),(1135,1,'要求装修时间',1,399,'qq','',0,1,'要求几个月完成工程',1,0,9),(1134,1,'装修预算',1,399,'url','',0,1,'万',1,0,8),(1133,1,'房屋面积',1,399,'email','',0,1,'平方米',1,0,7),(1132,1,'房屋户型',1,399,'address','',0,1,'*室*厅*厨*卫',1,0,6),(1131,1,'房屋类型',1,399,'tel','',0,1,'全框架/砖混/复式/别墅/门面/其它 ',1,0,5),(1130,1,'联系电话',1,399,'name','',1,1,'',1,0,4),(1129,1,'物业名称',1,399,'content','',1,1,'(小区名称或路段名称)',1,0,2),(1128,1,'物业地址',1,399,'title','',1,1,'详细地址(含街道/路段号/楼层号)',1,1,1);
/*!40000 ALTER TABLE `hy_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_feedback_group`
--

DROP TABLE IF EXISTS `hy_feedback_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_feedback_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `ifano` int(11) NOT NULL default '0',
  `allowmembertype` varchar(255) NOT NULL,
  `allowfeedback` char(255) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_feedback_group`
--

LOCK TABLES `hy_feedback_group` WRITE;
/*!40000 ALTER TABLE `hy_feedback_group` DISABLE KEYS */;
INSERT INTO `hy_feedback_group` VALUES (1,'我要装修',1,0,1,'|26|','|3|','欢迎咨询');
/*!40000 ALTER TABLE `hy_feedback_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_feedback_info`
--

DROP TABLE IF EXISTS `hy_feedback_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_feedback_info` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `sex` varchar(10) NOT NULL default '',
  `tel` varchar(100) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `company_address` varchar(255) NOT NULL default '',
  `zip` varchar(6) NOT NULL default '',
  `fax` varchar(20) NOT NULL default '',
  `products_id` varchar(100) NOT NULL default '',
  `products_name` varchar(200) NOT NULL default '',
  `products_num` varchar(9) NOT NULL default '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `ip` varchar(20) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  `stat` int(2) NOT NULL default '0',
  `adminid` int(5) NOT NULL default '0',
  `coadminid` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_feedback_info`
--

LOCK TABLES `hy_feedback_info` WRITE;
/*!40000 ALTER TABLE `hy_feedback_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_feedback_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_job`
--

DROP TABLE IF EXISTS `hy_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_job` (
  `id` int(12) NOT NULL auto_increment,
  `jobname` varchar(255) NOT NULL default '',
  `jobtype` varchar(20) NOT NULL default '',
  `experience` varchar(100) NOT NULL default '',
  `education` varchar(50) NOT NULL default '',
  `langneed` varchar(50) NOT NULL default '',
  `langlevel` varchar(50) NOT NULL default '',
  `pnums` int(5) NOT NULL default '0',
  `jobaddr` varchar(200) NOT NULL default '',
  `jobintro` text,
  `jobrequest` text NOT NULL,
  `jobstat` int(1) NOT NULL default '0',
  `contact` varchar(50) NOT NULL default '',
  `tel` varchar(50) NOT NULL default '',
  `email` varchar(200) NOT NULL default '',
  `dtime` int(11) default '0',
  `uptime` int(11) default '0',
  `endtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `iffb` int(1) default '0',
  `contype` varchar(20) NOT NULL default 'job',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_job`
--

LOCK TABLES `hy_job` WRITE;
/*!40000 ALTER TABLE `hy_job` DISABLE KEYS */;
INSERT INTO `hy_job` VALUES (1,'华东区销售经理','全职','3年以上','本科','','',1,'上海','本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务','具有良好的销售和团队管理理念\r\n三年以上销售工作经验，一年以上销售经理经验\r\n工作责任心强，能承受较大的工作压力',1,'华海','021-87654321','huahai@mycompany.com',1242621303,1242621303,0,0,0,0,1,'job'),(2,'华东区销售经理','全职','3年以上','本科','','',1,'上海','本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务','具有良好的销售和团队管理理念\r\n三年以上销售工作经验，一年以上销售经理经验\r\n工作责任心强，能承受较大的工作压力',1,'华海','021-87654321','huahai@mycompany.com',1242621306,1242621306,0,0,4,0,1,'job'),(3,'华东区销售经理','全职','3年以上','本科','','',1,'上海','本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务','具有良好的销售和团队管理理念\r\n三年以上销售工作经验，一年以上销售经理经验\r\n工作责任心强，能承受较大的工作压力',1,'华海','021-87654321','huahai@mycompany.com',1242621308,1242621308,0,0,49,0,1,'job'),(4,'华东区销售经理','全职','3年以上','本科','','',1,'上海','本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务','具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力',1,'华海','021-87654321','huahai@mycompany.com',1260151088,1260151088,0,0,7,0,1,'job'),(5,'研发项目经理','全职','3年以上','本科','','',1,'上海','本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务 ','具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力',1,'华海','021-87654321','huahai@mycompany.com',1260151113,1263285481,0,0,74,0,1,'job'),(7,'模具设计总监','全职','3年以上','本科','','',1,'上海','本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务 ','具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力',1,'华海','021-87654321','huahai@mycompany.com',1260151165,1263285465,0,0,71,0,1,'job');
/*!40000 ALTER TABLE `hy_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_job_form`
--

DROP TABLE IF EXISTS `hy_job_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_job_form` (
  `id` int(3) NOT NULL auto_increment,
  `field_caption` varchar(200) NOT NULL default '',
  `field_type` int(1) NOT NULL default '0',
  `field_size` int(5) NOT NULL default '0',
  `field_name` varchar(200) NOT NULL default '',
  `field_value` varchar(255) NOT NULL default '',
  `field_null` int(1) NOT NULL default '0',
  `value_repeat` int(1) NOT NULL default '0',
  `field_intro` varchar(255) NOT NULL default '',
  `use_field` int(1) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `xuhao` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_job_form`
--

LOCK TABLES `hy_job_form` WRITE;
/*!40000 ALTER TABLE `hy_job_form` DISABLE KEYS */;
INSERT INTO `hy_job_form` VALUES (1,'姓　　名',1,200,'title','',1,1,'',1,1,1),(2,'教育经历',2,399,'content','',1,1,'',1,0,14),(3,'出生日期',1,200,'name','',1,1,'',1,0,3),(4,'性　　别',5,50,'sex','男;女',1,1,'',1,0,2),(5,'联系电话',1,200,'tel','',1,1,'',1,0,9),(6,'通信地址',1,300,'address','',1,1,'',1,0,11),(7,'电子邮箱',1,300,'email','',1,1,'',1,0,12),(8,'博客/主页',1,399,'url','',0,1,'',0,0,18),(9,'QQ/MSN',1,399,'qq','',0,1,'',0,0,19),(10,'毕业院校',1,300,'company','',1,1,'',1,0,5),(11,'最高学历',1,200,'company_address','',1,1,'',1,0,6),(12,'邮政编码',1,399,'zip','',0,1,'',0,0,19),(13,'手机号码',1,200,'fax','',0,1,'',1,0,10),(14,'毕业专业',1,200,'products_id','',1,1,'',1,0,7),(15,'毕业时间',1,200,'products_name','',1,1,'',1,0,8),(16,'专业特长',1,399,'products_num','',1,1,'',1,0,13),(19,'婚姻状况',5,200,'custom1','未婚;已婚',1,1,'',1,0,4),(18,'工作经历',2,399,'custom2','',1,1,'',1,0,15),(17,'自定义三',5,399,'custom3','100;200;300;400;500',0,1,'',0,0,19),(20,'自定义四',1,399,'custom4','',0,1,'',0,0,20),(21,'自定义五',1,399,'custom5','',0,1,'',0,0,21),(22,'自定义六',1,399,'custom6','',0,1,'',0,0,22),(23,'自定义七',1,399,'custom7','',0,1,'',0,0,23);
/*!40000 ALTER TABLE `hy_job_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_job_telent`
--

DROP TABLE IF EXISTS `hy_job_telent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_job_telent` (
  `id` int(12) NOT NULL auto_increment,
  `jobid` int(6) NOT NULL default '0',
  `jobname` char(200) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `sex` varchar(10) NOT NULL default '',
  `tel` varchar(100) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `company_address` varchar(255) NOT NULL default '',
  `zip` varchar(6) NOT NULL default '',
  `fax` varchar(20) NOT NULL default '',
  `products_id` varchar(100) NOT NULL default '',
  `products_name` varchar(200) NOT NULL default '',
  `products_num` varchar(9) NOT NULL default '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `fileurl` varchar(200) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `stat` int(2) NOT NULL default '0',
  `fav` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_job_telent`
--

LOCK TABLES `hy_job_telent` WRITE;
/*!40000 ALTER TABLE `hy_job_telent` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_job_telent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member`
--

DROP TABLE IF EXISTS `hy_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member` (
  `memberid` int(12) NOT NULL auto_increment,
  `membertypeid` int(3) NOT NULL default '0',
  `membergroupid` int(3) NOT NULL default '0',
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `company` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL default '',
  `birthday` int(8) NOT NULL default '0',
  `zoneid` int(10) NOT NULL default '0',
  `catid` int(10) NOT NULL default '0',
  `addr` varchar(255) NOT NULL default '',
  `tel` varchar(255) NOT NULL default '',
  `mov` varchar(255) NOT NULL default '',
  `postcode` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default 'http://',
  `passtype` varchar(255) NOT NULL default '',
  `passcode` varchar(255) NOT NULL default '',
  `qq` varchar(100) NOT NULL default '',
  `msn` varchar(100) NOT NULL default '',
  `maillist` int(1) NOT NULL default '0',
  `bz` text,
  `pname` varchar(30) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `memberface` varchar(100) NOT NULL,
  `nowface` varchar(50) NOT NULL,
  `checked` int(1) NOT NULL default '0',
  `rz` int(1) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `regtime` int(11) NOT NULL default '0',
  `exptime` int(11) NOT NULL default '0',
  `account` decimal(12,2) NOT NULL default '0.00',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `buytotal` decimal(12,2) NOT NULL default '0.00',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `ip` varchar(26) NOT NULL default '',
  `logincount` int(20) NOT NULL default '0',
  `logintime` int(11) NOT NULL default '0',
  `loginip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`memberid`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member`
--

LOCK TABLES `hy_member` WRITE;
/*!40000 ALTER TABLE `hy_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_buylist`
--

DROP TABLE IF EXISTS `hy_member_buylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_buylist` (
  `id` int(12) NOT NULL auto_increment,
  `buyfrom` varchar(50) NOT NULL default '',
  `memberid` int(12) NOT NULL default '0',
  `orderid` int(12) NOT NULL default '0',
  `payid` int(12) NOT NULL default '0',
  `paytype` varchar(50) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `daytime` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  `OrderNo` varchar(30) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_buylist`
--

LOCK TABLES `hy_member_buylist` WRITE;
/*!40000 ALTER TABLE `hy_member_buylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_member_buylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_cat`
--

DROP TABLE IF EXISTS `hy_member_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_cat`
--

LOCK TABLES `hy_member_cat` WRITE;
/*!40000 ALTER TABLE `hy_member_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_member_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_centlog`
--

DROP TABLE IF EXISTS `hy_member_centlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_centlog` (
  `id` int(8) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `event` int(5) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `memo` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_centlog`
--

LOCK TABLES `hy_member_centlog` WRITE;
/*!40000 ALTER TABLE `hy_member_centlog` DISABLE KEYS */;
INSERT INTO `hy_member_centlog` VALUES (1,153,111,1237648810,10,0,0,0,0,''),(2,153,131,1237648965,5,0,0,0,0,''),(3,153,181,1237650958,10,0,0,0,0,''),(4,150,114,1237711955,1,0,0,0,0,''),(5,150,114,1237781183,1,0,0,0,0,''),(6,150,114,1238228910,1,0,0,0,0,''),(7,150,121,1238230484,10,0,0,0,0,''),(8,150,114,1238260989,1,0,0,0,0,''),(9,154,111,1238290627,10,0,0,0,0,''),(10,150,114,1238424185,1,0,0,0,0,''),(11,150,114,1238426835,1,0,0,0,0,''),(12,150,114,1238427138,1,0,0,0,0,''),(13,150,114,1238896776,1,0,0,0,0,''),(14,150,114,1238897444,1,0,0,0,0,''),(15,150,131,1238898529,5,0,0,0,0,''),(16,150,114,1241752690,1,0,0,0,0,''),(17,150,114,1241932574,1,0,0,0,0,'');
/*!40000 ALTER TABLE `hy_member_centlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_centrule`
--

DROP TABLE IF EXISTS `hy_member_centrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_centrule` (
  `id` int(8) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `name` char(100) NOT NULL default '',
  `event` int(5) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_centrule`
--

LOCK TABLES `hy_member_centrule` WRITE;
/*!40000 ALTER TABLE `hy_member_centrule` DISABLE KEYS */;
INSERT INTO `hy_member_centrule` VALUES (1,'member','新会员注册',111,10,0,0,0,0),(6,'member','加好友',112,1,0,0,0,0),(7,'member','发站内短信',113,1,0,0,0,0),(21,'member','会员登录',114,1,0,0,0,0),(2,'news','发布文章',121,10,0,0,0,0),(9,'news','文章被支持',122,0,1,0,0,0),(10,'news','文章被反对',123,0,-1,0,0,0),(22,'news','文章被版主推荐',124,20,0,0,0,0),(23,'news','文章被版主删除并扣分',125,-20,0,0,0,0),(5,'comment','发表点评',131,5,0,0,0,0),(8,'comment','回复点评',132,1,0,0,0,0),(28,'comment','点评被版主推荐',134,20,0,0,0,0),(29,'comment','点评被版主删除并扣分',135,-20,0,0,0,0),(35,'photo','发布图片',151,10,0,0,0,0),(36,'photo','图片被支持',152,0,1,0,0,0),(37,'photo','图片被反对',153,0,-1,0,0,0),(38,'photo','图片被版主推荐',154,20,0,0,0,0),(39,'photo','图片被版主删除并扣分',155,-20,0,0,0,0);
/*!40000 ALTER TABLE `hy_member_centrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_centset`
--

DROP TABLE IF EXISTS `hy_member_centset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_centset` (
  `id` int(8) NOT NULL auto_increment,
  `centname1` char(50) NOT NULL,
  `centname2` char(50) NOT NULL,
  `centname3` char(50) NOT NULL,
  `centname4` char(50) NOT NULL,
  `centname5` char(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_centset`
--

LOCK TABLES `hy_member_centset` WRITE;
/*!40000 ALTER TABLE `hy_member_centset` DISABLE KEYS */;
INSERT INTO `hy_member_centset` VALUES (1,'经验','人气','悬赏','金币','消费');
/*!40000 ALTER TABLE `hy_member_centset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_config`
--

DROP TABLE IF EXISTS `hy_member_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_config`
--

LOCK TABLES `hy_member_config` WRITE;
/*!40000 ALTER TABLE `hy_member_config` DISABLE KEYS */;
INSERT INTO `hy_member_config` VALUES (1,'模块频道名称','input','30','ChannelName','会员中心','本模块对应的频道名称；用于显示在当前位置提示条等处'),(2,'是否在当前位置提示条显示模块频道名称','YN','30','ChannelNameInNav','1','是否在当前位置提示条显示模块频道名称'),(3,'会员网名昵称是否允许重复','YN','1','DblPname','1','会员注册和修改资料时校验网名昵称是否允许重复'),(4,'UCenter 会员接口是否启用','YN','1','UC_OPEN','0','UCenter会员接口包括会员注册、会员登录接口；启用本接口前请先上传UCenter会员接口程序'),(5,'UCenter 应用 ID','input','30','UC_APPID','2','该值为PHPWEB在 UCenter 的应用 ID，请填写你在UCenter将PHPWEB添加应用后实际获得的应用ID'),(6,'UCenter 通信密钥','input','30','UC_KEY','PWUC2009','通信密钥用于在 UCenter 和 PHPWEB 之间传输信息的加密，可包含任何字母及数字，请在 UCenter 与 PHPWEB 设置完全相同的通讯密钥，以确保两套系统能够正常通信'),(7,'UCenter 访问地址','input','30','UC_API','http://discuz.phpweb.net/uc_server','您的 UCenter 访问地址，不正确的设置可能导致网站功能异常，请小心修改。格式: http://www.sitename.com/uc_server (最后不要加\'/\')'),(7,'UCenter IP 地址','input','30','UC_IP','','如果您的服务器无法通过域名访问 UCenter，可以输入 UCenter 服务器的 IP 地址'),(8,'UCenter 数据库服务器','input','30','UC_DBHOST','localhost','可以是本地也可以是远程数据库服务器，如果 MySQL 端口不是默认的 3306，请填写如下形式：127.0.0.1:6033'),(9,'UCenter 数据库用户名','input','30','UC_DBUSER','root',''),(10,'UCenter 数据库密码','input','30','UC_DBPW','123456',''),(12,'UCenter 数据库名','input','30','UC_DBNAME','dbdiscuz',''),(13,'UCenter 数据表前缀','input','30','UC_DBTABLEPRE','cdb_uc_','请填入您的UCenter数据表前缀，注意格式正确；如果是直接安装UCENTER，表前缀是一个“_”，如果是和discuz!一起安装的，则是带两个“_”的完整前缀'),(14,'UCenter 数据库编码','input','30','UC_DBCHARSET','utf8','UCenter的数据库编码'),(15,'UCenter 的字符集','input','30','UC_CHARSET','utf-8',''),(17,'UCenter 用户自动激活时对应的会员类型','MTYPE','30','UC_MEMBERTYPEID','26','用户登录时，在UCenter通过验证的用户（来自其他应用的用户），如果本系统没有该会员，自动增加会员时对应的会员类型');
/*!40000 ALTER TABLE `hy_member_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_defaultrights`
--

DROP TABLE IF EXISTS `hy_member_defaultrights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_defaultrights` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL default '',
  `secureset` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=506 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_defaultrights`
--

LOCK TABLES `hy_member_defaultrights` WRITE;
/*!40000 ALTER TABLE `hy_member_defaultrights` DISABLE KEYS */;
INSERT INTO `hy_member_defaultrights` VALUES (505,26,133,'func','0'),(504,26,132,'func','0'),(502,26,127,'func','0'),(503,26,131,'func','0'),(501,26,126,'class',':1:2:'),(500,26,123,'func','0'),(499,26,122,'func','0'),(498,26,121,'func','0'),(497,26,114,'func','0'),(493,26,101,'con','1'),(494,26,111,'func','0'),(495,26,112,'func','0'),(496,26,113,'func','0');
/*!40000 ALTER TABLE `hy_member_defaultrights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_fav`
--

DROP TABLE IF EXISTS `hy_member_fav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_fav` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `title` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_fav`
--

LOCK TABLES `hy_member_fav` WRITE;
/*!40000 ALTER TABLE `hy_member_fav` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_member_fav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_friends`
--

DROP TABLE IF EXISTS `hy_member_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_friends` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `fid` int(12) NOT NULL default '0',
  `fgroup` char(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_friends`
--

LOCK TABLES `hy_member_friends` WRITE;
/*!40000 ALTER TABLE `hy_member_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_member_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_group`
--

DROP TABLE IF EXISTS `hy_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_group` (
  `id` int(6) NOT NULL auto_increment,
  `membergroup` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_group`
--

LOCK TABLES `hy_member_group` WRITE;
/*!40000 ALTER TABLE `hy_member_group` DISABLE KEYS */;
INSERT INTO `hy_member_group` VALUES (1,'个人'),(2,'企业');
/*!40000 ALTER TABLE `hy_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_msn`
--

DROP TABLE IF EXISTS `hy_member_msn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_msn` (
  `id` int(12) NOT NULL auto_increment,
  `tomemberid` int(12) NOT NULL default '0',
  `frommemberid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `dtime` int(11) NOT NULL default '0',
  `iflook` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_msn`
--

LOCK TABLES `hy_member_msn` WRITE;
/*!40000 ALTER TABLE `hy_member_msn` DISABLE KEYS */;
INSERT INTO `hy_member_msn` VALUES (2,154,0,'sssssss,您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: sssssss\r\n密码: sssss\r\n\r\n网址:http://',1238290626,0);
/*!40000 ALTER TABLE `hy_member_msn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_notice`
--

DROP TABLE IF EXISTS `hy_member_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_notice` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(20) default NULL,
  `title` varchar(255) default NULL,
  `body` text,
  `dtime` int(11) default NULL,
  `xuhao` int(5) default NULL,
  `cl` int(20) default NULL,
  `ifnew` int(1) default NULL,
  `ifred` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_notice`
--

LOCK TABLES `hy_member_notice` WRITE;
/*!40000 ALTER TABLE `hy_member_notice` DISABLE KEYS */;
INSERT INTO `hy_member_notice` VALUES (1,0,'这是测试的一条会员公告','这是测试的一条会员公告',1220596305,0,2,0,0);
/*!40000 ALTER TABLE `hy_member_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_nums`
--

DROP TABLE IF EXISTS `hy_member_nums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_nums` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(50) default NULL,
  `secureid` int(50) default NULL,
  `nums` int(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_nums`
--

LOCK TABLES `hy_member_nums` WRITE;
/*!40000 ALTER TABLE `hy_member_nums` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_member_nums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_pay`
--

DROP TABLE IF EXISTS `hy_member_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_pay` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `payid` int(11) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `oof` decimal(12,2) NOT NULL default '0.00',
  `method` varchar(200) NOT NULL default '',
  `type` varchar(50) NOT NULL default '',
  `addtime` int(11) NOT NULL default '0',
  `fpnum` varchar(100) NOT NULL default '',
  `memo` varchar(255) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_pay`
--

LOCK TABLES `hy_member_pay` WRITE;
/*!40000 ALTER TABLE `hy_member_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_member_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_paycenter`
--

DROP TABLE IF EXISTS `hy_member_paycenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_paycenter` (
  `id` int(11) NOT NULL auto_increment,
  `pcenter` varchar(100) NOT NULL default '',
  `pcentertype` int(2) NOT NULL default '0',
  `pcenteruser` varchar(100) NOT NULL default '',
  `pcenterkey` text,
  `key1` text,
  `key2` text,
  `hbtype` varchar(255) NOT NULL default '',
  `postfile` varchar(100) NOT NULL default '',
  `recfile` varchar(100) NOT NULL default '',
  `ifuse` int(1) NOT NULL default '0',
  `ifback` int(1) NOT NULL default '0',
  `intro` text,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_paycenter`
--

LOCK TABLES `hy_member_paycenter` WRITE;
/*!40000 ALTER TABLE `hy_member_paycenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_member_paycenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_regstep`
--

DROP TABLE IF EXISTS `hy_member_regstep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_regstep` (
  `id` int(8) NOT NULL auto_increment,
  `membertypeid` int(5) NOT NULL default '0',
  `regstep` varchar(30) NOT NULL,
  `stepname` varchar(50) NOT NULL,
  `xuhao` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_regstep`
--

LOCK TABLES `hy_member_regstep` WRITE;
/*!40000 ALTER TABLE `hy_member_regstep` DISABLE KEYS */;
INSERT INTO `hy_member_regstep` VALUES (1,0,'person','头像签名设置',1),(2,0,'detail','会员资料设置',2),(3,0,'contact','填写联系信息',3),(66,26,'contact','填写联系信息',3),(65,26,'detail','会员资料设置',2),(64,26,'person','头像签名设置',1);
/*!40000 ALTER TABLE `hy_member_regstep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_rights`
--

DROP TABLE IF EXISTS `hy_member_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_rights` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL,
  `secureset` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4653 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_rights`
--

LOCK TABLES `hy_member_rights` WRITE;
/*!40000 ALTER TABLE `hy_member_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_member_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_secure`
--

DROP TABLE IF EXISTS `hy_member_secure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_secure` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `securename` char(100) NOT NULL default '',
  `securetype` char(30) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_secure`
--

LOCK TABLES `hy_member_secure` WRITE;
/*!40000 ALTER TABLE `hy_member_secure` DISABLE KEYS */;
INSERT INTO `hy_member_secure` VALUES (101,'base','内容阅读权限级别','con',1),(111,'member','会员登录帐号设置','func',2),(112,'member','会员头像签名设置','func',3),(113,'member','会员个人资料修改','func',4),(114,'member','会员联系信息修改','func',5),(121,'news','文章发布权限','func',6),(122,'news','文章修改权限','func',7),(123,'news','文章发布/修改免审核权限','func',8),(124,'news','文章图片上传权限','func',5),(125,'news','文章附件上传权限','func',8),(126,'news','文章公共分类投稿授权','class',12),(127,'news','文章自定义分类权限','func',9),(129,'news','文章版主权限(推荐/删除)','banzhu',9),(131,'comment','点评发表权限','func',10),(132,'comment','点评回复权限','func',11),(133,'comment','点评免审核权限','func',12),(134,'comment','点评图片上传权限','func',4),(139,'comment','点评版主权限(推荐/删除)','banzhu',9),(151,'photo','图片发布权限','func',6),(152,'photo','图片修改权限','func',7),(153,'photo','图片发布/修改免审核权限','func',8),(156,'photo','图片公共分类投稿授权','class',11),(157,'photo','图片自定义分类权限','func',9),(159,'photo','图片版主权限(推荐/删除)','banzhu',9);
/*!40000 ALTER TABLE `hy_member_secure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_type`
--

DROP TABLE IF EXISTS `hy_member_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_type` (
  `membertypeid` int(6) NOT NULL auto_increment,
  `membertype` varchar(100) default NULL,
  `membergroupid` int(3) NOT NULL default '0',
  `ifcanreg` int(1) default NULL,
  `ifchecked` int(1) default NULL,
  `regxy` text,
  `regmail` text,
  `expday` int(8) default NULL,
  `startcent` int(20) default NULL,
  `endcent` int(20) default NULL,
  `menugroupid` int(5) NOT NULL default '4',
  PRIMARY KEY  (`membertypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_type`
--

LOCK TABLES `hy_member_type` WRITE;
/*!40000 ALTER TABLE `hy_member_type` DISABLE KEYS */;
INSERT INTO `hy_member_type` VALUES (26,'免费用户',1,1,1,'会员注册协议\r\n\r\n1.\r\n2.\r\n3.\r\n4.\r\n5.\r\n','{#user#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://',0,0,0,4);
/*!40000 ALTER TABLE `hy_member_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_member_zone`
--

DROP TABLE IF EXISTS `hy_member_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_member_zone` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(50) default NULL,
  `xuhao` int(4) default NULL,
  `catpath` char(255) default NULL,
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_member_zone`
--

LOCK TABLES `hy_member_zone` WRITE;
/*!40000 ALTER TABLE `hy_member_zone` DISABLE KEYS */;
INSERT INTO `hy_member_zone` VALUES (1,0,'北京',1,'0001:'),(2,0,'上海',2,'0002:'),(3,0,'天津',3,'0003:'),(4,0,'重庆',4,'0004:'),(5,0,'浙江',5,'0005:'),(6,0,'江苏',6,'0006:'),(7,0,'广东',7,'0007:'),(8,5,'杭州',1,'0005:0008:'),(9,5,'嘉兴',2,'0005:0009:'),(10,6,'南京',1,'0006:0010:'),(11,6,'苏州',2,'0006:0011:'),(12,7,'广州',1,'0007:0012:'),(13,7,'深圳',2,'0007:0013:'),(21,5,'宁波',3,'0005:0021:'),(26,5,'舟山',8,'0005:0026:'),(25,5,'金华',7,'0005:0025:'),(23,5,'温州',5,'0005:0023:'),(22,5,'湖州',4,'0005:0022:'),(24,5,'台州',6,'0005:0024:');
/*!40000 ALTER TABLE `hy_member_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_menu`
--

DROP TABLE IF EXISTS `hy_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_menu` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL default '',
  `linktype` int(1) NOT NULL default '1',
  `coltype` varchar(30) NOT NULL default '',
  `folder` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL default '',
  `ifshow` int(1) NOT NULL default '0',
  `xuhao` int(4) NOT NULL default '0',
  `target` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=360 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_menu`
--

LOCK TABLES `hy_menu` WRITE;
/*!40000 ALTER TABLE `hy_menu` DISABLE KEYS */;
INSERT INTO `hy_menu` VALUES (3,1,0,'装修资讯',1,'','news/class/','http://ssss.com',1,3,'_self'),(80,1,0,'公司简介',1,'','page/html/company.php','http://',1,2,'_self'),(83,1,0,'网站首页',0,'index','','http://',1,1,'_self'),(152,3,0,'关于我们',1,'','page/html/company.php','http://',1,1,'_self'),(153,3,0,'联系方式',1,'','page/contact/contact.php','http://',1,2,'_self'),(320,1,0,'装修流程',1,'','page/service/liucheng.php','http://',1,7,'_self'),(303,3,0,'诚聘英才',0,'job','page/contact/advise.php','http://',1,5,'_self'),(305,1,0,'家装工程',1,'','photo/class/?11.html','http://',1,4,'_self'),(332,1,0,'联系我们',1,'','page/contact/contact.php','http://',1,10,'_self'),(317,3,0,'友情链接',1,'','advs/link/','http://',1,13,'_self'),(358,1,0,'我要装修',1,'','page/contact/feedback.php','http://',1,8,'_self'),(319,1,0,'团队精英',1,'','page/html/team.php','http://',1,6,'_self'),(335,1,0,'工装工程',1,'','photo/class/?12.html','http://',1,5,'_self'),(357,3,0,'我要装修',1,'','page/contact/feedback.php','http://',1,3,'_self'),(359,1,0,'诚聘英才',0,'job','','http://',1,9,'_self');
/*!40000 ALTER TABLE `hy_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_menu_group`
--

DROP TABLE IF EXISTS `hy_menu_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_menu_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_menu_group`
--

LOCK TABLES `hy_menu_group` WRITE;
/*!40000 ALTER TABLE `hy_menu_group` DISABLE KEYS */;
INSERT INTO `hy_menu_group` VALUES (1,'频道导航菜单',1,0),(2,'顶部导航菜单',2,0),(3,'底部导航菜单',3,0);
/*!40000 ALTER TABLE `hy_menu_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_news_cat`
--

DROP TABLE IF EXISTS `hy_news_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_news_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_news_cat`
--

LOCK TABLES `hy_news_cat` WRITE;
/*!40000 ALTER TABLE `hy_news_cat` DISABLE KEYS */;
INSERT INTO `hy_news_cat` VALUES (86,0,'公司新闻',1,'0086:',0,0,0),(95,0,'行业动态',2,'0095:',0,0,0),(97,0,'装修知识',3,'0097:',0,0,0),(98,0,'时尚家居',4,'0098:',0,0,0);
/*!40000 ALTER TABLE `hy_news_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_news_con`
--

DROP TABLE IF EXISTS `hy_news_con`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_news_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'news',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `fileurl` varchar(100) NOT NULL,
  `downcount` int(10) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  `downcentid` int(1) NOT NULL default '1',
  `downcent` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=387 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_news_con`
--

LOCK TABLES `hy_news_con` WRITE;
/*!40000 ALTER TABLE `hy_news_con` DISABLE KEYS */;
INSERT INTO `hy_news_con` VALUES (376,97,'0097:',0,'news','如何选择厨房瓷砖？','<p>如何选择厨房瓷砖？如何选择厨房瓷砖？如何选择厨房瓷砖？</p>\r\n<p>如何选择厨房瓷砖？如何选择厨房瓷砖？如何选择厨房瓷砖？</p>\r\n<p>如何选择厨房瓷砖？如何选择厨房瓷砖？如何选择厨房瓷砖？</p>\r\n<p>如何选择厨房瓷砖？如何选择厨房瓷砖？如何选择厨房瓷砖？</p>\r\n<p>如何选择厨房瓷砖？如何选择厨房瓷砖？如何选择厨房瓷砖？</p>',1269048509,0,0,0,1,0,'0','gif','',1269048509,'管理员','','0','',0,'如何选择厨房瓷砖？如何选择厨房瓷砖？如何选择厨房瓷砖？如何选择厨房瓷砖？如何选择厨房瓷砖？如何选择厨房瓷砖？','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(377,97,'0097:',0,'news','壁纸选择小常识','<p>壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识</p>\r\n<p>壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识</p>\r\n<p>壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识</p>\r\n<p>壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识</p>\r\n<p>壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识</p>',1269048542,0,0,0,1,0,'0','gif','',1269048542,'管理员','','0','',0,'壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识壁纸选择小常识','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(378,97,'0097:',0,'news','怎样辨别烤漆和喷漆？','<p>怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？</p>\r\n<p>怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？</p>\r\n<p>怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？</p>\r\n<p>怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？</p>\r\n<p>怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？</p>',1269048572,0,0,0,1,0,'0','gif','',1269048572,'管理员','','0','',0,'怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？怎样辨别烤漆和喷漆？','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(379,97,'0097:',0,'news','如何保养木质门？','<p>如何保养木质门？如何保养木质门？如何保养木质门？</p>\r\n<p>如何保养木质门？如何保养木质门？如何保养木质门？</p>\r\n<p>如何保养木质门？如何保养木质门？如何保养木质门？</p>\r\n<p>如何保养木质门？如何保养木质门？如何保养木质门？</p>\r\n<p>如何保养木质门？如何保养木质门？如何保养木质门？</p>',1269048604,0,0,0,1,0,'0','gif','',1269048604,'管理员','','0','',0,'如何保养木质门？如何保养木质门？如何保养木质门？如何保养木质门？如何保养木质门？如何保养木质门？如何保养木质门？','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(380,97,'0097:',0,'news','什么颜色的窗帘能够帮助睡眠？','<p>什么颜色的窗帘能够帮助睡眠？什么颜色的窗帘能够帮助睡眠？</p>\r\n<p>什么颜色的窗帘能够帮助睡眠？什么颜色的窗帘能够帮助睡眠？</p>\r\n<p>什么颜色的窗帘能够帮助睡眠？什么颜色的窗帘能够帮助睡眠？</p>\r\n<p>什么颜色的窗帘能够帮助睡眠？什么颜色的窗帘能够帮助睡眠？</p>\r\n<p>什么颜色的窗帘能够帮助睡眠？什么颜色的窗帘能够帮助睡眠？</p>',1269048633,0,0,0,1,0,'0','gif','',1269048633,'管理员','','0','',0,'什么颜色的窗帘能够帮助睡眠？什么颜色的窗帘能够帮助睡眠？什么颜色的窗帘能够帮助睡眠？什么颜色的窗帘能够帮助睡眠？什么颜色的窗帘能够帮助睡眠？','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(381,97,'0097:',0,'news','10年最新潮婚房布置攻略','<p>10年最新潮婚房布置攻略10年最新潮婚房布置攻略10年最新潮婚房布置攻略</p>\r\n<p>10年最新潮婚房布置攻略10年最新潮婚房布置攻略10年最新潮婚房布置攻略</p>\r\n<p>10年最新潮婚房布置攻略10年最新潮婚房布置攻略10年最新潮婚房布置攻略</p>\r\n<p>10年最新潮婚房布置攻略10年最新潮婚房布置攻略10年最新潮婚房布置攻略</p>\r\n<p>10年最新潮婚房布置攻略10年最新潮婚房布置攻略10年最新潮婚房布置攻略</p>',1269048679,0,3,0,1,0,'0','gif','',1269048679,'管理员','','0','',0,'10年最新潮婚房布置攻略10年最新潮婚房布置攻略10年最新潮婚房布置攻略10年最新潮婚房布置攻略10年最新潮婚房布置攻略10年最新潮婚房布置攻略','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(382,86,'0086:',0,'news','大型团装团购征集样板房活动','<p>大型团装团购征集样板房活动大型团装团购征集样板房活动</p>\r\n<p>大型团装团购征集样板房活动大型团装团购征集样板房活动</p>\r\n<p>大型团装团购征集样板房活动大型团装团购征集样板房活动</p>\r\n<p>大型团装团购征集样板房活动大型团装团购征集样板房活动</p>\r\n<p>大型团装团购征集样板房活动大型团装团购征集样板房活动</p>',1269052729,0,0,0,1,0,'0','gif','',1269052729,'管理员','','0','',0,'大型团装团购征集样板房活动大型团装团购征集样板房活动大型团装团购征集样板房活动大型团装团购征集样板房活动大型团装团购征集样板房活动','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(383,86,'0086:',0,'news','2010.5.28滨湖品阁大型团装团购活动','<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>\r\n<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>\r\n<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>\r\n<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>\r\n<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>',1269052789,0,0,0,1,0,'0','gif','',1269052789,'管理员','','0','',0,'2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(384,86,'0086:',0,'news','迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！','<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>\r\n<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>\r\n<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>\r\n<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>\r\n<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>',1269052844,0,8,0,1,0,'0','gif','',1269052844,'管理员','','0','',0,'迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(385,86,'0086:',0,'news','2010.5.28滨湖品阁大型团装团购活动','<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>\r\n<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>\r\n<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>\r\n<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>\r\n<p>2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动</p>',1269052865,0,0,0,1,0,'0','gif','',1269052865,'管理员','','0','',0,'2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动2010.5.28滨湖品阁大型团装团购活动','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0),(386,86,'0086:',0,'news','迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！','<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>\r\n<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>\r\n<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>\r\n<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>\r\n<p>迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！</p>',1269052885,0,10,0,1,0,'0','gif','',1269052885,'管理员','','0','',0,'迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！迎中兴金鸡湖花园开盘，大型团装团购征集样板房活动！','','','','','','','','','','','','','','','','','','','','','http://',0,'',0,0,'',1,0);
/*!40000 ALTER TABLE `hy_news_con` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_news_config`
--

DROP TABLE IF EXISTS `hy_news_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_news_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_news_config`
--

LOCK TABLES `hy_news_config` WRITE;
/*!40000 ALTER TABLE `hy_news_config` DISABLE KEYS */;
INSERT INTO `hy_news_config` VALUES (5,'文章主题图片上传尺寸限制(Byte)','input','30','PicSizeLimit','256000','会员发布文章上传主题图片时,单个图片尺寸的限制'),(6,'文章编辑器图片上传限制(Byte)','input','30','EditPicLimit','512000','会员发布文章时,在编辑器内上传图片,单个图片的尺寸限制'),(1,'模块频道名称','input','30','ChannelName','新闻中心','本模块对应的频道名称，如“新闻中心”；用于显示在网页标题、当前位置提示条等处'),(2,'是否在当前位置提示条显示模块频道名称','YN','30','ChannelNameInNav','1','是否在当前位置提示条显示模块频道名称'),(7,'附件上传大小限制','input','30','FileSizeLimit','1024000','会员发布文章上传附件时,允许上传附件的文件大小;但最高设置不能超过2M '),(8,'会员发布文章关键词过滤','textarea','30','KeywordDeny','法轮功,麻醉,兴奋剂','会员发布文章时禁止的词语，多个以逗号分割');
/*!40000 ALTER TABLE `hy_news_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_news_downlog`
--

DROP TABLE IF EXISTS `hy_news_downlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_news_downlog` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_news_downlog`
--

LOCK TABLES `hy_news_downlog` WRITE;
/*!40000 ALTER TABLE `hy_news_downlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_news_downlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_news_pages`
--

DROP TABLE IF EXISTS `hy_news_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_news_pages` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_news_pages`
--

LOCK TABLES `hy_news_pages` WRITE;
/*!40000 ALTER TABLE `hy_news_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_news_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_news_pcat`
--

DROP TABLE IF EXISTS `hy_news_pcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_news_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_news_pcat`
--

LOCK TABLES `hy_news_pcat` WRITE;
/*!40000 ALTER TABLE `hy_news_pcat` DISABLE KEYS */;
INSERT INTO `hy_news_pcat` VALUES (2,150,0,'新增分类',1,'');
/*!40000 ALTER TABLE `hy_news_pcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_news_proj`
--

DROP TABLE IF EXISTS `hy_news_proj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_news_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_news_proj`
--

LOCK TABLES `hy_news_proj` WRITE;
/*!40000 ALTER TABLE `hy_news_proj` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_news_proj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_news_prop`
--

DROP TABLE IF EXISTS `hy_news_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_news_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_news_prop`
--

LOCK TABLES `hy_news_prop` WRITE;
/*!40000 ALTER TABLE `hy_news_prop` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_news_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_page`
--

DROP TABLE IF EXISTS `hy_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_page` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `title` varchar(200) NOT NULL default '',
  `body` text NOT NULL,
  `xuhao` int(4) NOT NULL default '0',
  `src` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `memo` text NOT NULL,
  `pagefolder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_page`
--

LOCK TABLES `hy_page` WRITE;
/*!40000 ALTER TABLE `hy_page` DISABLE KEYS */;
INSERT INTO `hy_page` VALUES (1,1,'公司简介','<div style=\"MARGIN: 20px 43px 0px 41px\"><img style=\"MARGIN: 0px 20px 5px 0px; FLOAT: left\" border=0 alt=\"\" src=\"[ROOTPATH]page/pics/20100320/201003201269059532857.jpg\" /><span style=\"LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=#993300>乐饰家装饰公司</font>是一家集专业设计、施工、售后服务为一体的现代化装饰企业。公司秉承“专业团队、品质服务”的企业精神，公司汇聚了一批国内高层管理人才、高素质设计精英和一流施工队伍，并多次安排员工到外地考察学习前沿的设计理念和工艺做法，把握流行趋势，以规范化的管理、专业的设计、科学优质的施工，周到全面的服务力求为客户创造一个高品质、时尚、舒适的满意空间。<br /><br /><strong>全案家居设计</strong><br />乐饰家装饰始终追求国际化的视野与本土人居环境的完美结合，一方面坚持设计为功能服务的信念，另一方面致力于提升家居环境的品位内涵，依托强大的设计力量，准确把握家居环境流行趋势，乐饰家装饰设计团队拥有前沿的设计理念和丰富的实操经验，善于运用熟练的设计手法表现创造性的灵感，在认真研究每一位客户的背景特点及个性化需求的基础上，融合东西文化艺术精髓和国际家居时尚元素，为客户量身定制出最适合的家居环境预案。专业的家装理财建议还能帮助客户合理使用资金，更好的控制装修预算。设计师全程配饰跟踪服务，更确保了功能、时尚和家居风格的全程统一。<br /><strong>全优规范施工</strong><br />乐饰家装饰采用国际领先的模块化施工，以规范的施工现场，严格的工程验收和质量控制体系，确保装饰施工、成品安装、材料验收等各个环节有序衔接，确保工程品质全程无忧。<br /><strong>全程跟踪服务</strong><br />乐饰家装饰推行“360度多对一私化服务流程”，为每位客户配备私属服务团队，包括分工细致的各专项设计师，质量监督专员，客户专员等，保证服务的专业化程度：并在业内率先引进家居信息化管理系统，实现便捷高效的信息沟通和及时跟踪，让客户在装修的每一个细节中都能享受私属化的贴心服务。</span></div>',1,'','','','company'),(72,21,'服务范围','<div style=\"LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px;margin:20px 43px 0px 41px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 全天候客户咨询服务 公司提供 24 小时＊ 365 天 的全天候客户咨询服务，如果您在使用过程中有任何疑问，欢迎您随时拨打我们的 服务热线 0571-87654321，我们的工作人员将为您提供有序、实质、高效的服务支持。周到的上门服务 公司在全国范围内均建立了自己的销售与服务网络，当您遇到所购产品出现故障时，公司将随时指定当地的售后服务中心或产品的代理商、经销商与您取得联系，及时提供周到的上门服务，帮您解决后顾之忧。 4 小时紧急响应， 72 小时修复故障 当接到您的报修请求后，公司工作人员会在 4 小时内作出紧急响应，并与您取得电话联系，回复其解决方案，随时通知贵方所在地售后服务机构的服务人员上门为其提供服务，承诺在 72 小时内修复故障。如果当地没有公司指定的服务机构，则请求贵方给予增加在途时间，出现特殊情况，我方将主动与您协商，直至圆满解决。有偿服务　　当您遇到随机安装软件 ( 软件也可在网上下载 ) 或机器不能正常工作的问题时，在您购机后的 15 天内，销售商有责任为您提供 免费软件咨询服务或免费为您恢复至出厂状态。购机超出 15 天或您所购买的机器已超过保修期出现上述免费保修范围以外的问题时，您可选择有偿服务。公司指定的所有售后服务中心均可提供有偿服务，其收费标准如下表所列，具体条款请向公司指定的售后服务中心咨询。如国家法律、法规另有规定的，以国家法律、法规的规定为准。　　为了您的设备能得到更高层次的保养，您可与当地公司售后服务中心签订维护保养协定，服务中心的工程师将根据您设备使用的实际情况，进行定期或不定期的上门保养并及时提供相关软硬件版本升级以及设备更新等相关有偿服务。</div> ',1,'','','','intro'),(52,1,'团队精英','<div style=\"MARGIN: 28px 66px 0px\"><img style=\"FLOAT: left; MARGIN-RIGHT: 45px\" border=0 alt=\"\" src=\"[ROOTPATH]page/pics/20100320/201003201269063038339.jpg\" /><font style=\"LINE-HEIGHT: 24px; COLOR: #666; FONT-SIZE: 12px\"><span style=\"FONT-SIZE: 14px; FONT-WEIGHT: bold\">精英设计团队</span><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;乐安居装饰由设计专家领衔，汇集百余名国内外精英设计师，围绕现代家居生活要求，提供整体家居环境解决方案。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;乐安居设计师采用风水规划、庭院设计、环保设计、智能家居、设备系统、材料工艺、室内设 计、配饰设计的八大功能系统，精准导航全案设计，同时拥有多名专项设计精英。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所有设计师均经过严格培训和考核，乐安居设计师及施工工程多次荣获权威协会及行业大奖。</font></div>',6,'','','','team'),(63,21,'装修流程','<div style=\"LINE-HEIGHT: 22px; MARGIN: 20px 43px 0px 41px; FONT-SIZE: 12px\">一、 免费装潢咨询： <br />　　 业主无须装潢经验，只要拨打公司热线或各现场办公室的电话或到公司来就能了解到家庭装潢流程做法及注意事项并且就您的家居装饰提供专家意见。 <br /><br />二、 免费上门测量：<br />　　 客户自己绘制的平面图，既麻烦又不一定规范，但只要同安知居公司<br />&nbsp;&nbsp;&nbsp;&nbsp; 业务设计人员约定，公司人员就免费为客户进行专业现场测量。<br /><br />三、 免费出具电脑平面图： <br />　　 若客户已有尺寸规范详细的平面布置图，安知居公司就会为您出具电<br />&nbsp;&nbsp;&nbsp;&nbsp; 脑平面布置图，并通过电脑进行调整，让您预先看到未来新居的平面布置状况。 <br /><br />四、 免费预算： <br />　　 客户只要拥有规范平面布置图，安新居前掌握装潢的总费用及单项费用。 <br /><br />五、 资深设计师软装潢设计： <br />　　 当您感受到由安知居公司提供的居室设计、施工所带来愉悦的心情，是否又有一丝烦恼涌上心头？！高水准的装修毕竟只是为您的理想创造了硬件条件，而理想的品质、舒适的感觉还需按总体设计要求在通过软装饰得以体现。</div>',2,'','','','liucheng'),(64,22,'联系方式','<div style=\"LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px;margin:20px 43px 0px 41px;\">地 址：杭州市莫干山路2168号<br />电 话：0571-98765432<br />联系人：杨军(经理)<br />手 机：15887654321<br />网址：www.aaaa.com<br />邮 箱：bos@mail.com<br />地 址：杭州市莫干山路2168号<br />电 话：0571-98765432<br />联系人：杨军(经理)<br />手 机：15887654321<br />网址：www.aaaa.com<br />邮 箱：bos@mail.com<br />邮 编：300009</div> ',1,'','','','contact'),(65,22,'我要装修','',2,'','','','feedback'),(66,1,'公司文化','<div style=\"LINE-HEIGHT: 170%; MARGIN: 20px 43px 0px 41px; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。</div> ',2,'','','','culture'),(67,1,'公司环境','',4,'','','','equipment');
/*!40000 ALTER TABLE `hy_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_page_group`
--

DROP TABLE IF EXISTS `hy_page_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_page_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `folder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_page_group`
--

LOCK TABLES `hy_page_group` WRITE;
/*!40000 ALTER TABLE `hy_page_group` DISABLE KEYS */;
INSERT INTO `hy_page_group` VALUES (1,'公司介绍',1,0,'html'),(21,'服务介绍',1,1,'service'),(22,'联系我们',1,1,'contact');
/*!40000 ALTER TABLE `hy_page_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_photo_cat`
--

DROP TABLE IF EXISTS `hy_photo_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_photo_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(100) default NULL,
  `xuhao` int(12) default NULL,
  `catpath` char(255) default NULL,
  `nums` int(20) default NULL,
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_photo_cat`
--

LOCK TABLES `hy_photo_cat` WRITE;
/*!40000 ALTER TABLE `hy_photo_cat` DISABLE KEYS */;
INSERT INTO `hy_photo_cat` VALUES (8,0,'工程案例',1,'0008:',0,0,0),(9,0,'公司环境',2,'0009:',0,0,0),(10,0,'团队精英',3,'0010:',0,0,0),(11,8,'家装工程案例',1,'0008:0011:',0,0,0),(12,8,'工装工程案例',2,'0008:0012:',0,0,0);
/*!40000 ALTER TABLE `hy_photo_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_photo_con`
--

DROP TABLE IF EXISTS `hy_photo_con`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_photo_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'photo',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_photo_con`
--

LOCK TABLES `hy_photo_con` WRITE;
/*!40000 ALTER TABLE `hy_photo_con` DISABLE KEYS */;
INSERT INTO `hy_photo_con` VALUES (47,10,'0010:',0,'photo','装饰家','',1269047287,0,3,0,1,0,'0','gif','photo/pics/20100320/1269047287.jpg',1269074664,'管理员','','0','',0,'立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承','','','','','','','','','','','','','','','','','','','','','',0,0,''),(48,10,'0010:',0,'photo','装饰家','',1269047343,0,4,0,1,0,'0','gif','photo/pics/20100320/1269047343.jpg',1269074597,'管理员','','0','',0,'立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承立身之本化成为企中秉承','','','','','','','','','','','','','','','','','','','','','',0,0,''),(49,11,'0008:0011:',0,'photo','家庭装修案例之一','',1269049933,0,1,0,1,0,'0','gif','photo/pics/20100320/1269049933.jpg',1269049933,'管理员','','0','',0,'家庭装修案例之一','','','','','','','','','','','','','','','','','','','','','',0,0,''),(50,11,'0008:0011:',0,'photo','家庭装修案例之二','',1269049949,0,0,0,1,0,'0','gif','photo/pics/20100320/1269049949.jpg',1269049949,'管理员','','0','',0,'家庭装修案例之二','','','','','','','','','','','','','','','','','','','','','',0,0,''),(51,11,'0008:0011:',0,'photo','家庭装修案例之三','',1269049963,0,2,0,1,0,'0','gif','photo/pics/20100320/1269049963.jpg',1269049963,'管理员','','0','',0,'家庭装修案例之三','','','','','','','','','','','','','','','','','','','','','',0,0,''),(52,11,'0008:0011:',0,'photo','家庭装修案例之四','',1269049977,0,0,0,1,0,'0','gif','photo/pics/20100320/1269049977.jpg',1269049977,'管理员','','0','',0,'家庭装修案例之四','','','','','','','','','','','','','','','','','','','','','',0,0,''),(53,11,'0008:0011:',0,'photo','家庭装修案例之五','',1269049991,0,6,0,1,0,'0','gif','photo/pics/20100320/1269049991.jpg',1269049991,'管理员','','0','',0,'家庭装修案例之五','','','','','','','','','','','','','','','','','','','','','',0,0,''),(54,11,'0008:0011:',0,'photo','家庭装修案例之六','',1269050005,0,1,0,1,0,'0','gif','photo/pics/20100320/1269050005.jpg',1269050005,'管理员','','0','',0,'家庭装修案例之六','','','','','','','','','','','','','','','','','','','','','',0,0,''),(55,9,'0009:',0,'photo','娱乐室一角','',1269061068,0,0,0,1,0,'0','gif','photo/pics/20100320/1269061068.jpg',1269061068,'管理员','','0','',0,'娱乐室一角','','','','','','','','','','','','','','','','','','','','','',0,0,''),(56,9,'0009:',0,'photo','经理办公室','',1269061115,0,0,0,1,0,'0','gif','photo/pics/20100320/1269061115.jpg',1269061115,'管理员','','0','',0,'经理办公室','','','','','','','','','','','','','','','','','','','','','',0,0,''),(57,9,'0009:',0,'photo','小聚一隅','',1269061159,0,0,0,1,0,'0','gif','photo/pics/20100320/1269061159.jpg',1269061159,'管理员','','0','',0,'小聚一隅','','','','','','','','','','','','','','','','','','','','','',0,0,''),(58,9,'0009:',0,'photo','前台','',1269061174,0,0,0,1,0,'0','gif','photo/pics/20100320/1269061174.jpg',1269061174,'管理员','','0','',0,'前台','','','','','','','','','','','','','','','','','','','','','',0,0,''),(59,9,'0009:',0,'photo','总设计师办公桌一览','',1269061212,0,1,0,1,0,'0','gif','photo/pics/20100320/1269061212.jpg',1269061212,'管理员','','0','',0,'总设计师办公桌一览','','','','','','','','','','','','','','','','','','','','','',0,0,''),(60,9,'0009:',0,'photo','办公大厅一瞥','',1269061230,0,5,0,1,0,'0','gif','photo/pics/20100320/1269061230.jpg',1269061230,'管理员','','0','',0,'办公大厅一瞥','','','','','','','','','','','','','','','','','','','','','',0,0,''),(61,12,'0008:0012:',0,'photo','工装工程案例之一','',1274198105,0,1,0,1,0,'0','gif','photo/pics/20100518/1274198105.jpg',1274198105,'管理员','','0','',0,'工装工程案例之一','','','','','','','','','','','','','','','','','','','','','',0,0,''),(62,12,'0008:0012:',0,'photo','工装工程案例之二','',1274198124,0,0,0,1,0,'0','gif','photo/pics/20100518/1274198124.jpg',1274198124,'管理员','','0','',0,'工装工程案例之二','','','','','','','','','','','','','','','','','','','','','',0,0,''),(63,12,'0008:0012:',0,'photo','工装工程案例之三','',1274198138,0,1,0,1,0,'0','gif','photo/pics/20100518/1274198138.jpg',1274198138,'管理员','','0','',0,'工装工程案例之三','','','','','','','','','','','','','','','','','','','','','',0,0,''),(64,12,'0008:0012:',0,'photo','工装工程案例之四','',1274198154,0,7,0,1,0,'0','gif','photo/pics/20100518/1274198154.jpg',1274198154,'管理员','','0','',0,'工装工程案例之四','','','','','','','','','','','','','','','','','','','','','',0,0,''),(65,12,'0008:0012:',0,'photo','工装工程案例之五','',1274198169,0,1,0,1,0,'0','gif','photo/pics/20100518/1274198169.jpg',1274198169,'管理员','','0','',0,'工装工程案例之五','','','','','','','','','','','','','','','','','','','','','',0,0,'');
/*!40000 ALTER TABLE `hy_photo_con` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_photo_config`
--

DROP TABLE IF EXISTS `hy_photo_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_photo_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_photo_config`
--

LOCK TABLES `hy_photo_config` WRITE;
/*!40000 ALTER TABLE `hy_photo_config` DISABLE KEYS */;
INSERT INTO `hy_photo_config` VALUES (1,'模块频道名称','input','30','ChannelName','企业图库','本模块对应的频道名称，如“图片展示”；用于显示在网页标题、当前位置提示条等处'),(2,'是否在当前位置提示条显示模块频道名称','YN','30','ChannelNameInNav','1','是否在当前位置提示条显示模块频道名称'),(5,'会员上传图片尺寸限制(Byte)','input','30','PicSizeLimit','256000','会员上传图片时,单个图片尺寸的限制');
/*!40000 ALTER TABLE `hy_photo_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_photo_pages`
--

DROP TABLE IF EXISTS `hy_photo_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_photo_pages` (
  `id` int(12) NOT NULL auto_increment,
  `photoid` int(12) NOT NULL default '0',
  `src` varchar(150) NOT NULL default '',
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_photo_pages`
--

LOCK TABLES `hy_photo_pages` WRITE;
/*!40000 ALTER TABLE `hy_photo_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_photo_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_photo_pcat`
--

DROP TABLE IF EXISTS `hy_photo_pcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_photo_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_photo_pcat`
--

LOCK TABLES `hy_photo_pcat` WRITE;
/*!40000 ALTER TABLE `hy_photo_pcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_photo_pcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_photo_proj`
--

DROP TABLE IF EXISTS `hy_photo_proj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_photo_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_photo_proj`
--

LOCK TABLES `hy_photo_proj` WRITE;
/*!40000 ALTER TABLE `hy_photo_proj` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_photo_proj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_photo_prop`
--

DROP TABLE IF EXISTS `hy_photo_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_photo_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_photo_prop`
--

LOCK TABLES `hy_photo_prop` WRITE;
/*!40000 ALTER TABLE `hy_photo_prop` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_photo_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_code`
--

DROP TABLE IF EXISTS `hy_tools_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_code` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `cat` varchar(100) NOT NULL,
  `groupid` int(11) NOT NULL default '0',
  `groupname` varchar(100) NOT NULL,
  `qq` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `memo` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `xuhao` int(11) NOT NULL default '0',
  `iffb` int(1) NOT NULL default '1',
  `tj` int(1) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_code`
--

LOCK TABLES `hy_tools_code` WRITE;
/*!40000 ALTER TABLE `hy_tools_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_tools_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_photopolldata`
--

DROP TABLE IF EXISTS `hy_tools_photopolldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_photopolldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `body` text,
  `iffb` int(1) NOT NULL default '0',
  `tj` int(1) default NULL,
  `secure` int(11) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  `type` varchar(30) NOT NULL,
  `src` varchar(150) NOT NULL,
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  `votesinfo1` text NOT NULL,
  `votesinfo2` text NOT NULL,
  `votesinfo3` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_photopolldata`
--

LOCK TABLES `hy_tools_photopolldata` WRITE;
/*!40000 ALTER TABLE `hy_tools_photopolldata` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_tools_photopolldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_photopollindex`
--

DROP TABLE IF EXISTS `hy_tools_photopollindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_photopollindex` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(12) NOT NULL,
  `catpath` char(255) default NULL,
  `cat` varchar(100) NOT NULL,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_photopollindex`
--

LOCK TABLES `hy_tools_photopollindex` WRITE;
/*!40000 ALTER TABLE `hy_tools_photopollindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_tools_photopollindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_pollconfig`
--

DROP TABLE IF EXISTS `hy_tools_pollconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_pollconfig` (
  `config_id` smallint(5) unsigned NOT NULL auto_increment,
  `img_height` int(5) NOT NULL default '0',
  `img_length` int(5) NOT NULL default '0',
  `vodinfo` varchar(225) NOT NULL default '0',
  `def_options` smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_pollconfig`
--

LOCK TABLES `hy_tools_pollconfig` WRITE;
/*!40000 ALTER TABLE `hy_tools_pollconfig` DISABLE KEYS */;
INSERT INTO `hy_tools_pollconfig` VALUES (1,20,10,'对不起,您已经投过票了',10);
/*!40000 ALTER TABLE `hy_tools_pollconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_polldata`
--

DROP TABLE IF EXISTS `hy_tools_polldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_polldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `option_id` int(11) NOT NULL default '0',
  `option_text` varchar(200) NOT NULL default '',
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_polldata`
--

LOCK TABLES `hy_tools_polldata` WRITE;
/*!40000 ALTER TABLE `hy_tools_polldata` DISABLE KEYS */;
INSERT INTO `hy_tools_polldata` VALUES (17,8,5,'喜欢','aqua',0),(16,8,4,'一般','aqua',0),(13,8,1,'很好','aqua',1),(14,8,2,'不好','aqua',0),(15,8,3,'很差','aqua',0);
/*!40000 ALTER TABLE `hy_tools_polldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_pollindex`
--

DROP TABLE IF EXISTS `hy_tools_pollindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_pollindex` (
  `id` int(11) NOT NULL auto_increment,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_pollindex`
--

LOCK TABLES `hy_tools_pollindex` WRITE;
/*!40000 ALTER TABLE `hy_tools_pollindex` DISABLE KEYS */;
INSERT INTO `hy_tools_pollindex` VALUES (8,'这个软件你感觉怎么样？',1223209351,1,1225801351,0);
/*!40000 ALTER TABLE `hy_tools_pollindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_statbase`
--

DROP TABLE IF EXISTS `hy_tools_statbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_statbase` (
  `id` int(8) NOT NULL auto_increment,
  `ShowCountType` int(1) default NULL,
  `ShowCountSize` int(1) default NULL,
  `ShowCount` int(1) default NULL,
  `ShowCountStat` int(1) default NULL,
  `starttime` int(11) default NULL,
  `CountIpExp` int(3) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_statbase`
--

LOCK TABLES `hy_tools_statbase` WRITE;
/*!40000 ALTER TABLE `hy_tools_statbase` DISABLE KEYS */;
INSERT INTO `hy_tools_statbase` VALUES (1,2,8,2,0,1234728185,5);
/*!40000 ALTER TABLE `hy_tools_statbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_statcome`
--

DROP TABLE IF EXISTS `hy_tools_statcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_statcome` (
  `id` int(12) NOT NULL auto_increment,
  `url` varchar(255) NOT NULL default '',
  `count` int(5) NOT NULL default '0',
  `begingtime` int(11) NOT NULL default '0',
  `lasttime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_statcome`
--

LOCK TABLES `hy_tools_statcome` WRITE;
/*!40000 ALTER TABLE `hy_tools_statcome` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_tools_statcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_statcount`
--

DROP TABLE IF EXISTS `hy_tools_statcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_statcount` (
  `id` int(21) NOT NULL auto_increment,
  `ip` varchar(17) NOT NULL default '',
  `os` varchar(40) NOT NULL default '',
  `browse` varchar(30) NOT NULL default '',
  `urlform` varchar(255) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `nowpage` varchar(255) default NULL,
  `member` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16307 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_statcount`
--

LOCK TABLES `hy_tools_statcount` WRITE;
/*!40000 ALTER TABLE `hy_tools_statcount` DISABLE KEYS */;
/*!40000 ALTER TABLE `hy_tools_statcount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hy_tools_statdate`
--

DROP TABLE IF EXISTS `hy_tools_statdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hy_tools_statdate` (
  `id` int(2) NOT NULL auto_increment,
  `1th_day` int(5) NOT NULL default '0',
  `2th_day` int(5) NOT NULL default '0',
  `3th_day` int(5) NOT NULL default '0',
  `4th_day` int(5) NOT NULL default '0',
  `5th_day` int(5) NOT NULL default '0',
  `6th_day` int(5) NOT NULL default '0',
  `7th_day` int(5) NOT NULL default '0',
  `8th_day` int(5) NOT NULL default '0',
  `9th_day` int(5) NOT NULL default '0',
  `10th_day` int(5) NOT NULL default '0',
  `11th_day` int(5) NOT NULL default '0',
  `12th_day` int(5) NOT NULL default '0',
  `13th_day` int(5) NOT NULL default '0',
  `14th_day` int(5) NOT NULL default '0',
  `15th_day` int(5) NOT NULL default '0',
  `16th_day` int(5) NOT NULL default '0',
  `17th_day` int(5) NOT NULL default '0',
  `18th_day` int(5) NOT NULL default '0',
  `19th_day` int(5) NOT NULL default '0',
  `20th_day` int(5) NOT NULL default '0',
  `21th_day` int(5) NOT NULL default '0',
  `22th_day` int(5) NOT NULL default '0',
  `23th_day` int(5) NOT NULL default '0',
  `24th_day` int(5) NOT NULL default '0',
  `25th_day` int(5) NOT NULL default '0',
  `26th_day` int(5) NOT NULL default '0',
  `27th_day` int(5) NOT NULL default '0',
  `28th_day` int(5) NOT NULL default '0',
  `29th_day` int(5) NOT NULL default '0',
  `30th_day` int(5) NOT NULL default '0',
  `31th_day` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hy_tools_statdate`
--

LOCK TABLES `hy_tools_statdate` WRITE;
/*!40000 ALTER TABLE `hy_tools_statdate` DISABLE KEYS */;
INSERT INTO `hy_tools_statdate` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `hy_tools_statdate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-14  1:17:31
