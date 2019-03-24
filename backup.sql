-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: kings
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) DEFAULT NULL COMMENT '唯一标识',
  `name` varchar(100) DEFAULT NULL,
  `image_url` varchar(300) DEFAULT NULL,
  `price` decimal(10,1) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL COMMENT '装备类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `equipment_label_uindex` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'chuan_yun_gong','穿云弓','https://img.18183.com/uploads/allimg/180820/237-1PR0154330143.jpg',1100.0,'gongji'),(2,'po_xiao','破晓','https://img.18183.com/uploads/allimg/180820/237-1PR0154213X5.jpg',3400.0,'gongji'),(3,'jiu_shu_zhi_yi','救赎之翼','//img.18183.com/uploads/allimg/170627/70-1F62GQ014.jpg',1800.0,'fangyu'),(4,'ji_ying','极影','//img.18183.com/uploads/allimg/170627/70-1F62GK501.jpg',1910.0,'fangyu'),(5,'gu_wu_zhi_dun','鼓舞之盾','//img.18183.com/uploads/allimg/170627/70-1F62GK020.jpg',1210.0,'fangyu'),(6,'feng_ling_wen_zhang','风灵纹章','//img.18183.com/uploads/allimg/170627/70-1F62GJ522.jpg',1180.0,'fangyu'),(7,'feng_zhi_qing_yu','风之轻语','//img.18183.com/uploads/allimg/170627/70-1F62GJ007.jpg',1010.0,'fangyu'),(8,'feng_ming_zhi_huan','凤鸣指环','//img.18183.com/uploads/allimg/170627/70-1F62GH953.jpg',1010.0,'fangyu'),(9,'xue_shi_bao_shi','学识宝石','//img.18183.com/uploads/allimg/170627/70-1F62GHH5.jpg',300.0,'fangyu'),(10,'zhu_ri_zhi_gong','逐日之弓','http://img.18183.com/uploads/allimg/170328/36-1F32QJ230.png',2100.0,'gongji'),(11,'shi_shen_zhi_shu','噬神之书','http://img.18183.duoku.com/uploads/allimg/161012/36-161012140008.png',2090.0,'fashu'),(12,'ji_bu_zhi_xue','疾步之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/98.png',530.0,'yidong'),(13,'bing_hen_zhi_wo','冰痕之握','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/97.png',2020.0,'fangyu'),(14,'bing_shuang_chang_mao','冰霜长矛','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/96.png',1980.0,'gongji'),(15,'ben_lang_wen_zhang','奔狼纹章','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/95.png',2090.0,'fangyu'),(16,'hui_yue','辉月','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/94.png',1990.0,'fashu'),(17,'meng_yan_zhi_ya','梦魇之牙','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/93.png',2050.0,'fashu'),(18,'jin_se_sheng_jian','金色圣剑','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/92.png',2060.0,'fashu'),(19,'po_sui_sheng_bei','破碎圣杯','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/91.png',900.0,'fashu'),(20,'yuan_su_zhang','元素杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/90.png',540.0,'fashu'),(21,'zhi_cai_zhi_ren','制裁之刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/89.png',1800.0,'gongji'),(22,'chun_jing_cang_qiong','纯净苍穹','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/88.png',2230.0,'gongji'),(23,'su_ji_zhi_qiang','速击之枪','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/87.png',890.0,'gongji'),(24,'chong_neng_quan_tao','冲能拳套','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/86.png',550.0,'gongji'),(25,'lei_ming_ren','雷鸣刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/85.png',450.0,'gongji'),(26,'xie_mo_zhi_nu','血魔之怒','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/83.png',2120.0,'fangyu'),(27,'hui_xiang_zhi_zhang','回响之杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/82.png',2100.0,'fashu'),(28,'bao_lie_zhi_jia','暴烈之甲','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/81.png',1950.0,'fangyu'),(29,'xian_zhe_de_bi_hu','贤者的庇护','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/80.png',2080.0,'fangyu'),(30,'ji_han_feng_bao','极寒风暴','http://img.18183.com/uploads/allimg/170328/36-1F32QK455.png',2100.0,'fangyu'),(31,'mo_nu_dou_peng','魔女斗篷','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/78.png',2120.0,'fangyu'),(32,'bu_si_niao_zhi_yan','不死鸟之眼','http://img.18183.com/uploads/allimg/170328/36-1F32QK246.png',2100.0,'fangyu'),(33,'bu_xiang_zheng_zhao','不祥征兆','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/76.png',2180.0,'fangyu'),(34,'ba_zhe_chong_zhuang','霸者重装','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/75.png',2070.0,'fangyu'),(35,'hong_lian_dou_peng','红莲斗篷','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/74.png',1830.0,'fangyu'),(36,'fan_shang_ci_jia','反伤刺甲','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/72.png',1840.0,'fangyu'),(37,'jin_wei_rong_yao','近卫荣耀','//img.18183.com/uploads/allimg/170206/70-1F2061T002.png',2010.0,'fangyu'),(38,'shou_hu_zhe_zhi_kai','守护者之铠','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/70.png',730.0,'fangyu'),(39,'xue_shan_yuan_dun','雪山圆盾','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/69.png',900.0,'fangyu'),(40,'shen_yin_dou_peng','神隐斗篷','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/68.png',1020.0,'fangyu'),(41,'rong_lian_zhi_xin','熔炼之心','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/67.png',900.0,'fangyu'),(42,'li_liang_yao_dai','力量腰带','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/66.png',900.0,'fangyu'),(43,'ti_shen_shui_jing','提神水晶','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/65.png',140.0,'fangyu'),(44,'kang_mo_pi_feng','抗魔披风','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/64.png',220.0,'fangyu'),(45,'bu_jia','布甲','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/63.png',220.0,'fangyu'),(46,'hong_ma_nao','红玛瑙','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/62.png',300.0,'fangyu'),(47,'tan_lan_zhi_shi','贪婪之噬','//img.18183.com/uploads/allimg/171023/70-1G0231F102.png',2160.0,'daye'),(48,'ju_ren_zhi_wo','巨人之握','//img.18183.com/uploads/allimg/171023/70-1G0231F204.png',1800.0,'daye'),(49,'fu_wen_da_jian','符文大剑','//img.18183.com/uploads/allimg/171023/70-1G0231F232.png',2160.0,'daye'),(50,'zhui_ji_dao_feng','追击刀锋','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/58.png',750.0,'daye'),(51,'xun_shou_li_fu','巡守利斧','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/57.png',750.0,'daye'),(52,'you_ji_kuan_ren','游击宽刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/56.png',750.0,'daye'),(53,'ji_su_zhan_xue','急速战靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/55.png',710.0,'yidong'),(54,'mi_fa_zhi_xue','秘法之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/54.png',710.0,'yidong'),(55,'leng_jing_zhi_xue','冷静之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/53.png',710.0,'yidong'),(56,'di_kang_zhi_xue','抵抗之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/52.png',710.0,'yidong'),(57,'ying_ren_zhi_zu','影忍之足','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/51.png',710.0,'yidong'),(58,'shen_su_zhi_xue','神速之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/50.png',250.0,'yidong'),(59,'shou_xi_kuan_ren','狩猎宽刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/49.png',250.0,'daye'),(60,'xian_zhe_zhi_shu','贤者之书','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/48.png',2990.0,'fashu'),(61,'shi_zhi_yu_yan','时之预言','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/47.png',2090.0,'fashu'),(62,'wu_zhu_fa_zhang','巫术法杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/46.png',2120.0,'fashu'),(63,'tong_ku_mian_ju','痛苦面具','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/45.png',2040.0,'fashu'),(64,'bing_shuang_fa_zhang','冰霜法杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/44.png',2100.0,'fashu'),(65,'bo_xue_zhe_zhi_nu','博学者之怒','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/43.png',2300.0,'fashu'),(66,'xu_wu_fa_zhang','虚无法杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/42.png',2110.0,'fashu'),(67,'chi_re_zhi_pei_zhe','炽热支配者','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/41.png',1950.0,'fashu'),(68,'sheng_bei','圣杯','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/40.png',1800.0,'fashu'),(69,'jin_hua_shui_jing','进化水晶','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/39.png',720.0,'fashu'),(70,'mei_ying_mian_zhao','魅影面罩','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/38.png',1020.0,'fashu'),(71,'guang_hui_zhi_jian','光辉之剑','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/37.png',780.0,'fashu'),(72,'xie_zu_zhi_shu','血族之书','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/36.png',1240.0,'fashu'),(73,'da_bang','大棒','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/35.png',820.0,'fashu'),(74,'sheng_zhe_fa_dian','圣者法典','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/34.png',500.0,'fashu'),(75,'lian_jin_hu_fu','炼金护符','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/33.png',120.0,'fashu'),(76,'lan_bao_shi','蓝宝石','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/32.png',220.0,'fashu'),(77,'zhou_zhu_dian_ji','咒术典籍','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/31.png',300.0,'fashu'),(78,'po_jun','破军','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/30.png',2950.0,'gongji'),(79,'an_ying_zhan_fu','暗影战斧','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/29.png',2090.0,'gongji'),(80,'ying_ren','影刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/28.png',2070.0,'gongji'),(81,'shan_dian_bi_shou','闪电匕首','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/27.png',1840.0,'gongji'),(82,'zong_shi_zhi_li','宗师之力','//img.18183.com/uploads/allimg/170206/70-1F2061SP7.png',2100.0,'gongji'),(83,'wu_jin_zhan_ren','无尽战刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/25.png',2140.0,'gongji'),(84,'qi_xie_zhi_ren','泣血之刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/24.png',1740.0,'gongji'),(85,'sui_xing_chui','碎星锤','http://img.18183.com/uploads/allimg/180502/194-1P502152641.jpg',2100.0,'gongji'),(86,'ming_dao_si_ming','名刀·司命','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/22.png',1760.0,'gongji'),(87,'mo_shi','末世','http://img.18183.com/uploads/allimg/170328/36-1F32QK114.png',2160.0,'gongji'),(88,'po_mo_dao','破魔刀','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/20.png',2000.0,'gongji'),(89,'yun_xing','陨星','//img.18183.com/uploads/allimg/170609/70-1F609101559.png',1080.0,'gongji'),(90,'kuang_bao_shuang_ren','狂暴双刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/18.png',890.0,'gongji'),(91,'bo_ji_quan_tao','搏击拳套','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/17.png',320.0,'gongji'),(92,'bi_shou','匕首','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/16.png',290.0,'gongji'),(93,'tie_jian','铁剑','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/15.png',250.0,'gongji'),(94,'ri_mian','日冕','//img.18183.com/uploads/allimg/170206/70-1F2061SA9.png',790.0,'gongji'),(95,'feng_bao_ju_jian','风暴巨剑','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/13.png',910.0,'gongji'),(96,'xi_xie_zhi_lian','吸血之镰','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/12.png',410.0,'gongji');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_property_unit`
--

DROP TABLE IF EXISTS `equipment_property_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `equipment_property_unit` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `equipment_label` varchar(100) DEFAULT NULL,
  `unit_label` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_property_unit_equipment_label_fk` (`equipment_label`),
  KEY `equipment_property_unit_property_unit_label_fk` (`unit_label`),
  CONSTRAINT `equipment_property_unit_equipment_label_fk` FOREIGN KEY (`equipment_label`) REFERENCES `equipment` (`label`),
  CONSTRAINT `equipment_property_unit_property_unit_label_fk` FOREIGN KEY (`unit_label`) REFERENCES `property_unit` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='装备属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_property_unit`
--

LOCK TABLES `equipment_property_unit` WRITE;
/*!40000 ALTER TABLE `equipment_property_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_property_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_unit`
--

DROP TABLE IF EXISTS `property_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `property_unit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL COMMENT '属性唯一标识',
  `name` varchar(100) DEFAULT NULL COMMENT '属性名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `property_unit_label_uindex` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_unit`
--

LOCK TABLES `property_unit` WRITE;
/*!40000 ALTER TABLE `property_unit` DISABLE KEYS */;
INSERT INTO `property_unit` VALUES (5,'physical_attack','物理攻击'),(6,'magic_attack','法术攻击'),(7,'attack_speed_percentage','攻击速度百分比'),(8,'crit_rate_percentage','暴击率百分比'),(9,'physical_blood_draw_percentage','物理吸血百分比'),(10,'cooling_shortening_percentage','冷却缩短百分比'),(11,'moving_speed','移动速度'),(12,'moving_speed_percentage','移动速度百分比'),(13,'spell_vampire_percentage','法术吸血百分比'),(14,'physical_penetration','物理穿透'),(15,'magic_penetration','法术穿透'),(16,'physical_defense','物理防御'),(17,'magic_defense','法术防御'),(18,'maximum_life','最大生命'),(19,'maximum_magic','最大法力'),(20,'return_blood','每5秒回血'),(21,'crit_effect','暴击效果'),(22,'return_magic','每5秒回蓝');
/*!40000 ALTER TABLE `property_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_unit_price`
--

DROP TABLE IF EXISTS `property_unit_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `property_unit_price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `unit_label` varchar(100) NOT NULL,
  `price` decimal(10,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `property_unit_price_property_unit_label_fk` (`unit_label`),
  CONSTRAINT `property_unit_price_property_unit_label_fk` FOREIGN KEY (`unit_label`) REFERENCES `property_unit` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='属性单价表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_unit_price`
--

LOCK TABLES `property_unit_price` WRITE;
/*!40000 ALTER TABLE `property_unit_price` DISABLE KEYS */;
INSERT INTO `property_unit_price` VALUES (4,'physical_attack',12.5),(5,'magic_attack',7.5),(6,'attack_speed_percentage',29.0),(7,'crit_rate_percentage',40.0),(8,'physical_blood_draw_percentage',35.6),(9,'cooling_shortening_percentage',43.8),(10,'moving_speed',8.3),(11,'moving_speed_percentage',20.0),(12,'spell_vampire_percentage',30.0),(13,'physical_penetration',3.0),(14,'magic_penetration',2.6),(17,'magic_defense',2.4),(18,'physical_defense',2.4),(19,'maximum_life',1.0),(20,'maximum_magic',0.7),(21,'return_blood',4.6),(22,'crit_effect',10.0),(23,'return_magic',12.0);
/*!40000 ALTER TABLE `property_unit_price` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-24  8:40:56