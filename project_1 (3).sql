-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 09:14 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact', 7, 'add_contact'),
(26, 'Can change contact', 7, 'change_contact'),
(27, 'Can delete contact', 7, 'delete_contact'),
(28, 'Can view contact', 7, 'view_contact'),
(29, 'Can add destination', 8, 'add_destination'),
(30, 'Can change destination', 8, 'change_destination'),
(31, 'Can delete destination', 8, 'delete_destination'),
(32, 'Can view destination', 8, 'view_destination'),
(33, 'Can add signup', 9, 'add_signup'),
(34, 'Can change signup', 9, 'change_signup'),
(35, 'Can delete signup', 9, 'delete_signup'),
(36, 'Can view signup', 9, 'view_signup'),
(37, 'Can add user', 9, 'add_user'),
(38, 'Can change user', 9, 'change_user'),
(39, 'Can delete user', 9, 'delete_user'),
(40, 'Can view user', 9, 'view_user'),
(41, 'Can add trip plan', 10, 'add_tripplan'),
(42, 'Can change trip plan', 10, 'change_tripplan'),
(43, 'Can delete trip plan', 10, 'delete_tripplan'),
(44, 'Can view trip plan', 10, 'view_tripplan'),
(45, 'Can add cart item', 11, 'add_cartitem'),
(46, 'Can change cart item', 11, 'change_cartitem'),
(47, 'Can delete cart item', 11, 'delete_cartitem'),
(48, 'Can view cart item', 11, 'view_cartitem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(5, 'pbkdf2_sha256$600000$8w5meQuDSlrx8O9r8LBEZz$GNccQakau6vQfK7Cuc8S6RzN2cMNy+myPyaGcJ44Gcg=', '2025-06-13 06:14:00.410284', 1, 'kmg', '', '', '', 1, 1, '2025-06-05 07:08:55.624512'),
(6, 'pbkdf2_sha256$600000$g5ykQOwIrRyBkfFRxMDhR3$0BocuQv79O1ybVNazHzaEOhZGG3o40C4HgagqrGJe+g=', NULL, 0, 'abcd', '', '', 'abcd@gmail.com', 0, 1, '2025-06-13 06:03:36.586143'),
(7, 'pbkdf2_sha256$600000$jI8UHm27x5xlo5BRQeY8uG$GQfLIA0C4doCxPDthpayZhzGrMxTaVE3pIOJ9ObW+n4=', '2025-06-13 07:19:38.903924', 0, 'krishii', '', '', 'k@gmail.com', 0, 1, '2025-06-13 07:19:37.786349'),
(8, 'pbkdf2_sha256$600000$JzfW0P5jUzoa446mUEXLS9$6qLhTCNLjFzZh0bOSH5gaJkHaQ3rRW0tOC5ewN4qIsI=', '2025-06-13 07:26:35.867638', 0, 'xyz', '', '', 'xyz@gmail.com', 0, 1, '2025-06-13 07:26:34.736353');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(15, '2025-06-05 07:17:03.057007', '1', 'krishna', 3, '', 4, 5),
(16, '2025-06-05 07:21:45.333872', '5', 'Queenstown', 1, '[{\"added\": {}}]', 8, 5),
(17, '2025-06-05 07:24:12.205703', '1', 'Santorini', 2, '[{\"changed\": {\"fields\": [\"Region\"]}}]', 8, 5),
(18, '2025-06-05 07:24:43.445554', '3', 'Kyoto', 2, '[{\"changed\": {\"fields\": [\"Region\"]}}]', 8, 5),
(19, '2025-06-05 07:25:17.576602', '2', 'Banff', 2, '[{\"changed\": {\"fields\": [\"Region\"]}}]', 8, 5),
(20, '2025-06-05 07:27:50.579926', '6', 'Marrakech', 1, '[{\"added\": {}}]', 8, 5),
(21, '2025-06-05 07:29:15.548539', '6', 'Marrakech', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(22, '2025-06-05 07:43:40.805788', '6', 'Marrakech', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(23, '2025-06-05 08:01:18.870494', '6', 'Marrakech', 2, '[]', 8, 5),
(24, '2025-06-05 08:03:30.408168', '7', 'Balloch', 1, '[{\"added\": {}}]', 8, 5),
(25, '2025-06-05 08:04:29.568574', '7', 'Balloch', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(26, '2025-06-06 05:51:03.438648', '7', 'Balloch', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(27, '2025-06-06 05:54:18.045968', '2', 'Banff', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(28, '2025-06-06 05:55:51.896653', '4', 'phu quoc', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(29, '2025-06-06 05:56:58.517656', '5', 'Queenstown', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(30, '2025-06-06 06:53:20.647330', '8', 'Rio de Janeiro', 1, '[{\"added\": {}}]', 8, 5),
(31, '2025-06-06 06:54:24.495573', '8', 'Rio de Janeiro', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(32, '2025-06-06 06:55:34.358651', '3', 'Kyoto', 2, '[{\"changed\": {\"fields\": [\"Region\"]}}]', 8, 5),
(33, '2025-06-06 06:55:56.688232', '1', 'Santorini', 2, '[{\"changed\": {\"fields\": [\"Region\"]}}]', 8, 5),
(34, '2025-06-06 06:56:11.731730', '5', 'Queenstown', 2, '[{\"changed\": {\"fields\": [\"Region\"]}}]', 8, 5),
(35, '2025-06-06 06:56:18.660637', '7', 'Balloch', 2, '[{\"changed\": {\"fields\": [\"Region\"]}}]', 8, 5),
(36, '2025-06-06 06:56:25.865019', '6', 'Marrakech', 2, '[{\"changed\": {\"fields\": [\"Region\"]}}]', 8, 5),
(37, '2025-06-06 06:57:06.905503', '2', 'Banff', 2, '[{\"changed\": {\"fields\": [\"Region\"]}}]', 8, 5),
(38, '2025-06-06 07:05:20.596515', '9', 'Amalfi Coast', 1, '[{\"added\": {}}]', 8, 5),
(39, '2025-06-06 07:06:05.114452', '9', 'Amalfi Coast', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(40, '2025-06-06 07:09:10.107848', '10', 'Cape Town', 1, '[{\"added\": {}}]', 8, 5),
(41, '2025-06-07 05:22:59.707772', '10', 'Cape Town', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5),
(42, '2025-06-07 05:27:00.782198', '11', 'Paris', 1, '[{\"added\": {}}]', 8, 5),
(43, '2025-06-07 05:27:46.149803', '11', 'Paris', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(11, 'travel', 'cartitem'),
(7, 'travel', 'contact'),
(8, 'travel', 'destination'),
(9, 'travel', 'signup'),
(10, 'travel', 'tripplan');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-05-20 06:15:42.234969'),
(2, 'auth', '0001_initial', '2025-05-20 06:15:42.778077'),
(3, 'admin', '0001_initial', '2025-05-20 06:15:42.911464'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-05-20 06:15:42.918561'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-20 06:15:42.927199'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-05-20 06:15:42.983237'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-05-20 06:15:43.029031'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-05-20 06:15:43.043685'),
(9, 'auth', '0004_alter_user_username_opts', '2025-05-20 06:15:43.050796'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-05-20 06:15:43.097381'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-05-20 06:15:43.099770'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-05-20 06:15:43.107166'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-05-20 06:15:43.120001'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-05-20 06:15:43.133301'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-05-20 06:15:43.145500'),
(16, 'auth', '0011_update_proxy_permissions', '2025-05-20 06:15:43.154656'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-05-20 06:15:43.168157'),
(18, 'sessions', '0001_initial', '2025-05-20 06:15:43.207013'),
(19, 'travel', '0001_initial', '2025-05-20 06:15:43.236137'),
(20, 'travel', '0002_delete_signup', '2025-05-20 06:15:43.245078'),
(21, 'travel', '0003_signup', '2025-05-20 06:15:43.268849'),
(22, 'travel', '0004_destination', '2025-05-20 06:15:43.291356'),
(23, 'travel', '0005_auto_20250513_1605', '2025-05-20 06:15:43.317420'),
(24, 'travel', '0006_remove_destination_image', '2025-05-20 06:15:43.327508'),
(25, 'travel', '0007_destination_image', '2025-05-20 06:15:43.335867'),
(26, 'travel', '0008_contact', '2025-05-20 06:15:43.359478'),
(27, 'travel', '0009_delete_contact_delete_destination_delete_signup', '2025-05-20 06:15:43.376740'),
(28, 'travel', '0010_initial', '2025-05-20 06:16:43.601833'),
(29, 'travel', '0011_rename_signup_user', '2025-05-21 07:49:49.814406'),
(30, 'travel', '0012_rename_user_signup', '2025-05-21 08:11:56.063559'),
(31, 'travel', '0013_destination_latitude_destination_longitude_and_more', '2025-05-22 07:53:14.709431'),
(32, 'travel', '0014_alter_destination_short_info', '2025-05-22 07:53:50.769326'),
(33, 'travel', '0015_remove_destination_latitude_and_more', '2025-05-22 08:20:18.710950'),
(34, 'travel', '0016_rename_short_info_destination_description', '2025-06-03 05:56:25.838009'),
(35, 'travel', '0017_tripplan', '2025-06-07 06:03:37.015534'),
(36, 'travel', '0018_cartitem', '2025-06-13 05:50:06.610138'),
(37, 'travel', '0019_delete_cartitem', '2025-06-13 06:29:14.947125');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('o1n22l2f64k16ogolalqssa6t83zthwc', '.eJxVjEEOwiAQRe_C2hBkygAu3fcMzcCAVA0kpV0Z765NutDtf-_9l5hoW8u09bRMM4uLOIvT7xYoPlLdAd-p3pqMra7LHOSuyIN2OTZOz-vh_h0U6uVbOxgsOTbaepOVQkDOgJGyycYgaG-HBAlJhRjQKM2evYpsk8_g0IN4fwDI1jdj:1uHd35:Db_RZ8rB2Pfp03MAcKAzqPYZeJTdgc7FIaOo_hdlmpk', '2025-06-04 06:35:31.259582');

-- --------------------------------------------------------

--
-- Table structure for table `travel_contact`
--

CREATE TABLE `travel_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `travel_destination`
--

CREATE TABLE `travel_destination` (
  `id` bigint(20) NOT NULL,
  `travel_destination` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `activity_type` varchar(50) NOT NULL,
  `budget` int(11) NOT NULL,
  `rating` double NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `Description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_destination`
--

INSERT INTO `travel_destination` (`id`, `travel_destination`, `country`, `region`, `activity_type`, `budget`, `rating`, `image`, `Description`) VALUES
(1, 'Santorini', 'Greece', 'Cyclades Islands', 'Relaxation', 1500, 4.8, 'Destination/Santorini_7v51CUX.jpg', 'Santorini is a stunning Greek island in the Aegean Sea, known for its whitewashed buildings with blue domes, dramatic cliffs, and breathtaking sunsets. Formed by a volcanic eruption, it features unique black and red sand beaches, crystal-clear waters, and charming villages like Oia and Fira.'),
(2, 'Banff', 'Canada', 'Alberta', 'Adventure', 1200, 4.6, 'Destination/Banff_National_Park_e9yTJgv.jpg', 'Banff is a picturesque town located in the heart of Banff National Park in the Canadian Rockies. Known for its stunning mountain scenery, turquoise lakes, and abundant wildlife, it offers year-round outdoor activities like hiking, skiing, and canoeing. The town also features charming shops, hot springs, and historic landmarks.'),
(3, 'Kyoto', 'Japan', 'Kansai', 'Culture', 1800, 4.7, 'Destination/Kyoto_YGcUGBu.jpg', 'Kyoto is a historic city in Japan famous for its well-preserved temples, traditional wooden houses, and beautiful gardens. Once the imperial capital, it’s renowned for its rich cultural heritage, including stunning shrines, ancient tea houses, and vibrant seasonal festivals.'),
(4, 'phu quoc', 'Vietnam', 'Mekong Delta', 'Island', 4150, 4.6, 'Destination/phu_quoc_8Q6lriJ.jpg', 'Phu Quoc is a beautiful island in Vietnam known for its pristine beaches, clear waters, and lush tropical forests. It’s a popular destination for relaxation, snorkeling, and exploring nature.'),
(5, 'Queenstown', 'New Zealand', 'Otago', 'Region:', 16700, 4.9, 'Destination/Queenstown_S4bdU0b.jpg', 'Queenstown is a haven for adrenaline junkies with bungee jumping, paragliding, and jet boating. It also offers tranquil lake cruises and alpine scenery. It’s great year-round but especially popular in summer (Dec–Feb) and winter (Jun–Aug for skiing).'),
(6, 'Marrakech', 'Morocco', 'Marrakesh-Safi', 'Cultural exploration, Shopping, Cuisine', 8300, 4.5, 'Destination/Marrakech_1wuZMvJ.jpg', 'Marrakech is a sensory feast of bustling souks, intricate architecture, and aromatic cuisine. Key attractions include Jemaa el-Fnaa square, the Majorelle Garden, and traditional Moroccan hammams. Autumn and spring offer the most pleasant weather.'),
(7, 'Balloch', 'United Kingdom', 'Scotland', 'Outdoor adventures, Scenic walks, Kayaking', 10000, 4.7, 'Destination/Balloch_EB4nn1N.jpg', 'No desc Balloch, located on the shores of Loch Lomond, is a picturesque village offering scenic beauty and access to the Trossachs National Park. Visitors can enjoy outdoor activities such as kayaking, hiking, and peaceful walks. The village has seen a significant increase in interest, making it a top summer destination for 2025. ription available'),
(8, 'Rio de Janeiro', 'Brazil', 'Southeast', 'Beach,Festival', 15000, 4.6, 'Destination/Rio_de_Janeiro_lb75BJ6.jpg', 'From the golden sands of Copacabana to the iconic Christ the Redeemer statue, Rio pulses with energy. Visit during Carnival to experience one of the world’s most vibrant festivals, with samba parades, music, and street celebrations unlike anywhere else on Earth.'),
(9, 'Amalfi Coast', 'Italy', 'Campania', 'Scenic,Relaxation', 20000, 4.7, 'Destination/Amalfi_Coast_sDERIQn.jpg', 'Coastal cliffs, pastel villages, and endless sea views define the Amalfi Coast. Indulge in fresh seafood, boat tours, and the romantic Italian charm.'),
(10, 'Cape Town', 'South Africa', 'Western Cape', 'Urban/Nature', 13000, 4.6, 'Destination/Cape_Town_lgspDGd.jpg', 'A city framed by mountains and ocean, Cape Town offers cable car rides up Table Mountain, visits to Robben Island, and beautiful wine country nearby.'),
(11, 'Paris', 'France', 'Île-de-France', 'Cultural,Romantic', 20000, 4.9, 'Destination/paris_vwhptXX.jpg', 'Explore the Eiffel Tower, world-class museums, and quaint cafés. Paris is a timeless destination for lovers of art, fashion, and cuisine.');

-- --------------------------------------------------------

--
-- Table structure for table `travel_signup`
--

CREATE TABLE `travel_signup` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_signup`
--

INSERT INTO `travel_signup` (`id`, `name`, `email`, `password`) VALUES
(1, 'krishna', 'abc@gmail.com', '12345566'),
(2, 'vidhi', 'v@gmail.com', '123321'),
(3, 'abcd', 'abcd@gmail.com', '654321'),
(4, 'krishii', 'k@gmail.com', '123456'),
(5, 'xyz', 'xyz@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `travel_tripplan`
--

CREATE TABLE `travel_tripplan` (
  `id` bigint(20) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `budget` decimal(10,2) NOT NULL,
  `transport` varchar(50) NOT NULL,
  `accommodation` varchar(50) NOT NULL,
  `star_rating` int(11) NOT NULL,
  `special_requests` longtext NOT NULL,
  `itinerary` longtext NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_tripplan`
--

INSERT INTO `travel_tripplan` (`id`, `destination`, `start_date`, `end_date`, `budget`, `transport`, `accommodation`, `star_rating`, `special_requests`, `itinerary`, `name`, `email`, `phone`) VALUES
(1, 'banff', '2025-06-26', '2025-07-03', '50000.00', 'flight', 'hotel', 4, '', '', 'krishna', 'abc@gmail.com', '58484939393'),
(2, 'banff', '2025-06-26', '2025-07-03', '50000.00', 'flight', 'hotel', 4, '', '', 'krishna', 'abc@gmail.com', '58484939393');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `travel_contact`
--
ALTER TABLE `travel_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_destination`
--
ALTER TABLE `travel_destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_signup`
--
ALTER TABLE `travel_signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `travel_tripplan`
--
ALTER TABLE `travel_tripplan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `travel_contact`
--
ALTER TABLE `travel_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel_destination`
--
ALTER TABLE `travel_destination`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `travel_signup`
--
ALTER TABLE `travel_signup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `travel_tripplan`
--
ALTER TABLE `travel_tripplan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
