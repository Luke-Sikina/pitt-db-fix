-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: auth
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `accessRule_gate`
--

DROP TABLE IF EXISTS `accessRule_gate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessRule_gate` (
  `accessRule_id` binary(16) NOT NULL,
  `gate_id` binary(16) NOT NULL,
  PRIMARY KEY (`accessRule_id`,`gate_id`),
  KEY `FK6re4kcq9tyl45jv9yg584doem` (`gate_id`),
  CONSTRAINT `FK6re4kcq9tyl45jv9yg584doem` FOREIGN KEY (`gate_id`) REFERENCES `access_rule` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKe6l5ee7f207958mm3anpsmqom` FOREIGN KEY (`accessRule_id`) REFERENCES `access_rule` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessRule_gate`
--

LOCK TABLES `accessRule_gate` WRITE;
/*!40000 ALTER TABLE `accessRule_gate` DISABLE KEYS */;
INSERT INTO `accessRule_gate` VALUES (_binary 'XºΩ«ºb\Ì¨T©\Ê\⁄+',_binary 'Xª\Òøºb\Ì¨T©\Ê\⁄+'),(_binary 'XΩÉ’ºb\Ì¨T©\Ê\⁄+',_binary 'Xª\Òøºb\Ì¨T©\Ê\⁄+'),(_binary 'XÃä\rºb\Ì¨T©\Ê\⁄+',_binary 'Xª\Òøºb\Ì¨T©\Ê\⁄+'),(_binary 'X\‘mºb\Ì¨T©\Ê\⁄+',_binary 'X”≤=ºb\Ì¨T©\Ê\⁄+'),(_binary 'X\‘UÖºb\Ì¨T©\Ê\⁄+',_binary 'X”≤=ºb\Ì¨T©\Ê\⁄+');
/*!40000 ALTER TABLE `accessRule_gate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessRule_privilege`
--

DROP TABLE IF EXISTS `accessRule_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessRule_privilege` (
  `privilege_id` binary(16) NOT NULL,
  `accessRule_id` binary(16) NOT NULL,
  PRIMARY KEY (`privilege_id`,`accessRule_id`),
  KEY `FK89rf30kbf9d246jty2dd7qk99` (`accessRule_id`),
  CONSTRAINT `FK7x47w81gpua380qd7lp9x94l1` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK89rf30kbf9d246jty2dd7qk99` FOREIGN KEY (`accessRule_id`) REFERENCES `access_rule` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessRule_privilege`
--

LOCK TABLES `accessRule_privilege` WRITE;
/*!40000 ALTER TABLE `accessRule_privilege` DISABLE KEYS */;
INSERT INTO `accessRule_privilege` VALUES (_binary '\ˆ[B_ÜpD\Z\Œs°øD',_binary '\r\Ù\"ÆB\Ó®\Û©\Ê\⁄+'),(_binary '6\‰hR˚\‹\Ì¨T©\Ê\⁄+',_binary '\r!77ÆB\Ó®\Û©\Ê\⁄+'),(_binary '0\ÿ$\“\Ó¨T©\Ê\⁄+',_binary '0◊Ñ\›$\“\Ó¨T©\Ê\⁄+'),(_binary 'XºZ\Íºb\Ì¨T©\Ê\⁄+',_binary 'XºΩ«ºb\Ì¨T©\Ê\⁄+'),(_binary 'XºZ\Íºb\Ì¨T©\Ê\⁄+',_binary 'XΩÉ’ºb\Ì¨T©\Ê\⁄+'),(_binary 'XºZ\Íºb\Ì¨T©\Ê\⁄+',_binary 'XÃä\rºb\Ì¨T©\Ê\⁄+'),(_binary 'XºZ\Íºb\Ì¨T©\Ê\⁄+',_binary 'X\Õz\ˆºb\Ì¨T©\Ê\⁄+'),(_binary 'XºZ\Íºb\Ì¨T©\Ê\⁄+',_binary 'X\‘mºb\Ì¨T©\Ê\⁄+'),(_binary 'XºZ\Íºb\Ì¨T©\Ê\⁄+',_binary 'X\‘UÖºb\Ì¨T©\Ê\⁄+'),(_binary 'p≥P\ÁÇ7\Ó®\Û©\Ê\⁄+',_binary 'fo	Ç7\Ó®\Û©\Ê\⁄+'),(_binary '°˛FE\ÿ\Ó¨T©\Ê\⁄+',_binary 'ó\¬\Û±E\ÿ\Ó¨T©\Ê\⁄+');
/*!40000 ALTER TABLE `accessRule_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `access_rule`
--

DROP TABLE IF EXISTS `access_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_rule` (
  `uuid` binary(16) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rule` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `type` int DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `checkMapKeyOnly` bit(1) NOT NULL,
  `checkMapNode` bit(1) NOT NULL,
  `subAccessRuleParent_uuid` binary(16) DEFAULT NULL,
  `isGateAnyRelation` bit(1) NOT NULL,
  `isEvaluateOnlyByGates` bit(1) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `FK8rovvx363ui99ce21sksmg6uy` (`subAccessRuleParent_uuid`),
  CONSTRAINT `FK8rovvx363ui99ce21sksmg6uy` FOREIGN KEY (`subAccessRuleParent_uuid`) REFERENCES `access_rule` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_rule`
--

LOCK TABLES `access_rule` WRITE;
/*!40000 ALTER TABLE `access_rule` DISABLE KEYS */;
INSERT INTO `access_rule` VALUES (_binary '\r\Ù\"ÆB\Ó®\Û©\Ê\⁄+','ALLOW_NON_PROXY_REQUESTS','Permit requests to non proxy endpoints','$.[\'Target Service\']',11,'^/(?!proxy).*$',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary '\r!77ÆB\Ó®\Û©\Ê\⁄+','ALLOW_UPLOADER','Permit requests to uploader endpoints','$.[\'Target Service\']',11,'^/proxy/uploader.*$',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary '0◊Ñ\›$\“\Ó¨T©\Ê\⁄+','Secret Dataframe','Dataframes that cannot be accessed','$..expectedResultType',4,'SECRET_ADMIN_DATAFRAME',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary '0\◊–ì$\“\Ó¨T©\Ê\⁄+','Secret Dataframe Query Route Regex','Dataframes that cannot be accessed','$.[\'Target Service\']',11,'((/query.*/(sync|status))|(/query))$',_binary '\0',_binary '\0',_binary '0◊Ñ\›$\“\Ó¨T©\Ê\⁄+',_binary '\0',_binary '\0'),(_binary 'Xª\Òøºb\Ì¨T©\Ê\⁄+','Aggregate Only Access','Allow Access to Aggregate Resource','$..resourceUUID',4,'e5d58781-be8a-4b0a-842d-a18e424c3457',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary 'XºΩ«ºb\Ì¨T©\Ê\⁄+','HPDS Aggregate Counts','HPDS counts','$..expectedResultType',4,'COUNT',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary 'XΩÉ’ºb\Ì¨T©\Ê\⁄+','HPDS Aggregate Cross Counts','HPDS cross counts','$..expectedResultType',4,'CROSS_COUNT',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary 'XÃä\rºb\Ì¨T©\Ê\⁄+','AR_INFO_COLUMN_LISTING','Allow query to info_column_listing','$..expectedResultType',4,'INFO_COLUMN_LISTING',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary 'X\Õz\ˆºb\Ì¨T©\Ê\⁄+','AR_ONLY_SEARCH','Can do /search','$.[\'Target Service\']',6,'/search',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary 'X”≤=ºb\Ì¨T©\Ê\⁄+','Aggregate Only Access','Allow Access to Aggregate Resource','$..resourceUUID',4,'e5d58781-be8a-4b0a-842d-a18e424c3457',_binary '\0',_binary '\0',_binary 'XºΩ«ºb\Ì¨T©\Ê\⁄+',_binary '\0',_binary '\0'),(_binary 'X\‘mºb\Ì¨T©\Ê\⁄+','HPDS Aggregate Observation Counts','HPDS observation Counts','$..expectedResultType',4,'OBSERVATION_COUNT',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary 'X\‘UÖºb\Ì¨T©\Ê\⁄+','HPDS Aggregate Observation Cross Counts','HPDS observation cross Counts','$..expectedResultType',4,'OBSERVATION_CROSS_COUNT',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary 'fo	Ç7\Ó®\Û©\Ê\⁄+','PROXY_QUERY_PROTOTYPE','Proxy','$.[\'Target Service\']',11,'(/proxy/.*)$',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary 'ó\¬\Û±E\ÿ\Ó¨T©\Ê\⁄+','EXPLORE_VARIANT','Sync query for variant explorer','$..expectedResultType',11,'(VARIANT_COUNT_FOR_QUERY|AGGREGATE_VCF_EXCERPT)',_binary '\0',_binary '\0',NULL,_binary '\0',_binary '\0'),(_binary 'ò∫≠E\ÿ\Ó¨T©\Ê\⁄+','EXPLORE_VARIANT_URI','Sync query for variant explorer','$.[\'Target Service\']',4,'/query/sync',_binary '\0',_binary '\0',_binary 'ó\¬\Û±E\ÿ\Ó¨T©\Ê\⁄+',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `access_rule` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `connection`
--

DROP TABLE IF EXISTS `connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connection` (
  `uuid` binary(16) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `subprefix` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `requiredFields` varchar(9000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connection`
--

LOCK TABLES `connection` WRITE;
/*!40000 ALTER TABLE `connection` DISABLE KEYS */;
INSERT INTO `connection` VALUES (_binary 'X\Œ∆†ºb\Ì¨T©\Ê\⁄+','Manual Token Connection','manual-token','','[{\"label\":\"Account Name\", \"id\":\"name\"}]'),(_binary 'ó˝\0-\√f∞\ÿBôèà]\◊','Google','google-oauth2','google-oauth2|','[{\"label\":\"Email\", \"id\":\"email\"}]');
/*!40000 ALTER TABLE `connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_custom_schema_history`
--

DROP TABLE IF EXISTS `flyway_custom_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_custom_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_custom_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_custom_schema_history`
--

LOCK TABLES `flyway_custom_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_custom_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_custom_schema_history` VALUES (1,'1','<< Flyway Baseline >>','BASELINE','<< Flyway Baseline >>',NULL,'airflow','2023-03-06 21:03:29',0,1),(2,'2','CONFIGURE PIC SURE APPLICATION','SQL','V2__CONFIGURE_PIC_SURE_APPLICATION.sql',1627206148,'airflow','2023-03-06 21:03:29',23,1),(3,'3','CONFIGURE JUPYTERHUB APPLICATION','SQL','V3__CONFIGURE_JUPYTERHUB_APPLICATION.sql',-696964133,'airflow','2023-03-06 21:03:29',14,1),(4,'4','CREATE AGGREGATE RULES AND USER','SQL','V4__CREATE_AGGREGATE_RULES_AND_USER.sql',-1063912974,'airflow','2023-03-06 21:03:30',138,1),(5,'5','ADD CROSS COUNT RULES','SQL','V5__ADD_CROSS_COUNT_RULES.sql',628682706,'airflow','2023-03-06 21:03:30',16,1),(6,'6','FIX CONNECTION CONFIGURATION ERROR','SQL','V6__FIX_CONNECTION_CONFIGURATION_ERROR.sql',-78242370,'airflow','2023-03-06 21:03:30',4,1),(7,'7','FIX CONNECTION CONFIGURATION FORREAL','SQL','V7__FIX_CONNECTION_CONFIGURATION_FORREAL.sql',-854485080,'airflow','2023-03-06 21:03:30',6,1),(8,'8','SITE ADMIN','SQL','V8__SITE_ADMIN.sql',-1514253181,'airflow','2023-05-26 15:44:35',15,1),(9,'9','ADD SAD ROLE TO INST USER','SQL','V9__ADD_SAD_ROLE_TO_INST_USER.sql',-1951566876,'airflow','2023-07-11 15:41:26',8,1),(10,'10','ADD SAD ROLE','SQL','V10__ADD_SAD_ROLE.sql',-1262862159,'airflow','2023-07-17 18:46:07',23,1),(11,'11','VARIANT EXPLORER','SQL','V11__VARIANT_EXPLORER.sql',996665871,'airflow','2024-01-08 16:19:55',31,1),(12,'12','ADD RULES','SQL','V12__ADD_RULES.sql',-105451562,'airflow','2024-01-08 16:22:00',23,1),(13,'13','FIX LEADING SPACES','SQL','V13__FIX_LEADING_SPACES.sql',-66360102,'airflow','2024-05-13 13:49:04',8,1);
/*!40000 ALTER TABLE `flyway_custom_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'1','CREATE AUTH INITIAL','SQL','V1__CREATE_AUTH_INITIAL.sql',534393030,'airflow','2023-03-06 21:02:31',361,1),(2,'2','MODIFY USER TABLE COLUMNS','SQL','V2__MODIFY_USER_TABLE_COLUMNS.sql',267548040,'airflow','2023-03-06 21:02:31',92,1),(3,'3','ADD COLUMNS PRIVILEGE TABLE','SQL','V3__ADD_COLUMNS_PRIVILEGE_TABLE.sql',-397948975,'airflow','2023-03-06 21:02:31',86,1),(4,'4','ADD CREATE USER STORED PROCEDURE','SQL','V4__ADD_CREATE_USER_STORED_PROCEDURE.sql',-198365435,'airflow','2024-04-25 18:52:36',28,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `management_view`
--

DROP TABLE IF EXISTS `management_view`;
/*!50001 DROP VIEW IF EXISTS `management_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `management_view` AS SELECT 
 1 AS `uuid`,
 1 AS `role_name`,
 1 AS `privilege_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privilege` (
  `uuid` binary(16) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `application_id` binary(16) DEFAULT NULL,
  `queryScope` varchar(8192) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `queryTemplate` varchar(8192) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_h7iwbdg4ev8mgvmij76881tx8` (`name`),
  KEY `FK61h3jewffk70b5ni4tsi5rhoy` (`application_id`),
  CONSTRAINT `FK61h3jewffk70b5ni4tsi5rhoy` FOREIGN KEY (`application_id`) REFERENCES `application` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

SET @app_uuid = (SELECT uuid FROM application WHERE name = 'PICSURE');

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES (_binary '0\ÿ$\“\Ó¨T©\Ê\⁄+','Un-viewable dataframe privilege for PICSURE application','SECRET_ADMIN_DATAFRAME',@app_uuid,NULL,NULL),(_binary '6\‰hR˚\‹\Ì¨T©\Ê\⁄+','Data Admin privilege for PICSURE application','DATA_ADMIN',@app_uuid,NULL,NULL),(_binary 'S\n¯\Ë\˜D´Ö\Ë\"-t4','JupyterHub user for accessing notebooks','JUPYTER_USER',_binary 'ﬁ≠æ\Ô\È±EÖîSn\”EgR','[]',NULL),(_binary 'XºZ\Íºb\Ì¨T©\Ê\⁄+','Aggregiate Data Sharing privilege for PICSURE application','AGGREGATE',@app_uuid,NULL,NULL),(_binary 'j\À\÷#CÑô\ˆK\‘¬§üÄ','this is a test','NO_EXPORT',@app_uuid,NULL,NULL),(_binary 'pD\Z\ˆ[B_Ü\Œs°øD','PIC-SURE Auth super admin for managing roles/privileges/application/connections','SUPER_ADMIN',NULL,'[]',NULL),(_binary 'p≥P\ÁÇ7\Ó®\Û©\Ê\⁄+','Proxy','PROXY_QUERY_PROTOTYPE',@app_uuid,NULL,NULL),(_binary '°˛FE\ÿ\Ó¨T©\Ê\⁄+','Explore aggregate results for variant','EXPLORE_VARIANT',@app_uuid,NULL,NULL),(_binary '≠!.	oAL∫çÆ	A]´','PIC-SURE Auth admin for managing users.','ADMIN',NULL,'[]',NULL),(_binary '\ˆ[B_ÜpD\Z\Œs°øD','User who cann run any PIC-SURE Query','PIC_SURE_ANY_QUERY',@app_uuid,'[]',NULL);
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `uuid` binary(16) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (_binary '\0-\√f∞\ÿBôèà]◊ó˝','PIC-SURE Top Admin','PIC-SURE Auth Micro App Top admin including Admin and super Admin, can manage roles and privileges directly'),(_binary '0ÿº$\“\Ó¨T©\Ê\⁄+','PIC-SURE Secret Dataframe Requester','PIC-SURE Secret Dataframe Requester.  Can create dataframes, but cannot view them.'),(_binary '6\„¸A˚\‹\Ì¨T©\Ê\⁄+','Data Admin','Allow access to Dataset Requests tab'),(_binary 'X\ŒÀºb\Ì¨T©\Ê\⁄+','PIC-SURE Aggregate Count Role','Can perform count queries using the aggregate resource only.'),(_binary 'y\–\‹6k\rÑ ˘ò¯Ö\–\Ì','PIC-SURE User','Normal user, can run any query including data export.'),(_binary '~\ÙK9#ì’¥\¬\‘gX\‰\Ë','JupyterHub User','The user is able to access JupyterHub as a normal user'),(_binary 'èà]◊ó˝\0-\√f∞\ÿBô','Admin','Normal admin users, can manage other users including assignment of roles and privileges');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_privilege`
--

DROP TABLE IF EXISTS `role_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_privilege` (
  `role_id` binary(16) NOT NULL,
  `privilege_id` binary(16) NOT NULL,
  PRIMARY KEY (`role_id`,`privilege_id`),
  KEY `FKdkwbrwb5r8h74m1v7dqmhp99c` (`privilege_id`),
  CONSTRAINT `FKdkwbrwb5r8h74m1v7dqmhp99c` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsykrtrdngu5iexmbti7lu9xa` FOREIGN KEY (`role_id`) REFERENCES `role` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_privilege`
--

LOCK TABLES `role_privilege` WRITE;
/*!40000 ALTER TABLE `role_privilege` DISABLE KEYS */;
INSERT INTO `role_privilege` VALUES (_binary '0ÿº$\“\Ó¨T©\Ê\⁄+',_binary '0\ÿ$\“\Ó¨T©\Ê\⁄+'),(_binary '6\„¸A˚\‹\Ì¨T©\Ê\⁄+',_binary '6\‰hR˚\‹\Ì¨T©\Ê\⁄+'),(_binary '~\ÙK9#ì’¥\¬\‘gX\‰\Ë',_binary 'S\n¯\Ë\˜D´Ö\Ë\"-t4'),(_binary 'X\ŒÀºb\Ì¨T©\Ê\⁄+',_binary 'XºZ\Íºb\Ì¨T©\Ê\⁄+'),(_binary '\0-\√f∞\ÿBôèà]◊ó˝',_binary 'pD\Z\ˆ[B_Ü\Œs°øD'),(_binary 'X\ŒÀºb\Ì¨T©\Ê\⁄+',_binary '°˛FE\ÿ\Ó¨T©\Ê\⁄+'),(_binary '\0-\√f∞\ÿBôèà]◊ó˝',_binary '≠!.	oAL∫çÆ	A]´'),(_binary 'èà]◊ó˝\0-\√f∞\ÿBô',_binary '≠!.	oAL∫çÆ	A]´'),(_binary 'y\–\‹6k\rÑ ˘ò¯Ö\–\Ì',_binary '\ˆ[B_ÜpD\Z\Œs°øD');
/*!40000 ALTER TABLE `role_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termsOfService`
--

DROP TABLE IF EXISTS `termsOfService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `termsOfService` (
  `uuid` binary(16) NOT NULL,
  `dateUpdated` timestamp NULL DEFAULT NULL,
  `content` varchar(9000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termsOfService`
--

LOCK TABLES `termsOfService` WRITE;
/*!40000 ALTER TABLE `termsOfService` DISABLE KEYS */;
/*!40000 ALTER TABLE `termsOfService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` binary(16) NOT NULL,
  `role_id` binary(16) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`uuid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

set @ls_uuid = (SELECT uuid FROM user WHERE email = 'Lucas.Sikina@childrens.harvard.edu');
set @ca_uuid = (SELECT uuid FROM user WHERE email = 'CommonAreaUser');
set @da_uuid = (SELECT uuid FROM role WHERE name = 'Data Admin');
set @ta_uuid = (SELECT uuid FROM role WHERE name = 'PIC-SURE Top Admin');
set @psu_uuid = (SELECT uuid FROM role WHERE name = 'PIC-SURE User');
set @a_uuid = (SELECT uuid FROM role WHERE name = 'Admin');
set @requester_uuid = (SELECT uuid FROM role WHERE name = 'PIC-SURE Secret Dataframe Requester');
set @agg_uuid = (SELECT uuid FROM role WHERE name = 'PIC-SURE Aggregate Count Role');

LOCK TABLES user_role WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
INSERT INTO `user_role` (user_id, role_id) VALUES
  (@ls_uuid, @ta_uuid), 
  (@ls_uuid, @da_uuid), 
  (@ls_uuid, @psu_uuid), 
  (@ls_uuid, @a_uuid), 
  (@ca_uuid, @requester_uuid), 
  (@ca_uuid, @agg_uuid);
UNLOCK TABLES;

--
-- Final view structure for view `management_view`
--

/*!50001 DROP VIEW IF EXISTS `management_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `management_view` AS select `role`.`uuid` AS `uuid`,`role`.`name` AS `role_name`,`privilege`.`name` AS `privilege_name` from ((`role` join `role_privilege`) join `privilege`) where ((`role`.`uuid` = `role_privilege`.`role_id`) and (`privilege`.`uuid` = `role_privilege`.`privilege_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 18:14:44
