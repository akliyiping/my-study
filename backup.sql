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
  `label` varchar(100) NOT NULL COMMENT '唯一标识',
  `name` varchar(100) DEFAULT NULL,
  `image_url` varchar(300) DEFAULT NULL,
  `price` decimal(10,1) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL COMMENT '装备类型',
  PRIMARY KEY (`label`),
  UNIQUE KEY `equipment_label_uindex` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES ('an_ying_zhan_fu','暗影战斧','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/29.png',2090.0,'gongji'),('ba_zhe_chong_zhuang','霸者重装','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/75.png',2070.0,'fangyu'),('bao_lie_zhi_jia','暴烈之甲','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/81.png',1950.0,'fangyu'),('ben_lang_wen_zhang','奔狼纹章','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/95.png',2090.0,'fangyu'),('bi_shou','匕首','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/16.png',290.0,'gongji'),('bing_hen_zhi_wo','冰痕之握','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/97.png',2020.0,'fangyu'),('bing_shuang_chang_mao','冰霜长矛','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/96.png',1980.0,'gongji'),('bing_shuang_fa_zhang','冰霜法杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/44.png',2100.0,'fashu'),('bo_ji_quan_tao','搏击拳套','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/17.png',320.0,'gongji'),('bo_xue_zhe_zhi_nu','博学者之怒','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/43.png',2300.0,'fashu'),('bu_jia','布甲','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/63.png',220.0,'fangyu'),('bu_si_niao_zhi_yan','不死鸟之眼','http://img.18183.com/uploads/allimg/170328/36-1F32QK246.png',2100.0,'fangyu'),('bu_xiang_zheng_zhao','不祥征兆','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/76.png',2180.0,'fangyu'),('chi_re_zhi_pei_zhe','炽热支配者','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/41.png',1950.0,'fashu'),('chong_neng_quan_tao','冲能拳套','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/86.png',550.0,'gongji'),('chuan_yun_gong','穿云弓','https://img.18183.com/uploads/allimg/180820/237-1PR0154330143.jpg',1100.0,'gongji'),('chun_jing_cang_qiong','纯净苍穹','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/88.png',2230.0,'gongji'),('da_bang','大棒','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/35.png',820.0,'fashu'),('di_kang_zhi_xue','抵抗之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/52.png',710.0,'yidong'),('fan_shang_ci_jia','反伤刺甲','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/72.png',1840.0,'fangyu'),('feng_bao_ju_jian','风暴巨剑','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/13.png',910.0,'gongji'),('feng_ling_wen_zhang','风灵纹章','//img.18183.com/uploads/allimg/170627/70-1F62GJ522.jpg',1180.0,'fangyu'),('feng_ming_zhi_huan','凤鸣指环','//img.18183.com/uploads/allimg/170627/70-1F62GH953.jpg',1010.0,'fangyu'),('feng_zhi_qing_yu','风之轻语','//img.18183.com/uploads/allimg/170627/70-1F62GJ007.jpg',1010.0,'fangyu'),('fu_wen_da_jian','符文大剑','//img.18183.com/uploads/allimg/171023/70-1G0231F232.png',2160.0,'daye'),('gu_wu_zhi_dun','鼓舞之盾','//img.18183.com/uploads/allimg/170627/70-1F62GK020.jpg',1210.0,'fangyu'),('guang_hui_zhi_jian','光辉之剑','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/37.png',780.0,'fashu'),('hong_lian_dou_peng','红莲斗篷','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/74.png',1830.0,'fangyu'),('hong_ma_nao','红玛瑙','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/62.png',300.0,'fangyu'),('hui_xiang_zhi_zhang','回响之杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/82.png',2100.0,'fashu'),('hui_yue','辉月','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/94.png',1990.0,'fashu'),('ji_bu_zhi_xue','疾步之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/98.png',530.0,'yidong'),('ji_han_feng_bao','极寒风暴','http://img.18183.com/uploads/allimg/170328/36-1F32QK455.png',2100.0,'fangyu'),('ji_su_zhan_xue','急速战靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/55.png',710.0,'yidong'),('ji_ying','极影','//img.18183.com/uploads/allimg/170627/70-1F62GK501.jpg',1910.0,'fangyu'),('jin_hua_shui_jing','进化水晶','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/39.png',720.0,'fashu'),('jin_se_sheng_jian','金色圣剑','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/92.png',2060.0,'fashu'),('jin_wei_rong_yao','近卫荣耀','//img.18183.com/uploads/allimg/170206/70-1F2061T002.png',2010.0,'fangyu'),('jiu_shu_zhi_yi','救赎之翼','//img.18183.com/uploads/allimg/170627/70-1F62GQ014.jpg',1800.0,'fangyu'),('ju_ren_zhi_wo','巨人之握','//img.18183.com/uploads/allimg/171023/70-1G0231F204.png',1800.0,'daye'),('kang_mo_pi_feng','抗魔披风','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/64.png',220.0,'fangyu'),('kuang_bao_shuang_ren','狂暴双刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/18.png',890.0,'gongji'),('lan_bao_shi','蓝宝石','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/32.png',220.0,'fashu'),('lei_ming_ren','雷鸣刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/85.png',450.0,'gongji'),('leng_jing_zhi_xue','冷静之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/53.png',710.0,'yidong'),('li_liang_yao_dai','力量腰带','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/66.png',900.0,'fangyu'),('lian_jin_hu_fu','炼金护符','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/33.png',120.0,'fashu'),('mei_ying_mian_zhao','魅影面罩','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/38.png',1020.0,'fashu'),('meng_yan_zhi_ya','梦魇之牙','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/93.png',2050.0,'fashu'),('mi_fa_zhi_xue','秘法之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/54.png',710.0,'yidong'),('ming_dao_si_ming','名刀·司命','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/22.png',1760.0,'gongji'),('mo_nu_dou_peng','魔女斗篷','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/78.png',2120.0,'fangyu'),('mo_shi','末世','http://img.18183.com/uploads/allimg/170328/36-1F32QK114.png',2160.0,'gongji'),('po_jun','破军','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/30.png',2950.0,'gongji'),('po_mo_dao','破魔刀','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/20.png',2000.0,'gongji'),('po_sui_sheng_bei','破碎圣杯','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/91.png',900.0,'fashu'),('po_xiao','破晓','https://img.18183.com/uploads/allimg/180820/237-1PR0154213X5.jpg',3400.0,'gongji'),('qi_xie_zhi_ren','泣血之刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/24.png',1740.0,'gongji'),('ri_mian','日冕','//img.18183.com/uploads/allimg/170206/70-1F2061SA9.png',790.0,'gongji'),('rong_lian_zhi_xin','熔炼之心','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/67.png',900.0,'fangyu'),('shan_dian_bi_shou','闪电匕首','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/27.png',1840.0,'gongji'),('shen_su_zhi_xue','神速之靴','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/50.png',250.0,'yidong'),('shen_yin_dou_peng','神隐斗篷','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/68.png',1020.0,'fangyu'),('sheng_bei','圣杯','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/40.png',1800.0,'fashu'),('sheng_zhe_fa_dian','圣者法典','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/34.png',500.0,'fashu'),('shi_shen_zhi_shu','噬神之书','http://img.18183.duoku.com/uploads/allimg/161012/36-161012140008.png',2090.0,'fashu'),('shi_zhi_yu_yan','时之预言','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/47.png',2090.0,'fashu'),('shou_hu_zhe_zhi_kai','守护者之铠','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/70.png',730.0,'fangyu'),('shou_lie_kuan_ren','狩猎宽刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/49.png',250.0,'daye'),('su_ji_zhi_qiang','速击之枪','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/87.png',890.0,'gongji'),('sui_xing_chui','碎星锤','http://img.18183.com/uploads/allimg/180502/194-1P502152641.jpg',2100.0,'gongji'),('tan_lan_zhi_shi','贪婪之噬','//img.18183.com/uploads/allimg/171023/70-1G0231F102.png',2160.0,'daye'),('ti_shen_shui_jing','提神水晶','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/65.png',140.0,'fangyu'),('tie_jian','铁剑','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/15.png',250.0,'gongji'),('tong_ku_mian_ju','痛苦面具','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/45.png',2040.0,'fashu'),('wu_jin_zhan_ren','无尽战刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/25.png',2140.0,'gongji'),('wu_zhu_fa_zhang','巫术法杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/46.png',2120.0,'fashu'),('xi_xie_zhi_lian','吸血之镰','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/12.png',410.0,'gongji'),('xian_zhe_de_bi_hu','贤者的庇护','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/80.png',2080.0,'fangyu'),('xian_zhe_zhi_shu','贤者之书','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/48.png',2990.0,'fashu'),('xie_mo_zhi_nu','血魔之怒','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/83.png',2120.0,'fangyu'),('xie_zu_zhi_shu','血族之书','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/36.png',1240.0,'fashu'),('xu_wu_fa_zhang','虚无法杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/42.png',2110.0,'fashu'),('xue_shan_yuan_dun','雪山圆盾','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/69.png',900.0,'fangyu'),('xue_shi_bao_shi','学识宝石','//img.18183.com/uploads/allimg/170627/70-1F62GHH5.jpg',300.0,'fangyu'),('xun_shou_li_fu','巡守利斧','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/57.png',750.0,'daye'),('ying_ren','影刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/28.png',2070.0,'gongji'),('ying_ren_zhi_zu','影忍之足','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/51.png',710.0,'yidong'),('you_ji_wan_dao','游击弯刀','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/56.png',750.0,'daye'),('yuan_su_zhang','元素杖','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/90.png',540.0,'fashu'),('yun_xing','陨星','//img.18183.com/uploads/allimg/170609/70-1F609101559.png',1080.0,'gongji'),('zhi_cai_zhi_ren','制裁之刃','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/89.png',1800.0,'gongji'),('zhou_zhu_dian_ji','咒术典籍','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/31.png',300.0,'fashu'),('zhu_ri_zhi_gong','逐日之弓','http://img.18183.com/uploads/allimg/170328/36-1F32QJ230.png',2100.0,'gongji'),('zhui_ji_dao_feng','追击刀锋','http://img.bugu.18183.com/db_18183/static/wzry/static/images/equips/58.png',750.0,'daye'),('zong_shi_zhi_li','宗师之力','//img.18183.com/uploads/allimg/170206/70-1F2061SP7.png',2100.0,'gongji');
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
  `size` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_property_unit_equipment_label_fk` (`equipment_label`),
  KEY `equipment_property_unit_property_unit_label_fk` (`unit_label`),
  CONSTRAINT `equipment_property_unit_equipment_label_fk` FOREIGN KEY (`equipment_label`) REFERENCES `equipment` (`label`),
  CONSTRAINT `equipment_property_unit_property_unit_label_fk` FOREIGN KEY (`unit_label`) REFERENCES `property_unit` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='装备属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_property_unit`
--

LOCK TABLES `equipment_property_unit` WRITE;
/*!40000 ALTER TABLE `equipment_property_unit` DISABLE KEYS */;
INSERT INTO `equipment_property_unit` VALUES (1,'po_xiao','physical_attack',50),(2,'po_xiao','attack_speed_percentage',35),(3,'po_xiao','crit_rate_percentage',15),(4,'xian_zhe_zhi_shu','magic_attack',400),(5,'xian_zhe_zhi_shu','maximum_life',1400),(6,'po_jun','physical_attack',180),(8,'bo_xue_zhe_zhi_nu','magic_attack',240),(9,'chun_jing_cang_qiong','attack_speed_percentage',40),(10,'chun_jing_cang_qiong','crit_rate_percentage',20),(11,'bu_xiang_zheng_zhao','physical_defense',270),(12,'bu_xiang_zheng_zhao','maximum_life',1200),(13,'fu_wen_da_jian','magic_attack',100),(14,'fu_wen_da_jian','maximum_magic',400),(17,'mo_shi','physical_attack',60),(18,'mo_shi','attack_speed_percentage',30),(19,'mo_shi','physical_blood_draw_percentage',10),(20,'tan_lan_zhi_shi','physical_attack',40),(21,'tan_lan_zhi_shi','attack_speed_percentage',15),(22,'tan_lan_zhi_shi','moving_speed_percentage',8),(23,'wu_jin_zhan_ren','physical_attack',130),(24,'wu_jin_zhan_ren','crit_effect',40),(25,'wu_jin_zhan_ren','crit_rate_percentage',20),(26,'xie_mo_zhi_nu','physical_attack',20),(27,'xie_mo_zhi_nu','maximum_life',1000),(28,'wu_zhu_fa_zhang','magic_attack',140),(29,'wu_zhu_fa_zhang','maximum_magic',400),(30,'wu_zhu_fa_zhang','maximum_life',400),(31,'wu_zhu_fa_zhang','moving_speed_percentage',8),(32,'mo_nu_dou_peng','magic_defense',360),(33,'mo_nu_dou_peng','maximum_life',1000),(34,'xu_wu_fa_zhang','magic_attack',240),(35,'xu_wu_fa_zhang','maximum_life',300),(36,'sui_xing_chui','physical_attack',80),(37,'sui_xing_chui','cooling_shortening_percentage',10),(38,'hui_xiang_zhi_zhang','magic_attack',240),(39,'hui_xiang_zhi_zhang','moving_speed_percentage',7),(40,'ji_han_feng_bao','cooling_shortening_percentage',20),(41,'ji_han_feng_bao','maximum_magic',500),(42,'ji_han_feng_bao','physical_defense',360),(43,'bu_si_niao_zhi_yan','magic_defense',240),(44,'bu_si_niao_zhi_yan','maximum_life',1200),(45,'bing_shuang_fa_zhang','magic_attack',150),(46,'bing_shuang_fa_zhang','maximum_life',1050),(47,'zhu_ri_zhi_gong','attack_speed_percentage',25),(48,'zhu_ri_zhi_gong','crit_rate_percentage',15),(49,'zong_shi_zhi_li','physical_attack',60),(50,'zong_shi_zhi_li','crit_rate_percentage',20),(51,'zong_shi_zhi_li','maximum_magic',400),(52,'zong_shi_zhi_li','maximum_life',400),(53,'shi_zhi_yu_yan','magic_attack',160),(54,'shi_zhi_yu_yan','maximum_life',800),(55,'shi_zhi_yu_yan','maximum_magic',600),(56,'shi_shen_zhi_shu','magic_attack',180),(57,'shi_shen_zhi_shu','cooling_shortening_percentage',10),(58,'shi_shen_zhi_shu','maximum_life',800),(59,'shi_shen_zhi_shu','spell_vampire_percentage',25),(60,'ben_lang_wen_zhang','maximum_life',1000),(61,'ben_lang_wen_zhang','moving_speed_percentage',10),(62,'an_ying_zhan_fu','physical_attack',85),(63,'an_ying_zhan_fu','cooling_shortening_percentage',15),(64,'an_ying_zhan_fu','maximum_life',500),(65,'an_ying_zhan_fu','physical_penetration',200),(66,'xian_zhe_de_bi_hu','physical_defense',140),(67,'xian_zhe_de_bi_hu','magic_defense',140),(68,'ying_ren','attack_speed_percentage',40),(69,'ying_ren','crit_rate_percentage',20),(70,'ying_ren','moving_speed_percentage',5),(71,'ba_zhe_chong_zhuang','maximum_life',2000),(72,'meng_yan_zhi_ya','magic_attack',240),(73,'meng_yan_zhi_ya','moving_speed_percentage',5),(74,'tong_ku_mian_ju','magic_attack',140),(75,'tong_ku_mian_ju','cooling_shortening_percentage',5),(76,'tong_ku_mian_ju','maximum_life',500),(77,'tong_ku_mian_ju','magic_penetration',75),(78,'bing_hen_zhi_wo','cooling_shortening_percentage',10),(79,'bing_hen_zhi_wo','maximum_magic',500),(80,'bing_hen_zhi_wo','physical_defense',200),(81,'bing_hen_zhi_wo','maximum_life',800),(82,'jin_wei_rong_yao','maximum_life',1000),(83,'jin_wei_rong_yao','moving_speed_percentage',10),(84,'po_mo_dao','physical_attack',100),(85,'po_mo_dao','magic_defense',400),(86,'hui_yue','magic_attack',160),(87,'hui_yue','cooling_shortening_percentage',10),(88,'bing_shuang_chang_mao','physical_attack',80),(89,'bing_shuang_chang_mao','maximum_life',600),(90,'bao_lie_zhi_jia','physical_defense',220),(91,'bao_lie_zhi_jia','maximum_life',1000),(92,'chi_re_zhi_pei_zhe','magic_attack',180),(93,'chi_re_zhi_pei_zhe','maximum_magic',600),(94,'chi_re_zhi_pei_zhe','return_magic',15),(95,'ji_ying','maximum_life',1000),(96,'ji_ying','moving_speed_percentage',10),(97,'fan_shang_ci_jia','physical_attack',40),(98,'fan_shang_ci_jia','physical_defense',420),(99,'shan_dian_bi_shou','attack_speed_percentage',30),(100,'shan_dian_bi_shou','crit_rate_percentage',20),(101,'shan_dian_bi_shou','moving_speed_percentage',8),(102,'hong_lian_dou_peng','physical_defense',240),(103,'hong_lian_dou_peng','maximum_life',1000),(104,'jiu_shu_zhi_yi','maximum_life',1000),(105,'jiu_shu_zhi_yi','moving_speed_percentage',10),(106,'zhi_cai_zhi_ren','physical_attack',100),(107,'zhi_cai_zhi_ren','physical_blood_draw_percentage',10),(108,'sheng_bei','magic_attack',180),(109,'sheng_bei','cooling_shortening_percentage',15),(110,'sheng_bei','return_magic',25),(111,'ju_ren_zhi_wo','physical_defense',120),(112,'ju_ren_zhi_wo','physical_defense',120),(113,'ju_ren_zhi_wo','maximum_life',750),(114,'ming_dao_si_ming','physical_attack',60),(115,'ming_dao_si_ming','cooling_shortening_percentage',5),(116,'qi_xie_zhi_ren','physical_attack',100),(117,'qi_xie_zhi_ren','physical_blood_draw_percentage',25),(118,'xie_zu_zhi_shu','magic_attack',75),(119,'xie_zu_zhi_shu','cooling_shortening_percentage',10),(120,'gu_wu_zhi_dun','maximum_life',500),(121,'gu_wu_zhi_dun','moving_speed',5),(122,'feng_ling_wen_zhang','maximum_life',500),(123,'feng_ling_wen_zhang','moving_speed',5),(124,'chuan_yun_gong','physical_attack',40),(125,'chuan_yun_gong','attack_speed_percentage',10),(126,'yun_xing','physical_attack',45),(127,'yun_xing','cooling_shortening_percentage',10),(128,'shen_yin_dou_peng','magic_defense',120),(129,'shen_yin_dou_peng','maximum_life',700),(130,'shen_yin_dou_peng','return_blood',50),(131,'mei_ying_mian_zhao','magic_attack',70),(132,'mei_ying_mian_zhao','maximum_life',300),(133,'feng_zhi_qing_yu','maximum_life',500),(134,'feng_zhi_qing_yu','moving_speed',5),(135,'feng_ming_zhi_huan','maximum_life',500),(136,'feng_ming_zhi_huan','moving_speed',5),(137,'feng_bao_ju_jian','physical_attack',80),(138,'po_sui_sheng_bei','magic_attack',80),(139,'po_sui_sheng_bei','cooling_shortening_percentage',5),(140,'po_sui_sheng_bei','return_magic',20),(141,'rong_lian_zhi_xin','maximum_life',700),(142,'xue_shan_yuan_dun','cooling_shortening_percentage',10),(143,'xue_shan_yuan_dun','maximum_magic',400),(144,'xue_shan_yuan_dun','physical_defense',110),(145,'li_liang_yao_dai','maximum_life',1000),(146,'kuang_bao_shuang_ren','attack_speed_percentage',15),(147,'kuang_bao_shuang_ren','crit_rate_percentage',10),(148,'kuang_bao_shuang_ren','moving_speed',5),(149,'su_ji_zhi_qiang','attack_speed_percentage',25),(150,'da_bang','magic_attack',120),(151,'ri_mian','physical_attack',40),(152,'ri_mian','maximum_life',300),(153,'guang_hui_zhi_jian','maximum_life',400),(154,'guang_hui_zhi_jian','maximum_magic',400),(155,'zhui_ji_dao_feng','physical_attack',40),(156,'zhui_ji_dao_feng','cooling_shortening_percentage',10),(157,'xun_shou_li_fu','maximum_life',500),(158,'you_ji_wan_dao','magic_attack',120),(159,'shou_hu_zhe_zhi_kai','physical_defense',210),(160,'jin_hua_shui_jing','maximum_life',400),(161,'jin_hua_shui_jing','maximum_magic',400),(162,'di_kang_zhi_xue','magic_defense',110),(163,'di_kang_zhi_xue','moving_speed',60),(164,'ying_ren_zhi_zu','moving_speed',60),(165,'ying_ren_zhi_zu','physical_attack',110),(166,'leng_jing_zhi_xue','cooling_shortening_percentage',15),(167,'leng_jing_zhi_xue','moving_speed',60),(168,'ji_su_zhan_xue','moving_speed',60),(169,'ji_su_zhan_xue','attack_speed_percentage',30),(170,'mi_fa_zhi_xue','return_magic',25),(171,'mi_fa_zhi_xue','moving_speed',60),(172,'mi_fa_zhi_xue','magic_penetration',75),(173,'chong_neng_quan_tao','crit_rate_percentage',15),(174,'yuan_su_zhang','magic_attack',80),(175,'ji_bu_zhi_xue','moving_speed',60),(176,'sheng_zhe_fa_dian','magic_attack',20),(177,'sheng_zhe_fa_dian','cooling_shortening_percentage',8),(178,'lei_ming_ren','physical_attack',40),(179,'xi_xie_zhi_lian','physical_attack',10),(180,'xi_xie_zhi_lian','physical_blood_draw_percentage',8),(181,'bo_ji_quan_tao','crit_rate_percentage',8),(182,'xue_shi_bao_shi','moving_speed',5),(183,'zhou_zhu_dian_ji','magic_attack',40),(184,'hong_ma_nao','maximum_life',300),(185,'bi_shou','attack_speed_percentage',10),(186,'tie_jian','physical_attack',20),(187,'shou_lie_kuan_ren','da_ye',1),(188,'you_ji_wan_dao','da_ye',1),(189,'xun_shou_li_fu','da_ye',1),(190,'zhui_ji_dao_feng','da_ye',1),(191,'fu_wen_da_jian','da_ye',1),(192,'ju_ren_zhi_wo','da_ye',1),(193,'tan_lan_zhi_shi','da_ye',1),(194,'shen_su_zhi_xue','moving_speed',30),(195,'bu_jia','physical_defense',90),(196,'kang_mo_pi_feng','magic_defense',90),(197,'lan_bao_shi','maximum_magic',300),(198,'ti_shen_shui_jing','return_blood',30),(199,'lian_jin_hu_fu','return_magic',10);
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
  `unique` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `property_unit_label_uindex` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_unit`
--

LOCK TABLES `property_unit` WRITE;
/*!40000 ALTER TABLE `property_unit` DISABLE KEYS */;
INSERT INTO `property_unit` VALUES (5,'physical_attack','物理攻击',0),(6,'magic_attack','法术攻击',0),(7,'attack_speed_percentage','攻击速度百分比',0),(8,'crit_rate_percentage','暴击率百分比',0),(9,'physical_blood_draw_percentage','物理吸血百分比',0),(10,'cooling_shortening_percentage','冷却缩短百分比',0),(11,'moving_speed','移动速度',0),(12,'moving_speed_percentage','移动速度百分比',0),(13,'spell_vampire_percentage','法术吸血百分比',0),(14,'physical_penetration','物理穿透',0),(15,'magic_penetration','法术穿透',0),(16,'physical_defense','物理防御',0),(17,'magic_defense','法术防御',0),(18,'maximum_life','最大生命',0),(19,'maximum_magic','最大法力',0),(20,'return_blood','每5秒回血',0),(21,'crit_effect','暴击效果百分比',0),(22,'return_magic','每5秒回蓝',0),(24,'da_ye','打野',0);
/*!40000 ALTER TABLE `property_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_unit_price`
--

DROP TABLE IF EXISTS `property_unit_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `property_unit_price` (
  `unit_label` varchar(100) NOT NULL,
  `price` decimal(10,1) DEFAULT NULL,
  PRIMARY KEY (`unit_label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='属性单价表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_unit_price`
--

LOCK TABLES `property_unit_price` WRITE;
/*!40000 ALTER TABLE `property_unit_price` DISABLE KEYS */;
INSERT INTO `property_unit_price` VALUES ('attack_speed_percentage',29.0),('cooling_shortening_percentage',43.8),('crit_effect',10.0),('crit_rate_percentage',40.0),('magic_attack',7.5),('magic_defense',2.4),('magic_penetration',2.6),('maximum_life',1.0),('maximum_magic',0.7),('moving_speed',8.3),('moving_speed_percentage',20.0),('physical_attack',12.5),('physical_blood_draw_percentage',35.6),('physical_defense',2.4),('physical_penetration',3.0),('return_blood',4.6),('return_magic',12.0),('spell_vampire_percentage',30.0);
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

-- Dump completed on 2019-03-25 14:10:23
