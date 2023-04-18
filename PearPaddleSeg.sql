-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: PearPaddleSeg
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_admin_log`
--

DROP TABLE IF EXISTS `admin_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `desc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `ip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `create_time` datetime DEFAULT NULL,
  `success` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1496 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_admin_log`
--

LOCK TABLES `admin_admin_log` WRITE;
/*!40000 ALTER TABLE `admin_admin_log` DISABLE KEYS */;
INSERT INTO `admin_admin_log` VALUES (1485,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0','2023-04-09 01:02:15',1),(1486,'POST',9,'/passport/login','zcx','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0','2023-04-11 13:52:36',1),(1487,'GET',9,'/dept/tree','{}','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0','2023-04-11 13:52:41',1),(1488,'PUT',9,'/admin/role/disable','{&#39;roleId&#39;: &#39;2&#39;}','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0','2023-04-11 13:53:19',0),(1489,'PUT',9,'/admin/role/enable','{&#39;roleId&#39;: &#39;2&#39;}','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0','2023-04-11 13:53:21',0),(1490,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0','2023-04-11 14:07:21',1),(1491,'POST',9,'/passport/login','zcx','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0','2023-04-11 14:13:51',1),(1492,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0','2023-04-11 14:15:08',1),(1493,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/111.0','2023-04-11 20:02:52',1),(1494,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/111.0','2023-04-14 13:57:42',1),(1495,'POST',1,'/passport/login','admin','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/111.0','2023-04-14 13:59:15',1);
/*!40000 ALTER TABLE `admin_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_dept`
--

DROP TABLE IF EXISTS `admin_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_dept` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `parent_id` int DEFAULT NULL COMMENT '父级编号',
  `dept_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '部门名称',
  `sort` int DEFAULT NULL COMMENT '排序',
  `leader` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` int DEFAULT NULL COMMENT '状态(1开启,0关闭)',
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '备注',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '详细地址',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_dept`
--

LOCK TABLES `admin_dept` WRITE;
/*!40000 ALTER TABLE `admin_dept` DISABLE KEYS */;
INSERT INTO `admin_dept` VALUES (1,0,'总公司',1,'就眠仪式','12312345679','123qq.com',1,NULL,'这是总公司',NULL,'2021-06-01 17:23:20'),(4,1,'济南分公司',2,'就眠仪式','12312345678','1234qq.com',1,NULL,'这是济南','2021-06-01 17:24:33','2021-06-01 17:25:19'),(5,1,'唐山分公司',4,'mkg','12312345678','123@qq.com',1,NULL,'这是唐山','2021-06-01 17:25:15','2021-06-01 17:25:20'),(7,4,'济南分公司开发部',5,'就眠仪式','12312345678','123@qq.com',1,NULL,'测试','2021-06-01 17:27:39','2021-06-01 17:27:39'),(8,5,'唐山测试部',6,'mkg','12312345678','123@qq.com',1,NULL,'测试部','2021-06-01 17:28:27','2021-06-01 17:28:27');
/*!40000 ALTER TABLE `admin_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_dict_data`
--

DROP TABLE IF EXISTS `admin_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_dict_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '字典类型名称',
  `data_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '字典类型标识',
  `type_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '字典类型描述',
  `is_default` int DEFAULT NULL COMMENT '是否默认',
  `enable` int DEFAULT NULL COMMENT '是否开启',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_dict_data`
--

LOCK TABLES `admin_dict_data` WRITE;
/*!40000 ALTER TABLE `admin_dict_data` DISABLE KEYS */;
INSERT INTO `admin_dict_data` VALUES (8,'男','boy','user_sex',NULL,1,'男 : body','2021-04-16 13:36:34','2021-04-16 14:05:06'),(9,'女','girl','user_sex',NULL,1,'女 : girl','2021-04-16 13:36:55','2021-04-16 13:36:55');
/*!40000 ALTER TABLE `admin_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_dict_type`
--

DROP TABLE IF EXISTS `admin_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_dict_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '字典类型名称',
  `type_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '字典类型标识',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '字典类型描述',
  `enable` int DEFAULT NULL COMMENT '是否开启',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_dict_type`
--

LOCK TABLES `admin_dict_type` WRITE;
/*!40000 ALTER TABLE `admin_dict_type` DISABLE KEYS */;
INSERT INTO `admin_dict_type` VALUES (1,'用户性别','user_sex','用户性别',1,NULL,'2021-04-16 13:37:11');
/*!40000 ALTER TABLE `admin_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_mail`
--

DROP TABLE IF EXISTS `admin_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_mail` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '邮件编号',
  `receiver` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '收件人邮箱',
  `subject` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮件主题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '邮件正文',
  `user_id` int DEFAULT NULL COMMENT '发送人id',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_mail`
--

LOCK TABLES `admin_mail` WRITE;
/*!40000 ALTER TABLE `admin_mail` DISABLE KEYS */;
INSERT INTO `admin_mail` VALUES (1,'1242733702@qq.com','pear-admin-flask','pear-admin-flask',1,'2022-10-11 13:41:21'),(4,'1242733702@qq.com','湖人总冠军','湖人总冠军',1,'2022-10-11 14:03:30'),(5,'1242733702@qq.com','这是flask测试邮箱','正文',1,'2022-10-11 14:10:30');
/*!40000 ALTER TABLE `admin_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_photo`
--

DROP TABLE IF EXISTS `admin_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `href` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mime` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `size` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `seg_href` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_photo`
--

LOCK TABLES `admin_photo` WRITE;
/*!40000 ALTER TABLE `admin_photo` DISABLE KEYS */;
INSERT INTO `admin_photo` VALUES (25,'cityscapes_demo_3.png','http://127.0.0.1:5000/_uploads/photos/cityscapes_demo_3.png','image/png','2676718','2023-04-11 20:49:08','/_uploads/photos/seg_cityscapes_demo_3.png'),(28,'csViewer-1024x547.jpg','http://127.0.0.1:5000/_uploads/photos/csViewer-1024x547.jpg','image/jpeg','74399','2023-04-11 21:34:09','/_uploads/photos/seg_csViewer-1024x547.png');
/*!40000 ALTER TABLE `admin_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_power`
--

DROP TABLE IF EXISTS `admin_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_power` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '权限编号',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '权限名称',
  `type` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '权限类型',
  `code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '权限标识',
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '权限路径',
  `open_type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '打开方式',
  `parent_id` int DEFAULT NULL COMMENT '父类编号',
  `icon` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '图标',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `enable` int DEFAULT NULL COMMENT '是否开启',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_power`
--

LOCK TABLES `admin_power` WRITE;
/*!40000 ALTER TABLE `admin_power` DISABLE KEYS */;
INSERT INTO `admin_power` VALUES (1,'系统管理','0','',NULL,NULL,0,'layui-icon layui-icon-set-fill',1,NULL,NULL,1),(3,'用户管理','1','admin:user:main','/admin/user/','_iframe',1,'layui-icon layui-icon layui-icon layui-icon layui-icon-rate',1,NULL,NULL,1),(4,'权限管理','1','admin:power:main','/admin/power/','_iframe',1,NULL,2,NULL,NULL,1),(9,'角色管理','1','admin:role:main','/admin/role','_iframe',1,'layui-icon layui-icon-username',2,'2021-03-16 22:24:58','2021-03-25 19:15:24',1),(12,'系统监控','1','admin:monitor:main','/admin/monitor','_iframe',1,'layui-icon layui-icon-vercode',5,'2021-03-18 22:05:19','2021-03-25 19:15:27',1),(13,'日志管理','1','admin:log:main','/admin/log','_iframe',1,'layui-icon layui-icon-read',4,'2021-03-18 22:37:10','2021-06-03 11:06:25',1),(17,'图像管理','0',NULL,NULL,NULL,0,'layui-icon layui-icon layui-icon-camera',2,'2021-03-19 18:56:23','2023-04-09 23:20:04',1),(18,'语义分割','1','admin:file:main','/admin/file','_iframe',17,'layui-icon layui-icon layui-icon layui-icon-camera',5,'2021-03-19 18:57:19','2023-04-14 15:45:10',1),(21,'权限增加','2','admin:power:add','','',4,'layui-icon layui-icon-add-circle',1,'2021-03-22 19:43:52','2021-03-25 19:15:22',1),(22,'用户增加','2','admin:user:add','','',3,'layui-icon layui-icon-add-circle',1,'2021-03-22 19:45:40','2021-03-25 19:15:17',1),(23,'用户编辑','2','admin:user:edit','','',3,'layui-icon layui-icon-rate',2,'2021-03-22 19:46:15','2021-03-25 19:15:18',1),(24,'用户删除','2','admin:user:remove','','',3,'layui-icon None',3,'2021-03-22 19:46:51','2021-03-25 19:15:18',1),(25,'权限编辑','2','admin:power:edit','','',4,'layui-icon layui-icon-edit',2,'2021-03-22 19:47:36','2021-03-25 19:15:22',1),(26,'用户删除','2','admin:power:remove','','',4,'layui-icon layui-icon-delete',3,'2021-03-22 19:48:17','2021-03-25 19:15:23',1),(27,'用户增加','2','admin:role:add','','',9,'layui-icon layui-icon-add-circle',1,'2021-03-22 19:49:09','2021-03-25 19:15:24',1),(28,'角色编辑','2','admin:role:edit','','',9,'layui-icon layui-icon-edit',2,'2021-03-22 19:49:41','2021-03-25 19:15:25',1),(29,'角色删除','2','admin:role:remove','','',9,'layui-icon layui-icon-delete',3,'2021-03-22 19:50:15','2021-03-25 19:15:26',1),(30,'角色授权','2','admin:role:power','','',9,'layui-icon layui-icon-component',4,'2021-03-22 19:50:54','2021-03-25 19:15:26',1),(31,'图片增加','2','admin:file:add','','',18,'layui-icon layui-icon-add-circle',1,'2021-03-22 19:58:05','2021-03-25 19:15:28',1),(32,'图片删除','2','admin:file:delete','','',18,'layui-icon layui-icon-delete',2,'2021-03-22 19:58:45','2021-03-25 19:15:29',1),(44,'数据字典','1','admin:dict:main','/admin/dict','_iframe',1,'layui-icon layui-icon-console',6,'2021-04-16 13:59:49','2023-04-11 16:45:29',0),(45,'字典增加','2','admin:dict:add','','',44,'layui-icon ',1,'2021-04-16 14:00:59','2021-04-16 14:00:59',1),(46,'字典修改','2','admin:dict:edit','','',44,'layui-icon ',2,'2021-04-16 14:01:33','2021-04-16 14:01:33',1),(47,'字典删除','2','admin:dict:remove','','',44,'layui-icon ',3,'2021-04-16 14:02:06','2021-04-16 14:02:06',1),(48,'部门管理','1','admin:dept:main','/dept','_iframe',1,'layui-icon layui-icon-group',3,'2021-06-01 16:22:11','2023-04-11 16:45:25',0),(49,'部门增加','2','admin:dept:add','','',48,'layui-icon None',1,'2021-06-01 17:35:52','2021-06-01 17:36:15',1),(50,'部门编辑','2','admin:dept:edit','','',48,'layui-icon ',2,'2021-06-01 17:36:41','2021-06-01 17:36:41',1),(51,'部门删除','2','admin:dept:remove','','',48,'layui-icon None',3,'2021-06-01 17:37:15','2021-06-01 17:37:26',1),(52,'定时任务','0','','','',0,'layui-icon layui-icon-log',3,'2021-06-22 21:09:01','2023-04-09 23:19:02',0),(53,'任务管理','1','admin:task:main','/admin/task','_iframe',52,'layui-icon ',1,'2021-06-22 21:15:00','2021-06-22 21:15:00',1),(54,'任务增加','2','admin:task:add','','',53,'layui-icon ',1,'2021-06-22 22:20:54','2021-06-22 22:20:54',1),(55,'任务修改','2','admin:task:edit','','',53,'layui-icon ',2,'2021-06-22 22:21:34','2021-06-22 22:21:34',1),(56,'任务删除','2','admin:task:remove','','',53,'layui-icon ',3,'2021-06-22 22:22:18','2021-06-22 22:22:18',1),(57,'邮件管理','1','admin:mail:main','/admin/mail','_iframe',1,'layui-icon layui-icon layui-icon-release',7,'2022-10-11 11:21:05','2023-04-11 16:45:30',0),(58,'邮件发送','2','admin:mail:add','','',57,'layui-icon layui-icon-ok-circle',1,'2022-10-11 11:22:26','2022-10-11 11:22:26',1),(59,'邮件删除','2','admin:mail:remove','','',57,'layui-icon layui-icon layui-icon-close',2,'2022-10-11 11:23:06','2022-10-11 11:23:18',1),(60,'拓展插件','0','','','',0,'layui-icon layui-icon layui-icon-senior',2,'2022-12-18 12:28:19','2023-04-09 23:19:04',0),(61,'插件管理','1','admin:plugin:main','/plugin','_iframe',60,'layui-icon layui-icon layui-icon layui-icon ',1,'2022-12-18 12:30:13','2022-12-18 13:57:20',1),(62,'启禁插件','2','admin:plugin:enable','','',61,'layui-icon ',1,'2022-12-18 13:25:37','2022-12-18 13:25:37',1),(63,'删除插件','2','admin:plugin:remove','','',61,'layui-icon layui-icon ',2,'2022-12-18 13:26:30','2022-12-18 13:27:17',1);
/*!40000 ALTER TABLE `admin_power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  `details` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '详情',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `enable` int DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role`
--

LOCK TABLES `admin_role` WRITE;
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` VALUES (1,'管理员','admin',NULL,'管理员',1,NULL,NULL,1),(2,'普通用户','common',NULL,'只有查看，没有增删改权限',2,'2021-03-22 20:02:38','2021-04-01 22:29:56',1);
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_power`
--

DROP TABLE IF EXISTS `admin_role_power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_power` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标识',
  `power_id` int DEFAULT NULL COMMENT '用户编号',
  `role_id` int DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `power_id` (`power_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  CONSTRAINT `admin_role_power_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`),
  CONSTRAINT `admin_role_power_ibfk_2` FOREIGN KEY (`power_id`) REFERENCES `admin_power` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_power`
--

LOCK TABLES `admin_role_power` WRITE;
/*!40000 ALTER TABLE `admin_role_power` DISABLE KEYS */;
INSERT INTO `admin_role_power` VALUES (265,1,2),(266,3,2),(267,4,2),(268,9,2),(269,12,2),(270,13,2),(271,17,2),(272,18,2),(273,44,2),(274,48,2),(334,1,1),(335,3,1),(336,4,1),(337,9,1),(338,12,1),(339,13,1),(340,17,1),(341,18,1),(342,21,1),(343,22,1),(344,23,1),(345,24,1),(346,25,1),(347,26,1),(348,27,1),(349,28,1),(350,29,1),(351,30,1),(352,31,1),(353,32,1),(354,44,1),(355,45,1),(356,46,1),(357,47,1),(358,48,1),(359,49,1),(360,50,1),(361,51,1),(362,52,1),(363,53,1),(364,54,1),(365,55,1),(366,56,1),(367,57,1),(368,58,1),(369,59,1),(370,60,1),(371,61,1),(372,62,1),(373,63,1);
/*!40000 ALTER TABLE `admin_role_power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password_hash` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '哈希密码',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '创建时间',
  `enable` int DEFAULT NULL COMMENT '启用',
  `realname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '真实名字',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '头像',
  `dept_id` int DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES (1,'admin','pbkdf2:sha256:150000$raM7mDSr$58fe069c3eac01531fc8af85e6fc200655dd2588090530084d182e6ec9d52c85',NULL,'2021-06-01 17:28:55',1,'超级管理','要是不能把握时机，就要终身蹭蹬，一事无成！','http://127.0.0.1:5000/_uploads/photos/1617291580000.jpg',1),(9,'zcx','pbkdf2:sha256:260000$ytd8B2MwLYnUqCoJ$bdcb4abf8502d9ae39c72c74c01a9a39eb54cac8d390e702f20818147b7af086','2023-04-11 13:51:52','2023-04-11 13:51:56',1,'zeta',NULL,'/static/admin/admin/images/avatar.jpg',NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_role`
--

DROP TABLE IF EXISTS `admin_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标识',
  `user_id` int DEFAULT NULL COMMENT '用户编号',
  `role_id` int DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `admin_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`),
  CONSTRAINT `admin_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_role`
--

LOCK TABLES `admin_user_role` WRITE;
/*!40000 ALTER TABLE `admin_user_role` DISABLE KEYS */;
INSERT INTO `admin_user_role` VALUES (21,1,1),(25,9,2);
/*!40000 ALTER TABLE `admin_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('5d0692c3b831');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apscheduler_jobs`
--

DROP TABLE IF EXISTS `apscheduler_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apscheduler_jobs` (
  `id` varchar(191) NOT NULL,
  `next_run_time` double DEFAULT NULL,
  `job_state` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_apscheduler_jobs_next_run_time` (`next_run_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apscheduler_jobs`
--

LOCK TABLES `apscheduler_jobs` WRITE;
/*!40000 ALTER TABLE `apscheduler_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `apscheduler_jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-18 19:49:53
