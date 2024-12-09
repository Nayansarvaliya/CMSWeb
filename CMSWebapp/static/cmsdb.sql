-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 11:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendancemaster`
--

CREATE TABLE `attendancemaster` (
  `atid` bigint(20) NOT NULL,
  `id` int(11) NOT NULL,
  `stdphoto` varchar(50) NOT NULL,
  `stdenno` varchar(25) NOT NULL,
  `stdname` varchar(100) NOT NULL,
  `stdsemester` int(11) NOT NULL,
  `atdate` varchar(25) NOT NULL,
  `atstatus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendancemaster`
--

INSERT INTO `attendancemaster` (`atid`, `id`, `stdphoto`, `stdenno`, `stdname`, `stdsemester`, `atdate`, `atstatus`) VALUES
(1, 3, 's1.jpg', '202', 'mahesh yuudhistirbhai sharma', 1, '29/01/2024', 'Absent'),
(2, 1, 's6.jpg', '121320032004', 'niharika Pravinbhai sharma', 1, '29/01/2024', 'Absent'),
(3, 1, 'v2.jpg', '2006008562', 'meet vijaybhai shetty', 1, '29/01/2024', 'Present'),
(4, 1, 's7.jpg', '112003200408', 'maulik dharmik mehta', 3, '29/01/2024', 'Present'),
(5, 1, 'n2.jpg', '121310021003', 'neha hareshbhai bhagat', 3, '29/01/2024', 'Absent'),
(6, 1, 's2.jpg', '101', 'heer vikasbhai koshti', 5, '29/01/2024', 'Absent'),
(7, 1, 'n1.jpg', '1002005030', 'vishva hiteshbhai shah', 5, '29/01/2024', 'Present'),
(8, 1, 's1.jpg', '202', 'mahesh yuudhistirbhai sharma', 1, '29/01/2024', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add faculty master', 7, 'add_facultymaster'),
(26, 'Can change faculty master', 7, 'change_facultymaster'),
(27, 'Can delete faculty master', 7, 'delete_facultymaster'),
(28, 'Can view faculty master', 7, 'view_facultymaster'),
(29, 'Can add student master', 8, 'add_studentmaster'),
(30, 'Can change student master', 8, 'change_studentmaster'),
(31, 'Can delete student master', 8, 'delete_studentmaster'),
(32, 'Can view student master', 8, 'view_studentmaster'),
(33, 'Can add attendance master', 9, 'add_attendancemaster'),
(34, 'Can change attendance master', 9, 'change_attendancemaster'),
(35, 'Can delete attendance master', 9, 'delete_attendancemaster'),
(36, 'Can view attendance master', 9, 'view_attendancemaster'),
(37, 'Can add student attendance', 10, 'add_studentattendance'),
(38, 'Can change student attendance', 10, 'change_studentattendance'),
(39, 'Can delete student attendance', 10, 'delete_studentattendance'),
(40, 'Can view student attendance', 10, 'view_studentattendance'),
(41, 'Can add material master', 11, 'add_materialmaster'),
(42, 'Can change material master', 11, 'change_materialmaster'),
(43, 'Can delete material master', 11, 'delete_materialmaster'),
(44, 'Can view material master', 11, 'view_materialmaster'),
(45, 'Can add result master', 12, 'add_resultmaster'),
(46, 'Can change result master', 12, 'change_resultmaster'),
(47, 'Can delete result master', 12, 'delete_resultmaster'),
(48, 'Can view result master', 12, 'view_resultmaster'),
(49, 'Can add event master', 13, 'add_eventmaster'),
(50, 'Can change event master', 13, 'change_eventmaster'),
(51, 'Can delete event master', 13, 'delete_eventmaster'),
(52, 'Can view event master', 13, 'view_eventmaster'),
(53, 'Can add fees master', 14, 'add_feesmaster'),
(54, 'Can change fees master', 14, 'change_feesmaster'),
(55, 'Can delete fees master', 14, 'delete_feesmaster'),
(56, 'Can view fees master', 14, 'view_feesmaster'),
(57, 'Can add studentfeesmaster', 15, 'add_studentfeesmaster'),
(58, 'Can change studentfeesmaster', 15, 'change_studentfeesmaster'),
(59, 'Can delete studentfeesmaster', 15, 'delete_studentfeesmaster'),
(60, 'Can view studentfeesmaster', 15, 'view_studentfeesmaster');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'CMSWebapp', 'attendancemaster'),
(13, 'CMSWebapp', 'eventmaster'),
(7, 'CMSWebapp', 'facultymaster'),
(14, 'CMSWebapp', 'feesmaster'),
(11, 'CMSWebapp', 'materialmaster'),
(12, 'CMSWebapp', 'resultmaster'),
(10, 'CMSWebapp', 'studentattendance'),
(15, 'CMSWebapp', 'studentfeesmaster'),
(8, 'CMSWebapp', 'studentmaster'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'CMSWebapp', '0001_initial', '2024-02-08 06:32:59.077258'),
(2, 'CMSWebapp', '0002_alter_facultymaster_city_and_more', '2024-02-08 06:32:59.077258'),
(3, 'CMSWebapp', '0003_alter_facultymaster_area', '2024-02-08 06:32:59.092764'),
(4, 'CMSWebapp', '0004_studentmaster', '2024-02-08 06:32:59.092764'),
(5, 'CMSWebapp', '0005_rename_department_studentmaster_stddepartment_and_more', '2024-02-08 06:32:59.108428'),
(6, 'CMSWebapp', '0006_attendancemaster_studentattendance', '2024-02-08 06:32:59.124023'),
(7, 'CMSWebapp', '0007_alter_attendancemaster_stdenno', '2024-02-08 06:32:59.139647'),
(8, 'CMSWebapp', '0008_materialmaster', '2024-02-08 06:32:59.139647'),
(9, 'CMSWebapp', '0009_resultmaster', '2024-02-08 06:32:59.155271'),
(10, 'CMSWebapp', '0010_alter_resultmaster_subname', '2024-02-08 06:32:59.155271'),
(11, 'contenttypes', '0001_initial', '2024-02-08 06:32:59.202597'),
(12, 'auth', '0001_initial', '2024-02-08 06:32:59.626213'),
(13, 'admin', '0001_initial', '2024-02-08 06:32:59.736016'),
(14, 'admin', '0002_logentry_remove_auto_add', '2024-02-08 06:32:59.751669'),
(15, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-08 06:32:59.751669'),
(16, 'contenttypes', '0002_remove_content_type_name', '2024-02-08 06:32:59.814613'),
(17, 'auth', '0002_alter_permission_name_max_length', '2024-02-08 06:32:59.879023'),
(18, 'auth', '0003_alter_user_email_max_length', '2024-02-08 06:32:59.894555'),
(19, 'auth', '0004_alter_user_username_opts', '2024-02-08 06:32:59.894555'),
(20, 'auth', '0005_alter_user_last_login_null', '2024-02-08 06:32:59.957810'),
(21, 'auth', '0006_require_contenttypes_0002', '2024-02-08 06:32:59.957810'),
(22, 'auth', '0007_alter_validators_add_error_messages', '2024-02-08 06:32:59.961325'),
(23, 'auth', '0008_alter_user_username_max_length', '2024-02-08 06:32:59.979065'),
(24, 'auth', '0009_alter_user_last_name_max_length', '2024-02-08 06:32:59.994602'),
(25, 'auth', '0010_alter_group_name_max_length', '2024-02-08 06:32:59.994602'),
(26, 'auth', '0011_update_proxy_permissions', '2024-02-08 06:33:00.011124'),
(27, 'auth', '0012_alter_user_first_name_max_length', '2024-02-08 06:33:00.021633'),
(28, 'sessions', '0001_initial', '2024-02-08 06:33:00.052892'),
(29, 'CMSWebapp', '0011_alter_resultmaster_subname', '2024-02-15 10:40:08.996251'),
(30, 'CMSWebapp', '0012_eventmaster', '2024-02-19 06:05:13.492000'),
(31, 'CMSWebapp', '0013_rename_eventdate_eventmaster_evdate_and_more', '2024-02-19 06:23:58.532544'),
(32, 'CMSWebapp', '0014_feesmaster', '2024-02-19 11:55:34.749457'),
(33, 'CMSWebapp', '0015_studentfeesmaster', '2024-02-21 06:18:08.028755');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6m3f7socse047ltq3wstsaigs6vesbx7', '.eJxljUEKgCAQRe8y64iynauuMqSl4Cg0tpDo7hU0GbT8j8d_O8w4bSEXb0D3jaw5IlnQEAsywovDg0Nyvny4JfRB9F4N43KDdkp0OZw3Y2O-A8O7JEDoLLtqSYEdroSVS4EM__8vISbQqlPHCZljR64:1reuGU:swIXBwtCDDJJBOvWziRDvYpAeV0Bg_-pu1Ft8g6R1xM', '2024-03-12 10:00:46.580794');

-- --------------------------------------------------------

--
-- Table structure for table `eventmaster`
--

CREATE TABLE `eventmaster` (
  `eventid` bigint(20) NOT NULL,
  `evname` varchar(100) NOT NULL,
  `evdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventmaster`
--

INSERT INTO `eventmaster` (`eventid`, `evname`, `evdate`) VALUES
(1, 'sareee day', '22/2/2024'),
(2, 'farewell', '23/2/2024'),
(4, 'mismaych', '21/02/2024');

-- --------------------------------------------------------

--
-- Table structure for table `facultymaster`
--

CREATE TABLE `facultymaster` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `contactno` bigint(20) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `area` varchar(25) NOT NULL,
  `facphoto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facultymaster`
--

INSERT INTO `facultymaster` (`id`, `fname`, `lname`, `emailid`, `contactno`, `designation`, `department`, `address`, `city`, `area`, `facphoto`) VALUES
(1, 'nyasa', 'lohiya', 'nyasa123@gmail.com', 8511072127, 'Associate Professor', 'BCA', 'A-1-205 galaxy signature, science city ahmedabad', 'Ahmedabad', 'Chandlodia', 'fac2.jpg'),
(2, 'Kiran', 'Patel', 'kp@gmail.com', 8899562314, 'Principal', 'BCA', 'a-1-shayona city near bob bank', 'Ahmedabad', 'Ranip', 'f2.jpg'),
(3, 'vishva', 'hirapara', 'vishva41@gmail.com', 5896234856, 'Assistant Professor', 'BCA', 'H2-chandni chowk', 'Gandhinagar', 'Naranpura', 'prof1.jpg'),
(4, 'vikas', 'sharma', 'vs3@gmail.com', 9756895234, 'Associate Professor', 'BCA', 'C3-paras bunglows', 'Gandhinagar', 'Naranpura', 'profb2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feesmaster`
--

CREATE TABLE `feesmaster` (
  `feid` bigint(20) NOT NULL,
  `stdsemester` varchar(10) NOT NULL,
  `feamt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feesmaster`
--

INSERT INTO `feesmaster` (`feid`, `stdsemester`, `feamt`) VALUES
(1, '1', 15000),
(2, '2', 18000),
(3, '3', 15000),
(4, '4', 18000),
(5, '5', 15000),
(6, '6', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `materialmaster`
--

CREATE TABLE `materialmaster` (
  `matid` bigint(20) NOT NULL,
  `id` int(11) NOT NULL,
  `stdsemester` varchar(10) NOT NULL,
  `matsubj` varchar(50) NOT NULL,
  `matfile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materialmaster`
--

INSERT INTO `materialmaster` (`matid`, `id`, `stdsemester`, `matsubj`, `matfile`) VALUES
(1, 1, '1', 'MATHS', 'part-1.docx'),
(2, 1, '3', 'C PROGRAMMING', 'c.docx'),
(3, 1, '2', 'C PROGRAMMING', 'fg1.jpg'),
(4, 1, '2', 'C PROGRAMMING', 'part-1_u1lXzut.docx');

-- --------------------------------------------------------

--
-- Table structure for table `resultmaster`
--

CREATE TABLE `resultmaster` (
  `resultid` bigint(20) NOT NULL,
  `id` int(11) NOT NULL,
  `stdenno` bigint(20) NOT NULL,
  `stdname` varchar(100) NOT NULL,
  `stdsemester` varchar(25) NOT NULL,
  `subname` varchar(100) NOT NULL,
  `submarks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultmaster`
--

INSERT INTO `resultmaster` (`resultid`, `id`, `stdenno`, `stdname`, `stdsemester`, `subname`, `submarks`) VALUES
(1, 3, 202, 'mahesh yuudhistirbhai sharma', '1', 'statistics', 29),
(2, 3, 121320032004, 'niharika Pravinbhai sharma', '1', 'statistics', 36),
(3, 3, 2006008562, 'meet vijaybhai shetty', '1', 'statistics', 39),
(4, 1, 112003200408, 'maulik dharmik mehta', '3', 'c', 45),
(5, 1, 112003200408, 'maulik dharmik mehta', '3', 'opol', 45),
(6, 1, 123, 'nitya abhay lohiya', '1', 'computer network', 25),
(7, 1, 123, 'nitya abhay lohiya', '1', 'opreting system', 36),
(8, 1, 121320032004, 'niharika Pravinbhai sharma', '1', 'c programing', 45),
(9, 1, 121320032004, 'niharika Pravinbhai sharma', '1', 'c programing', 45),
(10, 1, 202, 'mahesh yuudhistirbhai sharma', '1', 'opreting system', 35),
(11, 1, 121320032004, 'niharika Pravinbhai sharma', '1', 'pc software', 40);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `statid` bigint(20) NOT NULL,
  `stdenno` bigint(20) NOT NULL,
  `stname` varchar(50) NOT NULL,
  `atstatus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentfeesmaster`
--

CREATE TABLE `studentfeesmaster` (
  `stfeid` bigint(20) NOT NULL,
  `stdenno` bigint(20) NOT NULL,
  `stdname` varchar(100) NOT NULL,
  `stdsemester` varchar(10) NOT NULL,
  `feamt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentfeesmaster`
--

INSERT INTO `studentfeesmaster` (`stfeid`, `stdenno`, `stdname`, `stdsemester`, `feamt`) VALUES
(1, 202, 'maheshyuudhistirbhaisharma', '1', 15000),
(3, 112003200408, 'maulikdharmikmehta', '3', 15000),
(4, 1002005030, 'vishvahiteshbhaishah', '5', 15000),
(5, 121320032004, 'niharikaPravinbhaisharma', '1', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `studentmaster`
--

CREATE TABLE `studentmaster` (
  `stid` bigint(20) NOT NULL,
  `stdenno` bigint(20) NOT NULL,
  `stdfname` varchar(25) NOT NULL,
  `stdmname` varchar(25) NOT NULL,
  `stdlname` varchar(25) NOT NULL,
  `stdemailid` varchar(50) NOT NULL,
  `stdscontactno` bigint(20) NOT NULL,
  `stdpcontactno` bigint(20) NOT NULL,
  `stdsemester` varchar(50) NOT NULL,
  `stddepartment` varchar(50) NOT NULL,
  `stdaddress` varchar(100) NOT NULL,
  `stdcity` varchar(25) NOT NULL,
  `stdarea` varchar(25) NOT NULL,
  `stdphoto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentmaster`
--

INSERT INTO `studentmaster` (`stid`, `stdenno`, `stdfname`, `stdmname`, `stdlname`, `stdemailid`, `stdscontactno`, `stdpcontactno`, `stdsemester`, `stddepartment`, `stdaddress`, `stdcity`, `stdarea`, `stdphoto`) VALUES
(2, 112003200408, 'maulik', 'dharmik', 'mehta', 'maulik21@gmail.com', 7845129630, 8956231470, '3', 'BCA', '201 mayur flats gandhinagar', 'Gandhinagar', 'Naranpura', 's7.jpg'),
(3, 202, 'mahesh', 'yuudhistirbhai', 'sharma', 'mds123@gmail.com', 5896234856, 7043825150, '1', 'BCA', 'b2-sayona', 'Gandhinagar', 'Ghatlodia', 's1.jpg'),
(4, 101, 'heer', 'vikasbhai', 'koshti', 'heerv10@gmail.com', 8866863138, 9898860350, '5', 'BCA', 'h2-ghatlodia', 'Rajkot', 'Naranpura', 's2.jpg'),
(5, 121320032004, 'niharika', 'Pravinbhai', 'sharma', 'nih23@gmail.com', 7383805151, 9408489228, '1', 'BCA', '106,shukan six flats near hetarth party plot', 'Surat', 'Ranip', 's6.jpg'),
(7, 121310021003, 'neha', 'hareshbhai', 'bhagat', 'nh21@gmail.com', 9485635489, 9175846235, '3', 'BCA', '208,gulmohar park,iscon', 'Gandhinagar', 'Ghatlodia', 'n2.jpg'),
(8, 1002005030, 'vishva', 'hiteshbhai', 'shah', 'vh41@gmail.com', 9924969325, 9924969226, '5', 'BCA', '2D-shah palace', 'Rajkot', 'Ranip', 'n1.jpg'),
(9, 2006008562, 'meet', 'vijaybhai', 'shetty', 'mv4@gmail.com', 5893248652, 9758621436, '1', 'BCA', 'H6-nihar bunglows', 'Ahmedabad', 'Ghatlodia', 'v2.jpg'),
(11, 123, 'nitya', 'abhay', 'lohiya', 'nit56@gmail.com', 8956231470, 9898860350, '1', 'BCA', 'sukan bunglows', 'Ahmedabad', 'Ghatlodia', 'v1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendancemaster`
--
ALTER TABLE `attendancemaster`
  ADD PRIMARY KEY (`atid`);

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
-- Indexes for table `eventmaster`
--
ALTER TABLE `eventmaster`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `facultymaster`
--
ALTER TABLE `facultymaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feesmaster`
--
ALTER TABLE `feesmaster`
  ADD PRIMARY KEY (`feid`);

--
-- Indexes for table `materialmaster`
--
ALTER TABLE `materialmaster`
  ADD PRIMARY KEY (`matid`);

--
-- Indexes for table `resultmaster`
--
ALTER TABLE `resultmaster`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`statid`);

--
-- Indexes for table `studentfeesmaster`
--
ALTER TABLE `studentfeesmaster`
  ADD PRIMARY KEY (`stfeid`);

--
-- Indexes for table `studentmaster`
--
ALTER TABLE `studentmaster`
  ADD PRIMARY KEY (`stid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendancemaster`
--
ALTER TABLE `attendancemaster`
  MODIFY `atid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `eventmaster`
--
ALTER TABLE `eventmaster`
  MODIFY `eventid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facultymaster`
--
ALTER TABLE `facultymaster`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feesmaster`
--
ALTER TABLE `feesmaster`
  MODIFY `feid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `materialmaster`
--
ALTER TABLE `materialmaster`
  MODIFY `matid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resultmaster`
--
ALTER TABLE `resultmaster`
  MODIFY `resultid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `statid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentfeesmaster`
--
ALTER TABLE `studentfeesmaster`
  MODIFY `stfeid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studentmaster`
--
ALTER TABLE `studentmaster`
  MODIFY `stid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
