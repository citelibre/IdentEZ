-- MariaDB dump 10.19  Distrib 10.6.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lutece
-- ------------------------------------------------------
-- Server version	10.6.17-MariaDB-1:10.6.17+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


create database lutece;

use lutece;

--
-- Table structure for table `accesscontrol_accesscontrol`
--

DROP TABLE IF EXISTS `accesscontrol_accesscontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_accesscontrol` (
  `id_access_control` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enabled` smallint(6) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(255) DEFAULT '',
  `return_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_access_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_accesscontrol`
--

LOCK TABLES `accesscontrol_accesscontrol` WRITE;
/*!40000 ALTER TABLE `accesscontrol_accesscontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_accesscontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_accesscontroller`
--

DROP TABLE IF EXISTS `accesscontrol_accesscontroller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_accesscontroller` (
  `id_access_controller` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `id_access_control` int(11) DEFAULT NULL,
  `bool_cond` varchar(50) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`),
  KEY `index_ac_accontroller_id` (`id_access_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_accesscontroller`
--

LOCK TABLES `accesscontrol_accesscontroller` WRITE;
/*!40000 ALTER TABLE `accesscontrol_accesscontroller` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_accesscontroller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_age_config`
--

DROP TABLE IF EXISTS `accesscontrol_controller_age_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_age_config` (
  `id_access_controller` int(11) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `age_min` int(11) DEFAULT NULL,
  `age_max` int(11) DEFAULT NULL,
  `error_message` varchar(100) DEFAULT NULL,
  `data_handler` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_age_config`
--

LOCK TABLES `accesscontrol_controller_age_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_age_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_age_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_comment_config`
--

DROP TABLE IF EXISTS `accesscontrol_controller_comment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_comment_config` (
  `id_access_controller` int(11) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_comment_config`
--

LOCK TABLES `accesscontrol_controller_comment_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_comment_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_comment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_tos_config`
--

DROP TABLE IF EXISTS `accesscontrol_controller_tos_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_tos_config` (
  `id_access_controller` int(11) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `error_message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_tos_config`
--

LOCK TABLES `accesscontrol_controller_tos_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_tos_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_tos_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_user_code_config`
--

DROP TABLE IF EXISTS `accesscontrol_controller_user_code_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_user_code_config` (
  `id_access_controller` int(11) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `error_message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_user_code_config`
--

LOCK TABLES `accesscontrol_controller_user_code_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_user_code_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_user_code_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_user_code_data`
--

DROP TABLE IF EXISTS `accesscontrol_controller_user_code_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_user_code_data` (
  `userId` varchar(100) NOT NULL,
  `id_access_control` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `date_validity` date DEFAULT NULL,
  PRIMARY KEY (`userId`,`id_access_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_user_code_data`
--

LOCK TABLES `accesscontrol_controller_user_code_data` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_user_code_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_user_code_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_forms_controller_entrytype_datahandler_config`
--

DROP TABLE IF EXISTS `accesscontrol_forms_controller_entrytype_datahandler_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_forms_controller_entrytype_datahandler_config` (
  `id_access_controller` int(11) NOT NULL,
  `code_question` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_forms_controller_entrytype_datahandler_config`
--

LOCK TABLES `accesscontrol_forms_controller_entrytype_datahandler_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_forms_controller_entrytype_datahandler_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_forms_controller_entrytype_datahandler_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_resource_accesscontrol`
--

DROP TABLE IF EXISTS `accesscontrol_resource_accesscontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_resource_accesscontrol` (
  `id_resource` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `id_access_control` int(11) NOT NULL,
  PRIMARY KEY (`id_resource`,`resource_type`,`id_access_control`),
  KEY `index_ac_accontroller_resource` (`id_resource`,`resource_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_resource_accesscontrol`
--

LOCK TABLES `accesscontrol_resource_accesscontrol` WRITE;
/*!40000 ALTER TABLE `accesscontrol_resource_accesscontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_resource_accesscontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_item`
--

DROP TABLE IF EXISTS `archive_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archive_item` (
  `id_archive_item` int(11) NOT NULL DEFAULT 0,
  `folder_to_archive` varchar(255) DEFAULT NULL,
  `archive_destination` varchar(255) DEFAULT NULL,
  `archive_name` varchar(255) DEFAULT NULL,
  `archive_type` varchar(50) DEFAULT NULL,
  `archive_mime_type` varchar(50) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_archive_item`),
  KEY `archive_item_state_idx` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_item`
--

LOCK TABLES `archive_item` WRITE;
/*!40000 ALTER TABLE `archive_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blobstore_blobstore`
--

DROP TABLE IF EXISTS `blobstore_blobstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blobstore_blobstore` (
  `id_blob` varchar(255) NOT NULL DEFAULT '',
  `blob_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_blob`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blobstore_blobstore`
--

LOCK TABLES `blobstore_blobstore` WRITE;
/*!40000 ALTER TABLE `blobstore_blobstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `blobstore_blobstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL DEFAULT 0,
  `description` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) NOT NULL DEFAULT 'all',
  `hits` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Contact 1','adresse_email_du_contact_1@domaine.com','all',0),(2,'Contact 2','adresse_email_du_contact_2@domaine.com','all',0);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_list`
--

DROP TABLE IF EXISTS `contact_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_list` (
  `id_contact_list` int(11) NOT NULL DEFAULT 0,
  `label_contact_list` varchar(50) NOT NULL DEFAULT '',
  `description_contact_list` varchar(255) NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) NOT NULL DEFAULT 'all',
  `role` varchar(50) NOT NULL DEFAULT 'none',
  `contact_list_order` int(11) NOT NULL DEFAULT 0,
  `is_tos_active` smallint(6) NOT NULL DEFAULT 0,
  `tos_message` mediumtext NOT NULL,
  PRIMARY KEY (`id_contact_list`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_list`
--

LOCK TABLES `contact_list` WRITE;
/*!40000 ALTER TABLE `contact_list` DISABLE KEYS */;
INSERT INTO `contact_list` VALUES (1,'Liste de contacts','Ceci est une liste de contacts','all','none',1,0,'');
/*!40000 ALTER TABLE `contact_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_list_contact`
--

DROP TABLE IF EXISTS `contact_list_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_list_contact` (
  `id_contact_list` int(11) NOT NULL DEFAULT 0,
  `id_contact` int(11) NOT NULL DEFAULT 0,
  `contact_order` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_contact_list`,`id_contact`,`contact_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_list_contact`
--

LOCK TABLES `contact_list_contact` WRITE;
/*!40000 ALTER TABLE `contact_list_contact` DISABLE KEYS */;
INSERT INTO `contact_list_contact` VALUES (1,1,1,0),(1,2,2,0);
/*!40000 ALTER TABLE `contact_list_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_dashboard`
--

DROP TABLE IF EXISTS `core_admin_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_dashboard` (
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_dashboard`
--

LOCK TABLES `core_admin_dashboard` WRITE;
/*!40000 ALTER TABLE `core_admin_dashboard` DISABLE KEYS */;
INSERT INTO `core_admin_dashboard` VALUES ('autoIncludesAdminDashboardComponent',1,4),('editorAdminDashboardComponent',1,3),('featuresAdminDashboardComponent',1,5),('myluteceAuthenticationFilterAdminDashboardComponent',1,3),('searchAdminDashboardComponent',1,2),('usersAdminDashboardComponent',1,1),('workflowAdminDashboardComponent',1,1),('xslExportAdminDashboardComponent',1,6);
/*!40000 ALTER TABLE `core_admin_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist`
--

DROP TABLE IF EXISTS `core_admin_mailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist` (
  `id_mailinglist` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `workgroup` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mailinglist`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist`
--

LOCK TABLES `core_admin_mailinglist` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist` VALUES (1,'admin','admin','all');
/*!40000 ALTER TABLE `core_admin_mailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist_filter`
--

DROP TABLE IF EXISTS `core_admin_mailinglist_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist_filter` (
  `id_mailinglist` int(11) NOT NULL DEFAULT 0,
  `workgroup` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mailinglist`,`workgroup`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist_filter`
--

LOCK TABLES `core_admin_mailinglist_filter` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist_filter` VALUES (1,'all','super_admin');
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_right`
--

DROP TABLE IF EXISTS `core_admin_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_right` (
  `id_right` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `level_right` smallint(6) DEFAULT NULL,
  `admin_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_updatable` int(11) NOT NULL DEFAULT 0,
  `plugin_name` varchar(50) DEFAULT NULL,
  `id_feature_group` varchar(50) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `documentation_url` varchar(255) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `is_external_feature` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_right`),
  KEY `index_right` (`level_right`,`admin_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_right`
--

LOCK TABLES `core_admin_right` WRITE;
/*!40000 ALTER TABLE `core_admin_right` DISABLE KEYS */;
INSERT INTO `core_admin_right` VALUES ('ACCESSCONTROL_MANAGEMENT','accesscontrol.adminFeature.ManageAccessControl.name',1,'jsp/admin/plugins/accesscontrol/ManageAccessControls.jsp','accesscontrol.adminFeature.ManageAccessControl.description',0,'accesscontrol',NULL,NULL,NULL,6,0),('ACCESSRULES_MANAGEMENT','myluteceaccessrules.adminFeature.ManageRules.name',0,'jsp/admin/plugins/myluteceaccessrules/ManageRules.jsp','myluteceaccessrules.adminFeature.ManageRules.description',0,'myluteceaccessrules',NULL,NULL,NULL,14,0),('ADMINAVATAR_MANAGEMENT','adminavatar.adminFeature.ManageAdminAvatar.name',3,'jsp/admin/plugins/adminavatar/ManageAdminAvatar.jsp','adminavatar.adminFeature.ManageAdminAvatar.description',0,'adminavatar',NULL,NULL,NULL,7,0),('BREADCRUMBACCORDION_MANAGEMENT','module.forms.breadcrumbaccordion.adminFeature.manageBreadcrumbAccordion.name',1,'jsp/admin/plugins/forms/modules/breadcrumbaccordion/ManageBreadcrumbAccordion.jsp','module.forms.breadcrumbaccordion.adminFeature.manageBreadcrumbAccordion.description',0,'forms-breadcrumbaccordion','SITE',NULL,NULL,4,0),('CONFIG_DOCUMENT_PRODUCER_MANAGEMENT','module.forms.documentproducer.adminFeature.ManageConfigDocumentProducer.name',1,'jsp/admin/plugins/forms/modules/documentproducer/ManageConfigProducer.jsp?view=getSelectForm','module.forms.documentproducer.adminFeature.ManageConfigDocumentProducer.description',0,'forms-documentproducer',NULL,NULL,NULL,4,0),('CONTACT_MANAGEMENT','contact.adminFeature.contact_management.name',3,'jsp/admin/plugins/contact/ManageContactsHome.jsp','contact.adminFeature.contact_management.description',0,'contact',NULL,NULL,NULL,8,0),('CORE_ADMIN_SITE','portal.site.adminFeature.admin_site.name',2,'jsp/admin/site/AdminSite.jsp','portal.site.adminFeature.admin_site.description',1,NULL,'SITE','ti ti-home-edit','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-site',1,0),('CORE_ADMINDASHBOARD_MANAGEMENT','portal.admindashboard.adminFeature.right_management.name',0,NULL,'portal.admindashboard.adminFeature.right_management.description',0,'','SYSTEM','ti ti-dashboard',NULL,8,0),('CORE_CACHE_MANAGEMENT','portal.system.adminFeature.cache_management.name',0,'jsp/admin/system/ManageCaches.jsp','portal.system.adminFeature.cache_management.description',1,'','SYSTEM','ti ti-clock-edit',NULL,1,0),('CORE_DAEMONS_MANAGEMENT','portal.system.adminFeature.daemons_management.name',0,'jsp/admin/system/ManageDaemons.jsp','portal.system.adminFeature.daemons_management.description',0,'','SYSTEM','ti ti-timeline-event',NULL,7,0),('CORE_DASHBOARD_MANAGEMENT','portal.dashboard.adminFeature.dashboard_management.name',0,NULL,'portal.dashboard.adminFeature.dashboard_management.description',0,'','SYSTEM','ti ti-layout-dashboard',NULL,9,0),('CORE_EDITORS_MANAGEMENT','portal.admindashboard.editorManagement.right.name',2,NULL,'portal.admindashboard.editorManagement.right.description',1,'','SYSTEM','ti ti-tools',NULL,10,0),('CORE_FEATURES_MANAGEMENT','portal.admin.adminFeature.features_management.name',0,NULL,'portal.admin.adminFeature.features_management.description',0,'','SYSTEM','ti ti-apps',NULL,6,0),('CORE_LEVEL_RIGHT_MANAGEMENT','portal.users.adminFeature.level_right_management.name',2,NULL,'portal.users.adminFeature.level_right_management.description',0,'','MANAGERS','ti ti-list-detail',NULL,4,0),('CORE_LINK_SERVICE_MANAGEMENT','portal.insert.adminFeature.linkService_management.name',2,NULL,'portal.insert.adminFeature.linkService_management.description',0,NULL,NULL,'ti ti-link',NULL,1,0),('CORE_LOGS_VISUALISATION','portal.system.adminFeature.logs_visualisation.name',0,'jsp/admin/system/ManageFilesSystem.jsp','portal.system.adminFeature.logs_visualisation.description',1,'','SYSTEM','ti ti-list-search',NULL,4,0),('CORE_MAILINGLISTS_MANAGEMENT','portal.mailinglist.adminFeature.mailinglists_management.name',2,'jsp/admin/mailinglist/ManageMailingLists.jsp','portal.mailinglist.adminFeature.mailinglists_management.description',0,'','MANAGERS','ti ti-mail-cog',NULL,5,0),('CORE_PAGE_TEMPLATE_MANAGEMENT','portal.style.adminFeature.page_template_management.name',0,'jsp/admin/style/ManagePageTemplates.jsp','portal.style.adminFeature.page_template_management.description',0,'','STYLE','ti ti-layout-board',NULL,1,0),('CORE_PLUGINS_MANAGEMENT','portal.system.adminFeature.plugins_management.name',0,'jsp/admin/system/ManagePlugins.jsp','portal.system.adminFeature.plugins_management.description',1,'','SYSTEM','ti ti-apps-filled',NULL,5,0),('CORE_PROPERTIES_MANAGEMENT','portal.site.adminFeature.properties_management.name',2,'jsp/admin/ManageProperties.jsp','portal.site.adminFeature.properties_management.description',0,NULL,'SITE','ti ti-checklist','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-properties',2,0),('CORE_RBAC_MANAGEMENT','portal.rbac.adminFeature.rbac_management.name',0,'jsp/admin/rbac/ManageRoles.jsp','portal.rbac.adminFeature.rbac_management.description',0,'','MANAGERS','ti ti-user-check',NULL,1,0),('CORE_RIGHT_MANAGEMENT','portal.users.adminFeature.right_management.name',0,'jsp/admin/features/ManageRights.jsp','portal.users.adminFeature.right_management.description',0,'','MANAGERS','ti ti-gavel',NULL,6,0),('CORE_ROLES_MANAGEMENT','portal.role.adminFeature.roles_management.name',2,'jsp/admin/role/ManagePageRole.jsp','portal.role.adminFeature.roles_management.description',0,'','MANAGERS','ti ti-list-check',NULL,8,0),('CORE_SEARCH_INDEXATION','portal.search.adminFeature.indexer.name',0,'jsp/admin/search/ManageSearchIndexation.jsp','portal.search.adminFeature.indexer.description',0,'','SYSTEM','ti ti-settings-search',NULL,2,0),('CORE_SEARCH_MANAGEMENT','portal.search.adminFeature.search_management.name',0,NULL,'portal.search.adminFeature.search_management.description',0,'','SYSTEM','ti ti-database-search',NULL,3,0),('CORE_STYLES_MANAGEMENT','portal.style.adminFeature.styles_management.name',0,'jsp/admin/style/ManageStyles.jsp','portal.style.adminFeature.styles_management.description',1,'','STYLE','ti ti-brush',NULL,3,0),('CORE_STYLESHEET_MANAGEMENT','portal.style.adminFeature.stylesheet_management.name',0,'jsp/admin/style/ManageStyleSheets.jsp','portal.style.adminFeature.stylesheet_management.description',1,'','STYLE','ti ti-file-code',NULL,2,0),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT','portal.templates.adminFeature.ManageAutoIncludes.name',1,NULL,'portal.templates.adminFeature.ManageAutoIncludes.description',1,'','STYLE','ti ti-code-circle-2',NULL,4,0),('CORE_USERS_MANAGEMENT','portal.users.adminFeature.users_management.name',2,'jsp/admin/user/ManageUsers.jsp','portal.users.adminFeature.users_management.description',1,'','MANAGERS','ti ti-users',NULL,2,0),('CORE_WORKGROUPS_MANAGEMENT','portal.workgroup.adminFeature.workgroups_management.name',2,'jsp/admin/workgroup/ManageWorkgroups.jsp','portal.workgroup.adminFeature.workgroups_management.description',0,'','MANAGERS','ti ti-users-group',NULL,3,0),('CORE_XSL_EXPORT_MANAGEMENT','portal.xsl.adminFeature.xsl_export_management.name',2,NULL,'portal.xsl.adminFeature.xsl_export_management.description',1,'','SYSTEM','ti ti-file-export',NULL,11,0),('ELASTICDATA_MANAGEMENT','elasticdata.adminFeature.ManageElasticData.name',1,'jsp/admin/plugins/elasticdata/ManageElasticData.jsp','elasticdata.adminFeature.ManageElasticData.description',0,'elasticdata',NULL,NULL,NULL,4,0),('ENTRY_TYPE_MANAGEMENT','genericattributes.adminFeature.manageEntryType.name',1,'jsp/admin/plugins/genericattributes/ManageEntryType.jsp','genericattributes.adminFeature.manageEntryType.description',0,'genericattributes',NULL,NULL,NULL,4,0),('FORMS_CATEGORIES','forms.adminFeature.categoriesForms.name',1,'jsp/admin/plugins/forms/ManageFormsCategories.jsp','forms.adminFeature.categoriesForms.description',0,'forms','APPLICATIONS',NULL,NULL,5,0),('FORMS_MANAGEMENT','forms.adminFeature.manageForms.name',2,'jsp/admin/plugins/forms/ManageForms.jsp','forms.adminFeature.manageForms.description',0,'forms','APPLICATIONS',NULL,NULL,3,0),('FORMS_MULTIVIEW','forms.adminFeature.multiviewForms.name',3,'jsp/admin/plugins/forms/MultiviewForms.jsp','forms.adminFeature.multiviewForms.description',0,'forms','APPLICATIONS',NULL,NULL,2,0),('FORMS_QUESTION_EXPORT_ORDER_MANAGEMENT','forms.adminFeature.manageFormsQuestions.name',1,'jsp/admin/plugins/forms/ManageOrderExportableQuestion.jsp','forms.adminFeature.manageFormsQuestion.description',0,'forms','APPLICATIONS',NULL,NULL,4,0),('HTMLPAGE_MANAGEMENT','htmlpage.adminFeature.htmlpage_management.name',2,'jsp/admin/plugins/htmlpage/ManageHtmlPage.jsp','htmlpage.adminFeature.htmlpage_management.description',0,'htmlpage','SITE',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-htmlpage',3,0),('MATOMO_MANAGEMENT','matomo.adminFeature.ManageMatomo.name',2,'jsp/admin/plugins/matomo/Matomo.jsp','matomo.adminFeature.ManageMatomo.description',0,'matomo','SITE',NULL,NULL,5,0),('MODULENOTIFYGRUMAPPINGMANAGER_MANAGEMENT','modulenotifygrumappingmanager.adminFeature.ManageModulenotifygrumappingmanager.name',0,'jsp/admin/plugins/modulenotifygrumappingmanager/ManageNotifygruMappingManagers.jsp','modulenotifygrumappingmanager.adminFeature.ManageModulenotifygrumappingmanager.description',0,'modulenotifygrumappingmanager',NULL,NULL,NULL,9,0),('MYLUTECE_CACHEUSERATTRIBUTE_MANAGEMENT','module.mylutece.cacheuserattribute.adminFeature.ManageCacheUserAttribute.name',1,'jsp/admin/plugins/mylutece/modules/cacheuserattribute/ManageCacheUserAttributes.jsp','module.mylutece.cacheuserattribute.adminFeature.ManageCacheUserAttribute.description',0,'mylutece-cacheuserattribute',NULL,NULL,NULL,13,0),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER','mylutece.adminFeature.mylutece_management_authentication_filter.name',3,'jsp/admin/plugins/mylutece/security/ManageAuthenticationFilter.jsp','mylutece.adminFeature.mylutece_management_authentication_filter.description',0,'mylutece',NULL,NULL,NULL,12,0),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION','mylutece.adminFeature.mylutece_management_external_application.name',3,'jsp/admin/plugins/mylutece/ManageExternalApplicationUser.jsp','mylutece.adminFeature.mylutece_management_external_application.description',0,'mylutece',NULL,NULL,NULL,11,0),('MYLUTECE_MANAGEMENT','mylutece.adminFeature.mylutece_management.name',2,'jsp/admin/plugins/mylutece/ManageMylutece.jsp','mylutece.adminFeature.mylutece_management.description',0,'mylutece',NULL,NULL,NULL,10,0),('POLL_MANAGEMENT','poll.adminFeature.Manage.name',1,'jsp/admin/plugins/poll/ManagePollForms.jsp','poll.adminFeature.Manage.description',0,'poll',NULL,NULL,NULL,15,0),('PROFILES_MANAGEMENT','profiles.adminFeature.profiles_management.name',0,'jsp/admin/plugins/profiles/ManageProfiles.jsp','profiles.adminFeature.profiles_management.description',0,'profiles','USERS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles',1,0),('PROFILES_VIEWS_MANAGEMENT','profiles.adminFeature.views_management.name',0,'jsp/admin/plugins/profiles/ManageViews.jsp','profiles.adminFeature.views_management.description',0,'profiles','USERS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles',2,0),('REFERENCELIST_MANAGEMENT','referencelist.adminFeature.ReferenceListManage.name',0,'jsp/admin/plugins/referencelist/ManageReferences.jsp','referencelist.adminFeature.ReferenceListManage.description',0,'referencelist',NULL,NULL,NULL,16,0),('REGULAR_EXPRESSION_MANAGEMENT','regularexpression.adminFeature.regularexpression_management.name',0,'jsp/admin/plugins/regularexpression/ManageRegularExpression.jsp','regularexpression.adminFeature.regularexpression_management.description',0,'regularexpression','SYSTEM',NULL,NULL,16,0),('SEO_MANAGEMENT','seo.adminFeature.seo_management.name',0,'jsp/admin/plugins/seo/ManageSEO.jsp','seo.adminFeature.seo_management.description',0,'seo',NULL,NULL,NULL,17,0),('SOLR_CONFIGURATION_MANAGEMENT','search.solr.adminFeature.configuration.title',1,'jsp/admin/search/solr/ManageSearchConfiguration.jsp','search.solr.adminFeature.configuration.description',0,'solr','SYSTEM',NULL,'',14,0),('SOLR_FIELDS_MANAGEMENT','search.solr.adminFeature.fields.title',1,'jsp/admin/search/solr/ManageSolrFields.jsp','search.solr.adminFeature.fields.description',0,'solr','SYSTEM',NULL,'',15,0),('SOLR_INDEX_MANAGEMENT','search.solr.adminFeature.title',1,'jsp/admin/search/solr/ManageSearchIndexation.jsp','search.solr.adminFeature.description',0,'solr','SYSTEM',NULL,'',13,0),('SYSTEMINFO_MANAGEMENT','systeminfo.adminFeature.systeminfo_management.name',0,'jsp/admin/plugins/systeminfo/ManageSystemInfo.jsp','systeminfo.adminFeature.systeminfo_management.description',0,'systeminfo','SYSTEM',NULL,NULL,17,0),('TEMPLATE_STEP_MANAGEMENT','module.forms.template.adminFeature.manageTemplates.name',1,'jsp/admin/plugins/forms/modules/template/ManageTemplatesStep.jsp','module.forms.template.adminFeature.manageTemplates.description',0,'forms-template','MANAGERS',NULL,NULL,4,0),('TERMOFSERVICE_MANAGEMENT','termofservice.adminFeature.ManageTOS.name',0,'jsp/admin/plugins/termofservice/ManageEntrys.jsp','termofservice.adminFeature.ManageTOS.description',0,'termofservice',NULL,NULL,NULL,18,0),('UNITS_MANAGEMENT','unittree.adminFeature.unitsManagement.name',2,'jsp/admin/plugins/unittree/ManageUnits.jsp','unittree.adminFeature.unitsManagement.description',0,'unittree','SYSTEM',NULL,'',18,0),('USERCODES_MANAGEMENT','accesscontrol.adminFeature.ManageUserCodes.name',1,'jsp/admin/plugins/accesscontrol/ManageControllerUserCode.jsp','accesscontrol.adminFeature.ManageUserCodes.description',0,'accesscontrol',NULL,NULL,NULL,4,0),('VERIFYBACKURL_MANAGEMENT','verifybackurl.adminFeature.ManageVerifybackurl.name',1,'jsp/admin/plugins/verifybackurl/ManageAuthorizedUrls.jsp','verifybackurl.adminFeature.ManageVerifybackurl.description',0,'verifybackurl',NULL,NULL,NULL,19,0),('VIEW_TEMP_FILES','filegenerator.adminFeature.temporary_files.name',2,'jsp/admin/plugins/filegenerator/ManageMyFiles.jsp','filegenerator.adminFeature.temporary_files.description',0,NULL,'SYSTEM',NULL,NULL,3,0),('WORKFLOW_MANAGEMENT','workflow.adminFeature.workflow_management.name',3,'jsp/admin/plugins/workflow/ManageWorkflow.jsp','workflow.adminFeature.workflow_management.description',0,'workflow','APPLICATIONS',NULL,NULL,1,0);
/*!40000 ALTER TABLE `core_admin_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role`
--

DROP TABLE IF EXISTS `core_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role` (
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `role_description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role`
--

LOCK TABLES `core_admin_role` WRITE;
/*!40000 ALTER TABLE `core_admin_role` DISABLE KEYS */;
INSERT INTO `core_admin_role` VALUES ('all_site_manager','Site Manager'),('assign_groups','Assigner des groupes aux utilisateurs'),('assign_roles','Assigner des roles aux utilisateurs'),('CREATE_REFERENCE_IMPORT','Import csv file'),('forms_manager','FORMS - Gestion des formulaires'),('forms_multiview','FORMS - Visualisation des résultats des formulaires'),('kibana_dashboards_manager','Gestion des tableaux de bords Kibana'),('mylutece_manager','Gérer les patramètres avancés Mylutece'),('profiles_manager','Profiles management'),('profiles_views_manager','Profiles Views management'),('sollicitation_administrateur','[Sollicitation] Organisation Sollicitations'),('sollicitation_gestionnaires','[Sollicitation] - Gestionnaires des sollicitations'),('sollicitation_instructeurs','[Sollicitation] - Visualisation et traitement des réponses'),('super_admin','Super Administrateur'),('unittree_management','Gestion des entités'),('workflow_manager','Workflow management');
/*!40000 ALTER TABLE `core_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role_resource`
--

DROP TABLE IF EXISTS `core_admin_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role_resource` (
  `rbac_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `resource_type` varchar(50) NOT NULL DEFAULT '',
  `resource_id` varchar(50) NOT NULL DEFAULT '',
  `permission` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rbac_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1931 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role_resource`
--

LOCK TABLES `core_admin_role_resource` WRITE;
/*!40000 ALTER TABLE `core_admin_role_resource` DISABLE KEYS */;
INSERT INTO `core_admin_role_resource` VALUES (1,'all_site_manager','PAGE','*','VIEW'),(2,'all_site_manager','PAGE','*','MANAGE'),(3,'super_admin','INSERT_SERVICE','*','*'),(4,'all_site_manager','PORTLET_TYPE','*','*'),(5,'all_site_manager','ADMIN_USER','*','*'),(6,'all_site_manager','SEARCH_SERVICE','*','*'),(7,'all_site_manager','XSL_EXPORT','*','*'),(1907,'forms_manager','FORMS_FORM','*','*'),(1908,'forms_multiview','FORM_PANEL_CONF','*','*'),(1909,'forms_manager','GLOBAL_FORMS_ACTION','',''),(1910,'kibana_dashboards_manager','kibana_dashboard','*','*'),(205,'assign_roles','ROLE_TYPE','*','ASSIGN_ROLE'),(207,'mylutece_manager','MYLUTECE','*','*'),(150,'profiles_manager','PROFILES','*','*'),(151,'profiles_views_manager','PROFILES_VIEWS','*','*'),(165,'CREATE_REFERENCE_IMPORT','REFERENCE_IMPORT','*','*'),(210,'unittree_management','UNIT_TYPE','*','*'),(912,'workflow_manager','WORKFLOW_ACTION_TYPE','*','*'),(923,'workflow_manager','WORKFLOW_STATE_TYPE','*','*'),(1911,'sollicitation_instructeurs','FORMS_FORM','1','VIEW_FORM_RESPONSE'),(1912,'sollicitation_instructeurs','FORM_PANEL_CONF','forms-unittree','*'),(1913,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','5','*'),(1914,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','6','*'),(1915,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','4','*'),(1916,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','10','*'),(1917,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','3','*'),(1918,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','1','*'),(1919,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','2','*'),(1920,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','4','*'),(1921,'sollicitation_gestionnaires','FORMS_FORM','1','MODIFY'),(1922,'sollicitation_gestionnaires','FORMS_FORM','1','PARAM'),(1923,'sollicitation_gestionnaires','FORMS_FORM','1','PUBLISH'),(1924,'sollicitation_gestionnaires','FORM_PANEL_CONF','forms-unittree-subunit','*'),(1925,'sollicitation_gestionnaires','WORKFLOW_ACTION_TYPE','2','*'),(1926,'sollicitation_gestionnaires','WORKFLOW_STATE_TYPE','3','*'),(1927,'sollicitation_administrateur','FORMS_FORM','1','DELETE'),(1928,'sollicitation_administrateur','FORMS_FORM','1','CREATE'),(1929,'sollicitation_administrateur','GLOBAL_FORMS_ACTION','multiviewconfig','*'),(1930,'sollicitation_administrateur','GLOBAL_FORMS_ACTION','multiviewExport','*');
/*!40000 ALTER TABLE `core_admin_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user`
--

DROP TABLE IF EXISTS `core_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `access_code` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT 0,
  `password` mediumtext DEFAULT NULL,
  `locale` varchar(10) NOT NULL DEFAULT 'fr',
  `level_user` smallint(6) NOT NULL DEFAULT 0,
  `reset_password` smallint(6) NOT NULL DEFAULT 0,
  `accessibility_mode` smallint(6) NOT NULL DEFAULT 0,
  `password_max_valid_date` timestamp NULL DEFAULT NULL,
  `account_max_valid_date` bigint(20) DEFAULT NULL,
  `nb_alerts_sent` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `workgroup_key` varchar(50) DEFAULT 'all',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user`
--

LOCK TABLES `core_admin_user` WRITE;
/*!40000 ALTER TABLE `core_admin_user` DISABLE KEYS */;
INSERT INTO `core_admin_user` VALUES (1,'admin','Admin','admin','admin@lutece.fr',0,'PLAINTEXT:adminadmin','fr',0,0,0,'1980-01-01 00:00:00',NULL,0,'1980-01-01 00:00:00','all');
/*!40000 ALTER TABLE `core_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_anonymize_field`
--

DROP TABLE IF EXISTS `core_admin_user_anonymize_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_anonymize_field` (
  `field_name` varchar(100) NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_anonymize_field`
--

LOCK TABLES `core_admin_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` DISABLE KEYS */;
INSERT INTO `core_admin_user_anonymize_field` VALUES ('access_code',1),('email',1),('first_name',1),('last_name',1);
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_field`
--

DROP TABLE IF EXISTS `core_admin_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_field` (
  `id_user_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `user_field_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user_field`),
  KEY `core_admin_user_field_idx_file` (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_field`
--

LOCK TABLES `core_admin_user_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_preferences`
--

DROP TABLE IF EXISTS `core_admin_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_preferences` (
  `id_user` varchar(100) NOT NULL,
  `pref_key` varchar(100) NOT NULL,
  `pref_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_admin_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_preferences`
--

LOCK TABLES `core_admin_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_admin_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup`
--

DROP TABLE IF EXISTS `core_admin_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup` (
  `workgroup_key` varchar(50) NOT NULL,
  `workgroup_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup`
--

LOCK TABLES `core_admin_workgroup` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup_user`
--

DROP TABLE IF EXISTS `core_admin_workgroup_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup_user` (
  `workgroup_key` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`workgroup_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup_user`
--

LOCK TABLES `core_admin_workgroup_user` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute`
--

DROP TABLE IF EXISTS `core_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute` (
  `id_attribute` int(11) NOT NULL AUTO_INCREMENT,
  `type_class_name` varchar(255) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_shown_in_search` smallint(6) DEFAULT 0,
  `is_shown_in_result_list` smallint(6) DEFAULT 0,
  `is_field_in_line` smallint(6) DEFAULT 0,
  `attribute_position` int(11) DEFAULT 0,
  `plugin_name` varchar(255) DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute`
--

LOCK TABLES `core_attribute` WRITE;
/*!40000 ALTER TABLE `core_attribute` DISABLE KEYS */;
INSERT INTO `core_attribute` VALUES (1,'fr.paris.lutece.portal.business.user.attribute.AttributeComboBox','Profil','',0,0,0,0,0,'profiles',NULL);
/*!40000 ALTER TABLE `core_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute_field`
--

DROP TABLE IF EXISTS `core_attribute_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `DEFAULT_value` mediumtext DEFAULT NULL,
  `is_DEFAULT_value` smallint(6) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT 0,
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute_field`
--

LOCK TABLES `core_attribute_field` WRITE;
/*!40000 ALTER TABLE `core_attribute_field` DISABLE KEYS */;
INSERT INTO `core_attribute_field` VALUES (1,1,NULL,NULL,0,0,0,0,1,1);
/*!40000 ALTER TABLE `core_attribute_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_connections_log`
--

DROP TABLE IF EXISTS `core_connections_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_connections_log` (
  `access_code` varchar(100) DEFAULT NULL,
  `ip_address` varchar(63) DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_status` int(11) DEFAULT NULL,
  KEY `index_connections_log` (`ip_address`,`date_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_connections_log`
--

LOCK TABLES `core_connections_log` WRITE;
/*!40000 ALTER TABLE `core_connections_log` DISABLE KEYS */;
INSERT INTO `core_connections_log` VALUES ('admin','172.22.0.1','2024-03-08 13:48:10',0),('admin','172.22.0.1','2024-03-08 13:48:15',0),('admin','172.22.0.1','2024-03-12 13:57:24',0);
/*!40000 ALTER TABLE `core_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_dashboard`
--

DROP TABLE IF EXISTS `core_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_dashboard` (
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_dashboard`
--

LOCK TABLES `core_dashboard` WRITE;
/*!40000 ALTER TABLE `core_dashboard` DISABLE KEYS */;
INSERT INTO `core_dashboard` VALUES ('CORE_PAGES',2,1),('CORE_SYSTEM',1,2),('CORE_USER',4,1),('CORE_USERS',1,1),('FORMS',3,2),('WORKFLOW',3,1);
/*!40000 ALTER TABLE `core_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_datastore`
--

DROP TABLE IF EXISTS `core_datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_datastore` (
  `entity_key` varchar(255) NOT NULL,
  `entity_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`entity_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_datastore`
--

LOCK TABLES `core_datastore` WRITE;
/*!40000 ALTER TABLE `core_datastore` DISABLE KEYS */;
INSERT INTO `core_datastore` VALUES ('adminavatar.site_property.avatarserver.Url',''),('captcha.defaultProvider','JCaptcha'),('core_banned_domain_names','yopmail.com'),('core.advanced_parameters.access_failures_captcha','1'),('core.advanced_parameters.access_failures_interval','10'),('core.advanced_parameters.access_failures_max','3'),('core.advanced_parameters.account_life_time','12'),('core.advanced_parameters.account_reactivated_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.account_reactivated_mail_subject','Votre compte a bien été réactivé'),('core.advanced_parameters.default_user_language','fr'),('core.advanced_parameters.default_user_level','0'),('core.advanced_parameters.default_user_notification','1'),('core.advanced_parameters.default_user_status','0'),('core.advanced_parameters.email_pattern','^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),('core.advanced_parameters.email_pattern_verify_by',''),('core.advanced_parameters.expired_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.expired_alert_mail_subject','Votre compte a expiré'),('core.advanced_parameters.first_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.first_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.force_change_password_reinit','false'),('core.advanced_parameters.lock_reset_token_to_session','false'),('core.advanced_parameters.maximum_number_password_change',''),('core.advanced_parameters.nb_alert_account','2'),('core.advanced_parameters.notify_user_password_expired',''),('core.advanced_parameters.other_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.other_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.password_duration','120'),('core.advanced_parameters.password_expired_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.password_expired_mail_subject','Votre mot de passe a expiré'),('core.advanced_parameters.password_format_numero','false'),('core.advanced_parameters.password_format_special_characters','false'),('core.advanced_parameters.password_format_upper_lower_case','false'),('core.advanced_parameters.password_history_size',''),('core.advanced_parameters.password_minimum_length','8'),('core.advanced_parameters.reset_token_validity','60'),('core.advanced_parameters.time_before_alert_account','30'),('core.advanced_parameters.time_between_alerts_account','10'),('core.advanced_parameters.tsw_size_password_change',''),('core.advanced_parameters.use_advanced_security_parameters',''),('core.backOffice.defaultEditor','tinymce'),('core.cache.status.AccessRulesCacheService.enabled','1'),('core.cache.status.asynchronousupload.asynchronousUploadCacheService.enabled','0'),('core.cache.status.BaseUserPreferencesCacheService.enabled','1'),('core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory','1000'),('core.cache.status.DatastoreCacheService.enabled','0'),('core.cache.status.EntryTypeServiceManagerCache.enabled','1'),('core.cache.status.formsCacheService.enabled','1'),('core.cache.status.formsCacheService.overflowToDisk','0'),('core.cache.status.formsCacheService.timeToIdleSeconds','86400'),('core.cache.status.formsCacheService.timeToLiveSeconds','86400'),('core.cache.status.LinksIncludeCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.maxElementsInMemory','1000'),('core.cache.status.MailAttachmentCacheService.diskPersistent','true'),('core.cache.status.MailAttachmentCacheService.enabled','1'),('core.cache.status.MailAttachmentCacheService.maxElementsInMemory','10'),('core.cache.status.MailAttachmentCacheService.overflowToDisk','true'),('core.cache.status.MailAttachmentCacheService.timeToLiveSeconds','7200'),('core.cache.status.MyPortalWidgetContentService.enabled','1'),('core.cache.status.MyPortalWidgetService.enabled','1'),('core.cache.status.PageCacheService.enabled','1'),('core.cache.status.PageCachingFilter.enabled','0'),('core.cache.status.PageCachingFilter(CAUTION:NEVERUSEWITHUSERDYNAMICDATA).enabled','0'),('core.cache.status.pathCacheService.enabled','1'),('core.cache.status.PortalMenuService.enabled','1'),('core.cache.status.PortletCacheService.enabled','0'),('core.cache.status.public_image_resource.enabled','0'),('core.cache.status.SEOFriendlyUrlCacheService.enabled','0'),('core.cache.status.SiteMapService.enabled','1'),('core.cache.status.StaticFilesCachingFilter.enabled','1'),('core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds','604800'),('core.cache.status.workflow.alertGruConfigCacheService.enabled','0'),('core.cache.status.workflow.notifyGruConfigCacheService.enabled','0'),('core.crypto.key','0be4ef16cbc6a541c08c7d68caf113685e4950b4cfbca94e71813c71a1fc0bf7'),('core.daemon.accountLifeTimeDaemon.interval','86400'),('core.daemon.accountLifeTimeDaemon.onStartUp','true'),('core.daemon.alert.interval','43200'),('core.daemon.alert.onStartUp','true'),('core.daemon.alertCleaner.interval','43200'),('core.daemon.alertCleaner.onStartUp','true'),('core.daemon.AlertGruDaemon.interval','86400'),('core.daemon.AlertGruDaemon.onStartUp','true'),('core.daemon.anonymizationDaemon.interval','86400'),('core.daemon.anonymizationDaemon.onStartUp','false'),('core.daemon.archiveDaemon.interval','30'),('core.daemon.archiveDaemon.onStartUp','true'),('core.daemon.archiveIndexer.interval','360'),('core.daemon.archiveIndexer.onStartUp','true'),('core.daemon.automaticActionDaemon.interval','30'),('core.daemon.automaticActionDaemon.onStartUp','true'),('core.daemon.changeStateDaemon.interval','10'),('core.daemon.changeStateDaemon.onStartUp','false'),('core.daemon.chooseStateActionDaemon.interval','10'),('core.daemon.chooseStateActionDaemon.onStartUp','false'),('core.daemon.crmClientSender.interval','60'),('core.daemon.crmClientSender.onStartUp','true'),('core.daemon.fullIndexingDaemon.interval','86400'),('core.daemon.fullIndexingDaemon.onStartUp','true'),('core.daemon.incrementalIndexingDaemon.interval','3000'),('core.daemon.incrementalIndexingDaemon.onStartUp','true'),('core.daemon.indexer.interval','300'),('core.daemon.indexer.onStartUp','true'),('core.daemon.mailSender.interval','86400'),('core.daemon.mailSender.onStartUp','true'),('core.daemon.notifyHistoryCleanerDaemon.interval','10'),('core.daemon.notifyHistoryCleanerDaemon.onStartUp','false'),('core.daemon.seoFriendlyUrlGenerator.interval','3600'),('core.daemon.seoFriendlyUrlGenerator.onStartUp','true'),('core.daemon.seoSitemapGenerator.interval','3600'),('core.daemon.seoSitemapGenerator.onStartUp','true'),('core.daemon.solrindexer.interval','86400'),('core.daemon.solrindexer.onStartUp','true'),('core.daemon.temporaryfilesDaemon.interval','86400'),('core.daemon.temporaryfilesDaemon.onStartUp','false'),('core.daemon.threadLauncherDaemon.interval','86400'),('core.daemon.threadLauncherDaemon.onStartUp','true'),('core.daemon.userControllerCodeDataDaemon.interval','10'),('core.daemon.userControllerCodeDataDaemon.onStartUp','false'),('core.frontOffice.defaultEditor','sceeditor'),('core.plugins.status.accesscontrol-forms.installed','true'),('core.plugins.status.accesscontrol-forms.pool','portal'),('core.plugins.status.accesscontrol.installed','true'),('core.plugins.status.accesscontrol.pool','portal'),('core.plugins.status.address-autocomplete.installed','true'),('core.plugins.status.address.installed','true'),('core.plugins.status.adminavatar.installed','true'),('core.plugins.status.archive-client.installed','true'),('core.plugins.status.archive.installed','true'),('core.plugins.status.archive.pool','portal'),('core.plugins.status.asynchronous-upload.installed','true'),('core.plugins.status.asynchronous-upload.pool','portal'),('core.plugins.status.automaticroleprovider.installed','true'),('core.plugins.status.avatar.installed','true'),('core.plugins.status.blobstore.installed','true'),('core.plugins.status.blobstore.pool','portal'),('core.plugins.status.blobstoreclient.installed','true'),('core.plugins.status.captcha.installed','true'),('core.plugins.status.contact.installed','true'),('core.plugins.status.contact.pool','portal'),('core.plugins.status.filegenerator.installed','true'),('core.plugins.status.filegenerator.pool','portal'),('core.plugins.status.forms-breadcrumbaccordion.installed','true'),('core.plugins.status.forms-breadcrumbaccordion.pool','portal'),('core.plugins.status.forms-documentproducer.installed','true'),('core.plugins.status.forms-documentproducer.pool','portal'),('core.plugins.status.forms-multiviewmapleaflet.installed','true'),('core.plugins.status.forms-solr.installed','true'),('core.plugins.status.forms-template.installed','true'),('core.plugins.status.forms-template.pool','portal'),('core.plugins.status.forms-unittree.installed','true'),('core.plugins.status.forms-unittree.pool','portal'),('core.plugins.status.forms-userassignment.installed','true'),('core.plugins.status.forms-userassignment.pool','portal'),('core.plugins.status.forms.installed','true'),('core.plugins.status.forms.pool','portal'),('core.plugins.status.genericattributes-address.installed','true'),('core.plugins.status.genericattributes-openstreetmap.installed','true'),('core.plugins.status.genericattributes.installed','true'),('core.plugins.status.genericattributes.pool','portal'),('core.plugins.status.grusupply.installed','true'),('core.plugins.status.grusupply.pool','portal'),('core.plugins.status.html.installed','true'),('core.plugins.status.htmlpage.installed','true'),('core.plugins.status.htmlpage.pool','portal'),('core.plugins.status.htmltopdf.installed','true'),('core.plugins.status.jcaptcha.installed','true'),('core.plugins.status.leaflet.installed','true'),('core.plugins.status.limitconnectedusers.installed','true'),('core.plugins.status.matomo.installed','true'),('core.plugins.status.mermaidjs.installed','true'),('core.plugins.status.mermaidjs.pool','portal'),('core.plugins.status.modulenotifygrumappingmanager.installed','true'),('core.plugins.status.modulenotifygrumappingmanager.pool','portal'),('core.plugins.status.mylutece-cacheuserattribute.installed','true'),('core.plugins.status.mylutece-cacheuserattribute.pool','portal'),('core.plugins.status.mylutece-oauth2.installed','true'),('core.plugins.status.mylutece.installed','true'),('core.plugins.status.mylutece.pool','portal'),('core.plugins.status.myluteceaccessrules.installed','true'),('core.plugins.status.myluteceaccessrules.pool','portal'),('core.plugins.status.notifygru-forms.installed','true'),('core.plugins.status.notifygru-forms.pool','portal'),('core.plugins.status.oauth2.installed','true'),('core.plugins.status.poll.installed','true'),('core.plugins.status.poll.pool','portal'),('core.plugins.status.profiles.installed','true'),('core.plugins.status.profiles.pool','portal'),('core.plugins.status.referencelist.installed','true'),('core.plugins.status.referencelist.pool','portal'),('core.plugins.status.regularexpression.installed','true'),('core.plugins.status.regularexpression.pool','portal'),('core.plugins.status.rest.installed','true'),('core.plugins.status.seo.installed','true'),('core.plugins.status.seo.pool','portal'),('core.plugins.status.solr.installed','true'),('core.plugins.status.solr.pool','portal'),('core.plugins.status.systeminfo.installed','true'),('core.plugins.status.termofservice.installed','true'),('core.plugins.status.termofservice.pool','portal'),('core.plugins.status.themecitelibre.installed','true'),('core.plugins.status.unittree.installed','true'),('core.plugins.status.unittree.pool','portal'),('core.plugins.status.unittreeuserassignment.installed','true'),('core.plugins.status.unittreeuserassignment.pool','portal'),('core.plugins.status.userassignment.installed','true'),('core.plugins.status.userassignment.pool','portal'),('core.plugins.status.verifybackurl.installed','true'),('core.plugins.status.verifybackurl.pool','portal'),('core.plugins.status.workflow-alertforms.installed','true'),('core.plugins.status.workflow-alertforms.pool','portal'),('core.plugins.status.workflow-alertgru.installed','true'),('core.plugins.status.workflow-alertgru.pool','portal'),('core.plugins.status.workflow-forms.installed','true'),('core.plugins.status.workflow-forms.pool','portal'),('core.plugins.status.workflow-formsautomaticassignment.installed','true'),('core.plugins.status.workflow-formsautomaticassignment.pool','portal'),('core.plugins.status.workflow-formspdf.installed','true'),('core.plugins.status.workflow-formspdf.pool','portal'),('core.plugins.status.workflow-notifygru.installed','true'),('core.plugins.status.workflow-notifygru.pool','portal'),('core.plugins.status.workflow-rest.installed','true'),('core.plugins.status.workflow-unittree.installed','true'),('core.plugins.status.workflow-unittree.pool','portal'),('core.plugins.status.workflow-userassignment.installed','true'),('core.plugins.status.workflow-userassignment.pool','portal'),('core.plugins.status.workflow.installed','true'),('core.plugins.status.workflow.pool','portal'),('core.startup.time','Jun 7, 2024, 3:24:16 PM'),('core.templates.currentCommonsInclude','Bootstrap5Tabler'),('forms.display.form.columnTitle','true'),('forms.display.form.csv.separator',';'),('leaflet.icon.icons.default.installed','true'),('leaflet.icon.icons.green.installed','true'),('leaflet.icon.icons.red.installed','true'),('leaflet.icon.icons.yellow.installed','true'),('limitconnectedusers.site_property.limit_message.textblock','<div class=\'alert alert-danger\'>Le nombre maximal d\'utilisateur connecté simultanément a été atteint</div>'),('limitconnectedusers.site_property.limit_notification_mailing_list.textblock',''),('limitconnectedusers.site_property.limit_notification_message.textblock','Le nombre maximal d\'utilisateur connecté simultanément a été atteint'),('limitconnectedusers.site_property.limit_notification_sender_name','LUTECE'),('limitconnectedusers.site_property.limit_notification_subject.textblock','Le nombre maximal d\'utilisateur connecté simultanément a été atteint'),('matomo.site_property.server.http.url','http://localhost/'),('matomo.site_property.server.https.url','http://localhost/'),('matomo.site_property.site.id','1'),('matomo.site_property.widget.auth.token','cfa9a798abd584817e2eb94d7bc14bb0'),('mylutece.security.public_url.mylutece.url.createAccount.page','jsp/site/Portal.jsp?page=mylutece&action=createAccount'),('mylutece.security.public_url.mylutece.url.doActionsAll','jsp/site/plugins/mylutece/Do*'),('mylutece.security.public_url.mylutece.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutece&action=lostPassword'),('mylutece.security.public_url.mylutece.url.modifyAccount.page','jsp/site/Portal.jsp?page=mylutece&action=modifyAccount'),('myluteceaccessrules.site_property.application_code',''),('portal.site.site_property.admin_home_url','jsp/admin/AdminMenu.jsp'),('portal.site.site_property.avatar_default','themes/admin/shared/images/unknown.svg'),('portal.site.site_property.back_images','themes/admin/tabler/images/bg_login1.svg, themes/admin/tabler/images/bg_login2.svg'),('portal.site.site_property.bo.showXs.checkbox','1'),('portal.site.site_property.bo.showXsWarning.checkbox','0'),('portal.site.site_property.email','<webmaster email>'),('portal.site.site_property.home_url','jsp/site/Portal.jsp'),('portal.site.site_property.layout.darkmode.checkbox','0'),('portal.site.site_property.layout.menu.checkbox','0'),('portal.site.site_property.layout.readmode.checkbox','0'),('portal.site.site_property.layout.user.darkmode.show.checkbox','1'),('portal.site.site_property.layout.user.menumode.show.checkbox','1'),('portal.site.site_property.layout.user.readmode.show.checkbox','0'),('portal.site.site_property.locale.default','fr'),('portal.site.site_property.login.image',''),('portal.site.site_property.logo_url','themes/admin/shared/images/logo-header-icon.svg'),('portal.site.site_property.meta.author','<author>'),('portal.site.site_property.meta.copyright','<copyright>'),('portal.site.site_property.meta.description','<description>'),('portal.site.site_property.meta.keywords','<keywords>'),('portal.site.site_property.name','CiteLibre IdentEZ'),('portal.site.site_property.noreply_email','no-reply@citelibre.org'),('portal.site.site_property.popup_credits.textblock','&lt;credits text&gt;'),('portal.site.site_property.popup_legal_info.copyright.textblock','&lt;copyright text&gt;'),('portal.site.site_property.popup_legal_info.privacy.textblock','&lt;privacy text&gt;'),('portal.site.site_property.portlet.title.maxlength','75'),('seo.canonicalUrls.enabled','true'),('seo.config.uptodate','true'),('seo.generator.daemon.enabled','true'),('seo.generator.option.addHtmlSuffix','true'),('seo.generator.option.addPath','false'),('seo.replaceUrl.enabled','true'),('seo.rewrite.config.lastUpdate','Last update : Jun 7, 2024, 4:24:31 PM Urls count : 9 Result : OK'),('seo.sitemap.update.log','Last generation : Jun 7, 2024, 4:24:20 PM Urls count : 6 Result : OK'),('seo.sitmap.daemon.enabled','true'),('themecitelibre.site_property.bannerMessage.CloseButton.checkbox','1'),('themecitelibre.site_property.bannerMessage.htmlblock',''),('themecitelibre.site_property.bannerMessage.Position','bottom-right'),('themecitelibre.site_property.bannerMessage.Title',''),('themecitelibre.site_property.bannerMessage.Type','info'),('themecitelibre.site_property.footer.about','CiteLibre is made for cities, by cities, upon open source principals. <br> <a class=\"btn btn-link ps-0\" href=\"//:lutece.paris.fr\" title=\"[#i18n{portal.site.portal_footer.newWindow}] LUTECE website\" target=\"_blank><img src=\"images/poweredby.png\" alt=\"Powered by LUTECE\"></a> '),('themecitelibre.site_property.footer.about.title','A propos'),('themecitelibre.site_property.footer.cookieLabel','Cookies management'),('themecitelibre.site_property.footer.cookieLink','#cookiecitelibrepack'),('themecitelibre.site_property.footer.links.title','Liens importants'),('themecitelibre.site_property.robotIndex.checkbox','1');
/*!40000 ALTER TABLE `core_datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_feature_group`
--

DROP TABLE IF EXISTS `core_feature_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_feature_group` (
  `id_feature_group` varchar(50) NOT NULL DEFAULT '',
  `feature_group_description` varchar(255) DEFAULT NULL,
  `feature_group_label` varchar(100) DEFAULT NULL,
  `feature_group_order` int(11) DEFAULT NULL,
  `feature_group_icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_feature_group`
--

LOCK TABLES `core_feature_group` WRITE;
/*!40000 ALTER TABLE `core_feature_group` DISABLE KEYS */;
INSERT INTO `core_feature_group` VALUES ('APPLICATIONS','portal.features.group.applications.description','portal.features.group.applications.label',3,'ti ti-apps'),('CONTENT','portal.features.group.content.description','portal.features.group.content.label',1,'ti ti-files'),('MANAGERS','portal.features.group.managers.description','portal.features.group.managers.label',5,'ti ti-user-shield'),('SITE','portal.features.group.site.description','portal.features.group.site.label',2,'ti ti-world'),('STYLE','portal.features.group.charter.description','portal.features.group.charter.label',6,'ti ti-brush'),('SYSTEM','portal.features.group.system.description','portal.features.group.system.label',7,'ti ti-shield-lock '),('USERS','portal.features.group.users.description','portal.features.group.users.label',4,'ti ti-users');
/*!40000 ALTER TABLE `core_feature_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_file`
--

DROP TABLE IF EXISTS `core_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext DEFAULT NULL,
  `id_physical_file` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_file`
--

LOCK TABLES `core_file` WRITE;
/*!40000 ALTER TABLE `core_file` DISABLE KEYS */;
INSERT INTO `core_file` VALUES (125,'export_users_csv.xml',125,2523,'application/xml','2005-10-10 08:10:10','INIT_CORE'),(126,'export_users_xml.xml',126,259,'application/xml','2005-10-10 08:10:10','INIT_CORE');
/*!40000 ALTER TABLE `core_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_id_generator`
--

DROP TABLE IF EXISTS `core_id_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_id_generator` (
  `class_name` varchar(250) NOT NULL DEFAULT '',
  `current_value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_id_generator`
--

LOCK TABLES `core_id_generator` WRITE;
/*!40000 ALTER TABLE `core_id_generator` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_id_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_indexer_action`
--

DROP TABLE IF EXISTS `core_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `indexer_name` varchar(255) NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_indexer_action`
--

LOCK TABLES `core_indexer_action` WRITE;
/*!40000 ALTER TABLE `core_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_level_right`
--

DROP TABLE IF EXISTS `core_level_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_level_right` (
  `id_level` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_level_right`
--

LOCK TABLES `core_level_right` WRITE;
/*!40000 ALTER TABLE `core_level_right` DISABLE KEYS */;
INSERT INTO `core_level_right` VALUES (0,'Level 0 - Technical administrator'),(1,'Level 1 - Fonctionnal administrator'),(2,'Level 2 - Site Manager - Webmaster'),(3,'Level 3 - Contributor');
/*!40000 ALTER TABLE `core_level_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_item`
--

DROP TABLE IF EXISTS `core_mail_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_item` (
  `id_mail_queue` int(11) NOT NULL DEFAULT 0,
  `mail_item` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_mail_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_item`
--

LOCK TABLES `core_mail_item` WRITE;
/*!40000 ALTER TABLE `core_mail_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_queue`
--

DROP TABLE IF EXISTS `core_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_queue` (
  `id_mail_queue` int(11) NOT NULL AUTO_INCREMENT,
  `is_locked` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_mail_queue`),
  KEY `is_locked_core_mail_queue` (`is_locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_queue`
--

LOCK TABLES `core_mail_queue` WRITE;
/*!40000 ALTER TABLE `core_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mode`
--

DROP TABLE IF EXISTS `core_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mode` (
  `id_mode` int(11) NOT NULL DEFAULT 0,
  `description_mode` varchar(255) DEFAULT NULL,
  `path` varchar(50) NOT NULL DEFAULT '',
  `output_xsl_method` varchar(50) DEFAULT NULL,
  `output_xsl_version` varchar(50) DEFAULT NULL,
  `output_xsl_media_type` varchar(50) DEFAULT NULL,
  `output_xsl_encoding` varchar(50) DEFAULT NULL,
  `output_xsl_indent` varchar(50) DEFAULT NULL,
  `output_xsl_omit_xml_dec` varchar(50) DEFAULT NULL,
  `output_xsl_standalone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mode`
--

LOCK TABLES `core_mode` WRITE;
/*!40000 ALTER TABLE `core_mode` DISABLE KEYS */;
INSERT INTO `core_mode` VALUES (0,'Normal','normal/','xml','1.0','text/xml','UTF-8','yes','yes',NULL),(1,'Administration','admin/','xml','1.0','text/xml','UTF-8','yes','yes',NULL),(2,'Wap','wml/','xml','1.0','text/xml','UTF-8','yes','yes',NULL);
/*!40000 ALTER TABLE `core_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page`
--

DROP TABLE IF EXISTS `core_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) DEFAULT NULL,
  `page_order` int(11) DEFAULT 0,
  `id_template` int(11) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `code_theme` varchar(80) DEFAULT NULL,
  `node_status` smallint(6) NOT NULL DEFAULT 1,
  `image_content` mediumblob DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT 'NULL',
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `id_authorization_node` int(11) DEFAULT NULL,
  `display_date_update` smallint(6) NOT NULL DEFAULT 0,
  `is_manual_date_update` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_page`),
  KEY `index_page` (`id_template`,`id_parent`),
  KEY `index_childpage` (`id_parent`,`page_order`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page`
--

LOCK TABLES `core_page` WRITE;
/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` VALUES (1,0,'Home','Home Page','2024-01-19 15:25:52',1,1,1,'2024-01-19 15:25:52','none','default',0,'','application/octet-stream',NULL,NULL,1,0,0),(3,1,'Liens Utiles','','2024-05-28 16:37:33',0,1,2,'2024-05-28 16:37:33','none','default',1,NULL,'application/octet-stream',NULL,NULL,1,0,0);
/*!40000 ALTER TABLE `core_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page_template`
--

DROP TABLE IF EXISTS `core_page_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page_template` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page_template`
--

LOCK TABLES `core_page_template` WRITE;
/*!40000 ALTER TABLE `core_page_template` DISABLE KEYS */;
INSERT INTO `core_page_template` VALUES (1,'Home page','skin/site/page_home_demo.html','layout-home.svg'),(2,'One column','skin/site/page_template1.html','layout-one.svg'),(3,'Two columns','skin/site/page_template2.html','layout-two.svg'),(4,'1 + 2 columns','skin/site/page_template4.html','layout-three.svg'),(5,'Two equal columns','skin/site/page_template5.html','layout-four.svg');
/*!40000 ALTER TABLE `core_page_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_physical_file`
--

DROP TABLE IF EXISTS `core_physical_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_physical_file` (
  `id_physical_file` int(11) NOT NULL AUTO_INCREMENT,
  `file_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_physical_file`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_physical_file`
--

LOCK TABLES `core_physical_file` WRITE;
/*!40000 ALTER TABLE `core_physical_file` DISABLE KEYS */;
INSERT INTO `core_physical_file` VALUES (125,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n	\r\n	<xsl:template match=\"users\">\r\n		<xsl:apply-templates select=\"user\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"user\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:value-of select=\"access_code\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"last_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"first_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"email\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"status\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"locale\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"level\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"must_change_password\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"accessibility_mode\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"password_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"account_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"date_last_login\" />\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"roles\" />\r\n		<xsl:apply-templates select=\"rights\" />\r\n		<xsl:apply-templates select=\"workgroups\" />\r\n		<xsl:apply-templates select=\"attributes\" />\r\n		<xsl:text>&#10;</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"roles\">\r\n		<xsl:apply-templates select=\"role\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"role\">\r\n		<xsl:text>;\"role:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"rights\">\r\n		<xsl:apply-templates select=\"right\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"right\">\r\n		<xsl:text>;\"right:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroups\">\r\n		<xsl:apply-templates select=\"workgroup\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroup\">\r\n		<xsl:text>;\"workgroup:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attributes\">\r\n		<xsl:apply-templates select=\"attribute\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attribute\">\r\n		<xsl:text>;\"</xsl:text>\r\n		<xsl:value-of select=\"attribute-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-field-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-value\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(126,'<?xml version=\"1.0\" ?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:template match=\"/ | @* | node()\">\r\n		<xsl:copy>\r\n			<xsl:apply-templates select=\"@* | node()\" />\r\n		</xsl:copy>\r\n	</xsl:template>\r\n</xsl:stylesheet>');
/*!40000 ALTER TABLE `core_physical_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portal_component`
--

DROP TABLE IF EXISTS `core_portal_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portal_component` (
  `id_portal_component` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_portal_component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portal_component`
--

LOCK TABLES `core_portal_component` WRITE;
/*!40000 ALTER TABLE `core_portal_component` DISABLE KEYS */;
INSERT INTO `core_portal_component` VALUES (0,'Portlet'),(1,'Article'),(2,'Article List Portlet'),(3,'Menu Init'),(4,'Main Menu'),(5,'Breadcrum'),(6,'Site Map'),(7,'Tree View'),(8,'Site Map (Admin mode)');
/*!40000 ALTER TABLE `core_portal_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet`
--

DROP TABLE IF EXISTS `core_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet` (
  `id_portlet` int(11) NOT NULL AUTO_INCREMENT,
  `id_portlet_type` varchar(50) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) NOT NULL DEFAULT 0,
  `portlet_order` int(11) DEFAULT NULL,
  `column_no` int(11) DEFAULT NULL,
  `id_style` int(11) DEFAULT NULL,
  `accept_alias` smallint(6) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `display_portlet_title` int(11) NOT NULL DEFAULT 0,
  `role` varchar(50) DEFAULT NULL,
  `device_display_flags` int(11) NOT NULL DEFAULT 15,
  PRIMARY KEY (`id_portlet`),
  KEY `index_portlet` (`id_page`,`id_portlet_type`,`id_style`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet`
--

LOCK TABLES `core_portlet` WRITE;
/*!40000 ALTER TABLE `core_portlet` DISABLE KEYS */;
INSERT INTO `core_portlet` VALUES (6,'HTML_UNTRANSFORMED_PORTLET',1,'Intro','2024-06-05 14:11:06',0,1,1,0,0,'2024-05-28 16:25:40',0,'none',4369),(2,'HTML_PORTLET',1,'Infos','2019-05-31 13:51:57',0,1,3,100,0,'2015-05-15 13:26:01',1,'none',273),(4,'HTML_PORTLET',1,'Lutece','2019-06-03 08:23:25',0,1,4,100,0,'2019-05-31 09:55:16',1,'none',4369),(5,'HTML_PORTLET',1,'Autres informations','2019-05-31 14:51:33',0,1,5,100,0,'2019-05-31 13:01:47',1,'none',4369),(7,'HTML_UNTRANSFORMED_PORTLET',1,'Administration','2024-06-05 14:11:52',0,2,1,0,0,'2024-05-28 16:32:17',1,'none',4369),(8,'HTML_UNTRANSFORMED_PORTLET',1,'Forms','2024-05-28 16:36:09',0,3,1,0,0,'2024-05-28 16:36:09',0,'none',4369),(10,'HTML_UNTRANSFORMED_PORTLET',3,'Links','2024-06-05 14:17:17',0,2,1,0,0,'2024-05-28 16:44:20',1,'none',4369);
/*!40000 ALTER TABLE `core_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_alias`
--

DROP TABLE IF EXISTS `core_portlet_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_alias` (
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  `id_alias` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_portlet`,`id_alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_alias`
--

LOCK TABLES `core_portlet_alias` WRITE;
/*!40000 ALTER TABLE `core_portlet_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_portlet_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_type`
--

DROP TABLE IF EXISTS `core_portlet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_type` (
  `id_portlet_type` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `url_creation` varchar(255) DEFAULT NULL,
  `url_update` varchar(255) DEFAULT NULL,
  `home_class` varchar(255) DEFAULT NULL,
  `plugin_name` varchar(50) DEFAULT NULL,
  `url_docreate` varchar(255) DEFAULT NULL,
  `create_script` varchar(255) DEFAULT NULL,
  `create_specific` varchar(255) DEFAULT NULL,
  `create_specific_form` varchar(255) DEFAULT NULL,
  `url_domodify` varchar(255) DEFAULT NULL,
  `modify_script` varchar(255) DEFAULT NULL,
  `modify_specific` varchar(255) DEFAULT NULL,
  `modify_specific_form` varchar(255) DEFAULT NULL,
  `icon_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_type`
--

LOCK TABLES `core_portlet_type` WRITE;
/*!40000 ALTER TABLE `core_portlet_type` DISABLE KEYS */;
INSERT INTO `core_portlet_type` VALUES ('ALIAS_PORTLET','portal.site.portletAlias.name','plugins/alias/CreatePortletAlias.jsp','plugins/alias/ModifyPortletAlias.jsp','fr.paris.lutece.portal.business.portlet.AliasPortletHome','alias','plugins/alias/DoCreatePortletAlias.jsp','/admin/portlet/script_create_portlet.html','/admin/portlet/alias/create_portlet_alias.html','','plugins/alias/DoModifyPortletAlias.jsp','/admin/portlet/script_modify_portlet.html','/admin/portlet/alias/modify_portlet_alias.html','','circles-relation'),('HTML_PORTLET','html.portlet.name','plugins/html/CreatePortletHtml.jsp','plugins/html/ModifyPortletHtml.jsp','fr.paris.lutece.plugins.html.business.portlet.HtmlPortletHome','html','plugins/html/DoCreatePortletHtml.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/html/portlet_html.html','','plugins/html/DoModifyPortletHtml.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/html/portlet_html.html','',NULL),('HTML_UNTRANSFORMED_PORTLET','html.portlet.untransformed.name','plugins/html/CreatePortletHtml.jsp','plugins/html/ModifyPortletHtml.jsp','fr.paris.lutece.plugins.html.business.portlet.UntransformedHtmlPortletHome','html','plugins/html/DoCreatePortletHtml.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/html/portlet_html.html','','plugins/html/DoModifyPortletHtml.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/html/portlet_html.html','',NULL),('MYLUTECE_PORTLET','mylutece.portlet.name','plugins/mylutece/CreatePortletMyLutece.jsp','plugins/mylutece/ModifyPortletMyLutece.jsp','fr.paris.lutece.plugins.mylutece.business.portlet.MyLutecePortletHome','mylutece','plugins/mylutece/DoCreatePortletMyLutece.jsp','/admin/portlet/script_create_portlet.html','','','plugins/mylutece/DoModifyPortletMyLutece.jsp','/admin/portlet/script_modify_portlet.html','','',NULL);
/*!40000 ALTER TABLE `core_portlet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_role`
--

DROP TABLE IF EXISTS `core_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_role` (
  `role` varchar(50) NOT NULL DEFAULT '',
  `role_description` varchar(255) DEFAULT NULL,
  `workgroup_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role`
--

LOCK TABLES `core_role` WRITE;
/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
INSERT INTO `core_role` VALUES ('defaultRole','defaultRole','all'),('role_user_validated','role_user_validated','all');
/*!40000 ALTER TABLE `core_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_search_parameter`
--

DROP TABLE IF EXISTS `core_search_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_search_parameter` (
  `parameter_key` varchar(100) NOT NULL,
  `parameter_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_search_parameter`
--

LOCK TABLES `core_search_parameter` WRITE;
/*!40000 ALTER TABLE `core_search_parameter` DISABLE KEYS */;
INSERT INTO `core_search_parameter` VALUES ('date_filter','0'),('default_operator','OR'),('help_message','Message d aide pour la recherche'),('tag_filter','0'),('taglist',NULL),('type_filter','none');
/*!40000 ALTER TABLE `core_search_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style`
--

DROP TABLE IF EXISTS `core_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style` (
  `id_style` int(11) NOT NULL DEFAULT 0,
  `description_style` varchar(100) NOT NULL DEFAULT '',
  `id_portlet_type` varchar(50) DEFAULT NULL,
  `id_portal_component` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_style`),
  KEY `index_style` (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style`
--

LOCK TABLES `core_style` WRITE;
/*!40000 ALTER TABLE `core_style` DISABLE KEYS */;
INSERT INTO `core_style` VALUES (3,'Menu Init','',3),(4,'Main Menu','',4),(5,'Breadcrumb','',5),(6,'Site Map','',6),(7,'Tree View Menu','',7),(8,'Site Map (Admin mode)',NULL,8),(100,'Défaut','HTML_PORTLET',0),(101,'Fond coloré','HTML_PORTLET',0),(200,'Défaut','MYLUTECE_PORTLET',0);
/*!40000 ALTER TABLE `core_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style_mode_stylesheet`
--

DROP TABLE IF EXISTS `core_style_mode_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style_mode_stylesheet` (
  `id_style` int(11) NOT NULL DEFAULT 0,
  `id_mode` int(11) NOT NULL DEFAULT 0,
  `id_stylesheet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_style`,`id_mode`,`id_stylesheet`),
  KEY `index_style_mode_stylesheet` (`id_stylesheet`,`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style_mode_stylesheet`
--

LOCK TABLES `core_style_mode_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_style_mode_stylesheet` DISABLE KEYS */;
INSERT INTO `core_style_mode_stylesheet` VALUES (3,0,211),(4,0,213),(5,0,215),(6,0,217),(7,0,253),(8,1,279),(100,0,10),(101,0,285),(200,0,310);
/*!40000 ALTER TABLE `core_style_mode_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_stylesheet`
--

DROP TABLE IF EXISTS `core_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_stylesheet` (
  `id_stylesheet` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `source` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_stylesheet`)
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_stylesheet`
--

LOCK TABLES `core_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_stylesheet` DISABLE KEYS */;
INSERT INTO `core_stylesheet` VALUES (211,'Menu Init','menu_init.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n<br /><br />\r\n	<div id=\"menu-init\">\r\n		<div id=\"menu-init-content\">\r\n            <ul id=\"menu-verti\">\r\n                <xsl:apply-templates select=\"menu\" />\r\n            </ul>\r\n        </div>\r\n     </div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n\r\n    <xsl:if test=\"$index &gt; 7\">\r\n        <li class=\"first-verti\">\r\n        	<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n          		<xsl:value-of select=\"page-name\" />\r\n	        </a>\r\n    	    <xsl:apply-templates select=\"sublevel-menu-list\" />\r\n        </li>\r\n   </xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" >\r\n	<ul>\r\n    	<li class=\"last-verti\">\r\n		 	<xsl:apply-templates select=\"sublevel-menu\" />\r\n 	    </li>\r\n    </ul>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n\r\n   <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n		<span><xsl:value-of select=\"page-name\" /></span>\r\n   </a>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(213,'Main Menu','menu_main.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:template match=\"menu-list\">\r\n        <xsl:apply-templates select=\"menu\" />\r\n    </xsl:template>\r\n    <xsl:template match=\"menu\">\r\n        <li class=\"nav-item\">\r\n            <a href=\"{$site-path}?page_id={page-id}\" class=\"nav-link\" target=\"_top\">\r\n                <xsl:value-of select=\"page-name\" />\r\n            </a>\r\n        </li>\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(215,'Breadcrumb','page_path.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n\r\n<xsl:template match=\"page\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page_link\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?{page-url}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>'),(217,'Site Map','site_map.xsl','<?xml version=\"1.0\"?> <xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"> 	<xsl:param name=\"site-path\" select=\"site-path\" /> 	<xsl:variable name=\"current-page-id\" select=\"current-page-id\" /> 	<xsl:template match=\"page[page-level=0]\"> 		<div id=\"lutece-map-tree\" class=\"lutece-tree\"> 			<ul> 				<li id=\"node-{page-id}\" class=\"lutece-tree-node\" data-tree-icon=\"home\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-home-link ms-2\"></span></a> 					<ul> 						<xsl:apply-templates select=\"child-pages-list\" /> 					</ul> 				</li> 			</ul> 		</div> 	</xsl:template> 	<xsl:template match=\"page[page-level>0]\"> 		<xsl:variable name=\"index\" select=\"page-id\" /> 		<xsl:variable name=\"description\" select=\"page-description\" /> 		<xsl:choose> 			<xsl:when test=\"count(child-pages-list/*)>0\"> 			<li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\"> 				<span class=\"node-name\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-name } - {$description}\"><span class=\"ti ti-link mx-2\"></span></a> 				</span> 				<ul> 					<xsl:apply-templates select=\"child-pages-list\" /> 				</ul> 			</li> 			</xsl:when> 			<xsl:otherwise> 				<li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file-symlink\"> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"> 						<span class=\"leaf-name\"><xsl:value-of select=\"page-name\" /></span> 						<xsl:if test=\"not(string(page-role)=\'none\')\"> 							<strong> 								<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 								<xsl:value-of select=\"page-role\" /> 							</strong> 						</xsl:if> 					</a> 				</li>    			</xsl:otherwise> 		</xsl:choose> 	</xsl:template> 	<xsl:template match=\"child-pages-list\"> 		<xsl:apply-templates select=\"page\" /> 	</xsl:template> </xsl:stylesheet>'),(253,'Tree View Menu','menu_tree.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n	<xsl:variable name=\"menu-list\" select=\"menu\" />\r\n\r\n	<script type=\"text/javascript\">\r\n		$(document).ready(function(){\r\n			$(\"#tree\").treeview({\r\n				animated: \"fast\",\r\n				collapsed: false,\r\n				unique: true,\r\n				persist: \"cookie\"\r\n			});\r\n		\r\n		});\r\n	</script>    \r\n	\r\n	<xsl:if test=\"not(string(menu)=\'\')\">\r\n	    <xsl:text disable-output-escaping=\"yes\">		    \r\n            <div class=\"tree4\">		\r\n			<h2>&#160;</h2>\r\n			<ul id=\"tree\" class=\"tree4\">\r\n                <xsl:apply-templates select=\"menu\" />        \r\n			</ul>	\r\n			</div>\r\n		 	 <br />\r\n		</xsl:text> \r\n	</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n		<li>\r\n          <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\" >\r\n               <xsl:value-of select=\"page-name\" />\r\n           </a>	   \r\n		   <br />\r\n		   <xsl:value-of select=\"page-description\" />\r\n			<xsl:apply-templates select=\"sublevel-menu-list\" /> \r\n			\r\n		</li> 	\r\n		\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" > \r\n	\r\n	<xsl:apply-templates select=\"sublevel-menu\" /> 	    	\r\n\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n		 <ul >\r\n			<li>\r\n				<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n					<xsl:value-of select=\"page-name\" />\r\n				</a>\r\n			</li>			\r\n		</ul>\r\n		\r\n   \r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(279,'Site Map (Admin mode)','admin_site_map_admin.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:variable name=\"current-page-id\" select=\"current-page-id\" />\r\n    <xsl:template match=\"page[page-level=0]\">\r\n        <div id=\"lutece-map-tree\" class=\"lutece-tree\">\r\n            <ul>\r\n                <li class=\"lutece-tree-node\" data-tree-icon=\"home\">\r\n                    <xsl:value-of select=\"page-name\" />\r\n                    <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                        <strong>\r\n                            <xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                            <xsl:value-of select=\"page-role\" />\r\n                        </strong>\r\n                    </xsl:if>\r\n                    <a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-link\"></span></a>\r\n                    <ul>\r\n                        <xsl:apply-templates select=\"child-pages-list\" />\r\n                    </ul>\r\n                </li>\r\n            </ul>\r\n        </div>\r\n    </xsl:template>\r\n    <xsl:template match=\"page[page-level>0]\">\r\n        <xsl:variable name=\"index\" select=\"page-id\" />\r\n        <xsl:variable name=\"description\" select=\"page-description\" />\r\n        <xsl:choose>\r\n            <xsl:when test=\"count(child-pages-list/*)>0\">\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <ul>\r\n                    <xsl:apply-templates select=\"child-pages-list\" />\r\n                </ul>\r\n                </li>   \r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <xsl:apply-templates select=\"child-pages-list\" />\r\n            </li>    \r\n            </xsl:otherwise>\r\n        </xsl:choose>\r\n    </xsl:template>\r\n    <xsl:template match=\"child-pages-list\">\r\n        <xsl:apply-templates select=\"page\" />\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(10,'Rubrique HTML - Défaut','portlet_html.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n<xsl:variable name=\"device_class\">\r\n<xsl:choose>\r\n	<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n	<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n	<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n	<xsl:otherwise></xsl:otherwise>\r\n</xsl:choose>\r\n</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n	<xsl:choose>\r\n	<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n	<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:when>\r\n	<xsl:otherwise>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:otherwise>\r\n</xsl:choose>\r\n</div>\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n\r\n\r\n\r\n'),(285,'Rubrique HTML - Fond coloré','portlet_html_background.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h2>\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h2>\r\n				<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<div class=\"portlet-background-content -lutece-border-radius\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n		</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>'),(310,'Rubrique MyLutece - Défaut','portlet_mylutece.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n			<xsl:choose>\r\n	        <xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:when>\r\n	        <xsl:otherwise>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:otherwise>\r\n			</xsl:choose>\r\n			<div class=\"clearfix\">&#160;</div>\r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"mylutece-portlet\">\r\n	<xsl:apply-templates select=\"user-not-signed\" />\r\n	<xsl:apply-templates select=\"lutece-user\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"user-not-signed\">\r\n	<form class=\"form\" action=\"jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp\" method=\"post\">\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@delegated=\'true\']\" />\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\" />\r\n		<xsl:if test=\"count(lutece-user-authentication-service[@loginpassword-required=\'true\']) &gt;= 1\">\r\n			<label for=\"username\">Code d\'acc&#232;s :</label>\r\n			<input name=\"username\" class=\"input-normal\" id=\"username\" autocomplete=\"off\" tabindex=\"1\" type=\"text\"/><br />\r\n			<label for=\"password\">Mot de passe :</label>\r\n			<input name=\"password\" class=\"input-normal\" id=\"password\" autocomplete=\"off\" tabindex=\"2\" type=\"password\" />\r\n			<button class=\"btn btn-small\" tabindex=\"3\" type=\"submit\"><i class=\"icon-user\">&#160;</i>&#160;Connexion</button>\r\n		</xsl:if>\r\n	</form>\r\n	<xsl:apply-templates select=\"lutece-user-new-account-url\" />\r\n	<xsl:apply-templates select=\"lutece-user-lost-password-url\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\">\r\n	<label class=\"radio\" for=\"auth_provider\" >\r\n		<input type=\"radio\" name=\"auth_provider\" value=\"{name}\" checked=\"checked\" />\r\n		<xsl:value-of select=\"display-name\" />\r\n	</label>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@delegated=\'true\']\">\r\n	<a href=\"{url}?auth_provider={name}\">\r\n		<img src=\"{icon-url}\" alt=\"{display-name}\" title=\"{display-name}\"/>\r\n	</a>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user\">\r\n    <p>\r\n	<strong>Bienvenue&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-given\" />&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-family\" />\r\n	</strong>\r\n	</p>\r\n    <xsl:apply-templates select=\"lutece-user-logout-url\" />\r\n    <xsl:apply-templates select=\"lutece-user-view-account-url\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-logout-url\">\r\n   <form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n   	<button type=\"submit\" class=\"btn\"><i class=\"icon-off\">&#160;</i>&#160;D&#233;connexion</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-new-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n		<button type=\"submit\" class=\"btn\"><i class=\"icon-plus\">&#160;</i>&#160;Cr&#233;er un compte</button>&#160;\r\n    </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-lost-password-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-lock\">&#160;</i>&#160;Mot de passe perdu</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-view-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-edit\">&#160;</i>&#160;Voir mon compte</button>&#160;\r\n	</form>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n');
/*!40000 ALTER TABLE `core_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_template`
--

DROP TABLE IF EXISTS `core_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_template` (
  `template_name` varchar(100) NOT NULL,
  `template_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_template`
--

LOCK TABLES `core_template` WRITE;
/*!40000 ALTER TABLE `core_template` DISABLE KEYS */;
INSERT INTO `core_template` VALUES ('core_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien été réactivé. Il est désormais valable jusqu\'au ${date_valid}.'),('core_expiration_mail','Bonjour ${first_name} ! Votre compte a expiré. Vous ne pourrez plus vous connecter avec, et les données vous concernant ont été anonymisées'),('core_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_password_expired','Bonjour ! Votre mot de passe a expiré. Lors de votre prochaine connexion, vous pourrez le changer.');
/*!40000 ALTER TABLE `core_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_text_editor`
--

DROP TABLE IF EXISTS `core_text_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_text_editor` (
  `editor_name` varchar(255) NOT NULL,
  `editor_description` varchar(255) NOT NULL,
  `backOffice` smallint(6) NOT NULL,
  PRIMARY KEY (`editor_name`,`backOffice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_text_editor`
--

LOCK TABLES `core_text_editor` WRITE;
/*!40000 ALTER TABLE `core_text_editor` DISABLE KEYS */;
INSERT INTO `core_text_editor` VALUES ('','portal.admindashboard.editors.labelFrontNoEditor',0),('','portal.admindashboard.editors.labelBackNoEditor',1),('sceeditor','portal.admindashboard.editors.labelFrontSceEditor',0),('tinymce','portal.admindashboard.editors.labelBackTinyMCE',1),('tinymce5','portal.admindashboard.editors.labelBackTinyMCE5',1);
/*!40000 ALTER TABLE `core_text_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_password_history`
--

DROP TABLE IF EXISTS `core_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_password_history` (
  `id_user` int(11) NOT NULL,
  `password` mediumtext NOT NULL,
  `date_password_change` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_user`,`date_password_change`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_password_history`
--

LOCK TABLES `core_user_password_history` WRITE;
/*!40000 ALTER TABLE `core_user_password_history` DISABLE KEYS */;
INSERT INTO `core_user_password_history` VALUES (1,'PBKDF2WITHHMACSHA512:40000:dfcb0adbca60ef026043640c1f6821e5:f8306837f2495665ebc50c79c3cbc8bc451a5238ab95fad52fd87863c7262c462c85585332bf21c87c046a221002712958d83cc4ef5a5176d726fa6d6cb0f2d8c78012a731d8a9c77c2608ce51899e0c2d9a130b93a8fac357ae4d108ddf44f0c471b25b1e091332663ccc6391d45d7d050dc3c3a11a1975e975c63b017c6024','2024-06-03 10:01:53'),(1,'PBKDF2WITHHMACSHA512:40000:172a29202add8d56d5b49841cfcd310b:05bbd77563c2d174ef40b9bcd1ee9813e99e78d289789706a338cd6538f941cec73a96e85d9a13815c11f9faadde3a06d3e7fb56bccb6302e5844f08cf0cdbf308eeb312c9f4aac391a04cefb591e9dede5b7f917b883e91fe0a0c9d338b4b15001cb5b9b7e82684a711ec6a84d20a4b1d0d6e7291a0244249b699cf992a29fb','2024-06-07 15:26:12'),(5,'PBKDF2WITHHMACSHA512:40000:82c68002da58aa3fc98573b828dc0f92:87b8d14f13f6a7c3ea67db6e07d7c506c70d858f10695a10dd6ae916e71c26555087ec1531175cb5fea6e363f60eda527b8783d45a3c62252cdefaad984190cc898183a9e1fb3dd2f75c08a94d4b356b75349d651d93b0f8dfd33c751d9cf984c377cb335c3a6979d7d50eac65980b981ed5f423b94e5039fcbd6e240406a281','2024-03-12 15:37:35'),(5,'PBKDF2WITHHMACSHA512:40000:cb27f86b760365f5b91d1486796a252a:07d28d07a75f6b41ae435085e5be63ebfbc3ab331ac08cca8e0978400f7feeb86824b86f7a2b381e50a11ac9e0bcef782b9aefddb66edb6e02b57cc20e640d3390b0f4365eb059ba23a344114f3ebeeab4ad59b124ff90a18fb306cc5059f72f6471f382014937a6c1be51b405fabbf0bfe7d219dead1d87eaa75b5780f71f3f','2024-03-12 15:37:52'),(6,'PBKDF2WITHHMACSHA512:40000:12bc85cfee1c84ada42184db0f585bd2:073c337496db8b349ed000f7f80851db3b89a14efdeabb23071a44f8d6cb7ff57cacf6b233b970ae09fbd51eb7e63a7961c0a012bc0551233cf8b2861e6c7892bb4b98f06c932452d43099a88c1774e9e6670bfb2a3258e10bc8f03a5b80a9804766d945bdaa96cb257c9b34a7e5e8776c2f2fc297514b7b0ae651c2d2e78874','2024-03-12 15:36:22'),(6,'PBKDF2WITHHMACSHA512:40000:423e23bba77c71fad7b25844a82d19e3:b655d85f8f7a10be0006d653a299691ea4c5ff93fb834853c9d72c7c52cca4afd27b6936595605745392b656727194a9042a6ff28e25976f5bba9121f19710954dae14ab2bd35c1dc20b39b829c16aa3996df18f50b22ca1f1e9f8e9afb48bfa3f9477a4b3f2effdeccb0539a1b5015953475361f1fbf5673d7dfd94b57c1b3d','2024-03-12 15:36:36'),(7,'PBKDF2WITHHMACSHA512:40000:31e13a761d44bb516e4876f6d6efd5a9:393113a50b1cf932afd0b137dc15c15454c3f48790bf5b498fc0734e3c9af37989298b7e8e211614ffd26c5e8dce812d237def13348cd7a96c1520eec2178e9fd354bbac8dfa24f9078792f4586cacc908865a1a57e12e315250ee33bb7ca7f9372b26fb87239d1322f8594581e7c779f65a5bb060cfdb55d584968db0dfa9d6','2024-03-12 15:34:33'),(7,'PBKDF2WITHHMACSHA512:40000:ed0fbc804a9612f983bef9d25593a85b:860171e61e7609ddeec428b4127182eceb368b42439ead08ffafea9880f84329d78b52abda75f6b5cecfe66743c823d10b6878ff90a470516263a0472bb38bdb2798de4b3fbd920cf5ea51e358b2d93d3052d5e972d6a6a3e0b29d37e2b3fcbcf14e7c77936cbd05d0f3b1aa45a6ca8ef474752f8ee04dbdea64b4c31f8eb36c','2024-03-12 15:34:50'),(8,'PBKDF2WITHHMACSHA512:40000:817428814558b481c52378afb38a61cf:03db2eac54ab4b847b9f1496048d1ef07d10728e4f2a846bd9bb54f3f9cc756c3f2b82181194347b2849884a42a853917fefc7a04ed3b345c9bce4c98f2ccb78870e85f8725976c41ccce4302a64097168ffe5964ec477806f23850f7107ab951d5bc4c3b76aa543e09618012f0e2884c7d04803fc1c960ddaab1c377cd8ab52','2024-03-12 15:44:34'),(8,'PBKDF2WITHHMACSHA512:40000:dfe26e33fa61efb67333567beea45ad0:b08687413cea5337dda4dd6bcc9fcde0b64a8c39d5083cbf1ade620b3e5f28c8eee944ea9b3e20f9387130ee9881814ae315c8fdaea8aab6533036d8aa47885aa1c4dae1b1475a2f25fff28f783bd90c22878cbce57b27a9894e7c087856a170f76b6662c5f7250134fdfa4308ed80791836d2c7f22376819acadcccb7fd3080','2024-03-12 15:44:52');
/*!40000 ALTER TABLE `core_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_preferences`
--

DROP TABLE IF EXISTS `core_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_preferences` (
  `id_user` varchar(100) NOT NULL,
  `pref_key` varchar(100) NOT NULL,
  `pref_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_preferences`
--

LOCK TABLES `core_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_right`
--

DROP TABLE IF EXISTS `core_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_right` (
  `id_right` varchar(255) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_right`,`id_user`),
  KEY `index_user_right` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_right`
--

LOCK TABLES `core_user_right` WRITE;
/*!40000 ALTER TABLE `core_user_right` DISABLE KEYS */;
INSERT INTO `core_user_right` VALUES ('ACCESSCONTROL_MANAGEMENT',1),('ACCESSRULES_MANAGEMENT',1),('ADMINAVATAR_MANAGEMENT',1),('BREADCRUMBACCORDION_MANAGEMENT',1),('BREADCRUMBACCORDION_MANAGEMENT',5),('CONFIG_DOCUMENT_PRODUCER_MANAGEMENT',1),('CONTACT_MANAGEMENT',1),('CORE_ADMIN_SITE',1),('CORE_ADMIN_SITE',2),('CORE_ADMIN_SITE',5),('CORE_ADMINDASHBOARD_MANAGEMENT',1),('CORE_CACHE_MANAGEMENT',1),('CORE_DAEMONS_MANAGEMENT',1),('CORE_DASHBOARD_MANAGEMENT',1),('CORE_EDITORS_MANAGEMENT',1),('CORE_FEATURES_MANAGEMENT',1),('CORE_LEVEL_RIGHT_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',2),('CORE_LOGS_VISUALISATION',1),('CORE_MAILINGLISTS_MANAGEMENT',1),('CORE_MAILINGLISTS_MANAGEMENT',5),('CORE_MODES_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',2),('CORE_PLUGINS_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',2),('CORE_PROPERTIES_MANAGEMENT',5),('CORE_RBAC_MANAGEMENT',1),('CORE_RIGHT_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',2),('CORE_SEARCH_INDEXATION',1),('CORE_SEARCH_INDEXATION',2),('CORE_SEARCH_MANAGEMENT',1),('CORE_SEARCH_MANAGEMENT',2),('CORE_STYLES_MANAGEMENT',1),('CORE_STYLESHEET_MANAGEMENT',1),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',2),('CORE_WORKGROUPS_MANAGEMENT',1),('CORE_WORKGROUPS_MANAGEMENT',2),('CORE_XSL_EXPORT_MANAGEMENT',1),('ELASTICDATA_MANAGEMENT',1),('ENTRY_TYPE_MANAGEMENT',1),('FORMS_CATEGORIES',1),('FORMS_MANAGEMENT',1),('FORMS_MANAGEMENT',5),('FORMS_MANAGEMENT',6),('FORMS_MULTIVIEW',1),('FORMS_MULTIVIEW',5),('FORMS_MULTIVIEW',6),('FORMS_MULTIVIEW',7),('FORMS_MULTIVIEW',8),('FORMS_QUESTION_EXPORT_ORDER_MANAGEMENT',1),('GIS_MANAGEMENT',1),('GIS_MANAGEMENT',2),('HTMLPAGE_MANAGEMENT',1),('KIBANA_MANAGEMENT',1),('KIBANA_RBAC_MANAGEMENT',1),('MATOMO_MANAGEMENT',1),('MATOMO_MANAGEMENT',5),('MODULENOTIFYGRUMAPPINGMANAGER_MANAGEMENT',1),('MYLUTECE_CACHEUSERATTRIBUTE_MANAGEMENT',1),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER',1),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION',1),('MYLUTECE_MANAGEMENT',1),('POLL_MANAGEMENT',1),('PROFILES_MANAGEMENT',1),('PROFILES_VIEWS_MANAGEMENT',1),('REFERENCELIST_MANAGEMENT',1),('REGULAR_EXPRESSION_MANAGEMENT',1),('SEO_MANAGEMENT',1),('SOLR_CONFIGURATION_MANAGEMENT',1),('SOLR_FIELDS_MANAGEMENT',1),('SOLR_INDEX_MANAGEMENT',1),('SYSTEMINFO_MANAGEMENT',1),('TEMPLATE_STEP_MANAGEMENT',1),('TERMOFSERVICE_MANAGEMENT',1),('UNITS_MANAGEMENT',1),('UNITS_MANAGEMENT',5),('USERCODES_MANAGEMENT',1),('VERIFYBACKURL_MANAGEMENT',1),('VIEW_TEMP_FILES',1),('VIEW_TEMP_FILES',5),('VIEW_TEMP_FILES',6),('WORKFLOW_MANAGEMENT',1),('WORKFLOW_MANAGEMENT',5);
/*!40000 ALTER TABLE `core_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_role`
--

DROP TABLE IF EXISTS `core_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_role` (
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`role_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_role`
--

LOCK TABLES `core_user_role` WRITE;
/*!40000 ALTER TABLE `core_user_role` DISABLE KEYS */;
INSERT INTO `core_user_role` VALUES ('all_site_manager',1),('all_site_manager',2),('assign_groups',1),('assign_groups',2),('assign_groups',3),('assign_roles',1),('assign_roles',2),('assign_roles',3),('CREATE_REFERENCE_IMPORT',1),('forms_manager',1),('forms_manager',2),('forms_multiview',1),('kibana_dashboards_manager',1),('mylutece_manager',1),('profiles_manager',1),('profiles_views_manager',1),('sollicitation_administrateur',5),('sollicitation_gestionnaires',5),('sollicitation_gestionnaires',6),('sollicitation_instructeurs',5),('sollicitation_instructeurs',6),('sollicitation_instructeurs',7),('sollicitation_instructeurs',8),('super_admin',1),('super_admin',2),('unittree_management',1),('unittree_management',2),('workflow_manager',1),('workflow_manager',2);
/*!40000 ALTER TABLE `core_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_xsl_export`
--

DROP TABLE IF EXISTS `core_xsl_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_xsl_export` (
  `id_xsl_export` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `plugin` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_xsl_export`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_xsl_export`
--

LOCK TABLES `core_xsl_export` WRITE;
/*!40000 ALTER TABLE `core_xsl_export` DISABLE KEYS */;
INSERT INTO `core_xsl_export` VALUES (125,'Core - Export users to a CSV file','Export back office users to a CSV file','csv',125,'core'),(126,'Core - Export users to a XML file','Export back office users to a XML file','xml',126,'core');
/*!40000 ALTER TABLE `core_xsl_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elasticdata_forms_optionalquestionresponse`
--

DROP TABLE IF EXISTS `elasticdata_forms_optionalquestionresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elasticdata_forms_optionalquestionresponse` (
  `id_optional_question_indexation` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_optional_question_indexation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elasticdata_forms_optionalquestionresponse`
--

LOCK TABLES `elasticdata_forms_optionalquestionresponse` WRITE;
/*!40000 ALTER TABLE `elasticdata_forms_optionalquestionresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `elasticdata_forms_optionalquestionresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elasticdata_indexer_action`
--

DROP TABLE IF EXISTS `elasticdata_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elasticdata_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_datasource` varchar(255) NOT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elasticdata_indexer_action`
--

LOCK TABLES `elasticdata_indexer_action` WRITE;
/*!40000 ALTER TABLE `elasticdata_indexer_action` DISABLE KEYS */;
INSERT INTO `elasticdata_indexer_action` VALUES (1,'1',1,'FormsDataSource'),(3,'4',1,'FormsDataSource'),(4,'3',1,'FormsDataSource'),(5,'5',1,'FormsDataSource');
/*!40000 ALTER TABLE `elasticdata_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filegen_temporary_file`
--

DROP TABLE IF EXISTS `filegen_temporary_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filegen_temporary_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `title` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_physical_file` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filegen_temporary_file`
--

LOCK TABLES `filegen_temporary_file` WRITE;
/*!40000 ALTER TABLE `filegen_temporary_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `filegen_temporary_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_action`
--

DROP TABLE IF EXISTS `forms_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  `form_state` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_action`
--

LOCK TABLES `forms_action` WRITE;
/*!40000 ALTER TABLE `forms_action` DISABLE KEYS */;
INSERT INTO `forms_action` VALUES (1,'forms.action.modify.name','forms.action.modify.description','jsp/admin/plugins/forms/ManageForms.jsp?view=modifyForm','cog','MODIFY',0),(2,'forms.action.delete.name','forms.action.delete.description','jsp/admin/plugins/forms/ManageForms.jsp?view=confirmRemoveForm','trash','DELETE',0),(3,'forms.action.params.name','forms.action.params.description','jsp/admin/plugins/forms/ManageSteps.jsp?view=manageSteps','step-forward','PARAM',0),(4,'forms.action.publish.name','forms.action.publish.description','jsp/admin/plugins/forms/ManageForms.jsp?view=modifyPublication','calendar','PUBLISH',0),(5,'forms.action.viewResponses.name','forms.action.viewResponses.description','jsp/admin/plugins/forms/MultiviewForms.jsp?current_selected_panel=forms','list-alt','VIEW_FORM_RESPONSE',0),(6,'forms.action.json.copy.name','forms.json.copy.description','jsp/admin/plugins/forms/ManageForms.jsp?action=duplicateForm','copy','MODIFY',0),(7,'forms.action.json.download.name','forms.json.download.description','jsp/admin/plugins/forms/ManageForms.jsp?action=doExportJson','download','MODIFY',0),(100,'module.forms.documentproducer.actions.extractpdf.name','module.forms.documentproducer.actions.extractpdf.description','jsp/admin/plugins/forms/modules/documentproducer/ManageConfigProducer.jsp?view=getManageConfigProducer','file-pdf-o','MODIFY',0);
/*!40000 ALTER TABLE `forms_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_breadcrumbaccordion_config_item`
--

DROP TABLE IF EXISTS `forms_breadcrumbaccordion_config_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_breadcrumbaccordion_config_item` (
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_step` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_form`,`id_step`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_breadcrumbaccordion_config_item`
--

LOCK TABLES `forms_breadcrumbaccordion_config_item` WRITE;
/*!40000 ALTER TABLE `forms_breadcrumbaccordion_config_item` DISABLE KEYS */;
INSERT INTO `forms_breadcrumbaccordion_config_item` VALUES (2,2,0),(2,3,1),(2,4,2),(2,5,3);
/*!40000 ALTER TABLE `forms_breadcrumbaccordion_config_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_category`
--

DROP TABLE IF EXISTS `forms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_category`
--

LOCK TABLES `forms_category` WRITE;
/*!40000 ALTER TABLE `forms_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_config_producer`
--

DROP TABLE IF EXISTS `forms_config_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_config_producer` (
  `id_config` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_question_name_file` int(11) DEFAULT NULL,
  `id_form` int(11) DEFAULT NULL,
  `config_type` varchar(255) DEFAULT NULL,
  `text_file_name` varchar(255) DEFAULT NULL,
  `type_config_file_name` varchar(255) DEFAULT NULL,
  `extract_empty` int(11) DEFAULT 0,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_config_producer`
--

LOCK TABLES `forms_config_producer` WRITE;
/*!40000 ALTER TABLE `forms_config_producer` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_config_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_config_question`
--

DROP TABLE IF EXISTS `forms_config_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_config_question` (
  `id_config` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  PRIMARY KEY (`id_config`,`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_config_question`
--

LOCK TABLES `forms_config_question` WRITE;
/*!40000 ALTER TABLE `forms_config_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_config_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_control`
--

DROP TABLE IF EXISTS `forms_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_control` (
  `id_control` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `error_message` varchar(512) DEFAULT '',
  `validator_name` varchar(255) NOT NULL,
  `control_type` varchar(255) NOT NULL,
  `id_control_target` int(11) NOT NULL DEFAULT 0,
  `id_control_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_control`),
  KEY `index_fc_id_control_target` (`id_control_target`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control`
--

LOCK TABLES `forms_control` WRITE;
/*!40000 ALTER TABLE `forms_control` DISABLE KEYS */;
INSERT INTO `forms_control` VALUES (1,'2','','forms.patternValidator','validation',3,0),(2,'7829',NULL,'forms.listValueValidator','conditional',997,0),(3,'7828',NULL,'forms.listValueValidator','conditional',998,0),(8,'7829',NULL,'forms.listValueValidator','conditional',997,0),(9,'7828',NULL,'forms.listValueValidator','conditional',998,0),(13,'2','','forms.patternValidator','validation',82,0),(14,'349',NULL,'forms.listValueValidator','conditional',49,0),(15,'347',NULL,'forms.listValueValidator','conditional',50,0),(16,'485',NULL,'forms.listValueValidator','conditional',68,0);
/*!40000 ALTER TABLE `forms_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_control_group`
--

DROP TABLE IF EXISTS `forms_control_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_control_group` (
  `id_control_group` int(11) NOT NULL AUTO_INCREMENT,
  `logical_operator` varchar(50) NOT NULL,
  PRIMARY KEY (`id_control_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control_group`
--

LOCK TABLES `forms_control_group` WRITE;
/*!40000 ALTER TABLE `forms_control_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_control_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_control_question`
--

DROP TABLE IF EXISTS `forms_control_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_control_question` (
  `id_control` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  PRIMARY KEY (`id_control`,`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control_question`
--

LOCK TABLES `forms_control_question` WRITE;
/*!40000 ALTER TABLE `forms_control_question` DISABLE KEYS */;
INSERT INTO `forms_control_question` VALUES (1,3),(2,5),(3,5),(8,50),(9,50),(13,82),(14,5),(15,5),(16,55);
/*!40000 ALTER TABLE `forms_control_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_control_question_mapping`
--

DROP TABLE IF EXISTS `forms_control_question_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_control_question_mapping` (
  `id_control` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_control`,`id_question`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control_question_mapping`
--

LOCK TABLES `forms_control_question_mapping` WRITE;
/*!40000 ALTER TABLE `forms_control_question_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_control_question_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_default_config`
--

DROP TABLE IF EXISTS `forms_default_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_default_config` (
  `id_config` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `config_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id_config`,`id_form`,`config_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_default_config`
--

LOCK TABLES `forms_default_config` WRITE;
/*!40000 ALTER TABLE `forms_default_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_default_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_display`
--

DROP TABLE IF EXISTS `forms_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_display` (
  `id_display` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) DEFAULT 0,
  `id_step` int(11) DEFAULT 0,
  `id_composite` int(11) DEFAULT 0,
  `id_parent` int(11) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `composite_type` varchar(255) DEFAULT '',
  `display_depth` int(11) DEFAULT 0,
  PRIMARY KEY (`id_display`),
  KEY `index_fd_id_form` (`id_form`),
  KEY `index_fd_id_step` (`id_step`),
  KEY `index_fd_id_composite` (`id_composite`),
  KEY `index_fd_id_parent` (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_display`
--

LOCK TABLES `forms_display` WRITE;
/*!40000 ALTER TABLE `forms_display` DISABLE KEYS */;
INSERT INTO `forms_display` VALUES (1,1,1,3,4,3,'question',1),(2,1,1,2,4,2,'question',1),(3,1,1,1,4,1,'question',1),(4,1,1,1,0,1,'group',0),(5,1,1,4,4,4,'question',1),(6,1,1,2,0,2,'group',0),(7,1,1,5,6,1,'question',1),(48,1,1,9,0,3,'group',0),(49,1,1,40,0,4,'question',0),(50,1,1,41,0,5,'question',0),(51,1,1,42,0,6,'question',0),(52,1,1,43,0,7,'question',0),(67,4,7,55,0,1,'question',0),(68,4,7,56,0,2,'question',0),(69,4,8,57,0,1,'question',0),(70,4,8,13,0,2,'group',0),(71,4,8,58,70,1,'question',1),(72,4,8,59,70,2,'question',1),(73,4,8,14,0,3,'group',0),(74,4,8,60,73,1,'question',1),(75,4,8,61,73,2,'question',1),(76,4,8,15,0,4,'group',0),(77,4,8,62,76,1,'question',1),(78,4,8,63,76,2,'question',1),(79,4,8,16,0,5,'group',0),(80,4,8,64,79,1,'question',1),(81,4,8,65,79,2,'question',1),(82,4,8,66,79,3,'question',1),(83,4,8,67,79,5,'question',1),(84,4,8,68,79,7,'question',1),(85,4,8,69,79,4,'question',1),(86,4,8,70,79,6,'question',1),(87,4,8,71,79,8,'question',1),(88,4,8,17,0,6,'group',0),(89,4,8,72,88,1,'question',1),(90,4,8,73,88,2,'question',1),(91,4,8,74,88,3,'question',1),(92,4,9,75,105,1,'question',1),(95,4,9,78,105,5,'question',1),(97,4,9,80,105,6,'question',1),(98,4,9,81,105,7,'question',1),(99,4,9,82,105,4,'question',1),(100,4,10,85,0,1,'question',0),(101,4,10,86,0,2,'question',0),(102,4,10,87,0,3,'question',0),(103,4,9,83,105,3,'question',1),(104,4,9,84,105,2,'question',1),(105,4,9,18,0,1,'group',0);
/*!40000 ALTER TABLE `forms_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_export_config`
--

DROP TABLE IF EXISTS `forms_export_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_export_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_export_config`
--

LOCK TABLES `forms_export_config` WRITE;
/*!40000 ALTER TABLE `forms_export_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_export_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_form`
--

DROP TABLE IF EXISTS `forms_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_form` (
  `id_form` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `availability_start_date` timestamp NULL DEFAULT NULL,
  `availability_end_date` timestamp NULL DEFAULT NULL,
  `max_number_response` int(11) DEFAULT 0,
  `workgroup` varchar(255) DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `authentification_needed` smallint(6) DEFAULT NULL,
  `one_response_by_user` smallint(6) DEFAULT 0,
  `breadcrumb_name` varchar(255) NOT NULL DEFAULT '',
  `display_summary` smallint(6) NOT NULL DEFAULT 0,
  `return_url` varchar(255) DEFAULT '',
  `captcha_step_initial` smallint(6) DEFAULT 0,
  `captcha_step_final` smallint(6) DEFAULT 0,
  `captcha_recap` smallint(6) DEFAULT 0,
  `count_responses` smallint(6) DEFAULT 0,
  `label_final_button` varchar(255) DEFAULT NULL,
  `unavailable_message` varchar(255) DEFAULT NULL,
  `id_logo` int(11) NOT NULL DEFAULT 0,
  `id_category` int(11) DEFAULT NULL,
  `backup_enabled` smallint(6) NOT NULL DEFAULT 0,
  `access_to_responses_by_role` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_form`
--

LOCK TABLES `forms_form` WRITE;
/*!40000 ALTER TABLE `forms_form` DISABLE KEYS */;
INSERT INTO `forms_form` VALUES (1,'Contacter ma mairie','Formulaire pour solliciter les services administratifs à propos d\'un sujet précis. Le formulaire a pour vocation d\'être simple.','2024-03-05 14:04:06','2024-03-12 15:24:49','2024-03-01 12:00:00',NULL,0,'all',1,0,0,'forms-breadcrumbaccordion.breadcrumbAccordion',1,'jsp/site/Portal.jsp',0,0,0,0,'','',0,0,1,0),(4,'Demande d\'acte de Mariage','Demande d\'acte de Mariage','2024-03-14 16:51:09','2024-06-07 15:47:21','2024-03-11 12:00:00',NULL,0,'all',2,1,1,'forms-breadcrumbaccordion.breadcrumbAccordion',1,'jsp/site/Portal.jsp',0,0,0,0,'','',0,0,0,0);
/*!40000 ALTER TABLE `forms_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_global_action`
--

DROP TABLE IF EXISTS `forms_global_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_global_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `code` varchar(100) DEFAULT NULL,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`),
  KEY `index_fga_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_global_action`
--

LOCK TABLES `forms_global_action` WRITE;
/*!40000 ALTER TABLE `forms_global_action` DISABLE KEYS */;
INSERT INTO `forms_global_action` VALUES (1,'multiviewconfig','forms.action.multiviewConfig.labelKey','forms.action.multiviewConfig.descriptionKey','jsp/admin/plugins/forms/MultiviewForms.jsp?view=view_multiview_config','edit'),(2,'multiviewExport','forms.action.multiviewExport.labelKey','forms.action.multiviewExport.descriptionKey','jsp/admin/plugins/forms/MultiviewForms.jsp','edit');
/*!40000 ALTER TABLE `forms_global_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_group`
--

DROP TABLE IF EXISTS `forms_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_group` (
  `id_group` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(512) DEFAULT '',
  `id_step` int(11) DEFAULT 0,
  `iteration_min` int(11) DEFAULT 1,
  `iteration_max` int(11) DEFAULT 1,
  `iteration_add_label` varchar(255) DEFAULT '',
  `iteration_remove_label` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_group`
--

LOCK TABLES `forms_group` WRITE;
/*!40000 ALTER TABLE `forms_group` DISABLE KEYS */;
INSERT INTO `forms_group` VALUES (1,'Vos coordonnées','',1,1,1,'',''),(2,'Sujet de votre demande','',1,1,1,'',''),(9,'Votre demande','',1,1,1,'',''),(13,'Lieu et date','',8,1,1,'',''),(14,'Identité de la personne dont vous demandez l\'acte','<p>Les actes de naissance et les tables d&eacute;cennales de naissance ant&eacute;rieurs &agrave; l\'ann&eacute;e 1922 ont &eacute;t&eacute; num&eacute;ris&eacute;s et vous pouvez les consulter directement sur le site des <a href=\"https://archives.paris.fr/a/1/accueil/\" target=\"_blank\">Archives de Paris</a></p>\r\n<p>Seuls les actes enregistr&eacute;s &agrave; Paris peuvent &ecirc;tre d&eacute;livr&eacute;s. Pour une autre commune,</p>',8,1,1,'',''),(15,'Identité du conjoint','',8,1,1,'',''),(16,'Identité des parents','<p>Attention Si vous souhaitez recevoir une copie int&eacute;grale, un extrait avec mention de la filiation ou un extrait plurilingue, n&rsquo;oubliez pas de pr&eacute;ciser dans votre demande toutes les indications concernant les parents : Le nom et pr&eacute;noms de la m&egrave;re / des m&egrave;res Le nom et pr&eacute;noms du p&egrave;re / des p&egrave;res &Agrave; d&eacute;faut, le service de l&rsquo;&eacute;tat civil ne pourra vous d&eacute;livrer qu&rsquo;un extrait sans mention de la filiation.</p>',8,1,1,'',''),(17,'Type d\'acte demandé','',8,1,1,'',''),(18,'Vos coordonnées','',9,1,1,'','');
/*!40000 ALTER TABLE `forms_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_indexer_action`
--

DROP TABLE IF EXISTS `forms_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_form_response` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`),
  KEY `idx_fia_id_form_response` (`id_form_response`),
  KEY `idx_fia_id_task` (`id_task`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_indexer_action`
--

LOCK TABLES `forms_indexer_action` WRITE;
/*!40000 ALTER TABLE `forms_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_message`
--

DROP TABLE IF EXISTS `forms_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL,
  `end_message_display` smallint(6) DEFAULT NULL,
  `end_message` varchar(3000) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `index_fm_id_form` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_message`
--

LOCK TABLES `forms_message` WRITE;
/*!40000 ALTER TABLE `forms_message` DISABLE KEYS */;
INSERT INTO `forms_message` VALUES (1,1,1,'<p>Votre r&eacute;ponse au formulaire a bien &eacute;t&eacute; prise en compte.</p>'),(4,4,1,'<p>Votre r&eacute;ponse au formulaire a bien &eacute;t&eacute; prise en compte.</p>');
/*!40000 ALTER TABLE `forms_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_question`
--

DROP TABLE IF EXISTS `forms_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_question` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `id_entry` int(11) DEFAULT 0,
  `id_step` int(11) DEFAULT 0,
  `is_visible_multiview_global` smallint(6) NOT NULL DEFAULT 0,
  `is_visible_multiview_form_selected` smallint(6) NOT NULL DEFAULT 0,
  `multiview_column_order` int(11) NOT NULL DEFAULT 0,
  `column_title` varchar(255) NOT NULL DEFAULT '',
  `is_filterable_multiview_global` smallint(6) NOT NULL DEFAULT 0,
  `is_filterable_multiview_form_selected` smallint(6) NOT NULL DEFAULT 0,
  `export_display_order` int(11) DEFAULT 0,
  PRIMARY KEY (`id_question`),
  KEY `index_fq_code` (`code`),
  KEY `index_fq_id_entry` (`id_entry`),
  KEY `index_fq_id_step` (`id_step`),
  KEY `index_fg_id_step` (`id_step`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question`
--

LOCK TABLES `forms_question` WRITE;
/*!40000 ALTER TABLE `forms_question` DISABLE KEYS */;
INSERT INTO `forms_question` VALUES (1,'Nom','question_989','',1,1,0,0,0,'Nom',0,0,0),(2,'Prénom','question_990','',2,1,0,0,0,'Prénom',0,0,0),(3,'Courriel','question_991','',3,1,0,0,0,'Courriel',0,0,0),(4,'Numéro de téléphone','question_992','',4,1,0,0,0,'Numéro de téléphone',0,0,0),(5,'Sélectionnez le domaine sur lequel porte votre demande','question_993','',5,1,0,0,0,'Sélectionnez le domaine sur lequel porte votre demande',0,0,0),(40,'Thématique Affaires Scolaires','question_40','',40,1,0,0,0,'Thématique Affaires Scolaires',0,0,0),(41,'Thématique Espace Public','question_41','',41,1,0,0,0,'Thématique Espace Public',0,0,0),(42,'Votre message','question_42','',42,1,0,0,0,'Votre message',0,0,0),(43,'Numéro de dossier','question_43',NULL,43,1,0,0,0,'Numéro de dossier',0,0,0),(55,'Motif de la demande','question_95','',55,7,0,0,0,'Motif de la demande',0,0,0),(56,'Préciser le motif','question_96','',56,7,0,0,0,'Préciser le motif',0,0,0),(57,'commentaire','question_97','<p>Les actes de mariage ant&eacute;rieur &agrave; 1946 et les tables annu&eacute;lles et d&eacute;cennales correspondantes ont &eacute;t&eacute; num&eacute;ris&eacute;s et vous pouvez les consulter directement sur le site de CiteLibre</p>\r\n<p>Seuls les actes enregistr&eacute;s &agrave; <strong>CiteLibre</strong>&nbsp;peuvent &ecirc;tre d&eacute;livr&eacute;s. Si l\'acte concerne une autre commune, Veuillez consulter&nbsp;<a href=\"https://www.service-public.fr/particuliers/vosdroits/R42837\" target=\"_blank\">service-public.fr </a></p>',57,8,0,0,0,'commentaire',0,0,0),(58,'Lieu du mariage','question_99','',58,8,0,0,0,'Lieu',0,0,0),(59,'Date du mariage','question_100','',59,8,0,0,0,'Date du mariage',0,0,0),(60,'Nom','question_101','',60,8,0,0,0,'Nom',0,0,0),(61,'Prénom','question_102','',61,8,0,0,0,'Prénom',0,0,0),(62,'Nom','question_103','',62,8,0,0,0,'Nom',0,0,0),(63,'Prénom','question_104','',63,8,0,0,0,'Prénom',0,0,0),(64,'Nom Parent 1','question_105','',64,8,0,0,0,'Nom Parent 1',0,0,0),(65,'Prénom Parent 1','question_106','',65,8,0,0,0,'Prénom Parent 1',0,0,0),(66,'Nom Parent 2','question_107','',66,8,0,0,0,'Nom Parent 2',0,0,0),(67,'Nom Parent 3','question_108','',67,8,0,0,0,'Nom Parent 3',0,0,0),(68,'Nom Parent 4','question_109','',68,8,0,0,0,'Nom Parent 4',0,0,0),(69,'Prénom Parent 2','question_110','',69,8,0,0,0,'Prénom Parent 2',0,0,0),(70,'Prénom Parent 3','question_111','',70,8,0,0,0,'Prénom Parent 3',0,0,0),(71,'Prénom Parent 4','question_112','',71,8,0,0,0,'Prénom Parent 4',0,0,0),(72,'Qualité du demandeur','question_113','',72,8,0,0,0,'Qualité du demandeur',0,0,0),(73,'Nombre d\'actes demandés','question_114','',73,8,0,0,0,'Nombre d\'actes demandés',0,0,0),(74,'Type d\'acte demandé :','question_115','',74,8,0,0,0,'Type d\'acte demandé :',0,0,0),(75,'commentaire','question_116','<p>Le demandeur d\'un acte doit &ecirc;tre majeur</p>',75,9,0,0,0,'commentaire',0,0,0),(78,'Adresse','question_119','',78,9,0,0,0,'Adresse',0,0,0),(80,'Pays (Attention ! si l\'adresse est à l\'étranger, l\'indication du pays est obligatoire)','question_121','',80,9,0,0,0,'Pays (Attention ! si l\'adresse est à l\'étranger, l\'indication du pays est obligatoire)',0,0,0),(81,'commentaire','question_122','<p>Vous serez inform&eacute; de l\'&eacute;volution de votre demande sur cette adresse mail.</p>\r\n<p>Des erreurs de saisie peuvent entra&icirc;ner l\'envoi &agrave; tort d\'informations dans la boite mail d\'un tiers. La ville de CiteLibre ne saurait &ecirc;tre tenue pour responsable d\'une transmission erron&eacute;e.</p>',81,9,0,0,0,'commentaire',0,0,0),(82,'Adresse mail','question_123','',82,9,0,0,0,'Adresse mail',0,0,0),(83,'Prénom authentifié','question_44','',83,9,0,0,0,'Prénom authentifié',0,0,0),(84,'Nom authentifié','question_45','',84,9,0,0,0,'Nom authentifié',0,0,0),(85,'commentaire','question_124','<p>&lt;p&gt;Merci de bien v&amp;eacute;rifier le r&amp;eacute;capitulatif de votre demande ci-dessus.&lt;br /&gt;Vous pouvez modifier les informations saisies si besoin avant de valider votre demande.&lt;/p&gt;</p>',85,10,0,0,0,'commentaire',0,0,0),(86,'J’accepte les conditions générales d’utilisation et je certifie sur l’honneur l’exactitude des informations fournies.','question_125',NULL,86,10,0,0,0,'J’accepte les conditions générales d’utilisation et je certifie sur l’honneur l’exactitude des informations fournies.',0,0,0),(87,' Numéro','question_126',NULL,87,10,0,0,0,' Numéro',0,0,0);
/*!40000 ALTER TABLE `forms_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_question_entry_response`
--

DROP TABLE IF EXISTS `forms_question_entry_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_question_entry_response` (
  `id_question_entry_response` int(11) NOT NULL AUTO_INCREMENT,
  `id_question_response` int(11) NOT NULL DEFAULT 0,
  `id_entry_response` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_question_entry_response`),
  KEY `idx_fqer_id_question_response` (`id_question_response`),
  KEY `idx_fqer_id_entry_response` (`id_entry_response`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question_entry_response`
--

LOCK TABLES `forms_question_entry_response` WRITE;
/*!40000 ALTER TABLE `forms_question_entry_response` DISABLE KEYS */;
INSERT INTO `forms_question_entry_response` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(8,8,8),(10,7,10),(67,62,67),(68,63,68),(69,65,69),(70,65,70),(71,65,71),(72,65,72),(73,65,73),(74,66,74),(75,67,75),(76,68,76),(77,69,77),(78,70,78),(79,71,79),(80,72,80),(81,73,81),(82,74,82),(83,75,83),(84,76,84),(85,77,85),(86,78,86),(87,79,87),(88,80,88),(89,81,89),(90,82,90),(91,83,91),(92,84,92),(93,85,93),(94,86,94),(95,87,95),(96,88,96),(97,89,97),(98,90,98),(99,92,99),(100,92,100),(101,92,101),(102,92,102),(103,92,103),(104,93,104),(105,94,105),(106,95,106),(107,96,107),(108,97,108),(109,98,109),(110,99,110),(111,100,111),(112,101,112),(113,102,113),(114,103,114),(115,104,115),(116,105,116),(117,106,117),(118,107,118),(119,108,119),(120,110,120),(121,111,121),(122,112,122),(123,113,123),(124,114,124),(125,117,125),(126,117,126),(127,118,127);
/*!40000 ALTER TABLE `forms_question_entry_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_question_response`
--

DROP TABLE IF EXISTS `forms_question_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_question_response` (
  `id_question_response` int(11) NOT NULL AUTO_INCREMENT,
  `id_form_response` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `id_step` int(11) NOT NULL DEFAULT 0,
  `iteration_number` int(11) DEFAULT 0,
  PRIMARY KEY (`id_question_response`),
  KEY `idx_fqr_id_form_response` (`id_form_response`),
  KEY `idx_fqr_id_question` (`id_question`),
  KEY `idx_fqr_id_step` (`id_step`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question_response`
--

LOCK TABLES `forms_question_response` WRITE;
/*!40000 ALTER TABLE `forms_question_response` DISABLE KEYS */;
INSERT INTO `forms_question_response` VALUES (1,1,1,1,0),(2,1,2,1,0),(3,1,3,1,0),(4,1,4,1,0),(5,1,5,1,0),(6,1,41,1,0),(7,1,42,1,0),(8,1,43,1,0),(62,3,55,7,0),(63,3,56,7,0),(64,3,57,8,0),(65,3,58,8,0),(66,3,59,8,0),(67,3,60,8,0),(68,3,61,8,0),(69,3,62,8,0),(70,3,63,8,0),(71,3,64,8,0),(72,3,65,8,0),(73,3,66,8,0),(74,3,69,8,0),(75,3,67,8,0),(76,3,70,8,0),(77,3,68,8,0),(78,3,71,8,0),(79,3,72,8,0),(80,3,73,8,0),(81,3,74,8,0),(82,4,1,1,0),(83,4,2,1,0),(84,4,3,1,0),(85,4,4,1,0),(86,4,5,1,0),(87,4,41,1,0),(88,4,42,1,0),(89,4,43,1,0),(90,5,55,7,0),(91,5,57,8,0),(92,5,58,8,0),(93,5,59,8,0),(94,5,60,8,0),(95,5,61,8,0),(96,5,62,8,0),(97,5,63,8,0),(98,5,64,8,0),(99,5,65,8,0),(100,5,66,8,0),(101,5,69,8,0),(102,5,67,8,0),(103,5,70,8,0),(104,5,68,8,0),(105,5,71,8,0),(106,5,72,8,0),(107,5,73,8,0),(108,5,74,8,0),(109,5,75,9,0),(110,5,84,9,0),(111,5,83,9,0),(112,5,82,9,0),(113,5,78,9,0),(114,5,80,9,0),(115,5,81,9,0),(116,5,85,10,0),(117,5,86,10,0),(118,5,87,10,0);
/*!40000 ALTER TABLE `forms_question_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_response`
--

DROP TABLE IF EXISTS `forms_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_response` (
  `id_response` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `guid` varchar(255) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `from_save` smallint(6) DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `role` varchar(50) DEFAULT NULL,
  `admin` varchar(50) DEFAULT NULL,
  `update_date_status` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_response`),
  KEY `idx_fr_id_form` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_response`
--

LOCK TABLES `forms_response` WRITE;
/*!40000 ALTER TABLE `forms_response` DISABLE KEYS */;
INSERT INTO `forms_response` VALUES (1,1,NULL,'2024-03-12 15:23:42','2024-03-12 15:23:42',0,0,NULL,NULL,'2024-03-12 15:23:42'),(3,4,'john.doe@citelibre.org','2024-03-15 11:43:27','2024-03-15 11:43:27',1,0,NULL,NULL,'2024-03-15 11:43:27'),(4,1,NULL,'2024-06-05 14:36:31','2024-06-05 14:36:31',0,0,NULL,NULL,'2024-06-05 14:36:31'),(5,4,'test@paris.fr','2024-06-07 15:56:39','2024-06-07 15:56:39',0,0,NULL,NULL,'2024-06-07 15:56:39');
/*!40000 ALTER TABLE `forms_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_response_step`
--

DROP TABLE IF EXISTS `forms_response_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_response_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_form_response` int(11) NOT NULL DEFAULT 0,
  `id_step` int(11) NOT NULL DEFAULT 0,
  `order_response` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_frs_id_form_response` (`id_form_response`),
  KEY `idx_frs_id_step` (`id_step`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_response_step`
--

LOCK TABLES `forms_response_step` WRITE;
/*!40000 ALTER TABLE `forms_response_step` DISABLE KEYS */;
INSERT INTO `forms_response_step` VALUES (1,1,1,0),(8,3,7,0),(9,3,8,1),(10,4,1,0),(11,5,7,0),(12,5,8,1),(13,5,9,2),(14,5,10,3);
/*!40000 ALTER TABLE `forms_response_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_step`
--

DROP TABLE IF EXISTS `forms_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_step` (
  `id_step` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `id_form` int(11) NOT NULL DEFAULT 0,
  `is_initial` smallint(6) NOT NULL DEFAULT 0,
  `is_final` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_step`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_step`
--

LOCK TABLES `forms_step` WRITE;
/*!40000 ALTER TABLE `forms_step` DISABLE KEYS */;
INSERT INTO `forms_step` VALUES (1,'Ma demande','',1,1,1),(7,'Pour votre demande d\'acte, veuillez préciser le motif','Motif de la demande',4,1,0),(8,'Votre demande','',4,0,0),(9,'Coordonnées','',4,0,0),(10,'Validation','',4,0,1);
/*!40000 ALTER TABLE `forms_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_transition`
--

DROP TABLE IF EXISTS `forms_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_transition` (
  `id_transition` int(11) NOT NULL AUTO_INCREMENT,
  `from_step` int(11) NOT NULL,
  `next_step` int(11) NOT NULL,
  `priority` int(11) DEFAULT 0,
  PRIMARY KEY (`id_transition`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_transition`
--

LOCK TABLES `forms_transition` WRITE;
/*!40000 ALTER TABLE `forms_transition` DISABLE KEYS */;
INSERT INTO `forms_transition` VALUES (4,9,10,1),(6,7,8,1),(7,8,9,1);
/*!40000 ALTER TABLE `forms_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_unittree_unit_selection_config`
--

DROP TABLE IF EXISTS `forms_unittree_unit_selection_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_unittree_unit_selection_config` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_unittree_unit_selection_config`
--

LOCK TABLES `forms_unittree_unit_selection_config` WRITE;
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config` DISABLE KEYS */;
INSERT INTO `forms_unittree_unit_selection_config` VALUES (1,1,1);
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_unittree_unit_selection_config_value`
--

DROP TABLE IF EXISTS `forms_unittree_unit_selection_config_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_unittree_unit_selection_config_value` (
  `id_config_value` int(11) NOT NULL AUTO_INCREMENT,
  `id_config` int(11) NOT NULL DEFAULT 0,
  `id_step` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `response_value` varchar(255) DEFAULT NULL,
  `id_unit` int(11) NOT NULL DEFAULT 0,
  `id_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_config_value`),
  KEY `index_unit_selection_conf_value` (`id_config`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_unittree_unit_selection_config_value`
--

LOCK TABLES `forms_unittree_unit_selection_config_value` WRITE;
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config_value` DISABLE KEYS */;
INSERT INTO `forms_unittree_unit_selection_config_value` VALUES (137,1,1,5,'logement_habitat',3,1),(138,1,1,40,'ecoles',5,2),(139,1,1,40,'centres_loisirs',7,3),(140,1,1,40,'petite_enfance',6,4),(141,1,1,41,'voirie',8,5),(142,1,1,41,'espaces_verts',9,6),(143,1,1,5,'espace_public',1,7),(144,1,1,5,'affaires_scolaires',4,8);
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_entry`
--

DROP TABLE IF EXISTS `genatt_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_entry` (
  `id_entry` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) NOT NULL,
  `id_type` int(11) NOT NULL DEFAULT 0,
  `id_parent` int(11) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `fields_in_line` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `id_field_depend` int(11) DEFAULT NULL,
  `field_unique` smallint(6) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `pos_conditional` int(11) DEFAULT 0,
  `error_message` mediumtext DEFAULT NULL,
  `is_only_display_back` smallint(6) DEFAULT 0,
  `is_indexed` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_entry`),
  KEY `index_genatt_entry_resource` (`id_resource`),
  KEY `index_genatt_entry_parent` (`id_parent`),
  KEY `index_genatt_code` (`code`),
  KEY `fk_genatt_entry_type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry`
--

LOCK TABLES `genatt_entry` WRITE;
/*!40000 ALTER TABLE `genatt_entry` DISABLE KEYS */;
INSERT INTO `genatt_entry` VALUES (1,1,'FORMS_FORM',106,NULL,'Nom','question_989','','',0,0,1,NULL,0,'',0,'',0,1),(2,1,'FORMS_FORM',106,NULL,'Prénom','question_990','','',0,0,2,NULL,0,'',0,'',0,1),(3,1,'FORMS_FORM',106,NULL,'Courriel','question_991','','',0,0,3,NULL,0,'',0,'',0,1),(4,1,'FORMS_FORM',119,NULL,'Numéro de téléphone','question_992','','',0,0,4,NULL,0,'',0,'',0,1),(5,1,'FORMS_FORM',105,NULL,'Sélectionnez le domaine sur lequel porte votre demande','question_993','','',0,0,5,NULL,0,'',0,NULL,0,1),(40,1,'FORMS_FORM',105,NULL,'Thématique Affaires Scolaires','question_40','','',0,0,0,NULL,0,'',0,NULL,0,1),(41,1,'FORMS_FORM',105,NULL,'Thématique Espace Public','question_41','','',0,0,0,NULL,0,'',0,NULL,0,1),(42,1,'FORMS_FORM',107,NULL,'Votre message','question_42','Message limité à 2500 caractères','',0,0,0,NULL,0,'',0,NULL,0,1),(43,1,'FORMS_FORM',112,NULL,'Numéro de dossier','question_43',NULL,NULL,0,0,0,NULL,0,'',0,NULL,0,1),(55,4,'FORMS_FORM',101,NULL,'Motif de la demande','question_95','','',0,0,1,NULL,0,'',0,NULL,0,0),(56,4,'FORMS_FORM',106,NULL,'Préciser le motif','question_96','','',0,0,2,NULL,0,'',0,'',0,1),(57,4,'FORMS_FORM',103,NULL,NULL,'question_97',NULL,'<p>Les actes de mariage ant&eacute;rieur &agrave; 1946 et les tables annu&eacute;lles et d&eacute;cennales correspondantes ont &eacute;t&eacute; num&eacute;ris&eacute;s et vous pouvez les consulter directement sur le site de CiteLibre</p>\r\n<p>Seuls les actes enregistr&eacute;s &agrave; <strong>CiteLibre</strong>&nbsp;peuvent &ecirc;tre d&eacute;livr&eacute;s. Si l\'acte concerne une autre commune, Veuillez consulter&nbsp;<a href=\"https://www.service-public.fr/particuliers/vosdroits/R42837\" target=\"_blank\">service-public.fr </a></p>',0,0,3,NULL,0,'',0,NULL,0,0),(58,4,'FORMS_FORM',109,NULL,'Lieu du mariage','question_99','','',0,0,4,NULL,0,' checkaddress',0,NULL,0,1),(59,4,'FORMS_FORM',104,NULL,'Date du mariage','question_100','','',0,0,5,NULL,0,'',0,NULL,0,1),(60,4,'FORMS_FORM',106,NULL,'Nom','question_101','','',0,0,6,NULL,0,'',0,'',0,1),(61,4,'FORMS_FORM',106,NULL,'Prénom','question_102','','',0,0,7,NULL,0,'',0,'',0,1),(62,4,'FORMS_FORM',106,NULL,'Nom','question_103','','',0,0,8,NULL,0,'',0,'',0,1),(63,4,'FORMS_FORM',106,NULL,'Prénom','question_104','','',0,0,9,NULL,0,'',0,'',0,1),(64,4,'FORMS_FORM',106,NULL,'Nom Parent 1','question_105','','',0,0,10,NULL,0,'',0,'',0,1),(65,4,'FORMS_FORM',106,NULL,'Prénom Parent 1','question_106','','',0,0,11,NULL,0,'',0,'',0,1),(66,4,'FORMS_FORM',106,NULL,'Nom Parent 2','question_107','','',0,0,12,NULL,0,'',0,'',0,1),(67,4,'FORMS_FORM',106,NULL,'Nom Parent 3','question_108','','',0,0,13,NULL,0,'',0,'',0,1),(68,4,'FORMS_FORM',106,NULL,'Nom Parent 4','question_109','','',0,0,14,NULL,0,'',0,'',0,1),(69,4,'FORMS_FORM',106,NULL,'Prénom Parent 2','question_110','','',0,0,15,NULL,0,'',0,'',0,1),(70,4,'FORMS_FORM',106,NULL,'Prénom Parent 3','question_111','','',0,0,16,NULL,0,'',0,'',0,1),(71,4,'FORMS_FORM',106,NULL,'Prénom Parent 4','question_112','','',0,0,17,NULL,0,'',0,'',0,1),(72,4,'FORMS_FORM',105,NULL,'Qualité du demandeur','question_113','','',0,0,18,NULL,0,'',0,NULL,0,1),(73,4,'FORMS_FORM',120,NULL,'Nombre d\'actes demandés','question_114','','',0,0,19,NULL,0,'',0,'',0,1),(74,4,'FORMS_FORM',101,NULL,'Type d\'acte demandé :','question_115','','',0,1,20,NULL,0,'',0,NULL,0,0),(75,4,'FORMS_FORM',103,NULL,NULL,'question_116',NULL,'<p>Le demandeur d\'un acte doit &ecirc;tre majeur</p>',0,0,21,NULL,0,'',0,NULL,0,0),(78,4,'FORMS_FORM',106,NULL,'Adresse','question_119','','',0,0,24,NULL,0,'',0,'',0,1),(80,4,'FORMS_FORM',106,NULL,'Pays (Attention ! si l\'adresse est à l\'étranger, l\'indication du pays est obligatoire)','question_121','','',0,0,26,NULL,0,'',0,'',0,1),(81,4,'FORMS_FORM',103,NULL,NULL,'question_122',NULL,'<p>Vous serez inform&eacute; de l\'&eacute;volution de votre demande sur cette adresse mail.</p>\r\n<p>Des erreurs de saisie peuvent entra&icirc;ner l\'envoi &agrave; tort d\'informations dans la boite mail d\'un tiers. La ville de CiteLibre ne saurait &ecirc;tre tenue pour responsable d\'une transmission erron&eacute;e.</p>',0,0,27,NULL,0,'',0,NULL,0,0),(82,4,'FORMS_FORM',106,NULL,'Adresse mail','question_123','','',1,0,28,NULL,0,'',0,'',0,1),(83,4,'FORMS_FORM',113,NULL,'Prénom authentifié','question_44','','',0,0,29,NULL,0,'',0,NULL,0,1),(84,4,'FORMS_FORM',113,NULL,'Nom authentifié','question_45','','',0,0,30,NULL,0,'',0,NULL,0,1),(85,4,'FORMS_FORM',103,NULL,NULL,'question_124',NULL,'<p>&lt;p&gt;Merci de bien v&amp;eacute;rifier le r&amp;eacute;capitulatif de votre demande ci-dessus.&lt;br /&gt;Vous pouvez modifier les informations saisies si besoin avant de valider votre demande.&lt;/p&gt;</p>',0,0,31,NULL,0,'',0,NULL,0,0),(86,4,'FORMS_FORM',116,NULL,'J’accepte les conditions générales d’utilisation et je certifie sur l’honneur l’exactitude des informations fournies.','question_125',NULL,NULL,0,0,32,NULL,0,'',0,NULL,0,0),(87,4,'FORMS_FORM',112,NULL,'Numéro','question_126',NULL,NULL,0,0,33,NULL,0,'',0,NULL,0,1);
/*!40000 ALTER TABLE `genatt_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_entry_type`
--

DROP TABLE IF EXISTS `genatt_entry_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_entry_type` (
  `id_type` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_group` smallint(6) DEFAULT NULL,
  `is_comment` int(11) DEFAULT NULL,
  `is_mylutece_user` smallint(6) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `icon_name` varchar(255) DEFAULT NULL,
  `plugin` varchar(255) NOT NULL,
  `display_order` int(11) DEFAULT 0,
  `inactive` int(11) DEFAULT 0,
  PRIMARY KEY (`id_type`),
  KEY `index_genatt_entry_type_plugin` (`plugin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry_type`
--

LOCK TABLES `genatt_entry_type` WRITE;
/*!40000 ALTER TABLE `genatt_entry_type` DISABLE KEYS */;
INSERT INTO `genatt_entry_type` VALUES (101,'Bouton radio',0,0,0,'forms.entryTypeRadioButton','dot-circle','forms',5,0),(102,'Case à cocher',0,0,0,'forms.entryTypeCheckBox','check-square','forms',6,0),(103,'Commentaire',0,1,0,'forms.entryTypeComment','comment','forms',11,0),(104,'Date',0,0,0,'forms.entryTypeDate','calendar','forms',4,0),(105,'Liste déroulante',0,0,0,'forms.entryTypeSelect','list-alt','forms',7,0),(106,'Zone de texte court',0,0,0,'forms.entryTypeText','file-alt','forms',2,0),(107,'Zone de texte long',0,0,0,'forms.entryTypeTextArea','sticky-note','forms',3,0),(108,'Fichier',0,0,0,'forms.entryTypeFile','file','forms',9,0),(109,'Géolocalisation',0,0,0,'forms.entryTypeGeolocation','map-marked-alt','forms',16,0),(110,'Image',0,0,0,'forms.entryTypeImage','image','forms',10,0),(111,'Utilisateur MyLutece',0,0,1,'forms.entryTypeMyLuteceUser','user','forms',13,1),(112,'Numérotation',0,0,0,'forms.entryTypeNumbering','hashtag','forms',8,0),(113,'Attribut de l\'utilisateur MyLutece',0,0,0,'forms.entryTypeMyLuteceUserattribute','user','forms',14,0),(114,'Tableau',0,0,0,'forms.entryTypeArray','table','forms',17,1),(115,'Regroupement',1,0,0,'forms.entryTypeGroup','indent','forms',1,0),(116,'Conditions d\'utilisation',0,0,0,'forms.entryTypeTermsOfService','gavel','forms',12,0),(117,'Lecture automatique fichier (OCR)',0,0,0,'forms.entryTypeAutomaticFileReading','file','forms',18,1),(118,'Camera',0,0,0,'forms.entryTypeCamera','camera','forms',15,0),(119,'Numéro de téléphone',0,0,0,'forms.entryTypeTelephoneNumber','phone-square','forms',19,0),(120,'Nombre',0,0,0,'forms.entryTypeNumber','hashtag','forms',5,0),(121,'Liste triable',0,0,0,'forms.entryTypeSelectOrder','list-ol','forms',20,0),(122,'Galerie image',0,0,0,'forms.entryTypeGalleryImage','image','forms',21,0);
/*!40000 ALTER TABLE `genatt_entry_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_field`
--

DROP TABLE IF EXISTS `genatt_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL,
  `default_value` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `value_type_date` date DEFAULT NULL,
  `no_display_title` smallint(6) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `id_file_key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_field`),
  KEY `index_genatt_field_entry` (`id_entry`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_field`
--

LOCK TABLES `genatt_field` WRITE;
/*!40000 ALTER TABLE `genatt_field` DISABLE KEYS */;
INSERT INTO `genatt_field` VALUES (1,1,NULL,'exportable','false',0,1,NULL,0,NULL,NULL),(2,1,NULL,'exportable_pdf','false',0,2,NULL,0,NULL,NULL),(3,1,'','anonymizable','false',0,3,NULL,0,NULL,NULL),(4,1,NULL,'text_config','',0,4,NULL,0,NULL,NULL),(5,1,NULL,'width','0',0,5,NULL,0,NULL,NULL),(6,1,NULL,'max_size','-1',0,6,NULL,0,NULL,NULL),(7,1,NULL,'placeholder','',0,7,NULL,0,NULL,NULL),(8,1,NULL,'confirm_field','false',0,8,NULL,0,NULL,NULL),(9,2,NULL,'exportable','false',0,9,NULL,0,NULL,NULL),(10,2,NULL,'exportable_pdf','false',0,10,NULL,0,NULL,NULL),(11,2,'','anonymizable','false',0,11,NULL,0,NULL,NULL),(12,2,NULL,'text_config','',0,12,NULL,0,NULL,NULL),(13,2,NULL,'width','0',0,13,NULL,0,NULL,NULL),(14,2,NULL,'max_size','-1',0,14,NULL,0,NULL,NULL),(15,2,NULL,'placeholder','',0,15,NULL,0,NULL,NULL),(16,2,NULL,'confirm_field','false',0,16,NULL,0,NULL,NULL),(17,3,NULL,'exportable','false',0,17,NULL,0,NULL,NULL),(18,3,NULL,'exportable_pdf','false',0,18,NULL,0,NULL,NULL),(19,3,'','anonymizable','false',0,19,NULL,0,NULL,NULL),(20,3,NULL,'text_config','',0,20,NULL,0,NULL,NULL),(21,3,NULL,'width','0',0,21,NULL,0,NULL,NULL),(22,3,NULL,'max_size','-1',0,22,NULL,0,NULL,NULL),(23,3,NULL,'placeholder','',0,23,NULL,0,NULL,NULL),(24,3,NULL,'confirm_field','false',0,24,NULL,0,NULL,NULL),(25,4,NULL,'exportable','false',0,25,NULL,0,NULL,NULL),(26,4,NULL,'exportable_pdf','false',0,26,NULL,0,NULL,NULL),(27,4,'','anonymizable','false',0,27,NULL,0,NULL,NULL),(28,4,NULL,'autocomplete',NULL,0,28,NULL,0,NULL,NULL),(29,4,NULL,'defaultRegion','FR',0,29,NULL,0,NULL,NULL),(30,4,NULL,'placeholder','',0,30,NULL,0,NULL,NULL),(31,5,NULL,'exportable','false',0,31,NULL,0,NULL,NULL),(32,5,NULL,'exportable_pdf','false',0,32,NULL,0,NULL,NULL),(33,5,NULL,'anonymizable','false',0,33,NULL,0,NULL,NULL),(34,5,'1','use_ref_list','true',0,34,NULL,0,NULL,NULL),(347,5,'Espace Public','answer_choice','espace_public',0,347,NULL,0,NULL,NULL),(348,5,'Logement et Habitat','answer_choice','logement_habitat',0,348,NULL,0,NULL,NULL),(349,5,'Affaires Scolaires','answer_choice','affaires_scolaires',0,349,NULL,0,NULL,NULL),(350,40,NULL,'exportable','false',0,350,NULL,0,NULL,NULL),(351,40,NULL,'exportable_pdf','false',0,351,NULL,0,NULL,NULL),(352,40,NULL,'anonymizable','false',0,352,NULL,0,NULL,NULL),(353,40,'3','use_ref_list','true',0,353,NULL,0,NULL,NULL),(354,40,'Ecoles','answer_choice','ecoles',0,354,NULL,0,NULL,NULL),(355,40,'Centres de Loisirs','answer_choice','centres_loisirs',0,355,NULL,0,NULL,NULL),(356,40,'Petite Enfance','answer_choice','petite_enfance',0,356,NULL,0,NULL,NULL),(357,41,NULL,'exportable','false',0,357,NULL,0,NULL,NULL),(358,41,NULL,'exportable_pdf','false',0,358,NULL,0,NULL,NULL),(359,41,NULL,'anonymizable','false',0,359,NULL,0,NULL,NULL),(360,41,'2','use_ref_list','true',0,360,NULL,0,NULL,NULL),(361,41,'Voirie','answer_choice','voirie',0,361,NULL,0,NULL,NULL),(362,41,'Espaces Verts','answer_choice','espaces_verts',0,362,NULL,0,NULL,NULL),(363,42,NULL,'exportable','false',0,363,NULL,0,NULL,NULL),(364,42,NULL,'exportable_pdf','false',0,364,NULL,0,NULL,NULL),(365,42,'','anonymizable','false',0,365,NULL,0,NULL,NULL),(366,42,NULL,'text_config','',0,366,NULL,0,NULL,NULL),(367,42,NULL,'max_size','2500',0,367,NULL,0,NULL,NULL),(368,42,NULL,'width','0',0,368,NULL,0,NULL,NULL),(369,42,NULL,'height','8',0,369,NULL,0,NULL,NULL),(370,42,NULL,'richtext','false',0,370,NULL,0,NULL,NULL),(371,42,NULL,'placeholder','',0,371,NULL,0,NULL,NULL),(372,1,NULL,'used_in_correct_form_response','false',0,372,NULL,0,NULL,NULL),(373,1,NULL,'used_in_complete_form_response','false',0,373,NULL,0,NULL,NULL),(374,2,NULL,'used_in_correct_form_response','false',0,374,NULL,0,NULL,NULL),(375,2,NULL,'used_in_complete_form_response','false',0,375,NULL,0,NULL,NULL),(376,3,NULL,'used_in_correct_form_response','false',0,376,NULL,0,NULL,NULL),(377,3,NULL,'used_in_complete_form_response','false',0,377,NULL,0,NULL,NULL),(378,4,NULL,'used_in_correct_form_response','false',0,378,NULL,0,NULL,NULL),(379,4,NULL,'used_in_complete_form_response','false',0,379,NULL,0,NULL,NULL),(380,5,NULL,'used_in_correct_form_response','false',0,380,NULL,0,NULL,NULL),(381,5,NULL,'used_in_complete_form_response','false',0,381,NULL,0,NULL,NULL),(382,40,NULL,'used_in_correct_form_response','false',0,382,NULL,0,NULL,NULL),(383,40,NULL,'used_in_complete_form_response','false',0,383,NULL,0,NULL,NULL),(384,41,NULL,'used_in_correct_form_response','false',0,384,NULL,0,NULL,NULL),(385,41,NULL,'used_in_complete_form_response','false',0,385,NULL,0,NULL,NULL),(386,42,NULL,'used_in_correct_form_response','false',0,386,NULL,0,NULL,NULL),(387,42,NULL,'used_in_complete_form_response','true',0,387,NULL,0,NULL,NULL),(388,43,NULL,'exportable','false',0,388,NULL,0,NULL,NULL),(389,43,NULL,'exportable_pdf','false',0,389,NULL,0,NULL,NULL),(390,43,NULL,'anonymizable','false',0,390,NULL,0,NULL,NULL),(391,43,NULL,'prefix','',0,391,NULL,0,NULL,NULL),(479,55,NULL,'exportable','false',0,400,NULL,0,NULL,NULL),(480,55,NULL,'exportable_pdf','false',0,401,NULL,0,NULL,NULL),(481,55,NULL,'anonymizable','false',0,402,NULL,0,NULL,NULL),(482,55,'-1','use_ref_list','false',0,403,NULL,0,NULL,NULL),(483,55,'Prestations sociales, retraite','answer_choice','prestations_sociales_retraite',0,404,NULL,0,'',NULL),(484,55,'Généalogie','answer_choice','genealogie',0,405,NULL,0,'',NULL),(485,55,'Autre motif','answer_choice','autre_motif',0,406,NULL,0,'',NULL),(486,55,NULL,'used_in_correct_form_response','false',0,407,NULL,0,NULL,NULL),(487,55,NULL,'used_in_complete_form_response','false',0,408,NULL,0,NULL,NULL),(488,56,NULL,'exportable','false',0,409,NULL,0,NULL,NULL),(489,56,NULL,'exportable_pdf','false',0,410,NULL,0,NULL,NULL),(490,56,'','anonymizable','false',0,411,NULL,0,NULL,NULL),(491,56,NULL,'text_config','',0,412,NULL,0,NULL,NULL),(492,56,NULL,'width','0',0,413,NULL,0,NULL,NULL),(493,56,NULL,'max_size','-1',0,414,NULL,0,NULL,NULL),(494,56,NULL,'placeholder','',0,415,NULL,0,NULL,NULL),(495,56,NULL,'confirm_field','false',0,416,NULL,0,NULL,NULL),(496,56,NULL,'used_in_correct_form_response','false',0,417,NULL,0,NULL,NULL),(497,56,NULL,'used_in_complete_form_response','false',0,418,NULL,0,NULL,NULL),(498,57,NULL,'exportable','false',0,419,NULL,0,NULL,NULL),(499,57,NULL,'exportable_pdf','false',0,420,NULL,0,NULL,NULL),(500,57,NULL,'anonymizable','false',0,421,NULL,0,NULL,NULL),(501,57,NULL,'display_in_bo','false',0,422,NULL,0,NULL,NULL),(502,57,NULL,'used_in_correct_form_response','false',0,423,NULL,0,NULL,NULL),(503,57,NULL,'used_in_complete_form_response','false',0,424,NULL,0,NULL,NULL),(504,58,NULL,'exportable','false',0,425,NULL,0,NULL,NULL),(505,58,NULL,'exportable_pdf','false',0,426,NULL,0,NULL,NULL),(506,58,'','anonymizable','false',0,427,NULL,0,NULL,NULL),(507,58,NULL,'provider','wsaddress',0,428,NULL,0,NULL,NULL),(508,58,NULL,'editMode','',0,429,NULL,0,NULL,NULL),(509,58,NULL,'viewNumber','',0,430,NULL,0,NULL,NULL),(510,58,NULL,'idAddress','idAddress',0,431,NULL,0,NULL,NULL),(511,58,NULL,'address','address',0,432,NULL,0,NULL,NULL),(512,58,NULL,'additionalAddress','additionalAddress',0,433,NULL,0,NULL,NULL),(513,58,NULL,'X','X',0,434,NULL,0,NULL,NULL),(514,58,NULL,'Y','Y',0,435,NULL,0,NULL,NULL),(515,58,NULL,'geometry','geometry',0,436,NULL,0,NULL,NULL),(516,58,NULL,'used_in_correct_form_response','true',0,437,NULL,0,NULL,NULL),(517,58,NULL,'used_in_complete_form_response','false',0,438,NULL,0,NULL,NULL),(518,59,NULL,'exportable','false',0,439,NULL,0,NULL,NULL),(519,59,NULL,'exportable_pdf','false',0,440,NULL,0,NULL,NULL),(520,59,'','anonymizable','false',0,441,NULL,0,NULL,NULL),(521,59,NULL,'placeholder','',0,442,NULL,0,NULL,NULL),(522,59,NULL,'default_date_value',NULL,0,443,NULL,0,NULL,NULL),(523,59,NULL,'used_in_correct_form_response','true',0,444,NULL,0,NULL,NULL),(524,59,NULL,'used_in_complete_form_response','false',0,445,NULL,0,NULL,NULL),(525,60,NULL,'exportable','false',0,446,NULL,0,NULL,NULL),(526,60,NULL,'exportable_pdf','false',0,447,NULL,0,NULL,NULL),(527,60,'%g','anonymizable','true',0,448,NULL,0,NULL,NULL),(528,60,NULL,'text_config','',0,449,NULL,0,NULL,NULL),(529,60,NULL,'width','0',0,450,NULL,0,NULL,NULL),(530,60,NULL,'max_size','-1',0,451,NULL,0,NULL,NULL),(531,60,NULL,'placeholder','',0,452,NULL,0,NULL,NULL),(532,60,NULL,'confirm_field','false',0,453,NULL,0,NULL,NULL),(533,60,NULL,'used_in_correct_form_response','false',0,454,NULL,0,NULL,NULL),(534,60,NULL,'used_in_complete_form_response','false',0,455,NULL,0,NULL,NULL),(535,61,NULL,'exportable','false',0,456,NULL,0,NULL,NULL),(536,61,NULL,'exportable_pdf','false',0,457,NULL,0,NULL,NULL),(537,61,'%g','anonymizable','true',0,458,NULL,0,NULL,NULL),(538,61,NULL,'text_config','',0,459,NULL,0,NULL,NULL),(539,61,NULL,'width','0',0,460,NULL,0,NULL,NULL),(540,61,NULL,'max_size','-1',0,461,NULL,0,NULL,NULL),(541,61,NULL,'placeholder','',0,462,NULL,0,NULL,NULL),(542,61,NULL,'confirm_field','false',0,463,NULL,0,NULL,NULL),(543,61,NULL,'used_in_correct_form_response','false',0,464,NULL,0,NULL,NULL),(544,61,NULL,'used_in_complete_form_response','false',0,465,NULL,0,NULL,NULL),(545,62,NULL,'exportable','false',0,466,NULL,0,NULL,NULL),(546,62,NULL,'exportable_pdf','false',0,467,NULL,0,NULL,NULL),(547,62,'%g','anonymizable','true',0,468,NULL,0,NULL,NULL),(548,62,NULL,'text_config','',0,469,NULL,0,NULL,NULL),(549,62,NULL,'width','0',0,470,NULL,0,NULL,NULL),(550,62,NULL,'max_size','-1',0,471,NULL,0,NULL,NULL),(551,62,NULL,'placeholder','',0,472,NULL,0,NULL,NULL),(552,62,NULL,'confirm_field','false',0,473,NULL,0,NULL,NULL),(553,62,NULL,'used_in_correct_form_response','false',0,474,NULL,0,NULL,NULL),(554,62,NULL,'used_in_complete_form_response','false',0,475,NULL,0,NULL,NULL),(555,63,NULL,'exportable','false',0,476,NULL,0,NULL,NULL),(556,63,NULL,'exportable_pdf','false',0,477,NULL,0,NULL,NULL),(557,63,'%g','anonymizable','true',0,478,NULL,0,NULL,NULL),(558,63,NULL,'text_config','',0,479,NULL,0,NULL,NULL),(559,63,NULL,'width','0',0,480,NULL,0,NULL,NULL),(560,63,NULL,'max_size','-1',0,481,NULL,0,NULL,NULL),(561,63,NULL,'placeholder','',0,482,NULL,0,NULL,NULL),(562,63,NULL,'confirm_field','false',0,483,NULL,0,NULL,NULL),(563,63,NULL,'used_in_correct_form_response','false',0,484,NULL,0,NULL,NULL),(564,63,NULL,'used_in_complete_form_response','false',0,485,NULL,0,NULL,NULL),(565,64,NULL,'exportable','false',0,486,NULL,0,NULL,NULL),(566,64,NULL,'exportable_pdf','false',0,487,NULL,0,NULL,NULL),(567,64,'%g','anonymizable','true',0,488,NULL,0,NULL,NULL),(568,64,NULL,'text_config','',0,489,NULL,0,NULL,NULL),(569,64,NULL,'width','0',0,490,NULL,0,NULL,NULL),(570,64,NULL,'max_size','-1',0,491,NULL,0,NULL,NULL),(571,64,NULL,'placeholder','',0,492,NULL,0,NULL,NULL),(572,64,NULL,'confirm_field','false',0,493,NULL,0,NULL,NULL),(573,64,NULL,'used_in_correct_form_response','false',0,494,NULL,0,NULL,NULL),(574,64,NULL,'used_in_complete_form_response','false',0,495,NULL,0,NULL,NULL),(575,65,NULL,'exportable','false',0,496,NULL,0,NULL,NULL),(576,65,NULL,'exportable_pdf','false',0,497,NULL,0,NULL,NULL),(577,65,'%g','anonymizable','true',0,498,NULL,0,NULL,NULL),(578,65,NULL,'text_config','',0,499,NULL,0,NULL,NULL),(579,65,NULL,'width','0',0,500,NULL,0,NULL,NULL),(580,65,NULL,'max_size','-1',0,501,NULL,0,NULL,NULL),(581,65,NULL,'placeholder','',0,502,NULL,0,NULL,NULL),(582,65,NULL,'confirm_field','false',0,503,NULL,0,NULL,NULL),(583,65,NULL,'used_in_correct_form_response','false',0,504,NULL,0,NULL,NULL),(584,65,NULL,'used_in_complete_form_response','false',0,505,NULL,0,NULL,NULL),(585,66,NULL,'exportable','false',0,506,NULL,0,NULL,NULL),(586,66,NULL,'exportable_pdf','false',0,507,NULL,0,NULL,NULL),(587,66,'%g','anonymizable','true',0,508,NULL,0,NULL,NULL),(588,66,NULL,'text_config','',0,509,NULL,0,NULL,NULL),(589,66,NULL,'width','0',0,510,NULL,0,NULL,NULL),(590,66,NULL,'max_size','-1',0,511,NULL,0,NULL,NULL),(591,66,NULL,'placeholder','',0,512,NULL,0,NULL,NULL),(592,66,NULL,'confirm_field','false',0,513,NULL,0,NULL,NULL),(593,66,NULL,'used_in_correct_form_response','false',0,514,NULL,0,NULL,NULL),(594,66,NULL,'used_in_complete_form_response','false',0,515,NULL,0,NULL,NULL),(595,67,NULL,'exportable','false',0,516,NULL,0,NULL,NULL),(596,67,NULL,'exportable_pdf','false',0,517,NULL,0,NULL,NULL),(597,67,'%g','anonymizable','true',0,518,NULL,0,NULL,NULL),(598,67,NULL,'text_config','',0,519,NULL,0,NULL,NULL),(599,67,NULL,'width','0',0,520,NULL,0,NULL,NULL),(600,67,NULL,'max_size','-1',0,521,NULL,0,NULL,NULL),(601,67,NULL,'placeholder','',0,522,NULL,0,NULL,NULL),(602,67,NULL,'confirm_field','false',0,523,NULL,0,NULL,NULL),(603,67,NULL,'used_in_correct_form_response','false',0,524,NULL,0,NULL,NULL),(604,67,NULL,'used_in_complete_form_response','false',0,525,NULL,0,NULL,NULL),(605,68,NULL,'exportable','false',0,526,NULL,0,NULL,NULL),(606,68,NULL,'exportable_pdf','false',0,527,NULL,0,NULL,NULL),(607,68,'%g','anonymizable','true',0,528,NULL,0,NULL,NULL),(608,68,NULL,'text_config','',0,529,NULL,0,NULL,NULL),(609,68,NULL,'width','0',0,530,NULL,0,NULL,NULL),(610,68,NULL,'max_size','-1',0,531,NULL,0,NULL,NULL),(611,68,NULL,'placeholder','',0,532,NULL,0,NULL,NULL),(612,68,NULL,'confirm_field','false',0,533,NULL,0,NULL,NULL),(613,68,NULL,'used_in_correct_form_response','false',0,534,NULL,0,NULL,NULL),(614,68,NULL,'used_in_complete_form_response','false',0,535,NULL,0,NULL,NULL),(615,69,NULL,'exportable','false',0,536,NULL,0,NULL,NULL),(616,69,NULL,'exportable_pdf','false',0,537,NULL,0,NULL,NULL),(617,69,'%g','anonymizable','true',0,538,NULL,0,NULL,NULL),(618,69,NULL,'text_config','',0,539,NULL,0,NULL,NULL),(619,69,NULL,'width','0',0,540,NULL,0,NULL,NULL),(620,69,NULL,'max_size','-1',0,541,NULL,0,NULL,NULL),(621,69,NULL,'placeholder','',0,542,NULL,0,NULL,NULL),(622,69,NULL,'confirm_field','false',0,543,NULL,0,NULL,NULL),(623,69,NULL,'used_in_correct_form_response','false',0,544,NULL,0,NULL,NULL),(624,69,NULL,'used_in_complete_form_response','false',0,545,NULL,0,NULL,NULL),(625,70,NULL,'exportable','false',0,546,NULL,0,NULL,NULL),(626,70,NULL,'exportable_pdf','false',0,547,NULL,0,NULL,NULL),(627,70,'%g','anonymizable','true',0,548,NULL,0,NULL,NULL),(628,70,NULL,'text_config','',0,549,NULL,0,NULL,NULL),(629,70,NULL,'width','0',0,550,NULL,0,NULL,NULL),(630,70,NULL,'max_size','-1',0,551,NULL,0,NULL,NULL),(631,70,NULL,'placeholder','',0,552,NULL,0,NULL,NULL),(632,70,NULL,'confirm_field','false',0,553,NULL,0,NULL,NULL),(633,70,NULL,'used_in_correct_form_response','false',0,554,NULL,0,NULL,NULL),(634,70,NULL,'used_in_complete_form_response','false',0,555,NULL,0,NULL,NULL),(635,71,NULL,'exportable','false',0,556,NULL,0,NULL,NULL),(636,71,NULL,'exportable_pdf','false',0,557,NULL,0,NULL,NULL),(637,71,'%g','anonymizable','true',0,558,NULL,0,NULL,NULL),(638,71,NULL,'text_config','',0,559,NULL,0,NULL,NULL),(639,71,NULL,'width','0',0,560,NULL,0,NULL,NULL),(640,71,NULL,'max_size','-1',0,561,NULL,0,NULL,NULL),(641,71,NULL,'placeholder','',0,562,NULL,0,NULL,NULL),(642,71,NULL,'confirm_field','false',0,563,NULL,0,NULL,NULL),(643,71,NULL,'used_in_correct_form_response','false',0,564,NULL,0,NULL,NULL),(644,71,NULL,'used_in_complete_form_response','false',0,565,NULL,0,NULL,NULL),(645,72,NULL,'exportable','false',0,566,NULL,0,NULL,NULL),(646,72,NULL,'exportable_pdf','false',0,567,NULL,0,NULL,NULL),(647,72,NULL,'anonymizable','false',0,568,NULL,0,NULL,NULL),(648,72,'-1','use_ref_list','false',0,569,NULL,0,NULL,NULL),(649,72,'Le titulaire de l\'acte','answer_choice','le_titulaire_de_lacte',0,570,NULL,0,'',NULL),(650,72,'Son parent ou son grand-parent','answer_choice','son_parent_ou_son_grandparent',0,571,NULL,0,'',NULL),(651,72,'son fils ou sa fille. son petit-fils ou sa petite-fille','answer_choice','son_fils_ou_sa_fille_son_petitfils_ou_sa_petitefille',0,572,NULL,0,'',NULL),(652,72,'Son conjoint','answer_choice','son_conjoint',0,573,NULL,0,'',NULL),(653,72,'son frère ou sa soeur. Son oncle ou sa tante','answer_choice','son_frere_ou_sa_soeur_son_oncle_ou_sa_tante',0,574,NULL,0,'',NULL),(654,72,'Autre','answer_choice','autre',0,575,NULL,0,'',NULL),(655,72,NULL,'used_in_correct_form_response','false',0,576,NULL,0,NULL,NULL),(656,72,NULL,'used_in_complete_form_response','false',0,577,NULL,0,NULL,NULL),(657,73,NULL,'exportable','false',0,578,NULL,0,NULL,NULL),(658,73,NULL,'exportable_pdf','false',0,579,NULL,0,NULL,NULL),(659,73,'','anonymizable','false',0,580,NULL,0,NULL,NULL),(660,73,NULL,'text_config',NULL,0,581,NULL,0,NULL,NULL),(661,73,NULL,'min','1',0,582,NULL,0,NULL,NULL),(662,73,NULL,'max','2',0,583,NULL,0,NULL,NULL),(663,73,NULL,'suffix','',0,584,NULL,0,NULL,NULL),(664,73,NULL,'placeholder','',0,585,NULL,0,NULL,NULL),(665,73,NULL,'used_in_correct_form_response','false',0,586,NULL,0,NULL,NULL),(666,73,NULL,'used_in_complete_form_response','false',0,587,NULL,0,NULL,NULL),(667,74,NULL,'exportable','false',0,588,NULL,0,NULL,NULL),(668,74,NULL,'exportable_pdf','false',0,589,NULL,0,NULL,NULL),(669,74,NULL,'anonymizable','false',0,590,NULL,0,NULL,NULL),(670,74,'-1','use_ref_list','false',0,591,NULL,0,NULL,NULL),(671,74,'Une copie intégrale de l\'acte Reproduction de l\'acte original, mentions marginales comprises','answer_choice','une_copie_integrale_de_lacte_reproduction_de_lacte_original_mentions_marginales_comprises',0,592,NULL,0,'',NULL),(672,74,'Un extrait d\'acte avec filiation Regroupe l\'identité de l\'interressé(e), de ses parents et les dernières mentions marginales','answer_choice','un_extrait_dacte_avec_filiation_regroupe_lidentite_de_linterressee_de_ses_parents_et_les_dernieres_mentions_marginales',0,593,NULL,0,'',NULL),(673,74,'Un extrait d\'acte avec filiation Regroupe l\'identité de l\'interressé(e), de ses parents et les dernières mentions marginales','answer_choice','un_extrait_dacte_avec_filiation_regroupe_lidentite_de_linterressee_de_ses_parents_et_les_dernieres_mentions_marginales',0,594,NULL,0,'',NULL),(674,74,'Un extrait plurilingue Extrait d\'acte d\'état civil, destiné à être utilisé à l\'étranger','answer_choice','un_extrait_plurilingue_extrait_dacte_detat_civil_destine_a_etre_utilise_a_letranger',0,595,NULL,0,'',NULL),(675,74,NULL,'used_in_correct_form_response','false',0,596,NULL,0,NULL,NULL),(676,74,NULL,'used_in_complete_form_response','false',0,597,NULL,0,NULL,NULL),(677,75,NULL,'exportable','false',0,598,NULL,0,NULL,NULL),(678,75,NULL,'exportable_pdf','false',0,599,NULL,0,NULL,NULL),(679,75,NULL,'anonymizable','false',0,600,NULL,0,NULL,NULL),(680,75,NULL,'display_in_bo','false',0,601,NULL,0,NULL,NULL),(681,75,NULL,'used_in_correct_form_response','false',0,602,NULL,0,NULL,NULL),(682,75,NULL,'used_in_complete_form_response','false',0,603,NULL,0,NULL,NULL),(703,78,NULL,'exportable','false',0,624,NULL,0,NULL,NULL),(704,78,NULL,'exportable_pdf','false',0,625,NULL,0,NULL,NULL),(705,78,'%g','anonymizable','true',0,626,NULL,0,NULL,NULL),(706,78,NULL,'text_config','',0,627,NULL,0,NULL,NULL),(707,78,NULL,'width','0',0,628,NULL,0,NULL,NULL),(708,78,NULL,'max_size','-1',0,629,NULL,0,NULL,NULL),(709,78,NULL,'placeholder','',0,630,NULL,0,NULL,NULL),(710,78,NULL,'confirm_field','false',0,631,NULL,0,NULL,NULL),(711,78,NULL,'used_in_correct_form_response','true',0,632,NULL,0,NULL,NULL),(712,78,NULL,'used_in_complete_form_response','true',0,633,NULL,0,NULL,NULL),(719,80,NULL,'exportable','false',0,640,NULL,0,NULL,NULL),(720,80,NULL,'exportable_pdf','false',0,641,NULL,0,NULL,NULL),(721,80,'','anonymizable','false',0,642,NULL,0,NULL,NULL),(722,80,NULL,'text_config','',0,643,NULL,0,NULL,NULL),(723,80,NULL,'width','0',0,644,NULL,0,NULL,NULL),(724,80,NULL,'max_size','-1',0,645,NULL,0,NULL,NULL),(725,80,NULL,'placeholder','',0,646,NULL,0,NULL,NULL),(726,80,NULL,'confirm_field','false',0,647,NULL,0,NULL,NULL),(727,80,NULL,'used_in_correct_form_response','false',0,648,NULL,0,NULL,NULL),(728,80,NULL,'used_in_complete_form_response','false',0,649,NULL,0,NULL,NULL),(729,81,NULL,'exportable','false',0,650,NULL,0,NULL,NULL),(730,81,NULL,'exportable_pdf','false',0,651,NULL,0,NULL,NULL),(731,81,NULL,'anonymizable','false',0,652,NULL,0,NULL,NULL),(732,81,NULL,'display_in_bo','false',0,653,NULL,0,NULL,NULL),(733,81,NULL,'used_in_correct_form_response','false',0,654,NULL,0,NULL,NULL),(734,81,NULL,'used_in_complete_form_response','false',0,655,NULL,0,NULL,NULL),(735,82,NULL,'exportable','false',0,656,NULL,0,NULL,NULL),(736,82,NULL,'exportable_pdf','false',0,657,NULL,0,NULL,NULL),(737,82,'%g','anonymizable','true',0,658,NULL,0,NULL,NULL),(738,82,NULL,'text_config','',0,659,NULL,0,NULL,NULL),(739,82,NULL,'width','0',0,660,NULL,0,NULL,NULL),(740,82,NULL,'max_size','-1',0,661,NULL,0,NULL,NULL),(741,82,NULL,'placeholder','',0,662,NULL,0,NULL,NULL),(742,82,NULL,'confirm_field','false',0,663,NULL,0,NULL,NULL),(743,82,NULL,'used_in_correct_form_response','false',0,664,NULL,0,NULL,NULL),(744,82,NULL,'used_in_complete_form_response','false',0,665,NULL,0,NULL,NULL),(745,83,NULL,'exportable','false',0,666,NULL,0,NULL,NULL),(746,83,NULL,'exportable_pdf','false',0,667,NULL,0,NULL,NULL),(747,83,'%g','anonymizable','true',0,668,NULL,0,NULL,NULL),(748,83,NULL,'attribute_name','user.name.given',0,669,NULL,0,NULL,NULL),(749,84,NULL,'exportable','false',0,670,NULL,0,NULL,NULL),(750,84,NULL,'exportable_pdf','false',0,671,NULL,0,NULL,NULL),(751,84,'%g','anonymizable','true',0,672,NULL,0,NULL,NULL),(752,84,NULL,'attribute_name','user.name.family',0,673,NULL,0,NULL,NULL),(753,85,NULL,'exportable','false',0,674,NULL,0,NULL,NULL),(754,85,NULL,'exportable_pdf','false',0,675,NULL,0,NULL,NULL),(755,85,NULL,'anonymizable','false',0,676,NULL,0,NULL,NULL),(756,85,NULL,'display_in_bo','false',0,677,NULL,0,NULL,NULL),(757,85,NULL,'used_in_correct_form_response','false',0,678,NULL,0,NULL,NULL),(758,85,NULL,'used_in_complete_form_response','false',0,679,NULL,0,NULL,NULL),(759,86,NULL,'exportable','false',0,680,NULL,0,NULL,NULL),(760,86,NULL,'exportable_pdf','false',0,681,NULL,0,NULL,NULL),(761,86,NULL,'anonymizable','false',0,682,NULL,0,NULL,NULL),(762,86,NULL,'link','Lien',0,683,NULL,0,NULL,NULL),(763,86,NULL,'tos','<p>&lt;p&gt;J&amp;rsquo;accepte les conditions g&amp;eacute;n&amp;eacute;rales d&amp;rsquo;utilisation et je certifie sur l&amp;rsquo;honneur l&amp;rsquo;exactitude des informations fournies. Il est rappel&amp;eacute; que toute personne proc&amp;eacute;dant &amp;agrave; une fausse d&amp;eacute;claration pour elle-m&amp;ecirc;me ou pour autrui peut s&amp;rsquo;exposer aux sanctions pr&amp;eacute;vues aux articles 441-1 du code p&amp;eacute;nal et suivants.&lt;/p&gt;</p>',0,684,NULL,0,NULL,NULL),(764,86,NULL,'agreement','false',0,685,NULL,0,NULL,NULL),(765,86,NULL,'used_in_correct_form_response','false',0,686,NULL,0,NULL,NULL),(766,86,NULL,'used_in_complete_form_response','false',0,687,NULL,0,NULL,NULL),(767,87,NULL,'exportable','false',0,688,NULL,0,NULL,NULL),(768,87,NULL,'exportable_pdf','false',0,689,NULL,0,NULL,NULL),(769,87,NULL,'anonymizable','false',0,690,NULL,0,NULL,NULL),(770,87,NULL,'prefix','',0,691,NULL,0,NULL,NULL),(771,87,NULL,'used_in_correct_form_response','false',0,692,NULL,0,NULL,NULL),(772,87,NULL,'used_in_complete_form_response','false',0,693,NULL,0,NULL,NULL),(773,83,NULL,'used_in_correct_form_response','false',0,694,NULL,0,NULL,NULL),(774,83,NULL,'used_in_complete_form_response','false',0,695,NULL,0,NULL,NULL),(775,84,NULL,'used_in_correct_form_response','false',0,696,NULL,0,NULL,NULL),(776,84,NULL,'used_in_complete_form_response','false',0,697,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `genatt_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_referenceitem_field`
--

DROP TABLE IF EXISTS `genatt_referenceitem_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_referenceitem_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_item` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_referenceitem_field`
--

LOCK TABLES `genatt_referenceitem_field` WRITE;
/*!40000 ALTER TABLE `genatt_referenceitem_field` DISABLE KEYS */;
INSERT INTO `genatt_referenceitem_field` VALUES (347,1),(348,2),(349,3),(354,6),(355,7),(356,8),(361,4),(362,5);
/*!40000 ALTER TABLE `genatt_referenceitem_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_response`
--

DROP TABLE IF EXISTS `genatt_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_response` (
  `id_response` int(11) NOT NULL AUTO_INCREMENT,
  `response_value` mediumtext DEFAULT NULL,
  `id_entry` int(11) DEFAULT NULL,
  `iteration_number` int(11) DEFAULT -1,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  `sort_order` int(11) DEFAULT 0,
  PRIMARY KEY (`id_response`),
  KEY `index_genatt_response_entry` (`id_entry`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_response`
--

LOCK TABLES `genatt_response` WRITE;
/*!40000 ALTER TABLE `genatt_response` DISABLE KEYS */;
INSERT INTO `genatt_response` VALUES (1,'Bar',1,0,NULL,NULL,1,0),(2,'Foo',2,0,NULL,NULL,1,0),(3,'foo.bar@citelibre.org',3,0,NULL,NULL,1,0),(4,'+33612345678',4,0,NULL,NULL,1,0),(5,'espace_public',5,0,347,NULL,1,0),(6,'voirie',41,0,361,NULL,1,0),(8,'1',43,0,NULL,NULL,1,0),(10,'Bonjour,\r\nJ\'ai repéré un nid-de-poule, au niveau du 16, avenue de la République de CiteLibre. Cela devient dangereux. Une intervention est-elle prévue prochainement?\r\nMerci',42,0,NULL,NULL,1,0),(67,'prestations_sociales_retraite',55,0,483,NULL,1,0),(68,'',56,0,NULL,NULL,1,0),(69,'85188_d3tyrt',58,0,510,NULL,1,0),(70,'la place 85210 La Réorthe',58,0,511,NULL,1,0),(71,'-1.066207',58,0,513,NULL,1,0),(72,'46.601912',58,0,514,NULL,1,0),(73,'street',58,0,515,NULL,1,0),(74,'1709510400000',59,0,NULL,NULL,1,0),(75,'',60,0,NULL,NULL,1,0),(76,'',61,0,NULL,NULL,1,0),(77,'',62,0,NULL,NULL,1,0),(78,'',63,0,NULL,NULL,1,0),(79,'',64,0,NULL,NULL,1,0),(80,'',65,0,NULL,NULL,1,0),(81,'',66,0,NULL,NULL,1,0),(82,'',69,0,NULL,NULL,1,0),(83,'',67,0,NULL,NULL,1,0),(84,'',70,0,NULL,NULL,1,0),(85,'',68,0,NULL,NULL,1,0),(86,'',71,0,NULL,NULL,1,0),(87,NULL,72,0,NULL,NULL,1,0),(88,'',73,0,NULL,NULL,1,0),(89,NULL,74,0,NULL,NULL,1,0),(90,'Connor',1,0,NULL,NULL,1,0),(91,'Sarah',2,0,NULL,NULL,1,0),(92,'sarah.connor@citelibre.org',3,0,NULL,NULL,1,0),(93,'+33123456789',4,0,NULL,NULL,1,0),(94,'espace_public',5,0,347,NULL,1,0),(95,'voirie',41,0,361,NULL,1,0),(96,'Bonjour,\r\nJe constate qu\'un abribus est endommagé, rue de la République.\r\nPourriez-vous intervenir, s\'il vous plait ?\r\nMerci,\r\nSarah',42,0,NULL,NULL,1,0),(97,'2',43,0,NULL,NULL,1,0),(98,'prestations_sociales_retraite',55,0,483,NULL,1,0),(99,'2a209_41w80b',58,0,510,NULL,1,0),(100,'Terminone 20167 Peri',58,0,511,NULL,1,0),(101,'8.862041',58,0,513,NULL,1,0),(102,'42.004148',58,0,514,NULL,1,0),(103,'street',58,0,515,NULL,1,0),(104,'1717200000000',59,0,NULL,NULL,1,0),(105,'Connor',60,0,NULL,NULL,1,0),(106,'Sarah',61,0,NULL,NULL,1,0),(107,'Reese',62,0,NULL,NULL,1,0),(108,'Kyle',63,0,NULL,NULL,1,0),(109,'',64,0,NULL,NULL,1,0),(110,'',65,0,NULL,NULL,1,0),(111,'',66,0,NULL,NULL,1,0),(112,'',69,0,NULL,NULL,1,0),(113,'',67,0,NULL,NULL,1,0),(114,'',70,0,NULL,NULL,1,0),(115,'',68,0,NULL,NULL,1,0),(116,'',71,0,NULL,NULL,1,0),(117,'son_fils_ou_sa_fille_son_petitfils_ou_sa_petitefille',72,0,651,NULL,1,0),(118,'1',73,0,NULL,NULL,1,0),(119,'une_copie_integrale_de_lacte_reproduction_de_lacte_original_mentions_marginales_comprises',74,0,671,NULL,1,0),(120,'test',84,0,NULL,NULL,1,0),(121,'test',83,0,NULL,NULL,1,0),(122,'john.connor@citelibre.org',82,0,NULL,NULL,1,0),(123,'',78,0,NULL,NULL,1,0),(124,'',80,0,NULL,NULL,1,0),(125,'true',86,0,764,NULL,1,0),(126,'<p>&lt;p&gt;J&amp;rsquo;accepte les conditions g&amp;eacute;n&amp;eacute;rales d&amp;rsquo;utilisation et je certifie sur l&amp;rsquo;honneur l&amp;rsquo;exactitude des informations fournies. Il est rappel&amp;eacute; que toute personne proc&amp;eacute;dant &amp;agrave; une fausse d&amp;eacute;claration pour elle-m&amp;ecirc;me ou pour autrui peut s&amp;rsquo;exposer aux sanctions pr&amp;eacute;vues aux articles 441-1 du code p&amp;eacute;nal et suivants.&lt;/p&gt;</p>',86,0,763,NULL,1,0),(127,'1',87,0,NULL,NULL,1,0);
/*!40000 ALTER TABLE `genatt_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_verify_by`
--

DROP TABLE IF EXISTS `genatt_verify_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_verify_by` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_expression` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`,`id_expression`),
  KEY `index_genatt_verify_by_field` (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_verify_by`
--

LOCK TABLES `genatt_verify_by` WRITE;
/*!40000 ALTER TABLE `genatt_verify_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_verify_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `html_portlet`
--

DROP TABLE IF EXISTS `html_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `html_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  `html` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_portlet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `html_portlet`
--

LOCK TABLES `html_portlet` WRITE;
/*!40000 ALTER TABLE `html_portlet` DISABLE KEYS */;
INSERT INTO `html_portlet` VALUES (2,'<ul class=\"features\"> \n <li>Lutece is FreeSoftware. Full OpenSource licensed under BSD.</li> \n <li>Full responsive design Back and Front</li> \n <li>Compliant with Twitter Bootstrap themes</li> \n <li>Very modular and flexible architecture based on plugins, APIs, IoC</li> \n <li>Over 300 plugins available for many needs : Content Management, Collaborative, Workflows, ...</li> \n <li>Runs on Java Platform and rely on powerful build tools such as Apache Maven</li> \n <li>Uses best of breed Java Open Source stacks : Lucene, Spring, Ehcache, Freemarker, ...</li> \n</ul> \n<p class=\"logo\">&nbsp;</p>'),(4,'<h2>Get into the Back Office of this demo site</h2> \n<p class=\"mb20\">Sign in as administrator with <em>admin/adminadmin</em>.</p> \n<p><a class=\"btn btn-primary\" title=\"Access to admin [Open  in new window]\" href=\"jsp/admin/AdminLogin.jsp\" target=\"\"><span class=\"fa fa-door-open\">&nbsp;</span> Enter Back Office</a></p> \n<p>&nbsp;</p>'),(5,'<h3>Resources</h3> \n<hr> \n<div class=\"row\"> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"GitHub site [Open  in new window]\" href=\"https://github.com/lutece-platform\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/github-logo.png\" alt=\"Github logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Access to our code repository</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Docker Hub site [Open  in new window]\" href=\"https://hub.docker.com/u/lutece\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/docker-logo.png\" alt=\"Docker images\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Grab some Docker images to run demos</h4> \n   </div> \n  </div> \n </div> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Lutece Wiki site [Open  in new window]\" href=\"https://fr.lutece.paris.fr/fr/jsp/site/Portal.jsp?page=wiki&amp;action=changeLanguage&amp;page_name=home&amp;language=en\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/wiki-logo.png\" alt=\"WIKI\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Read our technical documentation</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\" Twitter Site [Open  in new window]\" href=\"https://twitter.com/LuteceNews\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/twitter-logo.png\" alt=\"Twitter logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Follow us on Twitter</h4> \n   </div> \n  </div> \n </div> \n</div>'),(6,'<section id=\"lutece\" class=\"lutece\">\r\n    <div class=\"container\">\r\n        <div class=\"row align-items-center\">\r\n            <div class=\"col-lg-6\">\r\n                <div class=\"lutece-content\">\r\n                    <h1 class=\"my-3\">CiteLibre Service\'EZ, votre outil clé en main</h1>\r\n                    <p class=\"font-weight-bold\" >\r\n                        FR : CiteLibre est la suite logicielle de services numériques clé en main réutilisant les composants du framework open source <a href=\"https://lutece.paris.fr/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. Elle permet aux municipalités de tester, réutiliser et de paramétrer les services disponibles pour répondre à leurs besoins. CiteLibre est gratuit, open source, entièrement personnalisable et sécurisé.<br/>\r\nFélicitations, vous avez déployé votre service numérique de démarches en ligne paramétrable. Prochaine étape, créer votre propre formulaire. Toute la documentation est disponible <a href=\"https://lutece.paris.fr/support/wiki/howto-plugin-forms.html\" title=\"Wiki Lutece - Forms\" target=\"_blank\">ici</a>. <br/>\r\nAu fil de l\'utilisation de l\'application, vous pourrez exploiter des outils d\'aide à la décision (statistiques métier réalisées avec la couche ElasticSearch / Kibana). Mettez en place les règles de gestion propre à vos usages et appropriez-vous les détails des notifications envoyées à vos usagers.\r\n                    </p>\r\n                    <p class=\"font-weight-bold\">\r\n                        EN: <i>CiteLibre is the turnkey digital services software suite reusing components from the open source framework <a href=\"https://lutece.paris.fr/en/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. It enables municipalities to test, reuse and parameterize the services available to meet their needs. CiteLibre is free, open source, fully customizable and secure.<br/>\r\nCongratulations, you\'ve deployed your digital administrative procedure system. Next step is to create your own form. The full documentation is available <a href=\"https://lutece.paris.fr/support/wiki/howto-plugin-forms.html\" title=\"Wiki Lutece - Forms\" target=\"_blank\">here</a>.<br/>\r\nAs you use the application, you\'ll be able to harness decision-making tools (business statistics produced with the ElasticSearch / Kibana suite). Set up management rules specific to your uses and take ownership of the details of notifications sent to your users.</i>\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-6\">\r\n                <img src=\"images/site/city-home.svg\" alt=\"\">\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>'),(7,'<div class=\"lutece-content mt-5\">\r\n	<h2 class=\"my-3\">Connectez-vous à l\'administration de l\'application</h2>\r\n	<p class=\"font-weight-bold\">FR : Connectez-vous à l\'interface d\'administration en utilisant le login <strong>\"admin\"</strong> et le mot de passe <strong>\"adminadmin\"</strong> (vous serez invités à réinitialiser le mot de passe). Vous pourrez alors personnaliser les services de démo.<br/>Vous trouverez également tous les <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Liens utiles\">liens utiles</a> avec les informations de connexion pour utiliser tous les services mis à disposition dans l\'application.</p>\r\n	<p class=\"font-weight-bold\">EN: <i>Log in to the administration interface using login <strong>\"admin\"</strong> and password <strong>\"adminadmin\"</strong> (you will be prompted to reset the password). You can test each of its features and customize the demo form.<br/>You will also find all <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Useful links\">Useful links</a> with connection credentials to use all available features.</i></p>\r\n	<p class=\"text-center\">\r\n		<a class=\"btn-solid-reg\" href=\"jsp/admin/AdminLogin.jsp\" target=\"_blank\" title=\"Go to admin login page [Open in new window]\">\r\n			<span class=\"icon\"><i class=\"ti ti-user-cog\"></i></span>\r\n			<span class=\"text\">Administration</span>\r\n		</a>\r\n	</p>\r\n</div>'),(8,'<h2>Choisissez le meilleur parcours usager pour accéder à vos services numériques</h2>\r\n<p class=\"text-center\">\r\n	<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=forms&view=stepView&id_form=4&init=true\" target=\"_blank\" title=\"Démo\">\r\n		<span class=\"icon\"><i class=\"ti ti-map-2\"></i></span>\r\n		<span class=\"text\">Acte de Mariage</span>\r\n	</a>\r\n	<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=forms&view=stepView&id_form=1&init=true\" target=\"_blank\" title=\"Démo\">\r\n		<span class=\"icon\"><i class=\"ti ti-map-2\"></i></span>\r\n		<span class=\"text\">Contacter ma Mairie</span>\r\n	</a>\r\n</p>'),(10,'<p><strong>IdentEZ</strong> est un service numérique qui comprend un ensemble de fonctionnalités rendues possibles grâce à l\'ajout de serveurs tiers permettant notamment les statistiques de visites (<strong>Matomo</strong>) et métier (<strong>ElasticSearch</strong> et <strong>Kibana</strong>), ou encore l\'authentification en back office (<strong>keycloak</strong>). Seuls les emails sont émulés par un outil (<strong>MailPit</strong>) permettant d\'intercepter tous les envois effectués depuis l\'application pour vous donner une bonne idée des possibilités. Ces envois seront à pérenniser en utilisant votre propre serveur de messagerie d\'entreprise.</p>\r\n<p>Voici l\'ensemble des liens vers ces applicatifs, avec les identifiants des comptes utilisateurs vous permettant de vous connecter aux interfaces d\'administration :</p>\r\n\r\n<style>\r\ntable {\r\n	font-family: arial, sans-serif;\r\n	border-collapse: collapse;\r\n	width: 100%;\r\n}\r\n\r\ntd, th {\r\n	border: 1px solid #dddddd;\r\n	text-align: left;\r\n	padding: 4px;\r\n}\r\n\r\n/*tr:nth-child(even) {\r\n	background-color: #ff3300;\r\n}*/\r\n</style>\r\n\r\n<table>\r\n	<tr style=\"background-color: #ff3300;\">\r\n		<th>Service</th>\r\n		<th>Identifiants</th>\r\n		<th>Commentaires</th>\r\n	</tr>\r\n	<tr>\r\n		<td><b>Back Office Service\'EZ</b><br/><a href=\"http://localhost:8080/identEZ/jsp/admin/site/AdminLogin.jsp\" target=\"_blank\">(lien)</a></td>\r\n		<td>Identifiant : admin<br/>Mot de passe : adminadmin<br/><i>Lors de la première connexion, il vous sera demandé de le modifier</i></td>\r\n		<td>Le \"back office\" est l\'interface d\'administration de votre application de gestion des démarches en ligne paramétrables. Il vous permet de gérer les comptes et leurs autorisations associées, l\'éditorial, le paramétrage de votre application, et de gérer les démarches des usagers au quotidien : créer vos nouvelles démarches, définissez votre flux de travail et les notifications à envoyer, et laissez l\'application faire le reste.</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>MailPit</b><br/><a href=\"http://localhost:1080/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nécessaire</td>\r\n		<td>MailPit est un petit outil permettant d\'intercepter les notifications envoyées sur un port particulier pour en afficher le contenu avec une légère mise en forme. Il suffit de cliquer sur une ligne de notification pour déplier le contenu. Cela vous permet de tester les envois effectués par l\'application.</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>Matomo</b><br/><a href=\"http://localhost/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nécessaire</td>\r\n		<td>Matomo est un logiciel libre et open source de mesure de statistiques d\'audience. Lorsqu\'un usager navigue sur l\'application, les pages qu\'il consulte, le temps passé, ainsi que les éléments techniques de son origine géographe, et son navigateur internet sont consultables depuis cette interface, mais également dans le back office de l\'application (menu \"Site\" -> \"Statistiques Web Matomo\").</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>SolR</b><br/><a href=\"http://localhost:8983/solr/#/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nécessaire</td>\r\n		<td>SolR est une base de données optimisée pour la recherche, conçue sous licence libre. Elle est utilisée pour indexer les créneaux disponibles de façon optimisée et pour restituer ces disponibilités sur une carte géographique.</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>ElasticSearch / Kibana</b><br/><a href=\"http://localhost:5601/s/dev/app/home#/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nécessaire</td>\r\n		<td>ElasticSearch est également une base de données permettant l\'indexation optimisée de données. Cette pile est utilisée pour stocker les statistiques métier liées à l\'utilisation du service. Vous pourrez ensuite paramétrer votre propre tableau de bord pour exploiter ces données</td>\r\n	</tr>\r\n	<tr>\r\n		<td rowspan=\"2\"><b>Keycloak</b><br/><a href=\"http://localhost:8081/admin/\" target=\"_blank\">(lien)</a></td>\r\n		<td>(<i>Compte admin</i>)<br/>Identifiant : admin<br/>Mot de passe : admin1234</td>\r\n		<td rowspan=\"2\">Keycloak est un outil open source permettant de l\'authentification unique et la gestion d\'identité, développé par la communauté WildFly et hébergé par RedHat.</td>\r\n	</tr>\r\n	<tr>\r\n		<td>(<i>Compte utilisateur de démo</i>)<br/>Identifiant : test@paris.fr<br/>Mot de passe : test1234=TEST1234</td>\r\n	</tr>\r\n</table>');
/*!40000 ALTER TABLE `html_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `htmlpage`
--

DROP TABLE IF EXISTS `htmlpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `htmlpage` (
  `id_htmlpage` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `html_content` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(50) NOT NULL DEFAULT 'all',
  `role` varchar(50) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id_htmlpage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htmlpage`
--

LOCK TABLES `htmlpage` WRITE;
/*!40000 ALTER TABLE `htmlpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `htmlpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kibana_dashboard`
--

DROP TABLE IF EXISTS `kibana_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kibana_dashboard` (
  `id_dashboard` int(11) NOT NULL,
  `idkibanadashboard` varchar(255) NOT NULL DEFAULT '',
  `title` mediumtext NOT NULL,
  `dataSourceName` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_dashboard`),
  UNIQUE KEY `idkibanadashboard` (`idkibanadashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kibana_dashboard`
--

LOCK TABLES `kibana_dashboard` WRITE;
/*!40000 ALTER TABLE `kibana_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `kibana_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_accessrules_rule`
--

DROP TABLE IF EXISTS `mylutece_accessrules_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_accessrules_rule` (
  `id_rule` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `enable` smallint(6) DEFAULT NULL,
  `external` smallint(6) DEFAULT NULL,
  `messagetodisplay` mediumtext DEFAULT NULL,
  `redirecturl` varchar(255) DEFAULT '',
  `backurl` varchar(255) DEFAULT '',
  `priority_order` int(11) DEFAULT 0,
  PRIMARY KEY (`id_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_accessrules_rule`
--

LOCK TABLES `mylutece_accessrules_rule` WRITE;
/*!40000 ALTER TABLE `mylutece_accessrules_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_accessrules_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_attribute`
--

DROP TABLE IF EXISTS `mylutece_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_attribute` (
  `id_attribute` int(11) NOT NULL DEFAULT 0,
  `type_class_name` varchar(255) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_shown_in_search` smallint(6) DEFAULT 0,
  `attribute_position` int(11) DEFAULT 0,
  `plugin_name` varchar(255) DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_attribute`
--

LOCK TABLES `mylutece_attribute` WRITE;
/*!40000 ALTER TABLE `mylutece_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_attribute_field`
--

DROP TABLE IF EXISTS `mylutece_attribute_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_attribute_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `DEFAULT_value` mediumtext DEFAULT NULL,
  `is_DEFAULT_value` smallint(6) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT 0,
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_attribute_field`
--

LOCK TABLES `mylutece_attribute_field` WRITE;
/*!40000 ALTER TABLE `mylutece_attribute_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_cacheuserattribute_attribute`
--

DROP TABLE IF EXISTS `mylutece_cacheuserattribute_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_cacheuserattribute_attribute` (
  `id_cache_user_attribute` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(56) NOT NULL DEFAULT '',
  `id_attribute` int(11) NOT NULL DEFAULT 0,
  `content` mediumtext DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id_cache_user_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_cacheuserattribute_attribute`
--

LOCK TABLES `mylutece_cacheuserattribute_attribute` WRITE;
/*!40000 ALTER TABLE `mylutece_cacheuserattribute_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_cacheuserattribute_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_connections_log`
--

DROP TABLE IF EXISTS `mylutece_connections_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_connections_log` (
  `ip_address` varchar(63) DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_connections_log`
--

LOCK TABLES `mylutece_connections_log` WRITE;
/*!40000 ALTER TABLE `mylutece_connections_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_user_anonymize_field`
--

DROP TABLE IF EXISTS `mylutece_user_anonymize_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_user_anonymize_field` (
  `field_name` varchar(100) NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_user_anonymize_field`
--

LOCK TABLES `mylutece_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `mylutece_user_anonymize_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_user_anonymize_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_user_field`
--

DROP TABLE IF EXISTS `mylutece_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_user_field` (
  `id_user_field` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `user_field_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_user_field`
--

LOCK TABLES `mylutece_user_field` WRITE;
/*!40000 ALTER TABLE `mylutece_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifygru_alert_update_resource_state_queue`
--

DROP TABLE IF EXISTS `notifygru_alert_update_resource_state_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifygru_alert_update_resource_state_queue` (
  `id_resource_queue` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL,
  `id_resource_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL DEFAULT '',
  `id_external_parent` int(11) NOT NULL DEFAULT 0,
  `id_workflow` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `alert_reference_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_state` int(11) NOT NULL,
  PRIMARY KEY (`id_resource_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifygru_alert_update_resource_state_queue`
--

LOCK TABLES `notifygru_alert_update_resource_state_queue` WRITE;
/*!40000 ALTER TABLE `notifygru_alert_update_resource_state_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifygru_alert_update_resource_state_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_form`
--

DROP TABLE IF EXISTS `poll_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_form` (
  `id_poll_form` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `is_visible` smallint(6) NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `btn_title` mediumtext DEFAULT NULL,
  `btn_url` mediumtext DEFAULT NULL,
  `btn_is_visible` smallint(6) NOT NULL,
  PRIMARY KEY (`id_poll_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_form`
--

LOCK TABLES `poll_form` WRITE;
/*!40000 ALTER TABLE `poll_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_form_question`
--

DROP TABLE IF EXISTS `poll_form_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_form_question` (
  `id_poll_form_question` int(11) NOT NULL AUTO_INCREMENT,
  `id_poll_form` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `chart_type` mediumtext DEFAULT NULL,
  `chart_is_toolbox` smallint(6) NOT NULL,
  `chart_is_checked` smallint(6) NOT NULL,
  PRIMARY KEY (`id_poll_form_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_form_question`
--

LOCK TABLES `poll_form_question` WRITE;
/*!40000 ALTER TABLE `poll_form_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_form_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_action`
--

DROP TABLE IF EXISTS `profile_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_action`
--

LOCK TABLES `profile_action` WRITE;
/*!40000 ALTER TABLE `profile_action` DISABLE KEYS */;
INSERT INTO `profile_action` VALUES (1,'profiles.action.modify_profile.name','profiles.action.modify_profile.description','jsp/admin/plugins/profiles/ModifyProfile.jsp','edit','MODIFY_PROFILE'),(2,'profiles.action.delete_profile.name','profiles.action.delete_profile.description','jsp/admin/plugins/profiles/RemoveProfile.jsp','trash','DELETE_DELETE'),(3,'profiles.action.manage_users_assignment.name','profiles.action.manage_users_assignment.description','jsp/admin/plugins/profiles/AssignUsersProfile.jsp','user','MANAGE_USERS_ASSIGNMENT'),(4,'profiles.action.manage_rights_assignment.name','profiles.action.manage_rights_assignment.description','jsp/admin/plugins/profiles/AssignRightsProfile.jsp','lock','MANAGE_RIGHTS_ASSIGNMENT'),(5,'profiles.action.manage_roles_assignment.name','profiles.action.manage_roles_assignment.description','jsp/admin/plugins/profiles/AssignRolesProfile.jsp','th-list','MANAGE_ROLES_ASSIGNMENT'),(6,'profiles.action.manage_workgroups_assignment.name','profiles.action.manage_workgroups_assignment.description','jsp/admin/plugins/profiles/AssignWorkgroupsProfile.jsp','group','MANAGE_WORKGROUPS_ASSIGNMENT'),(7,'profiles.action.manage_view_assignment.name','profiles.action.manage_view_assignment.description','jsp/admin/plugins/profiles/AssignViewProfile.jsp','eye','MANAGE_VIEW_ASSIGNMENT');
/*!40000 ALTER TABLE `profile_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_profile`
--

DROP TABLE IF EXISTS `profile_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_profile` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `profile_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_profile`
--

LOCK TABLES `profile_profile` WRITE;
/*!40000 ALTER TABLE `profile_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_right`
--

DROP TABLE IF EXISTS `profile_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_right` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `id_right` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`id_right`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_right`
--

LOCK TABLES `profile_right` WRITE;
/*!40000 ALTER TABLE `profile_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_role`
--

DROP TABLE IF EXISTS `profile_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_role` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `role_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`role_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_role`
--

LOCK TABLES `profile_role` WRITE;
/*!40000 ALTER TABLE `profile_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_user`
--

DROP TABLE IF EXISTS `profile_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_user` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`profile_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_user`
--

LOCK TABLES `profile_user` WRITE;
/*!40000 ALTER TABLE `profile_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view`
--

DROP TABLE IF EXISTS `profile_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `view_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`view_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view`
--

LOCK TABLES `profile_view` WRITE;
/*!40000 ALTER TABLE `profile_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_action`
--

DROP TABLE IF EXISTS `profile_view_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_action`
--

LOCK TABLES `profile_view_action` WRITE;
/*!40000 ALTER TABLE `profile_view_action` DISABLE KEYS */;
INSERT INTO `profile_view_action` VALUES (1,'profiles.action.modify_view.name','profiles.action.modify_view.description','jsp/admin/plugins/profiles/ModifyView.jsp','edit','MODIFY_VIEW'),(2,'profiles.action.delete_view.name','profiles.action.delete_view.description','jsp/admin/plugins/profiles/RemoveView.jsp','trash','DELETE_VIEW'),(3,'profiles.action.manage_views_assignment.name','profiles.action.manage_views_assignment.description','jsp/admin/plugins/profiles/AssignProfilesView.jsp','user-tag','MANAGE_PROFILES_ASSIGNMENT'),(4,'profiles.action.manage_dashboards.name','profiles.action.manage_dashboards.description','jsp/admin/plugins/profiles/ManageDashboards.jsp','wrench','MANAGE_DASHBOARDS');
/*!40000 ALTER TABLE `profile_view_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_dashboard`
--

DROP TABLE IF EXISTS `profile_view_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view_dashboard` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`view_key`,`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_dashboard`
--

LOCK TABLES `profile_view_dashboard` WRITE;
/*!40000 ALTER TABLE `profile_view_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_profile`
--

DROP TABLE IF EXISTS `profile_view_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view_profile` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`view_key`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_profile`
--

LOCK TABLES `profile_view_profile` WRITE;
/*!40000 ALTER TABLE `profile_view_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_workgroup`
--

DROP TABLE IF EXISTS `profile_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_workgroup` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_workgroup`
--

LOCK TABLES `profile_workgroup` WRITE;
/*!40000 ALTER TABLE `profile_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelist_item`
--

DROP TABLE IF EXISTS `referencelist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelist_item` (
  `id_reference_item` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `code` mediumtext NOT NULL,
  `idreference` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_reference_item`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_item`
--

LOCK TABLES `referencelist_item` WRITE;
/*!40000 ALTER TABLE `referencelist_item` DISABLE KEYS */;
INSERT INTO `referencelist_item` VALUES (1,'Espace Public','espace_public',1),(2,'Logement et Habitat','logement_habitat',1),(3,'Affaires Scolaires','affaires_scolaires',1),(4,'Voirie','voirie',2),(5,'Espaces Verts','espaces_verts',2),(6,'Ecoles','ecoles',3),(7,'Centres de Loisirs','centres_loisirs',3),(8,'Petite Enfance','petite_enfance',3);
/*!40000 ALTER TABLE `referencelist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelist_reference`
--

DROP TABLE IF EXISTS `referencelist_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelist_reference` (
  `id_reference` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id_reference`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_reference`
--

LOCK TABLES `referencelist_reference` WRITE;
/*!40000 ALTER TABLE `referencelist_reference` DISABLE KEYS */;
INSERT INTO `referencelist_reference` VALUES (1,'Demandes de contact','Thématiques liées aux demandes de contact'),(2,'espace_public','Thématiques liées aux demandes relatives à l\'espace public'),(3,'affaires_scolaires','Thématiques liées aux demandes relatives aux affaires scolaires');
/*!40000 ALTER TABLE `referencelist_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelist_translation`
--

DROP TABLE IF EXISTS `referencelist_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelist_translation` (
  `id_translation` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) NOT NULL,
  `name` mediumtext NOT NULL,
  `id_reference_item` int(11) NOT NULL,
  PRIMARY KEY (`id_translation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_translation`
--

LOCK TABLES `referencelist_translation` WRITE;
/*!40000 ALTER TABLE `referencelist_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencelist_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regularexpression_regular_expression`
--

DROP TABLE IF EXISTS `regularexpression_regular_expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regularexpression_regular_expression` (
  `id_expression` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `regular_expression_value` mediumtext DEFAULT NULL,
  `valid_exemple` mediumtext DEFAULT NULL,
  `information_message` mediumtext DEFAULT NULL,
  `error_message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_expression`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regularexpression_regular_expression`
--

LOCK TABLES `regularexpression_regular_expression` WRITE;
/*!40000 ALTER TABLE `regularexpression_regular_expression` DISABLE KEYS */;
INSERT INTO `regularexpression_regular_expression` VALUES (1,'Fichier JPG','image/jpeg','image/jpeg','Expression régulière pour les fichiers de type jpeg.','Le format du fichier n\'est pas valide. Veuillez choisir une image de type jpeg.'),(2,'Email','(^([a-zA-Z0-9]+(([\\.\\-\\_]?[a-zA-Z0-9]+)+)?)\\@(([a-zA-Z0-9]+[\\.\\-\\_])+[a-zA-Z]{2,4})$)|(^$)','admin@lutece.fr','Expression régulière pour les emails.','Le format de l\'email est incorrect.');
/*!40000 ALTER TABLE `regularexpression_regular_expression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_friendly_url`
--

DROP TABLE IF EXISTS `seo_friendly_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_friendly_url` (
  `id_url` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) NOT NULL DEFAULT '',
  `technical_url` varchar(255) NOT NULL DEFAULT '',
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modification` timestamp NOT NULL DEFAULT '2012-10-09 22:00:00',
  `is_canonical` int(11) NOT NULL DEFAULT 0,
  `is_sitemap` int(11) NOT NULL DEFAULT 0,
  `sitemap_lastmod` varchar(255) DEFAULT '',
  `sitemap_changefreq` varchar(255) DEFAULT '',
  `sitemap_priority` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_friendly_url`
--

LOCK TABLES `seo_friendly_url` WRITE;
/*!40000 ALTER TABLE `seo_friendly_url` DISABLE KEYS */;
INSERT INTO `seo_friendly_url` VALUES (1,'/sitemap.html','/jsp/site/Portal.jsp?page=map','2024-01-19 15:26:14','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(2,'/contacts.html','/jsp/site/Portal.jsp?page=contact','2024-01-19 15:26:14','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(3,'/credits.html','/jsp/site/PopupCredits.jsp','2024-01-19 15:26:14','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(4,'/home.html','/jsp/site/Portal.jsp?page_id=1','2024-03-05 14:37:01','2012-10-09 22:00:00',1,1,'2024-01-19','weekly','0.7'),(5,'/page-1.html','/jsp/site/Portal.jsp?page_id=2','2024-03-05 14:37:01','2012-10-09 22:00:00',1,1,'2024-01-19','weekly','0.7'),(6,'/liens-utiles.html','/jsp/site/Portal.jsp?page_id=3','2024-05-28 17:01:23','2012-10-09 22:00:00',1,1,'2024-05-28','weekly','0.7');
/*!40000 ALTER TABLE `seo_friendly_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_properties`
--

DROP TABLE IF EXISTS `seo_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_properties` (
  `property_key` varchar(255) NOT NULL,
  `property_value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`property_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_properties`
--

LOCK TABLES `seo_properties` WRITE;
/*!40000 ALTER TABLE `seo_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `seo_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_rule`
--

DROP TABLE IF EXISTS `seo_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_rule` (
  `id_rule` int(11) NOT NULL DEFAULT 0,
  `rule_from` varchar(255) NOT NULL DEFAULT '',
  `rule_to` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_rule`
--

LOCK TABLES `seo_rule` WRITE;
/*!40000 ALTER TABLE `seo_rule` DISABLE KEYS */;
INSERT INTO `seo_rule` VALUES (1,'/page/([0-9]+)','/jsp/site/Portal.jsp?page_id=$1'),(2,'/app/([a-z]+)','/jsp/site/Portal.jsp?page=$1'),(3,'/map','/jsp/site/Portal.jsp?page=map');
/*!40000 ALTER TABLE `seo_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_facet_intersection`
--

DROP TABLE IF EXISTS `solr_facet_intersection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_facet_intersection` (
  `id_field1` int(11) DEFAULT NULL,
  `id_field2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_facet_intersection`
--

LOCK TABLES `solr_facet_intersection` WRITE;
/*!40000 ALTER TABLE `solr_facet_intersection` DISABLE KEYS */;
/*!40000 ALTER TABLE `solr_facet_intersection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_fields`
--

DROP TABLE IF EXISTS `solr_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_fields` (
  `id_field` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_facet` tinyint(1) DEFAULT 0,
  `enable_facet` tinyint(1) DEFAULT 0,
  `is_sort` tinyint(1) DEFAULT 0,
  `enable_sort` tinyint(1) DEFAULT 0,
  `default_sort` tinyint(1) DEFAULT 0,
  `weight` float DEFAULT 0,
  `facet_mincount` int(11) DEFAULT 1,
  `operator_type` varchar(30) DEFAULT 'OR',
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_fields`
--

LOCK TABLES `solr_fields` WRITE;
/*!40000 ALTER TABLE `solr_fields` DISABLE KEYS */;
INSERT INTO `solr_fields` VALUES (1,'site','Site','Site',1,1,0,0,0,0,1,'OR'),(2,'type','Type','Type',1,1,0,0,0,0,1,'OR'),(3,'date','Date','Date',1,1,1,1,0,0,1,'OR'),(4,'score','Score','Score',0,0,1,1,1,0,1,'OR'),(5,'categorie','Categorie','Category',1,1,0,0,0,0,1,'OR'),(6,'title','title','Title',0,0,0,0,0,10,1,'AND'),(7,'content','content','Content',0,0,0,0,0,0.1,1,'AND'),(8,'summary','summary','Summary',0,0,0,0,0,1,1,'AND');
/*!40000 ALTER TABLE `solr_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_indexer_action`
--

DROP TABLE IF EXISTS `solr_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_indexer_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `id_document` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `type_ressource` varchar(255) NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_indexer_action`
--

LOCK TABLES `solr_indexer_action` WRITE;
/*!40000 ALTER TABLE `solr_indexer_action` DISABLE KEYS */;
INSERT INTO `solr_indexer_action` VALUES (1,'5',2,'FORMS_FORM',-1),(2,'7',3,'FORMS_FORM',-1),(3,'8',3,'FORMS_FORM',-1),(4,'6',3,'FORMS_FORM',-1),(5,'40',2,'FORMS_FORM',-1),(6,'41',2,'FORMS_FORM',-1),(7,'42',2,'FORMS_FORM',-1),(8,'43',2,'FORMS_FORM',-1),(13,'44',2,'FORMS_FORM',-1),(14,'45',2,'FORMS_FORM',-1),(15,'46',3,'FORMS_FORM',-1),(16,'47',3,'FORMS_FORM',-1),(17,'48',3,'FORMS_FORM',-1),(18,'49',3,'FORMS_FORM',-1),(19,'50',3,'FORMS_FORM',-1),(20,'51',3,'FORMS_FORM',-1),(21,'52',3,'FORMS_FORM',-1),(22,'53',3,'FORMS_FORM',-1),(23,'54',3,'FORMS_FORM',-1),(24,'9',3,'FORMS_FORM',-1),(25,'10',3,'FORMS_FORM',-1),(26,'11',3,'FORMS_FORM',-1),(27,'12',3,'FORMS_FORM',-1),(28,'13',3,'FORMS_FORM',-1),(29,'14',3,'FORMS_FORM',-1),(30,'15',3,'FORMS_FORM',-1),(31,'16',3,'FORMS_FORM',-1),(32,'17',3,'FORMS_FORM',-1),(33,'18',3,'FORMS_FORM',-1),(34,'19',3,'FORMS_FORM',-1),(35,'20',3,'FORMS_FORM',-1),(36,'23',3,'FORMS_FORM',-1),(37,'21',3,'FORMS_FORM',-1),(38,'24',3,'FORMS_FORM',-1),(39,'22',3,'FORMS_FORM',-1),(40,'25',3,'FORMS_FORM',-1),(41,'26',3,'FORMS_FORM',-1),(42,'27',3,'FORMS_FORM',-1),(43,'28',3,'FORMS_FORM',-1),(44,'29',3,'FORMS_FORM',-1),(45,'30',3,'FORMS_FORM',-1),(46,'31',3,'FORMS_FORM',-1),(47,'32',3,'FORMS_FORM',-1),(48,'33',3,'FORMS_FORM',-1),(49,'34',3,'FORMS_FORM',-1),(50,'35',3,'FORMS_FORM',-1),(51,'36',3,'FORMS_FORM',-1),(52,'44',3,'FORMS_FORM',-1),(53,'45',3,'FORMS_FORM',-1),(54,'37',3,'FORMS_FORM',-1),(55,'38',3,'FORMS_FORM',-1),(56,'39',3,'FORMS_FORM',-1),(57,'57',2,'FORMS_FORM',-1),(58,'75',2,'FORMS_FORM',-1),(59,'79',2,'FORMS_FORM',-1),(60,'81',2,'FORMS_FORM',-1),(61,'82',2,'FORMS_FORM',-1),(62,'2',1,'FORMS_FORM_RESPONSE',-1),(63,'2',2,'FORMS_FORM_RESPONSE',-1),(64,'2',2,'FORMS_FORM_RESPONSE',-1),(65,'2',2,'FORMS_FORM_RESPONSE',-1),(66,'60',2,'FORMS_FORM',-1),(67,'61',2,'FORMS_FORM',-1),(68,'62',2,'FORMS_FORM',-1),(69,'63',2,'FORMS_FORM',-1),(70,'64',2,'FORMS_FORM',-1),(71,'65',2,'FORMS_FORM',-1),(72,'66',2,'FORMS_FORM',-1),(73,'69',2,'FORMS_FORM',-1),(74,'67',2,'FORMS_FORM',-1),(75,'70',2,'FORMS_FORM',-1),(76,'68',2,'FORMS_FORM',-1),(77,'71',2,'FORMS_FORM',-1),(78,'78',2,'FORMS_FORM',-1),(79,'76',2,'FORMS_FORM',-1),(80,'77',2,'FORMS_FORM',-1),(81,'82',2,'FORMS_FORM',-1),(82,'83',2,'FORMS_FORM',-1),(83,'84',2,'FORMS_FORM',-1),(84,'2',2,'FORMS_FORM_RESPONSE',-1),(85,'3',2,'FORMS_FORM_RESPONSE',-1),(86,'79',3,'FORMS_FORM',-1),(87,'88',2,'FORMS_FORM',-1),(88,'88',3,'FORMS_FORM',-1),(89,'76',3,'FORMS_FORM',-1),(90,'77',3,'FORMS_FORM',-1),(91,'5',1,'FORMS_FORM_RESPONSE',-1),(92,'5',2,'FORMS_FORM_RESPONSE',-1),(93,'5',2,'FORMS_FORM_RESPONSE',-1);
/*!40000 ALTER TABLE `solr_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_alert`
--

DROP TABLE IF EXISTS `task_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_alert` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `reference_date` timestamp NULL DEFAULT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `is_executed` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_alert`
--

LOCK TABLES `task_alert` WRITE;
/*!40000 ALTER TABLE `task_alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_alert_cf`
--

DROP TABLE IF EXISTS `task_alert_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_alert_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_state_after_deadline` int(11) NOT NULL DEFAULT 0,
  `id_question_date` int(11) NOT NULL DEFAULT 0,
  `nb_days_to_date` int(11) NOT NULL DEFAULT 0,
  `id_retrieval_type` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_alert_cf`
--

LOCK TABLES `task_alert_cf` WRITE;
/*!40000 ALTER TABLE `task_alert_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_alert_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_create_pdf_cf`
--

DROP TABLE IF EXISTS `task_create_pdf_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_create_pdf_cf` (
  `id_task` int(11) NOT NULL,
  `id_form` int(11) DEFAULT NULL,
  `id_question_url_pdf` int(11) DEFAULT NULL,
  `id_config` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_create_pdf_cf`
--

LOCK TABLES `task_create_pdf_cf` WRITE;
/*!40000 ALTER TABLE `task_create_pdf_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_create_pdf_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_control`
--

DROP TABLE IF EXISTS `template_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_control` (
  `id_control` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `error_message` varchar(512) DEFAULT '',
  `validator_name` varchar(255) NOT NULL,
  `control_type` varchar(255) NOT NULL,
  `id_control_target` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_control`
--

LOCK TABLES `template_control` WRITE;
/*!40000 ALTER TABLE `template_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_control_question`
--

DROP TABLE IF EXISTS `template_control_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_control_question` (
  `id_control` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  PRIMARY KEY (`id_control`,`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_control_question`
--

LOCK TABLES `template_control_question` WRITE;
/*!40000 ALTER TABLE `template_control_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_control_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_control_question_mapping`
--

DROP TABLE IF EXISTS `template_control_question_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_control_question_mapping` (
  `id_control` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_control`,`id_question`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_control_question_mapping`
--

LOCK TABLES `template_control_question_mapping` WRITE;
/*!40000 ALTER TABLE `template_control_question_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_control_question_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_display`
--

DROP TABLE IF EXISTS `template_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_display` (
  `id_display` int(11) NOT NULL AUTO_INCREMENT,
  `id_template` int(11) DEFAULT 0,
  `id_composite` int(11) DEFAULT 0,
  `id_parent` int(11) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `composite_type` varchar(255) DEFAULT '',
  `display_depth` int(11) DEFAULT 0,
  PRIMARY KEY (`id_display`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_display`
--

LOCK TABLES `template_display` WRITE;
/*!40000 ALTER TABLE `template_display` DISABLE KEYS */;
INSERT INTO `template_display` VALUES (1,1,1,0,1,'question',0),(2,1,2,0,2,'question',0),(3,1,3,0,3,'question',0),(4,1,4,0,4,'question',0),(5,1,5,0,5,'question',0),(6,1,6,0,6,'question',0),(7,1,7,0,7,'question',0),(8,1,8,0,8,'question',0),(9,1,9,0,9,'question',0),(10,2,10,0,1,'question',0),(11,2,11,0,2,'question',0),(12,2,12,0,3,'question',0),(13,2,13,0,4,'question',0),(14,2,14,0,5,'question',0),(15,2,15,0,6,'question',0),(16,2,16,0,7,'question',0),(17,2,17,0,8,'question',0),(18,2,18,0,9,'question',0),(19,2,19,0,10,'question',0),(20,3,20,0,1,'question',0),(21,3,21,0,2,'question',0),(22,3,22,0,3,'question',0),(23,3,23,0,4,'question',0),(24,3,24,0,5,'question',0),(25,3,25,0,6,'question',0),(26,3,26,0,7,'question',0),(27,4,27,0,2,'question',0),(28,4,28,0,3,'question',0),(29,4,29,0,4,'question',0),(30,4,30,0,5,'question',0),(31,4,31,0,6,'question',0),(32,4,32,0,7,'question',0),(33,4,33,0,8,'question',0),(34,4,34,0,9,'question',0),(35,4,35,0,10,'question',0),(36,4,36,0,12,'question',0),(37,4,37,0,13,'question',0),(38,4,38,0,14,'question',0),(39,4,39,0,11,'question',0),(40,4,40,0,1,'question',0),(41,5,41,0,1,'question',0),(42,5,42,0,2,'question',0),(43,5,43,0,4,'question',0),(44,5,44,0,5,'question',0),(45,5,45,0,6,'question',0),(46,5,46,0,7,'question',0),(47,5,47,0,8,'question',0),(48,5,48,0,9,'question',0),(49,5,49,0,10,'question',0),(50,5,50,0,3,'question',0),(51,6,51,0,1,'question',0),(52,7,52,0,1,'question',0),(53,7,53,0,2,'question',0),(54,7,54,0,3,'question',0),(55,7,55,0,4,'question',0),(56,7,56,0,5,'question',0),(57,7,57,0,6,'question',0),(58,7,58,0,7,'question',0),(59,7,59,0,8,'question',0),(60,7,60,0,9,'question',0),(61,7,61,0,10,'question',0),(62,7,62,0,11,'question',0),(63,7,63,0,12,'question',0),(64,8,64,0,1,'question',0),(65,8,65,0,2,'question',0),(66,8,66,0,3,'question',0);
/*!40000 ALTER TABLE `template_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_entry`
--

DROP TABLE IF EXISTS `template_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_entry` (
  `id_entry` int(11) NOT NULL AUTO_INCREMENT,
  `id_type` int(11) NOT NULL DEFAULT 0,
  `title` mediumtext DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `fields_in_line` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `field_unique` smallint(6) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `pos_conditional` int(11) DEFAULT 0,
  `error_message` mediumtext DEFAULT NULL,
  `is_only_display_back` smallint(6) DEFAULT 0,
  `is_indexed` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_entry`
--

LOCK TABLES `template_entry` WRITE;
/*!40000 ALTER TABLE `template_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_field`
--

DROP TABLE IF EXISTS `template_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL,
  `default_value` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `value_type_date` date DEFAULT NULL,
  `no_display_title` smallint(6) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=MyISAM AUTO_INCREMENT=744 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_field`
--

LOCK TABLES `template_field` WRITE;
/*!40000 ALTER TABLE `template_field` DISABLE KEYS */;
INSERT INTO `template_field` VALUES (1,1,'-1','use_ref_list','false',0,1,NULL,0,NULL),(2,1,'','anonymizable','false',0,2,NULL,0,NULL),(3,1,'-1','use_ref_list','false',0,3,NULL,0,NULL),(4,1,'','anonymizable','false',0,4,NULL,0,NULL),(5,1,NULL,'used_in_correct_form_response','false',0,5,NULL,0,NULL),(6,1,NULL,'used_in_complete_form_response','false',0,6,NULL,0,NULL),(7,1,NULL,'exportable','true',0,7,NULL,0,NULL),(8,1,NULL,'text_config','',0,8,NULL,0,NULL),(9,1,NULL,'width','0',0,9,NULL,0,NULL),(10,1,NULL,'max_size','-1',0,10,NULL,0,NULL),(11,1,NULL,'confirm_field','false',0,11,NULL,0,NULL),(12,1,NULL,'exportable_pdf','true',0,12,NULL,0,NULL),(13,2,'-1','use_ref_list','false',0,13,NULL,0,NULL),(14,2,'','anonymizable','false',0,14,NULL,0,NULL),(15,2,'-1','use_ref_list','false',0,15,NULL,0,NULL),(16,2,'','anonymizable','false',0,16,NULL,0,NULL),(17,2,NULL,'used_in_correct_form_response','false',0,17,NULL,0,NULL),(18,2,NULL,'used_in_complete_form_response','false',0,18,NULL,0,NULL),(19,2,NULL,'exportable','false',0,19,NULL,0,NULL),(20,2,NULL,'default_date_value',NULL,0,20,NULL,0,NULL),(21,3,'-1','use_ref_list','false',0,21,NULL,0,NULL),(22,3,'','anonymizable','false',0,22,NULL,0,NULL),(23,3,'-1','use_ref_list','false',0,23,NULL,0,NULL),(24,3,'','anonymizable','false',0,24,NULL,0,NULL),(25,3,NULL,'used_in_correct_form_response','false',0,25,NULL,0,NULL),(26,3,NULL,'used_in_complete_form_response','false',0,26,NULL,0,NULL),(27,3,NULL,'exportable','true',0,27,NULL,0,NULL),(28,3,NULL,'text_config','',0,28,NULL,0,NULL),(29,3,NULL,'width','0',0,29,NULL,0,NULL),(30,3,NULL,'max_size','-1',0,30,NULL,0,NULL),(31,3,NULL,'confirm_field','false',0,31,NULL,0,NULL),(32,3,NULL,'exportable_pdf','true',0,32,NULL,0,NULL),(33,4,'-1','anonymizable','false',0,33,NULL,0,NULL),(34,4,'-1','use_ref_list','false',0,34,NULL,0,NULL),(35,4,'','anonymizable','false',0,35,NULL,0,NULL),(36,4,'-1','use_ref_list','false',0,36,NULL,0,NULL),(37,4,'','anonymizable','false',0,37,NULL,0,NULL),(38,4,NULL,'used_in_correct_form_response','false',0,38,NULL,0,NULL),(39,4,NULL,'used_in_complete_form_response','false',0,39,NULL,0,NULL),(40,4,NULL,'exportable','false',0,40,NULL,0,NULL),(41,4,'Salarié ','answer_choice','Salarie',0,41,NULL,0,''),(42,4,'Free-lance ','answer_choice','Free_lance',0,42,NULL,0,''),(43,4,'Apprenti ','answer_choice','Apprenti',0,43,NULL,0,''),(44,4,'Stagiaire','answer_choice','Stagiaire',0,44,NULL,0,''),(45,5,'-1','use_ref_list','false',0,45,NULL,0,NULL),(46,5,'','anonymizable','false',0,46,NULL,0,NULL),(47,5,'-1','use_ref_list','false',0,47,NULL,0,NULL),(48,5,'','anonymizable','false',0,48,NULL,0,NULL),(49,5,NULL,'used_in_correct_form_response','false',0,49,NULL,0,NULL),(50,5,NULL,'used_in_complete_form_response','false',0,50,NULL,0,NULL),(51,5,NULL,'exportable','false',0,51,NULL,0,NULL),(52,5,NULL,'text_config','',0,52,NULL,0,NULL),(53,5,NULL,'width','0',0,53,NULL,0,NULL),(54,5,NULL,'max_size','-1',0,54,NULL,0,NULL),(55,5,NULL,'confirm_field','false',0,55,NULL,0,NULL),(56,6,'-1','use_ref_list','false',0,56,NULL,0,NULL),(57,6,'','anonymizable','false',0,57,NULL,0,NULL),(58,6,'-1','use_ref_list','false',0,58,NULL,0,NULL),(59,6,'','anonymizable','false',0,59,NULL,0,NULL),(60,6,NULL,'used_in_correct_form_response','false',0,60,NULL,0,NULL),(61,6,NULL,'used_in_complete_form_response','false',0,61,NULL,0,NULL),(62,6,NULL,'exportable','false',0,62,NULL,0,NULL),(63,6,NULL,'text_config','',0,63,NULL,0,NULL),(64,6,NULL,'width','0',0,64,NULL,0,NULL),(65,6,NULL,'max_size','-1',0,65,NULL,0,NULL),(66,6,NULL,'confirm_field','false',0,66,NULL,0,NULL),(67,7,'-1','use_ref_list','false',0,67,NULL,0,NULL),(68,7,'','anonymizable','false',0,68,NULL,0,NULL),(69,7,'-1','use_ref_list','false',0,69,NULL,0,NULL),(70,7,'','anonymizable','false',0,70,NULL,0,NULL),(71,7,NULL,'used_in_correct_form_response','false',0,71,NULL,0,NULL),(72,7,NULL,'used_in_complete_form_response','false',0,72,NULL,0,NULL),(73,7,NULL,'exportable','false',0,73,NULL,0,NULL),(74,7,NULL,'text_config','',0,74,NULL,0,NULL),(75,7,NULL,'width','0',0,75,NULL,0,NULL),(76,7,NULL,'max_size','-1',0,76,NULL,0,NULL),(77,7,NULL,'confirm_field','false',0,77,NULL,0,NULL),(78,8,'-1','use_ref_list','false',0,78,NULL,0,NULL),(79,8,'','anonymizable','false',0,79,NULL,0,NULL),(80,8,'-1','use_ref_list','false',0,80,NULL,0,NULL),(81,8,'','anonymizable','false',0,81,NULL,0,NULL),(82,8,NULL,'used_in_correct_form_response','false',0,82,NULL,0,NULL),(83,8,NULL,'used_in_complete_form_response','false',0,83,NULL,0,NULL),(84,8,NULL,'exportable','false',0,84,NULL,0,NULL),(85,8,NULL,'text_config','',0,85,NULL,0,NULL),(86,8,NULL,'width','0',0,86,NULL,0,NULL),(87,8,NULL,'max_size','-1',0,87,NULL,0,NULL),(88,8,NULL,'confirm_field','false',0,88,NULL,0,NULL),(89,9,'-1','anonymizable','false',0,89,NULL,0,NULL),(90,9,'-1','use_ref_list','false',0,90,NULL,0,NULL),(91,9,'','anonymizable','false',0,91,NULL,0,NULL),(92,9,'-1','use_ref_list','false',0,92,NULL,0,NULL),(93,9,'','anonymizable','false',0,93,NULL,0,NULL),(94,9,NULL,'used_in_correct_form_response','false',0,94,NULL,0,NULL),(95,9,NULL,'used_in_complete_form_response','false',0,95,NULL,0,NULL),(96,9,NULL,'exportable','true',0,96,NULL,0,NULL),(97,9,'moins de 50 000 euros par an','answer_choice','moins_de_50_000_euros_par_an',0,97,NULL,0,''),(98,9,'moins de 100 000 euros par an','answer_choice','moins_de_100_000_euros_par_an',0,98,NULL,0,''),(99,9,'moins de 200 000 euros par an','answer_choice','moins_de_200_000_euros_par_an',0,99,NULL,0,''),(100,9,'+ de 200 000 euros par an','answer_choice','plus_de_200_000_euros_par_an',0,100,NULL,0,''),(101,9,NULL,'exportable_pdf','true',0,101,NULL,0,NULL),(102,10,'-1','use_ref_list','false',0,102,NULL,0,NULL),(103,10,'','anonymizable','false',0,103,NULL,0,NULL),(104,10,'-1','use_ref_list','false',0,104,NULL,0,NULL),(105,10,'','anonymizable','false',0,105,NULL,0,NULL),(106,10,NULL,'used_in_correct_form_response','false',0,106,NULL,0,NULL),(107,10,NULL,'used_in_complete_form_response','false',0,107,NULL,0,NULL),(108,10,NULL,'exportable','true',0,108,NULL,0,NULL),(109,10,NULL,'text_config','',0,109,NULL,0,NULL),(110,10,NULL,'width','0',0,110,NULL,0,NULL),(111,10,NULL,'max_size','-1',0,111,NULL,0,NULL),(112,10,NULL,'confirm_field','false',0,112,NULL,0,NULL),(113,10,NULL,'exportable_pdf','true',0,113,NULL,0,NULL),(114,11,'-1','use_ref_list','false',0,114,NULL,0,NULL),(115,11,'','anonymizable','false',0,115,NULL,0,NULL),(116,11,'-1','use_ref_list','false',0,116,NULL,0,NULL),(117,11,'','anonymizable','false',0,117,NULL,0,NULL),(118,11,NULL,'used_in_correct_form_response','false',0,118,NULL,0,NULL),(119,11,NULL,'used_in_complete_form_response','false',0,119,NULL,0,NULL),(120,11,NULL,'exportable','true',0,120,NULL,0,NULL),(121,11,NULL,'text_config','',0,121,NULL,0,NULL),(122,11,NULL,'width','0',0,122,NULL,0,NULL),(123,11,NULL,'max_size','-1',0,123,NULL,0,NULL),(124,11,NULL,'confirm_field','false',0,124,NULL,0,NULL),(125,11,NULL,'exportable_pdf','true',0,125,NULL,0,NULL),(126,12,'-1','use_ref_list','false',0,126,NULL,0,NULL),(127,12,'','anonymizable','false',0,127,NULL,0,NULL),(128,12,'-1','use_ref_list','false',0,128,NULL,0,NULL),(129,12,'','anonymizable','false',0,129,NULL,0,NULL),(130,12,NULL,'used_in_correct_form_response','false',0,130,NULL,0,NULL),(131,12,NULL,'used_in_complete_form_response','false',0,131,NULL,0,NULL),(132,12,NULL,'exportable','true',0,132,NULL,0,NULL),(133,12,NULL,'text_config','',0,133,NULL,0,NULL),(134,12,NULL,'width','0',0,134,NULL,0,NULL),(135,12,NULL,'max_size','-1',0,135,NULL,0,NULL),(136,12,NULL,'confirm_field','false',0,136,NULL,0,NULL),(137,12,NULL,'exportable_pdf','true',0,137,NULL,0,NULL),(138,13,'-1','use_ref_list','false',0,138,NULL,0,NULL),(139,13,'','anonymizable','false',0,139,NULL,0,NULL),(140,13,'-1','use_ref_list','false',0,140,NULL,0,NULL),(141,13,'','anonymizable','false',0,141,NULL,0,NULL),(142,13,NULL,'used_in_correct_form_response','false',0,142,NULL,0,NULL),(143,13,NULL,'used_in_complete_form_response','false',0,143,NULL,0,NULL),(144,13,NULL,'exportable','true',0,144,NULL,0,NULL),(145,13,NULL,'text_config','',0,145,NULL,0,NULL),(146,13,NULL,'width','0',0,146,NULL,0,NULL),(147,13,NULL,'max_size','-1',0,147,NULL,0,NULL),(148,13,NULL,'confirm_field','false',0,148,NULL,0,NULL),(149,13,NULL,'exportable_pdf','true',0,149,NULL,0,NULL),(150,14,'-1','use_ref_list','false',0,150,NULL,0,NULL),(151,14,'','anonymizable','false',0,151,NULL,0,NULL),(152,14,'-1','use_ref_list','false',0,152,NULL,0,NULL),(153,14,'','anonymizable','false',0,153,NULL,0,NULL),(154,14,NULL,'used_in_correct_form_response','false',0,154,NULL,0,NULL),(155,14,NULL,'used_in_complete_form_response','false',0,155,NULL,0,NULL),(156,14,NULL,'exportable','true',0,156,NULL,0,NULL),(157,14,NULL,'text_config','',0,157,NULL,0,NULL),(158,14,NULL,'width','0',0,158,NULL,0,NULL),(159,14,NULL,'max_size','-1',0,159,NULL,0,NULL),(160,14,NULL,'confirm_field','false',0,160,NULL,0,NULL),(161,14,NULL,'exportable_pdf','true',0,161,NULL,0,NULL),(162,15,'-1','use_ref_list','false',0,162,NULL,0,NULL),(163,15,'','anonymizable','false',0,163,NULL,0,NULL),(164,15,'-1','use_ref_list','false',0,164,NULL,0,NULL),(165,15,'','anonymizable','false',0,165,NULL,0,NULL),(166,15,NULL,'used_in_correct_form_response','false',0,166,NULL,0,NULL),(167,15,NULL,'used_in_complete_form_response','false',0,167,NULL,0,NULL),(168,15,NULL,'exportable','true',0,168,NULL,0,NULL),(169,15,NULL,'text_config','',0,169,NULL,0,NULL),(170,15,NULL,'width','0',0,170,NULL,0,NULL),(171,15,NULL,'max_size','-1',0,171,NULL,0,NULL),(172,15,NULL,'confirm_field','false',0,172,NULL,0,NULL),(173,15,NULL,'exportable_pdf','true',0,173,NULL,0,NULL),(174,16,'-1','use_ref_list','false',0,174,NULL,0,NULL),(175,16,'','anonymizable','false',0,175,NULL,0,NULL),(176,16,'-1','use_ref_list','false',0,176,NULL,0,NULL),(177,16,'','anonymizable','false',0,177,NULL,0,NULL),(178,16,NULL,'used_in_correct_form_response','false',0,178,NULL,0,NULL),(179,16,NULL,'used_in_complete_form_response','false',0,179,NULL,0,NULL),(180,16,NULL,'exportable','true',0,180,NULL,0,NULL),(181,16,NULL,'text_config','',0,181,NULL,0,NULL),(182,16,NULL,'width','0',0,182,NULL,0,NULL),(183,16,NULL,'max_size','-1',0,183,NULL,0,NULL),(184,16,NULL,'confirm_field','false',0,184,NULL,0,NULL),(185,16,NULL,'exportable_pdf','true',0,185,NULL,0,NULL),(186,17,'-1','use_ref_list','false',0,186,NULL,0,NULL),(187,17,'','anonymizable','false',0,187,NULL,0,NULL),(188,17,'-1','use_ref_list','false',0,188,NULL,0,NULL),(189,17,'','anonymizable','false',0,189,NULL,0,NULL),(190,17,NULL,'used_in_correct_form_response','false',0,190,NULL,0,NULL),(191,17,NULL,'used_in_complete_form_response','false',0,191,NULL,0,NULL),(192,17,NULL,'exportable','true',0,192,NULL,0,NULL),(193,17,NULL,'text_config','',0,193,NULL,0,NULL),(194,17,NULL,'width','0',0,194,NULL,0,NULL),(195,17,NULL,'max_size','-1',0,195,NULL,0,NULL),(196,17,NULL,'confirm_field','false',0,196,NULL,0,NULL),(197,17,NULL,'exportable_pdf','true',0,197,NULL,0,NULL),(198,18,'-1','use_ref_list','false',0,198,NULL,0,NULL),(199,18,'','anonymizable','false',0,199,NULL,0,NULL),(200,18,'-1','use_ref_list','false',0,200,NULL,0,NULL),(201,18,'','anonymizable','false',0,201,NULL,0,NULL),(202,18,NULL,'used_in_correct_form_response','false',0,202,NULL,0,NULL),(203,18,NULL,'used_in_complete_form_response','false',0,203,NULL,0,NULL),(204,18,NULL,'exportable','true',0,204,NULL,0,NULL),(205,18,NULL,'text_config','',0,205,NULL,0,NULL),(206,18,NULL,'width','0',0,206,NULL,0,NULL),(207,18,NULL,'max_size','-1',0,207,NULL,0,NULL),(208,18,NULL,'confirm_field','false',0,208,NULL,0,NULL),(209,18,NULL,'exportable_pdf','true',0,209,NULL,0,NULL),(210,19,'-1','use_ref_list','false',0,210,NULL,0,NULL),(211,19,'','anonymizable','false',0,211,NULL,0,NULL),(212,19,'-1','use_ref_list','false',0,212,NULL,0,NULL),(213,19,'','anonymizable','false',0,213,NULL,0,NULL),(214,19,NULL,'used_in_correct_form_response','false',0,214,NULL,0,NULL),(215,19,NULL,'used_in_complete_form_response','false',0,215,NULL,0,NULL),(216,19,NULL,'exportable','true',0,216,NULL,0,NULL),(217,19,NULL,'attribute_name','user.home-info.online.email',0,217,NULL,0,NULL),(218,19,NULL,'exportable_pdf','true',0,218,NULL,0,NULL),(219,20,'-1','use_ref_list','false',0,219,NULL,0,NULL),(220,20,'','anonymizable','false',0,220,NULL,0,NULL),(221,20,'-1','use_ref_list','false',0,221,NULL,0,NULL),(222,20,'','anonymizable','false',0,222,NULL,0,NULL),(223,20,NULL,'used_in_correct_form_response','false',0,223,NULL,0,NULL),(224,20,NULL,'used_in_complete_form_response','false',0,224,NULL,0,NULL),(225,20,NULL,'exportable','true',0,225,NULL,0,NULL),(226,20,NULL,'text_config','',0,226,NULL,0,NULL),(227,20,NULL,'width','0',0,227,NULL,0,NULL),(228,20,NULL,'max_size','-1',0,228,NULL,0,NULL),(229,20,NULL,'confirm_field','false',0,229,NULL,0,NULL),(230,20,NULL,'exportable_pdf','true',0,230,NULL,0,NULL),(231,21,'-1','use_ref_list','false',0,231,NULL,0,NULL),(232,21,'','anonymizable','false',0,232,NULL,0,NULL),(233,21,'-1','use_ref_list','false',0,233,NULL,0,NULL),(234,21,'','anonymizable','false',0,234,NULL,0,NULL),(235,21,NULL,'used_in_correct_form_response','false',0,235,NULL,0,NULL),(236,21,NULL,'used_in_complete_form_response','false',0,236,NULL,0,NULL),(237,21,NULL,'exportable','true',0,237,NULL,0,NULL),(238,21,NULL,'text_config','',0,238,NULL,0,NULL),(239,21,NULL,'width','0',0,239,NULL,0,NULL),(240,21,NULL,'max_size','-1',0,240,NULL,0,NULL),(241,21,NULL,'confirm_field','false',0,241,NULL,0,NULL),(242,21,NULL,'exportable_pdf','true',0,242,NULL,0,NULL),(243,22,'-1','use_ref_list','false',0,243,NULL,0,NULL),(244,22,'','anonymizable','false',0,244,NULL,0,NULL),(245,22,'-1','use_ref_list','false',0,245,NULL,0,NULL),(246,22,'','anonymizable','false',0,246,NULL,0,NULL),(247,22,NULL,'used_in_correct_form_response','false',0,247,NULL,0,NULL),(248,22,NULL,'used_in_complete_form_response','false',0,248,NULL,0,NULL),(249,22,NULL,'exportable','true',0,249,NULL,0,NULL),(250,22,NULL,'text_config','',0,250,NULL,0,NULL),(251,22,NULL,'width','0',0,251,NULL,0,NULL),(252,22,NULL,'max_size','-1',0,252,NULL,0,NULL),(253,22,NULL,'confirm_field','false',0,253,NULL,0,NULL),(254,22,NULL,'exportable_pdf','true',0,254,NULL,0,NULL),(255,23,'-1','use_ref_list','false',0,255,NULL,0,NULL),(256,23,'','anonymizable','false',0,256,NULL,0,NULL),(257,23,'-1','use_ref_list','false',0,257,NULL,0,NULL),(258,23,'','anonymizable','false',0,258,NULL,0,NULL),(259,23,NULL,'used_in_correct_form_response','false',0,259,NULL,0,NULL),(260,23,NULL,'used_in_complete_form_response','false',0,260,NULL,0,NULL),(261,23,NULL,'exportable','true',0,261,NULL,0,NULL),(262,23,NULL,'text_config','',0,262,NULL,0,NULL),(263,23,NULL,'width','0',0,263,NULL,0,NULL),(264,23,NULL,'max_size','-1',0,264,NULL,0,NULL),(265,23,NULL,'confirm_field','false',0,265,NULL,0,NULL),(266,23,NULL,'exportable_pdf','true',0,266,NULL,0,NULL),(267,24,'-1','use_ref_list','false',0,267,NULL,0,NULL),(268,24,'','anonymizable','false',0,268,NULL,0,NULL),(269,24,'-1','use_ref_list','false',0,269,NULL,0,NULL),(270,24,'','anonymizable','false',0,270,NULL,0,NULL),(271,24,NULL,'used_in_correct_form_response','false',0,271,NULL,0,NULL),(272,24,NULL,'used_in_complete_form_response','false',0,272,NULL,0,NULL),(273,24,NULL,'exportable','true',0,273,NULL,0,NULL),(274,24,NULL,'text_config','',0,274,NULL,0,NULL),(275,24,NULL,'width','0',0,275,NULL,0,NULL),(276,24,NULL,'max_size','-1',0,276,NULL,0,NULL),(277,24,NULL,'confirm_field','false',0,277,NULL,0,NULL),(278,24,NULL,'exportable_pdf','true',0,278,NULL,0,NULL),(279,25,'-1','use_ref_list','false',0,279,NULL,0,NULL),(280,25,'','anonymizable','false',0,280,NULL,0,NULL),(281,25,'-1','use_ref_list','false',0,281,NULL,0,NULL),(282,25,'','anonymizable','false',0,282,NULL,0,NULL),(283,25,NULL,'used_in_correct_form_response','false',0,283,NULL,0,NULL),(284,25,NULL,'used_in_complete_form_response','false',0,284,NULL,0,NULL),(285,25,NULL,'exportable','true',0,285,NULL,0,NULL),(286,25,NULL,'text_config','',0,286,NULL,0,NULL),(287,25,NULL,'width','0',0,287,NULL,0,NULL),(288,25,NULL,'max_size','-1',0,288,NULL,0,NULL),(289,25,NULL,'confirm_field','false',0,289,NULL,0,NULL),(290,25,NULL,'exportable_pdf','true',0,290,NULL,0,NULL),(291,26,'-1','use_ref_list','false',0,291,NULL,0,NULL),(292,26,'','anonymizable','false',0,292,NULL,0,NULL),(293,26,'-1','use_ref_list','false',0,293,NULL,0,NULL),(294,26,'','anonymizable','false',0,294,NULL,0,NULL),(295,26,NULL,'used_in_correct_form_response','false',0,295,NULL,0,NULL),(296,26,NULL,'used_in_complete_form_response','true',0,296,NULL,0,NULL),(297,26,NULL,'exportable','true',0,297,NULL,0,NULL),(298,26,NULL,'file_max_size','2097152',0,298,NULL,0,NULL),(299,26,NULL,'max_files','1',0,299,NULL,0,NULL),(300,26,NULL,'export_binary','false',0,300,NULL,0,NULL),(301,27,'-1','anonymizable','false',0,301,NULL,0,NULL),(302,27,'-1','use_ref_list','false',0,302,NULL,0,NULL),(303,27,'','anonymizable','false',0,303,NULL,0,NULL),(304,27,'-1','use_ref_list','false',0,304,NULL,0,NULL),(305,27,'','anonymizable','false',0,305,NULL,0,NULL),(306,27,NULL,'used_in_correct_form_response','false',0,306,NULL,0,NULL),(307,27,NULL,'used_in_complete_form_response','false',0,307,NULL,0,NULL),(308,27,NULL,'exportable','true',0,308,NULL,0,NULL),(309,27,'Association','answer_choice','Association',0,309,NULL,0,''),(310,27,'société','answer_choice','societe',0,310,NULL,0,''),(311,27,'Personne physique','answer_choice','personne_physique',0,311,NULL,0,''),(312,28,'-1','use_ref_list','false',0,312,NULL,0,NULL),(313,28,'','anonymizable','false',0,313,NULL,0,NULL),(314,28,'-1','use_ref_list','false',0,314,NULL,0,NULL),(315,28,'','anonymizable','false',0,315,NULL,0,NULL),(316,28,NULL,'used_in_correct_form_response','false',0,316,NULL,0,NULL),(317,28,NULL,'used_in_complete_form_response','false',0,317,NULL,0,NULL),(318,28,NULL,'exportable','true',0,318,NULL,0,NULL),(319,28,NULL,'text_config','',0,319,NULL,0,NULL),(320,28,NULL,'width','0',0,320,NULL,0,NULL),(321,28,NULL,'max_size','-1',0,321,NULL,0,NULL),(322,28,NULL,'confirm_field','false',0,322,NULL,0,NULL),(323,29,'-1','use_ref_list','false',0,323,NULL,0,NULL),(324,29,'','anonymizable','false',0,324,NULL,0,NULL),(325,29,'-1','use_ref_list','false',0,325,NULL,0,NULL),(326,29,'','anonymizable','false',0,326,NULL,0,NULL),(327,29,NULL,'used_in_correct_form_response','false',0,327,NULL,0,NULL),(328,29,NULL,'used_in_complete_form_response','false',0,328,NULL,0,NULL),(329,29,NULL,'exportable','true',0,329,NULL,0,NULL),(330,29,NULL,'text_config','',0,330,NULL,0,NULL),(331,29,NULL,'width','0',0,331,NULL,0,NULL),(332,29,NULL,'max_size','-1',0,332,NULL,0,NULL),(333,29,NULL,'confirm_field','false',0,333,NULL,0,NULL),(334,30,'-1','use_ref_list','false',0,334,NULL,0,NULL),(335,30,'','anonymizable','false',0,335,NULL,0,NULL),(336,30,'-1','use_ref_list','false',0,336,NULL,0,NULL),(337,30,'','anonymizable','false',0,337,NULL,0,NULL),(338,30,NULL,'used_in_correct_form_response','false',0,338,NULL,0,NULL),(339,30,NULL,'used_in_complete_form_response','false',0,339,NULL,0,NULL),(340,30,NULL,'exportable','true',0,340,NULL,0,NULL),(341,30,NULL,'text_config','',0,341,NULL,0,NULL),(342,30,NULL,'width','0',0,342,NULL,0,NULL),(343,30,NULL,'max_size','-1',0,343,NULL,0,NULL),(344,30,NULL,'confirm_field','false',0,344,NULL,0,NULL),(345,31,'-1','use_ref_list','false',0,345,NULL,0,NULL),(346,31,'','anonymizable','false',0,346,NULL,0,NULL),(347,31,'-1','use_ref_list','false',0,347,NULL,0,NULL),(348,31,'','anonymizable','false',0,348,NULL,0,NULL),(349,31,NULL,'used_in_correct_form_response','false',0,349,NULL,0,NULL),(350,31,NULL,'used_in_complete_form_response','false',0,350,NULL,0,NULL),(351,31,NULL,'exportable','true',0,351,NULL,0,NULL),(352,31,NULL,'text_config','',0,352,NULL,0,NULL),(353,31,NULL,'width','0',0,353,NULL,0,NULL),(354,31,NULL,'max_size','-1',0,354,NULL,0,NULL),(355,31,NULL,'confirm_field','false',0,355,NULL,0,NULL),(356,32,'-1','anonymizable','false',0,356,NULL,0,NULL),(357,32,'-1','use_ref_list','false',0,357,NULL,0,NULL),(358,32,'','anonymizable','false',0,358,NULL,0,NULL),(359,32,'-1','use_ref_list','false',0,359,NULL,0,NULL),(360,32,'','anonymizable','false',0,360,NULL,0,NULL),(361,32,NULL,'used_in_correct_form_response','false',0,361,NULL,0,NULL),(362,32,NULL,'used_in_complete_form_response','false',0,362,NULL,0,NULL),(363,32,NULL,'exportable','true',0,363,NULL,0,NULL),(364,32,'Madame','answer_choice','Madame',0,364,NULL,0,''),(365,32,'Monsieur','answer_choice','Monsieur',0,365,NULL,0,''),(366,33,'-1','use_ref_list','false',0,366,NULL,0,NULL),(367,33,'','anonymizable','false',0,367,NULL,0,NULL),(368,33,'-1','use_ref_list','false',0,368,NULL,0,NULL),(369,33,'','anonymizable','false',0,369,NULL,0,NULL),(370,33,NULL,'used_in_correct_form_response','false',0,370,NULL,0,NULL),(371,33,NULL,'used_in_complete_form_response','false',0,371,NULL,0,NULL),(372,33,NULL,'exportable','true',0,372,NULL,0,NULL),(373,33,NULL,'text_config','',0,373,NULL,0,NULL),(374,33,NULL,'width','0',0,374,NULL,0,NULL),(375,33,NULL,'max_size','-1',0,375,NULL,0,NULL),(376,33,NULL,'confirm_field','false',0,376,NULL,0,NULL),(377,34,'-1','use_ref_list','false',0,377,NULL,0,NULL),(378,34,'','anonymizable','false',0,378,NULL,0,NULL),(379,34,'-1','use_ref_list','false',0,379,NULL,0,NULL),(380,34,'','anonymizable','false',0,380,NULL,0,NULL),(381,34,NULL,'used_in_correct_form_response','false',0,381,NULL,0,NULL),(382,34,NULL,'used_in_complete_form_response','false',0,382,NULL,0,NULL),(383,34,NULL,'exportable','true',0,383,NULL,0,NULL),(384,34,NULL,'text_config','',0,384,NULL,0,NULL),(385,34,NULL,'width','0',0,385,NULL,0,NULL),(386,34,NULL,'max_size','-1',0,386,NULL,0,NULL),(387,34,NULL,'confirm_field','false',0,387,NULL,0,NULL),(388,35,'-1','use_ref_list','false',0,388,NULL,0,NULL),(389,35,'','anonymizable','false',0,389,NULL,0,NULL),(390,35,'-1','use_ref_list','false',0,390,NULL,0,NULL),(391,35,'','anonymizable','false',0,391,NULL,0,NULL),(392,35,NULL,'used_in_correct_form_response','false',0,392,NULL,0,NULL),(393,35,NULL,'used_in_complete_form_response','false',0,393,NULL,0,NULL),(394,35,NULL,'exportable','true',0,394,NULL,0,NULL),(395,35,NULL,'text_config','',0,395,NULL,0,NULL),(396,35,NULL,'width','0',0,396,NULL,0,NULL),(397,35,NULL,'max_size','-1',0,397,NULL,0,NULL),(398,35,NULL,'confirm_field','false',0,398,NULL,0,NULL),(399,36,'-1','use_ref_list','false',0,399,NULL,0,NULL),(400,36,'','anonymizable','false',0,400,NULL,0,NULL),(401,36,'-1','use_ref_list','false',0,401,NULL,0,NULL),(402,36,'','anonymizable','false',0,402,NULL,0,NULL),(403,36,NULL,'used_in_correct_form_response','false',0,403,NULL,0,NULL),(404,36,NULL,'used_in_complete_form_response','false',0,404,NULL,0,NULL),(405,36,NULL,'exportable','true',0,405,NULL,0,NULL),(406,36,NULL,'text_config','',0,406,NULL,0,NULL),(407,36,NULL,'width','0',0,407,NULL,0,NULL),(408,36,NULL,'max_size','-1',0,408,NULL,0,NULL),(409,36,NULL,'confirm_field','false',0,409,NULL,0,NULL),(410,37,'-1','use_ref_list','false',0,410,NULL,0,NULL),(411,37,'','anonymizable','false',0,411,NULL,0,NULL),(412,37,'-1','use_ref_list','false',0,412,NULL,0,NULL),(413,37,'','anonymizable','false',0,413,NULL,0,NULL),(414,37,NULL,'used_in_correct_form_response','false',0,414,NULL,0,NULL),(415,37,NULL,'used_in_complete_form_response','false',0,415,NULL,0,NULL),(416,37,NULL,'exportable','true',0,416,NULL,0,NULL),(417,37,NULL,'text_config','',0,417,NULL,0,NULL),(418,37,NULL,'width','0',0,418,NULL,0,NULL),(419,37,NULL,'max_size','-1',0,419,NULL,0,NULL),(420,37,NULL,'confirm_field','false',0,420,NULL,0,NULL),(421,38,'-1','use_ref_list','false',0,421,NULL,0,NULL),(422,38,'','anonymizable','false',0,422,NULL,0,NULL),(423,38,'-1','use_ref_list','false',0,423,NULL,0,NULL),(424,38,'','anonymizable','false',0,424,NULL,0,NULL),(425,38,NULL,'used_in_correct_form_response','false',0,425,NULL,0,NULL),(426,38,NULL,'used_in_complete_form_response','false',0,426,NULL,0,NULL),(427,38,NULL,'exportable','true',0,427,NULL,0,NULL),(428,38,NULL,'text_config','',0,428,NULL,0,NULL),(429,38,NULL,'width','0',0,429,NULL,0,NULL),(430,38,NULL,'max_size','-1',0,430,NULL,0,NULL),(431,38,NULL,'confirm_field','false',0,431,NULL,0,NULL),(432,39,'-1','use_ref_list','false',0,432,NULL,0,NULL),(433,39,'','anonymizable','false',0,433,NULL,0,NULL),(434,39,'-1','use_ref_list','false',0,434,NULL,0,NULL),(435,39,'','anonymizable','false',0,435,NULL,0,NULL),(436,39,NULL,'used_in_correct_form_response','false',0,436,NULL,0,NULL),(437,39,NULL,'used_in_complete_form_response','false',0,437,NULL,0,NULL),(438,39,NULL,'exportable','true',0,438,NULL,0,NULL),(439,39,NULL,'attribute_name','user.home-info.online.email',0,439,NULL,0,NULL),(440,40,'-1','use_ref_list','false',0,440,NULL,0,NULL),(441,40,'','anonymizable','false',0,441,NULL,0,NULL),(442,40,'-1','use_ref_list','false',0,442,NULL,0,NULL),(443,40,'','anonymizable','false',0,443,NULL,0,NULL),(444,40,NULL,'used_in_correct_form_response','false',0,444,NULL,0,NULL),(445,40,NULL,'used_in_complete_form_response','false',0,445,NULL,0,NULL),(446,40,NULL,'exportable','false',0,446,NULL,0,NULL),(447,40,NULL,'display_in_bo','false',0,447,NULL,0,NULL),(448,41,'-1','use_ref_list','false',0,448,NULL,0,NULL),(449,41,'','anonymizable','false',0,449,NULL,0,NULL),(450,41,'-1','use_ref_list','false',0,450,NULL,0,NULL),(451,41,'','anonymizable','false',0,451,NULL,0,NULL),(452,41,NULL,'used_in_correct_form_response','false',0,452,NULL,0,NULL),(453,41,NULL,'used_in_complete_form_response','false',0,453,NULL,0,NULL),(454,41,NULL,'exportable','true',0,454,NULL,0,NULL),(455,41,NULL,'text_config','',0,455,NULL,0,NULL),(456,41,NULL,'width','0',0,456,NULL,0,NULL),(457,41,NULL,'max_size','-1',0,457,NULL,0,NULL),(458,41,NULL,'confirm_field','false',0,458,NULL,0,NULL),(459,41,NULL,'exportable_pdf','true',0,459,NULL,0,NULL),(460,42,'-1','use_ref_list','false',0,460,NULL,0,NULL),(461,42,'','anonymizable','false',0,461,NULL,0,NULL),(462,42,'-1','use_ref_list','false',0,462,NULL,0,NULL),(463,42,'','anonymizable','false',0,463,NULL,0,NULL),(464,42,NULL,'used_in_correct_form_response','false',0,464,NULL,0,NULL),(465,42,NULL,'used_in_complete_form_response','false',0,465,NULL,0,NULL),(466,42,NULL,'exportable','true',0,466,NULL,0,NULL),(467,42,NULL,'text_config','',0,467,NULL,0,NULL),(468,42,NULL,'width','0',0,468,NULL,0,NULL),(469,42,NULL,'max_size','-1',0,469,NULL,0,NULL),(470,42,NULL,'confirm_field','false',0,470,NULL,0,NULL),(471,42,NULL,'exportable_pdf','true',0,471,NULL,0,NULL),(472,43,'-1','use_ref_list','false',0,472,NULL,0,NULL),(473,43,'','anonymizable','false',0,473,NULL,0,NULL),(474,43,'-1','use_ref_list','false',0,474,NULL,0,NULL),(475,43,'','anonymizable','false',0,475,NULL,0,NULL),(476,43,NULL,'used_in_correct_form_response','false',0,476,NULL,0,NULL),(477,43,NULL,'used_in_complete_form_response','false',0,477,NULL,0,NULL),(478,43,NULL,'exportable','true',0,478,NULL,0,NULL),(479,43,NULL,'text_config','',0,479,NULL,0,NULL),(480,43,NULL,'width','0',0,480,NULL,0,NULL),(481,43,NULL,'max_size','-1',0,481,NULL,0,NULL),(482,43,NULL,'confirm_field','false',0,482,NULL,0,NULL),(483,43,NULL,'exportable_pdf','true',0,483,NULL,0,NULL),(484,44,'-1','use_ref_list','false',0,484,NULL,0,NULL),(485,44,'','anonymizable','false',0,485,NULL,0,NULL),(486,44,'-1','use_ref_list','false',0,486,NULL,0,NULL),(487,44,'','anonymizable','false',0,487,NULL,0,NULL),(488,44,NULL,'used_in_correct_form_response','false',0,488,NULL,0,NULL),(489,44,NULL,'used_in_complete_form_response','false',0,489,NULL,0,NULL),(490,44,NULL,'exportable','true',0,490,NULL,0,NULL),(491,44,NULL,'text_config','',0,491,NULL,0,NULL),(492,44,NULL,'width','0',0,492,NULL,0,NULL),(493,44,NULL,'max_size','-1',0,493,NULL,0,NULL),(494,44,NULL,'confirm_field','false',0,494,NULL,0,NULL),(495,44,NULL,'exportable_pdf','true',0,495,NULL,0,NULL),(496,45,'-1','use_ref_list','false',0,496,NULL,0,NULL),(497,45,'','anonymizable','false',0,497,NULL,0,NULL),(498,45,'-1','use_ref_list','false',0,498,NULL,0,NULL),(499,45,'','anonymizable','false',0,499,NULL,0,NULL),(500,45,NULL,'used_in_correct_form_response','false',0,500,NULL,0,NULL),(501,45,NULL,'used_in_complete_form_response','false',0,501,NULL,0,NULL),(502,45,NULL,'exportable','true',0,502,NULL,0,NULL),(503,45,NULL,'text_config','',0,503,NULL,0,NULL),(504,45,NULL,'width','0',0,504,NULL,0,NULL),(505,45,NULL,'max_size','-1',0,505,NULL,0,NULL),(506,45,NULL,'confirm_field','false',0,506,NULL,0,NULL),(507,45,NULL,'exportable_pdf','true',0,507,NULL,0,NULL),(508,46,'-1','use_ref_list','false',0,508,NULL,0,NULL),(509,46,'','anonymizable','false',0,509,NULL,0,NULL),(510,46,'-1','use_ref_list','false',0,510,NULL,0,NULL),(511,46,'','anonymizable','false',0,511,NULL,0,NULL),(512,46,NULL,'used_in_correct_form_response','false',0,512,NULL,0,NULL),(513,46,NULL,'used_in_complete_form_response','false',0,513,NULL,0,NULL),(514,46,NULL,'exportable','true',0,514,NULL,0,NULL),(515,46,NULL,'text_config','',0,515,NULL,0,NULL),(516,46,NULL,'width','0',0,516,NULL,0,NULL),(517,46,NULL,'max_size','-1',0,517,NULL,0,NULL),(518,46,NULL,'confirm_field','false',0,518,NULL,0,NULL),(519,46,NULL,'exportable_pdf','true',0,519,NULL,0,NULL),(520,47,'-1','use_ref_list','false',0,520,NULL,0,NULL),(521,47,'','anonymizable','false',0,521,NULL,0,NULL),(522,47,'-1','use_ref_list','false',0,522,NULL,0,NULL),(523,47,'','anonymizable','false',0,523,NULL,0,NULL),(524,47,NULL,'used_in_correct_form_response','false',0,524,NULL,0,NULL),(525,47,NULL,'used_in_complete_form_response','false',0,525,NULL,0,NULL),(526,47,NULL,'exportable','true',0,526,NULL,0,NULL),(527,47,NULL,'text_config','',0,527,NULL,0,NULL),(528,47,NULL,'width','0',0,528,NULL,0,NULL),(529,47,NULL,'max_size','-1',0,529,NULL,0,NULL),(530,47,NULL,'confirm_field','false',0,530,NULL,0,NULL),(531,47,NULL,'exportable_pdf','true',0,531,NULL,0,NULL),(532,48,'-1','use_ref_list','false',0,532,NULL,0,NULL),(533,48,'','anonymizable','false',0,533,NULL,0,NULL),(534,48,'-1','use_ref_list','false',0,534,NULL,0,NULL),(535,48,'','anonymizable','false',0,535,NULL,0,NULL),(536,48,NULL,'used_in_correct_form_response','false',0,536,NULL,0,NULL),(537,48,NULL,'used_in_complete_form_response','false',0,537,NULL,0,NULL),(538,48,NULL,'exportable','true',0,538,NULL,0,NULL),(539,48,NULL,'attribute_name','user.home-info.online.email',0,539,NULL,0,NULL),(540,48,NULL,'exportable_pdf','true',0,540,NULL,0,NULL),(541,49,'-1','use_ref_list','false',0,541,NULL,0,NULL),(542,49,'','anonymizable','false',0,542,NULL,0,NULL),(543,49,'-1','use_ref_list','false',0,543,NULL,0,NULL),(544,49,'','anonymizable','false',0,544,NULL,0,NULL),(545,49,NULL,'used_in_correct_form_response','false',0,545,NULL,0,NULL),(546,49,NULL,'used_in_complete_form_response','false',0,546,NULL,0,NULL),(547,49,NULL,'exportable','true',0,547,NULL,0,NULL),(548,49,NULL,'text_config','',0,548,NULL,0,NULL),(549,49,NULL,'width','0',0,549,NULL,0,NULL),(550,49,NULL,'max_size','-1',0,550,NULL,0,NULL),(551,49,NULL,'confirm_field','false',0,551,NULL,0,NULL),(552,49,NULL,'exportable_pdf','true',0,552,NULL,0,NULL),(553,50,'-1','use_ref_list','false',0,553,NULL,0,NULL),(554,50,'','anonymizable','false',0,554,NULL,0,NULL),(555,50,'-1','use_ref_list','false',0,555,NULL,0,NULL),(556,50,'','anonymizable','false',0,556,NULL,0,NULL),(557,50,NULL,'used_in_correct_form_response','false',0,557,NULL,0,NULL),(558,50,NULL,'used_in_complete_form_response','false',0,558,NULL,0,NULL),(559,50,NULL,'exportable','true',0,559,NULL,0,NULL),(560,50,NULL,'default_date_value',NULL,0,560,NULL,0,NULL),(561,50,NULL,'exportable_pdf','true',0,561,NULL,0,NULL),(562,51,'-1','use_ref_list','false',0,562,NULL,0,NULL),(563,51,'','anonymizable','false',0,563,NULL,0,NULL),(564,51,'-1','use_ref_list','false',0,564,NULL,0,NULL),(565,51,'','anonymizable','false',0,565,NULL,0,NULL),(566,51,NULL,'used_in_correct_form_response','false',0,566,NULL,0,NULL),(567,51,NULL,'used_in_complete_form_response','false',0,567,NULL,0,NULL),(568,51,NULL,'exportable','false',0,568,NULL,0,NULL),(569,51,NULL,'display_in_bo','false',0,569,NULL,0,NULL),(570,52,'-1','anonymizable','false',0,570,NULL,0,NULL),(571,52,'-1','use_ref_list','false',0,571,NULL,0,NULL),(572,52,'','anonymizable','false',0,572,NULL,0,NULL),(573,52,'-1','use_ref_list','false',0,573,NULL,0,NULL),(574,52,'','anonymizable','false',0,574,NULL,0,NULL),(575,52,NULL,'used_in_correct_form_response','false',0,575,NULL,0,NULL),(576,52,NULL,'used_in_complete_form_response','false',0,576,NULL,0,NULL),(577,52,NULL,'exportable','true',0,577,NULL,0,NULL),(578,52,'Madame','answer_choice','Madame',0,578,NULL,0,''),(579,52,'Monsieur','answer_choice','Monsieur',0,579,NULL,0,''),(580,53,'-1','use_ref_list','false',0,580,NULL,0,NULL),(581,53,'','anonymizable','false',0,581,NULL,0,NULL),(582,53,'-1','use_ref_list','false',0,582,NULL,0,NULL),(583,53,'','anonymizable','false',0,583,NULL,0,NULL),(584,53,NULL,'used_in_correct_form_response','false',0,584,NULL,0,NULL),(585,53,NULL,'used_in_complete_form_response','false',0,585,NULL,0,NULL),(586,53,NULL,'exportable','true',0,586,NULL,0,NULL),(587,53,NULL,'text_config','',0,587,NULL,0,NULL),(588,53,NULL,'width','0',0,588,NULL,0,NULL),(589,53,NULL,'max_size','-1',0,589,NULL,0,NULL),(590,53,NULL,'confirm_field','false',0,590,NULL,0,NULL),(591,53,NULL,'exportable_pdf','true',0,591,NULL,0,NULL),(592,54,'-1','use_ref_list','false',0,592,NULL,0,NULL),(593,54,'','anonymizable','false',0,593,NULL,0,NULL),(594,54,'-1','use_ref_list','false',0,594,NULL,0,NULL),(595,54,'','anonymizable','false',0,595,NULL,0,NULL),(596,54,NULL,'used_in_correct_form_response','false',0,596,NULL,0,NULL),(597,54,NULL,'used_in_complete_form_response','false',0,597,NULL,0,NULL),(598,54,NULL,'exportable','true',0,598,NULL,0,NULL),(599,54,NULL,'text_config','',0,599,NULL,0,NULL),(600,54,NULL,'width','0',0,600,NULL,0,NULL),(601,54,NULL,'max_size','-1',0,601,NULL,0,NULL),(602,54,NULL,'confirm_field','false',0,602,NULL,0,NULL),(603,54,NULL,'exportable_pdf','true',0,603,NULL,0,NULL),(604,55,'-1','use_ref_list','false',0,604,NULL,0,NULL),(605,55,'','anonymizable','false',0,605,NULL,0,NULL),(606,55,'-1','use_ref_list','false',0,606,NULL,0,NULL),(607,55,'','anonymizable','false',0,607,NULL,0,NULL),(608,55,NULL,'used_in_correct_form_response','false',0,608,NULL,0,NULL),(609,55,NULL,'used_in_complete_form_response','false',0,609,NULL,0,NULL),(610,55,NULL,'exportable','true',0,610,NULL,0,NULL),(611,55,NULL,'default_date_value',NULL,0,611,NULL,0,NULL),(612,55,NULL,'exportable_pdf','true',0,612,NULL,0,NULL),(613,56,'-1','use_ref_list','false',0,613,NULL,0,NULL),(614,56,'','anonymizable','false',0,614,NULL,0,NULL),(615,56,'-1','use_ref_list','false',0,615,NULL,0,NULL),(616,56,'','anonymizable','false',0,616,NULL,0,NULL),(617,56,NULL,'used_in_correct_form_response','false',0,617,NULL,0,NULL),(618,56,NULL,'used_in_complete_form_response','false',0,618,NULL,0,NULL),(619,56,NULL,'exportable','true',0,619,NULL,0,NULL),(620,56,NULL,'text_config','',0,620,NULL,0,NULL),(621,56,NULL,'width','0',0,621,NULL,0,NULL),(622,56,NULL,'max_size','-1',0,622,NULL,0,NULL),(623,56,NULL,'confirm_field','false',0,623,NULL,0,NULL),(624,56,NULL,'exportable_pdf','true',0,624,NULL,0,NULL),(625,57,'-1','use_ref_list','false',0,625,NULL,0,NULL),(626,57,'','anonymizable','false',0,626,NULL,0,NULL),(627,57,'-1','use_ref_list','false',0,627,NULL,0,NULL),(628,57,'','anonymizable','false',0,628,NULL,0,NULL),(629,57,NULL,'used_in_correct_form_response','false',0,629,NULL,0,NULL),(630,57,NULL,'used_in_complete_form_response','false',0,630,NULL,0,NULL),(631,57,NULL,'exportable','true',0,631,NULL,0,NULL),(632,57,NULL,'text_config','',0,632,NULL,0,NULL),(633,57,NULL,'width','0',0,633,NULL,0,NULL),(634,57,NULL,'max_size','-1',0,634,NULL,0,NULL),(635,57,NULL,'confirm_field','false',0,635,NULL,0,NULL),(636,57,NULL,'exportable_pdf','true',0,636,NULL,0,NULL),(637,58,'-1','use_ref_list','false',0,637,NULL,0,NULL),(638,58,'','anonymizable','false',0,638,NULL,0,NULL),(639,58,'-1','use_ref_list','false',0,639,NULL,0,NULL),(640,58,'','anonymizable','false',0,640,NULL,0,NULL),(641,58,NULL,'used_in_correct_form_response','false',0,641,NULL,0,NULL),(642,58,NULL,'used_in_complete_form_response','false',0,642,NULL,0,NULL),(643,58,NULL,'exportable','true',0,643,NULL,0,NULL),(644,58,NULL,'text_config','',0,644,NULL,0,NULL),(645,58,NULL,'width','0',0,645,NULL,0,NULL),(646,58,NULL,'max_size','-1',0,646,NULL,0,NULL),(647,58,NULL,'confirm_field','false',0,647,NULL,0,NULL),(648,58,NULL,'exportable_pdf','true',0,648,NULL,0,NULL),(649,59,'-1','use_ref_list','false',0,649,NULL,0,NULL),(650,59,'','anonymizable','false',0,650,NULL,0,NULL),(651,59,'-1','use_ref_list','false',0,651,NULL,0,NULL),(652,59,'','anonymizable','false',0,652,NULL,0,NULL),(653,59,NULL,'used_in_correct_form_response','false',0,653,NULL,0,NULL),(654,59,NULL,'used_in_complete_form_response','false',0,654,NULL,0,NULL),(655,59,NULL,'exportable','true',0,655,NULL,0,NULL),(656,59,NULL,'text_config','',0,656,NULL,0,NULL),(657,59,NULL,'width','0',0,657,NULL,0,NULL),(658,59,NULL,'max_size','-1',0,658,NULL,0,NULL),(659,59,NULL,'confirm_field','false',0,659,NULL,0,NULL),(660,59,NULL,'exportable_pdf','true',0,660,NULL,0,NULL),(661,60,'-1','use_ref_list','false',0,661,NULL,0,NULL),(662,60,'','anonymizable','false',0,662,NULL,0,NULL),(663,60,'-1','use_ref_list','false',0,663,NULL,0,NULL),(664,60,'','anonymizable','false',0,664,NULL,0,NULL),(665,60,NULL,'used_in_correct_form_response','false',0,665,NULL,0,NULL),(666,60,NULL,'used_in_complete_form_response','false',0,666,NULL,0,NULL),(667,60,NULL,'exportable','true',0,667,NULL,0,NULL),(668,60,NULL,'text_config','',0,668,NULL,0,NULL),(669,60,NULL,'width','0',0,669,NULL,0,NULL),(670,60,NULL,'max_size','-1',0,670,NULL,0,NULL),(671,60,NULL,'confirm_field','false',0,671,NULL,0,NULL),(672,60,NULL,'exportable_pdf','true',0,672,NULL,0,NULL),(673,61,'-1','use_ref_list','false',0,673,NULL,0,NULL),(674,61,'','anonymizable','false',0,674,NULL,0,NULL),(675,61,'-1','use_ref_list','false',0,675,NULL,0,NULL),(676,61,'','anonymizable','false',0,676,NULL,0,NULL),(677,61,NULL,'used_in_correct_form_response','false',0,677,NULL,0,NULL),(678,61,NULL,'used_in_complete_form_response','false',0,678,NULL,0,NULL),(679,61,NULL,'exportable','true',0,679,NULL,0,NULL),(680,61,NULL,'text_config','',0,680,NULL,0,NULL),(681,61,NULL,'width','0',0,681,NULL,0,NULL),(682,61,NULL,'max_size','-1',0,682,NULL,0,NULL),(683,61,NULL,'confirm_field','false',0,683,NULL,0,NULL),(684,61,NULL,'exportable_pdf','true',0,684,NULL,0,NULL),(685,62,'-1','use_ref_list','false',0,685,NULL,0,NULL),(686,62,'','anonymizable','false',0,686,NULL,0,NULL),(687,62,'-1','use_ref_list','false',0,687,NULL,0,NULL),(688,62,'','anonymizable','false',0,688,NULL,0,NULL),(689,62,NULL,'used_in_correct_form_response','false',0,689,NULL,0,NULL),(690,62,NULL,'used_in_complete_form_response','false',0,690,NULL,0,NULL),(691,62,NULL,'exportable','true',0,691,NULL,0,NULL),(692,62,NULL,'attribute_name','user.home-info.online.email',0,692,NULL,0,NULL),(693,62,NULL,'exportable_pdf','true',0,693,NULL,0,NULL),(694,63,'-1','use_ref_list','false',0,694,NULL,0,NULL),(695,63,'','anonymizable','false',0,695,NULL,0,NULL),(696,63,'-1','use_ref_list','false',0,696,NULL,0,NULL),(697,63,'','anonymizable','false',0,697,NULL,0,NULL),(698,63,NULL,'used_in_correct_form_response','false',0,698,NULL,0,NULL),(699,63,NULL,'used_in_complete_form_response','false',0,699,NULL,0,NULL),(700,63,NULL,'exportable','true',0,700,NULL,0,NULL),(701,63,NULL,'text_config','',0,701,NULL,0,NULL),(702,63,NULL,'width','0',0,702,NULL,0,NULL),(703,63,NULL,'max_size','-1',0,703,NULL,0,NULL),(704,63,NULL,'confirm_field','false',0,704,NULL,0,NULL),(705,63,NULL,'exportable_pdf','true',0,705,NULL,0,NULL),(706,64,'-1','use_ref_list','false',0,706,NULL,0,NULL),(707,64,'','anonymizable','false',0,707,NULL,0,NULL),(708,64,'-1','use_ref_list','false',0,708,NULL,0,NULL),(709,64,'','anonymizable','false',0,709,NULL,0,NULL),(710,64,NULL,'used_in_correct_form_response','false',0,710,NULL,0,NULL),(711,64,NULL,'used_in_complete_form_response','false',0,711,NULL,0,NULL),(712,64,NULL,'exportable','true',0,712,NULL,0,NULL),(713,64,NULL,'text_config','',0,713,NULL,0,NULL),(714,64,NULL,'max_size','500',0,714,NULL,0,NULL),(715,64,NULL,'width','0',0,715,NULL,0,NULL),(716,64,NULL,'height','5',0,716,NULL,0,NULL),(717,64,NULL,'richtext','false',0,717,NULL,0,NULL),(718,64,NULL,'exportable_pdf','true',0,718,NULL,0,NULL),(719,65,'-1','use_ref_list','false',0,719,NULL,0,NULL),(720,65,'','anonymizable','false',0,720,NULL,0,NULL),(721,65,'-1','use_ref_list','false',0,721,NULL,0,NULL),(722,65,'','anonymizable','false',0,722,NULL,0,NULL),(723,65,NULL,'used_in_correct_form_response','false',0,723,NULL,0,NULL),(724,65,NULL,'used_in_complete_form_response','false',0,724,NULL,0,NULL),(725,65,NULL,'exportable','false',0,725,NULL,0,NULL),(726,65,NULL,'text_config','-1- \r\n-2- \r\n-3- \r\n-4- \r\n-5- ',0,726,NULL,0,NULL),(727,65,NULL,'max_size','500',0,727,NULL,0,NULL),(728,65,NULL,'width','0',0,728,NULL,0,NULL),(729,65,NULL,'height','5',0,729,NULL,0,NULL),(730,65,NULL,'richtext','false',0,730,NULL,0,NULL),(731,65,NULL,'exportable_pdf','true',0,731,NULL,0,NULL),(732,66,'-1','anonymizable','false',0,732,NULL,0,NULL),(733,66,'-1','use_ref_list','false',0,733,NULL,0,NULL),(734,66,'','anonymizable','false',0,734,NULL,0,NULL),(735,66,'-1','use_ref_list','false',0,735,NULL,0,NULL),(736,66,'','anonymizable','false',0,736,NULL,0,NULL),(737,66,NULL,'used_in_correct_form_response','false',0,737,NULL,0,NULL),(738,66,NULL,'used_in_complete_form_response','false',0,738,NULL,0,NULL),(739,66,NULL,'exportable','true',0,739,NULL,0,NULL),(740,66,'Sciences humaines et sociales','answer_choice','Sciences_humaines_sociales',0,740,NULL,0,''),(741,66,'Sciences exactes ','answer_choice','Sciences_exactes',0,741,NULL,0,''),(742,66,'Biologie et Médecine','answer_choice','Biologie_medecine',0,742,NULL,0,''),(743,66,NULL,'exportable_pdf','true',0,743,NULL,0,NULL);
/*!40000 ALTER TABLE `template_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_group`
--

DROP TABLE IF EXISTS `template_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_group` (
  `id_group` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(512) DEFAULT '',
  `id_template` int(11) DEFAULT 0,
  `iteration_min` int(11) DEFAULT 1,
  `iteration_max` int(11) DEFAULT 1,
  `iteration_add_label` varchar(255) DEFAULT '',
  `iteration_remove_label` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_group`
--

LOCK TABLES `template_group` WRITE;
/*!40000 ALTER TABLE `template_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_question`
--

DROP TABLE IF EXISTS `template_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_question` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `id_entry` int(11) DEFAULT 0,
  `id_template` int(11) DEFAULT 0,
  `is_visible_multiview_global` smallint(6) NOT NULL DEFAULT 0,
  `is_visible_multiview_form_selected` smallint(6) NOT NULL DEFAULT 0,
  `multiview_column_order` int(11) NOT NULL DEFAULT 0,
  `column_title` varchar(255) NOT NULL DEFAULT '',
  `is_filterable_multiview_global` smallint(6) NOT NULL DEFAULT 0,
  `is_filterable_multiview_form_selected` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_question`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_question`
--

LOCK TABLES `template_question` WRITE;
/*!40000 ALTER TABLE `template_question` DISABLE KEYS */;
INSERT INTO `template_question` VALUES (1,'Secteur d\'activité','question_111','',1,1,0,1,0,'Secteur d\'activité ',0,0),(2,'Date de création de l\'activité ','question_112','',2,1,0,0,0,'Date de création de l\'activité ',0,0),(3,'Effectif de l\'entreprise','question_113','',3,1,0,1,0,'Effectif de l\'entreprise ',0,0),(4,'Nombre de personnes par statut','question_114','',4,1,0,0,0,'Nombre de personnes par statut ',0,0),(5,'Nombre de personnes salariées','question_115','',5,1,0,0,0,'Nombre de personnes salariées',0,0),(6,'Nombre de personne en free-lance','question_116','',6,1,0,0,0,'Nombre de personne en free-lance',0,0),(7,'Nombre d\'apprentis','question_117','',7,1,0,0,0,'Nombre d\'apprentis',0,0),(8,'Nombre de stagiaires','question_118','',8,1,0,0,0,'Nombre de stagiaires',0,0),(9,'Chiffre d\'affaires','question_119','',9,1,0,1,0,'Chiffre d\'affaires',0,0),(10,'Numéro de SIRET','question_100','',10,2,0,0,0,'Numéro de SIRET ',0,0),(11,'Nom','question_102','',11,2,1,1,0,'Nom',0,0),(12,'Prénom','question_103','',12,2,1,1,0,'Prénom',0,0),(13,'Nom de l\'entreprise ou de la marque','question_104','',13,2,0,1,0,'Nom de l\'entreprise ou de la marque ',0,0),(14,'Adresse de résidence','question_105','',14,2,0,1,0,'Adresse de résidence ',0,0),(15,'Code postal','question_106','',15,2,0,1,0,'Code postal',0,0),(16,'Ville','question_107','',16,2,0,1,0,'Ville',0,0),(17,'Téléphone fixe','question_108','',17,2,0,1,0,'	Téléphone fixe ',0,0),(18,'Téléphone portable','question_109','',18,2,0,1,0,'Téléphone portable ',0,0),(19,'Courriel','question_110','',19,2,0,0,0,'Courriel',0,0),(20,'Nom','question_44','',20,3,0,0,0,'Nom',0,0),(21,'Prénom','question_45','',21,3,0,0,0,'Prénom',0,0),(22,'Fonction','question_46','',22,3,0,0,0,'Fonction',0,0),(23,'Adresse/rue','question_47','',23,3,0,0,0,'Adresse/rue ',0,0),(24,'Téléphone','question_48','',24,3,0,0,0,'Téléphone ',0,0),(25,'Email','question_49','',25,3,0,0,0,'Email ',0,0),(26,'RIB de l\'organisme','question_50','',26,3,0,0,0,'RIB de l\'organisme',0,0),(27,'Le demandeur est','question_69','',27,4,0,0,0,'Le demandeur est',0,0),(28,'Nom de la structure','question_70','',28,4,0,0,0,'Nom de la structure',0,0),(29,'numéro SIRET ou RNA','question_71','',29,4,0,0,0,'numéro SIRET ou RNA',0,0),(30,'Nom de la structure','question_73','',30,4,0,0,0,'Nom de la structure',0,0),(31,'numéro SIRET ou RNA','question_75','',31,4,0,0,0,'numéro SIRET ou RNA',0,0),(32,'Civilité','question_76','',32,4,0,0,0,'Civilité',0,0),(33,'Nom','question_77','',33,4,0,0,0,'Nom',0,0),(34,'Prénom','question_78','',34,4,0,0,0,'Prénom',0,0),(35,'Téléphone','question_79','',35,4,0,0,0,'Téléphone',0,0),(36,'Adresse de la structure ou perso','question_81','',36,4,0,0,0,' Adresse de la structure ou perso',0,0),(37,'Code postal','question_82','',37,4,0,0,0,'Code postal',0,0),(38,'Ville','question_83','',38,4,0,0,0,'Ville',0,0),(39,'Courriel','question_131','',39,4,0,0,0,'Courriel',0,0),(40,'commentaire','question_206','<p>Attention : Les caract&egrave;res &lt; &gt; # &amp; \"\" ne sont pas autoris&eacute;s dans la saisie des contenus.</p>',40,4,0,0,0,'commentaire',0,0),(41,'Nom','question_254','',41,5,0,1,0,'Nom',0,0),(42,'Prénom','question_255','',42,5,0,1,0,'Prénom',0,0),(43,'A','question_257','',43,5,0,0,0,'A',0,0),(44,'Nationalité','question_258','',44,5,0,0,0,'Nationalité',0,0),(45,'Adresse','question_259','',45,5,0,0,0,'Adresse',0,0),(46,'Code postal','question_260','',46,5,0,0,0,'Code postal',0,0),(47,'Ville','question_261','',47,5,0,0,0,'Ville',0,0),(48,'Courriel','question_262','',48,5,0,1,0,'Courriel',0,0),(49,'Téléphone fixe ou portable','question_263','',49,5,0,1,0,'Téléphone fixe ou portable',0,0),(50,'Né.e','question_270','',50,5,0,0,0,'Né.e',0,0),(51,'commentaire','question_253','<p>L&rsquo;espace CoWaC accueille &eacute;tudiants, entrepreneurs et associations dans les secteurs M&eacute;tiers d&rsquo;art, Mode et Design ou d&eacute;veloppant un projet de soutien &agrave; ces secteurs. Il offre un v&eacute;ritable poste de travail hors de chez soi et des interactions avec d&rsquo;autres professionnels pour enrichir ses comp&eacute;tences, d&eacute;velopper son r&eacute;seau ou partager des ressources. 3 formules du ponctuel au temps complet pour b&eacute;n&eacute;ficier d&rsquo;un des 8 postes de travail en co-working ainsi qu&rsquo;un acc&egrave;s &agrave; des salles de r&eacute;union. Profiter de l&rsquo;espace CoWaC c&rsquo;est &eacute;galement acc&eacute;der &agrave; l&rsquo;offre conseil et accompagnement des Ateliers de Paris.<br />&bull;&nbsp;&nbsp;&nbsp; &frac14; temps (5 jours/mois ou 10 demi-journ&eacute;es/mois) &agrave; 60&euro; le mois.<br /><br />&bull;&nbsp;&nbsp;&nbsp; &frac12; temps (10 jours/mois ou 20 demi-journ&eacute;es/mois) &agrave; 100&euro; le mois<br /><br />&bull;&nbsp;&nbsp;&nbsp; Temps complet (acc&egrave;s illimit&eacute;) &agrave; 160&euro; le mois<br /><br />&bull;&nbsp;&nbsp;&nbsp; Tarif &eacute;tudiant : 8&euro; la journ&eacute;e, 4&euro; la demi-journ&eacute;e<br /><br /><br />Pi&egrave;ce &agrave; joindre au dossier<br />&bull;&nbsp;&nbsp;&nbsp; dossier de candidature <a href=\"https://cdn.paris.fr/paris/2021/02/02/bfcc124133723c6c3cefe25d37d1d4c9.pdf\" target=\"_blank\">(t&eacute;l&eacute;charger)</a><br /><br />Informations :<br />Pour toutes questions compl&eacute;mentaires : Ateliers de Paris, kadija.ouadi@paris.fr , 30 rue du Faubourg Saint Antoine, 75012 Paris. T&eacute;l. : 01 71 18 75 74<br />Vous serez recontact&eacute;s suite &agrave; votre candidature. Si votre dossier est valid&eacute;, votre accueil pourra &ecirc;tre mis en liste d&rsquo;attente si toutes les places sont prises.</p>',51,6,0,0,0,'commentaire',0,0),(52,'Civilité','question_4','',52,7,0,0,0,'Civilité',0,0),(53,'Nom','question_5','',53,7,1,1,0,'Nom',0,0),(54,'Prénom','question_6','',54,7,1,1,0,'Prénom',0,0),(55,'Date de naissance (JJ/MM/AAAA)','question_7','',55,7,0,0,0,'Date de naissance (JJ/MM/AAAA)',0,0),(56,'Nationalité','question_9','',56,7,0,0,0,'Nationalité ',0,0),(57,'Responsabilités','question_10','',57,7,0,0,0,'Responsabilités ',0,0),(58,'Laboratoire /Organisme','question_11','',58,7,0,0,0,'Laboratoire /Organisme ',0,0),(59,'Adresse/rue','question_12','',59,7,0,0,0,'Adresse/rue',0,0),(60,'Code postal','question_13','',60,7,0,0,0,'Code postal',0,0),(61,'Ville','question_14','',61,7,0,0,0,'Ville ',0,0),(62,'Email','question_15','',62,7,0,1,0,'Email',0,0),(63,'Téléphone','question_16','',63,7,0,0,0,'Téléphone',0,0),(64,'Titre du projet (en français et/ou en anglais, max 3 lignes) et son abrégé (3 ou 4 mots)','question_17','',64,8,0,0,0,'Titre du projet (en français et/ou en anglais, max 3 lignes) et son abrégé (3 ou 4 mots) ',0,0),(65,'Cinq mots Clés','question_18','',65,8,0,0,0,'Cinq mots Clés',0,0),(66,'Champ disciplinaire principal','question_19','',66,8,0,0,0,'Champ disciplinaire principal',0,0);
/*!40000 ALTER TABLE `template_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_referenceitem_field`
--

DROP TABLE IF EXISTS `template_referenceitem_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_referenceitem_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_item` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_referenceitem_field`
--

LOCK TABLES `template_referenceitem_field` WRITE;
/*!40000 ALTER TABLE `template_referenceitem_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_referenceitem_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_step`
--

DROP TABLE IF EXISTS `template_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_step` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_step`
--

LOCK TABLES `template_step` WRITE;
/*!40000 ALTER TABLE `template_step` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termofservice_entry`
--

DROP TABLE IF EXISTS `termofservice_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termofservice_entry` (
  `id_entry` int(11) NOT NULL AUTO_INCREMENT,
  `text` mediumtext NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termofservice_entry`
--

LOCK TABLES `termofservice_entry` WRITE;
/*!40000 ALTER TABLE `termofservice_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `termofservice_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termofservice_user_accepted`
--

DROP TABLE IF EXISTS `termofservice_user_accepted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termofservice_user_accepted` (
  `id_user_accepted` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `fk_id_entry` int(11) NOT NULL DEFAULT 0,
  `date_accepted` date NOT NULL,
  `version` int(11) DEFAULT 0,
  PRIMARY KEY (`id_user_accepted`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termofservice_user_accepted`
--

LOCK TABLES `termofservice_user_accepted` WRITE;
/*!40000 ALTER TABLE `termofservice_user_accepted` DISABLE KEYS */;
/*!40000 ALTER TABLE `termofservice_user_accepted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittree_action`
--

DROP TABLE IF EXISTS `unittree_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unittree_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) NOT NULL DEFAULT '',
  `description_key` varchar(100) NOT NULL DEFAULT '',
  `action_url` varchar(255) NOT NULL DEFAULT '',
  `icon_url` varchar(255) NOT NULL DEFAULT '',
  `action_permission` varchar(50) NOT NULL DEFAULT '',
  `action_type` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_action`
--

LOCK TABLES `unittree_action` WRITE;
/*!40000 ALTER TABLE `unittree_action` DISABLE KEYS */;
INSERT INTO `unittree_action` VALUES (1,'unittree.unit.action.createUnit.name','unittree.unit.action.createUnit.description','jsp/admin/plugins/unittree/CreateUnit.jsp','plus','CREATE','unittree.unitAction'),(2,'unittree.unit.action.modifyUnit.name','unittree.unit.action.modifyUnit.description','jsp/admin/plugins/unittree/ModifyUnit.jsp','edit','MODIFY','unittree.unitAction'),(3,'unittree.unit.action.deleteUnit.name','unittree.unit.action.deleteUnit.description','jsp/admin/plugins/unittree/RemoveUnit.jsp','trash','DELETE','unittree.unitAction'),(5,'unittree.user.action.moveUser.name','unittree.user.action.moveUser.description','jsp/admin/plugins/unittree/MoveUser.jsp','sort','MOVE_USER','unittree.unitUserAction'),(6,'unittree.user.action.removeUser.name','unittree.user.action.removeUser.description','jsp/admin/plugins/unittree/RemoveUser.jsp','user-times','REMOVE_USER','unittree.unitUserAction'),(10,'unittree.unit.action.moveSubTree.name','unittree.unit.action.moveSubTree.description','jsp/admin/plugins/unittree/MoveSubTree.jsp','sort','MOVE_SUB_TREE','unittree.unitAction');
/*!40000 ALTER TABLE `unittree_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittree_unit`
--

DROP TABLE IF EXISTS `unittree_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unittree_unit` (
  `id_unit` int(11) NOT NULL DEFAULT 0,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_unit`),
  KEY `index_unittree_unit_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit`
--

LOCK TABLES `unittree_unit` WRITE;
/*!40000 ALTER TABLE `unittree_unit` DISABLE KEYS */;
INSERT INTO `unittree_unit` VALUES (0,-1,'ROOT','Direction Générale','Racine des entités'),(1,0,'espace_public','Espace Public','Espace Public'),(2,0,'etat_civil','Etat Civil','Etat Civil'),(3,0,'logement_habitat','Logement et Habitat','Logement et Habitat'),(4,0,'affaires_scolaires','Affaires Scolaires','Affaires Scolaires'),(5,4,'ecoles','Ecoles','Ecoles'),(6,4,'petite_enfance','Petite Enfance','Petite Enfance'),(7,4,'centres_loisirs','Centres de Loisirs','Centres de Loisirs'),(8,1,'voirie','Voirie','Voirie'),(9,1,'espaces_verts','Espaces Verts','Espaces Verts');
/*!40000 ALTER TABLE `unittree_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittree_unit_assignment`
--

DROP TABLE IF EXISTS `unittree_unit_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unittree_unit_assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `id_assignor_unit` int(11) NOT NULL DEFAULT 0,
  `id_assigned_unit` int(11) NOT NULL DEFAULT 0,
  `assignment_type` varchar(50) NOT NULL,
  `assignment_date` timestamp NULL DEFAULT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_unittree_unit_assignment_resource` (`id_resource`,`resource_type`),
  KEY `index_unittree_unit_assignment_id_assigned_unit` (`id_assigned_unit`,`assignment_date`),
  KEY `index_unittree_unit_assignment_id_assignor_unit` (`id_assignor_unit`,`assignment_date`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit_assignment`
--

LOCK TABLES `unittree_unit_assignment` WRITE;
/*!40000 ALTER TABLE `unittree_unit_assignment` DISABLE KEYS */;
INSERT INTO `unittree_unit_assignment` VALUES (1,1,'FORMS_FORM_RESPONSE',-1,8,'create',NULL,0),(2,1,'FORMS_FORM_RESPONSE',8,1,'assign_up',NULL,0),(3,1,'FORMS_FORM_RESPONSE',1,8,'transfer',NULL,0),(4,1,'FORMS_FORM_RESPONSE',8,6,'transfer',NULL,0),(5,1,'FORMS_FORM_RESPONSE',6,8,'transfer',NULL,1),(7,4,'FORMS_FORM_RESPONSE',-1,8,'create',NULL,1),(8,5,'FORMS_FORM_RESPONSE',-1,2,'create',NULL,1);
/*!40000 ALTER TABLE `unittree_unit_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittree_unit_user`
--

DROP TABLE IF EXISTS `unittree_unit_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unittree_unit_user` (
  `id_unit` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_unit`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit_user`
--

LOCK TABLES `unittree_unit_user` WRITE;
/*!40000 ALTER TABLE `unittree_unit_user` DISABLE KEYS */;
INSERT INTO `unittree_unit_user` VALUES (0,5),(1,6),(6,8),(8,7);
/*!40000 ALTER TABLE `unittree_unit_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userassignment_resource_user`
--

DROP TABLE IF EXISTS `userassignment_resource_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userassignment_resource_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `assignment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `userassignment_resource_user_id_resource_fk` (`id_resource`),
  KEY `userassignment_resource_user_resource_type_fk` (`resource_type`),
  KEY `userassignment_resource_user_id_admin_fk` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userassignment_resource_user`
--

LOCK TABLES `userassignment_resource_user` WRITE;
/*!40000 ALTER TABLE `userassignment_resource_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `userassignment_resource_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifybackurl_authorized_url`
--

DROP TABLE IF EXISTS `verifybackurl_authorized_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifybackurl_authorized_url` (
  `id_authorized_url` int(11) NOT NULL,
  `url` mediumtext NOT NULL,
  `name` mediumtext NOT NULL,
  `application_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_authorized_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifybackurl_authorized_url`
--

LOCK TABLES `verifybackurl_authorized_url` WRITE;
/*!40000 ALTER TABLE `verifybackurl_authorized_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `verifybackurl_authorized_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action`
--

DROP TABLE IF EXISTS `workflow_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `id_state_after` int(11) DEFAULT NULL,
  `id_alternative_state_after` int(11) DEFAULT NULL,
  `id_icon` int(11) DEFAULT NULL,
  `is_automatic` smallint(6) DEFAULT 0,
  `is_mass_action` smallint(6) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `is_automatic_reflexive_action` smallint(6) DEFAULT 0,
  `uid_action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`),
  KEY `action_id_workflow_fk` (`id_workflow`),
  KEY `action_id_state_after_fk` (`id_state_after`),
  KEY `action_id_icon_fk` (`id_icon`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action`
--

LOCK TABLES `workflow_action` WRITE;
/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
INSERT INTO `workflow_action` VALUES (1,'Action d\'arriver sur l\'&#233;tat Demande de contact déposée','',1,1,-1,4,0,0,0,1,'9fc6a64e-1d0d-11ef-8590-0242ac180003'),(2,'Accuser réception (automatique)','Envoi d\'un accusé de réception pour notifier l\'usager suite à l\'exécution de l\'action, la demande passe en instruction',1,2,-1,4,1,0,1,0,'9fc6a914-1d0d-11ef-8590-0242ac180003'),(3,'Transférer la sollicitation','L\'agent considère qu\'il n\'est pas le bon contact pour instruire la sollicitation et décide de la transférer au bon service',1,2,-1,6,0,0,2,0,'9fc6a9f6-1d0d-11ef-8590-0242ac180003'),(4,'Escalader la sollicitation','L\'agent transfère la sollicitation à sa hiérarchie',1,2,-1,7,0,0,3,0,'9fc6aabc-1d0d-11ef-8590-0242ac180003'),(5,'Clôturer la sollicitation','Une fois traitée, la sollicitation prend fin',1,3,-1,11,0,0,4,0,'9fc6ab92-1d0d-11ef-8590-0242ac180003'),(6,'Demander des précisions','La sollicitation initiale de l\'usager ne suffit pas à instruire la demande. L\'agent lui demande donc des compléments.',1,4,-1,9,0,0,5,0,'9fc6ac41-1d0d-11ef-8590-0242ac180003'),(7,'Action d\'arriver sur l\'&#233;tat Demande en cours d\'instruction','',1,2,-1,4,0,0,0,1,'9fc6acc7-1d0d-11ef-8590-0242ac180003'),(8,'Action d\'arriver sur l\'&#233;tat En attente d\'informations','',1,4,-1,4,0,0,0,1,'9fc6ad4e-1d0d-11ef-8590-0242ac180003'),(9,'Action d\'arriver sur l\'&#233;tat Demande clôturée','',1,3,-1,4,0,0,0,1,'9fc6adc6-1d0d-11ef-8590-0242ac180003'),(10,'Réaffecter à l\'entité émettrice','La sollicitation a été traitée par un service tiers, elle retourne au principal service instructeur',1,2,-1,8,0,0,6,0,'9fc6ae48-1d0d-11ef-8590-0242ac180003'),(11,'Accuser réception (automatique)','Envoi d\'un accusé de réception pour notifier l\'usager suite à l\'exécution de l\'action, la demande passe en instruction',2,7,-1,4,1,0,1,0,'9fc6aec4-1d0d-11ef-8590-0242ac180003'),(12,'Demander d\'apporter une correction','La saisie de l\'usager ne permet pas de traiter la demande car elle semble erronée',2,10,-1,9,0,0,2,0,'9fc6af38-1d0d-11ef-8590-0242ac180003'),(13,'Demander d\'apporter un complément','La saisie de l\'usager ne permet pas de traiter la demande car elle semble incomplète',2,11,-1,9,0,0,3,0,'9fc6afaf-1d0d-11ef-8590-0242ac180003'),(14,'Clôturer le dossier','La demande est traitée, l\'acte est envoyé, la demande est cloturée.',2,9,-1,11,0,0,4,0,'9fc6b027-1d0d-11ef-8590-0242ac180003'),(15,'Refus de la demande','Les éléments fournis ne permettent pas de traiter la demande. Un message est envoyé à l\'usager et la demande clôturée',2,8,-1,5,0,0,5,0,'9fc6b0a3-1d0d-11ef-8590-0242ac180003'),(16,'Action d\'arriver sur l\'&#233;tat Dossier déposé','',2,6,-1,4,0,0,0,1,'9fc6b12b-1d0d-11ef-8590-0242ac180003'),(17,'Action d\'arriver sur l\'&#233;tat Dossier en instruction','',2,7,-1,4,0,0,0,1,'9fc6b1a8-1d0d-11ef-8590-0242ac180003'),(18,'Action d\'arriver sur l\'&#233;tat Demande refusée','',2,8,-1,4,0,0,0,1,'9fc6b21b-1d0d-11ef-8590-0242ac180003'),(19,'Action d\'arriver sur l\'&#233;tat Dossier traité','',2,9,-1,4,0,0,0,1,'9fc6b285-1d0d-11ef-8590-0242ac180003'),(20,'Action d\'arriver sur l\'&#233;tat Dossier en attente de correction','',2,10,-1,4,0,0,0,1,'9fc6b2ee-1d0d-11ef-8590-0242ac180003'),(21,'Action d\'arriver sur l\'&#233;tat Dossier en attente de complément','',2,11,-1,4,0,0,0,1,'9fc6b35c-1d0d-11ef-8590-0242ac180003');
/*!40000 ALTER TABLE `workflow_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action_action`
--

DROP TABLE IF EXISTS `workflow_action_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `id_linked_action` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`,`id_linked_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action_action`
--

LOCK TABLES `workflow_action_action` WRITE;
/*!40000 ALTER TABLE `workflow_action_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_action_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action_state_before`
--

DROP TABLE IF EXISTS `workflow_action_state_before`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action_state_before` (
  `id_action` int(11) NOT NULL,
  `id_state_before` int(11) NOT NULL,
  PRIMARY KEY (`id_action`,`id_state_before`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action_state_before`
--

LOCK TABLES `workflow_action_state_before` WRITE;
/*!40000 ALTER TABLE `workflow_action_state_before` DISABLE KEYS */;
INSERT INTO `workflow_action_state_before` VALUES (1,1),(2,1),(3,2),(4,2),(5,2),(6,2),(7,2),(8,4),(9,3),(10,2),(11,6),(12,7),(13,7),(14,7),(15,7),(16,6),(17,7),(18,8),(19,9),(20,10),(21,11);
/*!40000 ALTER TABLE `workflow_action_state_before` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_assignment_history`
--

DROP TABLE IF EXISTS `workflow_assignment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_assignment_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  `workgroup_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`workgroup_key`),
  KEY `assignment_id_history_fk` (`id_history`),
  KEY `assignment_id_task_fk` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_assignment_history`
--

LOCK TABLES `workflow_assignment_history` WRITE;
/*!40000 ALTER TABLE `workflow_assignment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_assignment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_forms_auto_assignment`
--

DROP TABLE IF EXISTS `workflow_forms_auto_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_forms_auto_assignment` (
  `id_task` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `workgroup_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id_task`,`id_question`,`value`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_forms_auto_assignment`
--

LOCK TABLES `workflow_forms_auto_assignment` WRITE;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_forms_auto_assignment_cf`
--

DROP TABLE IF EXISTS `workflow_forms_auto_assignment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_forms_auto_assignment_cf` (
  `id_task` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_notify` smallint(6) DEFAULT 0,
  `sender_name` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `is_view_form_response` smallint(6) NOT NULL DEFAULT 0,
  `label_link_view_form_response` varchar(255) DEFAULT NULL,
  `recipients_cc` varchar(255) NOT NULL DEFAULT '',
  `recipients_bcc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_forms_auto_assignment_cf`
--

LOCK TABLES `workflow_forms_auto_assignment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_forms_auto_assignment_ef`
--

DROP TABLE IF EXISTS `workflow_forms_auto_assignment_ef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_forms_auto_assignment_ef` (
  `id_task` int(11) NOT NULL,
  `position_form_question_file` int(11) NOT NULL,
  PRIMARY KEY (`id_task`,`position_form_question_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_forms_auto_assignment_ef`
--

LOCK TABLES `workflow_forms_auto_assignment_ef` WRITE;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment_ef` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment_ef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_icon`
--

DROP TABLE IF EXISTS `workflow_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_icon` (
  `id_icon` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mime_type` varchar(50) DEFAULT NULL,
  `file_value` mediumblob DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_icon`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_icon`
--

LOCK TABLES `workflow_icon` WRITE;
/*!40000 ALTER TABLE `workflow_icon` DISABLE KEYS */;
INSERT INTO `workflow_icon` VALUES (4,'Valider','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0�zTXtRaw profile type exif\0\0xڭ�iz-�����^B1�r��w����P��C���H�K��=��������ԘL�����şPCu�\'��܏�\n���g��������_8^�E��z\\�x=�zC�����M~4�ʣ��/^\Z�������hȻ�u������Z�m8��R�=���WO?�L0f�=�[����.����ο����<����Ǳ3�O����Ǳ���\n�6�J��S����q�N�~�}y���bE���w��{���=��J�1����yƅ�P���W�;�<���Wa���M���\Z�V����N���<;�bp�n�� �z���W\n���v�W?�/db�5���/�ܷ��\r[��\\�,�Y����|���|�6�����\'��Ċ~9M=����_�\"!v?b\ZO|ϗ����%�����\0���&z���?y�\\�`��4l����t�z2p%&�M���ek�c!?��S�����lr��\'9��޼\'�s���~h!�ɤ��F�B�̟\ns�E��1��c�5��SH1���0�e�C�9�K��_B�%�\\J��UW=k���Rkm��6�n��qEk�u�C�=��K��\r��#�4�(��6����if3ˬ�-��J+���ʫ���f�m�Î;��ˮ��f�շY�O��:k��5e,����r�/MX�IT�Ș��ge�	픳���2��]�Qё5��i�12�uq�����ܗy31�(o����ȜQ��{���6�a�*TL/�6.X����I���~ٱ��3t:P\'�0Fmq�\r�y�)�A�-��BGB�\"�k�`��8�uN�����e�竸�V�s��fh �5��E5��gy/{�B1��4/-�k�湋۠�l�?m��)��m��)��m�|7+j��4͟5h�v�<7h�u\"���^�r��ZE¦�|��J��i�޻l��S%Ђ�{�Q�l\Z�@Y�vFYpq;����y�xD\'R��ra��l~�n{�~�+�ig�L�Dť{�q��\\���t`��������}�-&�b�����R� �H��KH�ĽAG\"2�	c�Q�\r%D���7.T`�o)\0,K��e@��\\!T�s����lw����\0kI����� �~G��v�zL�~Ő��n>E�Z}����������0L�{�������;����Eۿ?�����]�٩,ݲ����,��3	������`����`^��!��O)��LiC������\Zh�5�Kr��j�����\0�Q�UTÕ5���r��,��b��˸T�����?��L�\0��^\0���*=�4�b��|Hx+�4g����9�{���9�~�ל�,x?m�|��6g�����3�I�w�3�{,w�;�,ʏ�YQ���5��T���k�Y�`�<d/\'@q��P�ߐ��Qk(��c��K°�t!&}?��n���j�kH��g������0��\Z6�,�l�d��ϲӸ��=��rKI=�Nf��������N�ڧ/ۺ�bZ����J�<�8�A�}.�\Z�ۀ�Ȩ�ja����$��X��7)�+�4G���\n�1���\r��6�z#�\"D1w������|���B�R�~_\'P\n��΀�#�$hZ��	��Q91�#��4�t����eFP�+4�����/�>3��/ْWB9t���b�s�B�[_Ҹ]�������`QXwO�;Wv(��T�a՞ן�-�}M�>��!��o1�T\"w�a�vD�․��zƙW��L��s?��y\r�^�t�iw�xF.�N��s̔`:�Lcw��f,yڑ;�3w�u���\Z�+�Ɨ�@Ѓ��������\Z\"�ҍG��*:~3r����y�I�X΅Qn�R��R�fϷέ�ԯ�;z`^� p{�h�K�npͣ/�J�s��;\"9~:��\raO<���sG�a~��a~��a~��a~��a~��a~��a~��a��8�x?`[]�fv��s���K��u�,L�w���:����Ø!-9<�[�ͤ���ikr��/�ص�����s���-)}�#��۳�x���6�X�$���-������7��+������/Lw��P݃��c)�$��������ׁ}sp�!�墮���zfU� hm�c��G���C�N��p٘�Y�W��J�\Z�yG�o����~QC�ou��������B�\"����ǿ�}��N��g��(Q\Z�3wޕ�;ݎ}�6 ��4�	���N� ����S����DZ)�O���=#�1VU��2������FP�L�4�4�jZsv��1rsm�2���+̜��+��SF���e��#k%`6�;���)\0[	KiMG��m�YY?\r-׈n��\ZTΥe�2b���BP���#rl��]�� �����.���+;og\0����~߽������Y�{��K���7�6����v�P�w���g�8(�B��QLͯ���^��_�+�����94o���94�$���T�����%,���l)ʞy\n��;,�����Ib�7K�<I����Ǔ�<݃+`��z�i9ऺTW�0y�Ԅv�T$R�ǹtW�2Z?�2��U6�:x^\Z|�2�5V�϶R)Le�ŵ1M�#	��:}P}�;�P�Jad��u@^җk3]������7b�<���f?11�?k�a����}k�+�sD�r������|*����6�7���~]s���QK��N	U셿��nW�,�ZqS���i���\"�El&ƃ�	QӽC5=֚�/A�@�n{��z�Ã�ko���ԙ�@��@���髷�D\\LxR�!�A������\Z�7�R��^()�s)�R\Zs:h���Ya��1Eߵՙ}�c\"��˷�F^�H�u2Q)E�Ÿ���/U!���fn�L�~��=�\ZCmG��yJ�Ew���B]ǀ�k��hW����N���[7�m�Q�L�f-��Ed�N	Sԡ������wBzr-F�����`������(�LLˎ��5e\n�q�\0�����l�l{h��\Z���W�i�[��ؑ��VRֆ�rAu�E)��#}�Z@np���@[�H�VG#!T��͇k_�\r��\r�os�.�R��Z�b&\r�t���L�Z��T��iܤ�vԕ_ƷQ%�82�G\\`���.�6��۵ƺ(�XhW��A��)�a.�)m-����Bb��L�;��P#EfF���p�j��vL��\"���H�=���w8�ޮΙ��}�h�7q3��7�����u��	�gus����H�/��V���J];[�ŭ�V�r�����`�Vo�C�����M�R������IS��7e^�ESݮ�^3�~��W,�\\۵ɏp|d.,*b�\"V:A���/�T5�HWZ��;\Z��$OB)�DU�fj�׳�.���J��ځ�Aj{:W*^�U����x���*�N�e��S�׀6h���!� \0D��\r��vb��m�;����3ABJ�������\r`p�3�jp�X>SV�M���Hƀ��312\n/I�58݁/�j���l�{o�[HlS�o�\"�P�ג�\ngΝ��$����!c`&�q.�W�h؅������8DE��-�Rr\0[�Z�eRDPڹ�R�i�P���=\n��!D���2.ރ��FH������K*ݤRQ{.��7��#!�2@(���bb��+�Im�\'�\Z��\n��,��	��F�H\0�1@(�/M��E��ܲ>��@t�k���ka�#�Z�c�([$�@�ׂM����,JJ�J�)�[^�M\'�|6$&��tcb��/.�Ǆ���9��J�F����ʿ��V�wV��3�~w���rк��$���z46�fK�jɾ�ݛ%��ZTzYR�m��|~��\"�VgĐ0�)� ѷLRl������6���4�u���HTs M�9�H�R�M���W^�8P����Z�ơ��Yy�S喤q</� R,�g��P���ZMQ�fkEm���SgQ#�%�ڔ��`�\0H&R�h�8P�p5r�\nh<���OaČ6��\"�rE��\'Q��)��n(t��@��-�f)6���0�ke�<�E��L_��$�*���u�m�ί\Z��$��sh�T2�a�װ�^|?��g0!4� C���j���D�R����7���ā��~�����|�^��Y*��츨�h�S���X�=������%5���o��̋7�z74�������]Y����0��ve�\n�է��	�[�% �i��^!�|���Z9�����ǭ�P1��,J ��G�t�&N���q]���D�IB܄g�R#��F�u*�\"2�ݸ���c ��!?8������v� _X��&hzq��xWk�L1\"b���M,�gf.܀���BcCOMl�\Z0��F����;m�8�*6�V�Qms\"�sŢJ���x�f<P\n���G�FL+~A�����*uV�r��wj2�_>6]��.�\n�+��\0Z!Bju�!�H�Q:�Ө�L�	�Th��4b`��\Z����NfcȴOm*|��A݁7\\\0]U�,�t�� |�\ny��(�2��#F�X%r�T 5�,~�¤�󜟦�;�nA�\"A�P�u�4��\r�L��uv���\"=^G\nT��Q�dߩ%��N���vG���-bPJ\n�G�0���t�1(=\Z��?�^i��o�WV1��^a�g��{֥�:c�TPqh[�+[損�]!W�bE�Au$�N��;�ů��V4�����˼_73��p�lf�8�k3��Z3��������%O\nd��k�dJy�k�Zl��Ժo��N���\\:5�~��-�ԭ�����lm��V/�-����)�-�K8�y��W��O&k� �)Oy}2�����А{��Lg+��^	؂�E^-Z[|D�3�k\0k:\Z���@@hÀ��u|A�)N�X��,_$I	0d9K����\ZO�m&E��%��/k�#^ҖX\\J{	i4��.F��9~���e�\n	L^Mk\n{5����64l�8:!��	U\0�����P\Z��,��BBA�~\"�Pp�\\������H3*#���n�\'j�U;>���I#�\n�C\r�+zB��ʇ���g��\0Â�@�w�@���\"�F��?XhlR����D�t�#$���\nR��\0S��h9eN�5��Y�L���JƢ����@z���2.�e����1�i����g�\n�@^���G�\"�QV��zz9�Z`\n�2�����آ�����Q�M��H��ṛ��K^������l1lZ�O���s2�Ȩ�%G�y��O�P#���.pZ�<B5	��YcRaul8�z}a�#ļ�l�=��d��N�����р�1��X�_�+�e��t����P�*�Cf(�y���OKڄ�5\n�D]�`۷��KP�-M���j���D�+C)��U�/(^��VA��3c�z�����?��|��d[L15\n�����\'D�C�ؿu������7z>��G�/ϛz����k��۰Z��e>k����0������A�eΧ�0Z�:�[�\\/w1�L(��������$���7br�D3z��e���Q*ɀl?��\"���y�`���Z �ހ���%dd�q�u\n=�\\��%u��yG�ص	ń���Hj�޸`���,�*���!Ȃ����/D1⒥DMC�8HJ;C+9^�~���[�`�	��#�\ns��}L��������\\ ��ʥU�߁��m��G��i�>\0��#͙�U���Я��@dڕ0�H����9�O�EP� e�R��������5iQa�/��R���*N\r�׵\"Ex\0EPMB��Ƨ�]����W\0Nq{�D\"�u`=�0��L�z��~V�X�����ȋ\0�V��,?�a������ET)4��y����xW�rDx|�h��l ��]�\0���f$hפ�>�c��\0Ax@hKR\r\n|彑���ۃ���KI�GHO;�>*��@��\Z��F�!��(:Qp�)�LĬ�m{ ��DԱJ����5�İ�=R�LR�>�He*f�)�Q�Zk<FW�RL�O���o� C@�����5����anu0�I}>ɳl�O{Q����i�-g?P&x\Z��>�Og�XHyhe�*�����������[���K8$��9Ǭsh޴�ґ�Z|�#���q����R�E�m킱c\"mq֥F\00pILvb�L�RH�5m�9�R�O>\"1j����?�%\\Z�>��M	Z.�R�v��ut��Oi��@��O��9s���͙߻�/͙������g��is��\\|�9���������!�K3�t�	��Q�HJ�h�H�ǽ^IU�Co�pn���(R��k\"�������\0R�>c�����aӡs�\r��&��=��,@��:C���c��(�9L�ٍ��n�h���x�3\0Ǉ��������pȨ:d��\"��Lí����5�\Z�a��Z����{�	K=A`ZiL1 �\"W���h#\0�	�~\n7�&�|GB@�\r�vh�ů�\'p���*tt�>ԖY�ho�x�����<��p��1X�5��:�� ���\'�\"���(O�\n,�h�)h���L�^���U�V;��g�����a��!��?e\\,�B���1��kC�g����>��ΥC\r�p���҂�\rP�3m�9/���#�1��t���cD`�A���.a�6��}���U��k���䪏.B��4��,�r����g<PK+�gw�\'}��hX]���,`����KGY`N`)����QL� P@4���_-�m�_D�,� Y�!{���_�p>=��^xi�	��M�\0��?���[��\ZN)� �����4Nu(�Pn� q��&E���h��w�}�\"���/W��0{T�����أ������Z���t�_$o����\nT���V��I�7/Z��:\">-��Q�qv7�&lG;��h|�D��\Zi���t��@yY�����ƅ��]�/BY���M�|B��\n�^�r�\0H�����P�Q������M�ݹ=��JU���͡j��/��`��oFwV� ���\\��qD\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�\r$^�	d\0\0�IDATx��ip噀��S�h4�,Y�-���c�c��@��$�&�PIUvk�Mmme�e\r$�#	a	$�\"�q0k/`0`�s�B>d[�a�c4w����Ėg4=��}�T�<}|=�=�~���o+��!B��-�ID&A�A�Ad�ID&AD&A�r����O7�\0i:l�(qjk\0�n�;��S@m�6RI��D��:`A;����\0��E��\"ѿ�D�e8\\\'2]�?K?\"�\r\\�(C�D�ID���I��$J6�I&���L_��K�b`>�3�#��\"���Jd�f`��Aʸ�ɈD�L����q*�@�\'	�qs*�T$��p� ]Ad�i0��#td�D&A��$��$\"� �L� 2	� 2	��$\"� �L� �L� 2	��$��$\"� �L� 2	�1�$m�:B���.�Sd\Zy^%A�K\"��Ad�ID&AD&A�Ad�I�ID&A�z0��1j�1_QR�ɐ�Ad�ID&AD&A�Ad�I�ID&A�A�\ns󞐏Y��a�|̂�Ad�I�ID&A�A�Ad�ID&AD&AA��o�� \"� �L� 2	� 2	��$\"� �L� �L� 2	��$����)b���,�0OD&A�A�Ad�I�ID&A�AdAd�Ita��?�\0��V �ws���B��a�\\I��L�c6끕@A�����nBHvn�R�:U:�f`�e��7��r�q�Q��9��5@�����������#2��O\"i�e�埗���@���7���T��b�q^^���WQ��o�E�G\'u$v�\n�iV���\0������\0t��!rҀ2`�����)U\"��Nz#]^Hn�pDz7�w=�K�L��8//$�P������Q��ǍT��y`K��nA2yW#f�-�P|	��@0	�Mh�D9�$�5WR�:Ӫ�y�˼��gBqBӾ�,�(q{�l��S��~EQ��7���(��PF�0�kW_\0���yE���e�A\\ۇ����a��x�	�ځ}�ka�.�YKw��DA-�?�\'��4\r�ф�`�h4bP�6x:\\䆿l�\0�\0[8Ȩ�����U��b}\"�d\Z.kS�o;����\0�\0ހ���\0�����w������8=Ni2�����f�b�`40\ZL�Mf�F3F�Q�&��\'��& s�/�`�*�	_^ N�a��tyGh����掠�������r�e��Q?���b\"�8�����P�^�Ք��b\'/#��9c�]LVFi�X�J\'\'z�i��D>��fc�,BSϜ����(�p��Y���y��y^�z9��;\0i�cQ,�(��2\'w�\n�3q�D����f�d4��|k�~�㰄���>�\0�<�F�.\'���kk�F�;�I̴�d~�n(����22�2GB�Vහ2�]2�t����\'�?�K����Q�A�t��P�A�t,e~�|NY��j��Pل2����\"��4���u�܎ߌX$\ZJ�����:�۵�uU����(p�s���S��iĕ�y���C�YQ�T6�L��+.�`��j�g���6�����fT-n����YQ��݋L�)��I68]N��#e�=Z����\\�#}��D��P�\\)J)�+�Q�ct��An�z}R��%��l�^���p���G\"Sj��pDze�+I!�@\Z��<��q*�T�����͆�~QdJ��Ä����%������@�q2�ǭ`�}��?�]x��n�h�����K\rn�6�����x�[���;���&\n����X�R+����+IdJ-�7��C �鏞Nz����cQ�\"J�J����nN!49�}]��Ȕzû숾z5\r���/��Ǔ���V�^�u�Ñ��k�yY8�pѬ�D����H�wA5����k�^�3���mS�|3o\r+��bl��X�w��E�p)�*S*�&>��.�������TwV3�43�?�E�%|gƷ�\\4Y���ׇz�\\�E�8�������Uo��s#Z[�O�q2�OZÌq3I3�嶬	��N�	_���R�^���$�H���R~֌x��U9g�B@\rp��<�u�loߞ�\"\rd�\n��}pt��P����P�QKE�gT��\'}�aI�]�,��g�a(~.2	Ε�.\'��w�Eg$�H��X4acrƌ�́\0D&\0_�GcW#�:�R��Ij���W���1�d66�-�/�Q]��R}�������S�;���rk���An�x�t{LQI�T����Ye��$C<�\\]Tw|AS�!i�c`�M���Lˌy{����������2�Ѕq�)Uq���v�r��DRg�&�f۲c>OR5���V�;�.�j�F���L)>�k���T���I�z�t{��9���:�e�g�rZdJQ�A?�=�|�QM�ڙ��08\r�����j�3���v������hSdJѨ��{�rur��,�jr�/��XȂ��v��隒�it�w��j;�����Ի��kG�#~L�B���ȔJ� }�>�\r���M�c�l��ʒUL3[Zl��j�g��~�.�g_y-ʡ�b�)�BS�����5؜t��S\n�A��,�������ϕ\\G����Ë^��\"�w�Ȕb�\0��~��.|�/�ڿ:�>��^CQNCl]7�i�jbk�G�_��Jkwk��+�REQ𫁤K�_o��S�\"�0���������I�?��\"S\n���K��JT�+��Y�f��|T7U�^ݻCN��tzS4I�)�\"S�d��$U���V�t�2�2bK�����y��E���\Z�w\r-K�e�R�)�����ߓTI�5`|������i��.�[����aė�HB�m�)�7�7��[.�P��b�G��e��}��&�F�%=��� ��O��ȔB��~�~7~ͯ�@���̴͢8���A�M������Kf�\"a�y�M�&�م1\'�>7�7\\:\r��E� 0*F|�O7��8�qS�M�0��2�Yl���i�nfF�L��Le_��OF�����gָY��9��w�Y�gQ����JI~I$�N�R��\Z$��,1o��P�B�|g�w�R4�|{>F�%\\Y��QH����㹶i\n;�vr�]qJ~��F�^�����\Z�D�	>�|?��ȔB\rF�&+���%�r��]�=�����[���\"j�5���r2s(�.fB��m����\n�������Y<j1\n\'`2��E;z;x�����Q,2�&�����`�;YZ��9�s��ن�7;#��F�=���&7M�ږ����yɡ߭�XPv{��4M����?�y��;~?���=/�E�D��j�b2���4�\nn`F�L�3\"*a��d� ����,\n�\n)�-�ڦ)�j�ž�=_�Ʋx����s���q��o6�1��,����ȔB��f2���X��)���Z6�Ny�J�K�5*��q���nI�$��[x�;�k��������#��^����J�oϏ�XUM�����9�\Z�/+�b���(X�VҌid)��eJ#���qL.�<��>�G��k��|��cR�d�4��L\r�(]LY~Y̥��^7�+�Թ1��DS�\\dJ!���ƨ��D�ѳ(&�L&ߞs��l4�o�\'3-�¬B�r��p�3k���#`b�PԴ��V���&�>�����R��JNZ6c6�ѭ;�TJnz.ŨK[�~csǒc���b�ڰ�����4�nW7[��gk�{1�o���*/2��0/͒F�}4����sã9��|(��hԵ]�{��L-�B;��?��H�64n��]�^�N�Y�)��h��� ל�mA��x{�x��%e���d�����9�?s{�捍t��)1M���d3�N@��8�}��IP\r&�q�>jZjx��e�ұN�mFQj��Ȕ�C=��F�5/�u��t�����^O/��%�1��J���#�G���]&��~ZT�2�)2�(���ʣ^���([j�p��=���R�QǶ�O.;U)RVL_q�X�*	�\'��@3�]���%͆7�c���:ot�՚�^j�-g�po�}�>�vJ�K�~vl��q���V�U�m�zђ��E�UWRA��W�e�@7PL�}��4>g<{k*�����p��Q����ʉ��;~.��F�R�!�.�|��45l�mcÍ���ʴ7�d���	�\0�L��r�wEQX2m	�m��j���by�\n�M^���id�g����\0�ݭ�<W�.W�n�]0yA4��r�9gJn_���Ar\r��<^�.�8�?�5>œ{�����9�|�?�E[TM���˱�clmݪ[鲵�� ۖ��n=u]d�:d2��|�%ҕ2�um�6��<ur-��|�-Gާ����\Z�[ҡ���������/*=<��,����ل��׀��� \'�<I�s�m٬-���\r���xù��������9��˩k�OUU����_�����wr]�\nѬ�Ю\\���B`�0ֻ�!.Q�u�\0�.��7|�+iqk���;Y=��t\'��1W��=�?ʯ��W���nmm�nW4C�\Z`�D���Ư�d��c�n�j����Mqk`�gO��9��z�w?������TU�����s��ѻM�vn�qS4\"<6�	����i �d��}�n���ws�w�������_��#kyn�s�<�����h�l�e$\rx������ӵ^��ˣY�I�B�`$5~uD�:�?�e��\\�A1��O�a��qm��`\'[���U�ʦU,�����#����iq��q����|�[�N�W���\n���2=�v�&�L\0���Q��4/�{�?��.^�\Z�����3�׶����p�[(�3d}<_�G����gv�^ۻ��\"��78*={5�4K<���LQv�\'/�L_\r����U(���;�o����,m^�ݓ�fv�lrl9n��4\rUSqy]�m;˧5��I��T��҆sb�u��]m�^H�l�\'�\\]�8��?��O���U��̵������9iE�\"�#�����Nu��n����O�\r�եM�<ċ�����p��Td\"���C��\n>>�1�o�{��l���3�dn�\\l�L܁~\Z�\Z9�{�j_��	����Es��&�\'42!e�>Y�~o?\'[N���F6���mi$�)����z�i>ݟr����~6�J܏�I�M<fdW5U������[?�(��Hs��b$�u�M�uEQH��3�p\"�\'�`�cɅ�/%#�<��a�pDr�\"Yиv��+}�i�=�}S(�Ɍ�jg�e��ߏK��O�<����^�ŏE�l5�=�+��+A��?�J�MLj�nW7���r�� ������I��=K0�l�pW��4�D�i!��Kh�j��Kg_\'\r]\rj<�ֆ�Sx?��uϭz.ڌ�`��7�H�(f]U�g鶉��P5_���太����|ć��v�\'�Q�	�D�	�U�{�mUS��<4v6��n?��>aoϞ{��R胣�7ld嬕�97�Y�D�	�QB7�	I2��u�r��Ǜ�S�TA��U�cxp�%Z�;ņq�}�֏�[>�̴�XkO[�D�	B7���(�<�>�\\]4v5r��i�t�p�YE����@̓K��`6�N�iŖbZ|-L�M��3�Ϭ��ج6��)�e\Z,�=�E�tٸr\r0:֡_ ���G�����\Z�\r�������p�s�v;��v��J,�+��o�	jA�IW��4f�09���hg3o�<�O\'73�ɂ�h֣RTY�d�IY\0�����NThh�>�?n���M��I���M�����c���-;�:��so�b�0�`:9�99�Ȱf���M�%�ɌQ1�!�F�4ڳz�y\"��uJ	͎�m$�j*��]���`�Bբ�\Z�h0^(���{C3���BAH�ф��WM>7��A��D&!^���5J\r7�\rH4��X���𩃮H\r�R�,`��hV�b��n�1\Z�]<D��˱�	����8��1dp�B(2��ĹԺp�R�H��]b��{T��aJu+�[CdD%�=�#�M�\Z��P��^���L�������>$�h��W�M��x��}B��8��B�w&ʁ�L�H�c��N(38P��:D�ey�ρ.B׆��s�h�d���xe��\0\0\0\0IEND�B`�',20,20),(5,'Refuser','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0zTXtRaw profile type exif\0\0xڭ�iV9���k���r4��;���w#i�]68�T(�pIYf����?�j�dS���l�[l��M�������������g���f��</�ǅy?�＞~��������<��1��/������(��u���i�����qj��7�?z�w,c%���\\��]uAП:_��w�\"߇P��۟cg^�}\n�)���+��P��=^w�ϱ�\"�vF��[��>�����sV=g�O�c&R�<�>�����A(�����������]y�I�����5��q�-��q��:�d��oO���Ӈ�J���A)���/��eB%O��^��sq�}�u��*w^�+�c0�;~�m���O~�t�J׹+����*=����o�\"!�<b���^��kZ�RbLW�+��������p�9p]��ػ5\\Y��NL�2`3�������q��3sZ�2�R�˙CnB�$�zݛ�w]듿_ZHD�i\n�i����Sb��z\n)��RN%��R�!ǜr�%�z	%�Tr)��Vz\r5�Ts-��V{�-\0a��VL���޹ig�λ;W�>�#�4�(��6��|f�i�Yf�m��WX��ʫ�UW[}�M)���λ���Z;�ēN>���N��#���2�y��#k�X��+���˥��\'I9#c>:2^�\n�+g���2����i��ɚKJ�r����t�k�~e�Ӽ���7�Q�R�_d�(u�����?dm��Q u�bj�ظ`��k\'��:���3}Zq0��s�s��v;^p��>��qu8W��@��(�.������r�Y��g�PO\r�~W��.g�Sx4��N�	|=���G�w�lw��>����4/#���y�?�|����|Ŀ�|Ŀ��mV�\Z�|7�\rh~Z7��-�U��+8�6��Z6�1��z�v=�b�u.�@��?{Κ������3놋���o��w/�GL\"W;���\\W�7�k�ܖ[�E0�k&���٧5�����\0�c�#��\Z39L��y�\'���R�B����V�٤s@G\"���<��JH.���j��B@��.������j(&^׎��R��qڌ�\r�y����`-��\"ϾlY����9>�GI�b�*���\0Wh��L�O�:w4�C��%6��W���ua��O�~�������z\Z����-���_�����,�\'�/��y��G�� ��(�,���R�y�| �Q5Q�xO4��\Z5{�Ss��S\nu�٨����=����ڸ����H����ԕ���=��p(�Ӟ�^\0A{�s�����-��\"���a8s���Ù�������O����G���p��}w8�y.�~8�7������7��;�b�G}6��eϰ.�k�>k�I#0�?��	��nT�7��|�\ZJ���J��-b2���M�\'�^�f�yq�*�\'��3!���K7�![!�0˳�4��s?}S�嬙�NV_��~8g�<i�x�k.���R�㞳�d�?��y�q~�T�X�;e���(���`����$�kX���79{[L^��<V��x�\\�\r��u�f#�\"D���\\��������g����^8�Z	<�l��@���\\_P��+�wD�旀��_��e���Wh~�տ�_H}U����eK^	����\\_t�@�L�S\Zw�<��|>�?�7:�=���+�M[j°�(��:b�z�\"��S*rk���D\'��>v�c�hg�9MH���[�9�Ni\\�a��|���U��c����<�TϤ��9Z0_���~�ó��f��:ٵ	3b[B�@G_ʁ�GO��!i\r�f�5D����UL�f䊕�5G��$�c�.Lr�V)O[Q[��:��S��O영y����y\nt��/���5�i�J(9�+�=��k\"�����ASy��S ��\"�q ��\"�q ��\"�q ��\"�q ��\"�q ��\"�q ��\"�q ��������-:������T�B�b�0�Ouc���W[��S�>�@z�!��������������w��b��5�KK��\0�{���-�/Mܞ��V�@�y��\'�OVn��%�?����\0}�؟�׼L����\\T� :�X\n\"K�<p��4�{���p�!�M���j�vUU� hm���]G�䄋z�ȣ�1�߲Z��땮��7�~���u�齎2+��Z��Oğy���s�g~���ğy6x�e����]���?i��\'�[�Ꞡ�{\Z/2��m����h��SA�]��嚰�!�.����z���6�.m�Aq��i�k����,���nZ�v\\%+�=�W�W�0�W�Z��Ոٸ�acH��\0,\\#,�w!y�-���6 ~\r�}\'��lgP9V�Du��zݕ��SR@��\\���\"��k68_|,k�]|p+������Y�sVZ_�ٽL�e���	�?̘��n���o��/���p�ʟbj~uW�2���_嚾/��_;}�C�>�?ϡy$�\n�wU�[F6/a��Ϫ�~�=��;0wXt��u��������|_-��H��=�}Ԗ�N��m���FOhWIM\"� UPBZ[w5�)��\ra`~W?[e3R�K��V���ʵ�T+����>��`$�wK�Zf�����9΂wq�+@�`maJ�]�W�?�Y��TL���Ā�j#�U�������D�����Q����ɇ\nTO�S63t�\'�^a[�9D�䌤%�\'��*��<_;��U�s�\"J���2��T�\"6��&EB�t�P@M��&�K P~�QZ���� �6z��G9P&<P�n�4�6Oj�7���(L\\ ��B7>W�EI!�k���X�C��-�ȊK�L9����ڴ�B��׿Zy]#���B�T���瀿ԅ�υV�e7��y��k��)�>���R�-N��7da�Zm	s2\Z��-`5�EgD�<�ڧ��9}�9Ŋ��)A�i�HzJ�/W^�2�)�ް��%���`.;ѝ�V�ݷ�$�X\rHx� ��D�GʋF�a��Ғ���:5�,x��_�ƣ3��y����.j��c��E)�D *�0�.�&u槍 �~\\K�%��v62С�fl�ەu��헫kF���ܣ3�V�\r�P��v�\rKmt�s�(!:���6�i����{��Sս�C���4%�)�]�����e5��N�ܹC�њ�t�̺���77��~�V��֮�p��?m|�No7����󃃍��PF��/�2���P�%X�5ܶ�ʭvEqꩦj��´�Z�&�!5���\\h\r �J�f�RPI�g�<?8���C��z̡e���me���	E��M���|�G��޲$;fd��\00R<����3�f�1PC^Q��u��`�^��,?h��(�r��魽��`���P�t�\r�}��������:ae|U�#��c.�$F�D��ƙp�;$��&f�x��F��k�z<[�}�薰hC<�Cu0�F�yä=����9�@>�K�(uT����\Zu�y��A��k��������p:���ĳ����8��u���D�rJ`�v�������Rj%`Uʠm��fa��@&3�ꄧ���>d<�`���K	�^���na,9��< ���c�{��r��u��!)����2tDf�¿�od\01��cҶl�1����\0�HU����y��},�o(u�΃R�Y��}���]N*6��mE���eV��]ޝ�]�袑e�N}�^n�!�0�(OB@=B��B.�a����W�-Z[�mӴ(��5¥ãamiu�`V_z��M��3�W�U�躅ȅ]�y���co��wr�H��WȈ�=i�ۂ�\"��c_@����\"^�!��w1��o�|�!ｌkI��J����t�$�t�<��)�����@��\0>	j��l�M7CÁ���ɴEU`I�\n�e�@W�=�&Q@\'!*V(�:C=T�鐢� vz��u�	\Z�&�Z�\n�\Zl,Uu��ޣpR���*�R�k:e�|\0��s��d�G?ϳ�yLi��B�bS�Zf����~���E�fI�Q�Z���}�Ԅ.�gx>,��G�n|��,�X<#���\r\r��[cđ�2Dd*�.�\Z-XF�*直����<6�dk#~�c�����3@\"a��s��J��Jp �Q�-��4����I8*\0�S\Z���Vzfi1��4\\�QCv�ٝ�J%�pP4Y�U����ldǁ�tQ@]�fH��Z/*2����h�<@)Hn�e-����M������q���ϊ%�ٍ����;-Oj�U�K���\08lB�sik�ݘ�*o����K��Nx=�Ǥ��@��@a ��-\Z2��) Ȃ�����$��D�\ZX���&J��Q��\'؄�\r\\B&&2$\\�UEizSǵ�(�Hz|%��AHaꦢØ{t�v�\0��\n���C�/,*�[x��g-�a��2�(֊�E;G��R�U�\\�1e���Y�J;M��;~�0�cA�|�\"��Mh�~��[� ����%������/��_��� �� ��-C\r�:��u�	)��G\\�p��7-=<��,m�5J؋�me�ґ�n���uxa��`ݴt���0-?����j6/C<|OQ��Z��!1�\"zG�!p��B��B�����\"&e�HA�d���qaq�\\��%��O�����C���\nS�ׂĸ����+��ar#�T?B��x��0�:d��*::(+�Tѐ2�����9�EPE�|9�)�vџ,�ٵ�]*|��0; �Bt	�\"<�xt�?��pS��Ć祦l�\r�GzX}�C������%��5�@{A��\"���/�Ђ�؛��:������<�B\n��ą�ԙ��l\"hj4&�G��j���(@	�*!H��v�p~�y�}���������v�Q�Y1@\r��$\"r�\nK�֑��u�갷�:耬#t\Z�\"��t�f��ױ��@����(%�ܫ��u\r�����7��қo6~%���#js�^\0ӯ\"��b�-���N.�2�ˤ��2)}�����3/�zl��o�x�-�kZ�I���im���Q�.��i��rcq*�޵�R��	_�ղ���:\r�6�>`�AʦL�q7�s70����Z��D�o܅vb`U-@�<��i�1���m�6 v�h����>r?�|����um�(���y0�ω�Z\rk����OUש1�ؾ���\0ݨIc�`X�\0���r�Y��&��@���iFu��\0.AX�%� ?��ɯ���W��\'�0�6�X/���GAu�=x§u��ɉD\0:B��>���h������x \r�$�<u䆄�3��]�I� =��6b����\no>�P	�@�#J��<�6��Qt(�qpsZ�%Gڊ��Q[)ʹ]��L8F��Z,��6�rx������b;ui�B��-���j�ܐ��q�s�P�yO�	�����(-,��+���ɴBB��頢wx0g�V��\r�@���Do��1�R�|:Z��0������7<� λX�?8\n�\"�c�]��8�j�8}.�v�^��)���gT�,u�\\�#��ay��h�ibl9hF�Զ6�:đ�N�!?RU��$������꽣��\\%)��53�cѹ;I�����#�d�H$���z��(�p��S��I�f�/�iC+���+.D���\0�||�N�4�>�u�Pq�N�?v��G�o_l$j�y)L��B3�}��c�o&գ�t���M߷�2_�>�z����ѩEԝ�\"�A�c\n�8\\:�ۼ�~ϔ	f�>7���dJ&.�n�$��S�?qB�tqÓ$d?ΕF[:����^�\\��lI�����Jud�� פ푗Xء�I�2yt��*�>�\Z�ctfK?�#mw��҆G�Ӽ_�e:H6�PL�X�\'�&����#�G�N��z�ORbGpQU��{T)�C�C��p{;k��p�@�(T\0E!��$È�?�n �tn�m�7bV�m�������:Az�\'����Ԃ�-$r\0q�9�V��&r��&}��/�:�u}RZ�7r��������q�z�.���y1q����U#�|,�._���	���9]�E�)[	�GaWZo�����Ns���I�^�P�����ڵ^���@�R8`�L2T�#�C-\\=Y����k��t�r*<(�]&8���d�2�X,gHҀ`�FA�2ͦ=�3&��&�P-5k;����[�����M���::\Zd@.B�@�8�3h�c�nV�d�0��2�[���$�v��.�b���\Z����j=�k*@\'�~��������c`����Ay��BDX� 4���&X�D�`�C��xJ��/�{@����;<6C{@.Q�>~/�鯕�d.=��ՠO�Q�x�/\ry���Z��آJ\"ϸ&����2��$X�����ã��\'�2mZ��Z���/,h��h�_�!�\r�-65Qӛ�PG	�>\\0\Z�L[r�FcR5�%A��k*R�����aj� l:w�7��6=-�T�7W�6�������u��T��r��C�-�y��B��Ԡ5�`_b1�oI���\r���H\nʧ��l8s���Ù�������O����G���p��\\��p���r��Iۤ�O�\'�L��Zԓ�b:3cT�SvUȗ��lS�%@����k.©1#o�]g5��R:�ֆ��3{S;����.	=E�qؾ��^��Ұ�Z�5�u	FG��TZ���\0�p%!�!\r2?�+�z�B-\\6C>��c�Gk�H����.�^8�A\r�a�ם>����{����(�ēm��x8t���臻LL��ڿ��㱕m�:ϘU�1�#g\'-b�Q�{��N-�b�ATlwH�	C��L�.��4t������<؞�/�g�ԣ���D��ހ\0�g���pz��>F�c�4��_��K�6�l�E��)>�}p�s�X~Gp��� �U����\rm�>��M���O�?No�jx����o�u������`��y�N�o���Dǝ�>.#/����q!m�\Z��SX\n�M� �� eE�Y��R�����d]sUm7����������`��Ac:�A1VA�ޏD�(r�F��!��$U�8�M{�0h���@%�b���O�9��#�XbT�#Xp�JN��-D��jw�,�V<-���Sm���n��zbN�kc3 :c3@�AȌaZ�\0�1[-�)�����z���\\�	�!�bMc#�#bv7`���I����N�\Z�����vi��p�����,�o0�l6�����}h���ō�C�h�C�m�TQ��G�:-��\0}��Ι�a�#��G�G��U��������?-���6��Ң���B��S���x���nO	ц�r�0v����i���?M�����\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�\r%(��\0\0nIDATx��y�T噇�꽛��\Z��P7dq��$21q:G��c�3\'x��89N�L�c��$EP�( �DdG@hd��������e7��Vݪ���{Ω�]��ֽ��>�~����}�h4�\"q��/B2	!���LB�$�dB2	!���I��#\'��a�b`8P�����$�k��i�;ۀ��C@u��d(Mˉ��g�	I<�Ef���-��E�K\"�+��$өy�U�pIpf�4��I&�$�!tO�I�l�t�$�X���J=P��B$�x`i�#��I��3�L��sA��`:1������w��7�O�qq�e���/�\n*tB2	!�ڲR��E�LB(2	!$��I�$�dBH&!$��I�$��LBH&!$�B2	!���LBH&!�kr2t�����]��H���i2���Lj�	!���LBH&!�dB2	!���LB�$�d���c��c�T33�\"��I�$�dBH&!$��I�$��LBH&!$��!�y�c����,��B2	!���I�$�dBH&!$��I�$��LB�\rB)���BH&!$��I!���LBH&!$�B2	!���LB\r\rB)�dr�����yBH&!$�B2	!���LB�$�dB2	!���I�$�/�-���7�y�@��s��z{D���љ��L����n\0*�c�p��v����t�v�y��gpm�Ls����1)��.v�\n|�F	�a��y�6K&�˅H1�u���s�7��m�����(��D�5��$//ڧ0�۪t~~��ȉN-��x\"�9I^^�7W9A�=`0�*2	�`00x�ܝ\n���>is��vy�ل�����s��L���$//�W�<��0�w�)qf��\\�5�����+���)1n�t��g9�D����q.�\r�G2�O�\Z0x؋�K�:ϧ;����\"8z���:hh��&hIJF;xԉRJ@$����+A���+���;��+����k���a(+��b���K /�� ;rs푝�G���R�K%S�x \0�8�?_ωc���/���p�Ԏ�4\Z��&M��0�4�]a��()�=��\0��JK����*�\0��g&��F;��w�v�],��q/�,��@����3�/O��:(q~BN�W��*8g4�5\n�\r��~&ZN��>�\'��$�H�\'�[~�p�3�K�^�@��0�l7Ɯ�[󰓄R3O\"%&�������B^h�����M��c��\Z7&N�n��*���K(E&�G��c��.uD�\0�w\Z���GgAEE\"�W�Rm^0�̈k͖xy�(N�\0�][a�0���c���[��	�$:�q%�a��?���u\r�Z�s���޽�ۏ����y�T뉧�ъ���1�y���y��Y3��ĉ,�K�g���bi��q��wr��j打%��%��32��jO���g���Z�7�ݶ�$S0��s�!��/SDr�_���n�G��n��$S0x�S�!��=��{G�-�ӒI<�4U:&\Z��z��#����s���B��z]�����kS�y�����_���w/���CY9�u����{��U\'$3�PXE���#a����y���[��e�����:�2E����k`��6�\\վD����p��п?��BV���n�7^�������F�%�Wo��ݺp��	۶������~\"�Ĥ�ŗ���n��2����Wii���q��y��b���=���qV\\:�9���L�PȪ�����HYY����u�x��{�u�((�k��\Zؽ��}\0VXE��꬞�C���R�$���1+V}�5w\"]|\\=.gB��B�>p�����!Ԉ�p��p��֏)��\"\Z�5p TU��*��\n��{ֹ{���~���<s��$��L$���G�;o�/RQ\\0�D\Zwi�H\'��Ʌ^��j�x��n�r�]���\nY���l8Ȗ��\n\nᵣp�3w	�%7Ä�	E\'�T�Qwa{5,[�׶�|i/��БH~՞H\'��e����p�T�sw\ru�$�|����ٿc�p���Y�k�p�j�/k��+����åL�}��\n���i��m����:�!��v��7��w��Ϊ�˂�]�qSh�p8�<��Ӿ���P��6BUVZG������s�}�����\'��ī��M�`���z���n��mϫP���V�>}a��ޢ�K����I&5�,��q=�� ��[bٲ�r�Q)��)&SY��Q��K����tG_�&�d\n,\r\r�xش�{�@\"t$�_\"��ζ�^��<��{Y���/������sغ���j-������TY>�E�E�F���4	>w]83I2��&+�ٸj]N[�ol��\r��sV��Bu����W�h�*;��!G�\r��i�1C��jT:v��𪷺/�پ�d�ouu������L~��ƍ����ǆp�*��t�p�:)2��f�a�ؾ��z�{a�KVƓ���a�=��z��G�c�/��5�d|�������z��يLA��j�p`����~s���O��P�R �EZ�\0^}�}}��p���f^ЈD,���H��*\"����D�t��%SЈUxG\"���Q�d�6{�;�$Sij�G\"���I�d����΍!���Ū�%�J�H�u@��)h�LG���?�יB%[$�I�J�4\Z��6�tq��*�<\"�u���:����R�4	%��DV��Ӊ�^-���\"\Z����}z|�* �Ds�]7��%��cB���7��`�͔�����Vڔ>Iͼ@��mcd%�c/*��G�����l\"�!Ca����*2��(,J�{�	�Æ�\Z4�ߨ�����zM��|\'�gO�K�H�����o���+�Q�}!�Y�O��È����c�d\n��V�]Vn~��S%Rg	�f��\n��E�����R-R��r?��d\nYYP�\rzW@N^抔*��x����4����/.��,R*���۬�)hͼ�O.�.��\"R��:�u�=,��H^��\'W�3�$D���L�p���Drr����T�*\"%K(�s6��LAm�u�=zz[��0�k����n����;�X4j�S}���<�/�s�)��x=����(���i\'�ȳ���!�����ʄ�\Z��W/�	��8�����=�\\�v�(0;(2=ؕ�L�t\n0�u�*���	`�� �U�0,�O�F����|F��9������4k{�r��e�A��.|l�@!p�|����4�4�������M�/���~l]o��)T~���1�ʎ��L��z���!OU��a��(�40�W^(���ȳą_��\'���`\nY�*,����	^���d�\Zd���,G0w�M���V\Z���P$9\"}���P�hk7�w����\0\r���V2u\r���&�Q`����\'�[ڵ�؛X���DJ�P�y�v|�~���y��N��&2�_yN�.��\rpwƗ��7qG4���U�a=9�<��*6�������ជ$S��?N��\\`��w����-�w+,xV��!��%�_BE��?��.�\\�n�;��rT[���d�\"�ڎ���k\\�C~�e��D��lV�-��d�H�\n�¾}��2X���Pг�z�V���X���\n�ߋ��W�:��p��p��]��\n�]b��k״?Q4��H�\ni�Rx{�r9uεS��U�Fm[T�5�S���c�����|-YY��?t��o�(�۫a�epιvO(?��Tc�U6,Y����E:Q(8�}�h�F/�E����{o���mY����p�B�P��d�1	x;��>q�D�\\��*��۷Ó��������#m���W���P�Ϻw47��}�f5<����2���t\0|�f��Te�m���DZ��-�u+�Uw̚7��5*u?�252�#O|&7*+�)�u|�f�B�Yg�Mk�n���U����=��6Z��Ob�P�J�����`��͛`�B�v���2ëH\07���\Z�D����ŋ�����ܗ��8%;\r�	���_�P\\f^m��0��s��)3`毽6�V:פ�I��\0�a�;���?�}1l&���K%�b��8!�N�<]��#��0�2��ߚn�fþO����*���)\"S�x�nD�v��n��9x�yw��L����[�a-������MCB!��6��.�\n�*2�x�̀�M��\0\\�f�t��L�ٛ���5\nZ�݊ქ�{Sr~��S��zM6�ZM��y�N�<�m@���4%���۶Z���+�͌}�����O����E�I(���47[�����s�I��MX���ڷ�h���W�$\Zڶ��yj��L\0�\0���6͓--V.��u�p>,|ͪ�ӥ�X4r�pHg�\0��Agm��b��;wZ�o�BX�^jg�+�8>*>�\"\\C<�F	���2܋uz������R��k��w��m�e�UC$#Z�@ρ��>�\0�^�ǀ/q���2�FR��\Z�i�Nؼ>����j�ƣp�.~�rK��t�����g�wo���n�l��N)�ej+��:	�r��Ie8�7�_$b}�jÎ��l��^{�*��Gs��WP�\Z�Z��gA���Kˬ\n#\Z���p�E6�l�6ln�Ïy��e�L\"�L�H����\'*�Q�VMMV�}�j�Ps>^n�]��:~���K����Qн�U�����&P��>����I�MV�_K���䊝����b�gg���=v�93��o��`N����@�\r�U��K2�d1�LI�4mǺ��:�[�3n,v.|Ec@�S1\r�@�+�C!�(�b�ȿh��d�$�DG,źh?	D2�8��1q��P���q-���B$��Ku�7&�D�R�#}�I�D�I����I�{�\r��߷u��%���K�W�f~(�z��eig�$�H�X�`��$4#N�mV�4]\\2�T\\cM&b��ؘ���D���;�`����\Z�+��3C;˕\0\0\0\0IEND�B`�',20,20),(6,'Transférer','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0CzTXtRaw profile type exif\0\0x��Y�7��q�9[���������\"ղZ�C��iBM����B���`���\r��ԚB���h-�SFir�����)�<�����ɷ����?$N�E�������_o��>��=�=P����2`�\'\'����@9�����0��������<�oz����E	Ʃ��SH�%G޻_��_ɓ���+I��<����؅��O��������\"�����)F��R�\'B��|9L��a�/w~�{O��^����ދ��!�#.\\�2?�5^ʿʱ>�����M��\\�v�!�h_)rd�{>�l�X�%R�)?�:�igOA�ܤ�����&k�3�1y�;��m�<�W&a0��^�G\'���c�{�tE�`�+敼j��g�߹���}Ǵ>�}^!~J�;���\'̝θ^C�*_k+?y�\\Wc	��\Z��=\0!�ٕ�H&�Q��$jJ*B;��̜H� r$\\r�s#9=���G�6��:\r���J�(��QHV)���ҩ�Ys-��ڪ�^G�-��jkM�c�ԬE�6U�:t��K��u���>G\Z��\r\r��1�䡓�\'wO��s��WYu������|v�u�����I\'������3�41JɊUk��mؼ��ͷ�z�����#k�~�5���?Ϛ���+�u�5k�V�2�8�T�KEȸz(��9�]JI�9�Y��\0��e����b�ꕏ�}�ܟ�-���~����\'2<u��}��d�̇Q� �B�i�`��3����?��:��~�{��ׁ�:1�O�G�Xu�[�$0֮פ�r����kɫ�v��9���K�ԏ�,��U�/3J��u �����X�CZV�l�n53+}[��抷�zW3�tݒ\Z�,g�����9�v�	4����Pxg����x��]�s��W�R�P`,��e�ҝ��v�Y�C����)&CH���܋ܸ��R%ZG�˵Dy�\0u!��\Z����wH_�!���y^�g\\Z�����zw�sp%������b-Fns�*UѾ��;���.�-�#��v]��F�o�}PEM�|�\rDoß��B��]\\x�\r�L�ň��0q5�NmɄ\n��0]�z�}�����M���\\��ܣq�gI��_�>IF�vN����`����m�56�44�=�Ͷ��)�8/+�jq�~8�y�(K�uY��P���\\3��S��*{�E��u��h3��Ba!�,+����\ra�a�p�\r�*GrbE������`QL���F &6����6XG�V�QN�rl���o�,(6\\E��6]ǔ�i�G�8�ZOn;��V-�a��G=��ކ�:�+Ƒ���d�!y/�=�M��|�9)�K��K��;RA�F.V��i��t{U�3Mk�=W��h�}��nI�������+\rY�{�?u��1<(Ø�ʮi��d�[|�u���~\"��U����qg���i�[�60��n�g��7^��W�_[�J�g�����zNY%�E6lj=R�T�K�_K�Ϧ}�5��),�M��ܵ����٩�L\\\nB�^\"�717��fXG�9Τ��:XM,��H��\n��N������ճ��2��֫�ѡ����������f\0	*�Ld�َo�z���R#4?�\Z|���\0�\0���Iڇ#�(�z�{�H6{\r/8_y��g�|⧟Ƣ�)�+ˆfSB��-֚톋��\Z����`�+ğʣ`�s�>���R�62�Q�����̽x��G?��&00���\\�&�4)g%���H4��p�[��Z*�H��c�kq��q\Z�	}�g��ɩ1�)�X705����#^ۀP}�f.1(�j����F�q �r@Q�M�1�6�TH���2�$�e�3�*Y����M������������0u�iZ.a�����2�8�\n�\'C��Sȭ�9���r3��~y�Ez��+����Xpr���Q��H��x��SaY�.����f����^\nt����N��byF�:M2`�1�_�ou����cǉ�pу�I:��h��&vsu���X��=T�8�+���^�P\\�W��8tD-�Ή�D= ���+&�︑�ⱷ5:	�%D�y:�}\n���X�`���������	X�\0h~�0�fmC�� �+^t�TVWB4�	w>�5;�������ƣA&k�(��F&MjB���+��^\\�8����[A��bk�����:�v+��5X��J���Y��\0�A��`_4H�3�nR�\0�J��_t�A��e�>����H\"eG��//����x	��Ժ̶	�ԞU���+�dr�C˴5ڴ�C\'E� �QS���E��5>Xs�=��@\Z�\n�w�Q\ZkR���OkB %zw e{$eT�\n2g���[�Ƨp��45QH�8l#q����3Б\\�ѯ\0�u�~��AR�Q�Kf)��)5Ql���*@�csi�I�:Z��xx�t��L���@��Be��߅$�\r!�/��?ʕ�����E�f��ѕy=כ���c>>��?�DL��Zi]\"�Ac&�`.\"n �N��F����E*�w\09��<5��נ\n�ZA�(5*�dN�9LB�`P���/�����C4�z�0�N �-�%Ћ1�,��`XPW4����\r���/����4`C	3����d5\0~\r���r\'�l�p�!�Hx����Y��(g��\\�7&s��xƓ�0n/wO��7�vs���r�C�1��;�s*Yu/��ts7he�0\n҂�e�(�)<��H�����B�:�q��^\r���C��/tt5�\'��B���	_�6j��\"��EN���\"{��\nV���px�G��ך�}�2�=u�<*�y6���E�eQ��f����	��\"kŜ4��*;Ao<�����N9\"[�π�\rS��j¬�l:�N*4�䑣\n���G�sGo�1�5�ļs$��B<�*��\"�0=:�u������*m��<�����S�W��Q�8����pBU7�4!�}��O@�V��[鷹=�V����݋섈r����D���C�5boa�p��:���q/aP���	u\Z�I���၂$B�B��U�.�(Ad�:E��7\"|�9	Ήj�.�\'��=�`�D����v�_�� �ó�����p�($N��}:��u��H�c(��mL��\r\"�B����P��Z�e�?8�\\���)FM%��32��E�E�h���u���	Ĵ���V�U\0u��h�4��hE��UYD|D$?h<�jͻ��kpwധ.Z�s`�m����;0�����c�{�\nZyj�.�m���\r��˺1�pM�� ��[b�	�G�(n��w(.P���vX�aH+^�$F6wU��S}t(��Yj���g1x�j�kķ�������uO\r�9��Q�@�<�t\r\n��G_�����e0Jnd�N���s�M-u��Z\Zj>1��3�����<�ƿ�����Ս��F�%�)(u�V`<R70�/0��^�\rF�a����ݩ�|_�\n\r�3��\n�i��%�1��A*�#<�BF�Y��L��\"I����fԳ�b�JA{\Z�JH4�ƌ!3}Kj�]*sA�Kn�rty�~#���]9eӮ�#���\r�S��F�RH�I��Y����_��\n�#�@_a�ӿ�C�)���\Z��M�׭��8*珌v�Hh!���K�7�{�H��E\'[��Qt�w���ătF��z�����ɋ`�b�*\0���\0Fg��.j�h.-��Y��+Dc�}w�u�+��������5�m�ͧ����T��@J\0.�s�<��rH|��BP�bC]�;,�g��	-Ϩ,gZ�Oܜ6����B�gm`�\ZX�L�f�\r6����d��/�Av� Xܜ3@��p\"�s�L߁��G��h~��8[<C�]`�,��|�&47�1�5��v?\ZK=��QN��3���p9���\r�G�`���X��&�)�dB���tSO,�Cɿ�2�\Z\\b�[����cE�OV/#\0���Pz�+7�H,\Z�T�08��ym�^�*@���1y�3*��:���n	�I�|�d�����>h\Z�(��\\,|J[�|t�������hFFA�moڌ8����*�eP�y�#�;���6�Kn\\��^��\Z\r9J�O�L��{F�/��@�E��*\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�\r1,�	T\0\0sIDATx���kw�f�������1�N�\0)Ph����|��0{w��;���B���$˒�y!�$��&T�����ł�BV���_����Z+\0��S\0@L\01 &��\0b�	\01�\0b�	 &��\0@L\01���\0b�	\01�@L\0�	 &��\0b@L\01���\0b�	 &\0�@L\0�	 &��\0b@L\01�\0b�	 &\0�@L\01 &��\0b�	\01�\0b�	 &��\0@L\01���\0b�	\01�@L\0�	 &��\0@L\01���\0b�	 &\0�@L\0�	 &��\0b@L\01�\0b�	 &\0�@L\01 &��\0b�	@%<��鋿��V�������E}��Z��q,t@W%,b\nh��\"&\\ـ-,bµ�h�Q�]D�C��!��gg2��F4�)�d	����d�hS�ɄR���p#C��1nlHU?vb��瀘؈8U�sALl<��9!&6\ZT��PN���;w�;��)ϡ�E����|�˞�%&B�kDQh�l~�K���*Z�$V���5���= 0���-Gk+��o��u=E�#c�����]���L?og�;(���E���T���7괌��l�������P�^�F��Th� ��V������ǡv�\n������NL&B�iH�=G��}=y���OZ�w���[��-_���H\Ze��GZ�j�<y���\'sꋿ��^$(b�LCڼ���g-=}�փ�m����\'�s�@�U��+�~}�M��	1�\\WjEFw=}���ϟu��aG+�HQ��u��12��~k%�-�2Fӯ�3��L\'bB�S�3Z��z�I����!��4E�\\�9��x\\�(=--��\rtBS�����8z���fS6�\Z��.�o���\n���1���4Xvuo=��zS�~C�ȗ�:���L(bb*�:�\Z�ѭ%Wk����j6\'�.�}\'�ߚNĄZ���R�S��������1��O(bB��+��Q#t��s���{AM�9X����]�ZM���[-�Ю1�VYV^k7Lr�i�����~Ԯޢ��j5Yf�{���h�n7��!��Pg.1�SPĄ��t[������Do��j�}y��04�5�	EL�_�U�Y�����E�[�����-������A�����P�t�?���E��q,���R/��A1�0��4���+�<N���3��E���&(b�%7ڳS��՛�\\�I�|�H���$&c$��Pov�Z�\"&\\( �1\n�򊆉,�JG㰊�����\\�|����K�&��K/d�^����1r#�u亇rL��w����&���\\-�r�i�|QX�FVij��MO�i�$�:>)���\"���|��1�wjk����Xͦ�0t�:F�N �ʠ�g�6ʝ���/(b�Eay�����>h���z]_A���r\neY�����*抓Bq�+M�2�\"������K�|�Q����T*�����o��{���U�NJ����&�i;��&-ĄN��5Wz�O�u����ʠ��{��Z+k�ߋ�*ϭFY�QZ(�e��-����J�rBIe,����� p��D�5�)�w��4���*I\n%áv���F��p�{����\'�\Z���=}���������Wƞ��`Xa�4mz���?_�7Y�^��ɟM�A���N\'Н�V\'\'#���j{7��a�8�Ą��#��;�>{�ҧO��{�=]���̹�3��S����2�t�v��~����J�;q�q��TjE�6�C=����j4�HW��e�A��N\'Р����3���	���uڎ�@�~�fӗ�\\�ͤ�I��F���uk�W��(�1����f����7=Y��RUP��(�<�Z����dB���T{ `a�c�fz_�Jw%�tpZ^����q�$ɕ煮���ma��v��,1�Θ�������K�d*��Z<���\Zs�tx�+N,�PcL��� ׫��^�<��rCA����8~�t�E�ׯ��_?���ܫ,\n�a���]�7ۉ��S���k\n�	����˟F��o��l�����疷��ʎw�&\'iO��tB�ʿ/�����;�U������d\"�}��ի#}�ñ^l\r�X��0��P�������e�tt��ზ���\Z\rW�cʋ[��ڼɥC���H����7��/=z?���~�����j�|��+�U]H{o��㡾��;}�����*�TB>�욪b�z\Z�,;Z�����P�+�����{8,4����B�P��2���1f\Z�1�U��zy�Q��jm-������[�/7E^�9M�t6�w�������i9��@H����ݳz�[��p���G�v\\�^y�\\:�`t��\"ˤª�R�(�On\'�8f�u�+�c��]=�l���u}���T*�k-vH���w�ґt�z�[L���~��O�u����F���d����Z[k��n%�~�1���\\�t�s:�vdtw�ӧ�\Z��Y[Owt�NK�n�0�/������$�3][�P�Y�B��+��>n��g�iH�����\r�C�-1�v�_.{���Ӷ_ᐘL��T�V�>yi�a�Z�DL���n�>je����VW#u��l�3��zN�	���5B�^��R�<1��k\"�ivAyF���)�眹[�U\n���Kb�LL�bt�r��2����43����8Ε�r�>z�ԼB��sHL�U^X�ą�2��:9�4��Z������N��)�N���L��$�{[.8�s{��4ϐ.��A�.Z������D��N��^�8.W�^$���ĵy��t�?,�j+�J�X���0p�8\r5\Z��%���n׎��t��tz����\'z�ݑ^�<��n�㓑F�ɧ����֖�\r�a����DڟiH�}��L74�Y����8��2��+/��a��$�r����&\'sˉ�i�/��_,tHĄ��,�/��N�B��e:�O���T��f�S�����4׻�T?�t�o�u�/�>��2�?�e�7ؼ>�}�j�}W�Z[\r��j4ʘ�8��^�W[���.�/G3�cw������n�Ʃ�t4X.?������v\'�r��ʹ���(�1a�AM�\n<�fd�f�Q��H\Z�V�����\\�3Ą�5�꼃�R�QNb��5/U�.�<*ߨn�c&&�ؠ�~�����������d�Ru>&&nĔ���	�~J��gg2��N�Y�\0�]T�Ąk�\"��lX��>��p��Z�!�T�C�\01�\\K���	Fג3\0\0\0\0IEND�B`�',20,20),(7,'Escalader','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0.zTXtRaw profile type exif\0\0xڭ�iv=��k���r4��;����k��0x���J�!�0����c�����Tjn9[����|S�����l���^�s?�n�|���.z]��������J|�>~|ݔ�@��z��m��;{�y]W_���^?��z_��M����{O���Շ�c�+1^������s�A�b�|��s�\"ߧ�\n��������wʯ}g���+�ͯ��^w�׾���\"�����9��\'~��9��������T6�I���;.�2ܷe>\n�ߗ����Lq�E4Ӹ�<�>.��;n߯�ML�~{����>��*�o~� ��_B˄J$&Q���mq����o�ʝ��J���>̯^������Q�:w�Y����:39}�*��˧���~���~���\"���+�v<C���V�q\\�l4�)\rW�k\0\\ĽƸ@l&�]v�x_�Ï��t,\'�� .%��9�&�Lp�׽yOq�Z���2�B T\"�д�	V���)��C=�MJ)��jj��cN9璅Q��K*��RK+��\Zk���Zk������r+���Z�ܴ3t�ݝ+z~�G\Zy�QG}�>3�4�,��6��+,��U̪����&�v�i�]v�m�C��p�I\'�r�i��G����>D��W��x�+ߢ�˥�\r�\'I1#b>:\"^�+f���\"����)�䉚K\n�r����t�{�E�Ӹ��7�����9�н\"�s�~��oG	7@�B�Ԇ�q���׮����X.l7��iŁ�yRs��v;4��?�>���:��\"b����YpP�Z.a�~f�Ԡ�w���r�9�����v2\'���E�<��+g�����?м��_4M�������͟����?9�o4�?\rh�\Z��\rh�5o>h�k\"�Sf�Ѹ�S�Aa��a�esc���n��!�\\�	����笙�]��@݁qf���~������#��Վ�+�$����Í�6��VkL�	D��{�iM��4�}�3����ǥ��Lcu^�$����]��ُi倜M:t�#k]7�Խi	����_�_\\�B�ژ�eB\0X�Q�]\rf��u��)%��f�n��T��g��h��}ٲ\n����s|���6�r3���\0W��ϑ�1�<���3���؜C_a�����O�����W������idv�[�l��~����sΡ\'�?x�s\'�����N0o^84�4n)�����dG��t�=i�q�@�����S�(�P\'�\r�ؽ�\Zl��w����]�\'Y�)���˼T����޿J8$K�Ӟ	_\0�A��q������|��1�y���Ù���/Ù�g�oÙ�9�Ù�9�Ù�c��Ù�	��g~��\\�ɝ(s0?��$w-{��� p^;�Y�N\n��y��Q7J��O�J�A��`zg��@V�p�l!�a�B�O�>��z�5�9�W��l�RΤah�=]z���&f�H;����yf�Tn9˒r�d��]�om6���׹���Jy��f��8�*q���5R=�c��H��\"2��ʛ�#tdM\"���9	}�����5��c5z���=0ZZ��\Z�.Jeh����_|5���{�)�?�B	Ԋ�1��y��L��Fp}���\\�>�O��z�O��23h�����?�_H}3��lɒ��r�	�福܋o;� T�����}>�k>7���F�z,��^9hٔ�������G�T�]86�}JECn-�|��D&�cG:F�v&�ӤI�9z̳��M;����eg�U)�i���4�Y���~N��w�y���<̥,7ˀ�@`�ɮM:#�%�\n��K:���)44$E�!�쒆���Qw�\nß�\\�r�l4?���^����B����Fyxn����a�y3A���*�=�>fp�ˌ7G	%��<���_C����[ /S>\Z���k���#��<�{G��y���0_���a���;�|��w���\'~���QԷ����v@f}+�$������p>Ս\n>޲���\0~����C�+�-����{���ё#2m/��E��mkX�K��=\0��R�H_\Z��>��X����?P������J��G�bf�y3���=��V�jt�X\"���p��4����o.�?$d��X��i�\Z�ݬ�ZT[��8B}�(�p[�W��l�䗤ֻ�zoך���]�8�z׷��ҏ<��-����B������������7�g>\n<O�2XZe����O\Z+�I�-^y��Ì=\r�^׶�TNݶ�֩ ҮP�r\r�9f�Rj�j��j3��FP$w�n�f�֜=ja��}߱��um�U�<��x��q˨�񂾢�zE�F��}��!=��p\r��ޅp�Yض�*Z�ڀ�h��w{���r����L���+Nɧ�\0�qչnE=F�;�lp��X֚���V���w����7�eݛ�o���7��_X����/�\0����~�n���+��oN�UV�V��W����_�k��������y�:�,���l����ϲ��)z�k�<n��[쟓��]��9I���⯓�|�W�EF��큓�s۩��c�&���\"a+(!����Ϙ��10?3�[e3�b�X�\Z�+w[�VRY{q}.3b�H���������9΂vq�+@�`m�$��]�4��L����_Ʉ9:1���q���=B�~(�k&�b�Ipag���S������+l���������W�Q�����խڝS/\"%����&�ʣZ�&1^�I�Pkzv(hM��&�K� P~�QZ��az4�6ze�#��?�>Pмn�m\"m��\Z��\"gi�t�B�.t�sE�Z�ԹV�(��<m���!Yq�ΔS��,�M�ITy�����5�A�,XJ�n1j}�������\n��&�0Oq��v3���|��-;�j�o�J>O��B����zp��}�@,vhcri�:.���A���3wm��N����B,�\'pw����G��-\Zi��n��9w�M\Zm\n�y��R����pj��\\/��~f�f�ӊ�\n���t���6i;TA���Z�2�Z7uI��	F��G�m��0[\na����	��U�deL����2����i�M\n֟H餎�[hu�5W\r#�F�¾�X�[�_2`��}���d~-~^Rkx��7J��Qiڗ3��8jqHZ-��2�P��I��u��pm	���5&H�Xba�ԺK�Y��D�ٸ^7*�i�U%%r��C.�\n�\\����S��}0�f������_3�����DG/�\0�v9a��O[Z�:����$F�D�dUQ1�J=:�V�|�#�WI���|`�N��et�kg��ͻ�u�#���Yf���+�E\0�De0���0\Z��i׊�� �9>Ȧ&/���ZIl\'\ZH�����z\\�̩�0�E���t�0�ӟU��\Z��ԏeG�h�����Y��E%t�F�i��@\"�X\'RJ_5�!\ZYi�ASɶ��h�=e��@�h/9���dע\'\nb�B���D��F!��܁��=�����D[�.��Lt���:2�R���\'�*i�r�^�8qZ<M����w����,�\':M��H��\0�X�,�bN�����s%�����xX���X���Nx=n�D��E���/�l�X���R�R��Y�C��%���\Z��Ne�G�;�����IG�*/t�4Y[�ݵ���2����I� ���u��A,hC�����]�\\ؤ=�T�\'\"bg/��ǉ��2\'|��;��D N���!~c��#إ��p*����t��\rM�6D���z��d�O����~?��dyN�E\n��L�m&꡵L�4h�T��>�D����nXʵO�kG�����k��`B��:�4X?7��������y�1�p�8������A�����*͹K���d����������\"{?����<	����G݁\Z�q\0ކ�8�H_Z��Y)�Eǋ�QD���{Vԛ_�]��X5_f+\0+�VA� }4aLm\n�A\r��^�۴�]�*�&�+\0\"PY��)��PJ��A˵\0�7Z�W�0m7@�4�\\;���sU�\"v�l\"\'����Ub��Ӛ\0C��V�{Iw{Җ/�����{--�|;���h�2�J\rk���9�\'c��\n�2]�6s��J�k\r]�|5���w��þ]�/u`�J$&8.� ��\Z� (攬��%�D{ ~4�~�\nĂ�����2O�:�,2���1�+6�����hc����3����Q0��]\0������7�Z4��ʈO�Q�֜T��\"��iIO1�\0ޒ�*}Ldc����	`&�2B-w�Ϩ��cȿ�n�\0}��������zH��CP�z�NO_�q��;p���߁�G�0��y��A�!/�[Z���ZA%�6��Љ�.�XamﭚF�Xh|�����	:\Z�>a\0m�.wLH\n���A�h�#q���ܤ��r��hUq��U˧�@�Aw\r�y�*��G������:��fkJ�N˚z�Q�� ��@�\Z�b���Չ:6�m��f�}��8 ����ز0�S���hҩ��T�z�F�\n�\n�0���[�E�I�ҥЋ�Y�@�����-��<|��`�J��t��WZR݆�Û�5,��I��SZ�i��� �!����na�B.�\Z<o.���D0}�#�t��o��$-�9DPͦ��B�2`\Z�Z�-�L�v���p�(��s�����+��5���NO��?>��������y+��	R��Ŷ��`��82���W�vJy� �A�����R�\rR��·N򜔘�ji�2��q#�V[\n�ߣE��y�ͻk��SU�w{�N�V��*@�5�aio�<���\Z�|Z0r�\0�Z%-W��)�f���z�2׮��ܛY;����ͬ�QϮ�\r�ڵU��ͥ�>f���\"�7V,εF�N��H�X_p4Ђ�\0Nr��iG�b�B����>��ma��)��ō\"a� j;�=HG:7�Ԍ��ԡRXeWK���v�=�&�E7�?$���1G��X�J\n�ɸ��G��+��\03����ۑT��zUX��Ҧ��j����n���eu�b@n�%-�����]�OC�n���κ�����r���B�Kp��#cgM\"�d:���x\"�6�?��\\ٖ�CRMYݕ�^�?P7{\Z�-�+)E�&=��I[)iml%�qi��n�t���*Ll&bj�)�d�����y	t�s@��t	\0u���<���OԬ��@�АD����빟ʬ��F\"$|ZZ��ONf��HдP)Z��i!4��f����;���!_v��[?�g���[�8 P����IX�i�[�(\n�z�G>&����#S�}�Ż7�vQ��!t�(M5팳�?�����[��I�M��he0��..C���rvd���)�h.H���ӃlN�\\���a�i�W��Fɣ��C�J�eDA��Í#ɊC��2h>��A8��˛\Z<H�h���riv��M�;�r�w[�ߡ<�!��n�؁�iq�BU�ZQ.!�$��6BYmK@��h��2��j)���oP�2����_i/O�K� $��t[wdK�z�2 �SܴS�	����zw(T`�؉3_9&Ds������f���6����a��|qC�7F�0���>߶>�M�V�j�\'�٩��$��w��M=d��$�l���v��@0��d��fTʙ)ܢ���#B�0e�������Y��3�vS�|���\Z��x���JdH��K��Ə�G�+�\"��BY��-R�F�� \"o�k��\0t���\"\n�BS�K:�	��z��n{�Yw������>�Y�ma���P��?E�a�֩\'���R��P���{��_}����!O��JP�ks!��M��i	�U�<�7����Z��V�B�P�\0��v�������w��o�tH��!D\"�zXn�D�T0\Z�N3hߣ$/�}a�ṭ��\"��˔��|2\n�n�ñ8�\'9\Z�H�l8��^�rت��%�I���\"mp�L|h\rHJLY��u}%O V\'}uH~�D�m�0�B��j��+I�y\rƯ��N��X7\Z��d�zǀ;\'S9[��,,7�vo=9z�/h�G?�XGr�sꬔ@Z���#Ǵ�t���hzp��U�Ξ-K��#��Ws*KO���ژ�z�G��y��.�.TG�Qw�c�Os�y\'H��<�������AI�?�]�$�`�0�5�jQXh�:Oԥ��8D)I%��~R�\0�,l��EJ>o�x�����CE���6y���\0 U��O0�-$u�@=A�+gW/�9걬��u�\r��k2+��?G�y1�ŭ�|��6g{�\0О���?����3����3��>�ys��|���|�2|H�=l��V�h�M��\n����?9�U�)S�!}hK�O�5��m��[Z��f�qAKY:!I�a�b�S��\\����\"!���ZHҌ��HC�FR��\"�J��m��*�C�:ʕ����j��HI�G��?��3���dN�d���u�୦��4�}�;ئ@u�������Z/���íS��3�}7a5�L\']R�{0S��˽$E��q���;z<�zi�����&��kJ\n���\'�\'j�>���h�(FN1�V�m\'$���gF.D�����l�e����O2]�A�M�\'t����E3i������l)4��ue�TU�=��ݚ!в0Gbs\n�=���Ѥ��P�]��S��)c\\����Z��xÔo?!�g-&�*�gBؽ�D�����@��?��ʝ�-�S�S���@�l=\01YKRjS.i%SKo��#l��N����ѓ�G��^=>@ �-謃�	��\ru#���c�2�W��C�h�\"\r�!!�؈�)iًv�	e]�\r�ؔ�;�rE�����2���h��@�\'__�9;w@�1��h��:!�h�\nC7�X\Z3깟���0�������Ra��ŕz��6:ƃ�����N��.�.;�@���,A��N.�@��8�st-��6Zf!�0n�*�!)1�+��mA�-��\\-�!�*D�wϷ0D��j�b[����ʨs�3h���lj���z޸!���(j��daD���\nc�r�$�৊��%�.�{FKz����&%ق�cI ��C���<����=�z~Z�LA�͏�����������+=�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�\r8\Z�q(�\0\0�IDATx��{�\\Wy���۷3==O=-K�d�maY6���1P���c�M�<j��p*����T*�P�˦H��.I�&!�v71��1��@H0�@ƶ�0�dY\ZK�yH3�~���?dkfn�t�̨�_U�f4��ow�_�9���(�5� �C�A�Ad�I�ID&A�AdAd������q�m� Ձ���K��iV�4�=�c��F=I�A��>��ņ/lNf��L�\"��D�*<�������1�7l��o#�$\"	�P\0F6l�Ѽ�E$�M���%2]���]k�����>.\"	��`\Z�&mA�\0{X������J:į�s�w?r=I�o�g����/\\-�DWA�Ad����#:���A\"� \"� �L� 2	��$��$\"� �L� 2	� 2	��$\"� \"� �L� 2	��$Bl�Mzޟ#ܳG���/\"S��,��� 2I�\'\"� �L� 2	� 2	��$\"� �L� �L� 2	�Ճ��Q�Ǽ���ΐ�Ad�ID&AD&A�Ad�I�ID&A�A�臹y��Y�:�G�c$��ID&AD&A�AdAd�ID&A�A���HJ��HJAD&A�AdAd�ID&A�A�Ad�I�\r)B)\"Sl>\"� i� �L� 2	� 2	��$\"� \"� �L� 2	��$��$\"� t��E�����Y����b��+����m=y^d�<��!�`K�ڷD�?��B��e��u�4�/?��1�E��-��+|�\n�-��\0���sd��^�=GId��C�E~<:����;F\rH���ѿ��6\0\'�T��yk��|��2�>���ߟ�D�D�)�œ�Cd:��ㅍ�/wEA���I`�$2	B|R�`�%��o�B�~�LG/���=^�ܨ(\"=\Z�~�S�Lk��t�xa�\neG��?#2��O��<�1d$�j$|x�)2���^嘇��u@k�t�\"�\0������~\n��`�p�t.�����4��Kxn�é:4+M������+bY��EQJ ���[��KU���t~f\0��5]��U\0����s|��K}��ě�i\Z�rI��$�$�I,��0��L��	�\\s�����]��\"S��H�������6�6=ʳ%������V=�ܭ3�\0,0\'LR{�$�$ImIb�LY��h��5C�v�H�H�k+\r<�<��L�IX3�;�ؚ���4G?y�⃭M�󞹘e��o���\0TZ�\r�{w��[s�cl��;�HeS��R-��-�5�D&a-|\Z��Z�V��ԧ�f��ӝ=�h��.��\'﬇��G��u殿@��4�����7�`l�(��d;Bq�{���$��H�.�͏>�r�d�3�e������\";߱��w�#9`��P��C��q\'�6��.�qqa�DjV�|�Ϟ�|$ju�\"��\"�%�{>u\'C[�ky��nG(��?���v�H:�{�X\n�!�>��C���O܈2���1���A&��H-����/mH�\0t�b`8z�1��/Q�+��p��W��+��!m�1z��3<q۷6勾�{�s���ڹ��&%2	����;�yzs��L7�۾�w>�t;�h�I�\'\\i�a_;\"?r�k�_]�0�3�n�\Z�ڢ�cEV��9�?|�1|��E��q� \Z��i��������ygA�ƨ��30�-�e)t\0A�ǽ��O�+\n�*�K�#_��x��Ryg�zH�LB>���-��?�\r��癎��ڢ0w��;��mRI��I�	� ���C}�N�:�6���\n wd���5%$2�yzK$�5N��O}��\"]�H�O0pC��u�� 3�!�K�H\'0LE�4���\n�-E��5����x�zbߓ���h�ni�e:��L����]��K\r���c��{g;.����[���i��}�N�\Z\nE2&J�װ<�#;1H*��H\Z���y��><�w�?�[�ͭ����=��W��8��HՅ\Z��f(�Xļ����H��Lc�qrۇHfS��\n��ɩ��M\"��L�(S����]����\\{�.��\Z������$���&��K\rf_����_���zNwL���0\"Mc��	���f�D�us�LCa6�%[�s�����g* 9��{�}р���@��x��6=^���c�;/�^�����2��\r�K\"Y����t�}\rE\"i10:��ucl=4��[�8���k�7l�_��i�.���$\\��y��e��{���\ni�A�ne����v\\)�|�K�z-Uj�P�K����\\��ؗ��D�~M��m�,L�}b�ngE:���r�EZ����i�4v�H�V�^��������<3C����4�׊4q�8#��I�[i=�z��/񦟼)��wH�\'\0�9>��\"��	^	:/ҍ�\\;Lf$C\"i��\0J��:z�1������:-�kx�L}��95���T��mh�z-Ա�_h����%2I�G-_#���YË�K��9��_�%n�i�\\�����Sy����^��K�N��d+#{�i1���4�+�)�8��H7��\r��WB=u��\\�c�t��y}����g��_,,�N�^	U+��D\\\'2�iT���:�S���#m�t8J�z,R/��::7�SDk�D�~���4*MJgK4O57�H���T�\"S�Ʉ�w|\Z�&����E�PnӋ;�w��y}F�85�f�	��!R7�*ϖ�v4Ρ{D�~C�K��c�o��J�I����ʔ����� \\�P�zDZ^��KC���P�y5�\\=%2�_`4~c���ڲ�D��P����]M�Q�]���`)�:��E�~�3U��*��f��m��)�ء���ߛA���!����[v��͂��EM!��J�>BGi�W^9�1&�{lr�;0��D�T(+i�N��9D��A�;���y\r\"S?E&�ǫ�h7X1*��mI���d�eI�R�\"R\'j:.\n�\ZJ�O�I�TǗ�E�~�3\ne\Zhg�Fj(���H�T6���ֲ5�E9�bH�u�cW�\'*���M�V��H�-���m�K���\"�x�^�1��B%f��JZ�	c�R�Z�[��i����4���evD�n#2��i`%c6LE��}��s}� a(�*6�@�6<t�I�t��޵���s}������n��_ib}&�e`d���u]45^��kx�����ӭ���z�A���kz���:�J�j��|�z�����\"[��.���T\Z�n�%�ş-?06�мD����JZ���Cu]�\\\Z�N��ϥ1-���D*6(�U�Z�K�J�~@�Ԡ<S&�K��iȥI���Z�{>͚Cu�Fu��3�KO��߳�|]d�#̄�=�$1�X~D�B�sޡ2S�:_�%L��$R�N�l��\"����h�8�c�k��&��E�\Z��\'�PatӸu��*�3%*�U�s�e�uJ�Ih�����2P9����|�sƥ|�Bq[��P+ab$1-[�Z�N�l�/]�t�Ln��>/�h^��>��\Z��,��PZk��q���*�3\n/��R\'�omϧ��L}%�������P�B/�p����\\\'?V��1&Y��36����P��t���^`��<��&�����JAkt��\\j���O�ʥ����k��>���]��H\'\n��Wpθ����rG�Zy{?!2�V�\"9��6�9j�E��ΤC)W�L�;R\0d\'#����K��5��Q/^���*G+�c�~x�(���S^�s��/��c$�֗�[�F}�ǩ-F�\"��^(�x�I0�ZT�sﵒ�	+�y)��m��+��+C0PO6Pf1l�����\0Ɍ���?7\\�ũ\"^�_�=�a�4[=�%��R�w΃��p�\r�n$9�\\��s|��&��\Z�3%\n/(��P?^Ǜ�Z��4q`<���#�m�ʥ��,�Yg�oj=���Q\'p���F�!�k������e�K\r�QnP����@��y��Wq_�:�;M�^L�t�/�N\rM0��Ae\'�);TwTI\r����c�u�z�Au�J�T�ک\ZΤ��o����5�w.����2Hf��3Vʳ(T�Z��{4�7��0�-6�t؄��G}�Ne�J�d�ڋu�S^X�%�\rkP�r�H)F>+��8�C�МkR�Z�7FC�W�h.84g�8��p����o2�M���4ճl�1;�}��Ư�a�u���j��x	{4��\n#���q.�w�5Ѡ�x�RP�Z�<̾�љ�PIu1�,��Gc���	�?MMP\n\n��$xÃ�Z9�oE�>���d�d�|���e�e�W��}�Cj@�l�2����� L�^ӐuS��p� �h���\\v]Lυ��l�J_.�����������>z5�K>л���K_l\'��iⴺF$������O�Rᐺ�.�#�j��\r��q�]���L��_������F��\Z�r{���ƙ����o�,`��00���(��lx���خơG�2��_�����ljJ�7c��I`�P����]o�m������o\0^o��}w�m��?�������H��S��͎�m�ى�C&��V�oO[�2�=̟v����5��\\����tu�dD)_��{������$UZaf����0���E+d\r+\Z����\r��í���f6���Ԯ\0L����-3�a�m���pab�:JEk���2�\"*\rmi�ڏ�LW|��{���\0o��ۻ�6(S�,���x��0\rL�@%z�f��o����O�(2]Lqy�p���>@\"iq葃�O��aq�T��<�´ۀD�C�l����:���d\'��~���}��?q#��0�=�2\n#i`Z*f�S��H�Isi�C7���Z9�@t�Vd���S#�yx�_�����p�c?ҝ�˂J)�DXf,��Zu�\0��1^7ӡ��=�ޥ��1��D��z��ѷ��2k����z��<���s�^��ERsq�SL���<3e��F��v)����ťQ�W�L�ē���In{����M�d��WjJ{�Fk�燓\\�S�!g?��L����ťܳ�$��Hflvܼ�}���̻ӝ��S]�x%�f��Ss�⒫���\r��h�΋t�_��ջ=�%i���$t���׿g?�mpf��/��,_N��ƙs�LU)�U�����\\sҾ�s��Q���-x�l�rן���~�>���-��{6 �׿k?��C��=��C��/��k�)���2;򤆒(� ���!��ԑh�ʳe\n�\n�&kx�~GSΟ����¿E���\\W�h2=\'Mwcb�l�~��\0��3���p�l��^0P{��|n�6|��ְ8�z�p���l��/��B��+\rtAwT��\'Ax��V;h#�y�\0�J��X(���6��i���[p)=Zn����\\ۥ�(�;͒������L�nå:_�p���򔞫�K���.�b����ɬ�s�F���E�\r*��HgSl?�\r�s�\')>Y�;ᵕv�\Z�q(����=%�[��C6J�[��թ���8ٸXCb����}���nmG$\r��j������4��\"����|7&�P+֙?5Ϲgf�z��_���,�\r�Qs��4@)t3�+�x�<tAw$\"��۹��]�����b�l���&�v�[]�Q8[`��Yf�2K�ۍ�}6\\��tA��\\\r�ܑ!���w�3�pi�t_K�|���U�� �v㲸�����5f^�e��0�X���ӥ�]�F��[N�7�L\0���4�M V�q.��SO�c꟧�|����߳sP[�eQ��/��M���N�h�\"mD�\0>D��M�$�_��`���~p��o��8��9�v,e�Rzh�2��}�W���גL�u�жEڨ2�!�*$Qj��9�|��T���(�,Qz�Ds��?�\Z]����z����K�47����e�@���z���e�T�D��d��`MVt��Wi�(5ȟ-R:[�x�ε+y4�7q/xx��\"K�+�p*~T7b���YXٰ�qzg��?����20:�i���j��3Z\Z�۬2	��~�ohy���T��h�>N�ŭ��\nu�5f�7�Sr��@�_.��j�#���9�`��(���Cؙ��4����0/����S�#�,������p�W�2��j�~����\0e\ZK吽fX$O)H����u#���D�l��f��LB�x�pf����Kj�+C]�eg�$�z�u�(��IX���;������D��h�\0K���uC$�IX�\'�����m�ס�א�\n�P$�֣/��(Z�M$���X&��d\"�ЮT?��]��S�D&�|\Z��l�k�u����Ǔ�LB\'x;�����?T�2��.O�� 2	��	G�vw!����q�On�.2	��c���pdp��ar�(�q���Q Oxm��^��Z��)¯|�y\0\0\0\0IEND�B`�',20,20),(8,'Renvoyer','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0\ZzTXtRaw profile type exif\0\0x��Yv��D���^B`��񜷃^~_C$G�I��Kb2�p�`n ʬ���6�ß��3!�jJB\r�5^���s�W8��?�?~g߾o�x���.z\\��������9<��o�7�1�+���x\Z��Ύ���c �����gS�k��tK=�ԇ�_��9d�1#��#����]��7���t��\\d�k���p��w���;�������¿u������G��m��w�C�-�O/��_4�p������e�uϮ����yL�zq^qaǕ�|,��y��W�0�A�&��|\rc�u�q�`�mv�u�;01��p�sn8�+������/�]��O�q\ZD�+\"϶�s�z�7l���r��f��_�7��<��J]k�3��v�c�\"�������i<�=_�9�/XO�qsa����=ڗ��\'Ξ���u����1\0.��c�\'W�>�d��\\�?�Ӱ�p��ݴf��)N��3ٞk]t��@��J&4�7�B$r(�P�>cL1�klɧ�bJ)\'aT�>�s�9�\\s+��K*��RK��z ,�T�����\Z7m��t�ֺ뾇{깗^{��#�4�(��6����if3ˬ�-�H�V\\i�UV]m�k���N;��n�Q{D�m���}5���\"�u�%j����Vp3\"�%�Y ��bv�S���:�\":�f��3�\"Fò.n����}7Ï��>��Q���3\n�#r�탨�v:�?Rʧ��\0��\\i�I/���~ٱ��3t�̓b�����y�)��\rƖnm������ �5�r��F��������z��{�]2�\Z�p\r��n���zի��=���@j���ӈ�:�yo�o4������9���9���F�o������o�����_�W��z��\rN�\n�Ms�>�R��$}v��w�!�2&L���5FI��`�\0��3�*\"=*���͛7�#�H����I*��Ѻ���9�T���0�k����et�Z�Ӂ��z�6��G���u�\'^\r����A��\\����{��xd���ԣ�7-!����|�B@V��6����Ya^�\n����f:u�d�kL%��XK������gq�;�����#%�C>��|��+m��H�\r�ܷ7>v�!����;P��\\��n�c��n�7/���Jf��t��JngZ��f0g�z����v����v�y�¦��~J)�fJ�&ۋ��A\r=�|IεX���G��2�l��j�peM}H{��e8��Rl���KUI�������&Y�v�@ ^��Wq�Ug��;��ӄ����p��߇3�����̟���p�3��t8��~:��:��|\'���|��\\��� �0?��$W�k�� p^;֞�\n��y��^J��w�J�Aǣ�`z���@��a_�L�~\na�-{���S�!��^8�`f=�\rCc�a��堭4?�{�iܻ7�=��rKI��\'�M�r}j�yo�����e[w�VL��6O������\Z�� Hq���VC�t�V^-�!#h�V�̎蛔ܕM�#��g��1���\r��6聬|ᢘ��jN�������~\\��d~_%P\n��\0g���mZ\Z��IK��r|z{4�a~r�>?��̠�gh~ի�����d��_�%�\r���V79�vA(��e�k���|m���ú-Y�\\�iٔ�������G�T�5ql��䂆\\Z�1� R�L܅�t$�.�A�����g^1��W�~���\Z^V�t�iw�|F.����9fJ0�i���[c3�<�����;�:��\Z�+�#�/�Ӄ��А����I\ZB�ҍG��*�;rAʽ�h�4˹0Jm_\ny\\������z�?���d����	T��/�����O�J�s��\r?�<�!쉧@��7�#��<�#��<�#��<�#��<�#��<�#��<�#��<�#�/�#�o�l�K�����c����~���n],�]8e9��h�i�0fHK\n����j3i�#dښ�%�1v���y��ܯмE�C�o\"}h4~{�&�a�T�g�~G���M����%�7��W�������Nw[rZݣ��b1�$����[���ׁ}sp�&!�Ţ�Dc�0�dU� �����˝G����z��GCe#&$��%�s�������������[e�K��F���_!�����ɟ���ߑ?�^�9J���̝Oe��n�>C4���8ݏ�b�y��}m�\r��i�u�\"����+y�Lm�UBm�L�Cm�5��;ɝ���^Mk��0Fn��PF��u���<�B��~ʨ������zD�����|�9`a+n)�	ሳ�m^3k!k�g��\Z�myY˹�LTFL��UpJ�9zH�-ֶKԣh�����e�ce��\0�|�l�m�m���d��{2��������`������C`�\0�u4��N��*�Լ8uYj~�_���rz��?��y����<�x��S���#�\'���W�R�=��5�cn���-�ߓ�|/K��$��l��$1���t��z�i9ऺTW�t�P�	�*�HD�\n��s��+f�~@̟��w�l�#v�~i��ʠ�Xm>�J���ڋkc�JFx7u��&l�;�P�Jad��u@^җk3&�������2a޳�ߒ	��ub@���,�Q���\\W���O�(�����|*���I��6����_�E{<Dpz�tD��C\\{�?�W�+v�f�z)���4I�T�\"6��hM�ZӽCAkz�5i_����\\=�x�G���&�S\'Ɂ�=��k����&�\"�	m��\r,�\r�N�i^��f\\*(�&u.�YJcNG[�v:HV��3�軶:���r$��|km�y��{P\'�R�[�Z���*�~���-�	ُݺG\\#���>��lZ���F�T���r5���Zr{!jl����)�Z�A���)8B7�DBѓ�m����2-@\r(���\0�w���]���W�j���lmS�6��E ї���pV&���(5:�����u�D\0����JW���VG���S�Hҏ1����k�ܳM�q���\"C�@1��F���Q���@�*����U��o/��j!�kr�Ѻ��ha���V[@,.G��Uf�-F��\n�G�\rR�\ZT����<@�5�������2v�>�0��Aͮ�<D#��YW��)���y -��	m�A{�p��ƕk4I���j�@vā�T�����ί.�u\Z[�\r��Mcn�C���fEA����-j_}�:�a��U��<<�rvL���NQG��iMa������ �Z�Ȝ*�$�\0�s\Z07�tA�y6N��zzyeYU6�a��Ё-:��~V�蒥~ߪ��l�4����{�D���	�::r��87\0�AٸW���K��W�\\�#T?SO��I63R����c�\Z-X��n�N�l�/ث�(�Z��p\\�(����\n���(�*׻�4\0J��ٻ\\HW�Z\'��l���]K\rȅ*�n(N>E쓟E;�:��^DC�s�&\\�\\�7�`q!�N�8�?��ޚ8�4�Н��#N�k���yf7iΙ�u|���^����ėb$��K���cy�Hv������zʭ�約���W���hύ�$K������\0�m�}��i��ƫʏD6]\0O�Щf�a3���s����DV2j�c����\Z��y}���Z�P����a^&���Y�#�\'<�}�;��r�y˲׋6g -ۼY�QQ~Y�1�U��/ڬ�Ḡ!�܄!����{:����s���f���J�o��\'Y�r�AƧ*�[4��|`��c���,�euш4!�i,W���1+(�Vҁ�� `��\n�Z��R����BJjD��f�ۺٵ��7L���XO��Ԁ\Z�يE�P��C\"a�ql���Y�W���隵��A�0�@��M:� �Rv���\r�2������[8���6���kl:x�D6i�s3F�9p�.�xA�ɡ�����$���$�7�m\'b`3%ߩ��<�ҤX� 7&~;�L�xq����+�~�k1����,y�|��\\S��#yT3�<���}�>�\Z9J�����-�CfuDNӣ�>��;b]�2	.�UTO��\Z������+�	�Ld%ҊDTa7�}�(�в!j�	\0�����9J�3����\n���۶����;3��cұ~��]�\"�>^����P�imr�o`�7�\r�BQ9�,�~�R�������Hs؎�C�lC��OxGQg��A�\n���p��Se@�~)�.J�h�PF����L��}��\r�D��|5�&Ӗ�US�(�a�^\rI}��%��\r�i��:͸���P�T�-�cFƑL�E�0���ޡK��Ӵ�\'�Q�Xusj�)E��˥�\0;��g��l@+����E��9�Q���70-Њk�^��)mI�^\Z��F\Z���A�h��5D�M}�O]�Ϡ����`�CD\"q���2��aO�j��n���&���({ɻ@1]w�MbSu�F+�sM4  p@Y�&t쑂d5���J��o��jz�e�ݢ��A>L��T\r�?\'�u��ug~��>�;��;�_�Z�V�\Z;���Ԕ\ZTr�G��f���N���Ҙ��\"��Eq���{K��8�ˆ��Ph;�2`1�3�]��Yd����z�CǴ��5�y�����/�!�9��\\��\\��#�_v��i���|1�aԽM/N�d�a�o�z%V�֬���!�Yf�l<�q�@�oh	��GHT�_x:ZБB:뭣_�W�S� �f��C��lD\rP�@��HF�wM�B��\nO��m��;CX)F#��>�@�:U���Ơ�z ��|�Z�I;˲:����ia0�G&��ڡv��V-}\n��/2�F����$y�}�LzX���1* ]��n��r�;���\Z��[�||�P��{�py��������ha�wV=a�^]���^S��c��!�S��S���4_���\0���%�\Z�I���e��Z1��.x\n���A7hU��4Ѫ)�&W\Z���%ލ`�Î�i>Ҿ���Ik�D���#ܠ��ѥޛv�X��$Y:u\n�A���c�bς�=/!XҪE��5t8G�trW���y�n����.[����\'�E��}`�$@Zy=����Fj;\Z���[�a��R=��}�Wۀ�6)9m��4�B����I ��IsK�\\C�T\n��!]��3R!	��d�sg��O�I�3��6�Ȯ��Z��5�	7�A�%�>H����4-D2�;��p��^:�*)�g4��1̲����H�\'F�l?˼lJ>�6.���m�����7�E��I��\\���%$㴝A�T4��sc ��=w\0�%@�R��a�L[�Ѐl\rZ�C��d�X��K�!��Ao�!1i=j02�!\r�ٜ!YA�r�lkeT3\"��hY�<A���&Rђ��mَ�F\rr*C*�p�^@-�F&	�ʐ+G7�����j�Fu�w��픥�Bu��q����S%%L�M�U�\0�Y(Ng�����y�i�6O߫2\n�r:RtU[U�q2p+�1�\0�\\%��}�\0�8:Q��Q1�l�_\0˚Pe�Ƞ��$&�� �z@ɁǄ�I\Z�$� ���@$��+2����e���\0�ֳ�yX�pq׮�BG��4�ֹ\Z=���4���{�A��ꡦ�V�[K�f��ѶС0L�L�贮�\Z�F��G ���O��t�H�{�3��i-�\n_ܰ[�7-ݗv� YO�&�knj�����|4�F�.��8j�7Z>E��P;�W��$I7�ǎ��H�B4!W=E7�q�C��\0�����t��k���c*P+�:WA|�}����H�H\'�f ��&{�*�A���7=!4:˾iռO<����}�μ6�_�3��wÙ?g����g���p��X|1\\�1��Z�D�ydou�t	�Y�zz���ǅR܀2����٣:��q�Qf%�ᆯ�h��h�\n�7�2����#|��f�WF��-�]�e�a�0��f:˷\r��P\nP�:p6`)BZ��\0���Zt�f�i!1UO+^X�}ىТ<Ѽ�.���MV�mt����yH���D�+и`��J�얖Ւu����\r�ݷ=�.x���մ+:��=�h`��X�-%n���!�j\\{�1�6f+0Xm%`�,[-�;�H�37~�\r�B�����Î���4��^�,��VD�NZў��۳�]�ΞS	�FS7�k\0�W�h���5��Pe��N��\0��0<��V��n�?H\ZPj1{�{��Ӷ�m�\r*��0��hT�2 ǈ �9�@��n���!wY3�\Z�������t�(�IP\n��ȍ��\Z]-Y�~TJfX�:I[O�0X����]�W��w/<-��b�Ӳ��L�[\r�3w���0er����\Z	M�^��\0��ů�D��Pc�Z��t���N �fe��gD^��g8+���<I��`}p�T�E�З)Ȧ(<�\"�����:�����:M@��3�w;^���k��F�I�@F����	�BE0,-Y�x�J;�����\"����ڀ9�3�sp���Q�S#��ઢ	+K+g��J^{=7�wקǒ��RhC�Z�i�XO��֗��A�&��z;�-Yb�zŢcS��U\0\0\0bKGD\0E\0�\0�9���\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�\n+x�\0\0�IDATx��{�\\�}����s�.w�\\R|�mZ�UG��(p�4�Xn]55�Ƶ�\Z-Z�nҢh�HM\0�h�8(\\�SIh�)P9N$�9�lɎe�%���~,�}���̝���?f�Z��ݙ������.���{�|�;�w^�R\nAV�.�@D&A�AdAd�ID&A�A�a�07�9>��\n�=x�\"��ҹ�@U�U�9��.pz����A��O�b�6\'�/\0_�ڋD�J$��U����|����M����귑d��n�7l�lޣ\"��%��$2��d�\\+�/�{dzBDz�S�`�� �=�c2b#D�Q)B��\\?W�E����q?˴M>�fA�\n��$\"�B^��@�!ߓ�$�A�Ad�ID&AD&A�Ad�I�ID&A�A�Ad�ID&A��ܤ��4�={�����֞�� �K\"�T�Ad�ID&AD&A�Ad�I�ID&A�y0��\Z�|��J��)�ID&A�AdAd�ID&A�A�Ad�I��06�q����7<&� �<A�AdAd�ID&AD&A�Ad�I�I�Y�RXmdJAD&A�AdAd�ID&A�A�Ad�I�\rY�RD��yL>fA�y� 2	��$��$\"� �L� �L� 2	��$\"� \"� �L���\'2��&p	HZ?����R(yt�XO^�z�	�_����[[׾����[�o\"lv�[�r�/����.s�#��>&�qU�0\n����V���{䁿Z��z�9��7��6D��W[�E�~����\Z�W��s^��\"U*ռ��U>^X��\Z�׶�Ͽ��kE�t-޼\"ӡU>^�8�}�V�x8�J��D&Ah���\r�2�O�B�~�L�4z�=^��h�������/�i���U>^ظB٭��\'E����[m�-$�w3b\n���V���Y�gZ�	��\Z\r�x?p\n�g\"S���\'�G�?.�L�^n��h��c)�k/Q��q���F�	�Z�L�[QJ+�O[�N�Ua�����Ȅ�7Z�&	3�:\0�OO�)�$��V`.\n�[Y�bK&Cֲ�u]�05Sױ\r][�&��١���ȴv<���(�zY&�$f��923ŗΜ\\����J���t���Ői2d�8�A�4�m�yYƲ9\n��k�++|�\r��3E&a�|��؊:63��<}��u�����J��OR���J;D�4t ���&�yY�������6�nts\Z�\'4��>+2	+��gV�\"��So������Ώ�o?�*�&�\n~8Wfܶ�@q�C�[؝/���n����gE&a]D:W�����q�d�4�H���0��_��-����&��$\"u�E�����<u#U%My�Z����y��{�ݾd�B�ؼ��Q�vUx��ۧO�񗾿�\"-$T��4��0�S/�ķO�XIj�34GMt��Rj]g?<���~��8ѵH_�&�P\Z��믬y���Ȱp�š�ǿ��}�F)E�Y>�L��8�d7\"�6y�O��V$�~���ϧ^~��&/u�r\Zͮ�q�IX����d���}��z�Ȇ����z�_{�h�9�WE&a��þnDz�҅Mq�KM�}��~��/�O�h�I!2��4��)����ia�1[����u���w#�/�ښ��(��a�鿼q�o� [gj\Zy]g�0�l��X� M��b:��NB�6��8��x��a��_���ĒuB��޵%��Q��o�yC�\\M�v7�=���\n:�\"J�Z#�/�5�TʼY�)\'�ڬf�a��������t��i:��L��x�ջT)悀o�>�33S��i:�����v��lt]CCC�4R��)Ð��A���I�ĉ�Ac�E�ggg���Q~���<��[��t�ʤĩ�E�i�ykf��~���SY�]q�����n^tȎ�����1t3����6����V��W �y��p��&��⅓��y�\'/]ྑQ��{\Z\Z͌�~�L�\r#һ�3<{�<�oP�u�\\�}�A<�Z��J�4���=#�(��y�\n\Z�c���7t,M�@��uM#i�����h�iB�~�PIR�.��W���=�gY�ھVB��I��0I8W����o(@V�9X(�w���F�q�chǫ�E!�e2i���Y� kY�n��&����\\��a�Hb��9#7V)�8��ĔJs!h0G���x�h�;���`\'X��b�Id�c�4e������k�%�F;,����Y\\�4�;\n��<K5\r��h�0�l�-���KѶ��d�ut38�MVJ��q��(�\\P	�ת���8[��&㘚J����u�]8��o߹��$2�)\nh$1�s�<7�l�,]z2Cnw+ۆA�v2M�E!�j��iؚF�00L�;.;=�m�,۲Y<�³,\\���u�k���i��X�@ζ�<�no�9])s�<�q��٠�d�\\\'�cǏ��c8F�J�ͮ���eR�r�z���d���4���x��]T�D�غ��ix-�<]gش�Ö��e[&Îl��#k�����_�4ٖ˳5�ew��kӓ�-�N��r]מz�����-���R����&jU���6ҷ&��B���W☙�A)�(�:E�`д0M��y�b�q��f���\\�wE��t���x�E�4ɔfx�V�l]��t�$��m�贵��F��\"S�W��8�De��A���{��^���G��J�n�aв�j;lu3m��i1�f(�y۾R]�5��]�#�iJ��D���8�J��N����a�LR�c���x�BM-�]Ӂ�������̅sQĈe��u�m�g�8E�!�Z��6���2�fx��I��ҔЯq9y����K�ľ����XЉ+2�!~q�Z�L��l�f^7�%_��2ZDIJ%\nq��ry���Q�#g��l\r���͖�ǁ�\0�8������U)��/]�$����z\"SV��qą�ϥ8Z���͎l���&	J)vy9\n�͐�R�\n��jչe;��xq\0����#�	�+_,�?��k_���קDI�d��D�J�Ɛ�}��Lw)q���e-��㐷<�\"c�W\n�z�k\Z;��$a:��K����r)�v�,�}��$a6��N�p[)�iu�~\Z\ZCn3�1�q�Zֺ��P�݅\"��Y�����Tہ��\\\'���HӔj2�טl����4ٝ+t]�S�pL��㒵l,ݸ��u��t����g�\Zƕ��ǎ��e~Y�y}��$�E�ژm�L�{]��5\r��Yr!U\n�\"�4�JQj>�5�L7�`��1�fq\\�,�RR�2�<H�v�z���8M�㘹8Zv���w�oV�tz�Q�:�Z&	a����$U()��l]���`t(�k\Z�/p��s>i�R哾��|����#2����=�\\J�h�]AJ|�1�R�(�Ԩ3��i�E!�(\"T	�8!F����þ|���\"[2^G�m�c^�]��Z���9v���T�2E�>$LR\"�^�`��l�� %��H��8f.hP\n&�>�\ZuJa�d0Eԕ��&�Ӕ�\\l�u�sF�,��h�v�!g����^)s:�*�w\'/�;VO��-2���������5m�)E#��\r��A�T��D�g:�EL����Q��?iJ5�06�[���˲�0��l���,�D1u��aȲ��:�4�t��GE�>\"ISjqLm�����/���`�v�s�(��h0Y�)\r&���0`:\n��\"f��J��+E)I�$	��w�>�k>�\rq``�ጷl�b��� 	�Md�#�y~�.Y��jZ+J�w#R5\n��}&�5.�jL\r&Ð�q��$T�����z�R�@#�)%	�I�\\1E�9���l�4oؖ�j�t�T���Gĭ�c�K>�uW��.�j���8S�r��s1�J\"�T5�.�+�d��)�4��(/�[΢Q*�8��1si�ͥ�%2�zkV�R��4�g�٪�_���\"��ʩj��~��A�չN�N�z�R3�9�׸{x���u_\n�fa����E�~j3��D��-������7_��Wwj�Tsu!5/���Ĕ��j��D�y�iʩ(d�<˩���il[d=��e<��.����Cӱuc�1d�lgMR��#���e�����]�q�V�X�»�:�=Z6V��J�\r�KT��o��X6w���������k8K$�y٫V�Ym��R�dL�A�eW���q�]�\n/OO��&�g�+�Ѡ���Wvj_ئ45��.;�(�L}���8�y�j��i��}m;j5�c�t��2<�\"o;:.�������7d&I���y�݅\"��c�����^����g2eM��a,:��4�4%����]�*b����\\���N����Z�7\0�Au��o�ɡ|���a����ɮ�E��]�p[�15���L��u�ZRt�u�.a;���x�Q_v5�n�|o\rN���$�u\"u����g�\'4Mó,�-g��W)��}�-���a;e%�?ϴq2���X)\Z��Be�N^��\"S�a�¹�*@gL]���A��B�Ɛ�,��_->:2*�<�����a2�x�Fy�ZSC)�j�/�\'Q)���,k]F�Ϸ�4M�O�~˴���7[�����)�9�@��E��4���,~���4eo�Hζ1uCӮd�ւD)�QDF[�J��\\��C�E�>��\r�f����w��R^��1q&���e_.ώl�a7�gYغ�e蘺޳��ш#.7�j�#S{6�.2�iU/k5��^� +�[A����l�-�ɸ�+�=�1�y:.9��5L,ø��+�A�����N��ɧG�wr���L}J�4ٕ�pkն�T|�r&\n9���\ny]g̴w3�{Y�{YF2��3-lø���V�D�\\�kL�����K;w�{���/2=~����c�}�<)kلiJA7�,�	��JI�Ѡ�7Wf�4�i���<vyYF3Y]��e���Y�J���)�p2h�t�k;���t�\n�2=v_[�\0e������}��dY��\\nuT�_��Q��(��*]g�e_��d��\\dڈZ\n��!Gg����,�$Yӛ���{;����O2��̵\0Ow\0_d��x\rxp�n�|�T�O(V��$a&�s�Q�-ϲ�4��8��dٙ�2�i�����k6w44\r4�4M��D���	N�k�z������L7������#ò$�e�!��r�N[U�k�Z?�U�1�,�d<ƽ,ۼ,[�Y�\"U�j�fi��JӼ^��]¹�<<0��\Z�\0u�k+2�2�*_�؎L\0�>x;���kv��RL%1SI̛�:^���d��2�DiʙF�sa�t��y;	���;������is���\0B��������$):.��*F���V5M��!���Z�B�H��f><0Ĉ���)�{�7��y����π������{C\\��`�t��7��~�x+�#2�$�oE�yl�����a���{��F~q��N�J\0�f�:����̗�p�,Pm�ڽ���h��F�v����YZ�\"���\Z��\0�\0�\r�G@[4����o��oo��x�}�nG��@\0M�C�d�w�íoai~hkO�(M8W��O��*s��vY��]���/�J����f��Oz���z9�:�� ��:t��y!�x���k7��R��y<��Ρ�Ƹm�ԅ�P��{?���^eA\'����Ub�uy`�N,M�Gӓ�̯�������C총���/u�z�$�\rH�v����l�x�����y*}��}�����G��W�h	�y�\r��(���q�?�U�|��j�T��8���6B��Ϥ�n<4 cZ�R���c��f�e��^�����/v#R�h;n�6�7�_����5��ms��0�Rx�/�fݧ�&�*�����|r�����������m�j�)`\\���$IS�a���2���y�2�+����n�����}���?�9���$Ӄt�y+��RqL)hp�V���4/�K���u�*�N���C�&Ѱ���HGUc�qnė��K���I	�a�P\Z+����e^�U�-�O�&�Fm\'6�L\0O�@���TjOO�Ri�w�F��_��͖��ߵ�_ٽ���ъEڈ2|��7a�HU	N�g9V.�ry��Q�d�����$�t����v���:FֶW�f�\"mT�\0��\\UH��&a��7Q�r�2�i�Ɖ��T���qK��K����aPNvY6�ر���G�,C��U��,�B�>�JPH�]Un�V\Z��4��T�*~�3~�X57�.�1s�M��VѳZ�W)\n���7W��tO�Q��es���\r3�Xzs���~u��۬2	kˣ��`e�sa�\"NS�qD#�)�A��3T�7��u��n5L�𲘚ƭ�E�f4������zO�7W4�F�r/n��$\\�8���=�	���P����R�RMG�fT\n[Nj�{���/��喯�<���E&�W<Csdʚ�!��j�-,�=<��l5z���xx�5ٯ�$��FڂG����]\r�D&a9^�9E���x_�j]��\"�H5OX���ӭh�m\"��O����j���$t+Շٸ3��T\"�I�_���Ns��ϮǛ�LB/��5��6��Z��Csk���&�L�j���43f�P�[U�����F�p�IX�6�#�/��ίy�,�b�[��0P��7��Z��:���<�D���\0\0\0\0IEND�B`�',20,20),(9,'Demande de compléments','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0�zTXtRaw profile type exif\0\0xڭ�iv�8����sb�������\0K�U�j�Ֆ�%��\0۬���m��?��`B�%Ք.��\Z�k�(����i�p��?�?~g߾o�x���.z\\��������rx��߾o�c W=~�2�ם/ו�@����ǿM}|��ߖ��[깧>t����!c��;㖷��{�^�o�L�{�\"�#�?�^�o;����x;�o��=��oMa��� =������X��ٗ���/Ft/��v{ϲ��W�B�R�<u=�8���cJ>���������UX��cov����:��m��6��:?�L1��0�sn8�+����傠/�]��O�~\Zx��{��=���~��<-W:�`�O��e�{�o�^�[�k�1f>�b^N��4�9}�*b�æ���|��o^��`<f.,�]��G�+����xsݩa�|���wd2��+�6�+;��Ŏ�4fN\n��l�nZ���	��{�lϵ.��m�GD�&���\n!?9b�E��1��c�5��SH1���0�e�C�9�K��_B�%�\\J��UW=k���Rkm��6�n|�qEk�u�C�=��K��\r�g�G\Zy�QG�n�I��4��e�ٖ]��\n+���*������w�q��w�u�W�=���k��s�{�>�&��s]��5���e+8��s���,�N>��\r��s��UI^�QΙVÃaY�}��/�}�7Ï��>�������?����f;�)e��o��Vi�4դ_?��~ٱ��3t&PY\'�0Fmq�M��6��s0�tk��l�	�]#{� �9mdV��ޗ]�^��b[yϽK�/K����׭QS�z����#�H�>�y�_4�S���Gk���+#~w@��;���W�\Z����\rh�6n�4�\Z�٫W���T�P�4��s^)�>M�g�m~wb*c�Z��]c�D�6\rp�,�8�,jq;���O��\r��I�r��\n�$���h��`�W���Z��5��K�l�2	�R-���N��O=m��#ZL�:�\'^\r����A��\\����{��Xd�c�ԣ�7%!����|�B@V��6�����YaL��B59��r��v�XJ^k�gm���+���wio�GH�+�|\"��W�꟞x눹ok�oC��!6F�O��߹0�ݮO����i߼���+����-�+��e��a:�P��V����V����\n�B�I��C�)m�l/�(�x\r\nh�6�Kr��jU�=Jɗf�6V���+k�+@�K�.�,��b��˺����y\r��o�%Pi��/\0��u�q�^u�?�Sf>Ex˾�g���}8����e8��j�n8��~:���x?�|��g����g�1^�H.�dw�Y��Ya���5��d��k�Y�`�<h/%@r�;Q�ߠ��k0��cc�Kİ�tA&}?�����I֐FW-�y��rރ���ְ�r�V����v\Z��ƾW_�n)i&���l��\\��<O��^��e[w�VL��s���^����� Hq���VC�t�V^-�!#(�V�̎蛔ܕM�#��g�ֱ���\r��6�f#��D1w�jN�z����u����4��&J����G8H�ii�&%��ʱ�m�t��Š��k\\fռB�o��O��O��%Y�ZPN9��mU�s�)\'�´>-�v�����\'��|��a�3Y�\\�)٤�&LU�y}G�T�51l��䂆\\j�l�D�BC:�vD��H��[��3��	��s?��y\r�Y�t�iw�zF.�I��s̤`:�Lcw��f-yڑ;�3w�uP�5BW(G_��G��!I\raG�4�����UL���)�k���I2�r.�Rۗ\\��6{�yn�~��1�2����@{_zO�k�x1�Pr�+�=��3��i{�I��T�\'�d�3K|l�3K|l�3K|l�3K|l�3K|l�3K|l�3K|l�ɑU���եr@dg}�1G�z�T�}�.���.����\0~����|3�%���vk���ё2mM�����U�<\\z��мE�C�o\"}h4v{VOX������?^����C�?���Y\0}�؟�׼L����39��Q�4c1�$����[���ׁ}sp�&!����Da�0�DUPcPem����G��Sz��GCe#&$�^%�k������\Z�Ԯ_��%ķ<�|�H}E�Ԉ�Oȟy�|�{�g���ߑ?�,�)�`q�Χ2�M�c��\r�ov�{��Gh�c�\0��ņb��:w�V�\n�3�+y�Jm�UBn�L�Cm�5��;�����^M=g�Z#7�V(��qٺ��In��B_?iT}@_Vj=�Vb�|�\n>ޜ����քp�Y�6����Z��h��u[^��r.��ʈɶ�\nFI;Gɱ��v�z�\r��^޺�B�s�켝@�ۇ��g}�Yn}��f�2�	?��o^\'lޙ1����!0��:��}�pU��lj~u�2��Z����Q�V�؇��އ���c�����+�y1�?����̓in��f��Y����|/J��s��~���{pU��^jZ8�.�3�<TrB�JJ����\\������\'3��.�y�<��t�c��l+�B(k/��iz(I���郚���)�2W\n#�]��2��<X������᫆�ߐ	��~��L��T��Y��$G���[s]��#\n?�D�;�����\'l�o�!\r�=��,��c!�ӣZ���\r1U��X_ݮ�Y���E��3T2�$aSYTMl�Q�d	��{�����5i_����\\=�x�G����S\'ȁ�=��k���R&�\"�qm��\rfd/\n(�8S���͸TP�L\n�\\���Ɯ��X�t��05Ϙ����̾�������k��{�\'�R�[�Z���,�~���-�	ُݺG\\#���0��jN�Y�8��e;cl1^y�1]\rJ8�jw_�D�.�٥wV1{��7�w{&Ÿ��!;a�+̙��\\$/l��+E���2�ں��.C@��zq׾�H��B]@p_�82���Z��	��:�z���vZ��M�x:E;�Ǎ�3b�\"5��)��2Ku�@cx��t\0�xnނs�r��\Z�\rϪ�u�#���I ��ȕ��A}�+�ûd~�G}��J!�\"�/���N��|�U�Q�+\'Բk��\rDv���jxZ\Z~�%{���CNi-VN�����oZ�-���B�b�\r	N�꺓�����L�*��C�3��`(�X�?e|�o�2�\n�\'�oE�W�:箬\Zk�BH���A�#`�	*��\r`�-?��*�D2�3�!v��y�!�^*��v�.�v\Z0�L!��h������7�G���n�!�Z���tiE���Ŗ��Y!�DIiz��&����L��r]�jw�a��Sf!�l�buJ|Ywm�0�@�Na��T��Ld�C=Hߪz�\\��U�c2��X *�E���k�Ѝ6�,3��Gr$p� �v�y.��W\0TSC�d�_���z��Nr$�2l�XFA!L*5��,�{9��gk5Ű\0�!o	P�5�§T����$�i���j�L�A��Ex���Z�;`��*o�2��>f����,\n0+5�~|HB���0%}����O�N�����\n����<?�5�2��1G�0����AD�X\0E�l�*��IHoBnՅ��![[��1�!Z��N����$���aU�\\�魨�C�4DcІ|�5Nbk�et�\r��<r	�t4hO�R�s�]�cQ�;��m\\�0�\\;�CfEI��[Q�to�+x���\nBӸ\\�E��Nu^��`�9l1���Q�2$������R_;Al��,M�\'ޤ�`\\\\�	)?�����z�H���(r��a�� ⅕ es�^Buh29�e6�XT����С��r���\r��`�z�1�q}Q[��G��6P~oJH\\<�/M�?Z�\r�_[��Lz�JR�zl&egK[�.lO-)gN��Ο��?~�\"*��*��\n	�>!E�\"a;aQtT�0�S��G\ZW2�jjr:�����!�~�B��r�;��Ι4`v-$����O�{4kF<8��A�Rl���4�M[���\"K�_D��v>^#-��6�nT��J�A�D��/���n�����>���$\08A�\r�\"���������*O$X���3>nS�2Ŭ4>��;��ا��A�z@�T�D#҃�\rh5�/qO��2���\0`��\Z������� ^Et�SGA.E�YF�q]�P��HE]Ŗ��s�Y,u�H�lk��)��6�g�@�.�34����q6$�\ZǓ�{�N2M�)�0���.��k�[�A��b�������~�-��s-�M��\Z��l�>��LQ��^Y�%�OT�ځ|B������C�6_��s�IJ1�qtw�4��x�e��;i��R��;i>ڛ~���\'���Ğ��7Nn88�b·���/ZV�u!�;��l��X��\n�CguM��D���{!݊�c�VVK�J�JY/\nl\"r��ĎN�2�9�ۯ$´)�Ċ֮��T5�4hMNל=�6^$ �Q\Z%2��\0�@&�P�`&FC�\\�sQIfб!jx�:����B�F��WG�P�5*�\ZDI�NNG� V��H��\\àI�@��B����������\\�-�/��<�9\r��`-��P�X��z�6!\Z�fX��Qk5J��d�\0UnE�\ruԉ�$�^��G6��ȑ���-M�^�F�o�8�DH\0<T����\r�Q~a\"4?e���&^C�v@dc��5*�mV\r/k]�H�_\n)�6IIL+BxM�]�`�\n�T��Ѵ�ɅT[��q��T[���oW[�$3�~�(�q,k\"�\0B����S�Yd�(8b8�!�7Z�[C̒��C�%2�k�-=3Q)�ww6�sS�ܻ=>�R`׻�~n�QgMH,�\Z;;�~<m�\nʔ�n���y��A�#�?ղGZ�l�����z��4)��_\'nU�2)ukz{�Hմ^7Rol�mRTT��=��j:5���;ٿt��e�Z�/ �`f��=��� B\'A���W��2ć��:~��s�\"i�`�DOM R�\0�jhu�T�\"��l�D2\0>�j�ֶi ���O�Gn�<�& N :��Ԫ���ϗN素�6D��*Z���#u�du&�~!��Pw4��apմ�M�a7F\n��:��ON��^�k����bLL�j����P0i��\Zyz��(��kf�<g��-p�Ӱ�ՠ���eF$#\\d��\'HX�z��ʻV�C�z��drj���؉���-5;3	Vp	\n�\0g/�\'t�2�d$QO\'l�=���e$�9gdd�X�)C��Q�H�\Z�����=\0۴��\rM��a�`S����N_���2��F�e��Ԛ�^+�	���JqG��j{�^Q�����H%\"�tՐ����CZ����3gf��fv��v���]�ݮ>6��)�(Td�6\r������Cnؾ�Pr�N�C-^���z?O[�!��7�@�Y�PπTC�:Gr-B�	� �\r�M��|�a/{�dQG�.���l��[>:Q}\Z~:���Ʀyl�}��Ǵ�{����b~m�|�M�4�7[S�yo�]�ש-f�H�p(=�\rƨ�o��A���^���0\"9cQO����\"2+y*�\nr-F-`�m/�s�1K���I2�ފt�������t<�˳p2ͪ�+9I/����{�0T��G=�����\Z��\\D(P��n��Hg=�t�U�bF`h~f�Ѡ�O�����s a|Wu��ة��K��>iîB���X�G���6�.0mA�+�vCو�q�	T��e\ZZ�ِ�\0��>X�n��:�,��B� �p/�&:����tz�a\Z�WOq��o�S���k�?�GN#pF�r$���\\z>B�I,��\\h��F���#\n��_�M�z)�sߑ]Y�/$�pqi7#����-�U!�r����39T�����s�R�>%\"k�@\n6\n�\Z�����&�ơTㄿ�Y�6ܿ嚥��<Ⱥ��@�+��в3,�Æ&�*�>�z`�hL$�:a�����[-J�qm���^��|�:}���0��X�\\<�@���Z�8U���l &���,\n/;���QP�!����N\Z����:�j����Q����7�t\\�bc�R�uJ)G,��\'\n՝�A�I��6v-�eE�^�~�3��d��Oh�.�+���aȩ\r,p�\n�\'t��t�kNu������r������8J��I5��8����q�qz�4��9�nth�J������9K�e���P��X�:��e��\r�����p\'\0�!9pE�h\Za1�T�W�:�j��+�kH�i7ίt�#in�\"�Ke/���	QB��0$p�z���p����h�P�p�E���~$38@��RC����#�t?m�F))����H��|�u�9����R�z�R[S��+�Y䇯`�~(��U=�)��N\Z�:�Q:5l�!R�L�`��.�@0/��Q3P�y�v�BOʯ�]������\r\n2_��36y)\'=YW+�ɉBQ�!�x���A���g�]�<\\1)0?�{P% \Z�v��:���TEf:�����\n�FF�%=*�$��8�N�2+u�)�ڣ)�ujI녲��T\0���h��5B)�Om@D_ R�`,��Xu*� bl�B�1��}�U\\�tkSZ28[�����s��jM��k+�\0=Ŧ���	*,A�Stt�N�B�wq�*fM�X��+��y�4�\Z1%���!�����rI��e�H��S3L(�W�)�\r���!�W����vS7G׈<B� �6ђ��s1�V6� _s���H+��G��#\Z>?�p_��w~B����1�A41�f`�A��\'{�D&����(e�^��	%E4�yJ�d�u�,��;�@^��:j\0��墮b��Ĩ�I�Q��i}�ntvAۓ^2��8��,\Z����!�5�NF�VՓ���A:<<��:l�v@>/m-*mCUI��哔�F��vxӉ\0F6.�����\r#�x\nn��6X\0�eBum$��5�Uyʘ��W�HN���`���p�J=q�uK��`���%I�E.Ȯ`x�:�9����Y��z�:5�(��?�LrA`�\0\0\0bKGD\0/\0;\0�熪G\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�\r)u}�\0\0�IDATx��ytT�}�?o�m#X�@@X�f�H0&^�1^��8vl\'ا�i�8q{zR����i�Ij���$��Ib���x��`�\0#v�@2�vi���1�I�f�H���3G\Z���{s?�����3b�B����!���LBH&!�dB2	!���LB�$��ae|XL\\ȯ0�T�0Эj�q[����|-���Ӊj�U��,V|14i���L�E���Db\0�H��y�C�D$���/M�|�I\"�Th�� �2��B\"����>�p�^�4��X��A�$2�3�Lp�� 2�q0\"\"S���wr3o��$2��B�i�>1\\�DW!$���L��#d�\"��LB�$�dB2	!���I�$�dB2	!$��I�$��LBH&!$��I�4�!Z�Uğ�#�� �r�3����B2��\'�dB2	!���I�$�dB2	!$��I�ჭ\0�1��yP)�\'C*2	!���LBH&!�dB2	!���LB�$�dB2	!�ܼ�c�)3ܧ�Y��\'�dB2	!$��I�$��LBH&!$��I!���!Z�Rd-B)��LBH&!$�B2	!���LBH&!�dB2	!��(4���)i���,��B2	!���I�$�dBH&!$��I�$��LBH&!2�lɔ=n^\0Z�H�����GL��_�ɇ�)�؀��ˁ�ıW&�?���\r1Թp��u�T�����>��*�Ǭp7P,L��\n�2��`���}tJ���WI�t�����g�^���}u%~����*�f^�ܒ����9�ט��?O��ID�h.v^�iN�Ӌ��6��D�x8\0LڀVE&!��L\0����΅H��>8�ӛlz1�1���#�����7YN/�W(G�� p�dJ�ǀW�L�\n\Z��؁��6�Z2��5��ҬI��@,;��\"s�C�w$Sꄁ?V\0/ǈ�K�_��X�:�E#aBA?~_7���p8D,��m�p\"Ji\0\"\rV\'^f)�Uaˀ����\0\"�0�P�����Q�ۈ����=�v��j�,����<e8]�����)�fs`�X�ZmXmv�6;�5Q���P�Fɔ;�+�c\\�:�u\"���B���lYw���G4Ҏaذ�G�*����wQ%6���O��c��ST���JG,7����g�7��6�@,�Ja�/��xƸ�9���jj�ɖ���婴f%�_�8��*qzj1z��35f2ފ�pyJ�ZmFʇ�$p�\"�H�\'�;�ͤ���w^}�û��p�*1�.�E�	ߧ�cGN��;��j3n�|F����]��P�����I�H\'Z�~�3��J�O��}t��Ok�7�\"��Y��U4(B��\'�R\"�����x$J�e,v�D�J���8e��d�R�O2&+�gS�#�bQ>��RR\n�!T4�����2g��F�W~\n�@2�������+��\'�&��1���唏�D�w4ť#)*���*�f�c�;�����h4B4!�����頫�m\'��|�=N4=��`��>�Z��7<�j��ar�O25�.R���о�Y��g�N?j�w��]D��ZF�\ZG�wd:Q�S>��M��w8���Ģ��M�M[�0e^*�\n���$�f?��Ԧ��n��~ӔT�Dʹe�7~�Փp��sr@��N��x�mo��H��S��Lf,x�/\\��Tv��K&���C2\"����E��vp��.�{s��}��4ު�\\�/�ZMb�������T�\n�E�J3D\"a��w$%R>������o��+�b��=w�iy�5O~�H��̋}M�$x�̀C$f�?��kG�`�,�ukm��zZ2�\'\0o2	c�/�_x�#{~4dx���\\r���	jy�7������\0��H��MM�ͻh4Bow;z����7C��\'L����&�w�����l�M�ӂ����&>�L�.\Z�������i;��c�����-����>�_�i%G�1�����$�h�E��t�|d7����x�o?��ty����I/��F��c&�I��$>M(�d�a�}�\nm-���P�v���Gg���]�Ϝ돚5^�D#a:ۏsx�fN~�VND��z8�\\OK�Z[��vl\'��z\"�㸊�㭜���0q�����_QI9U5����~$�|xSg_l6:m�L�X,F0��XG��P`g��hؿ�;�����9K��c/=ki�[߈�Z��⛱;�i���E���a�j�����9�B�d*�Row;M�����N�<z�;���:u�~Nп���u�V��z�+n�aZk>x+�&�n��ט�0����$�\"Hۉ&Z�w��pS��?�������7�$�)\Z�����*OqiER鶬�����d�5�_ÓL����{9~t]m�[�*\Z�P��MV?z9n�9c��m~6����\'���\Z3Y/�Lj����Fk�.\"�ƌ�y���V}�?�tiZ��\\��%��?�����{3u�V\n�M>�3.�J�$��z����=�{��s9���Y+s:2E�!S��6�e������x�G���e6�NO�_&Eܰv���K$S�	��lk�d�n���!Q�ʚ���)o��q��6&\"j%S�F�p(@ow+=���w�]���-��Lo�x0��t$�u�L�$S4���M��F�=�C��e�n�v���ʣa�k��1�Ի\\2�L@$���N$t4��J�J.��G��f~���f�Z�Li[�z��LF4&���k#F0�˻h�j*ϫM+�=���m-�&� �\n�0�F�y?;���_43������m�I��7ܞtkT2 �p�h$���%�K_c΂����7�&ޛ���w�53!�\n*.�D���,��2�Kn�3�_�v^�>z���V&�Y!�\n)*E��݄�yW6���\\u�[�N�0��Nkd㋙Y��� �݂Q`��A¡���r�*��e,�گ(��v^ݝ����]i5�RE2T)D(�#\Z\r�M�J+nf�-SR62��z�;x��{��|y0e��y��g�X0,Vb��/q#�n}4#\"�t���K��g2ZF���\n�h4B4\Zư8�,���\\���(*)O�·���sw�u�A=&�T@X,Vl6g��*V�g���2�����_I��Π�_�ThBYmXm�A-��kWQQ9.�|�mb��k�z���\"٤m����Zm��N�}��0~�L�� �|>��:����D�y[�$�͎�]�����]|k�y���JND2-��X�`6��ͅa��|���}\'�����M���U9+��5�$SA�d��*�]\\	F�G�&LOo�Pg�q6��=g��V��E�d*0lv\'.��՛�}��������-�3&�2w��d*�f����;\Z�=�2��Hy�X,��-�䴼U�S�M�.�\nr�S��Q��A�=�5��nB��9-�ʱ�&=)�\nQ&�\r���͓�ɮ��r~����d��L��s��pz*t2�a�S�2=�Q�8��*j9�X��E���7?/2����˒����L?΁��* �;�\\�\"\"� vG5�A���ԛ������A����g�����x?`d*5��n�5�`�ek�L>�0��LC���7�x\Zx�&�o�1�\n��>�2k���?�L��Y�?�l@�.�ݯ3x�?@Qq���|��\\[�4<d�$�|~�9ٍ-����Y|��;�$��o4�7��� H�*|;�`0�}E�^�O�û��Iao�~���ڳm�X�hU֣RYy��M�龎 �?=���M�f�k��YL��/������H�aBS\"*���%����d�ek�Dοl������u`�Ф\Zp%~/.\0^���`΂�)����O�ϙ�G��ąZ�4��ө��[�m���\"�d`�\\W�#{��E���֜s\"�P�x(�� �\'$5�tD�8�����7IKÿ�Պ��nލ�\Zo6*=4�d�#O2��f�[1�ɳ����\0=��{��U+���\Z��-��j��8]����3܂����~�L&D���_��l;g\\�.�Id���r�Ͻ����]9��9�Y�+�����~R����>�Ǥ~O�.*eڜ/᭨f��Z=?(O��_�^���N�O�u])�dڮ���8�n���	/\'��đ�D���B$�ד ~��%ʇ>���!�a�t������Y�(u��r���j%���P*\"��K�I�}���U��G�,�=%��0�X�&��(��e#�о!5�7c�S|��[���N���1P�.�dz��\r|5�����j��t�\'��S\\N���9ָ���_\r��_v�V&L����Oq���,�ׁ�Tu�W��/��F�漚�4�ϥ����v��էP�Ӭ[~�#�4��b2u?F�ȴx���n�\ne��p��;�P\\ZAEU\r#�L�`�4N4�B$T�7M�4�ѩ��M7�c�X>}f�\0����?�X�`�Oۉ&���o���.�P]��t��OE�y���9���7:[��)�\'�d���Mob�F��v�Ҵ���;��~��C|A̗�he%Xl�N���e�8�s����1(\"�L\0��RC�p(HOWm\'�8qt?m��v��@O��IbQ?�XwʂF	V��jB�f���g�¯3�v.Nw�uPE�g�Δ�:`	�U��*S���6�\"�0~_7��Nڎ7�~�����F��z��� <A,Ip$V\'�E�%^��������1<%Ռ����jfR\\:�́�fOW\"�\'�6E�DnY<�\'�[�(U���C>�A�]��t��q�V�NZ������Om�t_D��/`�:��������cp8=x��8�nl6;F���ב�O�TH&�.5ħye�%�E��b�+$!\Z	��sY,VN��P(�h�8����:V�\r02!�g6\\A?��%��k��L1r��SQ�Dg��I�v��Qt?�����xf�a��t4���h4�)\"I&1��D=<��#�8&���\'�ٗZ��V����/�4d{g�I�*���;�s*�d��	�+��5@������K&�	_��J�x>Tz���]6�I�L\"b}���YM���D�m=�����%��E�z�b�#���<t���|���@�kCkr�2��P��巰�\0\0\0\0IEND�B`�',20,20),(10,'Modifier','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0�zTXtRaw profile type exif\0\0xڭ�iV;���k���,-G�9��^~�,�)���\r��RJw�q�Ĭ���m��?չbB�%Ք.��\Z�k|S�����^�|>��̾}݌����%]��0������7��x��}���@�<z��e@�;;�y\\Wyw�n�7��~[��_��z�������1fd<�[����Ex���5�ϙ������}��v���\'��������¿5�����d���6~l�c��gd_�uo��{X����e�u������y,�zq��)�y[�#�/�}>����x��1���a�m����m��:�`��-���s���Z���\r/}����~\Z_���k����\\�o=��p�i��Y���݇��ſ�xho���ǘ�؊y�3\ryN��\n����i<�=�խ��ȱ�c�����!z��b�?{��W0ם\Z6��\0��{G&c=����&{e粵ر����I���Mk6��>��toޓ���Ew����H�d\\S}�Y!D�\'�B��c01�s,�Ɩ|\n)��rF��s�1��s�5��K(���K)����bM5�Zj��q��Ѝw7�h���{豧�{鵷A��0�H#�2�h�M?I��f6��:۲�PZaŕV^e��6���;��.���굇W�z�>y�k�ه��p�˿���9�a\'Q>�c.X<����gW�!8yN>��#)��k6�9��cx0,�⶯���/�fb����g�3r��9#�=<��oxm�SQ�q��P6��ظ`��JSM���O�{�8Cg�u�c�W�<o#�Km0cK��0����� �5�r��FfE���}����U\\l+�w��ci �5X��U\"j�U���yyD��_h^F�����v@�ٚ:����;����;���W�4����?��m�<h�5�*�W�\\���V��i.��R�}���.���>�TƄ	�`���(��l\Z�@Y�qFY��v��������H����I*��Ѻ���9�T���0�k����et�Z�Ӂ��z�6��G���u�O�\Z�wS���#�>. %��Ȝǌ�GUoJB�!~���ƅ�*���m��e�9^���x�+�jrN����������`-��k�W����0��.^���W�Dv�)�����x눹ok|lC��!6F�W��߹0�ݮ/����i߼���+����-�+��e��a:�P��������̋6�,��J1�4S��^4Q��\Z��3l�DA�ժ^{��/̆m�Va\rW��W����]�#X�%�vO�u)+���=�f�	�@���\0Ȃ�m:�U��3�y��2�)�[��`8s���Ùߧ�/Ù������g���p�3��t8�/�?���k�3���x�#����A fa~�g�I����+�A�2�v�=g$����,�\0�1�D�~�*�G���v���.þ����$ºK�NW+\'YC\Z]�p���z�y\n��Z�ƻ�A[)2~�g�i���^}U�����\'�M�r}:g�<i\'{�3�m�\r[1�~�Yx��G)n�s�� Ł>�[\r��m@FdXy�T����HD[�2;�oRrW6i�<S��ZǪR�7��ڠ�����ի95ꃯ����c�g�����(�R0<pl�X Q��l����*Ǧ�E������}p�T�\nͿ����R�8��K�䵠�r�۪&��SN �i}Y�����5_O���úg�ܹ�S�IKM�����s1R��İ�\Zr�}c�A$Y�\r��]��\"UGoճμb�\'0�����kx�*��L3���3rqL:.��c&�Yf\Z��56k�ӎܡ/�����ʈ@��B9B�=8\r\rIh;��!�(�xԬ�b�wE.H�_s4�\'�˹0Jm_ry\\�������ul���n�S �}�=\r�yL��PB�q�4�DD��D^�!�\'ASy�ȓ!��,�!��,�!��,�!��,�!��,�!��,�!��,�!�_&GV�B�V�����5�����RE�ݺX\"Ȼp�r|������a̐���ۭ�f�FG\nȴ5�K�b�ZW��p�@���������YM<a�T�W�~��x�&�H�����g�b5_�2�Jw�䔺G�ӌ� �x��oIs��_�������:䋺�U��UA�A����/wy��O�u*\r������z�\\��ZK0����5��]�JK�oy��.���S#�?!�m���ɟy?�#�Y�9R���̝we�N�c��\r�ov�{��Gh�c�\0��ņb��:w�V�\n�3�+y�Jm�UBn�L�Cm�5��;�����^M=g�Z#7�V(��qٺ��In��B_?iT}@_Vj=�Vb��\n>ޜ����քp�Y�6����Z��h��u[^��r.��ʈɶ�\nFI;Gɱ��v�z�\r��^޺�B�s�켝@�ۇ��g}�Yn}��f�2�	?��O^\'l>�1����!0�@���Q����G65����fj~�_�L����_+~�C�։�C�p�1�OY��ټ���_EK���̓in��f��Y�?��^��9H�����Ab���T��z�i9ऺTW�T�P�	�*)ID�\n��s��+f�~@�{f�w]6�;xn\r����j��V*�P�^\\��P:0�����51w�Se�FF�X�e }y�63%Ց�ß\Z�C&�3��[2a�S%�g�>̒���o�u9z�(���.����;����1�40��번c��pN�jAG�;6�T�����]��4kU�	g�d�I¦����ƣ4�*M����kҾ���z��2,�\"_{+,��N��{P2��N_��L�E���N���^P*q�x\r�q��`/�ԹgI�9e��� Yaj�1Eߵՙ}�#P��[���	� O&,�h��>:�KY�����[6��u��FP�#��\" r����I$���l��w5$ׄ[���EӨHǉ�!!�n�5;�]���)�z�g�)]tt�D�ӣ��2�\0�k�Șk��,f�\nP�L�eEuG�H�ɓ����7�nU��3ڣs(��)�բN�l��^g�%_��|s$B���L�7)��l!\n��~����jɨ(�[�+����1�\"D�LY1[�$#$��ܯ�v���L����Y��\Z��/��\\�6�0�ňDY�a5�%��#8��JJ,�	D2w��:}K��bP�g̴��kb���6��4�P�]�ޑx�H����}#I���J_8��F\"U�����%��\"6�oX�2�Br�+����)t�\0;��PI��Uם��Fw���\0\"�a>n��]_�rR�4������Y�3\Z��̼L�_3���_3�F{L=>���D��\n,}\\�Ƥ�\\m5�PN(�!)�� w.���;����!;q�4��/H��D���!��a#����lp:�WQE�����iJq�8.b�N(+\\im������A4UY!C\r��K�WtjF�^�\r�(�j#��S�9�zQ�\Zr�x��\\�o�~�Y����K\0s��P�A,����L�by�>*v�X����b\\V\roRa؅x�M\0��&a�4sΟ,s�d�mx�9�k��[�kfF�U�{F�P�$^���eQm!w���,H)je����꼚����0�>5[�\\�����ˉe���IYG%�g\\�2��s�NZO���3�^�0�h�}F/����C��,Em]Ddƈ3&4-9+�#�fF��b7ԶT\0�[i�����^�LX����1�DI1jD��,�Ѡ\Z���p)�ЬE9��P����K�����\0�`�1�\0��>�l�c��`c0�)W_`�wE�C���)hm�%9��j�����.��TR�����R��������n�q7�\'���\'�6�]���A�Qg�B�t��O]���/�0�����T��F�:���T)�	h�n�:y40\n�M@(�)�f�%�,1@��ܖC�\'��N�u�ìT�11��~�����\0z:\"&۳�D�X	��=�E�M�0E�B����&����u�O���8�]���I����Ek�fHdX�g鰜�.�!��!���Cz��P��x��y�!\Z3���\0ī6>���(��Ź\nq�:U�!���{8��6��I@�\"���2������EIW�/����r5�@H�̀�D9�&K<D��VF2dȒV�<\'\'�\n\"=�!���6�F��R}!I�(�D�τUH۫P&�:��`m�ڨC���\\��#��F����쀷X�A��Dx58<�(�D���BJ/<?�\\�w�Fɸ�I�<�:{^��\0�ࡸ�¡���JC0��wZ*\'u^\"%�b�9�?���L��3\'_Q�-SLp\Z�	����Pu�y���m�!��\ZpI�g����p2+�Q�b90œ�ŪvWm�&?�[��1������4��Xݰ6��Xݰ6�^@��*��h�fn��X0�PPV`��5�C76ҁ�H�aW�#	)G:����;��B#S\'j�bz�Iۊ�����x�pJ����lB0��N��0���B�΄�u~�x���J � \\�� nL�����թpN��ı��V�N��G�oe{��$\nZ�H�� �>~�#�7a\\\n�SN�ս�@\\��=k�\\QF	\nէ*bTw�nL@7B�JW���[�7�����DUl04�+~ �P�HK�� C� \'���*�Z��d�!��el��|۵�5�r��f��+jըU@��\"!�C��Z�����V�&�S��q�z����e-�̤.`;S�`ɶ��;��w�N-r,�*�;X�<�2K�`G�(�INx��TS ����	�:�5��&���\0�WK��!y+��b\Z@Ҿ&�zZ�`ޅ�\nwu�Fg8�\'��Ix�H��j�\0�f�j���n�Sf\r�D��y���9��=6��	\"�&��[D΀TU���;c�dՄK�kS�y�({�鄝��܇\'J>ݢ2�QK�=���H���H�LRq�*\0�t��ujJ�\',�<G$�#uE�%�_$1J\r���oF�M\\?^���c3Y�X�Tc;Gq���]e�����u��eG�8�l���ZC�,�\nB�wZ�)�Rբ�w#yz��^��5�f^6�o��4����_�zL����{Z��K��3)u�MKZ�����S:����c�@�NM���ҥNY�\00������`j	�%�@vKVoEրd<F�N\0;��M�X��y��,J#�K�Fq�nh���N]B$��b6�6�7�)��Ga�~�)��N��P�DJ��uG5a*��g�F�*����hn��6���P��o\\�]�Q2u\0����*j]�|��/;Ԃ����\"��(O�>��4,iF�VZ�dd(��\n� ��3�����=��!Β\r�Ē�������1�\\R]�Ca�5��/�~�Ap?�|�cH�J�2�E�$�zը�Gv��Fd��ڔZW����p�r���i��\'@aT����vp�ڨ���x����Am��R7�wx�:?���\Z���˒\n��\0�uP�u�3/X_�L���UI��m6�\"\\*<����O(-�D�#�>{�z\nV�#-H�\\��6�����L�P%����p��RX��s�٥�V��!A]#$#	�E���h\"����h\"j�?R������7��\r(y��Ռ\Z.��A�	K�	�f{9,\r��G��R�:�AG¼�\"��ȑ�O�DW�iz�*�����a\'qB����� ��󟞪{����`�G�F�܇\Z��4`BY]tN�{mDy�G<B����4�|t�U���C�`V��x�\\\"��/u[��؀���D��\r��s��\Z=ź�h�QM�s����ﶃ�۝>uY����t.�����h[W��6�/�2_6e�\'���M��~�cb�M��I1�a�v��s_9S��vS\'����=5�f{Il=�7b��B������k���B�\n����Ć����J�������9׋O)�z�ѐs\"7�J�W�RJ������MQ�]O{2�I0�xx�x�D}B3���x�gԦM��\n(-�nf��Q���ے6{�O\r|�;�E���\r���z�	�\0pHOJ�n�q`$A��E��6��&�i��\Zi�%ʉ��G���<Cg71D3�v.�-�	�Ȋ����h�u�����x��މ�����Ռv�V�ƵE\'UT@j�J�.��KE�(s��\r�s�i���|����3���P-����F1����GSmփ���x\"��:�ۑ�)S�W@\\���+C� �Շ��2�:�Fi� :����VB\0��\Zx��9���/m1�~��+u�Dt��S�X8`1��I�����+u��Q�p,^BԮ��\Zg0�(�j�|Q�L;whMԃW��#�N$��7���G�R4K�T=\r�}�	�7]����p��4Dl����F�V�ƒ��ʃYP@�6jϣ�9�K����.���Mu`MBU���PbM-d���\ZWޒ�ϥ��xz���M��h�=�����O�^:U�~3\0�*�^An峞�ޗ��KO#�m:r�mnsM�2V_fr�\\�M����W˕���U�䉺^��3Œ�ܧ*���^lk�6� ��8?�9oX�v��8�A	?�h��b0�2������<�o3y�o3���u0���R��<�K�\n-�B���*��T�?^m;��a�]�U�t�}4��n\0Σt(�k����](�62���<eo�X/�I�+��D��HȻ`]lP=��(�[�Q B�j����t$\"���3��6*\r��M��р�i�D��I�̮Qj�9�� ���6�v���ǫSE\"^����b��2�������[y�B��aԥ�p�u�\"?�XTIL�7k;����bf@U�́tm���I�(A�c�Q}:���ܤ9�߆N.!�Ƶ��umhzx^�6u�m��s%E@�	�#sf�u�_c8�ߐ���%�vm�m�th���:b qӣN6\Zmp���y�zJ��ƞ����\njƹ�8\\u��9l��~هxL}���~�vh��ݝ�H�v�ˁ����i�gV����vn��/���6�A1[��	j:⃮��t��P�藿�r~5���ԯ��y\rj;E`C-xxH+c�D\"�#��t�}G]��X���%ҋS&8-f���j�D���������f�2~�V`S*Y��\rG9\n��.O% �<�Ln�����{��t��B텗-X�\\8*!����/[pi��޼N4umԵ�M�C�L�:���J��`�aD~���\rVT˯S�-���%8$�\n������� 3W�X��%��[� \rt�¥S���(�\'k�\'&tFGQЬ�u��Y6�.�xjI@���K��E1�kQ���G�5L�}oj��!��ڌ�C�i{n��s[;�	(�������$��d[���fugw��?�5=}NW�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�)&�Ya\0\0�IDATx��yt���?�}!	kXC\0���TZ��E@�\nV{m������h{zzګW���Z�����E�=W���uC-�!Ȟ\0	� �d���Cf2�;�Lf�|?��!�ْ�������u��n�=\'E?!$��I�$��LBH&!$��I!���i}�=.��@V��\0p��:�&�VQg���?Qߤ#A�/W���}�#��U�d/�~\"�D6H��<|G牰I301Q�~�$�Dݡ�o$Q�ys%��&��5J�NN�:/D�(O�dZ,�DxQ���a:DC���LCu�(�dn��E�I\"zLMf����/�4�U�$�d�f�~\"��Q2	�dBH&!$��I�$��LBH&!$��I!���LBH&!�dB2	!���LBۤ�����=���$S��\"	����Lj�	!���LBH&!�dB2	!���LB�$�d��!-	>�[�渒4W�T2	!���LBH&!�dB2	!���LB�$�dB2	!,�anރ�5�ЯY��\'�dB2	!$��I�$��LBH&!$��I!���E�	��5ڄR!���LBH&!�dB2	!���LB�$�dB2	�lhJ!$�mЯY��\'�dB2	!$��I�$��LBH&!$��I!���LBD�ɒ)v��j��ߕ��C�֭۷x�U2E�4�u�U`&Ph}�B������!�:��N��g%pm�c�X�]��1&,\0�S���@V�_#���~��\Z\r�):���H���B�~�8d��k5Z�z$mڬ�r���sn���\"4ٽ�Zí�n��c���7^<��/��\0��B��n�,�p\\�$�}��1@�W�k��zC�dI�-^�^�ǋ���J�U�����V��l}����F�d�?E(ӟt.�1BeX_/���b�`����@�{`=�ڣt��:�6x���\n�&����^E�-��u)�37���\0��_\0���3�f�<�1˭�D\\Nsw�-�iՕT���0��}%�LN�F`.P�bʥ������;uV�A�\'��@�I8�-��l���ޅ<l��*٦ϼf�\"%Yv�-\0�G�g&X\r*\'��B�1s�r��A�Ih<c�\0Mu�[\09�`��Ƀ�HI��4HK��tHI��;n%��3f�J2E���3���s����@�fX>;��[���i�1��B^!�Bz�+o ��!#�_>dfES,�rc�l�H&	���SD.��m��p����R��u{%�\\G��<�^���h\nO�Q%0d���r8�����\0���L�dvx�N�����?	?�r����ߎ*#ݱw���0x2�^��B�Y��&�\"�����L�g\">\0/?y\nEC��\n����0�˱�G���P.�/ᄒL�{4����6�I)E�`��M*�Ĥ8=�j�\0/I&��0�{������bM�t��|;�?���h��VjQ8�4�59Ez�[ņ�:��&�H\0�`��fl�O����W�>��x�[\"}ZO_�X�ƹ��Ĉs�-�T�U��4�$�΍FB�dޥ;���^H�򯄉?��s������1x�/�T8��r���5ɔ\\���%һ����f�n���2\'w\nU�x�uhj,T� �������=5��\".8t8a�w{���A3�p�efz��9�rA�h�j	��H��9p�o�8z\r���OGR2%e��:����	$�l���0�r#@n>\\y\\�\0�\'��n���Ú	5d|~$&	%���y��֑n74��W���_$�H3���?�!=\n��k��VX���p2�P�#����)y)�ݼsu�������?�D�<�_��V��xg���yӺ�4�B��\r�%f[?Ӥ�)��&�g�y����fvw��Ύ}��H3��K!--�H�a�bhx�$r.��Q�	��u8�X�����)�80Q%����e�z�����?�1��3�D�H�-���A�۝\"���=�,��q�M�`	��e����,��㇪y�Nk�����[p�up��_���s/2�]E�h\r��4��i��0�0�F���4��c���ʑb*��y�BE�)/%J&�I��t�w|�ޏ�H)�0���\"mZ@�o�\r,�R�` |�V��.߄Z�h�&_d{OL\'ɔ��;�9A�쇝k�y[|��Ыav�*�ª�$ҏ���sƸ�/t����{�����.Td<,�Dg_��*+�v}��x0�&��P���<���W���`��P<!�ҋ���չ0�Ns<��Ok�O�ȸB2	�$m3�k�?�/-�vi�}&����I��5�\"�z\rS{;8�|��R:������I��oⵜ��]P�)�\"-�s.\n�Hkau�D\Z}��#K$��;Vo>�>럺�j���\r��s�${̐Lj�A�	��ڪ�\'����9N�M�AiA�Dr��t��e��΢�#��8�L=j��u�5B�l4���}��b3�e�ax\r�J�d���jwƧ��I�s�%�:X��7������`L��D��	�����s�~ڹ|û��^*���\"�4?�|�q�dl�5��ڃа+��H���a�#��4�V��(^��e��3��T|�%�ss�`ݣf�yK�y�GuΦ��t��v�|�dJV��p��Lr���zKh�6��D��h^誝G�����H]i�]0�����Õ_7_��#T{��y�Xy���S3/YS��\Z���\']���J��]D����iWS+��-���4�n�x���s�a��r�,D���t90�jH����a�WG��ao�&�̅!D*���}\'���f{�v��E:rV.5U;���[̀�\0��vCk3��w�����\'��dJ�d�l��Tm�#�6��U]�H#o�g���\nV=\r;��i�s�o\"yw��|�=z��~U�Bɔlt8�����n�\"mYo�H]醅F�p\"J$�]�D����OÖ�᛹�j�~�1�)�p8̭������a���Ejm6�e��i�=0nb�=\Z�n���U�\'Ҭ��D$�!X��o�<���~�ɔ����)6��ؽƈo�\r���������e�\'Ҝ����U��O��ei���[���������l\\IB2%]2����5F��Bɤ�\"����\\�w\"�Z`%\\\"�^;�\\l[\Z\"�����m(3W2%[���	Zbش[\0%��K��߃�.�S|E�s�;\'t\"��������\r.3��jYd�Խ\"�p\r�&�j^kc��\\��f�m-�$��&��E\Zu��oL�D���H����\r.��x�3���!�)�p���G{��ӓ.3�$R�%�_�Hv��G��&R��4}�O��Z�Ij�%))��u�EO�ѷ�a���U��k�.K�햿kA��AD\n�H+���/�\\$���%S2��0�����<�Y�6��\Z�/�i��<�t�4т���}�����T���LI�L�����Q�YS`��}]���>����H��O���M-�D:h��/�e�dJ6R� =��ϓ[���iu��wwiV�D��veO��Yl�?��\'$S҉�	�=�\"�#�N�_��l7s�����Hs��H��/c�&O��3���H���@2%i�������\'\'ބ\0�d���e�S�l��]p�ʬ���T�)B��v���X��f��gr�>Sz�@G7O��/����r��P��?�ačf/�qg�[F�]��<~��A��Y�T�v.��H��Ij��@V.�����K ���\\���֕%_mqǖ��S4x*_�i�L���0����6��\"�>�ɔlddB������I�B5���F�������j6mII5�o��y�2�DZ��o�8�`���&L�o\Z�f��Ȯ*/��*���>��;�]sJaT��h5��G��5X�r�!g�N�����<}�O��y�Hi�EZ������K�Y\'�����W\0Y���E��b�_�.Z�WB}%����vd�vN��:�:t̼7�HeK{G$����yL2%#�i��gƚ\"=!y0�b�+��~k3�z|��\Z��E�V<�i7���\">\0+׻U��\\�G~,��������\"lJ����s����~l���釰s�o���H��v.�g�V�)�U�e��dJV�r�p�٦����.Ӈ�.��ua�,o���5���H��O$��vCٓ��s�;���v�t�&�L��9�����^!�,]�\Z	M�4�2�*^�>���Џu���Z�&��fÕP\"��8��\\����yzZy2������lL?0ɺ>����\r�\"h�B�����a�F�\'�#҆���`�=Pz~�>R��G��HsVD2xC2�t&�`�\0^\0��%��|�jx#m/�a�J⇠�:���]\'��R(�\0ƞ�\n�$�x��	`����d:3H\\^_?	�	��$;;.x6��f�g|�Rq�\01\Z6���R\n ��L�1���qP8���NM|�K�~���Q�Ev�h�%ә%S���k�ؒ	��ړ)�F�kƧ�R8�����pp=�	�\'�ĩfp7��������v��Jx�18�J�&�θ3��_��#��6��6�(|���K@�uy��_⊟�>.m0��x�|�F�����`hQg��D���8��r|E���4=��P׿l����\0�[T�~�ym��J����}��a�%0d��eN$���Tvl�����W㻌b��#9z�U�Q2�!t�&8|���uX22M�jy�I�%�Cv���[�N���z��2%�]�0W�h����iE$}%\0�8�L}����a-@?�5VWc�hgπ+��\r߀�/H�<7�wƷmy�fiF�I��~�gP�n���fl*��Ns�u�]�5P+���t:n�6aJ�R�>�#n{~@���M?(5զ@.hm1	Tsvo����{�iWd3.z���dy:��WeZb�u�qڒ	`X,�����=	5k dd�N�ۤϱ\Z������!ԬWS|�ov�w�GG�JK�$�Γ\'Q&-����c�����>3:����vA��;lM5���l2��<�Qb�O ��ôY�>jf���\"q��?\Zn�r\'��2��e��2�\\���a�>��P�	�k{����i�ӑ>j3^��~�e��Ϗ4x_gq�q�*���w`�J�8\n���ೡ�������}��M��W3�x,]�ቔL��$\"��p�W���<3�S����	<t\"R�\0~J�DH&��\"�p���owo���ݯ���\\0�\"O3@[�D��Bgn�p���K�0�j3G��R4m�H��UvL���l���(T�YX2	\\�`c?�*��]�3�j������X�����pͻDj��Ì܋D��i�\0���g#x�o���~�t���a��Зd���z����\\ߵ���\Z����N�31e�����N����4\'� O���*߭�6��n���M��n�MoÞ��mo�4�z�F��,���:k��X���jر��G�	m�{�=������ኙ���X�D�	`fћ�+Ϳ��p`��;�A�>����96i�ȃ��Nq���{��\\N�5W1)Qe���T��\r\ZN@m�Yjqd7������Z̤��\n�ȃ��;N�A��W��7���Ը���2yKu�U��36���z��s:�T���TSe�\r.\'47@�Q��k����0�K��swt�R�!�d@f���	���Y��`�Yc���S� ª]_�I�.s�W��ܲ��\nܦP�f��6����î��X��C�{���w9}	�2`�$�`f�g���lHO7���Dn��hK����L�Ř���k	�]F0����a���JI5�S~�*��:*�ҏ�4�y�%3��jB��L\"Z,��Lq��zR\r��������u�*ڝHcp�=���0y�\'v8:o�I�y�I2�p������r���y\"}����r�!��b�X����$��T_&q�=�U�$���7�8c�͘���ǋK&\r.��y~\rv�}�����Ky<�I�B�oa*f�1h\n:���\Z����D���I�Fk0\rS��y�\"Ŝ@����flhyo��\"��Z�H��\0\0\0\0IEND�B`�',20,20),(11,'Cloturer','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0釖�\0\0�zTXtRaw profile type exif\0\0xڭ�iv�8����sb�������\0K�UZl�m�%��&r���6���w���OIəsI5��?���\Z����s��W8�ϟ��ٷ��1o8^�E��z\\�x=��@�����M~��c��/z������Ȼ�u�����ϵ��tK=�ԇ�2Θ��3ny�/�]��7���t�g.��w���O|g^}r����j�+�[W�+=.HO>z�n�Ǿ;��\"��{�Ƹ����n�Y�^��ZHx*�Ǥ���7.�ҟ�%�2#���U�*Lq��;_��j��6�i��v���Ln9��Ο�\n�nx� ��n�}���B�Q��^m����o���Jg��w_���:��J]k�3��v9y39}�*b�ç���|�װ����z\"��lW������-��.^�\\wi�<�\"�1�z\"p%�M���ek�c!>\r�)׉���Mk6��>��to>����Ew���H�dBS}#X!D�\'�B��c01�s,�Ɩ|\n)��rF��s�1��s�5��K(���K)����bM5�Zj��q��ЍO7�h���{豧�{鵷A��0�H#�2�h�M?)��f6��:۲�TZaŕV^e��6���;��.���\Z�GT�F�>E���G��p�˿���9�a\'Q1#b.X\"��)fW�!8EN1���(�#j6*8�*bD0,�⶯���/�fb�V��g�3\n�9��=\"�>nDm��z�HU(�^~l\\�Js���~����e�.��1�2O�a�����6��6[��CB�\"�k�`��8�uN��z������﫸�V�s����@�k0\'�u�\"j�U����uDR�_h^F��ͳ�?�|6��h��Ŀ��ɉ;��ۨ�i@��06��i�<h�5�٫W���T�H�4��s^)�>M�g�m~wb*c�Z��]c���8P�g�Q\\�Ny��Ӽy<T��\\A��2������Ju�Yk\0��f\0Qq�m\\&!W��>��`p�mc�}D��	�X\'{��\0�[����q�)��7�G�<nL=����hC����/.T`�o!\0,K��e��e���9m�SGH���T�Z{��h�}^yfW�᤽]�)ѯ����S\\����x��oo|�C��)6F�O��߹0�ݮ/����iy��sW2;��[VWr;Ӛ�5�9��I�^��	���̋6D�)��C�)mH�\n����Q�$�Z�V|��|`6jc��j������T�2�rO)��\\楪$�������&YL�z ���u4Wq����#v�͇�����p��߇3���/Ù����p�3�}w8��;��:?������p��uO�ŝ�1��#?+Jr���_�\n�ѵc�9ˠ����e�	P�.T�oH��5���1�%a�W����BX7e�t�r�5��Ņ3f�C�{@\Zk\ro�C�B2~�g�i����}U��$K��&w�>��<��}l��ݰ����?*q�\\�\r��\\n5Z�nmDF�W#4�H\"�J+�#�MJ��&͑g��u�*e{�h�\ry k_�(段��Q�4��a_���� %���t��xpl�x A��l�P����ۣ��C���>���y��߸�}���\'N��R[�J(�N�~[lr.>t�@(��%�۵��5_������nK�;Wv(�����j���y�He_��O.��K�7D*����hI;�Kq@Ru�V=��+�~�����뼆�U1�i���4�����<~��Lg�i�����%O;rG� `�N����F�\ntD�K:���(4zH�@C���\Z\"�ҍG��*������Ѽ7˹0�۾����s+8����̋	�g�@{_z��53^%��Js\"9~y5C�O�<Ly6���{����{����{����{����{����{����{����ő�[���%: �����#�?�_bt߭�e�yNY��C�>Z@zZ>��R���vk���ёmښ�%��f�ZW��h�@������������x���6�X�$���-������7�\r�W���������-9T� :Y,��S��4��u`�ܿEȬC��+A�\Z���\nZ�-��}����׉<\Z]6��Z�ז땮5����\rw��.���(�B�O�OQ���3o.��{�&��s��(Q�3w>��o��m@��)�q��Ŏ� ���ʩC�u�\"�����+y�Lm�UBm�L�#m�5��;ɝ���^MkΎna��\\[��n�e�\n3\'y���\n}��Q��}Y���Z	4�W���������&�#�¶yͬ������kx��e\r*��2Q1�VV�)i��9�X�.I�^�����[�]�s����3\0����ݷշ�\n�Ͳ������Ϋ�������:���uz����-�*���r�*�2���_���rz�׊��м\r��chA<N��J���͋[��U��?E�<��v��]p���s���˒?\'���Z�8I��=�魗��N�Ku���JMhWIE\"� U�}�Kw5_)��\ra`�+�������������A���|��J!����4=��$�n��AM�nw\n�̕���.�yH_�͘$Y9�iA�\'b�<����	���П��0KrT��5��9��S1J$��3:_�J�~�f��\ri����ei�=\"8=j	:ҿ�C\\{�?�W�+v�f����p&#M>�G��Mb<�I�5�;P�c�I�8������0=H��V�xO�$���2=���zM�E���\r,�\ng�kXߌK��BI!�Kq�Ҙ�A��N��\nSv�}�Vg�U8��+/�6�F�=���J)�-�[�Rr?�k�̈́��n��\\�P�c!O{=t�!{[ւ�H��v�H�_�r2�Bѓ������H`�)H���V�]库.h5�u�-�\ZV��U�R3�®���Go(��B��$BOE��ZԿ;p���U��자7���	&[;-c�������F������h���e��\0Y�\\-��\n2�k:�C�6o�5Vؽ�H#�jj��Dag�@!�ؑ}+۝Ä��?	�h�󾤯7Ѽ׈�_�Xg+��:�l#��G�	��@ۦ�&臖^b8�\nKp?�+�\r��Ê�^\n0�[���4����_u����>\Z��x��Q�?����ed�1��g����\'��EbW�Y爕�\Zڀ��X�<�nz��XaBC�eӰsG�5IIF`0Įv��ц\Zu*�L0�1F�t�i �����]H�k������W�-$L1�zBߦK+�R�2.���RH䐚J�J�b<��\"s�:E�L/�lD%�Җ��=�F�V�rRh	�.�ge�~��$$�\n��$&�<�I�t���1똆6�����/;�3�c8�%�aq����>R#�}ۙy�	�SX�&�T.zz�j�]�u�@����3t�	\rw�5��ʯ.��>���*�P�\Z���s?l��*�o����鉫��\n�B��iZO�0�v�����&o]�\Z\Z�LϘ�c�y�͵�+h\n0d��A��\0F��m\\Ĕ�!5�_�\nZQs�k�\'���u�oVb�h��p�\0_�2��z;)0��c�f�m�����h���	�Ų(/z+�*\"��.�_�Hl�U�P�86��|̹!����k�s�7!(�Ym>�߭\\P5��33�@��1��6���ܝ`��KEy���괵rS����n���������\r��BQ�����ͽxs6m��V�,o6m$\0?ڶ1�H@�l0�:���R�����f�d��W;�G�zZ����j�L�8�׈´�DKP�p�@ňȥ零�/:0���2��Fb8�\nh�d��^x3���r$&����:�u:�@o��+�+[S�Q:N��R�6�j�rZ5��a�ǎN�QH������hڽ\n�x�r�Hu�ł%�=�Aԟlj�^w?�lL�!�2sZ����ZS��j������|�g^���#	.\"��2�Rmv��{A���4*4k.ҡ5[��� ���CS�j��ʨE��g��ǕD^H��\\èJB���X�L�mQ��#L��23��\Z&; ��*���������41��F�U$G�����_�e�\nZ��8u�e7-</�h��,�Y:G�{�	6hӧ��++r���8&��v��X#�tm/MKU�`ՇOZ2�ޏZ2�ޏ�w�Ox?Z����@��4D@���^�H\r�G��Aƃ�ڸ\'�t����Q<�rŮ����i�Da\'��t�C�iL8/UO��ɢ�\"�R6ޓ~k�6څ!�����F�@�.�N@W����������Ni��N�7F���B�`����\r��\'8�d@\'�|��eA�evG�E�ef��B9�P	�R��<lߒ\ZP@K�o)jj���S����+�y�l�9`\n�ۼ�R�� �8\0QH�Q-���sRZ�^M����:	l�#���:p9���z���ꑛ�����|�t}Z�Zm6!ݕݑ�ާ��u�.w��Uzꂪ�VGu�\Z��%�*�]�Q�*b=	��F�=�:㉖@4��?�F�A�A��A&)k��fP�S�|Q�����`�,l����Y�|E��0�lD�����`��OhEI��&��3�?;��I[Ѵ�g��3���7!�n\'�Q��S-��P��0<�r\Z��o��v�O��B��6_��{�\rGsvUC�o$��ոW�H�I˾�&����b>\\�b�1�ȩ�Qz��w��a��^w!��{�2/�������Z�]�åܞΤ�+���@��\n.��G[�v�������05���.t����)��E됨�]J��5Bs�%ŕ\Z��t�F�0���k���֢��0[�\\�$+��\\2��3�W���� ��\0(-��v������4~���l���^=/2A<���t�%0w~�jEk��R�SAJʳW�I8i���{F�����v#��u��Β9%z�l���*�@��Q����a���]zNp��0��H�J�����P��|!�g=P\0���y,S-n_�z�@�9�^�i���C-҂���p{?�ǟs��N�GZ�$}A*G�צ@��V�M��\n$�Knv����Je��^v�1MDti�����ϤvL̏I%����ˎ>����\0	M\Z�>4X�ۅ�b������؁Q[�_�g\\��kto\Z�W���t����\r�:�f�k�T�d��z~�뉎0H�̪�|u��ڂN)n�걖 �H?�N^�>\r�@ �@&�\\IJ��A�\\��s� ڕtF,{z�Z���-�Y+�@���!�uT��6\\KŹaX�zt(E���֜��΢�f�cQ{`�Q�8�1h�)=$9���2,�\'�8���sI��쾞���G	�F=G��Hb�i�D/A~�>������ڄr�F��)�-�B���o/��#�{L*G��x\0���d�C��	�>�d��-<�:��y��_�0����d\Z�\r��]Mi�G��\0���#JP $>X�>��F11B�퐂���}^����υqMh�%ZTb�1*�H���JwJ�r������>Ԃ���:��R���̕6B^!�̈\r\Z�}!1�+gcS���Xܒ{�u\Z\"<��	\'q-k�!<�h���$lu�sd<4a�bɥ��>��}�{�􌗞�Bg��ۈH$KE��Y��P�e둩m�@�k&i)�jk.)f��>rӃ$���jI�!��E�d:�N�g�G����̴�pa�	�N���De�9���}cKˮ������NH\rlU#�\0�$��r��b�L=�7���C@KK\'�D����ryE?8��[����:��B�][r�FLd�|s��RE%���j���>��q(>�O�2��7C�{��>�yqֿe~��{C����xA�G�A^궦h��3w�J�&�J��\\{G4�����ʍ�y�t�\"���٢���m4�0%���5���k��*9Eu~�|]x� ����(�zZ���3L1i{lߒ(2?�6���f��ғ�)@y]˿M+z&�w�:��}@��$�_ D��F�!4EK�z���M�zܲ2]/�M���A��Y�)1��o�0.j��b`�F9�Z�ʝ���h�.�i���:ҥ-��e@u?ZK����;*���V�D����p��Ե���ͥgl�\Z��K1C@.�h-rݕq?�oì@U��fچ�;$�O�5\nS���g�@���N|���(_2�A�tmm��F��\\��s�	�Zǅ����`ڛE��t��A���tdbp�N�/��D�ּ�\"�<��9MY�NK���~�7W�:6\0|[�	Z�^\n�o���K�Wvƣ�n���TB;��桿����B=J��մ�9��ӹHt ن��>��q\0��\n�E�9���A+��\0ւt��ޥw�C��B�!i-B��\'��\'s��WBK�I�6:oF������������{�1�a\0������Q�C�bQ2袆N�Um��=�_7#���P��F���-6%Ё�w&N\r�����]BH^�2+}�	�����l��j7h-Q��3-� 8��I���/=:r�j���0p���J]��ֲNF\rn�I��:ܪv}$QD$h��jmf�X���i���?�ɔ�`�X\0\0\0bKGD\0�\0o\0\0p���\0\0\0	pHYs\0\0\0\0��~�\0\0\0tIME�! �;�w\0\0#IDATx��kl[�}��$���ɗ�Q�:M\'v�յ�t���\rZ�i�-s�����`��x�!��K�}��!h\r��ڤ���0�.��uGqeKVdY�,6�E�I�<�>�T�֒Ρ(���=\0!QzyH����/Ǒ�dB,��!$��I�$��LBH&!$��I!��X>�p�_ڀ{��\"<^#�X�sM��VE�*p�20P�\'�(��D-�k��KX�Ee2^�L�\"�?J\"�\0��\'���[��a�po�4��I&�$\n!�*�)�l�~�$\n��Vd�\rQ��z!�\0g���*�D8��7������2&#�!2�SE�Y;7����$Q<��,�}�b����BH&!$�l��G ��iE&!���I�$�dB2	!$��I�$�dBH&!$��I!���LBH&!$��4�\n=���^�G�,�E2������B2��\'�dB2	!���I�$�dB2	!$��I�����1��yY�͕!���LBH&!$�B2	!���LBH&!�dB2	!��9�07�K���d*/�cj�	!���LB�$�dB2	!$��I�$�dBH&!J�6�K�6�BH&!$��I!���LBH&!$�B2	!���LB�\rmB)�d2�����yBH&!$�B2	!���LB�$�dB2	!���I�$DQ�.���?�#������GF��o��{������^>4�^{s����������v�<�>�@�}�r�U}\\뀶��{��\"?G=pn����s�%Sq�\"��L��7T��F��\"��yI�@\"��j�-�?_��b~�%|�\r���ɗ�N�R<�\"ӎ%./ʇ�\0>�o}�G�q�\"���6�|\n��R�d��taV��lyQ�8r�r���)2-��Z��|���ݾ\n<)��7��,�C��[�x�7�_wH���8pb�2\'r��2��dfnKȃ�U��$Sᤀ?�?\0~M6]��������T�K/�aLOO�ňF���q��$���d����碔�����*v��x���L\0�0����\0tww�L&����a�l����$uuu�|>V�ZEmm-��˅����v��xp:$;��i�LQ:iKVb���{8�������b~�&	FGG�t����|$�I�����~\Z\Z\Z���x<|>����[����f��멮�^�X�����Td�� p�ll����r��I���-�Foy�H$�Ñ=%�Ӊ�ᠪ����ZZZ�y�477S[[���)o%�\0�!;&��d��[���>H8���.o��v��T�&\"@*�\"\Z���ꢹ��m۶q�}��i�&|>_!B1�=xF2�eixx�W_}�r*�d�h����� ���l߾��;w.�P�3I����bttt=�n|>���<x�5k�,��^)D(�d�d÷�#��iN�>m*��B�R�э��v��ٳ���K�?I&�$\"��a^~��7�LWf��A�@ ���>[h����L��覀5F/^��ѣ���{�9�m�Vȡ)`+0`���`؋S��t�ĉ�i���ѣG9q�D!��5[X2�+��BD��쬈8_+����_|q&�n��V�d����r�a���#����y饗\njw��)�?��p0�W^y�l\r�$ԫfڄb�7��f�I�x�7�x����g3�O0u�\\�f���k�8~�8X\Zf�]��O2ٓ�ͻt:M$�G?�?��Of�^UU�ƍټy3^��Йeӧ��br��yV�^;}��<��s��]e�ȩ�E\n�B���244���%��v�Zv��ɽ�ދ����\Z������?�)����ر�-[��=�A6#�U�I��>��N�>�|pK����i�&֯_��]��%�J�D����|��_~���G�&t�H&q�D���aΞ=�;\"��K��yN��d2���`��Ӊ��y��y�9���?o�!��.:I&c7o���ŋ\\�re�W�|?SSS,��s�2����Z�\0k׮�m���~Ν;�Ν;�$�M�d2LOO3<<̯~�+���L5	���9w�CCC���K���bӦM��~V�^=���cǎ�c�����>����\'�$S�p8̥K��q��(c�X�P(T12�Y��Թ�9s�G}��C?�;�IU+����� ׮]#�L�\r:::�M_}�AvO2�=*��q�]���ȈސY�:u�J�j�I&&&&�v�\Z���u�GËȟ�Y:;;ٻw�پ�zf\r�J&��fdd�R�\'�;PSS�aTL6������*�R]�p�Jf��-q�L6m��AB���c�N\'k׮����x<^1������k��t:M};v̊L{�̳)�T���1M%f��r�hll����\"����tN�R��4��444�y�-�ɦQ)�H011������#�H$��b3;�:<�����tY��p8nSJ���A2�$��H$�=����f����Z��%��H��LMMYj⍍���Ӄ��������:\Zq��$�I&&&���*��EN����Z\Z�x<�R)&&&���$�������X1�z��L6�L�d�H$b:�\n�8�<W�^�������P[[K<��������ƪ<��?>� n��x<NOO]]]�B!���L}�$	�Y��W3�f�g/LNNZ��p��MB�\r\r\r�y�3M;�0�������h�9jjj��;f2��t���	z{{	�æ�����lܸ����%�lF��c���x^��U�|e5��*esv���/]�dV�F�ۑJ�H�RE]1k6\"�jn�����r�>�bEH[?;�l����R��zY�n~�����a\n��3���\Z���L6�J�X�d�1���&�k׮�W�R)FFFx�w���)Y��Bb�d��d����&���شi[�n�wM�B����:�_��իW˪�6��e����K�)?X�H$H�R˔�2�}q�d�N���Yr�����466�~����L###���/8{��XH�o�L6\"�/��	�0frr��Wpd�F����]�+�l��岴��}���1n޼���b9#�l(�쉪���f��Z��l�q\r��02��=�K����M�d#�Q^����<H&;}�N\'UUU�N����d����Gcc�\"�	����_�L6�����_�$D���֦f��;2UWW�f�\ZK��r�]w�-\Z�L6��vSWW�$�	6l�`��d��L���x<���)5���%�l���z�����͘��{�Z)��d�o�\r6(	1?��٢�u��t�/��@3��,`jo*��G2�����\ns`a\ZQp�	m�����\Z\0/0Av���s�祦��\r6��oʚ����nef���/j�U6��7cx���n����zH��|���R�k�ie���߿��T�i׮]�ik�Y�}1����fv�q���k�%�/S:��!�F\0�������;�Sp��o�e!�\\�^���`V�z�\'��}G2U6G�\0dG�C�a�5`�T]CCmmmV������ƍ��\'>QV�_].7n��R[[k֬�rȗ%������{�ur[�.�����e�����殮�����e����tܓO>i�x�+J����ߺ_D����TUUE{{;��d2�R��+^�\\����o��߾y>���ۭ��\0���H��X��AvnX�#{��N�W�3U�����[o����м���8����t:+bM�a���2666���ݻ�<l��@�dZ���f��K�Y��\0��N����~�Ç�[.���ۋ�墩��bd�������ҡ���Zn;���m�=��8�B��A�O+Pm�`2��ƍ�<y����9�D.����j<OE�:��>==}�$I{{;�>��ըt���\Z�vȓ���xhjj����?������\ne�htE��@ `U$����U�D���=����ݻinn^���\0_����.�i�g����Hkk+n��_�������ɰ���O�\0��.�L���!uuu�ڵ�u����z���*���K͑#G\n���o�ָR�% �Ƌ2��b1�\\�©S��|�rY^ƥ�,�\'Av�v�B�ʡ��=U��#�喖Z[[ټysE�8v�X!\"ŀ?4S��L\'�ϫ��N����:>�я�N�9{�,�b���?b�޽<���|d��^�yWN�<��dG�Eb�H���!����r�\n}}}q��=�۶m+��W�gLG�2�i�\rފ�N����fbb���._��{����hY^/)p�С�,9	��4.�p�u��Um�;)���f8�������������˦��hd:�P�2�Rնr\"U0��ŋ\\�p��ׯ3==]�sp�\\�Dŧ�z�Gyd����D*G�\0�]�&*D���I�����ŋ����DH��K�����8p��۷c�ڂE*W� ��E��!�L211A0dpp��ׯ344�����Ӥ��[!un��SSS455��c��}�e��%R9�4[�\'r	\n���r�~�Q�0������bdd�`0������H$B4\Z�%��o���d�Lf�*�555TWW��dX�z5��ww�}7~��ǃ��.�BKY�J�I�������斋JT$�IR��x|&��t��h���>B�[g�544p�����ijj���R__OMM\r���Y�2�!��/$�(6-dgG�%�_��0���A:���t�D�����o��\r!�qhb���g�d��ٙ)%]���jy�f��\".	y3�u(*Z�$�b�0%���p8p:�3�(����Z\n�$�X�3d�h�T��L�5���F(j���K���V�\n��-�C,K�d�I*�C��J�J$�D1��ǔ�`�����,ǓK&Q>Iv���0q}�%���^���r�	�I,�XE6cֲM�T��v����3���%�(Ek��lf0��a�<Q,L�~�\0��:Q�>�U�O��+O��9\0\0\0\0IEND�B`�',20,20);
/*!40000 ALTER TABLE `workflow_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_prerequisite`
--

DROP TABLE IF EXISTS `workflow_prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_prerequisite` (
  `id_prerequisite` int(11) NOT NULL AUTO_INCREMENT,
  `id_action` int(11) NOT NULL,
  `prerequisite_type` varchar(255) NOT NULL,
  `uid_prerequisite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_prerequisite`
--

LOCK TABLES `workflow_prerequisite` WRITE;
/*!40000 ALTER TABLE `workflow_prerequisite` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_prerequisite_duration_cf`
--

DROP TABLE IF EXISTS `workflow_prerequisite_duration_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_prerequisite_duration_cf` (
  `id_prerequisite` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id_prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_prerequisite_duration_cf`
--

LOCK TABLES `workflow_prerequisite_duration_cf` WRITE;
/*!40000 ALTER TABLE `workflow_prerequisite_duration_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_prerequisite_duration_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_history`
--

DROP TABLE IF EXISTS `workflow_resource_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_history` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `id_action` int(11) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_access_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_history`),
  KEY `history_id_workflow_fk` (`id_workflow`),
  KEY `history_id_action_fk` (`id_action`),
  KEY `history_id_resource_fk` (`id_resource`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_history`
--

LOCK TABLES `workflow_resource_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_history` VALUES (3,1,'FORMS_FORM_RESPONSE',1,1,'2024-03-12 15:32:04','auto'),(17,1,'FORMS_FORM_RESPONSE',1,2,'2024-03-12 15:39:34','auto'),(18,1,'FORMS_FORM_RESPONSE',1,7,'2024-03-12 15:39:35','auto'),(19,1,'FORMS_FORM_RESPONSE',1,4,'2024-03-12 15:41:30','voirie'),(20,1,'FORMS_FORM_RESPONSE',1,10,'2024-03-12 15:42:43','espacepublic'),(21,1,'FORMS_FORM_RESPONSE',1,3,'2024-03-12 15:43:50','espacepublic'),(22,1,'FORMS_FORM_RESPONSE',1,3,'2024-03-12 15:45:48','petiteenfance'),(23,1,'FORMS_FORM_RESPONSE',1,6,'2024-03-12 15:47:39','voirie'),(24,1,'FORMS_FORM_RESPONSE',1,8,'2024-03-12 15:47:39','auto'),(25,1,'FORMS_FORM_RESPONSE',1,6,'2024-03-12 15:53:42','voirie'),(26,1,'FORMS_FORM_RESPONSE',1,8,'2024-03-12 15:53:42','auto'),(27,1,'FORMS_FORM_RESPONSE',1,6,'2024-03-12 16:18:55','voirie'),(28,1,'FORMS_FORM_RESPONSE',1,8,'2024-03-12 16:18:55','auto'),(31,4,'FORMS_FORM_RESPONSE',1,1,'2024-06-05 14:36:31','auto'),(32,4,'FORMS_FORM_RESPONSE',1,2,'2024-06-05 14:36:56','auto'),(33,4,'FORMS_FORM_RESPONSE',1,7,'2024-06-05 14:36:57','auto'),(34,5,'FORMS_FORM_RESPONSE',2,16,'2024-06-07 15:56:39','auto'),(35,5,'FORMS_FORM_RESPONSE',2,11,'2024-06-07 15:56:54','auto'),(36,5,'FORMS_FORM_RESPONSE',2,17,'2024-06-07 15:56:54','auto');
/*!40000 ALTER TABLE `workflow_resource_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_user_history`
--

DROP TABLE IF EXISTS `workflow_resource_user_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_user_history` (
  `id_history` int(11) NOT NULL,
  `user_access_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `first_name` varchar(255) DEFAULT '',
  `last_name` varchar(255) DEFAULT '',
  `realm` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_user_history`
--

LOCK TABLES `workflow_resource_user_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_user_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_user_history` VALUES (19,'voirie','agent.voirie@citelibre.org','Agent','Voirie','BACK_OFFICE_USER'),(20,'espacepublic','agent.espacepublic@citelibre.org','Agent','EspacePublic','BACK_OFFICE_USER'),(21,'espacepublic','agent.espacepublic@citelibre.org','Agent','EspacePublic','BACK_OFFICE_USER'),(22,'petiteenfance','agent.petiteenfance@citelibre.org','Agent','PetiteEnfance','BACK_OFFICE_USER'),(23,'voirie','agent.voirie@citelibre.org','Agent','Voirie','BACK_OFFICE_USER'),(25,'voirie','agent.voirie@citelibre.org','Agent','Voirie','BACK_OFFICE_USER'),(27,'voirie','agent.voirie@citelibre.org','Agent','Voirie','BACK_OFFICE_USER');
/*!40000 ALTER TABLE `workflow_resource_user_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_workflow`
--

DROP TABLE IF EXISTS `workflow_resource_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_workflow` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) NOT NULL,
  `id_state` int(11) DEFAULT NULL,
  `id_workflow` int(11) NOT NULL,
  `id_external_parent` int(11) DEFAULT NULL,
  `is_associated_workgroups` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_resource`,`resource_type`,`id_workflow`),
  KEY `workflow_resource_workflow_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workflow_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workflow_id_workflow_fk` (`id_workflow`),
  KEY `fk_document_id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workflow`
--

LOCK TABLES `workflow_resource_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workflow` DISABLE KEYS */;
INSERT INTO `workflow_resource_workflow` VALUES (1,'FORMS_FORM_RESPONSE',2,1,1,0),(4,'FORMS_FORM_RESPONSE',2,1,1,0),(5,'FORMS_FORM_RESPONSE',7,2,4,0);
/*!40000 ALTER TABLE `workflow_resource_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_workgroup`
--

DROP TABLE IF EXISTS `workflow_resource_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_workgroup` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `workgroup_key` varchar(255) DEFAULT NULL,
  KEY `workflow_resource_workgroup_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workgroup_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workgroup_id_workflow_fk` (`id_workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workgroup`
--

LOCK TABLES `workflow_resource_workgroup` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_resource_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_state`
--

DROP TABLE IF EXISTS `workflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_state` (
  `id_state` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `is_initial_state` smallint(6) DEFAULT 0,
  `is_required_workgroup_assigned` smallint(6) DEFAULT 0,
  `id_icon` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `uid_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_state`),
  KEY `fk_state_id_workflow` (`id_workflow`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_state`
--

LOCK TABLES `workflow_state` WRITE;
/*!40000 ALTER TABLE `workflow_state` DISABLE KEYS */;
INSERT INTO `workflow_state` VALUES (1,'Demande de contact déposée','Une demande de contact rentre dans le workflow. L\'affectation aux entités organisationnelles est réalisée en tâche automatique sur cet état.',1,1,0,NULL,1,'9fbb58ee-1d0d-11ef-8590-0242ac180003'),(2,'Demande en cours d\'instruction','La demande de contact est en cours d\'instruction. L\'usager a été notifié.',1,0,0,NULL,2,'9fbb5c42-1d0d-11ef-8590-0242ac180003'),(3,'Demande clôturée','La demande a été traitée, l\'usager en a été informé.',1,0,0,NULL,4,'9fbb5d15-1d0d-11ef-8590-0242ac180003'),(4,'En attente d\'informations','La sollicitation a fait l\'objet d\'une demande d\'informations complémentaires. L\'agent est en attente de l\'usager',1,0,0,NULL,3,'9fbb5da0-1d0d-11ef-8590-0242ac180003'),(5,'Sollicitation supprimée','Sollicitation supprimée',1,0,0,NULL,5,'9fbb5e26-1d0d-11ef-8590-0242ac180003'),(6,'Dossier déposé','La réponse au formulaire rentre dans le workflow. ',2,1,0,NULL,1,'9fbb5eab-1d0d-11ef-8590-0242ac180003'),(7,'Dossier en instruction','L\'usager a été notifié. Il est possible de clôturer le dossier depuis cet état ou de demander des compléments/corrections à l\'usager.',2,0,0,NULL,2,'9fbb5f17-1d0d-11ef-8590-0242ac180003'),(8,'Demande refusée','La demande ne peut être traitée pour différentes raisons.',2,0,0,NULL,3,'9fbb5f8c-1d0d-11ef-8590-0242ac180003'),(9,'Dossier traité','La demande a été traitée et l\'acte mis au courrier',2,0,0,NULL,4,'9fbb600a-1d0d-11ef-8590-0242ac180003'),(10,'Dossier en attente de correction','Une demande de correction a été envoyée à l\'usager. On attend son renvoi.',2,0,0,NULL,5,'9fbb6076-1d0d-11ef-8590-0242ac180003'),(11,'Dossier en attente de complément','La demande ne peut être traitée car elle semble incomplète. En attente de complément.',2,0,0,NULL,6,'9fbb60fe-1d0d-11ef-8590-0242ac180003'),(12,'Demande anonymisée','Passé le délai configuré, les informations relatives aux données personnelles sont remplacées.',2,0,0,6,7,'9fbb631b-1d0d-11ef-8590-0242ac180003'),(13,'Demande Archivée/Supprimée','Passé le délai renseigné dans la configuration, la demande est supprimée',2,0,0,5,8,'9fbb63dd-1d0d-11ef-8590-0242ac180003');
/*!40000 ALTER TABLE `workflow_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_state_controller_form_response_value`
--

DROP TABLE IF EXISTS `workflow_state_controller_form_response_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_state_controller_form_response_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `is_multiform` smallint(6) NOT NULL DEFAULT 0,
  `id_form` int(11) DEFAULT NULL,
  `id_step` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `response_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_state_controller_form_response_value` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_state_controller_form_response_value`
--

LOCK TABLES `workflow_state_controller_form_response_value` WRITE;
/*!40000 ALTER TABLE `workflow_state_controller_form_response_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_state_controller_form_response_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task`
--

DROP TABLE IF EXISTS `workflow_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task` (
  `id_task` int(11) NOT NULL AUTO_INCREMENT,
  `task_type_key` varchar(50) DEFAULT NULL,
  `id_action` int(11) NOT NULL DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `uid_task` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_task`),
  KEY `task_id_action_fk` (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task`
--

LOCK TABLES `workflow_task` WRITE;
/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
INSERT INTO `workflow_task` VALUES (1,'taskUnitAssignmentAutomatic',1,1,'9fcf3bb8-1d0d-11ef-8590-0242ac180003'),(2,'taskTypeArchive',1,2,'9fcf3e5c-1d0d-11ef-8590-0242ac180003'),(3,'taskTypeArchive',7,1,'9fcf3f00-1d0d-11ef-8590-0242ac180003'),(4,'taskTypeArchive',8,1,'9fcf3f78-1d0d-11ef-8590-0242ac180003'),(5,'taskTypeArchive',9,1,'9fcf414c-1d0d-11ef-8590-0242ac180003'),(6,'taskNotifyGru',2,1,'9fcf4209-1d0d-11ef-8590-0242ac180003'),(7,'taskUnitAssignmentManual',3,1,'9fcf435e-1d0d-11ef-8590-0242ac180003'),(8,'taskTypeComment',3,2,'9fcf43de-1d0d-11ef-8590-0242ac180003'),(9,'taskNotifyGru',3,3,'9fcf4430-1d0d-11ef-8590-0242ac180003'),(10,'taskUnitAssignmentManual',4,1,'9fcf447e-1d0d-11ef-8590-0242ac180003'),(11,'taskUnitAssignmentManual',10,1,'9fcf44cd-1d0d-11ef-8590-0242ac180003'),(13,'completeFormResponseTypeTask',6,1,'9fcf4517-1d0d-11ef-8590-0242ac180003'),(14,'taskNotifyGru',6,3,'9fcf4560-1d0d-11ef-8590-0242ac180003'),(15,'taskTypeComment',6,2,'9fcf45aa-1d0d-11ef-8590-0242ac180003'),(16,'taskNotifyGru',5,2,'9fcf45f3-1d0d-11ef-8590-0242ac180003'),(17,'taskTypeComment',5,1,'9fcf4640-1d0d-11ef-8590-0242ac180003'),(19,'taskNotifyGru',11,1,'9fcf4782-1d0d-11ef-8590-0242ac180003'),(20,'taskUnitAssignmentAutomatic',11,2,'9fcf47cd-1d0d-11ef-8590-0242ac180003'),(22,'resubmitFormResponseTypeTask',12,1,'9fcf48a1-1d0d-11ef-8590-0242ac180003'),(23,'taskTypeComment',12,2,'9fcf48ff-1d0d-11ef-8590-0242ac180003'),(24,'taskNotifyGru',12,3,'9fcf495b-1d0d-11ef-8590-0242ac180003'),(26,'taskTypeComment',13,2,'9fcf49af-1d0d-11ef-8590-0242ac180003'),(27,'taskNotifyGru',13,3,'9fcf4a01-1d0d-11ef-8590-0242ac180003'),(28,'completeFormResponseTypeTask',13,1,'9fcf4a54-1d0d-11ef-8590-0242ac180003'),(29,'taskNotifyGru',14,1,'9fcf4aa9-1d0d-11ef-8590-0242ac180003'),(30,'taskTypeComment',15,1,'9fcf4af5-1d0d-11ef-8590-0242ac180003'),(31,'taskNotifyGru',15,2,'9fcf4b46-1d0d-11ef-8590-0242ac180003'),(32,'taskTypeArchive',16,1,'9fcf4b9a-1d0d-11ef-8590-0242ac180003'),(33,'taskTypeArchive',16,2,'9fcf4bf9-1d0d-11ef-8590-0242ac180003'),(34,'taskTypeArchive',17,1,'9fcf4c59-1d0d-11ef-8590-0242ac180003'),(35,'taskTypeArchive',17,2,'9fcf4cb6-1d0d-11ef-8590-0242ac180003'),(36,'taskTypeArchive',18,1,'9fcf4d0a-1d0d-11ef-8590-0242ac180003'),(37,'taskTypeArchive',18,2,'9fcf4d72-1d0d-11ef-8590-0242ac180003'),(38,'taskTypeArchive',19,1,'9fcf4dcd-1d0d-11ef-8590-0242ac180003'),(39,'taskTypeArchive',19,2,'9fcf4e20-1d0d-11ef-8590-0242ac180003'),(40,'taskTypeArchive',20,1,'9fcf4e76-1d0d-11ef-8590-0242ac180003'),(41,'taskTypeArchive',20,2,'9fcf4ed2-1d0d-11ef-8590-0242ac180003'),(42,'taskTypeArchive',21,1,'9fcf4f2e-1d0d-11ef-8590-0242ac180003'),(43,'taskTypeArchive',21,2,'9fcf4f85-1d0d-11ef-8590-0242ac180003');
/*!40000 ALTER TABLE `workflow_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_alert_gru_cf`
--

DROP TABLE IF EXISTS `workflow_task_alert_gru_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_alert_gru_cf` (
  `id_task` int(11) NOT NULL,
  `id_spring_provider` varchar(255) DEFAULT NULL,
  `marker_provider_ids` varchar(1000) DEFAULT NULL,
  `demand_status` int(11) DEFAULT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `set_onglet` smallint(6) DEFAULT NULL,
  `message_guichet` text DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `days_to_alert` int(11) DEFAULT NULL,
  `id_state_after` int(11) DEFAULT NULL,
  `alert_subject` varchar(255) DEFAULT NULL,
  `marker_alert` varchar(255) DEFAULT NULL,
  `alert_after_before` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_alert_gru_cf`
--

LOCK TABLES `workflow_task_alert_gru_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_alert_gru_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_alert_gru_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_alert_gru_history`
--

DROP TABLE IF EXISTS `workflow_task_alert_gru_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_alert_gru_history` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `message_guichet` text DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_alert_gru_history`
--

LOCK TABLES `workflow_task_alert_gru_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_alert_gru_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_alert_gru_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_archive_cf`
--

DROP TABLE IF EXISTS `workflow_task_archive_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_archive_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `next_state` int(11) NOT NULL,
  `type_archival` varchar(255) DEFAULT NULL,
  `delay_archival` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_archive_cf`
--

LOCK TABLES `workflow_task_archive_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_archive_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_archive_cf` VALUES (2,5,'DELETE',1095),(3,5,'DELETE',1095),(4,5,'DELETE',1095),(5,5,'DELETE',1095),(32,13,'DELETE',1825),(33,12,'ANONYMIZE',365),(34,13,'DELETE',1825),(35,12,'ANONYMIZE',365),(36,13,'DELETE',1825),(37,12,'ANONYMIZE',365),(38,13,'DELETE',1825),(39,12,'ANONYMIZE',365),(40,13,'DELETE',1825),(41,12,'ANONYMIZE',365),(42,13,'DELETE',1825),(43,12,'ANONYMIZE',365);
/*!40000 ALTER TABLE `workflow_task_archive_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_archive_resource`
--

DROP TABLE IF EXISTS `workflow_task_archive_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_archive_resource` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `initial_date` timestamp NULL DEFAULT NULL,
  `archival_date` timestamp NULL DEFAULT NULL,
  `is_archived` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_resource`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_archive_resource`
--

LOCK TABLES `workflow_task_archive_resource` WRITE;
/*!40000 ALTER TABLE `workflow_task_archive_resource` DISABLE KEYS */;
INSERT INTO `workflow_task_archive_resource` VALUES (1,2,'2024-03-12 15:32:04',NULL,0),(1,3,'2024-03-12 15:39:35',NULL,0),(1,4,'2024-03-12 15:47:39',NULL,0),(4,2,'2024-06-05 14:36:31',NULL,0),(4,3,'2024-06-05 14:36:57',NULL,0),(5,32,'2024-06-07 15:56:39',NULL,0),(5,33,'2024-06-07 15:56:39',NULL,0),(5,34,'2024-06-07 15:56:54',NULL,0),(5,35,'2024-06-07 15:56:54',NULL,0);
/*!40000 ALTER TABLE `workflow_task_archive_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_assign_user_config`
--

DROP TABLE IF EXISTS `workflow_task_assign_user_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_assign_user_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `provider_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_assign_user_config`
--

LOCK TABLES `workflow_task_assign_user_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_assign_user_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_assign_user_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_assign_user_information`
--

DROP TABLE IF EXISTS `workflow_task_assign_user_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_assign_user_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `information_key` varchar(255) NOT NULL,
  `information_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_assign_user_information`
--

LOCK TABLES `workflow_task_assign_user_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_assign_user_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_assign_user_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_assignment_cf`
--

DROP TABLE IF EXISTS `workflow_task_assignment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_assignment_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_multiple_owner` smallint(6) DEFAULT 0,
  `is_notify` smallint(6) DEFAULT 0,
  `message` varchar(255) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `is_use_user_name` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_assignment_cf`
--

LOCK TABLES `workflow_task_assignment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_assignment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_assignment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_change_state_config`
--

DROP TABLE IF EXISTS `workflow_task_change_state_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_change_state_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_next_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_change_state_config`
--

LOCK TABLES `workflow_task_change_state_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_change_state_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_state_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_change_state_information`
--

DROP TABLE IF EXISTS `workflow_task_change_state_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_change_state_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `new_state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_change_state_information`
--

LOCK TABLES `workflow_task_change_state_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_change_state_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_state_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_choice_config`
--

DROP TABLE IF EXISTS `workflow_task_choice_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_choice_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_choice_config`
--

LOCK TABLES `workflow_task_choice_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_choice_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_choice_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_choose_state_config`
--

DROP TABLE IF EXISTS `workflow_task_choose_state_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_choose_state_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `controller_name` varchar(100) DEFAULT NULL,
  `id_state_ok` int(11) NOT NULL,
  `id_state_ko` int(11) NOT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_choose_state_config`
--

LOCK TABLES `workflow_task_choose_state_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_choose_state_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_choose_state_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_choose_state_information`
--

DROP TABLE IF EXISTS `workflow_task_choose_state_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_choose_state_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `new_state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_choose_state_information`
--

LOCK TABLES `workflow_task_choose_state_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_choose_state_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_choose_state_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_comment_config`
--

DROP TABLE IF EXISTS `workflow_task_comment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_comment_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_richtext` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_comment_config`
--

LOCK TABLES `workflow_task_comment_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_comment_config` DISABLE KEYS */;
INSERT INTO `workflow_task_comment_config` VALUES (8,'Indiquer le service auquel la sollicitation doit être transférée',1,0),(15,'Indiquer les informations manquantes pour le traitement de la sollicitation',1,0),(17,'Motif de la clôture du dossier',1,0),(23,'Indiquer le champ à corriger',1,0),(26,'Indiquer le champ à compléter',1,0),(30,'Motif du refus',1,0);
/*!40000 ALTER TABLE `workflow_task_comment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_comment_value`
--

DROP TABLE IF EXISTS `workflow_task_comment_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_comment_value` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  `comment_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`),
  KEY `comment_value_id_history_fk` (`id_history`),
  KEY `comment_value_id_task_fk` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_comment_value`
--

LOCK TABLES `workflow_task_comment_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_comment_value` DISABLE KEYS */;
INSERT INTO `workflow_task_comment_value` VALUES (21,8,'petite enfance'),(22,8,'voirie'),(23,15,'A quel niveau de l\'avenue de la République l\'avez-vous constaté, s\'il vous plait?'),(25,15,'Nous n\'avons rien constaté au numéro 12, pourriez-vous être plus précis, svp?'),(27,15,'Toujours pas... Un autre numéro peut-être?');
/*!40000 ALTER TABLE `workflow_task_comment_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_complete_response`
--

DROP TABLE IF EXISTS `workflow_task_complete_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_complete_response` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext DEFAULT NULL,
  `is_complete` smallint(6) NOT NULL DEFAULT 0,
  `date_completed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response`
--

LOCK TABLES `workflow_task_complete_response` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response` DISABLE KEYS */;
INSERT INTO `workflow_task_complete_response` VALUES (23,13,'',1,'2024-03-12 15:48:12'),(25,13,'',1,'2024-03-12 15:55:48'),(27,13,'',1,'2024-03-12 16:19:28');
/*!40000 ALTER TABLE `workflow_task_complete_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_complete_response_cf`
--

DROP TABLE IF EXISTS `workflow_task_complete_response_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_complete_response_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_state_after_edition` int(11) NOT NULL DEFAULT 0,
  `default_message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response_cf`
--

LOCK TABLES `workflow_task_complete_response_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_complete_response_cf` VALUES (13,2,''),(28,7,'');
/*!40000 ALTER TABLE `workflow_task_complete_response_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_complete_response_history`
--

DROP TABLE IF EXISTS `workflow_task_complete_response_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_complete_response_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `iteration_number` int(11) NOT NULL DEFAULT 0,
  `new_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`id_question`,`iteration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response_history`
--

LOCK TABLES `workflow_task_complete_response_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response_history` DISABLE KEYS */;
INSERT INTO `workflow_task_complete_response_history` VALUES (23,13,42,0,'Bonjour,\r\nJ\'ai repéré un nid-de-poule, au niveau du 12, avenue de la République de CiteLibre. Cela devient dangereux. Une intervention est-elle prévue prochainement?\r\nMerci'),(25,13,42,0,'Bonjour,\r\nJ\'ai repéré un nid-de-poule, au niveau du 16, avenue de la République de CiteLibre. Cela devient dangereux. Une intervention est-elle prévue prochainement?\r\nMerci');
/*!40000 ALTER TABLE `workflow_task_complete_response_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_complete_response_value`
--

DROP TABLE IF EXISTS `workflow_task_complete_response_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_complete_response_value` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response_value`
--

LOCK TABLES `workflow_task_complete_response_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response_value` DISABLE KEYS */;
INSERT INTO `workflow_task_complete_response_value` VALUES (23,42),(25,42);
/*!40000 ALTER TABLE `workflow_task_complete_response_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_confirm_action_config`
--

DROP TABLE IF EXISTS `workflow_task_confirm_action_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_confirm_action_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_confirm_action_config`
--

LOCK TABLES `workflow_task_confirm_action_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_confirm_action_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_confirm_action_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_editformresponse_config`
--

DROP TABLE IF EXISTS `workflow_task_editformresponse_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_editformresponse_config` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `is_multiform` smallint(6) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_editformresponse_config`
--

LOCK TABLES `workflow_task_editformresponse_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_editformresponse_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_editformresponse_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_editformresponse_config_value`
--

DROP TABLE IF EXISTS `workflow_task_editformresponse_config_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_editformresponse_config_value` (
  `id_config_value` int(11) NOT NULL AUTO_INCREMENT,
  `id_config` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) DEFAULT NULL,
  `id_step` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `response` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_config_value`),
  KEY `index_task_editformresponse_config_value` (`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_editformresponse_config_value`
--

LOCK TABLES `workflow_task_editformresponse_config_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_editformresponse_config_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_editformresponse_config_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_forms_editresponse_history`
--

DROP TABLE IF EXISTS `workflow_task_forms_editresponse_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_forms_editresponse_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `iteration_number` int(11) NOT NULL DEFAULT 0,
  `previous_value` mediumtext DEFAULT NULL,
  `new_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`id_question`,`iteration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_forms_editresponse_history`
--

LOCK TABLES `workflow_task_forms_editresponse_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_forms_editresponse_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_forms_editresponse_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_formspdf_cf`
--

DROP TABLE IF EXISTS `workflow_task_formspdf_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_formspdf_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_forms` int(11) DEFAULT 0,
  `format` varchar(15) DEFAULT NULL,
  `id_template` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_formspdf_cf`
--

LOCK TABLES `workflow_task_formspdf_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_formspdf_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_formspdf_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_formspdf_template`
--

DROP TABLE IF EXISTS `workflow_task_formspdf_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_formspdf_template` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_form` int(11) NOT NULL DEFAULT -1,
  `is_generic` smallint(6) NOT NULL DEFAULT 1,
  `content` longtext DEFAULT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_formspdf_template`
--

LOCK TABLES `workflow_task_formspdf_template` WRITE;
/*!40000 ALTER TABLE `workflow_task_formspdf_template` DISABLE KEYS */;
INSERT INTO `workflow_task_formspdf_template` VALUES (1,'Default Template',-1,1,'<!DOCTYPE html><html><head><title>Export PDF formulaire ${form_title} le ${creation_date!}</title></head><body><h1 style=\"font-size: 30px; text-align: center; background-color: #f0f0f0;\">${form_title}</h1><!-- division pour les reponses du formulaire a copier depuis les signets disponibles --><div id=\"form-response-summary\" style=\"margin-bottom: 3em;\"><h2 style=\"font-size: 18px;\"> signet rep 1 </h2><h2 style=\"font-size: 18px;\"> signet rep 2 </h2><h2 style=\"font-size: 18px;\"> signet rep n </h2></div><!-- division pour le texte du copyright --><div id=\"copyright\" style=\"position: fixed; bottom: 0; width: 100%; text-align: center; background-color: #f0f0f0; padding: 5px;\"> Copyright (c) 2002-2023, City of Paris All rights reserved</div></body></html>');
/*!40000 ALTER TABLE `workflow_task_formspdf_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_linkedvaluesformresponse_config`
--

DROP TABLE IF EXISTS `workflow_task_linkedvaluesformresponse_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_linkedvaluesformresponse_config` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `id_task` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_linkedvaluesformresponse_config`
--

LOCK TABLES `workflow_task_linkedvaluesformresponse_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_linkedvaluesformresponse_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_linkedvaluesformresponse_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_linkedvaluesformresponse_config_value`
--

DROP TABLE IF EXISTS `workflow_task_linkedvaluesformresponse_config_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_linkedvaluesformresponse_config_value` (
  `id_config_value` int(11) NOT NULL AUTO_INCREMENT,
  `id_config` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_question_source` int(11) NOT NULL DEFAULT 0,
  `question_source_value` varchar(255) DEFAULT NULL,
  `id_question_target` int(11) NOT NULL DEFAULT 0,
  `question_target_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_config_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_linkedvaluesformresponse_config_value`
--

LOCK TABLES `workflow_task_linkedvaluesformresponse_config_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_linkedvaluesformresponse_config_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_linkedvaluesformresponse_config_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notification_cf`
--

DROP TABLE IF EXISTS `workflow_task_notification_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notification_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_mailing_list` int(11) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notification_cf`
--

LOCK TABLES `workflow_task_notification_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notification_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notification_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_gru_cf`
--

DROP TABLE IF EXISTS `workflow_task_notify_gru_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_gru_cf` (
  `id_task` int(11) NOT NULL,
  `id_spring_provider` varchar(255) DEFAULT NULL,
  `marker_provider_ids` varchar(1000) DEFAULT NULL,
  `demand_status` int(11) DEFAULT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `set_onglet` smallint(6) DEFAULT NULL,
  `message_guichet` text DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `content_cleaned` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_cf`
--

LOCK TABLES `workflow_task_notify_gru_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_cf` VALUES (6,'notifygru-forms.ProviderService.@.1','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Accusé de réception de votre sollicitation n°${position_43!} sur le thème ${position_5!}','<p>Bonjour&nbsp; ${position_2!}&nbsp; ${position_1!},</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande &agrave; nos services.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service&nbsp;concern&eacute; a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>&nbsp;</p>\r\n<p>Pour rappel votre demande, point&eacute;e sur la th&eacute;matique \"${position_5!}\" porte sur le message suivant :</p>\r\n<p>${position_42!}</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','Mairie de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(9,'notifygru-forms.ProviderService.@.1','workflow-notifygru.commentMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation n°${position_43!} a été transférée au service concerné','<p>Bonjour&nbsp;${position_2!} ${position_1!},</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction votre dossier a &eacute;t&eacute; transf&eacute;r&eacute; au service&nbsp;${comments!}.</p>\r\n<p>Votre dossier est toujours en cours d\'instruction et vous obtiendrez une r&eacute;ponse par ce nouveau service.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(14,'notifygru-forms.ProviderService.@.1','workflow-notifygru.commentMarkerProvider;workflow-forms.completeFormResponseMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation n°${position_43!} nécessite quelques précisions','<p>Bonjour&nbsp;${position_2!} ${position_1!},</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction, il nous manque les pr&eacute;cisions suivantes pour pouvoir traiter votre demande&nbsp;n&deg;${position_43!} :&nbsp;${comments!}</p>\r\n<p>Merci de bien vouloir apporter les compl&eacute;ments d\'informations accessibles sur <a href=\"${complete_form_url!}\">cette page</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(16,'notifygru-forms.ProviderService.@.1','workflow-notifygru.commentMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Traitement de votre demande n°${position_43!}','<p>Bonjour&nbsp;${position_2!} ${position_1!},</p>\r\n<p><br /> Apr&egrave;s instruction, votre dossier de sollicitation&nbsp;n&deg;${position_43!} a &eacute;t&eacute; cl&ocirc;tur&eacute;.</p>\r\n<p>Les services en charge vous indiquent que : ${comments!}</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; notre service num&eacute;rique de sollicitation</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(19,'notifygru-forms.ProviderService.@.4','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Accusé de réception de votre demande d\'acte de mariage n°${position_87!}','<p>Bonjour ${position_83!}&nbsp; ${position_84!},</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande d\'acte de mariage.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service d\'&eacute;tat civl a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>Pour rappel, l\'acte demand&eacute; concerne un mariage ayant eu lieu le&nbsp;${position_59!} &agrave;&nbsp;${position_58!}.&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(24,'notifygru-forms.ProviderService.@.4','workflow-notifygru.commentMarkerProvider;workflow-forms.resubmitFormResponseMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre demande d\'acte de mariage n°${position_87!} nécessite votre attention','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s une premi&egrave;re instruction, il semblerait qu\'une erreur se soit gliss&eacute;e lors de la saisie de votre demande dans le champ&nbsp;:&nbsp;${comments!}</p>\r\n<p>Merci de bien vouloir apporter une correction sur <a href=\"${resubmit_form_url!}\">cette page</a> afin que nous puissions poursuivre l\'instruction.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(27,'notifygru-forms.ProviderService.@.4','workflow-notifygru.commentMarkerProvider;workflow-forms.completeFormResponseMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre demande d\'acte de mariage n°${position_87!} nécessite votre attention','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s une premi&egrave;re instruction, il semblerait que nous n\'ayons pas les informations suffisantes pour y r&eacute;pondre. Pourriez-vous&nbsp;compl&eacute;ter vos saisie&nbsp;du champ&nbsp;:&nbsp;${comments!}</p>\r\n<p>Merci de bien vouloir apporter le compl&eacute;ment sur <a href=\"${complete_form_url!}\">cette page</a> afin que nous puissions poursuivre l\'instruction.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(29,'notifygru-forms.ProviderService.@.4','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Traitement de votre demande d\'acte de mariage n°${position_87!}','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s instruction de votre demande, votre acte de mariage a &eacute;t&eacute; post&eacute; &agrave; l\'adresse&nbsp;${position_78!}. Votre demande&nbsp;a &eacute;t&eacute; donc &eacute;t&eacute; cl&ocirc;tur&eacute;e.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; notre service num&eacute;rique de sollicitation</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(31,'notifygru-forms.ProviderService.@.4','workflow-notifygru.commentMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Au sujet de votre demande d\'acte de mariage n°${position_87!}','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s instruction de votre demande, nous ne pouvons donner suite &agrave; votre demande ${position_78!}. En effet : ${comments!}.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; notre service num&eacute;rique de sollicitation</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `workflow_task_notify_gru_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_gru_history`
--

DROP TABLE IF EXISTS `workflow_task_notify_gru_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_gru_history` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `message_guichet` text DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `code_event` varchar(45) DEFAULT NULL,
  `type_event` varchar(45) DEFAULT NULL,
  `message_event` text DEFAULT NULL,
  `content_cleaned` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_history`
--

LOCK TABLES `workflow_task_notify_gru_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_history` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_history` VALUES (17,6,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Accusé de réception de votre sollicitation n°1 sur le thème Espace Public','<p>Bonjour&nbsp; Foo&nbsp; Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande &agrave; nos services.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service&nbsp;concern&eacute; a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>&nbsp;</p>\r\n<p>Pour rappel votre demande, point&eacute;e sur la th&eacute;matique \"Espace Public\" porte sur le message suivant :</p>\r\n<p>Bonjour,\r\nJ\'ai repéré un nid-de-poule, avenue de la République de CiteLibre. Cela devient dangereux. Une intervention est-elle prévue prochainement?\r\nMerci</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','Mairie de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/identEZ/rest/api/token] : ',0),(21,9,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation n°1 a été transférée au service concerné','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction votre dossier a &eacute;t&eacute; transf&eacute;r&eacute; au service&nbsp;petite enfance.</p>\r\n<p>Votre dossier est toujours en cours d\'instruction et vous obtiendrez une r&eacute;ponse par ce nouveau service.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/identEZ/rest/api/token] : ',0),(22,9,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation n°1 a été transférée au service concerné','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction votre dossier a &eacute;t&eacute; transf&eacute;r&eacute; au service&nbsp;voirie.</p>\r\n<p>Votre dossier est toujours en cours d\'instruction et vous obtiendrez une r&eacute;ponse par ce nouveau service.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/identEZ/rest/api/token] : ',0),(23,14,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation n°1 nécessite quelques précisions','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction, il nous manque les pr&eacute;cisions suivantes pour pouvoir traiter votre demande&nbsp;n&deg;1 :&nbsp;A quel niveau de l\'avenue de la République l\'avez-vous constaté, s\'il vous plait?</p>\r\n<p>Merci de bien vouloir apporter les compl&eacute;ments d\'informations accessibles sur <a href=\"http://localhost:8080/identEZ/jsp/site/Portal.jsp?page=workflow-complete-form&#38;id_history=23&#38;id_task=13&#38;signature=417ea3277747dceb9072f8ff891b20359a8dc81c&#38;timestamp=1710258459412&#38;url_return=http://localhost:8080/lutece\">cette page</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/identEZ/rest/api/token] : ',0),(25,14,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation n°1 nécessite quelques précisions','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction, il nous manque les pr&eacute;cisions suivantes pour pouvoir traiter votre demande&nbsp;n&deg;1 :&nbsp;Nous n\'avons rien constaté au numéro 12, pourriez-vous être plus précis, svp?</p>\r\n<p>Merci de bien vouloir apporter les compl&eacute;ments d\'informations accessibles sur <a href=\"http://localhost:8080/identEZ/jsp/site/Portal.jsp?page=workflow-complete-form&#38;id_history=25&#38;id_task=13&#38;signature=f14a04a7e264db839fd3a98a05e7ea80c8b70a19&#38;timestamp=1710258822175&#38;url_return=http://localhost:8080/lutece\">cette page</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/identEZ/rest/api/token] : ',0),(27,14,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation n°1 nécessite quelques précisions','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction, il nous manque les pr&eacute;cisions suivantes pour pouvoir traiter votre demande&nbsp;n&deg;1 :&nbsp;Toujours pas... Un autre numéro peut-être?</p>\r\n<p>Merci de bien vouloir apporter les compl&eacute;ments d\'informations accessibles sur <a href=\"http://localhost:8080/identEZ/jsp/site/Portal.jsp?page=workflow-complete-form&#38;id_history=27&#38;id_task=13&#38;signature=ce26ffee3d2b8184ae86d1876fd9d052295cae59&#38;timestamp=1710260335138&#38;url_return=http://localhost:8080/identEZ\">cette page</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/identEZ/rest/api/token] : ',0),(32,6,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Accusé de réception de votre sollicitation n°2 sur le thème Espace Public','<p>Bonjour&nbsp; Sarah&nbsp; Connor,</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande &agrave; nos services.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service&nbsp;concern&eacute; a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>&nbsp;</p>\r\n<p>Pour rappel votre demande, point&eacute;e sur la th&eacute;matique \"Espace Public\" porte sur le message suivant :</p>\r\n<p>Bonjour,\r\nJe constate qu\'un abribus est endommagé, rue de la République.\r\nPourriez-vous intervenir, s\'il vous plait ?\r\nMerci,\r\nSarah</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','Mairie de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/identEZ/rest/api/token] : ',0),(35,19,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Accusé de réception de votre demande d\'acte de mariage n°1','<p>Bonjour test&nbsp; test,</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande d\'acte de mariage.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service d\'&eacute;tat civl a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>Pour rappel, l\'acte demand&eacute; concerne un mariage ayant eu lieu le&nbsp;01/06/2024 &agrave;&nbsp;Terminone 20167 Peri.&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0);
/*!40000 ALTER TABLE `workflow_task_notify_gru_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_gru_mapping_manager`
--

DROP TABLE IF EXISTS `workflow_task_notify_gru_mapping_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_gru_mapping_manager` (
  `id_notifygrumappingmanager` int(11) NOT NULL,
  `beankey` varchar(255) NOT NULL DEFAULT '',
  `connection_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `mobilephonenumber` int(11) NOT NULL DEFAULT 0,
  `fixedphonenumber` int(11) NOT NULL DEFAULT 0,
  `email` int(11) NOT NULL DEFAULT 0,
  `demandetype` int(11) NOT NULL DEFAULT 0,
  `demand_reference` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_notifygrumappingmanager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_mapping_manager`
--

LOCK TABLES `workflow_task_notify_gru_mapping_manager` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_mapping_manager` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_mapping_manager` VALUES (1,'notifygru-forms.ProviderService.@.1',-1,-1,4,-1,3,0,43),(2,'notifygru-forms.ProviderService.@.4',-1,-1,-1,-1,82,1,87);
/*!40000 ALTER TABLE `workflow_task_notify_gru_mapping_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_resubmit_response`
--

DROP TABLE IF EXISTS `workflow_task_resubmit_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_resubmit_response` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext DEFAULT NULL,
  `is_complete` smallint(6) NOT NULL DEFAULT 0,
  `date_completed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_resubmit_response`
--

LOCK TABLES `workflow_task_resubmit_response` WRITE;
/*!40000 ALTER TABLE `workflow_task_resubmit_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_resubmit_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_resubmit_response_cf`
--

DROP TABLE IF EXISTS `workflow_task_resubmit_response_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_resubmit_response_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_state_after_edition` int(11) NOT NULL DEFAULT 0,
  `default_message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_resubmit_response_cf`
--

LOCK TABLES `workflow_task_resubmit_response_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_resubmit_response_cf` VALUES (22,7,'');
/*!40000 ALTER TABLE `workflow_task_resubmit_response_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_resubmit_response_history`
--

DROP TABLE IF EXISTS `workflow_task_resubmit_response_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_resubmit_response_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `iteration_number` int(11) NOT NULL DEFAULT 0,
  `previous_value` mediumtext DEFAULT NULL,
  `new_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`id_question`,`iteration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_resubmit_response_history`
--

LOCK TABLES `workflow_task_resubmit_response_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_resubmit_response_value`
--

DROP TABLE IF EXISTS `workflow_task_resubmit_response_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_resubmit_response_value` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_resubmit_response_value`
--

LOCK TABLES `workflow_task_resubmit_response_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_unittree_information`
--

DROP TABLE IF EXISTS `workflow_task_unittree_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_unittree_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `information_key` varchar(255) NOT NULL,
  `information_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_information`
--

LOCK TABLES `workflow_task_unittree_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_information` DISABLE KEYS */;
INSERT INTO `workflow_task_unittree_information` VALUES (3,1,'ASSIGNED_UNIT','Voirie'),(19,10,'ASSIGNED_UNIT','Espace Public'),(19,10,'ASSIGNOR_UNIT','Voirie'),(20,11,'ASSIGNED_UNIT','Voirie'),(20,11,'ASSIGNOR_UNIT','Espace Public'),(21,7,'ASSIGNED_UNIT','Petite Enfance'),(21,7,'ASSIGNOR_UNIT','Voirie'),(22,7,'ASSIGNED_UNIT','Voirie'),(22,7,'ASSIGNOR_UNIT','Petite Enfance'),(29,20,'ASSIGNED_UNIT','Etat Civil'),(31,1,'ASSIGNED_UNIT','Voirie'),(35,20,'ASSIGNED_UNIT','Etat Civil');
/*!40000 ALTER TABLE `workflow_task_unittree_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_unittree_unit_assignment_cf`
--

DROP TABLE IF EXISTS `workflow_task_unittree_unit_assignment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_unittree_unit_assignment_cf` (
  `id_task` int(11) NOT NULL,
  `assignment_type` varchar(50) DEFAULT NULL,
  `unit_selections` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_unit_assignment_cf`
--

LOCK TABLES `workflow_task_unittree_unit_assignment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_unit_assignment_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_unittree_unit_assignment_cf` VALUES (1,'create','ParametrableUnitSelection'),(7,'transfer','UnitSelectionFromAll'),(10,'assign_up','UnitSelectionParent'),(11,'transfer','UnitSelectionAssignor'),(20,'create','UnitSelectionSpecificUnit');
/*!40000 ALTER TABLE `workflow_task_unittree_unit_assignment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_unittree_unit_selection_parametrable_cf`
--

DROP TABLE IF EXISTS `workflow_task_unittree_unit_selection_parametrable_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_unittree_unit_selection_parametrable_cf` (
  `id_task` int(11) NOT NULL,
  `parametrable_config_handler` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_unit_selection_parametrable_cf`
--

LOCK TABLES `workflow_task_unittree_unit_selection_parametrable_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_parametrable_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_unittree_unit_selection_parametrable_cf` VALUES (1,'forms-unittree.formsParametrableConfigurationHandler');
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_parametrable_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_unittree_unit_selection_specific_unit_cf`
--

DROP TABLE IF EXISTS `workflow_task_unittree_unit_selection_specific_unit_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_unittree_unit_selection_specific_unit_cf` (
  `id_task` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_unit_selection_specific_unit_cf`
--

LOCK TABLES `workflow_task_unittree_unit_selection_specific_unit_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_specific_unit_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_unittree_unit_selection_specific_unit_cf` VALUES (20,2);
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_specific_unit_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_update_status`
--

DROP TABLE IF EXISTS `workflow_task_update_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_update_status` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_update_status`
--

LOCK TABLES `workflow_task_update_status` WRITE;
/*!40000 ALTER TABLE `workflow_task_update_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_update_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_userassignment_assignment_notification_cf`
--

DROP TABLE IF EXISTS `workflow_task_userassignment_assignment_notification_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_userassignment_assignment_notification_cf` (
  `id_task` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `recipients_cc` mediumtext DEFAULT NULL,
  `recipients_bcc` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_userassignment_assignment_notification_cf`
--

LOCK TABLES `workflow_task_userassignment_assignment_notification_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_userassignment_assignment_notification_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_userassignment_assignment_notification_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_workflow`
--

DROP TABLE IF EXISTS `workflow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_workflow` (
  `id_workflow` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enabled` smallint(6) DEFAULT 0,
  `workgroup_key` varchar(255) DEFAULT NULL,
  `uid_workflow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_workflow`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_workflow`
--

LOCK TABLES `workflow_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_workflow` DISABLE KEYS */;
INSERT INTO `workflow_workflow` VALUES (1,'Contacter ma mairie','Workflow de distribution des demandes au sein des services compétents','2024-03-05 16:38:00',1,'all','9fb11dcf-1d0d-11ef-8590-0242ac180003'),(2,'Demande d\'acte de mariage','Workflow de suivi des demandes d\'actes permettant de notifier les demandeurs à chaque étape, de demander des compléments et corrections, et de l\'instruction','2024-03-14 16:29:11',1,'all','9fb127db-1d0d-11ef-8590-0242ac180003');
/*!40000 ALTER TABLE `workflow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_workgroup_cf`
--

DROP TABLE IF EXISTS `workflow_workgroup_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_workgroup_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(255) NOT NULL,
  `id_mailing_list` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_workgroup_cf`
--

LOCK TABLES `workflow_workgroup_cf` WRITE;
/*!40000 ALTER TABLE `workflow_workgroup_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_workgroup_cf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-07 16:29:59
