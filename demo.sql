-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.18-0ubuntu0.19.10.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add signup otp',8,'add_signupotp'),(30,'Can change signup otp',8,'change_signupotp'),(31,'Can delete signup otp',8,'delete_signupotp'),(32,'Can view signup otp',8,'view_signupotp'),(33,'Can add products',9,'add_products'),(34,'Can change products',9,'change_products'),(35,'Can delete products',9,'delete_products'),(36,'Can view products',9,'view_products'),(37,'Can add countries',10,'add_countries'),(38,'Can change countries',10,'change_countries'),(39,'Can delete countries',10,'delete_countries'),(40,'Can view countries',10,'view_countries'),(41,'Can add continents',11,'add_continents'),(42,'Can change continents',11,'change_continents'),(43,'Can delete continents',11,'delete_continents'),(44,'Can view continents',11,'view_continents'),(45,'Can add cities',12,'add_cities'),(46,'Can change cities',12,'change_cities'),(47,'Can delete cities',12,'delete_cities'),(48,'Can view cities',12,'view_cities'),(49,'Can add plan',13,'add_plan'),(50,'Can change plan',13,'change_plan'),(51,'Can delete plan',13,'delete_plan'),(52,'Can view plan',13,'view_plan'),(53,'Can add Token',14,'add_token'),(54,'Can change Token',14,'change_token'),(55,'Can delete Token',14,'delete_token'),(56,'Can view Token',14,'view_token'),(57,'Can add messages',15,'add_messages'),(58,'Can change messages',15,'change_messages'),(59,'Can delete messages',15,'delete_messages'),(60,'Can view messages',15,'view_messages'),(61,'Can add employee',16,'add_employee'),(62,'Can change employee',16,'change_employee'),(63,'Can delete employee',16,'delete_employee'),(64,'Can view employee',16,'view_employee');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('6fb530e3e48349a9e9f104f607a9a30ef3321e67','2020-01-21 08:08:59.530336',1);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_messages`
--

DROP TABLE IF EXISTS `chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(1000) NOT NULL,
  `created` datetime(6) NOT NULL,
  `send_by_id` int(11) NOT NULL,
  `send_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_messages_send_by_id_3495f8d8_fk_users_user_id` (`send_by_id`),
  KEY `chat_messages_send_to_id_6d8fe5e8_fk_users_user_id` (`send_to_id`),
  CONSTRAINT `chat_messages_send_by_id_3495f8d8_fk_users_user_id` FOREIGN KEY (`send_by_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `chat_messages_send_to_id_6d8fe5e8_fk_users_user_id` FOREIGN KEY (`send_to_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_messages`
--

LOCK TABLES `chat_messages` WRITE;
/*!40000 ALTER TABLE `chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crud_rest_products`
--

DROP TABLE IF EXISTS `crud_rest_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crud_rest_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `feature` varchar(30) NOT NULL,
  `usage_status` varchar(25) NOT NULL,
  `kms_driven` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crud_rest_products`
--

LOCK TABLES `crud_rest_products` WRITE;
/*!40000 ALTER TABLE `crud_rest_products` DISABLE KEYS */;
INSERT INTO `crud_rest_products` VALUES (3,'Hyundai Verna 1.6',2016,'Auto Gear','Used','15879','230000'),(5,'Hyundai Verna 1.6',2015,'Air Baloon','Used','25666','7560000');
/*!40000 ALTER TABLE `crud_rest_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(14,'authtoken','token'),(15,'chat','messages'),(5,'contenttypes','contenttype'),(9,'crud_rest','products'),(12,'select_city','cities'),(11,'select_city','continents'),(10,'select_city','countries'),(13,'select_city','plan'),(6,'sessions','session'),(16,'users','employee'),(8,'users','signupotp'),(7,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-01-06 12:16:56.108133'),(2,'auth','0001_initial','2020-01-06 12:17:00.135296'),(3,'admin','0001_initial','2020-01-06 12:17:13.902054'),(4,'admin','0002_logentry_remove_auto_add','2020-01-06 12:17:17.609585'),(5,'admin','0003_logentry_add_action_flag_choices','2020-01-06 12:17:17.764507'),(6,'contenttypes','0002_remove_content_type_name','2020-01-06 12:17:21.496992'),(7,'auth','0002_alter_permission_name_max_length','2020-01-06 12:17:23.447179'),(8,'auth','0003_alter_user_email_max_length','2020-01-06 12:17:25.813491'),(9,'auth','0004_alter_user_username_opts','2020-01-06 12:17:25.985222'),(10,'auth','0005_alter_user_last_login_null','2020-01-06 12:17:27.863253'),(11,'auth','0006_require_contenttypes_0002','2020-01-06 12:17:28.030502'),(12,'auth','0007_alter_validators_add_error_messages','2020-01-06 12:17:28.131453'),(13,'auth','0008_alter_user_username_max_length','2020-01-06 12:17:30.480395'),(14,'auth','0009_alter_user_last_name_max_length','2020-01-06 12:17:32.934426'),(15,'auth','0010_alter_group_name_max_length','2020-01-06 12:17:35.160718'),(16,'auth','0011_update_proxy_permissions','2020-01-06 12:17:35.306715'),(17,'sessions','0001_initial','2020-01-06 12:17:36.291552'),(18,'users','0001_initial','2020-01-06 12:17:38.208038'),(19,'users','0002_user_phone','2020-01-06 12:17:39.116906'),(20,'users','0003_auto_20200106_1021','2020-01-06 12:17:42.157593'),(21,'users','0004_signupotp_attempt','2020-01-07 05:58:45.298462'),(22,'users','0005_auto_20200107_0617','2020-01-07 06:17:26.722100'),(23,'users','0006_auto_20200107_0750','2020-01-07 07:50:21.899894'),(24,'crud_rest','0001_initial','2020-01-08 07:14:30.874065'),(25,'select_city','0001_initial','2020-01-08 12:05:10.376682'),(26,'select_city','0002_plan','2020-01-08 13:39:35.439966'),(27,'select_city','0003_auto_20200108_1347','2020-01-08 13:47:44.810928'),(28,'select_city','0004_auto_20200108_1413','2020-01-08 14:13:42.489710'),(29,'select_city','0005_auto_20200120_0839','2020-01-20 08:40:07.198659'),(30,'authtoken','0001_initial','2020-01-21 06:12:57.048655'),(31,'authtoken','0002_auto_20160226_1747','2020-01-21 06:13:00.527737'),(32,'chat','0001_initial','2020-01-21 08:40:32.217960'),(33,'users','0007_employee','2020-01-22 12:13:43.533165');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6eu1vjkkl5c2othoxr40ivsmdg6knp96','YzkzYTk5NzBmZGI0OTliYjU5MDNkYmJhYzUzZjFhZDEwMmI0MTVjODp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYjU4YWIwMzIxYjRlZjdiYmM3M2QxM2RlMzJlYWI1MTE0ZDYzMGJhIn0=','2020-01-20 12:52:55.228494'),('k59nvo97l5weneakduh0qahga02vgtwz','MjI5ZDliZmJiNWRjMWU5YTM3NTA0OTUyNjRkYmE1N2Y2MGVhNTQ2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTFiMDA5ZjBiOGMyODg4OWEzZGZjMzI0YzcwOTI4NWE2ZGFlZWVmIn0=','2020-01-21 13:15:14.048707'),('mqp6lcirf4jpe6n3z3tiqa5xkof1hicr','YjQyNDFmNWUwNmFkNTI5ZDA2NWZkN2M4ZWY0ZWUxYmFiZjI0OWUzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNGU1ZTkwZjBmYWNlZjFhNjI0Nzc0NDE5ZTgzN2NlMWU0YWRhYThmIn0=','2020-01-27 06:02:43.387728');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_city_cities`
--

DROP TABLE IF EXISTS `select_city_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_city_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `select_city_cities_country_id_94939dd5_fk_select_ci` (`country_id`),
  CONSTRAINT `select_city_cities_country_id_94939dd5_fk_select_ci` FOREIGN KEY (`country_id`) REFERENCES `select_city_countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_city_cities`
--

LOCK TABLES `select_city_cities` WRITE;
/*!40000 ALTER TABLE `select_city_cities` DISABLE KEYS */;
INSERT INTO `select_city_cities` VALUES (1,'AlgiersDzayer',1),(2,'Oran Wehran',1),(3,'Constantine Qsenṭina',1),(4,'Annaba Ɛennaba',1),(5,'Batna Batna',1),(6,'Blida Blida',1),(7,'Sétif Sṭif',1),(8,'Chlef Clef',1),(9,'Djelfa Ǧelfa',1),(10,'Sidi Bel Abbes',1),(11,'Cotonou	Benin',2),(12,'Abomey-Calavi',2),(13,'Djougou Benin',2),(14,'Porto-Novo',2),(15,'Parakou',2),(16,'Abia State Umuahia',3),(17,'Adamawa Yola',3),(18,'Akwa Ibom Uyo',3),(19,'Anambra Awka',3),(20,'Bauchi Bauchi',3),(21,'Bayelsa Yenagoa',3),(22,'Benue Makurdi',3),(23,'Borno Maiduguri',3),(24,'Abia State Umuahia',4),(25,'Adamawa Yola',4),(26,'Akwa Ibom Uyo',4),(27,'Anambra Awka',4),(28,'Bauchi Bauchi',4),(29,'Bayelsa Yenagoa',4),(30,'Benue Makurdi',4),(31,'Borno Maiduguri',4),(32,'Andhra Pradesh',5),(33,'Haryana',5),(34,'Punjab',5),(35,'Himachal Pradesh',5),(36,'Chandigarh',5),(37,'Delhi',5),(38,'Mumbai',5),(39,'Hyderabad',5),(40,'Mohali',5),(41,'Agra',5),(42,'Banglore',5),(43,'Noida',5),(44,'Aceh ',6),(45,'Bali',6),(46,'Bangka Belitung',6),(47,'Banten',6),(48,'Bengkulu',6),(49,'Alborz',7),(50,'Ardabil',7),(51,'Azerbaijan, East',7),(52,'Azerbaijan, West',7),(53,'Bushehr',7),(54,'Fars',7),(55,'Gilan',7),(56,'Golestan',7),(57,'Afula',8),(58,'Akko',8),(59,'Dimona',8),(60,'Dor',8),(61,'Herzliyya',8),(62,'Jerusalem',8),(63,'Nazareth',8),(64,'Ramat Gan',8),(65,' Baden-Württemberg',9),(66,' Bavaria',9),(67,' Berlin',9),(68,' Brandenburg',9),(69,'Bremen',9),(70,' Hamburg',9),(71,' Hesse',9),(72,'Saarland',9),(73,'Saxony',9),(74,'Saxony-Anhalt',9),(75,'Thuringia',9),(76,'Reykjavik ',10),(77,'South Iceland',10),(78,'Westman Islands',10),(79,'West Iceland',10),(80,'East Iceland',10),(81,'Westfjords',10),(82,'North Iceland',10),(83,'Agrigento',11),(84,'Alessandria',11),(85,'Belluno',11),(86,'Bergamo',11),(87,'Como',11),(88,'	Enna',11),(89,'Fermo',11),(90,'Genoa',11),(91,'	Imperia',11),(92,'Zürich',12),(93,'Geneva',12),(94,'Basel',12),(95,'Lausanne',12),(96,'Bern',12),(97,'Lucerne',12),(98,'Lugano',12),(99,'St Gallen',12),(100,' Aguascalientes',13),(101,' Baja California Norte',13),(102,' Baja California Sur',13),(103,'Chiapas',13),(104,'Mexico City',13),(105,'Guerrero',13),(106,'Jalisco',13),(107,'Sinaloa',13),(108,'Veracruz',13),(109,'Zacatecas',13),(110,'Alabama ',14),(111,'Alaska',14),(112,'Arizona',14),(113,'California',14),(114,'Florida	',14),(115,'New York',14),(116,' New Jersey',14),(117,' Australian Capital Territory',15),(118,' New South Wales',15),(119,'Northern Territory',15),(120,'Queensland',15),(121,'South Australia',15),(122,'Tasmania    ',15),(123,'Victoria',15),(124,'Northland ',16),(125,'Auckland',16),(126,'Waikato',16),(127,'	Bay of Plenty',16),(128,'Taranaki',16),(129,'Wellington',16),(130,' Minas Gerais',17),(131,'Rio de Janeiro',17),(132,'Bahia',17),(133,'Rio Grande do Sul',17),(134,'Adelphi ',18),(135,'Albion',18),(136,'Betsy Ground',18),(137,'	Bush Lot',18),(138,'Barima Waini',18),(139,'Pomeroon-Supenaam',18),(140,'Bagua',19),(141,'Luya',19),(142,'Aija',19),(143,'Casma',19),(144,'Pallasca',19),(145,'Andahuaylas',19),(146,'Castilla',19),(147,'Cangallo',19),(148,'Víctor Fajardo',19),(149,'Zürich',20),(150,'Geneva',20),(151,'Basel',20),(152,'Lausanne',20),(153,'Bern',20),(154,'Lucerne',20),(155,'Lugano',20),(156,'St Gallen',20),(157,' Minas Gerais',21),(158,'Rio de Janeiro',21),(159,'Bahia',21),(160,'Rio Grande do Sul',21),(161,'Adelphi ',22),(162,'Albion',22),(163,'Betsy Ground',22),(164,'	Bush Lot',22),(165,'Barima Waini',22),(166,'Pomeroon-Supenaam',22),(167,'Bagua',23),(168,'Luya',23),(169,'Aija',23),(170,'Casma',23),(171,'Pallasca',23),(172,'Andahuaylas',23),(173,'Castilla',23),(174,'Cangallo',23),(175,'Víctor Fajardo',23),(202,'Mandi',5),(203,'Chamba',5),(204,'Gurgoan',5),(205,'Mandi',6),(206,'anee',2),(207,'Chamba',5),(208,'Hanee',5),(209,'Mandi',1),(210,'Haneesh',16),(211,'Mandi Anee',1),(212,'Chamba',5),(213,'Chamba',5),(214,'Mandi',1),(215,'Chamba',5),(216,'NASA',2),(217,'Mandi',5),(218,'Kangra',5),(219,'Sarkaghat',5),(220,'Joginder Nagar',5),(221,'Chamba',1),(222,'Mandi',1),(223,'Chamba',5),(224,'Mandi',14),(225,'Kullu',5),(226,'Chamba',1),(227,'Chamba',7),(228,'Mandi',9),(229,'Rohtak',5),(230,'Chamba',2),(231,'Weak',9),(232,'Chamba',1),(233,'Chamba',1),(234,'Chamba',6),(235,'QWERTYUIOP',5),(236,'Add New City',2),(237,'sdsd',1),(238,'Chamba',6),(239,'Chamba',6);
/*!40000 ALTER TABLE `select_city_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_city_continents`
--

DROP TABLE IF EXISTS `select_city_continents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_city_continents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_city_continents`
--

LOCK TABLES `select_city_continents` WRITE;
/*!40000 ALTER TABLE `select_city_continents` DISABLE KEYS */;
INSERT INTO `select_city_continents` VALUES (1,'Africa'),(2,'ASIA'),(3,'Europe'),(4,'North AMERICA'),(5,'Oceania'),(6,'South America'),(7,'South America');
/*!40000 ALTER TABLE `select_city_continents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_city_countries`
--

DROP TABLE IF EXISTS `select_city_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_city_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `continent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `select_city_countrie_continent_id_832c1e2d_fk_select_ci` (`continent_id`),
  CONSTRAINT `select_city_countrie_continent_id_832c1e2d_fk_select_ci` FOREIGN KEY (`continent_id`) REFERENCES `select_city_continents` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_city_countries`
--

LOCK TABLES `select_city_countries` WRITE;
/*!40000 ALTER TABLE `select_city_countries` DISABLE KEYS */;
INSERT INTO `select_city_countries` VALUES (1,'Algeria',1),(2,'Benin',1),(3,'Nigeria',1),(4,'Africa',1),(5,'India',2),(6,'Indonesia',2),(7,'Iran',2),(8,'Israel',2),(9,'Germany',3),(10,'Iceland',3),(11,'Italy',3),(12,'Switzerland',3),(13,'North AMERICA',4),(14,'United States',4),(15,'Australia',5),(16,'New Zealand',5),(17,'Brazil',6),(18,'Guyana',6),(19,'Peru',6),(20,'Switzerland',6),(21,'Brazil',7),(22,'Guyana',7),(23,'Peru',7);
/*!40000 ALTER TABLE `select_city_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_city_plan`
--

DROP TABLE IF EXISTS `select_city_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_city_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `repeat` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_city_plan`
--

LOCK TABLES `select_city_plan` WRITE;
/*!40000 ALTER TABLE `select_city_plan` DISABLE KEYS */;
INSERT INTO `select_city_plan` VALUES (1,'Test Plan','2020-01-08 13:50:58.150024','2020-01-08 19:03:01.673532',0,1),(2,'Test Plan','2020-01-08 13:54:48.924528','2020-01-08 19:26:15.024901',0,1),(3,'Test Plan','2020-01-08 13:54:59.945647','2020-01-08 19:25:15.024901',0,1),(4,'Test Plan','2020-01-08 13:55:08.045134','2020-01-08 19:27:15.024901',0,1),(5,'Test Plan','2020-01-08 14:13:28.487820','2020-01-08 19:27:15.024901',0,1),(6,'Test Plan','2020-01-08 14:13:53.217112','2020-01-08 19:27:15.024901',0,1),(7,'Test Plan','2020-01-08 14:14:41.507732','2020-01-08 19:27:15.024901',0,1),(8,'Test Plan','2020-01-08 14:15:32.775693','2020-01-08 19:27:15.024901',0,1),(9,'Test Plan','2020-01-08 14:15:33.323171','2020-01-08 19:27:15.024901',0,1);
/*!40000 ALTER TABLE `select_city_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_employee`
--

DROP TABLE IF EXISTS `users_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_employee`
--

LOCK TABLES `users_employee` WRITE;
/*!40000 ALTER TABLE `users_employee` DISABLE KEYS */;
INSERT INTO `users_employee` VALUES (1,40),(2,50),(3,60);
/*!40000 ALTER TABLE `users_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signupotp`
--

DROP TABLE IF EXISTS `users_signupotp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_signupotp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otp` varchar(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attempt` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_signupotp_user_id_dbe00457_fk_users_user_id` (`user_id`),
  CONSTRAINT `users_signupotp_user_id_dbe00457_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signupotp`
--

LOCK TABLES `users_signupotp` WRITE;
/*!40000 ALTER TABLE `users_signupotp` DISABLE KEYS */;
INSERT INTO `users_signupotp` VALUES (3,'090224','2020-01-07 11:55:48.483512',2,0),(6,'810552','2020-01-09 05:48:33.722156',1,0),(8,'305316','2020-01-09 13:24:53.762437',1,0),(9,'952460','2020-01-09 13:30:01.575859',3,0),(10,'346473','2020-01-09 14:11:14.668521',1,0),(11,'420275','2020-01-10 13:23:08.798144',1,0),(12,'071261','2020-01-10 13:23:31.775098',1,0),(13,'870244','2020-01-15 13:48:43.843050',1,1),(14,'730499','2020-01-15 13:49:02.764548',1,3),(15,'697355','2020-01-16 06:30:18.505250',1,0),(16,'469446','2020-01-17 05:44:45.667206',1,1),(17,'617041','2020-01-20 06:27:28.734797',1,0),(18,'217305','2020-01-20 06:29:33.115247',1,0),(19,'139887','2020-01-20 06:30:16.374225',1,1),(20,'957890','2020-01-20 06:38:36.703544',1,1),(21,'614452','2020-01-20 06:38:53.280735',1,0),(22,'387419','2020-01-20 06:39:37.921380',1,0),(23,'322641','2020-01-20 10:44:12.198059',1,0),(24,'106208','2020-01-21 05:49:33.803770',1,0),(25,'501398','2020-01-23 10:38:31.063079',1,0);
/*!40000 ALTER TABLE `users_signupotp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `users_user_phone_fe37f55c_uniq` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$180000$UHMMh2OejJrg$rn61ZZw00raITG6pW2c0WNLMnT4WfptSnYznWdxFxaQ=','2020-01-14 09:14:02.653941','avinash@gmail.com','Avinash','Thakur','2020-01-07 11:14:17.046065',1,'8219756320'),(2,'pbkdf2_sha256$180000$hY0EmnyOvJMf$3nS/pVAsFQF1Uc9NAJpUnhRYZR7mivhXJ1e+ORj5DVE=',NULL,'snbbsj@gmail.com','test','test','2020-01-07 11:55:48.372663',0,'347864783'),(3,'pbkdf2_sha256$180000$Q6y1ypFohRoK$b6i2d2QUCObkLpOP6qwgWeC1q1LyXS7GrwrkMWT0MZE=','2020-01-07 11:57:59.318610','avinash1@gmail.com','test','test','2020-01-07 11:56:35.964768',1,'7696636036');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-23 17:25:02
